library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff is
	port ( 
		d, clk, en: in STD_LOGIC;
		q: out STD_LOGIC
	);
end dff;

architecture Behavioral of dff is

signal data: STD_LOGIC;

begin
	process(clk, en)
	begin
		if en = '1' then
			if clk'event and clk='1' then
				data <= d;
			else
				data <= data;
			end if;
		end if;
	end process;
	
	q <= data;
end Behavioral;