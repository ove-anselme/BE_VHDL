library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;

end component;

entity F1 is
  port (
    a, b : in std_logic_vector(3 downto 0);
    c : out std_logic_vector(3 downto 0));
end F1;

architecture rtl of F1 is
  component detecteur_fm is
    port (
      clk_i : in std_logic;
      arst_i : in std_logic;
      --data : in std_logic;
      data_o : out std_logic;
    );

  begin

  end architecture;