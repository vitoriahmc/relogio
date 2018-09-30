library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ula is
port( 
        A,B : in std_logic_vector(3 downto 0); 
        func : in std_logic_vector(2 downto 0); 
        Q : out std_logic_vector(3 downto 0);
		  Z : out std_logic
        );
end ula;

architecture Behavioral of ula is

signal R1,R2,R3, Rtemp : std_logic_vector(3 downto 0);

function to_std_logic(L: BOOLEAN) return std_logic is
	begin
	if L then
	return('0');
	else
	return('1');
	end if;
end function to_std_logic;

begin

R1 <= A;
R2 <= B;
Q <= R3;
      
		R3 <= std_logic_vector(unsigned(A) + unsigned(B)) when func = "000" else
				std_logic_vector(unsigned(A) - unsigned(B)) when func = "010" else
				"000" & to_std_logic(A = B) when ((func = "100") and (A=B)) else
				"1111";
      
Z <= NOT (R3(3) OR R3(2) OR R3(1) OR R3(0));
end Behavioral;