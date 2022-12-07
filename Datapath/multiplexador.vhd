LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity multiplexador is
port( A,R,S: in std_logic;
F: out std_logic);
end multiplexador;

architecture Dataflow of multiplexador is
begin
F <= ((not S) and A) or (S and R);
end Dataflow;