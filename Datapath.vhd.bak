LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Datapath is
	port( clock: in std_logic;
		   a0_f, a0_d, a1_f, a1_d, a2_f, a2_d, r0_in, r1_in, r2_in, r_sel, porta, load_m, f_cnt: in std_logic;
	      led_in: in std_logic_vector (3 downto 0);
			motor: in std_logic_vector (1 downto 0);
			r0_out, r1_out, r2_out, f_T, porta_out: out std_logic;
			led_out: out std_logic_vector (6 downto 0);
			m_out: out std_logic_vector (3 downto 0)
	    );
end Datapath;

architecture RTL of Datapath is
component FlipFlopD is
	port( clk: in std_logic;
		  D: in std_logic;
	      Q: out std_logic;
			reset: in std_logic
	    );
end component;

component multiplexador is
	port( A,R,S: in std_logic;
	F: out std_logic);
end component;

component Reg_Motor is
port ( 	Min : in std_logic_vector(1 downto 0);
			Mout: out std_logic_vector(1 downto 0);
			Load_M, CLK : in std_logic
);

end component;

component Contador is

		port ( clk: in std_logic; -- clock input
           cnt: in std_logic; -- reset input 
           T: out std_logic
			  );
end component;

component Bcd_7seg is
port (
entrada: in std_logic_vector (3 downto 0);
saida: out std_logic_vector (6 downto 0)
);
end component;

component Decodificador is
 port(
 a : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end component;

signal dec_in : STD_LOGIC_VECTOR(1 downto 0);
signal fio_R0, fio_R1, fio_R2 : std_logic;
begin
	decod : Decodificador port map (a => dec_in, b => m_out);
	mux0 : multiplexador port map (R => (a0_f or a0_d), A => r0_in, S => r_sel, F => fio_R0);
	mux1 : multiplexador port map (R => (a1_f or a1_d), A => r1_in, S => r_sel, F => fio_R1);
	mux2 : multiplexador port map (R => (a2_f or a2_d), A => r2_in, S => r_sel, F => fio_R2);
	BCD : Bcd_7seg port map (entrada=>led_in, saida=>led_out);
	reg_M: Reg_Motor port map (Min => motor, Mout => dec_in, CLK => clock, Load_M => load_m);
	r0 : FlipFlopD port map (D => fio_R0, Q => r0_out, clk => clock, reset => '1');
	r1 : FlipFlopD port map (D => fio_R1, Q => r1_out, clk => clock, reset => '1');
	r2 : FlipFlopD port map (D => fio_R2, Q => r2_out, clk => clock, reset => '1');
	tempor : Contador port map (cnt => f_cnt, clk => clock, T => f_T);
	reg_porta : FlipFlopD port map(D => porta, Q => porta_out, clk => clock, reset => '1');
end RTL;