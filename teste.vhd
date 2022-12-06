Library IEEE;
USE IEEE.Std_logic_1164.all;

entity teste is
end teste;

architecture tese of teste is

component controladora is 
port (
        CLOCK,rst: in    std_logic; -- clock input
        s_porta, s_andar, r0_in, r1_in, r2_in, b_abre, b_fecha, temp: in    std_logic; -- control input 
		  porta, temp_cnt, load_m, r0_out, r1_out, r2_out, r_sel: out std_logic; -- data inputs
		  motor: out std_logic_vector (1 downto 0);
		  led: out std_logic_vector (3 downto 0)
	 );
end component;

signal fioSP, fioSA, fioR0in, fioR1in, fioR2in, fioBF, fioTP, fioPORTA, fioCNT, fioLD, fioR0out, fioR1out, fioR2out, fioSEL, fioclk: std_logic := '0';
signal Mot: std_logic_vector(1 downto 0);
signal Le: std_logic_vector(3 downto 0);
signal fioRST : std_logic := '1';
signal  fioBA : std_logic := '1';

begin
inst_cont: controladora port map(s_porta=>fioSP, s_andar=>fioSA, r0_in=>fioR0in, r1_in=>fioR1in, r2_in=>fioR2in, b_abre=>fioBA, b_fecha=>fioBF, temp=>fioTP, porta=>fioPORTA, temp_cnt=>fioCNT, load_m=>fioLD,
r0_out => fioR0out, r1_out => fioR2out, r2_out => fioR2out, r_sel=>fioSEL, motor=>Mot, led=>Le, CLOCK=>fioclk, rst=>fioRST);
fioclk <= not fioclk after 5 ns;
fioRST <= '0' after 7 ns;
fioBA <= '1' after 10 ns, '0' after 20 ns;
fioTP <= '1' after 20ns, '0' after 30 ns;
fioR1in <= '1' after 30 ns;
fioSA <= '1' after 40 ns, '0' after 50 ns;

end;