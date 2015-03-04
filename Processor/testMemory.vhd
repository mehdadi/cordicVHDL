--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:07:32 12/31/2011
-- Design Name:   
-- Module Name:   C:/Users/mehrdad/Documents/xilinx/Processor/testmemory.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory
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
 
ENTITY testmemory IS
END testmemory;
 
ARCHITECTURE behavior OF testmemory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory
    PORT(
         clk : IN  std_logic;
         req_data : IN  std_logic;
         add : IN  std_logic_vector(7 downto 0);
         wrt_en : IN  std_logic;
         mem_data_in : IN  std_logic_vector(7 downto 0);
         data_rdy : OUT  std_logic;
         mem_data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal req_data : std_logic := '0';
   signal add : std_logic_vector(7 downto 0) := (others => '0');
   signal wrt_en : std_logic := '0';
   signal mem_data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_rdy : std_logic;
   signal mem_data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory PORT MAP (
          clk => clk,
          req_data => req_data,
          add => add,
          wrt_en => wrt_en,
          mem_data_in => mem_data_in,
          data_rdy => data_rdy,
          mem_data_out => mem_data_out
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
	add<="00000000";
	mem_data_in<="10101010";
	wrt_en<='1';
	wait for 100 ns;
	wrt_en<='0';
	wait for 100 ns;
	add<="10000000";
	mem_data_in<="11111111";
	wrt_en<='1';
	wait for 100 ns;
	wrt_en<='0';
	wait for 100 ns;
	req_data<='1';
	wait for 100 ns;
	req_data<='0';
	wait for 100 ns;
	add<="00000000";
	req_data<='1';
   wait for clk_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
