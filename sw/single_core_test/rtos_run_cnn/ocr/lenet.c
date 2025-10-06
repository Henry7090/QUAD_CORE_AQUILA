#include "FreeRTOS.h"
#include "lenet.h"
#include "task.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define sqrt my_sqrt
#define TASK_PRIORITY           (tskIDLE_PRIORITY + 1)
#define TASK_STACK_SIZE         (configMINIMAL_STACK_SIZE * 4 )
void atomic_or(volatile uint32_t *addr, int val);
void print_double(double val);



static double my_sqrt(double x)
{
    if (x <= 0) return 0;      // 處理 0 和負數
    double guess = x;          // 初始猜測
    for (int i = 0; i < 20; i++) {
        guess = 0.5 * (guess + x / guess);
    }
    return guess;
}


static void convolute2_valid(const double *src, const double *conv, double *des, const long dh, const long dw,
                                  const long ch, const long cw){

    const long sw = dw + cw - 1;    
    const long total = dh * dw;     
	
    for (long idx = 0; idx < total; ++idx) {
        const long d0 = idx / dw;       
        const long d1 = idx % dw;        

        double acc = 0.0;
        const long src_row0 = d0 * sw + d1;

        for (long c0 = 0; c0 < ch; ++c0) {
            for (long c1 = 0; c1 < cw; ++c1) {
                des[d0 * dw + d1] += src[(d0 + c0)*sw + d1 + c1] * conv[c0*cw + c1];
            }
        }
    }
}


static void vector_x_matrix(double *src, double *mat, double *des, const long height, const long width)
{
	for (long y = 0; y < width; ++y)
	{
		for (long x = 0; x < height; ++x)
		{
			des[y] += src[x] * mat[x*width + y];
		}
	}
}

static void matrix_x_vector(double *mat, double *src, double *des, const long height, const long width)
{
	for (long x = 0; x < height; ++x)
	{
		for (long y = 0; y < width; ++y)
		{
			des[x] += src[y] * mat[x*width + y];
		}
	}
}

#define CONVOLUTION_FORWARD(input,output,weight,bias,action)								    \
{																							    \
	convolution_forward((double *)input, (double *)weight, (double *)output, (double *)bias,	\
			action,GETLENGTH(*output),GETLENGTH(**output),GETLENGTH(**weight),				    \
				GETLENGTH(***weight),GETLENGTH(weight),GETLENGTH(*weight));					    \
}

static void convolution_forward(
    double *src,        // feature map (one dimension)
    double *conv,       // weights，size sn*dn*(ch*cw)
    double *des,        // feature map
    double *bias,       // channel bias
    double(*active)(double), // activation function
    const long dh,      //  (destination height)
    const long dw,      // (destination width)
    const long ch,      // kernel height
    const long cw,      // kernel width
    const long sn,      // input channel 
    const long dn       // output channel 
)
{
    const long srcSize = (dh + ch - 1) * (dw + cw - 1);

    const long desSize = dh * dw;

    const long convSize = ch * cw;

    for (int y = 0; y < dn; ++y){                
        for (int x = 0; x < sn; ++x){         
				convolute2_valid(src + x * srcSize, conv + (x * dn + y) * convSize, des + y * desSize, dh, dw, ch, cw);			
		}
	}

    for (int i = 0; i < dn; ++i) {
        double *desMat = des + i * desSize;     
        for (int j = 0; j < desSize; ++j) {
            desMat[j] = active(desMat[j] + bias[i]);
        }
    }
}


static void subsamp_max_forward(double *src, double *des, const long sh, const long sw, const long dh, const long dw, const long n)
{
	const long srcSize = sh * sw, desSize = dh * dw;
	const long lh = sh / dh, lw = sw / dw;
	for (long i = 0; i < n; ++i)
	{
		for (long d0 = 0; d0 < dh; ++d0)
			for (long d1 = 0; d1 < dw; ++d1)
			{
				long x = d0 * lh * sw + d1 * lw;
				for (long l = 1; l < lh * lw; ++l)
				{
					long index = (d0 * lh + l / lw) * sw + d1 * lw + l % lw;
					x += (src[index] > src[x]) * (index - x);
				}
				des[d0 * dw + d1] = src[x];
			}
		src += srcSize;
		des += desSize;
	}
}


static void dot_product_forward(double *src, double *mat, double *des,double *bias, double(*active)(double), const long height, const long width)
{
	vector_x_matrix(src, mat, des, height, width);
	for (int i = 0; i < width; ++i)
		des[i] = active(des[i] + bias[i]);
}


#define GETLENGTH(array) (sizeof(array)/sizeof(*(array)))

#define GETCOUNT(array)  (sizeof(array)/sizeof(double))

#define SUBSAMP_MAX_FORWARD(input,output)								\
{																		\
	subsamp_max_forward((double *)input,(double *)output,				\
							GETLENGTH(*input),GETLENGTH(**input),		\
							GETLENGTH(*output),GETLENGTH(**output),GETLENGTH(output));\
}


#define DOT_PRODUCT_FORWARD(input,output,weight,bias,action)				\
{																			\
	dot_product_forward((double *)input,(double *)weight,(double *)output,	\
				(double *)bias,action,GETLENGTH(weight),GETLENGTH(*weight));\
}




double relu(double x)
{
	return x*(x > 0);
}

double relugrad(double y)
{
	return y > 0;
}




