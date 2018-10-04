library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity relogio_descomp is
  port (
    -- Entradas (placa)
    CLOCK_50 : in STD_LOGIC;
    KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
	 SW: in STD_LOGIC_VECTOR(17 DOWNTO 0);

    -- Saidas (placa)
    HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;


architecture comportamento of relogio_descomp is

	signal auxMuxRegs, auxMuxVars, auxUla_func : std_logic_vector(2 downto 0) := "000";

	signal clock_segundo, clock_segundo2, clock_segundo3, clock_segundo_oficial: std_logic;
	
	signal auxUS_enable, auxDS_enable, auxUM_enable, auxDM_enable, auxUH_enable, auxDH_enable: std_logic;

	signal auxZ : std_logic;

	signal auxUS_saida, auxDS_saida, auxUM_saida, auxDM_saida, auxUH_saida, auxDH_saida: std_logic_vector(3 downto 0);
	
	signal auxPalavra : std_logic_vector(14 downto 0);
	
begin

  FD : entity work.fluxodedados (fluxo_arch) 
    Port map (
		mux1 => auxMuxRegs, mux2 => auxMuxVars,
		Z => auxZ, ula_func => auxUla_func, clk => clock_segundo_oficial,
		US_enable => auxUS_enable, US_reset => '0',
		DS_enable => auxDS_enable, DS_reset => '0',
		UM_enable => auxUM_enable, UM_reset => '0',
		DM_enable => auxDM_enable, DM_reset => '0',
		UH_enable => auxUH_enable, UH_reset => '0',
		DH_enable => auxDH_enable, DH_reset => '0',
		US_saida => auxUS_saida, DS_saida => auxDS_saida, 
		UM_saida => auxUM_saida, DM_saida => auxDM_saida, 
		UH_saida => auxUH_saida, DH_saida => auxDH_saida
    );

	prescaler: entity work.ClockPrescaler
		Port map(
			clock => CLOCK_50, final_clock => clock_segundo
			);
			
	prescaler2: entity work.ClockPrescaler2
		Port map(
			clock => CLOCK_50, final_clock => clock_segundo2
			);
			
	prescaler3: entity work.ClockPrescaler3
		Port map(
			clock => CLOCK_50, final_clock => clock_segundo3
			);
			
	mux_3entradas: entity work.mux2 port map (A => clock_segundo,B => clock_segundo2, C=> clock_segundo3, SEL => (SW(0) & SW(1)), Y => clock_segundo_oficial);
				
  -- Resultado da operacao executada:
  display0 : entity work.conversorHex7seg
    Port map (saida7seg => HEX2, dadoHex => auxUS_saida);
	 
	display1 : entity work.conversorHex7seg
    Port map (saida7seg => HEX3, dadoHex => auxDS_saida);
	 
	display2 : entity work.conversorHex7seg
    Port map (saida7seg => HEX4, dadoHex => auxUM_saida);
	 
	display3 : entity work.conversorHex7seg
    Port map (saida7seg => HEX5, dadoHex => auxDM_saida);
	 
	display4 : entity work.conversorHex7seg
    Port map (saida7seg => HEX6, dadoHex => auxUH_saida);

	display5 : entity work.conversorHex7seg
    Port map (saida7seg => HEX7, dadoHex => auxDH_saida);
	 
	mef : entity work.SM1
    port map( reset => '0', clock => clock_segundo_oficial,
				  Z => auxZ, palavra => auxPalavra);			  
	
	auxUS_enable <= auxPalavra(6);
	auxDS_enable <= auxPalavra(7);
	auxUM_enable <= auxPalavra(8);
	auxDM_enable <= auxPalavra(9);
	auxUH_enable <= auxPalavra(10);
	auxDH_enable <= auxPalavra(11);
	
	auxMuxVars <= auxPalavra(5 downto 3);
	auxMuxRegs <= auxPalavra(2 downto 0);
	
	auxUla_func <= auxPalavra(14 downto 12);

end architecture;