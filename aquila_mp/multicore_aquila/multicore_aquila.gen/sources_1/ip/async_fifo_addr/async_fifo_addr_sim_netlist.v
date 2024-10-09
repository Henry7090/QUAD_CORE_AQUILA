// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Sep 26 23:44:00 2024
// Host        : henry7090-ROG-Zephyrus-G16 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/henry7090/Desktop/Project/aquila_mp/multicore_aquila/multicore_aquila.gen/sources_1/ip/async_fifo_addr/async_fifo_addr_sim_netlist.v
// Design      : async_fifo_addr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_addr,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module async_fifo_addr
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
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
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
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
  async_fifo_addr_fifo_generator_v13_2_10 U0
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
module async_fifo_addr_xpm_cdc_gray
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
module async_fifo_addr_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81920)
`pragma protect data_block
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
mvrG+r9CGRaNmVc=
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
