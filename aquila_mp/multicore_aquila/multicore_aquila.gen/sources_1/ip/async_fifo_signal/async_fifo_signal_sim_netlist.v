// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Sep 26 23:44:00 2024
// Host        : henry7090-ROG-Zephyrus-G16 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/henry7090/Desktop/Project/aquila_mp/multicore_aquila/multicore_aquila.gen/sources_1/ip/async_fifo_signal/async_fifo_signal_sim_netlist.v
// Design      : async_fifo_signal
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_signal,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module async_fifo_signal
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
  async_fifo_signal_fifo_generator_v13_2_10 U0
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

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_signal_xpm_cdc_gray
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
module async_fifo_signal_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64768)
`pragma protect data_block
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
gPfpeaSacoYdnxqh3OL/Iw==
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
