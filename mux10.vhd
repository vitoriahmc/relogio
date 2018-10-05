library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux10 is
    Port ( SEL : in  STD_LOGIC_VECTOR(9 downto 0);
           A,B,C,D, E, F, G, H, I, J : in  STD_LOGIC_VECTOR(3 downto 0);
           Y   : out STD_LOGIC_VECTOR(3 downto 0)
			);
end mux10;

architecture mux10_arch of mux10 is
begin
process(SEL)
begin
	case SEL is
		when "1000000000" => 
			y <= A;
		when "0100000000" => 
			y <= B;
		when "0010000000" => 
			y <= C;
		when "0001000000" => 
			y <= D;
		when "0000100000" => 
			y <= E;
		when "0000010000" => 
			y <= F;
		when "0000001000" => 
			y <= G;
		when "0000000100" => 
			y <= H;
		when "0000000010" => 
			y <= I;
		when "0000000001" => 
			y <= J;
		when OTHERS =>
			y <= A;
	end case;
end process;
end mux10_arch;