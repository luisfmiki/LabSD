library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Contador is
    Port ( cnt,clk : in std_logic;
           T: out std_logic;
end Contador;

architecture count_arch of Contador is
component DivisorClock is
	port 
	(
		CLOCK_50MHz : in std_logic;
		reset	      : in std_logic;
		CLOCK_1Hz   : out std_logic
	);

end component;
  signal clk_1 : std_logic;
  signal count : std_logic_vector(2 downto 0);
    begin
      div1 : DivisorClock port map (CLOCK_50MHz => clk, reset => '0', CLOCK_1Hz => clk_1);

      process(cnt,clk_1,count)
        begin
          if ( cnt = '0') then 
            count <= “000”;
            T <= '0';
          elsif(count = "111") then
            T <= '1';
          elsif (rising_edge(clk_1) and cnt = '1') then 
            count <= count + 1;
            T <= '0';
          end if;
      end process;
    end count_arch;