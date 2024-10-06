library ieee;
use ieee.std_logic_1164.all;

entity MuxProjeto is
	port
	(A,B,C,D,E,F,G,H: in std_logic_vector(9 downto 0);
	n1, n2, n3: in std_logic;
	s: out std_logic_vector (9 downto 0));
end MuxProjeto;



architecture behavior of MuxProjeto is
	
	begin
		process (n1,n2,n3,A,B,C,D,E,F,G,H)
		begin
			if (n3 = '0' and n2 = '0' and n1 = '0') then s <= A;
			elsif (n3 = '0' and n2 = '0' and n1 = '1') then s <= B;
			elsif (n3 = '0' and n2 = '1' and n1 = '0') then s <= C;
			elsif (n3 = '0' and n2 = '1' and n1 = '1') then s <= D;
			elsif (n3 = '1' and n2 = '0' and n1 = '0') then s <= E;
			elsif (n3 = '1' and n2 = '0' and n1 = '1') then s <= F;
			elsif (n3 = '1' and n2 = '1' and n1 = '0') then s <= G;
			elsif (n3 = '1' and n2 = '1' and n1 = '1') then s <= H;
			end if;
		end process;				
	end behavior;