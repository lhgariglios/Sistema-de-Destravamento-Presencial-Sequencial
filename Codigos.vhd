library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Codigos is
	port
	(n1, n2, n3: in std_logic;
	s: out std_logic_vector (9 downto 0));
end Codigos;


architecture behavior of Codigos is
	type cod_pess is array(3 downto 0) of std_logic_vector(9 downto 0);
	signal cod : cod_pess := ("0000000000", "1000010010", "1001110011", "1011000111"); 
	signal endereco: std_logic_vector(1 downto 0);
	
	begin
		process (n1,n2,n3,cod, endereco)
		begin
			
			if (n3 = '0' and n2 = '0' and n1 = '1') then endereco <= "01";
			elsif (n3 = '0' and n2 = '1' and n1 = '0') then endereco <= "10";
			elsif (n3 = '1' and n2 = '0' and n1 = '0') then endereco <= "11";
			else endereco <= "00";
			end if;
			
			s <= cod(to_integer(unsigned(endereco)));
		end process;				
	end behavior;