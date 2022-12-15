library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;
entity counter_8bits is
  generic (
    count_N : integer := 8
  );
  port (
    count_clk : in std_logic;
    count_a_reset : in std_logic;
    --count_s_reset : in std_logic;
    count_enable : in std_logic;
    count : out std_logic_vector(count_N - 1 downto 0));
end counter_8bits;

architecture Behavioral of counter_8bits is
  signal count_reg : std_logic_vector(count'range) := (others => '0');
begin
  process (count_clk, count_a_reset)
  begin
    if (count_a_reset = '1') then
      count_reg <= (others => '0');
    elsif rising_edge(count_clk) then

      if (count_enable = '1' and count_a_reset = '0') then
        count_reg <= count_reg + 1;
        --end if;
      end if;
    end if;
  end process;
  count <= count_reg;
end Behavioral;