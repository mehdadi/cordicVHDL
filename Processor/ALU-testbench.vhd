--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:55:48 12/18/2011
-- Design Name:   
-- Module Name:   C:/Users/mehrdad/Documents/xilinx/Processor/ALU-testbench.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUtestbench IS
END ALU-testbench;
 
ARCHITECTURE behavior OF ALU-testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         clk : IN  std_logic;
         en_adder : IN  std_logic;
         en_sub : IN  std_logic;
         en_jmp : IN  std_logic;
         a_in : IN  std_logic_vector(7 downto 0);
         b_in : IN  std_logic_vector(7 downto 0);
         res_out : OUT  std_logic_vector(7 downto 0);
         jmp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en_adder : std_logic := '0';
   signal en_sub : std_logic := '0';
   signal en_jmp : std_logic := '0';
   signal a_in : std_logic_vector(7 downto 0) := (others => '0');
   signal b_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal res_out : std_logic_vector(7 downto 0);
   signal jmp : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          clk => clk,
          en_adder => en_adder,
          en_sub => en_sub,
          en_jmp => en_jmp,
          a_in => a_in,
          b_in => b_in,
          res_out => res_out,
          jmp => jmp
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
