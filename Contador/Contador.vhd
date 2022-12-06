library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Contador is
    Port ( cnt,clk,clr : in std_logic;
           C: out std_logic_vector(7 downto 0));
end Contador;

architecture count_arch of Contador is
   signal count : std_logic_vector(7 downto 0);
    begin
      process(cnt,clk,clr)
        begin
          if (clr = ‘1’ and cnt = '0') then count <= “00000000”;
          elsif (clk’event and clk = ‘1’ and cnt = '1') then count <= count + 1;
          end if;
         end process;
         o <= count;
      end count_arch;