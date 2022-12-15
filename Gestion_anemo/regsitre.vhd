library ieee;
use ieee.std_logic_1164.all;
 
entity regsitre is
port(   clk_i,arst,en  :   in std_logic;
    d_in        :   in std_logic_vector(7 downto 0);
    d_out       :   out std_logic_vector(7 downto 0));
end regsitre;
 
architecture arch_registre of regsitre is

begin
    process(clk_i,arst)
        begin
               
                if arst='1' then d_out <= (others => '0');
                elsif rising_edge(clk_i) then
                    if en='1' then d_out <= d_in;
                    end if;
                end if;
            end process;
 
end arch_registre;