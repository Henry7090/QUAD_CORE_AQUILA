## This file is a general .xdc for the ARTY Rev. A
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


# Clock signal

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_i]
#create_clock -name clk_i -period 10.000 -waveform {0.000 5.000} [get_ports clk_i];
#derive_pll_clocks
#derive_clock_uncertainty
#create_generated_clock -period 24.000 -waveform {0.000 12.000} -name clk -source [get_pins clk_wiz_0/clk_in1] [get_nets clk]
#create_generated_clock -period  6.000 -waveform {0.000  3.000} -name clk_166M -source [get_pins clk_wiz_0/clk_in1] [get_nets clk_166M]
#create_generated_clock -period  5.000 -waveform {0.000  2.500} -name clk_200M -source [get_pins clk_wiz_0/clk_in1] [get_nets clk_200M]

set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports resetn_i]

#Switches

#set_property -dict { PACKAGE_PIN A8  IOSTANDARD LVCMOS33 } [get_ports { usr_sw[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
#set_property -dict { PACKAGE_PIN C11 IOSTANDARD LVCMOS33 } [get_ports { usr_sw[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
#set_property -dict { PACKAGE_PIN C10 IOSTANDARD LVCMOS33 } [get_ports { usr_sw[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
#set_property -dict { PACKAGE_PIN A10 IOSTANDARD LVCMOS33 } [get_ports { usr_sw[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]


# LEDs

set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33} [get_ports {usr_led[0]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {usr_led[1]}]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {usr_led[2]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {usr_led[3]}]
#set_property -dict { PACKAGE_PIN E1  IOSTANDARD LVCMOS33 } [get_ports { rgb_led[0] }]; #IO_L18N_T2_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN F6  IOSTANDARD LVCMOS33 } [get_ports { rgb_led[1] }]; #IO_L19N_T3_VREF_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN G6  IOSTANDARD LVCMOS33 } [get_ports { rgb_led[2] }]; #IO_L19P_T3_35 Sch=led0_r
#set_property -dict { PACKAGE_PIN G4  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_b[1] }]; #IO_L20P_T3_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN J4  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_g[1] }]; #IO_L21P_T3_DQS_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN G3  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_r[1] }]; #IO_L20N_T3_35 Sch=led1_r
#set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_b[2] }]; #IO_L21N_T3_DQS_35 Sch=led2_b
#set_property -dict { PACKAGE_PIN J2  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_g[2] }]; #IO_L22N_T3_35 Sch=led2_g
#set_property -dict { PACKAGE_PIN J3  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_r[2] }]; #IO_L22P_T3_35 Sch=led2_r
#set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_b[3] }]; #IO_L23P_T3_35 Sch=led3_b
#set_property -dict { PACKAGE_PIN H6  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_g[3] }]; #IO_L24P_T3_35 Sch=led3_g
#set_property -dict { PACKAGE_PIN K1  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_r[3] }]; #IO_L23N_T3_35 Sch=led3_r


#Buttons

set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports {usr_btn[0]}]
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports {usr_btn[1]}]
set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports {usr_btn[2]}]
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVCMOS33} [get_ports {usr_btn[3]}]

#UART
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports uart_tx]
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports uart_rx]

##ChipKit Digital I/O Low

#set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33 } [get_ports { ck_io[0] }]; #IO_L16P_T2_CSI_B_14 Sch=ck_io[0]
#set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [get_ports { ck_io[1] }]; #IO_L18P_T2_A12_D28_14 Sch=ck_io[1]
#set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { ck_io[2] }]; #IO_L8N_T1_D12_14 Sch=ck_io[2]
#set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { ck_io[3] }]; #IO_L19P_T3_A10_D26_14 Sch=ck_io[3]
#set_property -dict { PACKAGE_PIN R12 IOSTANDARD LVCMOS33 } [get_ports { ck_io[4] }]; #IO_L5P_T0_D06_14 Sch=ck_io[4]
#set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { ck_io[5] }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS33 } [get_ports { ck_io[6] }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS33 } [get_ports { LCD_E }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]
#set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS33 } [get_ports { LCD_RW }]; #IO_L11P_T1_SRCC_14 Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M16 IOSTANDARD LVCMOS33 } [get_ports { LCD_RS }]; #IO_L10P_T1_D14_14 Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[3] }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[2] }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[1] }]; #IO_L12N_T1_MRCC_14 Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[0] }]; #IO_L12P_T1_MRCC_14 Sch=ck_io[13]

