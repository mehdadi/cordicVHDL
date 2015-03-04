--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:10:29 12/25/2011
-- Design Name:   
-- Module Name:   C:/Users/mehrdad/Documents/xilinx/Processor/BIUtestbench.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BIU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BIUtestbench IS
END BIUtestbench;
 
ARCHITECTURE behavior OF BIUtestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BIU
    PORT(
         bidir : INOUT  std_logic_vector(7 downto 0);
         oe : IN  std_logic;
         clk : IN  std_logic;
         inp : IN  std_logic_vector(7 downto 0);
         outp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal oe : std_logic := '0';
   signal clk : std_logic := '0';
   signal inp : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal bidir : std_logic_vector(7 downto 0);

 	--Outputs
   signal outp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BIU PORT MAP (
          bidir => bidir,
          oe => oe,
          clk => clk,
          inp => inp,
          outp => outp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
	wait for 10 ns;
	oe<='1';
	wait for 20 ns;
	inp<="00000000";
	oe<='0';
	wait for 200 ns;
	bidir<="11111111";
	oe<='1';
	

      		

      wait;
   end process;

END;
