LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_Reg_Motor is
end tb_Reg_Motor;
architecture teste of tb_Reg_Motor is
component Reg_Motor is
port ( 	Min : in std_logic_vector(3 downto 0);
			Mout: out std_logic_vector(3 downto 0);
			Load_M, CLK : in std_logic
);

end component;

	signal fio_Min, fio_Mout: std_logic_vector(3 downto 0);
	signal fio_clk, fio_Load_M: std_logic := '0';
begin
instancia_Reg_M: Reg_Motor port map(Min=>fio_Min, Mout=>fio_Mout, CLK=>fio_clk,
Load_M=>fio_Load_M);
fio_clk <= not(fio_clk) after 5ns;
fio_Min <= x"2" after 3ns, x"1" after 13ns, x"0" after 17ns;
fio_Load_M <= '1' after 3ns, '0' after 13ns, '1' after 17ns;
end teste;