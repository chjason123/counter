library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;
entity Up_Counter is
	Port ( 
		clk:	in std_logic;
		reset:	in std_logic;
		count:	out unsigned(3 downto 0)
	);
end Up_Counter;


architecture Behavioral of Up_Counter is
begin
	main : process(clk)
		variable count_int: integer range 0 to 9:=0;
	begin
		if reset = '1' then
			count_int := 0;
		elsif rising_edge(clk) then
			if count_int = 9 then
				count_int := 0 ;
			else
				count_int := count_int + 1;  
			end if;
		end if;
		count <= to_unsigned(count_int, 4); 
	end process main;
	
end Behavioral;
