
-- VHDL Instantiation Created from source file ALU.vhd -- 21:33:17 12/19/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		clk : IN std_logic;
		en_adder : IN std_logic;
		en_sub : IN std_logic;
		en_jmp : IN std_logic;
		a_in : IN std_logic_vector(7 downto 0);
		b_in : IN std_logic_vector(7 downto 0);          
		res_out : OUT std_logic_vector(7 downto 0);
		jmp : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		clk => ,
		en_adder => ,
		en_sub => ,
		en_jmp => ,
		a_in => ,
		b_in => ,
		res_out => ,
		jmp => 
	);


