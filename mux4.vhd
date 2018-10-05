library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( SEL : in  STD_LOGIC_VECTOR(3 downto 0);
           A,B,C,D : in  STD_LOGIC_VECTOR(3 downto 0);
           Y   : out STD_LOGIC_VECTOR(3 downto 0)
			);
end mux4;

architecture mux4_arch of mux4 is
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
		when OTHERS =>
			y <= A;
	end case;
end process;
end mux4_arch;