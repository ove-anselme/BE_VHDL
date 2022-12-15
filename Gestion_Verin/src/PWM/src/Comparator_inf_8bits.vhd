library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity Comparator_inf_8bits is
    generic
    (
        inf_N : integer := 8
    );
    Port
    (
        inf_A, inf_B : in std_logic_vector(inf_N-1 downto 0);
        inf_C : out std_logic
    );
end Comparator_inf_8bits;

architecture Behavioral of Comparator_inf_8bits is
begin
    process(inf_A, inf_B)
    begin
        if (inf_A < inf_B) then
            inf_C <= '1';
        else
            inf_C <= '0';
        end if;
    end process;
end Behavioral;

