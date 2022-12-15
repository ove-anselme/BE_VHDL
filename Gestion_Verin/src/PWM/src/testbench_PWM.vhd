-- this is the testbench
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;

entity testbench_PWM is
end testbench_PWM;

architecture testbench of testbench_PWM is
  signal clk_i : std_logic;
  --signal a_reset_i : std_logic;
  signal pwm_out_i : std_logic:='0';
  signal pwm_freq : std_logic_vector(7 downto 0) := "00110010";
  signal pwm_cycle : std_logic_vector(7 downto 0) := "00011001";

  component PWM is
    generic (
      N : integer := 8
    );

    port (
      clk : in std_logic;
      --a_reset : in std_logic;
      pwm : out std_logic;
      --pwm_en : in std_logic;
      pwm_duty : in std_logic_vector(N - 1 downto 0);
      pwm_period : in std_logic_vector(N - 1 downto 0)
    );
  end component;

begin

    uut : PWM generic map (
        N => 8
    ) port map (
        clk => clk_i,
        --a_reset => a_reset_i,
        pwm => pwm_out_i,
        --pwm_en => '1',
        pwm_duty => pwm_cycle,
        pwm_period => pwm_freq
    );
    
    clk_gen : process
    begin
        clk_i <= '0';
        wait for 5 ns;
        clk_i <= '1';
        wait for 5 ns;
    end process;

    duty : process
    begin
      pwm_cycle <= "00011001";
      wait for 2000 ns;
      pwm_cycle <= "00000000";
      wait for 2000 ns;
      pwm_cycle <= "00001001";
      wait for 2000 ns;
      pwm_cycle <= "00100011";
      wait for 2000 ns;
    end process;



end testbench;

