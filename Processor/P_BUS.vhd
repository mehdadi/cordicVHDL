----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:21 12/30/2011 
-- Design Name: 
-- Module Name:    P_BUS - Behavioral 
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

entity P_BUS is

port(
data_in_cou : in std_logic_vector (7 downto 0);
data_in_mem : in std_logic_vector (7 downto 0);
data_in_dsp: in std_logic_vector (7 downto 0);
data_out_cou: out std_logic_vector (7 downto 0);
data_out_mem: out std_logic_vector (7 downto 0);
data_out_dsp: out std_logic_vector (7 downto 0);

selection : in std_logic_vector (3 downto 0)
);

end P_BUS;

architecture Behavioral of P_BUS is

begin

data_out_mem <= data_in_cou;-- when selection = "0001" else "XXXXXXXX";
data_out_dsp <= data_in_cou;-- when selection = "0010" else "XXXXXXXX";
data_out_cou <= data_in_mem when selection = "0100" else data_in_dsp when selection = "1000" else "XXXXXXXX";


--proces: process (clk)
--begin
--if clk'EVENT and clk='1' then
--		case selection is 
--				when "0001" => data_out_mem<= data_in_cou;---control to memo
--				when "0010" => data_out_dsp<= data_in_cou;-- control to dsp
--				--when "0011" => data_out_disp<= data_in_cou;-- control to disp
--				when "0100" => data_out_cou<=data_in_mem;--memo to control
--				when "1000" => data_out_cou<=data_in_dsp;	--dsp to control		 
--				when others => null;
--		end case;

--end if;
--end process;


end Behavioral;