##ChipKit Digital I/O High

#set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [get_ports { ck_io[26] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=ck_io[26]
#set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports { ck_io[27] }]; #IO_L16N_T2_A15_D31_14 Sch=ck_io[27]
#set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { VGA_HSYNC }]; #IO_L6N_T0_D08_VREF_14 Sch=ck_io[28]
#set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { VGA_VSYNC }]; #IO_25_14 Sch=ck_io[29]
#set_property -dict { PACKAGE_PIN R11 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[0] }]; #IO_0_14 Sch=ck_io[30]
#set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[1] }]; #IO_L5N_T0_D07_14 Sch=ck_io[31]
#set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[2] }]; #IO_L13N_T2_MRCC_14 Sch=ck_io[32]
#set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[3] }]; #IO_L13P_T2_MRCC_14 Sch=ck_io[33]
#set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[0] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=ck_io[34]
#set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[1] }]; #IO_L11N_T1_SRCC_14 Sch=ck_io[35]
#set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[2] }]; #IO_L8P_T1_D11_14 Sch=ck_io[36]
#set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[3] }]; #IO_L17P_T2_A14_D30_14 Sch=ck_io[37]
#set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[0] }]; #IO_L7N_T1_D10_14 Sch=ck_io[38]
#set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[1] }]; #IO_L7P_T1_D09_14 Sch=ck_io[39]
#set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[2] }]; #IO_L9N_T1_DQS_D13_14 Sch=ck_io[40]
#set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[3] }]; #IO_L9P_T1_DQS_14 Sch=ck_io[41]

##Misc. ChipKit signals

#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_L10N_T1_D15_14 Sch=ck_ioa
#set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { ck_rst }]; #IO_L16P_T2_35 Sch=ck_rst

## ChipKit SPI

set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports spi_miso]
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports spi_mosi]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports spi_sck]
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports spi_ss]
#set_property -dict { PACKAGE_PIN G1  IOSTANDARD LVCMOS33 } [get_ports { spi_miso }]; #IO_L17N_T2_35 Sch=ck_miso
#set_property -dict { PACKAGE_PIN H1  IOSTANDARD LVCMOS33 } [get_ports { spi_mosi }]; #IO_L17P_T2_35 Sch=ck_mosi
#set_property -dict { PACKAGE_PIN F1  IOSTANDARD LVCMOS33 } [get_ports { spi_sck }]; #IO_L18P_T2_35 Sch=ck_sck
#set_property -dict { PACKAGE_PIN C1  IOSTANDARD LVCMOS33 } [get_ports { spi_ss }]; #IO_L16N_T2_35 Sch=ck_ss


## ChipKit I2C

#set_property -dict { PACKAGE_PIN L18  PULLUP TRUE IOSTANDARD LVCMOS33 } [get_ports { i2c_scl }]; #IO_L4P_T0_D04_14 Sch=ck_scl
#set_property -dict { PACKAGE_PIN M18  PULLUP TRUE IOSTANDARD LVCMOS33 } [get_ports { i2c_sda }]; #IO_L4N_T0_D05_14 Sch=ck_sda
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { i2c_scl_pullup }]; #IO_L9N_T1_DQS_AD3N_15 Sch=scl_pup
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { i2c_sda_pullup }]; #IO_L9P_T1_DQS_AD3P_15 Sch=sda_pup


##SMSC Ethernet PHY

#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { eth_col }]; #IO_L16N_T2_A27_15 Sch=eth_col
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { eth_crs }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=eth_crs
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { eth_mdc }]; #IO_L14N_T2_SRCC_15 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { eth_mdio }]; #IO_L17P_T2_A26_15 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { eth_ref_clk }]; #IO_L22P_T3_A17_15 Sch=eth_ref_clk
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { eth_rstn }]; #IO_L20P_T3_A20_15 Sch=eth_rstn
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_clk }]; #IO_L14P_T2_SRCC_15 Sch=eth_rx_clk
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_dv }]; #IO_L13N_T2_MRCC_15 Sch=eth_rx_dv
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[0] }]; #IO_L21N_T3_DQS_A18_15 Sch=eth_rxd[0]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[1] }]; #IO_L16P_T2_A28_15 Sch=eth_rxd[1]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[2] }]; #IO_L21P_T3_DQS_15 Sch=eth_rxd[2]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[3] }]; #IO_L18N_T2_A23_15 Sch=eth_rxd[3]
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { eth_rxerr }]; #IO_L20N_T3_A19_15 Sch=eth_rxerr
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_clk }]; #IO_L13P_T2_MRCC_15 Sch=eth_tx_clk
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_en }]; #IO_L19N_T3_A21_VREF_15 Sch=eth_tx_en
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[0] }]; #IO_L15P_T2_DQS_15 Sch=eth_txd[0]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[1] }]; #IO_L19P_T3_A22_15 Sch=eth_txd[1]
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[2] }]; #IO_L17N_T2_A25_15 Sch=eth_txd[2]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[3] }]; #IO_L18P_T2_A24_15 Sch=eth_txd[3]


