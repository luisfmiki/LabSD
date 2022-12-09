library ieee;
use ieee.std_logic_1164.all;

entity controladora is
    port (
        CLOCK, rst: in    std_logic; -- clock input
        s_porta, s_andar, r0_in, r1_in, r2_in, b_abre, b_fecha, temp: in std_logic; -- control input 
		  porta, temp_cnt, load_m, r0_out, r1_out, r2_out, r_sel: out std_logic; -- data inputs
		  motor: out std_logic_vector (1 downto 0);
		  led: out std_logic_vector (3 downto 0)
	 );
end controladora;

architecture arch of controladora is
	 type estado is (F_T, A_T, E1, F_1, A_1, E2, F_2, A_2);
	 --attribute ENUM_ENCODING: STRING;
	 --attribute ENUM_ENCODING of estado: type is "000 001 010 011 100 101 110 111";
	 signal estado_atual, proximo_estado: estado; 
begin 
	process(CLOCK, rst) is 
	begin 
		if(rising_edge(CLOCK)) then 
			if(rst = '1') then
				estado_atual <= F_T;
			else
				estado_atual <= proximo_estado;
			end if;
		end if;
	end process;
	
	process(estado_atual,r0_in,r1_in,r2_in,b_abre,b_fecha,temp,s_porta,s_andar) is
	begin
		case estado_atual is 
			when F_T => 
				porta <= '1';
				motor <= "00";
				led <= x"0";
				temp_cnt <= '0';
				load_m <= '0';
				r_sel <= '1';
				if((r1_in or r2_in or r0_in or b_abre) = '0') then
					proximo_estado <= F_T;
				elsif(((r1_in or r2_in) and not(r0_in)) = '1') then
					motor <= "01";
					proximo_estado <= E1;
				elsif((b_abre or (r0_in and (r1_in or r2_in)) or (r0_in and not(r1_in) and not(r2_in)))='1') then
					proximo_estado <= A_T;
				end if;
					
			when A_T =>
				porta <= '0';
				motor <= "00";
				led <= x"0";
				temp_cnt <= '1';
				load_m <= '0';
				r_sel <= '0';
				r0_out <= '0';
				if((temp = '0' or s_porta = '1') and b_fecha='0') then
					proximo_estado <= A_T;
				elsif((temp = '1' or b_fecha = '1') and s_porta='0') then
					proximo_estado <= F_T;
				end if;	
				
			when E1 =>
				porta <= '1';
				temp_cnt <= '0';
				load_m <= '1';
				r_sel <= '1';
				if((not(s_andar))='1') then
					proximo_estado <= E1;
				elsif((s_andar and ((r1_in or r2_in) and not(r0_in)))='1') then
					motor <= "01";
					led <= x"1"; 
					proximo_estado <= F_1;
				elsif((s_andar and ((r0_in or r2_in) and not(r1_in)))='1') then 
					motor <= "10";
					led <= x"0";
					proximo_estado <= F_T;
				else 
					proximo_estado <= F_T;
				end if;
				
			when F_1 =>
				porta <= '1';
				motor <= "00";
				led <= x"1";
				temp_cnt <= '0';
				load_m <= '0';
				r_sel <= '1';
				if((not(r0_in or r1_in or r2_in or b_abre))='1') then
					proximo_estado <= F_1;
				elsif((not(r0_in) and not(r1_in) and r2_in)='1') then
					motor <= "01";
					proximo_estado <= E2;
				elsif((b_abre or (r1_in and ((r0_in or r2_in) or (not(r0_in) and not(r2_in)))))='1') then
					proximo_estado <= A_1;
				elsif((r0_in and ((not(r1_in) and not(r2_in)) or (r2_in and not(r1_in))))='1') then
					motor <= "10";
					proximo_estado <= E1;
				end if;
					
			when A_1 =>
				porta <= '0';
				motor <= "00";
				led <= x"1";
				temp_cnt <= '1';
				load_m <= '0';
				r_sel <= '0';
				r1_out <= '0';
				if((not(temp) or s_porta)='1') then
					proximo_estado <= A_1;
				elsif(((temp or b_fecha) and not(s_porta))='1') then
					proximo_estado <= F_1;
				end if;
				
			when E2 => 
				porta <= '1';
				temp_cnt <= '0';
				load_m <= '0';
				r_sel <= '1';
				if((not(s_andar))='1') then
					proximo_estado <= E2;
				elsif((s_andar and ((r0_in or r2_in) and not(r1_in)))='1') then
					motor <= "00";
					led <= x"2";
					proximo_estado <= F_2;
				elsif((s_andar and ((r0_in or r1_in) and not(r2_in)))='1') then
					motor <= "00";
					led <= x"1";
					proximo_estado <= F_1;
				else
					proximo_estado <= F_1;
				end if;
					
			when F_2 =>
				porta <= '1';
				motor <= "00";
				led <= x"2";
				temp_cnt <= '0';
				load_m <= '0';
				r_sel <= '1';
				if((not(r0_in or r1_in or r2_in or b_abre))='1') then
					proximo_estado <= F_2;
				elsif((not(r2_in) and (r1_in or r0_in))='1') then
					motor <= "10";
					proximo_estado <= E2;
				elsif((b_abre or (r2_in and ((r0_in or r1_in) or (not(r0_in) and not(r1_in)))))='1') then
					proximo_estado <= A_2;
				end if;
			
			when A_2 =>
				porta <= '0';
				motor <= "00";
				led <= x"2";
				temp_cnt <= '1';
				load_m <= '0';
				r_sel <= '0';
				r2_out <= '0';
				if((not(temp) or s_porta)='1') then
					proximo_estado <= A_2;
				elsif(((temp or b_fecha) and not(s_porta))='1') then
					proximo_estado <= F_2;
				end if;

			when others =>
				porta <= '1';
				motor <= "00";
				led <= x"0";
				temp_cnt <= '0';
				load_m <= '0';
				r_sel <= '1';
				proximo_estado <= F_T;				
		end case;
	end process;
end arch;