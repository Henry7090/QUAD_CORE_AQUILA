export PATH=$PATH:/opt/riscv/bin
export RISCV=/opt/riscv
make PROJ=ocr_0
make PROJ=ocr_1
python3 padding.py