##Quad SPI Flash

#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]


##ChipKit Analog I/O (in Digital I/O mode)

#set_property -dict { PACKAGE_PIN F5 IOSTANDARD LVCMOS33 } [get_ports { ck_A[0] }]; # Sch=ck_A0
#set_property -dict { PACKAGE_PIN D8 IOSTANDARD LVCMOS33 } [get_ports { ck_A[1] }]; # Sch=ck_A1
#set_property -dict { PACKAGE_PIN C7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[2] }]; # Sch=ck_A2
#set_property -dict { PACKAGE_PIN E7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[3] }]; # Sch=ck_A3
#set_property -dict { PACKAGE_PIN D7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[4] }]; # Sch=ck_A4
#set_property -dict { PACKAGE_PIN D5 IOSTANDARD LVCMOS33 } [get_ports { ck_A[5] }]; # Sch=ck_A5
#set_property -dict { PACKAGE_PIN B7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[6] }]; # Sch=ck_A6
#set_property -dict { PACKAGE_PIN B6 IOSTANDARD LVCMOS33 } [get_ports { ck_A[7] }]; # Sch=ck_A7
#set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports { ck_A[8] }]; # Sch=ck_A8
#set_property -dict { PACKAGE_PIN E5 IOSTANDARD LVCMOS33 } [get_ports { ck_A[9] }]; # Sch=ck_A9
#set_property -dict { PACKAGE_PIN A4 IOSTANDARD LVCMOS33 } [get_ports { ck_A[10] }]; # Sch=ck_A10
#set_property -dict { PACKAGE_PIN A3 IOSTANDARD LVCMOS33 } [get_ports { ck_A[11] }]; # Sch=ck_A11


##Power Analysis

#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { sns0v_n[95] }]; #IO_L8N_T1_AD10N_15 Sch=sns0v_n[95]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { sns0v_p[95] }]; #IO_L8P_T1_AD10P_15 Sch=sns0v_p[95]
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { sns5v_n[0] }]; #IO_L5N_T0_AD9N_15 Sch=sns5v_n[0]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { sns5v_p[0] }]; #IO_L5P_T0_AD9P_15 Sch=sns5v_p[0]
#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { vsns5v[0] }]; #IO_L3P_T0_DQS_AD1P_15 Sch=vsns5v[0]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { vsnsvu }]; #IO_L7P_T1_AD2P_15 Sch=vsnsvu

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]



