LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_Decodificador IS
END tb_Decodificador;
 
ARCHITECTURE behavior OF tb_Decodificador IS
 
 COMPONENT Decodificador is
 PORT(
 a : IN std_logic_vector(1 downto 0);
 b : OUT std_logic_vector(3 downto 0)
 );
 END COMPONENT;
 

 signal a : std_logic_vector(1 downto 0) := (others => '0');
 

 signal b : std_logic_vector(3 downto 0);

 
BEGIN

 uut: Decodificador PORT MAP (
 a => a,
 b => b
 );

 stim_proc: process
 begin

 wait for 10 ns;
 
 a <= "00";
 
 wait for 10 ns;
 
 a <= "01";
 
 wait for 10 ns;
 
 a <= "10";
 
 wait for 10 ns;
 
 a <= "11";
 
 wait;
 end process;
 
END;
