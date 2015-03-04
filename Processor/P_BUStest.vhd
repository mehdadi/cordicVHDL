--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:47:13 01/20/2012
-- Design Name:   
-- Module Name:   C:/Users/mehrdad/Documents/xilinx/Processor/p_bustest.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: P_BUS
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
 
ENTITY p_bustest IS
END p_bustest;
 
ARCHITECTURE behavior OF p_bustest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT P_BUS
    PORT(
         clk : IN  std_logic;
         data_in_cou : IN  std_logic_vector(7 downto 0);
         data_in_mem : IN  std_logic_vector(7 downto 0);
         data_in_dsp : IN  std_logic_vector(7 downto 0);
         data_out_cou : OUT  std_logic_vector(7 downto 0);
         data_out_mem : OUT  std_logic_vector(7 downto 0);
         data_out_dsp : OUT  std_logic_vector(7 downto 0);
         data_out_disp : OUT  std_logic_vector(7 downto 0);
         selection : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in_cou : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in_mem : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in_dsp : std_logic_vector(7 downto 0) := (others => '0');
   signal selection : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal data_out_cou : std_logic_vector(7 downto 0);
   signal data_out_mem : std_logic_vector(7 downto 0);
   signal data_out_dsp : std_logic_vector(7 downto 0);
   signal data_out_disp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: P_BUS PORT MAP (
          clk => clk,
          data_in_cou => data_in_cou,
          data_in_mem => data_in_mem,
          data_in_dsp => data_in_dsp,
          data_out_cou => data_out_cou,
          data_out_mem => data_out_mem,
          data_out_dsp => data_out_dsp,
          data_out_disp => data_out_disp,
          selection => selection
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
      wait for 100 ns;			selection <= "0001";
		data_in_mem<="10011001";
		wait for 10 ns;
      selection<="0001";      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
