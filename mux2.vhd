library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
    Port ( SEL : in  STD_LOGIC_VECTOR(1 downto 0);
           A,B,C : in  STD_LOGIC;
           Y   : out STD_LOGIC
			);
end mux2;

architecture mux2_arch of mux2 is
begin
process(SEL)
begin
	case SEL is
		when "00" => 
			y <= A;
		when "10" => 
			y <= B;
		when "01" => 
			y <= C;
		when "11" => 
			y <= A;
	end case;
end process;
end mux2_arch;