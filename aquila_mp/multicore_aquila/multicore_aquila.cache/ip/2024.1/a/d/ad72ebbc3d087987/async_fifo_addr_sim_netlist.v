// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Sep 26 23:44:00 2024
// Host        : henry7090-ROG-Zephyrus-G16 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_addr_sim_netlist.v
// Design      : async_fifo_addr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_addr,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82096)
`pragma protect data_block
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
l8QYEdj0jS2biFrf/oa0gQ==
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
