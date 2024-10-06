library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
	port
	(clk: in std_logic;
	botao1,botao2,botao3, Igual: in std_logic;
	Luz1, Luz2, Luz3, Load1, Load2, Load3, Conta, Reset_Tempo, Abre: out std_logic
	);
end Controladora;
architecture behavior of Controladora is
	type estados is (Inicio,A,A1,A2,B,B1,B2,C,C1,C2,D,Abrir);
	signal estado_atual, proximo_estado: estados;
	begin
		process (clk)
		begin
			if(rising_edge(clk)) then
				estado_atual <= proximo_estado;
			end if;
		end process;
		process (botao1,botao2,botao3,Igual,estado_atual)
			begin
			case estado_atual is
				when Inicio =>
					if(botao1 = '0' or botao2 = '1' or botao3 = '1')then
						Luz1 <='0';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='1';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(botao1 = '1' and botao2 = '0' and botao3 = '0')then
						Luz1 <='0';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='1';
						Abre <='0';
						proximo_estado <= A;
					end if;
				when A =>
					Luz1 <='0';
					Luz2 <='0';
					Luz3 <='0';
					Load1 <='1';
					Load2 <='0';
					Load3 <='0';
					Conta <='0';
					Reset_Tempo <='0';
					Abre <='0';
					proximo_estado <= A2;
				when A1 =>
					if(Igual = '0')then
						Luz1 <='0';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(Igual = '1')then
						Luz1 <='0';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= A2;
					end if;
				when A2 =>
					if(botao1 = '0' or botao3 = '1')then
						Luz1 <='1';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(botao1 = '1' and botao2 = '0' and botao3 = '0')then
						Luz1 <='1';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= A2;
					elsif(botao1 = '1' and botao2 = '1' and botao3 = '0')then
						Luz1 <='1';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= B;
					end if;
				when B =>
					Luz1 <='1';
					Luz2 <='0';
					Luz3 <='0';
					Load1 <='0';
					Load2 <='1';
					Load3 <='0';
					Conta <='0';
					Reset_Tempo <='0';
					Abre <='0';
					proximo_estado <= B2;
				when B1 =>
					if(Igual = '0')then
						Luz1 <='1';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(Igual = '1')then
						Luz1 <='1';
						Luz2 <='0';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= B2;
					end if;
				when B2 =>
					if(botao1 = '0'or botao2 = '0')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(botao1 = '1' and botao2 = '1' and botao3 = '0')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= B2;
					elsif(botao1 = '1' and botao2 = '1' and botao3 = '1')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= C;
					end if;
				when C =>
					Luz1 <='1';
					Luz2 <='1';
					Luz3 <='0';
					Load1 <='0';
					Load2 <='0';
					Load3 <='1';
					Conta <='0';
					Reset_Tempo <='0';
					Abre <='0';
					proximo_estado <= C1;
				when C1 =>
					if(Igual = '0')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(Igual = '1')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='0';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= C2;
					end if;
				when C2 =>
					if(botao1 = '0' or botao2 = '0' or botao3 = '0')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='1';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(botao1 = '1' and botao2 = '1' and botao3 = '1')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='1';
						Load1 <='0';
						Load2 <='0';
						Load3 <='0';
						Conta <='0';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= D;
					end if;
				when D =>
					if(botao1 = '0' or botao2 = '0' or botao3 = '0')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='1';
						Load1 <='1';
						Load2 <='1';
						Load3 <='1';
						Conta <='1';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Inicio;
					elsif(botao1 = '1' and botao2 = '1' and botao3 = '1' and Igual = '0')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='1';
						Load1 <='1';
						Load2 <='1';
						Load3 <='1';
						Conta <='1';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= D;
					elsif(botao1 = '1' and botao2 = '1' and botao3 = '1' and Igual = '1')then
						Luz1 <='1';
						Luz2 <='1';
						Luz3 <='1';
						Load1 <='1';
						Load2 <='1';
						Load3 <='1';
						Conta <='1';
						Reset_Tempo <='0';
						Abre <='0';
						proximo_estado <= Abrir;
					end if;
				when Abrir =>
					Luz1 <='0';
					Luz2 <='0';
					Luz3 <='0';
					Load1 <='0';
					Load2 <='0';
					Load3 <='0';
					Conta <='0';
					Reset_Tempo <='0';
					Abre <='1';
					proximo_estado <= Inicio;
			end case;
		end process;
	end behavior;	