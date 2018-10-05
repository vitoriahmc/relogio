library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux7 is
    Port ( SEL : in  STD_LOGIC_VECTOR(3 downto 0);
           A,B,C,D, E, F, G : in  STD_LOGIC_VECTOR(3 downto 0);
           Y   : out STD_LOGIC_VECTOR(3 downto 0)
			);
end mux7;

architecture mux7_arch of mux7 is
begin
process(SEL)
begin
	case SEL is
		when "1111" => 
			y <= A;
		when "0000" => 
			y <= B;
		when "0001" => 
			y <= C;
		when "0010" => 
			y <= D;
		when "0011" => 
			y <= E;
		when "0100" => 
			y <= F;
		when "0101" => 
			y <= G;
		when OTHERS =>
			y <= A;
	end case;
end process;
end mux7_arch;