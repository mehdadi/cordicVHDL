----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:08 12/17/2011 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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
use IEEE.numeric_std.all;
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
port (
clk: in std_logic;
start : in std_logic;
--test: in std_logic_vector (23 downto 0);

address_bus: out std_logic_vector (7 downto 0);
control_bus_out: out std_logic_vector (3 downto 0); --(disp_en,dsp_en,mem_read,mem_write)
control_bus_in: in std_logic_vector (1 downto 0); --(dsp_ready,mem_ready)
BIU :out std_logic_vector (3 downto 0); --(bus_input,Bus_output)
cou_data_in: in std_logic_vector (7 downto 0);
cou_data_out: out std_logic_vector (7 downto 0)
);


end ControlUnit;

architecture Behavioral of ControlUnit is
-----------------ALU COMPONENT------------------------------------------
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
------------------------------------------------------------------------
-------------Program Machine Code----------------------------------copy from compiler to here
type program_array is array  (integer range 0 to 255) of std_logic_vector(23 downto 0);
signal program: program_array:=(
"100000000000000000000000",
"100000000000000000000001",
"100000000000000000000010",
"100000000000000000000011",
"100000000000000000000100",
"100000000000000000000101",
"100000000000000000000110",
"100000000000000000000111",
"100000000000000000001000",
"100000000000000000001001",
"100000000000000000001010",
"100000000000000000001011",
"100000000000000000001100",
"100000000000000000001101",
"100000000000000000001110",
"100000000000000000001111",
"100000000000000000010000",
"100000000000000000010001",
"100000000000000000010010",
"100000000000000000010011",
"100000000000000000010100",
"100000000000000000010101",
"100000000000000000010110",
"100000000000000000010111",
"100000000000000000011000",
"100000000000000000011001",
"100000000000000000011010",
"100000000000000000011011",
"100000000000000000011100",
"100000000000000000011101",
"100000000000000000011110",
"100000000000000000011111",
"100000000000000000100000",
"100000000000000000100001",
"100000000000000000100010",
"100000000000000000100011",
"100000000000000000100100",
"100000000000000000100101",
"100000000000000000100110",
"100000000000000000100111",
"100000000000000000101000",
"100000000000000000101001",
"100000000000000000101010",
"100000000000000000101011",
"100000000000000000101100",
"100000000000000000101101",
"100000000000000000101110",
"100000000000000000101111",
"100000000000000000110000",
"100000000000000000110001",
"100000000000000000110010",
"100000000000000000110011",
"100000000000000000110100",
"100000000000000000110101",
"100000000000000000110110",
"100000000000000000110111",
"100000000000000000111000",
"100000000000000000111001",
"100000000000000000111010",
"100000000000000000111011",
"100000000000000000111100",
"100000000000000000111101",
"100000000000000000111110",
"100000000000000000111111",
"100000000000000001000000",
"100000000000000001000001",
"100000000000000001000010",
"100000000000000001000011",
"100000000000000001000100",
"100000000000000001000101",
"100000000000000001000110",
"100000000000000001000111",
"100000000000000001001000",
"100000000000000001001001",
"100000000000000001001010",
"100000000000000001001011",
"100000000000000001001100",
"100000000000000001001101",
"100000000000000001001110",
"100000000000000001001111",
"100000000000000001010000",
"100000000000000001010001",
"100000000000000001010010",
"100000000000000001010011",
"100000000000000001010100",
"100000000000000001010101",
"100000000000000001010110",
"100000000000000001010111",
"100000000000000001011000",
"100000000000000001011001",
"100000000000000001011010",
"100000000000000001011011",
"100000000000000001011100",
"100000000000000001011101",
"100000000000000001011110",
"100000000000000001011111",
"100000000000000001100000",
"100000000000000001100001",
"100000000000000001100010",
"100000000000000001100011",
"100000000000000001100100",
"100000000000000001100101",
"100000000000000001100110",
"100000000000000001100111",
"100000000000000001101000",
"100000000000000001101001",
"100000000000000001101010",
"100000000000000001101011",
"100000000000000001101100",
"100000000000000001101101",
"100000000000000001101110",
"100000000000000001101111",
"100000000000000001110000",
"100000000000000001110001",
"100000000000000001110010",
"100000000000000001110011",
"100000000000000001110100",
"100000000000000001110101",
"100000000000000001110110",
"100000000000000001110111",
"100000000000000001111000",
"100000000000000001111001",
"100000000000000001111010",
"100000000000000001111011",
"100000000000000001111100",
"100000000000000001111101",
"100000000000000001111110",
"100000000000000001111111",
"100000000000000010000000",
"100000000000000010000001",
"100000000000000010000010",
"100000000000000010000011",
"100000000000000010000100",
"100000000000000010000101",
"100000000000000010000110",
"100000000000000010000111",
"100000000000000010001000",
"100000000000000010001001",
"100000000000000010001010",
"100000000000000010001011",
"100000000000000010001100",
"100000000000000010001101",
"100000000000000010001110",
"100000000000000010001111",
"100000000000000010010000",
"100000000000000010010001",
"100000000000000010010010",
"100000000000000010010011",
"100000000000000010010100",
"100000000000000010010101",
"100000000000000010010110",
"100000000000000010010111",
"100000000000000010011000",
"100000000000000010011001",
"100000000000000010011010",
"100000000000000010011011",
"100000000000000010011100",
"100000000000000010011101",
"100000000000000010011110",
"100000000000000010011111",
"100000000000000010100000",
"100000000000000010100001",
"100000000000000010100010",
"100000000000000010100011",
"100000000000000010100100",
"100000000000000010100101",
"100000000000000010100110",
"100000000000000010100111",
"100000000000000010101000",
"100000000000000010101001",
"100000000000000010101010",
"100000000000000010101011",
"100000000000000010101100",
"100000000000000010101101",
"100000000000000010101110",
"100000000000000010101111",
"100000000000000010110000",
"100000000000000010110001",
"100000000000000010110010",
"100000000000000010110011",
"100000000000000010110100",
"100000000000000010110101",
"100000000000000010110110",
"100000000000000010110111",
"100000000000000010111000",
"100000000000000010111001",
"100000000000000010111010",
"100000000000000010111011",
"100000000000000010111100",
"100000000000000010111101",
"100000000000000010111110",
"100000000000000010111111",
"100000000000000011000000",
"100000000000000011000001",
"100000000000000011000010",
"100000000000000011000011",
"100000000000000011000100",
"100000000000000011000101",
"100000000000000011000110",
"100000000000000011000111",
"100000000000000011001000",
"100000000000000011001001",
"100000000000000011001010",
"100000000000000011001011",
"100000000000000011001100",
"100000000000000011001101",
"100000000000000011001110",
"100000000000000011001111",
"100000000000000011010000",
"100000000000000011010001",
"100000000000000011010010",
"100000000000000011010011",
"100000000000000011010100",
"100000000000000011010101",
"100000000000000011010110",
"100000000000000011010111",
"100000000000000011011000",
"100000000000000011011001",
"100000000000000011011010",
"100000000000000011011011",
"100000000000000011011100",
"100000000000000011011101",
"100000000000000011011110",
"100000000000000011011111",
"100000000000000011100000",
"100000000000000011100001",
"100000000000000011100010",
"100000000000000011100011",
"100000000000000011100100",
"100000000000000011100101",
"100000000000000011100110",
"100000000000000011100111",
"100000000000000011101000",
"100000000000000011101001",
"100000000000000011101010",
"100000000000000011101011",
"100000000000000011101100",
"100000000000000011101101",
"100000000000000011101110",
"100000000000000011101111",
"100000000000000011110000",
"100000000000000011110001",
"100000000000000011110010",
"100000000000000011110011",
"100000000000000011110100",
"100000000000000011110101",
"100000000000000011110110",
"100000000000000011110111",
"100000000000000011111000",
"100000000000000011111001",
"100000000000000011111010",
"100000000000000011111011",
"100000000000000011111100",
"100000000000000011111101",
"100000000000000011111110",
"100000000000000011111111");
------------------------------------------------------------------------	 
--------------------8 bit registers-------------------------------------
type blck is array (integer range 0 to 7) of std_logic_vector(7 downto 0);
signal regblock: blck;--:= ("00000001","00000001","00000001","00000001","00000001","00000001","00001111","11110000");
---------------------main regisers--------------------------------------
signal IR : std_logic_vector (23 downto 0); --(opcode(8),fstadd(8),secadd(8))
shared variable PC : integer;
signal ACC: std_logic_vector (7 downto 0);
signal JMP: std_logic;

