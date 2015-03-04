--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: Proccessor_synthesis.vhd
-- /___/   /\     Timestamp: Tue May 01 19:24:54 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Proccessor -w -dir netgen/synthesis -ofmt vhdl -sim Proccessor.ngc Proccessor_synthesis.vhd 
-- Device	: xc7vx330t-3-ffg1157
-- Input file	: Proccessor.ngc
-- Output file	: C:\Users\mehrdad\Documents\xilinx\Processor\netgen\synthesis\Proccessor_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Proccessor
-- Xilinx	: C:\Xilinx\13.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Proccessor is
  port (
    clk : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    display : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end Proccessor;

architecture Structure of Proccessor is
  component cordic_v4_0
    port (
      nd : in STD_LOGIC := 'X'; 
      clk : in STD_LOGIC := 'X'; 
      rdy : out STD_LOGIC; 
      phase_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      x_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      y_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal clk_IBUF_0 : STD_LOGIC; 
  signal TDSP_rd : STD_LOGIC; 
  signal s_data_in_dsp_7_TDSP_out_7_equal_1_o : STD_LOGIC; 
  signal s_data_in_dsp_7_TDSP_out_7_equal_1_o8 : STD_LOGIC; 
  signal s_data_in_dsp_7_TDSP_out_7_equal_1_o81_22 : STD_LOGIC; 
  signal GND_3_o_dff_3_0_glue_rst : STD_LOGIC; 
  signal GND_3_o_dff_3_1_glue_rst : STD_LOGIC; 
  signal GND_3_o_dff_3_0_1_29 : STD_LOGIC; 
  signal NLW_DSP_y_out_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_y_out_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DSP_rdy_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_T_DSP_y_out_0_UNCONNECTED : STD_LOGIC; 
  signal s_data_in_dsp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal TDSP_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal GND_3_o_dff_3 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => GND_3_o_dff_3_0_glue_rst
    );
  DSP : cordic_v4_0
    port map (
      nd => GND_3_o_dff_3_0_glue_rst,
      clk => clk_IBUF_0,
      rdy => NLW_DSP_rdy_UNCONNECTED,
      phase_in(7) => GND_3_o_dff_3_0_glue_rst,
      phase_in(6) => GND_3_o_dff_3_0_glue_rst,
      phase_in(5) => GND_3_o_dff_3_0_glue_rst,
      phase_in(4) => GND_3_o_dff_3_0_glue_rst,
      phase_in(3) => GND_3_o_dff_3_0_glue_rst,
      phase_in(2) => GND_3_o_dff_3_0_glue_rst,
      phase_in(1) => GND_3_o_dff_3_0_glue_rst,
      phase_in(0) => GND_3_o_dff_3_0_glue_rst,
      x_out(7) => s_data_in_dsp(7),
      x_out(6) => s_data_in_dsp(6),
      x_out(5) => s_data_in_dsp(5),
      x_out(4) => s_data_in_dsp(4),
      x_out(3) => s_data_in_dsp(3),
      x_out(2) => s_data_in_dsp(2),
      x_out(1) => s_data_in_dsp(1),
      x_out(0) => s_data_in_dsp(0),
      y_out(7) => NLW_DSP_y_out_7_UNCONNECTED,
      y_out(6) => NLW_DSP_y_out_6_UNCONNECTED,
      y_out(5) => NLW_DSP_y_out_5_UNCONNECTED,
      y_out(4) => NLW_DSP_y_out_4_UNCONNECTED,
      y_out(3) => NLW_DSP_y_out_3_UNCONNECTED,
      y_out(2) => NLW_DSP_y_out_2_UNCONNECTED,
      y_out(1) => NLW_DSP_y_out_1_UNCONNECTED,
      y_out(0) => NLW_DSP_y_out_0_UNCONNECTED
    );
  T_DSP : cordic_v4_0
    port map (
      nd => GND_3_o_dff_3_0_glue_rst,
      clk => clk_IBUF_0,
      rdy => TDSP_rd,
      phase_in(7) => GND_3_o_dff_3_0_glue_rst,
      phase_in(6) => GND_3_o_dff_3_0_glue_rst,
      phase_in(5) => GND_3_o_dff_3_0_glue_rst,
      phase_in(4) => GND_3_o_dff_3_0_glue_rst,
      phase_in(3) => GND_3_o_dff_3_0_glue_rst,
      phase_in(2) => GND_3_o_dff_3_0_glue_rst,
      phase_in(1) => GND_3_o_dff_3_0_glue_rst,
      phase_in(0) => GND_3_o_dff_3_0_glue_rst,
      x_out(7) => TDSP_out(7),
      x_out(6) => TDSP_out(6),
      x_out(5) => TDSP_out(5),
      x_out(4) => TDSP_out(4),
      x_out(3) => TDSP_out(3),
      x_out(2) => TDSP_out(2),
      x_out(1) => TDSP_out(1),
      x_out(0) => TDSP_out(0),
      y_out(7) => NLW_T_DSP_y_out_7_UNCONNECTED,
      y_out(6) => NLW_T_DSP_y_out_6_UNCONNECTED,
      y_out(5) => NLW_T_DSP_y_out_5_UNCONNECTED,
      y_out(4) => NLW_T_DSP_y_out_4_UNCONNECTED,
      y_out(3) => NLW_T_DSP_y_out_3_UNCONNECTED,
      y_out(2) => NLW_T_DSP_y_out_2_UNCONNECTED,
      y_out(1) => NLW_T_DSP_y_out_1_UNCONNECTED,
      y_out(0) => NLW_T_DSP_y_out_0_UNCONNECTED
    );
  s_data_in_dsp_7_TDSP_out_7_equal_1_o81 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => s_data_in_dsp(1),
      I1 => TDSP_out(1),
      I2 => s_data_in_dsp(6),
      I3 => TDSP_out(6),
      I4 => s_data_in_dsp(5),
      I5 => TDSP_out(5),
      O => s_data_in_dsp_7_TDSP_out_7_equal_1_o8
    );
  s_data_in_dsp_7_TDSP_out_7_equal_1_o82 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => s_data_in_dsp(4),
      I1 => TDSP_out(4),
      I2 => s_data_in_dsp(3),
      I3 => TDSP_out(3),
      I4 => s_data_in_dsp(2),
      I5 => TDSP_out(2),
      O => s_data_in_dsp_7_TDSP_out_7_equal_1_o81_22
    );
  s_data_in_dsp_7_TDSP_out_7_equal_1_o83 : LUT6
    generic map(
      INIT => X"8200008200000000"
    )
    port map (
      I0 => s_data_in_dsp_7_TDSP_out_7_equal_1_o8,
      I1 => s_data_in_dsp(7),
      I2 => TDSP_out(7),
      I3 => s_data_in_dsp(0),
      I4 => TDSP_out(0),
      I5 => s_data_in_dsp_7_TDSP_out_7_equal_1_o81_22,
      O => s_data_in_dsp_7_TDSP_out_7_equal_1_o
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF_0
    );
  display_2_OBUF : OBUF
    port map (
      I => GND_3_o_dff_3_0_1_29,
      O => display(2)
    );
  display_1_OBUF : OBUF
    port map (
      I => GND_3_o_dff_3(1),
      O => display(1)
    );
  display_0_OBUF : OBUF
    port map (
      I => GND_3_o_dff_3(0),
      O => display(0)
    );
  GND_3_o_dff_3_0 : FDS
    port map (
      C => TDSP_rd,
      D => GND_3_o_dff_3_0_glue_rst,
      S => s_data_in_dsp_7_TDSP_out_7_equal_1_o,
      Q => GND_3_o_dff_3(0)
    );
  GND_3_o_dff_3_1 : FDS
    port map (
      C => TDSP_rd,
      D => GND_3_o_dff_3_1_glue_rst,
      S => s_data_in_dsp_7_TDSP_out_7_equal_1_o,
      Q => GND_3_o_dff_3(1)
    );
  GND_3_o_dff_3_1_glue_rst1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => TDSP_rd,
      I1 => s_data_in_dsp_7_TDSP_out_7_equal_1_o,
      O => GND_3_o_dff_3_1_glue_rst
    );
  GND_3_o_dff_3_0_1 : FDS
    port map (
      C => TDSP_rd,
      D => GND_3_o_dff_3_0_glue_rst,
      S => s_data_in_dsp_7_TDSP_out_7_equal_1_o,
      Q => GND_3_o_dff_3_0_1_29
    );

end Structure;

