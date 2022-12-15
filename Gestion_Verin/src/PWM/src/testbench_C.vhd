library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity testbench_C is
end testbench_C;
architecture testbench of testbench_C is
  component counter_8bits is
    generic (
      count_N : integer := 8
    );
    port (
      count_clk : in std_logic;
      count_a_reset : in std_logic;
      -- count_s_reset : in std_logic;
      count_enable : in std_logic;
      count : out std_logic_vector(count_N - 1 downto 0));
  end component counter_8bits;

    signal clk : std_logic := '0';
    signal a_reset : std_logic := '0';
    -- signal s_reset : std_logic := '0';
    signal enable : std_logic := '0';
    signal count : std_logic_vector(7 downto 0);

begin
    

    uut : counter_8bits generic map (count_N => 8)
        port map (
        count_clk => clk,
        count_a_reset => a_reset,
        -- count_s_reset => s_reset,
        count_enable => enable,
        count => count);

    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process clk_process;

    a_reset_process : process
    begin
        a_reset <= '0';
        wait for 200 ns;
        a_reset <= '1';
        wait for 200 ns;
    end process a_reset_process;




    enable_process : process
    begin
        enable <= '1';
        wait;

    end process enable_process;


end testbench;
