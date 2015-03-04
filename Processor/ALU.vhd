----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:48 12/18/2011 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
port (clk : in std_logic;
en_adder: in std_logic;
en_sub: in std_logic;
en_jmp: in std_logic;
a_in,b_in: in std_logic_vector (7 downto 0);
res_out: out std_logic_vector (7 downto 0);
jmp: out std_logic);
end ALU;

architecture Behavioral of ALU is
signal en: std_logic_vector (1 downto 0);


begin
--res_out <= a_in + b_in when (rising_edge (clk) and en_adder='1') else
--			  a_in - b_in when (rising_edge (clk) and en_sub='1') else	
--			"00000000";
--jmp <= '1' when (rising_edge (clk) and en_jmp='1' and a_in="00000000") else
--			'0

	pros: process (clk)
	begin
	en <= en_adder & en_sub;
	if clk'EVENT and clk='1' then

		case en is
			when "10" => res_out<= a_in + b_in;
			when "01" => res_out<= a_in - b_in;
			when others => res_out <= "00000000";
		end case;
		case en_jmp is
			when '0' => jmp<='0';
			when '1' => if a_in="00000000" then
								jmp<='1';
							else
								jmp<='0';
							end if;
			when others => null;
		end case;
		end if;
end process;

end Behavioral;

