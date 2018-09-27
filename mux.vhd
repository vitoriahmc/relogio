library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( SEL : in  STD_LOGIC_VECTOR (2 downto 0);
           A,B,C,D,E,F   : in  STD_LOGIC_VECTOR (3 downto 0);
           Y             : out STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture mux_arch of mux is
begin
process(SEL)
begin
	case SEL is
		when "000" => 
			y <= A;
		when "001" => 
			y <= B;
		when "010" => 
			y <= C;
		when "011" => 
			y <= D;
		when "100" => 
			y <= E;
		when "101" => 
			y <= F;
		when others => 
			y <= "0000";
	end case;
end process;
end mux_arch;