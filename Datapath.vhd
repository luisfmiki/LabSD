LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Datapath is
	port( clock, res: in std_logic;
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

component orGate is

    port(A : in std_logic;      -- OR gate input
         B : in std_logic;      -- OR gate input
			C : in std_logic;
         Y : out std_logic);    -- OR gate output

end component;

signal dec_in : STD_LOGIC_VECTOR(1 downto 0);
signal fio_R0, fio_R1, fio_R2 : std_logic;
signal fioor0 : std_logic;
signal fioor1 : std_logic;
signal fioor2 : std_logic;
signal retro0, retro1, retro2: std_logic;

begin
	decod : Decodificador port map (a => dec_in, b => m_out);
	mux0 : multiplexador port map (R => fioor0, A => r0_in, S => r_sel, F => fio_R0);
	mux1 : multiplexador port map (R => fioor1, A => r1_in, S => r_sel, F => fio_R1);
	mux2 : multiplexador port map (R => fioor2, A => r2_in, S => r_sel, F => fio_R2);
	BCD : Bcd_7seg port map (entrada=>led_in, saida=>led_out);
	reg_M: Reg_Motor port map (Min => motor, Mout => dec_in, CLK => clock, Load_M => load_m);
	r0 : FlipFlopD port map (D => fio_R0, Q => retro0, clk => clock, reset => res);
	r1 : FlipFlopD port map (D => fio_R1, Q => retro1, clk => clock, reset => res);
	r2 : FlipFlopD port map (D => fio_R2, Q => retro2, clk => clock, reset => res);
	or0: orGate port map (A => a0_f, B => a0_d, C => retro0, Y => fioor0);
	or1: orGate port map (A => a1_f, B => a1_d, C => retro1, Y => fioor1);
	or2: orGate port map (A => a2_f, B => a2_d, C => retro2, Y => fioor2);
	tempor : Contador port map (cnt => f_cnt, clk => clock, T => f_T);
	reg_porta : FlipFlopD port map(D => porta, Q => porta_out, clk => clock, reset => '0');
	r0_out <= retro0;
	r1_out <= retro1;
	r2_out <= retro2;
end RTL;