library ieee;
use ieee.std_logic_1164.all;

entity Registrador is
	port
	(A: in std_logic_vector(9 downto 0);
	load, clk: in std_logic;
	s: out std_logic_vector(9 downto 0));
end Registrador;


architecture behavior of Registrador is	
	begin
		process (clk, load)
			begin
				if (clk'event and clk = '1' and load = '1') then 
					s <= A;
				end if;
			end process;
	end behavior;