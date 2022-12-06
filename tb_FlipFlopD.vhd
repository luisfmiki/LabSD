LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_FlipFlopD is
end tb_FlipFlopD;

architecture teste of tb_FlipFlopD is
component FlipFlopD is
	port( clock: in std_logic;
		   D: in std_logic;
	      Q: out std_logic;
			reset: in std_logic
	    );
end component;

signal fio_Q: std_logic;
signal fio_D: std_logic := '0';
signal fio_clk: std_logic := '0';
signal fio_rst: std_logic := '0';

begin
instancia_flipflop: FLipFlopD port map(D=>fio_D, Q=>fio_Q, clock=>fio_clk, reset=>fio_rst) ;
	fio_clk <= not fio_clk after 5ns;
	fio_rst <= '1' after 1ns;
	fio_D <= '1' after 3ns, '0' after 7ns;
end teste;