connect_debug_port u_ila_1/probe0 [get_nets [list {genblk3[0].synchronizer/P_wt_data_o[0]} {genblk3[0].synchronizer/P_wt_data_o[1]} {genblk3[0].synchronizer/P_wt_data_o[2]} {genblk3[0].synchronizer/P_wt_data_o[3]} {genblk3[0].synchronizer/P_wt_data_o[4]} {genblk3[0].synchronizer/P_wt_data_o[5]} {genblk3[0].synchronizer/P_wt_data_o[6]} {genblk3[0].synchronizer/P_wt_data_o[7]} {genblk3[0].synchronizer/P_wt_data_o[8]} {genblk3[0].synchronizer/P_wt_data_o[9]} {genblk3[0].synchronizer/P_wt_data_o[10]} {genblk3[0].synchronizer/P_wt_data_o[11]} {genblk3[0].synchronizer/P_wt_data_o[12]} {genblk3[0].synchronizer/P_wt_data_o[13]} {genblk3[0].synchronizer/P_wt_data_o[14]} {genblk3[0].synchronizer/P_wt_data_o[15]} {genblk3[0].synchronizer/P_wt_data_o[16]} {genblk3[0].synchronizer/P_wt_data_o[17]} {genblk3[0].synchronizer/P_wt_data_o[18]} {genblk3[0].synchronizer/P_wt_data_o[19]} {genblk3[0].synchronizer/P_wt_data_o[20]} {genblk3[0].synchronizer/P_wt_data_o[21]} {genblk3[0].synchronizer/P_wt_data_o[22]} {genblk3[0].synchronizer/P_wt_data_o[23]} {genblk3[0].synchronizer/P_wt_data_o[24]} {genblk3[0].synchronizer/P_wt_data_o[25]} {genblk3[0].synchronizer/P_wt_data_o[26]} {genblk3[0].synchronizer/P_wt_data_o[27]} {genblk3[0].synchronizer/P_wt_data_o[28]} {genblk3[0].synchronizer/P_wt_data_o[29]} {genblk3[0].synchronizer/P_wt_data_o[30]} {genblk3[0].synchronizer/P_wt_data_o[31]} {genblk3[0].synchronizer/P_wt_data_o[32]} {genblk3[0].synchronizer/P_wt_data_o[33]} {genblk3[0].synchronizer/P_wt_data_o[34]} {genblk3[0].synchronizer/P_wt_data_o[35]} {genblk3[0].synchronizer/P_wt_data_o[36]} {genblk3[0].synchronizer/P_wt_data_o[37]} {genblk3[0].synchronizer/P_wt_data_o[38]} {genblk3[0].synchronizer/P_wt_data_o[39]} {genblk3[0].synchronizer/P_wt_data_o[40]} {genblk3[0].synchronizer/P_wt_data_o[41]} {genblk3[0].synchronizer/P_wt_data_o[42]} {genblk3[0].synchronizer/P_wt_data_o[43]} {genblk3[0].synchronizer/P_wt_data_o[44]} {genblk3[0].synchronizer/P_wt_data_o[45]} {genblk3[0].synchronizer/P_wt_data_o[46]} {genblk3[0].synchronizer/P_wt_data_o[47]} {genblk3[0].synchronizer/P_wt_data_o[48]} {genblk3[0].synchronizer/P_wt_data_o[49]} {genblk3[0].synchronizer/P_wt_data_o[50]} {genblk3[0].synchronizer/P_wt_data_o[51]} {genblk3[0].synchronizer/P_wt_data_o[52]} {genblk3[0].synchronizer/P_wt_data_o[53]} {genblk3[0].synchronizer/P_wt_data_o[54]} {genblk3[0].synchronizer/P_wt_data_o[55]} {genblk3[0].synchronizer/P_wt_data_o[56]} {genblk3[0].synchronizer/P_wt_data_o[57]} {genblk3[0].synchronizer/P_wt_data_o[58]} {genblk3[0].synchronizer/P_wt_data_o[59]} {genblk3[0].synchronizer/P_wt_data_o[60]} {genblk3[0].synchronizer/P_wt_data_o[61]} {genblk3[0].synchronizer/P_wt_data_o[62]} {genblk3[0].synchronizer/P_wt_data_o[63]} {genblk3[0].synchronizer/P_wt_data_o[64]} {genblk3[0].synchronizer/P_wt_data_o[65]} {genblk3[0].synchronizer/P_wt_data_o[66]} {genblk3[0].synchronizer/P_wt_data_o[67]} {genblk3[0].synchronizer/P_wt_data_o[68]} {genblk3[0].synchronizer/P_wt_data_o[69]} {genblk3[0].synchronizer/P_wt_data_o[70]} {genblk3[0].synchronizer/P_wt_data_o[71]} {genblk3[0].synchronizer/P_wt_data_o[72]} {genblk3[0].synchronizer/P_wt_data_o[73]} {genblk3[0].synchronizer/P_wt_data_o[74]} {genblk3[0].synchronizer/P_wt_data_o[75]} {genblk3[0].synchronizer/P_wt_data_o[76]} {genblk3[0].synchronizer/P_wt_data_o[77]} {genblk3[0].synchronizer/P_wt_data_o[78]} {genblk3[0].synchronizer/P_wt_data_o[79]} {genblk3[0].synchronizer/P_wt_data_o[80]} {genblk3[0].synchronizer/P_wt_data_o[81]} {genblk3[0].synchronizer/P_wt_data_o[82]} {genblk3[0].synchronizer/P_wt_data_o[83]} {genblk3[0].synchronizer/P_wt_data_o[84]} {genblk3[0].synchronizer/P_wt_data_o[85]} {genblk3[0].synchronizer/P_wt_data_o[86]} {genblk3[0].synchronizer/P_wt_data_o[87]} {genblk3[0].synchronizer/P_wt_data_o[88]} {genblk3[0].synchronizer/P_wt_data_o[89]} {genblk3[0].synchronizer/P_wt_data_o[90]} {genblk3[0].synchronizer/P_wt_data_o[91]} {genblk3[0].synchronizer/P_wt_data_o[92]} {genblk3[0].synchronizer/P_wt_data_o[93]} {genblk3[0].synchronizer/P_wt_data_o[94]} {genblk3[0].synchronizer/P_wt_data_o[95]} {genblk3[0].synchronizer/P_wt_data_o[96]} {genblk3[0].synchronizer/P_wt_data_o[97]} {genblk3[0].synchronizer/P_wt_data_o[98]} {genblk3[0].synchronizer/P_wt_data_o[99]} {genblk3[0].synchronizer/P_wt_data_o[100]} {genblk3[0].synchronizer/P_wt_data_o[101]} {genblk3[0].synchronizer/P_wt_data_o[102]} {genblk3[0].synchronizer/P_wt_data_o[103]} {genblk3[0].synchronizer/P_wt_data_o[104]} {genblk3[0].synchronizer/P_wt_data_o[105]} {genblk3[0].synchronizer/P_wt_data_o[106]} {genblk3[0].synchronizer/P_wt_data_o[107]} {genblk3[0].synchronizer/P_wt_data_o[108]} {genblk3[0].synchronizer/P_wt_data_o[109]} {genblk3[0].synchronizer/P_wt_data_o[110]} {genblk3[0].synchronizer/P_wt_data_o[111]} {genblk3[0].synchronizer/P_wt_data_o[112]} {genblk3[0].synchronizer/P_wt_data_o[113]} {genblk3[0].synchronizer/P_wt_data_o[114]} {genblk3[0].synchronizer/P_wt_data_o[115]} {genblk3[0].synchronizer/P_wt_data_o[116]} {genblk3[0].synchronizer/P_wt_data_o[117]} {genblk3[0].synchronizer/P_wt_data_o[118]} {genblk3[0].synchronizer/P_wt_data_o[119]} {genblk3[0].synchronizer/P_wt_data_o[120]} {genblk3[0].synchronizer/P_wt_data_o[121]} {genblk3[0].synchronizer/P_wt_data_o[122]} {genblk3[0].synchronizer/P_wt_data_o[123]} {genblk3[0].synchronizer/P_wt_data_o[124]} {genblk3[0].synchronizer/P_wt_data_o[125]} {genblk3[0].synchronizer/P_wt_data_o[126]} {genblk3[0].synchronizer/P_wt_data_o[127]}]]




