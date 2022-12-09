LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity elevador is
    port(
        clk, A0_f, A0_d, A1_f, A1_d, A2_f, A2_d, S_porta, S_andar, B_abre, B_fecha, B_alarme, RST : in std_logic;
        M_out: out std_logic_vector (3 downto 0);
        LED_out: out std_logic_vector (6 downto 0);
        PORTA_out, B_alarme_out : out std_logic
    );

end elevador;

architecture trab of elevador is

component Datapath is
	port( clock, res: in std_logic;
		   a0_f, a0_d, a1_f, a1_d, a2_f, a2_d, r0_in, r1_in, r2_in, r_sel, porta, load_m, f_cnt: in std_logic;
	      led_in: in std_logic_vector (3 downto 0);
			motor: in std_logic_vector (1 downto 0);
			r0_out, r1_out, r2_out, f_T, porta_out: out std_logic;
			led_out: out std_logic_vector (6 downto 0);
			m_out: out std_logic_vector (3 downto 0)
	    );
end component;

component controladora is
    port (
        CLOCK, rst: in    std_logic; -- clock input
        s_porta, s_andar, r0_in, r1_in, r2_in, b_abre, b_fecha, temp: in std_logic; -- control input 
		  porta, temp_cnt, load_m, r0_out, r1_out, r2_out, r_sel: out std_logic; -- data inputs
		  motor: out std_logic_vector (1 downto 0);
		  led: out std_logic_vector (3 downto 0)
	 );
end component;


signal fio_mux, fio_r0, fio_r1, fio_r2, fio_porta, fio_load_m, fio_cnt, fio_T : std_logic;
signal fio_LED : std_logic_vector(3 downto 0);
signal fio_motor : std_logic_vector(1 downto 0);
signal fio_r0Q, fio_r1Q, fio_r2Q : std_logic := '0';


begin
    control : controladora port map (CLOCK => clk, rst => RST, s_porta => S_porta, s_andar => S_andar, r0_in => fio_r0Q, 
                                    r1_in => fio_r1Q, r2_in => fio_r2Q, b_abre => B_abre, b_fecha => b_fecha,
                                    temp => fio_T, porta => fio_porta, temp_cnt => fio_cnt, load_m => fio_load_m,
                                    r0_out => fio_r0, r1_out => fio_r1, r2_out => fio_r2, r_sel => fio_mux,
                                    motor => fio_motor, led => fio_LED);
    path : Datapath port map(clock => clk, res => RST, a0_f => A0_f, a0_d => A0_d, a1_f => A1_f, a1_d => A1_d, a2_f => A2_f, a2_d => A2_d,
                            r0_in => fio_r0, r1_in => fio_r1, r2_in => fio_r2, r_sel => fio_mux, porta => fio_porta,
                            load_m => fio_load_m, f_cnt => fio_cnt, led_in => fio_LED, motor => fio_motor,
                            r0_out => fio_r0Q, r1_out => fio_r1Q, r2_out => fio_r2Q,
                            f_T => fio_T, porta_out => PORTA_out, led_out => LED_out, m_out => M_out);
    
    process(B_alarme) is
    begin
        if (B_alarme = '1') then
            B_alarme_out <= '1';
        else 
            B_alarme_out <= '0';
        end if;
    end process;


end trab;
