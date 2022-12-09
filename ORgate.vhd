library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity orGate is

    port(A : in std_logic;      -- OR gate input
         B : in std_logic;  		-- OR gate input
			C : in std_logic;
         Y : out std_logic);    -- OR gate output

end orGate;

-- Dataflow Modelling Style
-- Architecture definition

architecture orLogic of orGate is

 begin
    
    Y <= A OR B OR C;

end orLogic;