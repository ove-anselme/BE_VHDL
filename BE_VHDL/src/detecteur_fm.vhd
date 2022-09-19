library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity detecteur_fm is
  port (
    clk_i : in std_logic;
    arst_i : in std_logic;
    --data : in std_logic;
    data_o : out std_logic
  );
end detecteur_fm;

architecture rtl of detecteur_fm is
  signal data_reg : std_logic;

begin
  process (clk_i, arst_i)
  begin
    if arst_i = '1' then
      data_reg <= '0';
    elsif rising_edge(clk_i) then
      data_reg <= '1';
    end if;

  end if;
end process;
data_o <= data_reg;

end architecture rtl;