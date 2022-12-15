library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity Comparator_sup_8bits is
  generic (
    sup_N : integer := 8
  );
  port (
    sup_A, sup_B : in std_logic_vector(sup_N - 1 downto 0);
    sup_C : out std_logic
  );
end Comparator_sup_8bits;

architecture Behavioral of Comparator_sup_8bits is
begin
  process (sup_A, sup_B)
  begin
    if (sup_A > sup_B) then
        sup_C <= '1';
    else
        sup_C <= '0';
    end if;
  end process;
end Behavioral;