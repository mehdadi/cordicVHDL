----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:22 12/17/2011 
-- Design Name: 
-- Module Name:    Proccessor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Proccessor is
port (
clk: in std_logic;
start: in std_logic;
Error : out std_logic
);
end Proccessor;


------------
architecture Behavioral of Proccessor is

component ControlUnit is
port (
clk: in std_logic;--
start : in std_logic;--

address_bus: out std_logic_vector (7 downto 0);
control_bus_out: out std_logic_vector (3 downto 0); --(disp_en,dsp_en,mem_read,mem_write)
control_bus_in: in std_logic_vector (1 downto 0); --(dsp_ready,mem_ready)
BIU :out std_logic_vector (3 downto 0); --(bus_input(2bit),Bus_output(2bit))
cou_data_in: in std_logic_vector (7 downto 0);
cou_data_out: out std_logic_vector (7 downto 0)
);

end component;
--- memory --

component memory is
port(
clk: in std_logic;

req_data: in std_logic;
add: in std_logic_vector(7 downto 0);

wrt_en: in std_logic;
mem_data_in: in std_logic_vector (7 downto 0);
data_rdy: out std_logic;
mem_data_out: out std_logic_vector(7 downto 0)
);
end component;

--------BIU--------------------------
component P_BUS is
port(
data_in_cou : in std_logic_vector (7 downto 0);
data_in_mem : in std_logic_vector (7 downto 0);
data_in_dsp: in std_logic_vector (7 downto 0);
data_out_cou: out std_logic_vector (7 downto 0);
data_out_mem: out std_logic_vector (7 downto 0);
data_out_dsp: out std_logic_vector (7 downto 0);

selection : in std_logic_vector (3 downto 0)
);
end component;
-------------DSP CORE---------------------------

component cordic_0 is 
PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
  
end component;
--------%%%%%%%%%--BUS--signals 
signal  s_data_in_cou : std_logic_vector(7 downto 0);  
signal  s_data_in_mem : std_logic_vector(7 downto 0);   
signal  s_data_in_dsp : std_logic_vector(7 downto 0);  
signal  s_data_out_cou : std_logic_vector(7 downto 0);  
signal  s_data_out_mem : std_logic_vector(7 downto 0);  
signal  s_data_out_dsp : std_logic_vector(15 downto 0);  
signal  s_data_out_Tdsp : std_logic_vector(15 downto 0);  
signal s_data_out_disp : std_logic_vector(7 downto 0);  
signal slct:std_logic_vector(3 downto 0);

signal s_data_out_dsp_x :std_logic_vector(7 downto 0);
signal s_data_out_tdsp_x :std_logic_vector(7 downto 0);

---------------signals-------
signal add_bus : std_logic_vector(7 downto 0);
signal cntrling:std_logic_vector(3 downto 0);
signal cntrl_cou:std_logic_vector(1 downto 0);

begin -- arch --

s_data_out_dsp_x <= s_data_out_dsp(15 downto 8);
s_data_out_tdsp_x <= s_data_out_tdsp(15 downto 8);

error <= '0' when s_data_out_dsp = s_data_out_tdsp else '1';

cou0: ControlUnit
	port map( clk=>clk, start=>start, address_bus=>add_bus, control_bus_out=>cntrling, 
	control_bus_in=>cntrl_cou,BIU=>slct, cou_data_in=>s_data_out_cou, cou_data_out=>s_data_in_cou
);

mem0: memory
 port map (clk=>clk, req_data=>cntrling(1), add=>add_bus, wrt_en=>cntrling(0), 
 mem_data_in=>s_data_out_mem, data_rdy=>cntrl_cou(0), mem_data_out=>s_data_in_mem);

P_Bus0: P_BUS
port map (data_in_cou => s_data_in_cou, data_in_mem=> s_data_in_mem,data_out_cou => s_data_out_cou,data_in_dsp => s_data_out_dsp_x,data_out_mem => s_data_out_mem,data_out_dsp => s_data_in_dsp,
	      selection => slct);
	

DSP: cordic_0
port map(aclk=>clk,s_axis_phase_tvalid=>cntrling(2), s_axis_phase_tdata => s_data_in_dsp, m_axis_dout_tdata => s_data_out_dsp, m_axis_dout_tvalid=>cntrl_cou(1));

T_DSP: cordic_0
port map(aclk=>clk,s_axis_phase_tvalid=>cntrling(2), s_axis_phase_tdata => s_data_in_dsp, m_axis_dout_tdata => s_data_out_Tdsp);
	
	
--	display <= "11111111" when (TDSP_rd='1') and (TDSP_out = s_data_in_dsp) else
--				  "10101010" when (TDSP_rd='1' and TDSP_out /= s_data_in_dsp) else
--				  s_data_out_disp when cntrling(3)='1' else
--				  "00000000";

end Behavioral;

