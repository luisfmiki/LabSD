library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Contador is
    Port ( cnt,clk : in std_logic;
           T: out std_logic
			 );
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
  signal count : std_logic_vector(1 downto 0) := "00"	;

    begin
      div1 : DivisorClock port map (CLOCK_50MHz => clk, reset => '0', CLOCK_1Hz => clk_1);

      process(cnt,clk_1)
        begin 
            
          if (rising_edge(clk_1) and cnt = '1') then 
            count <= count + '1';
			 elsif (cnt = '0' and rising_edge(clk_1)) then
				count <= "00";
--			 else
--				count <= count;
          end if;
      end process;
		
		process(count)
			begin
				if (count = "11") then
					T <= '1';
				else 
					T <= '0';
				end if;
		end process;

    end count_arch; 