---------------alu wire-------------------------------------------------------------
signal first: std_logic_vector (7 downto 0);-- ALU input
signal second: std_logic_vector (7 downto 0);--ALU input
signal alu_out : std_logic_vector (7 downto 0);-- ALU output
signal jmp_pc :integer;
-----------------DSP registers-------------------------------------------------------
signal DSP_phase : std_logic_vector (7 downto 0);

---------controler flags-----------------------------------------------------

-----------------states------------------------------------------------------
type state is (idle,fetch,execute,writeback,stop,dsp);
shared variable currentF : state;
shared variable currentS:  state;
shared variable currentT : state;

type execution is (exe1,exe2,exe3,exe4,exe5,exe6,exe7,exe8);
shared variable execF: execution;
shared variable execS: execution;
shared variable execT: execution;
---------------------------------------------------------------------------------
signal wb: integer;

begin  --- arch ---
-----ALU  comand firstREG sec REG
	ALU0 : ALU
	port map (clk,IR(18),IR(17),IR(16),first,second,alu_out,JMP);

	first<= regblock(to_integer(unsigned(IR(7 downto 0)))) when (rising_edge(clk) and (IR(17)='1' or IR(18)='1' or IR(16)='1' ));
	second<= regblock(to_integer(unsigned(IR(15 downto 8)))) when (rising_edge(clk) and (IR(17)='1' or IR(18)='1' or IR(16)='1' ));

	
