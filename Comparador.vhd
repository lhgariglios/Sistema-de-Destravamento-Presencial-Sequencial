library ieee;
use ieee.std_logic_1164.all;

entity Comparador is
	port
	(A,B: in std_logic_vector(9 downto 0);
	igual: out std_logic	);
end Comparador;



architecture behavior of Comparador is
	
	begin
	igual <= '1' when A=B else '0';
	
end behavior;