void forward(LeNet5 *lenet, Feature *features, double(*action)(double))
{
	
    CONVOLUTION_FORWARD(features->input, features->layer1, lenet->weight0_1, lenet->bias0_1, action);
	// lock_print();
	// printf("============================== finsh first convolution layer======================\n");
	// for(int i = 0;i<6;i++){
	// 	for(int j = 0;j<28;j++){
	// 		for(int k = 0;k<28;k++){
	// 			print_double(features->layer1[i][j][k]);
	// 			printf(" ");
	// 		}
	// 		printf("\n");
	// 	}
	// 	printf("======================================\n");
	// 	printf("======================================\n");
	// }
	// unlock_print();
    SUBSAMP_MAX_FORWARD(features->layer1, features->layer2);
	
	// lock_print();
	// printf("============================== finsh first pooling layer======================\n");
	// for(int i = 0;i<6;i++){
	// 	for(int j = 0;j<14;j++){
	// 		for(int k = 0;k<14;k++){
	// 			print_double(features->layer2[i][j][k]);
	// 			printf(" ");
	// 		}
	// 		printf("\n");
	// 	}
	// 	printf("======================================\n");
	// 	printf("======================================\n");
	// }
	// unlock_print();

    CONVOLUTION_FORWARD(features->layer2, features->layer3, lenet->weight2_3, lenet->bias2_3, action);

    SUBSAMP_MAX_FORWARD(features->layer3, features->layer4);

    CONVOLUTION_FORWARD(features->layer4, features->layer5, lenet->weight4_5, lenet->bias4_5, action);

    DOT_PRODUCT_FORWARD(features->layer5, features->output, lenet->weight5_6, lenet->bias5_6, action);
	// for(int i = 0;i<10;i++){
	// 	print_double(features->output[i]);
	// 	printf(" ");
	// }
	// printf("\n\n");
}

void load_input(Feature *features, image input)
{
	double (*layer0)[LENGTH_FEATURE0][LENGTH_FEATURE0] = features->input;
	long sz = sizeof(image) / sizeof(**input);

	// double mean = 0, std = 0;
	double *mean = pvPortMalloc(sizeof(double));
	double *std = pvPortMalloc(sizeof(double));
	if (mean == NULL) {
		printf("malloc for mean failed!\n");
		vTaskDelete(NULL); // 或進錯誤處理
	}
	*mean = 0;
	*std = 0;

	for(int i = 0;i<28;i++){
		for(int j = 0;j<28;j++){
			*mean += input[i][j];
			*std += input[i][j] * input[i][j];
		}
	}

	*mean /= sz;
	*std = sqrt(*std / sz - (*mean) * (*mean));
	for(int j = 0; j < sizeof(image) / sizeof(*input); ++j){
		for(int k = 0; k < sizeof(*input) / sizeof(**input); ++k){
			layer0[0][j + PADDING][k + PADDING] = (input[j][k] - *mean) / *std;
		}
	}
	vPortFree(mean);
	vPortFree(std);
}

uint8 get_result(double *output, uint8 count)
{
	uint8 result = 0;
	for (uint8 i = 1; i < count; ++i)
		result += (i - result) * (output[i] > output[result]);
	return result;
}

static inline void softmax(double input[OUTPUT], double loss[OUTPUT], uint8 label, int count)
{
	double max = input[get_result(input, count)];
	double k = 0, inner = 0;
	for (uint8 i = 0; i < count; ++i)
	{
		loss[i] = exp(input[i] - max);
		k += loss[i];
	}
	k = 1. / k;
	for (uint8 i = 0; i < count; ++i)
	{
		loss[i] *= k;
		inner -= loss[i] * loss[i];
	}
	inner += loss[label];
	for (uint8 i = 0; i < count; ++i)
	{
		loss[i] *= (i == label) - loss[i] - inner;
	}
}


uint8 Predict(LeNet5 *lenet, image input,uint8 count, Feature *features)
{
	// Feature *features = pvPortMalloc(sizeof(Feature));
	memset(features, 0, sizeof(Feature));
	load_input(features, input);
	forward(lenet, features, relu);

	return get_result(features->output, count);
}

void Initial(LeNet5 *lenet)
{
	//srand((unsigned)time(0));
	for (double *pos = (double *)lenet->weight0_1; pos < (double *)lenet->bias0_1; *pos++ = rand()*(2. / RAND_MAX) - 1);
	for (double *pos = (double *)lenet->weight0_1; pos < (double *)lenet->weight2_3; *pos++ *= sqrt(6.0 / (LENGTH_KERNEL * LENGTH_KERNEL * (INPUT + LAYER1))));
	for (double *pos = (double *)lenet->weight2_3; pos < (double *)lenet->weight4_5; *pos++ *= sqrt(6.0 / (LENGTH_KERNEL * LENGTH_KERNEL * (LAYER2 + LAYER3))));
	for (double *pos = (double *)lenet->weight4_5; pos < (double *)lenet->weight5_6; *pos++ *= sqrt(6.0 / (LENGTH_KERNEL * LENGTH_KERNEL * (LAYER4 + LAYER5))));
	for (double *pos = (double *)lenet->weight5_6; pos < (double *)lenet->bias0_1; *pos++ *= sqrt(6.0 / (LAYER5 + OUTPUT)));
	for (int *pos = (int *)lenet->bias0_1; pos < (int *)(lenet + 1); *pos++ = 0);
}