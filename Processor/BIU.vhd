----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:46 12/25/2011 
-- Design Name: 
-- Module Name:    BIU - Behavioral 
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
use ieee.numeric_Std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BIU is
  PORT(
       clk : IN STD_LOGIC;
     -------------data bus-------------------------  
	  inp_bus    : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
     outp_bus	 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
--------------------address bus----------------------
		--add_req: 
		add_bus: out std_logic_vector (7 downto 0);
		add_rdy : out std_logic;--control
----------------control bus------------------------------	  
	  sel_bus_in : out std_logic_vector (1 downto 0);
	  sel_bus_out: out std_logic_vector (1 downto 0);
	  mem_enwrt :  out std_logic;
	  dsp_en : out std_logic;
	  dip_en : out std_logic;
	  mem_ready : in std_logic;
	  dsp_ready : in std_logic;
	  
);
end BIU;

architecture Behavioral of BIU is


begin

pros: process (add_bus)
begin
 

end process;

end Behavioral;

