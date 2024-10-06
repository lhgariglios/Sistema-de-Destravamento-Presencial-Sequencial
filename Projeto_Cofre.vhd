library ieee;
use ieee.std_logic_1164.all;

entity Projeto_Cofre is
	port
	(Clock, X: in std_logic;
	B1,B2,B3: in std_logic;
	Pessoa1, Pessoa2, Pessoa3: in std_logic_vector(9 downto 0);
	Abrir, luz_1, luz_2, luz_3: out std_logic
	);
end Projeto_Cofre;
architecture behavior of Projeto_Cofre is
	
	component Controladora is
		port(clk: in std_logic;
			botao1,botao2,botao3, Igual: in std_logic;
			Luz1, Luz2, Luz3, Load1, Load2, Load3, Conta, Reset_Tempo, Abre: out std_logic
		);
	end component;
	
	component CaminhoDados is
		port(Clk, Clk_X: in std_logic;
			Load_1, Load_2, Load_3, Cont, Reset: in std_logic;
			Igual: out std_logic
			);
	end component;
	
	signal F_igual, F_load1, F_load2, F_load3, F_conta, F_reset: std_logic;
	
	begin
		control: Controladora port map(
		botao1 => B1,botao2 => B2,botao3 => B3, clk => Clock,
		Luz1 => luz_1,Luz2 => luz_2,Luz3 => luz_3,Abre => Abrir,
		Igual => F_igual,
		Load1 => F_load1,Load2 => F_load2,Load3 => F_load3,
		Conta => F_conta,Reset_Tempo => F_reset);
		
		cam_dados: CaminhoDados port map(
		Clk => Clock,Clk_X => X,
		Load_1 => F_load1,Load_2 => F_load2,Load_3 => F_load3, Cont => F_conta, Reset => F_reset,
		Igual => F_igual);
end behavior;	