----------------------------------------------------
 
 
	cou_data_out<=  regblock(to_integer(unsigned(IR(7 downto 0)))) when IR(21)='1' else--ir21,
				    IR(7 downto 0) when IR(22)='1' else --ir22				
					IR(7 downto 0) when IR(23)='1' else--ir23			   
					"00000000"; --latch
 
 
	address_bus<= IR(15 downto 8) when (IR(21)='1' or IR(22)='1') else --ir21,22,23
						IR(7 downto 0) when IR(20)='1' else--ir20
						"00000000" ;



	control_bus_out <=   "0001" when (IR(21)='1' or IR(22)='1') else
						 "0010" when IR(20)='1' else
						 "0100" when IR(23)='1' else
						 "1000" when IR(19)='1' else
						 "0000";

acc <= cou_data_in when (IR(20)='1' and control_bus_in(0)='1') or (IR(23)='1' and control_bus_in(1)='1') else alu_out; 

wb <= to_integer(unsigned(IR(15 downto 8))) when (IR(17)='1' or IR(18)='1' or IR(20)='1') else
		8;


------------------------------------------------------
-----------------Bus I Unit---------------------------
 
	BIU<= "0001" when (IR(21)='1' or IR(22)='1') else
			"0010" when IR(23)='1' else  
			"0011" when IR(19)='1' else 
		   "0100" when control_bus_in(0)='1' else
		   "1000" when control_bus_in(1)='1' else
			"0000";
-------------------------------------------------------			


state_machine: process (clk, start,JMP)
variable startup : integer := 0;

impure function jmp_pred (constant pc: in integer) return boolean is
begin
        if pc < 255 then
            if program(pc+1)(16)='1' then
                return false;
            else 
                return false;
            end if;
        end if;
end function jmp_pred;


