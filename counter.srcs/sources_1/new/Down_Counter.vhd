library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;
entity Down_Counter is
	Port ( 
		clk:	in std_logic;
		reset:	in std_logic;
		count:	out STD_LOGIC_VECTOR (3 downto 0) 
	);
end Down_Counter;

architecture Behavioral of Down_Counter is

	signal count_int:STD_LOGIC_VECTOR (3 downto 0) ;

begin
	main : process(clk)
	begin
		if reset = '1' then
			count_int <= "1001";
		elsif rising_edge(clk) then
			if count_int = "0000" then
				count_int <= "1001";
			else
				count_int <= std_logic_vector(unsigned(count_int) - 1);
			end if;
		end if;
	end process main;
	count <= count_int;
end Behavioral;
