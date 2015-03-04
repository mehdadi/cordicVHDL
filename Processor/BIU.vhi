
-- VHDL Instantiation Created from source file BIU.vhd -- 16:00:09 12/21/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BIU
	PORT(
		clk : IN std_logic;
		data_send : IN std_logic_vector(7 downto 0);
		data_sendto : IN std_logic_vector(1 downto 0);
		data_send_req : IN std_logic;
		mem_ready : IN std_logic;
		dsp_ready : IN std_logic;    
		busy : INOUT std_logic;
		data_bus : INOUT std_logic_vector(7 downto 0);      
		data_rec : OUT std_logic_vector(7 downto 0);
		data_from : OUT std_logic_vector(1 downto 0);
		data_ready : OUT std_logic;
		en_mem : OUT std_logic;
		en_dsp : OUT std_logic;
		en_disp : OUT std_logic
		);
	END COMPONENT;

	Inst_BIU: BIU PORT MAP(
		clk => ,
		data_send => ,
		data_sendto => ,
		data_send_req => ,
		data_rec => ,
		data_from => ,
		data_ready => ,
		busy => ,
		en_mem => ,
		en_dsp => ,
		en_disp => ,
		mem_ready => ,
		dsp_ready => ,
		data_bus => 
	);


