-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Sep 26 23:44:00 2024
-- Host        : henry7090-ROG-Zephyrus-G16 running 64-bit Ubuntu 24.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/henry7090/Desktop/Project/aquila_mp/multicore_aquila/multicore_aquila.gen/sources_1/ip/async_fifo_signal/async_fifo_signal_stub.vhdl
-- Design      : async_fifo_signal
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity async_fifo_signal is
  Port ( 
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 0 to 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end async_fifo_signal;

architecture stub of async_fifo_signal is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_clk,rd_clk,din[0:0],wr_en,rd_en,dout[0:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_10,Vivado 2024.1";
begin
end;
