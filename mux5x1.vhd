library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux5x1 is
    Port ( SEL : in  STD_LOGIC_VECTOR (2 downto 0);
           A,B,C,D,E   : in  STD_LOGIC_VECTOR (3 downto 0);
           Y             : out STD_LOGIC_VECTOR (3 downto 0));
end mux5x1;

architecture mux5_arch of mux5x1 is
begin
process(SEL)
begin
	case SEL is
		when "000" => 
			Y <= A;
		when "001" => 
			Y <= B;
		when "010" => 
			Y <= C;
		when "011" => 
			Y <= D;
		when "100" => 
			Y <= E;
		when others => 
			Y <= "0000";
	end case;
end process;
end mux5_arch;