LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Mux is
port( A,R,S: in std_logic;
F: out std_logic);
end Mux;

architecture Dataflow of Mux is
begin
F <= ((not S) and A) or (S and R);
end Dataflow;