create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list Clock_Generator/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[0]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[1]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[2]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[3]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[4]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[5]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[6]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[7]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[8]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[9]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[10]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[11]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[12]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[13]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[14]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[15]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[16]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[17]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[18]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[19]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[20]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[21]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[22]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[23]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[24]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[25]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[26]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[27]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[28]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[29]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[30]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_instr2dec[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[0]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[1]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[2]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[3]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[4]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[5]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[6]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[7]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[8]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[9]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[10]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[11]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[12]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[13]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[14]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[15]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[16]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[17]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[18]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[19]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[20]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[21]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[22]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[23]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[24]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[25]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[26]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[27]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[28]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[29]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[30]} {genblk1[0].Aquila_SoC/RISCV_CORE/fet_pc2dec[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[0]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[1]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[2]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[3]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[4]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[5]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[6]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[7]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[8]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[9]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[10]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[11]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[12]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[13]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[14]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[15]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[16]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[17]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[18]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[19]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[20]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[21]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[22]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[23]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[24]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[25]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[26]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[27]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[28]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[29]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[30]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_instr2dec[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[0]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[1]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[2]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[3]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[4]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[5]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[6]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[7]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[8]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[9]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[10]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[11]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[12]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[13]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[14]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[15]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[16]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[17]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[18]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[19]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[20]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[21]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[22]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[23]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[24]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[25]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[26]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[27]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[28]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[29]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[30]} {genblk1[1].Aquila_SoC/RISCV_CORE/fet_pc2dec[31]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
