--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:04:42 01/01/2012
-- Design Name:   
-- Module Name:   C:/Users/mehrdad/Documents/xilinx/Processor/testcontrolunit.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
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
 
ENTITY testcontrolunit IS
END testcontrolunit;
 
ARCHITECTURE behavior OF testcontrolunit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
      --   test : IN  std_logic_vector(23 downto 0);
         address_bus : OUT  std_logic_vector(7 downto 0);
         control_bus_out : OUT  std_logic_vector(3 downto 0);
         control_bus_in : IN  std_logic_vector(1 downto 0);
         BIU : OUT  std_logic_vector(3 downto 0);
         cou_data_in : IN  std_logic_vector(7 downto 0);
         cou_data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
 --  signal test : std_logic_vector(23 downto 0) := (others => '0');
   signal control_bus_in : std_logic_vector(1 downto 0) := (others => '0');
   signal cou_data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal address_bus : std_logic_vector(7 downto 0);
   signal control_bus_out : std_logic_vector(3 downto 0);
   signal BIU : std_logic_vector(3 downto 0);
   signal cou_data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          clk => clk,
          start => start,
     ---     test => test,
          address_bus => address_bus,
          control_bus_out => control_bus_out,
          control_bus_in => control_bus_in,
          BIU => BIU,
          cou_data_in => cou_data_in,
          cou_data_out => cou_data_out
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
      wait for 100 ns;	      -- hold reset state for 100 ns.
           -- hold reset state for 100 ns.
start<='1';
--wait for 100 ns;
--test<="000001000000000100000000";
--wait for 100 ns;
--test<="010000001010101011111111";
--wait for 100 ns;
--test<="000100000000000100000000";
--wait for 40 ns;
---cou_data_in<="00001111";
--control_bus_in(0)<='1';
--wait for 20 ns;
--test<="001000001010101000000001";
      -- insert stimulus here 
--wait for 100 ns;
--test<="000100000000000100000000";
--wait for 40 ns;
---cou_data_in<="11110000";
--control_bus_in(0)<='1';
--wait for 20 ns;
--test<="001000001010101000000001";
      -- insert stimulus here       wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