begin
if start='1' then
if clk'EVENT and clk='1' then
		
		if startup=0 then      --initialize
			PC := -1;
			currentF := fetch;
			currentS:= stop;
			currentT:= stop;
			startup:=1;
		end if;
		
		
        case currentF is
                when dsp =>
                    if control_bus_in(1) = '1' then
                        currentF := writeback;
                    else
                        currentF := dsp;
                    end if;
                
                when stop => currentF:= stop;
                when idle => 
                                 if (not(currentS= fetch)) and (not(currentT = fetch)) and (not(jmp_pred(pc))) then
                                    currentF:= fetch;
                                 end if;
                                 
                                 
                when fetch => 
                                    --if (not(currentS= execute)) and (not(currentT = execute)) then
                                       if JMP='1' then
                                            PC := to_integer(unsigned(IR(7 downto 0))); 
                                        else
                                            pc:=pc+1;
                                        end if;
                                        
                                        IR<=program(pc);
                                        if IR(23 downto 16)="00000000" then 
                                            CurrentF:= idle;
                                        else
                                            if IR(23) = '1' then 
                                                currentF:= dsp;
                                            else
                                                execF:=exe1;
                                                currentF:= execute;
                                            end if;
                                        end if;
                                    --end if;
                                    
                when execute =>
                                    
                                    case execF is
                                    when exe1 =>
                                                    execF:=exe2;
                                   when exe2 =>
                                                    execF:=exe3;
                                   when exe3 =>
                                                    execF:=exe4;
                                    when exe4 =>
                                                    execF:=exe5;
                                    when exe5 =>
                                                    execF:=exe6;
                                    when exe6 =>
                                                    execF:=exe7;
                                    when exe7 =>
                                                    execF:=exe8;													
                                   when exe8 =>
                                                    
                                                    currentF:= writeback;
                                    
                                    end case;
                                    
                when writeback => 
                
                                    if (wb<8)  then
                                        regblock(wb) <= acc ;
                                    end if;
                                    --pc:=pc+1;
                                    if (not(currentS= fetch)) and (not(currentT = fetch)) and (not(jmp_pred(pc))) then
                                        currentF:= fetch;
                                    else 
                                        currentF:= idle;
                                    end if;
                             
        end case;
        
        
        case currentS is
        when dsp => currentS := stop;
        when stop => currentS:= stop;
                when idle => 
                                 if (not(currentF= fetch)) and (not(currentT = fetch)) and (not(jmp_pred(pc))) then
                                    currentS:= fetch;
                                 end if;
                                 
                when fetch => 
                                    
                                    --if (not(currentF= execute)) and (not(currentT = execute)) then
                                        if JMP='1' then
                                            PC := to_integer(unsigned(IR(7 downto 0))); 
                                        else
                                            pc:=pc+1;
                                        end if;
                                        
                                        if pc = 255 then
                                            pc := 0;
                                        end if;
                                        
                                        IR<=program(pc);
                                        if IR(23 downto 16)="00000000" then 
                                            CurrentS:= idle;
                                        else
                                            execS:=exe1;
                                            currentS:= execute;
                                        end if;
                                        
                                        
                                        
                                    --end if;
                                    
                                    
                when execute =>
                                    case execS is
                                    when exe1 =>
                                                    execS:=exe2;
                                   when exe2 =>
                                                    execS:=exe3;
                                   when exe3 =>
                                                    execS:=exe4;
                                    when exe4 =>
                                                    execS:=exe5;
                                    when exe5 =>
                                                    execS:=exe6;
                                    when exe6 =>
                                                    execS:=exe7;
                                    when exe7 =>
                                                    execS:=exe8;													
                                   when exe8 =>
                                                    
                                                    currentS:= writeback;
                                    end case;							
                                    
                when writeback => 
                
                                    if (wb<8)  then
                                    regblock(wb) <= acc ;
                                    end if;
                                    --pc:=pc+1;
                                    if (not(currentF= fetch)) and (not(currentT = fetch)) and (not(jmp_pred(pc))) then
                                        currentS:= fetch;
                                    else 
                                        currentS:= idle;
                                    end if;
                             
        end case;


        
        case currentT is
        when dsp => currentT := stop;
        when stop => currentT:= stop;
                when idle => 
                                 if (not(currentF= fetch)) and (not(currentS = fetch)) and (not(jmp_pred(pc))) then
                                    currentT:= fetch;
                                 end if;
                                 
                                 
                when fetch => 
                                    
                                    --if (not(currentS= execute)) and (not(currentF = execute)) then
                                        if JMP='1' then
                                            PC := to_integer(unsigned(IR(7 downto 0))); 
                                        else
                                            pc:=pc+1;
                                        end if;
                                        IR<=program(pc);
                                        if IR(23 downto 16)="00000000" then 
                                            CurrentT:= idle;
                                        else
                                            execT:=exe1;
                                            currentT:= execute;
                                            
                                        --end if;
                                        
                                        
                                        
                                    end if;
                                    
                when execute =>
                
                                    case execT is
                                    when exe1 =>
                                                    execT:=exe2;
                                   when exe2 =>
                                                    execT:=exe3;
                                   when exe3 =>
                                                    execT:=exe4;
                                    when exe4 =>
                                                    execT:=exe5;
                                    when exe5 =>
                                                    execT:=exe6;
                                    when exe6 =>
                                                    execT:=exe7;
                                    when exe7 =>
                                                    execT:=exe8;													
                                   when exe8 =>
                                                    
                                                    currentT:= writeback;	
                                    end case;
                                    
                                    
                when writeback => 
                
                                    if (wb<8)  then
                                    regblock(wb) <= acc ;
                                    end if;
                                    --pc:=pc+1;
                                    if (not(currentS= fetch)) and (not(currentF = fetch)) and (not(jmp_pred(pc))) then
                                        currentT:= fetch;
                                    else 
                                        currentT:= idle;
                                    end if;
                             
        end case;
end if;
end if;
end process;

end Behavioral;


