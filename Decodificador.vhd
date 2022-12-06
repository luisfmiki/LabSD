library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Decodificador is
 port(
 a : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end Decodificador;
 
architecture bhv of Decodificador is
begin
 
b(0) <= not a(0) and not a(1);
b(1) <= not a(1) and a(0);
b(2) <= a(1) and not a(0);
b(3) <= a(0) and a(1);
 
end bhv;
