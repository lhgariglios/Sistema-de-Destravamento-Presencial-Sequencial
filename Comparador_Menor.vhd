library ieee;
use ieee.std_logic_1164.all;

entity Comparador_Menor is
	port
	(A: in integer range 0 to 2;
	menor: out std_logic	);
end Comparador_Menor;



architecture behavior of Comparador_Menor is
	
	begin
		menor <= '0' when A < 3 else '1';
	end behavior;
	
	
	