// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Sep 26 23:44:00 2024
// Host        : henry7090-ROG-Zephyrus-G16 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_signal_sim_netlist.v
// Design      : async_fifo_signal
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_signal,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [0:0]din;
  wire [0:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VRufLWT3xuzTvQKo8VrgeA7TQuqzWEYy/B1VZF2gTA62OnYpyvfz/jYVlv8uQmDxe/ByRttr4gwP
tNck8lOlu04WorDYZXBY99Iv+CD1MRsK+y6klNIUbRWjkWmJ0jF7xfzo5v6+6GlaIHD1nYWB0BGS
XKOLLgkxdDTc9QzwJD4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uL+N2Y0N0Nss4UIbL4YgwYw1dJAEJxw9VgIJekBqgLF5Hu0OvgBycKBL3tx4bMFtXLoBUh2ZjpPa
Go57AlryR20NeXp3+hoQeboPP11E649UsEN94qUxaPWE5/ujAWzWT8PMJfk3CAspcIaP3XsDNcxF
vPCbKLRNyWvSzyiofwOXgxNNgLi38SzcrWZtPo/eMELIxeVE3bkV2B7I60W9KI1gXiOj3SjPTDnx
EMAbJCwmbwCkTXljtuzvIRTsGb9QIurgASMwg4IWmb9DS6EbeVgoWu9ePD+YKuN3LcW87KSgmC3y
Mirx3ScsFGRfcOAUOLlOQxU4qqE1ZAjtBAua1w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ngggZ4AaOolK7F7zeqf8LCxDCGfbvArfgDzbRvoxE+aIi2H2/ZgHbrcaf1Km1cW+38j2kTOpZ5BU
JUI2G5HZNfsoiLXjFbOMvQQqByNzlhCZjrS3N725Cznvy/nQpUy+kW4iA6DQZKnpdC2s18Suxi5p
XtgDcUzCh62ABICOpz8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FzAmLTVxyHRqX0WAddlPopAH/5r3ExgkeVujmhMcJXHbjZ+OKAHOMXTsnwDh03EpZ2Dn+0UPeR9J
JML3A+MQGMuUUzy/4d/lj5rriSnTu0eRK0uK6Gl8vjL08vO3UKb6wGj/w9CP45OWOkbMNgZzJkAl
ulPX0OUqymWYOn3WVAtIlaQ0dmpONV8p6Ixe9p5wlEtvy+7JjUPwaVnKlLjKSAaYD07OqMK+IOEP
5oYs2BscpZ3YKlKVJkoU493L7szHHn2LhSUrMld33nLuWIO6WPdo2u2pTnWXl/J1BzNaK1VaLx4R
H7VhIvgYcSlzCrtbQuNHKFtDPGhXjeA41TS29g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oad6Ezs+KRRjlYrAkExu4Kft2T1qNa0HGt8W7O1ByK1ecBs0TGWt/sS3pnt6d6jWuqvsWhrmcGsU
TD7Z+IY65xRZ4IJfgngZD8v540FOGMuFUS31UWxcC7CI6qOo20Q0Irtoxrqm01u5p3tI87ApsE8S
lc2lQ5dh54cGYlRfmo5mYTw6WSHyyVYmoh9npUliD4eNVIKUqnBo1kmYzicnKe8ewFKTEWpjdMeZ
/4YxF/NRZzHTA3GIsnjcgOHia68T/NJJ+zQmoNwxerZWWoacU1EU0IHxET3y4fS/u0Af8OJhkGQf
jI0jGobNLRYYufemCxL6333z0oAno0RiPZlavA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LVIUY1x0cEHel3aUfppGw9v6zvpZmh/zrCgsFGWLi8t0vWUC/ikETYOpuFw/0f9L2t8c6tQj/BSQ
wjvzq42gFgtW+CFBjgHAVUBDHhzlv/GKUM/2Vq36bMg9H5f44nJH+7mDDGVPf2PyYZRkAosFPUpA
wRqTC/g2mQ0mMY/gZGQRrs+/VY69Ze9sjoEiEXuwkb/+/VjXgHCxiCzG4cKf0ZiQ+rePhqJqB7FK
IJ+6LHriZD474qtFLq3fOZ9mrqOgN7iBQlc66dO9E0RmZZZsWtQQzZ4q1c2pzvsjDdJyWe0mTlwa
QGVmYElSvL9in5WwDxoKM+2J7vco8OIexLgbJg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qf9CPkJTDS6nRjzJ66HoyvpTqtDB4QY3Hy9peOp3xA39ggAvytqhHhiPv35dCRWSCdAyO1u2m+O7
/knms947I+MYTpHHfukyZsBbLho0jRq3cSXe9e6VE+4Dt40wryd91cmi93qmeUxg+vf0F91ug50P
gJ4oGYP71ANEq1UaGqGHgVK0ZsY6jTyc0x25eh+fnXg6vElSbqcptvyGMOBVT/g+gDKIheN40WzZ
Tday7b7o8j+UecVazn9OG8lGmgEQH+ilZfelpEFOBKoEc7YS6kKJ1yiX5nxRMJalTuojq5mhxebk
EsmPJe45gdIAuAmBpw3iLddcx52Arew1xpNY9w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
H+d/6javaSRU2swARkzTIL8p3itaD4ohPxaTAeOjHpt7R9NIiNpHJvUFWkpZ02WVRAGHIw8Kujz3
6qQbQgKv8nhuS0lDhOHSDBVglvTONFSPjBj6pNY2XB24O4tlMghNicwCBXjxGXS6xET2pHNCj46f
01l0BHXfAtSn5SMPu3KYxDnod+2/TDKoWzzX29rrvh4wvf+eKFGbEVa3/RP2yg+Mp05W5p0KZ1Z3
JvOIxc57qFLARbLg1ToAzgZ8iZXLB5tX2Ez+rVDzW4i9ZvMW40QGIP5F6KCmuWunjVyqcasQ+9V7
oxcmw4sBdn0TYckrmrDvGtKxr+at316tB9uFJzLHWIwjnROKDoFwhcBbXzoqNoU/oBWqorM8JnDS
d/8tvN+7zx+k1OgCrpu5jgCA2E9LIMqL+HO19rub4MD4RjgOufHPDbN2wv6I9bj3Tko+kBZSFxxR
1SnGvhgPAaZJxQLEM+WE8SnVMzJI0RKNctcFv/jmWTYmAdTGIiTDAcmW

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WXM4aFffz6byfeUnRWfxJR3Sbg31hpZIfhJu9O4aqVdZMRQzhrArOJ75qYkGOgZjI+35a4DA9Ohc
RMh3Tm8A5kh9XM67B45s3+7vF8pYIM5pFlzEQBSQ/OeeAi6GNLI2ACXQl1WutRpQKuwX9iboEsRb
Kc1SU6AOV6yaliF6tUt1LL4x+bC8mqlEHTk6SvN7aiA23tVDcik1QSH66CO3/+J5f88G53DHDqtY
T6w2k7pUziwTnLfirI+XpPgqYp9YYRQEv52Q7wTYJlYnVYrMyludNuTaIE27AkgPAneEkdJlrq9l
eVOgs6ZIO1DEusKG7VzkbM1sS0GnU5Zhuj1Eww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KJ2iLB3UgRnxezAEg3KJ/gREzXcLo8pOtacMRsDMsFCSD3vYAdGUKSARO8g71pIGFzJo6PBwogFR
MkJED/0TqwZaleoFaN2ULuSnzZGmf8vT0qKvutBGquDn8MH7T3k3wLxcNdZQLnkqisJCMj8u+71g
xMQRAkhtAQvA2cWb6TDQN6jmfByZuu/AH3X+YZ43XIDG/jymNkwyBWNNx0yzbZouJtOuzzYHhYoC
AAuKR+zfynO91P9hcrXFiExHtCmvb73DA4ICLGiOzEj+C1PMPBX9AHdhnWYy5BbQGsd727Y50yNo
xmTU1vBKL2ewwN4j/Ib2AK/Z7T+d/NunpRbCnA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eYDP9MWXRUmO05etuHvoqbEMRNQHmR5nos71kLkRxpycXrdpHxalQmyEdCdbeVoM8lN9qwxKuN0l
yQn00dSYRi3P02ygaVsHqVAsRtz2yRpIRjyGMYD7zKpnNQw476DBmK+/sCD7EH6NxSfzUNnfoURL
uIFC0sHEYpwX6Qt2bT2GdCC0OFvaGwQNimyTFdfeey7cdpg9JmsQRgLEUfRwG1Dk0iu258zTUnT+
31O5RA9OwlgZJpC+LpCvL8XAmGZJ4CCeUf2hnpppoV4KphAV4mCBUkNtUYZSJdF0a5cdHFxnxR5n
nI0ed4USMMiNvLqvP0HQgecfCvYzYx9kk0bmtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64880)
`pragma protect data_block
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
aS/7bKHfmSNBDlTjghQ=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
