LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Reg_Motor is
port ( 	Min : in std_logic_vector(3 downto 0);
			Mout: out std_logic_vector(3 downto 0);
			Load_M, CLK : in std_logic
);

end Reg_Motor;

architecture registrador of Reg_Motor is
begin
process(CLK, Load_M) is
begin
	if (rising_edge(CLK) and Load_M='1') then
		Mout <= Min;
	end if;
	end process;
end registrador;