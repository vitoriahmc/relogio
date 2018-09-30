library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxodedados is
    Port (
			mux1, mux2, ula_func: in std_logic_vector(2 downto 0);	 
			clk:  in std_logic;
			Z : out std_logic;
			US_enable, US_reset, DS_enable, DS_reset, UM_enable, UM_reset, DM_enable, DM_reset, UH_enable, UH_reset, DH_enable, DH_reset : in std_logic;
			US_saida, DS_saida, UM_saida, DM_saida, UH_saida, DH_saida:	out std_logic_vector(3 downto 0)
			);
end entity;

architecture fluxo_arch of fluxodedados is
	signal mux_regs_saida, mux_vars_saida, ula_saida, mux_saida, US, DS, UM, DM, UH, DH: std_logic_vector(3 downto 0);
  
begin

	ULA: entity work.ULA port map (A => mux_regs_saida, B => mux_vars_saida, func => ula_func, Q => ula_saida, Z => Z);

	US_regist: entity work.registrador generic map (Vector_Size => 4) port map (d => ula_saida, q => US, CLK => clk, reset => US_reset, ENABLE => US_enable);
	DS_regist: entity work.registrador generic map (Vector_Size => 4) port map (d => ula_saida, q => DS, CLK => clk, reset => DS_reset, ENABLE => DS_enable);
	UM_regist: entity work.registrador generic map (Vector_Size => 4) port map (d => ula_saida, q => UM, CLK => clk, reset => UM_reset, ENABLE => UM_enable);
	DM_regist: entity work.registrador generic map (Vector_Size => 4) port map (d => ula_saida, q => DM, CLK => clk, reset => DM_reset, ENABLE => DM_enable);
	UH_regist: entity work.registrador generic map (Vector_Size => 4) port map (d => ula_saida, q => UH, CLK => clk, reset => UH_reset, ENABLE => UH_enable);
	DH_regist: entity work.registrador generic map (Vector_Size => 4) port map (d => ula_saida, q => DH, CLK => clk, reset => DH_reset, ENABLE => DH_enable); 
	
	mux_regs: entity work.mux port map (A => US,B => DS, C => UM, D => DM, E => UH, F => DH, SEL => mux1, Y => mux_regs_saida);
	mux_vars: entity work.mux port map (A => "1010",B => "0001", C => "0010", D => "0110", E => "0011", F => "1001", SEL => mux2, Y => mux_vars_saida);
	
	US_saida <= US;
	DS_saida <= DS;
	UM_saida <= UM;
	DM_saida <= DM;
	UH_saida <= UH;
	DH_saida <= DH;
	
	--Z <= NOT (ula_saida(3) OR ula_saida(2) OR ula_saida(1) OR ula_saida(0));

end architecture;