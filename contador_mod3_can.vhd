library IEEE;
use IEEE.std_logic_1164.all;
-----------------------------------------------------
entity contador_mod3 is
	port
	(
		-- Portas de entrada
		x		: in  std_logic;
		clk		: in  std_logic;
		clear	: in  std_logic;
		
		-- Porta de saida
		Z	: out integer range 0 to 3
		
	);
end contador_mod3;
-----------------------------------------------------
architecture contador_mod3_mealy of contador_mod3 is
	-- Declaracoes
	type estado is (S0, S1, S2, S3);
	signal estado_atual, proximo_estado: estado;
begin
    -------------------------------------------------
    sequencial:
	process(clear, clk) is 
		-- Declaracoes 
	begin 
		if(clear = '1') then
			-- Sentencas sequenciais assincronas
			estado_atual <= S0; 
		elsif(rising_edge(clk)) then
			-- Sentencas sequenciais sincronas
			estado_atual <= proximo_estado;
		end if;
	end process; 
    -------------------------------------------------
   combinacional_mealy:
	process(x,estado_atual) is
		-- Declaration(s)
	begin
		-- Sequential Statement(s)
		case estado_atual is
			when S0 =>
				if(x='1') then
					Z<=1;
					proximo_estado<=S1;
				else
					Z<=0;
					proximo_estado<=S0;
				end if;
			when S1 =>
				if(x='1') then
					Z<=2;
					proximo_estado<=S2;
				else
					Z<=1;
					proximo_estado<=S1;					
				end if;
			when S2 =>
				if(x='1') then
					Z<=3;
					proximo_estado<=S3;
				else
					Z<=2;
					proximo_estado<=S2;						
				end if;
			when S3 =>
				if(x='1') then
					Z<=0;
					proximo_estado<=S0;
				else
					Z<=3;
					proximo_estado<=S3;						
				end if;
			end case;
	end process;
end contador_mod3_mealy;