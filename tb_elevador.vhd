Library IEEE;
USE IEEE.std_logic_1164.all;

entity tb_elevador is
end tb_elevador;

architecture teste of tb_elevador is

component elevador is
    port(
        clk, A0_f, A0_d, A1_f, A1_d, A2_f, A2_d, S_porta, S_andar, B_abre, B_fecha, B_alarme, RST : in std_logic;
        M_out: out std_logic_vector (3 downto 0);
        LED_out: out std_logic_vector (6 downto 0);
        PORTA_out, B_alarme_out : out std_logic
    );

end component;

signal fioSP, fioSA, fioA0f, fioA0d, fioA1f, fioA1d, fioA2f, fioA2d, fioBF, fioclk: std_logic := '0';
signal Mot: std_logic_vector(3 downto 0);
signal Le: std_logic_vector(6 downto 0);
signal fioRST : std_logic := '1';
signal fioBA : std_logic := '0';
signal fioAlarmeOut, fioPORTA : std_logic;
signal fioAlarme : std_logic := '0';


begin
inst_elevador: elevador port map (S_porta => fioSP, S_andar => fioSA, B_abre => fioBA, B_fecha => fioBF, PORTA_out => fioPORTA, B_alarme_out => fioAlarmeOut, 
B_alarme => fioAlarme, M_out => Mot, LED_out => Le, clk => fioclk, RST => fioRST, A0_f => fioA0f, A0_d => fioA0d, A1_f => fioA1f, A1_d => fioA1d, A2_f => fioA2f, A2_d => fioA2d);


fioclk <= not fioclk after 20ns;
fioRST <= '0' after 7ns;
fioA0f <= '1' after 50ns, '0' after 5000000ns;
--fioBA <= '1' after 100ns;
--fioA1f <= '1' after 200ns, '0' after 400ns;
--fioSA <= '1' after 350ns;
--fioA2f <= '1' after 50ns, '0' after 250ns;
--fioA0d <= '1' after 700ns, '0' after 1000ns;

end;