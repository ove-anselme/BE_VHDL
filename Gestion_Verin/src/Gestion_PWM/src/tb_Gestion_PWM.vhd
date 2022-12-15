library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_Gestion_PWM is
end tb_Gestion_PWM;

architecture testbench of tb_Gestion_PWM is

component  Gestion_PWM is
    port (
      clk : in std_logic;
      Raz_n : in std_logic;
      pwm : out std_logic;
      freq : in unsigned(15 downto 0);
      duty : in unsigned(15 downto 0);
      Enable_pw : in std_logic
    );
end component Gestion_PWM;

signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal pwm : std_logic;
signal pwm_period : unsigned(15 downto 0) := (others => '0');
signal pwm_duty : unsigned(15 downto 0) := (others => '0');
signal Enable_pw : std_logic := '1';

begin
    uut : Gestion_PWM port map(

        clk => clk,
        Raz_n => reset,
        pwm => pwm,
        freq => pwm_period,
        duty => pwm_duty,
        Enable_pw => Enable_pw
    );
    
    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process clk_process;

    reset_process : process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait;
    end process reset_process;

    pwm_period_process : process
    begin
        pwm_period <= "0000000000110010";
        wait;
    end process pwm_period_process;

    pwm_duty_process : process
    begin
        pwm_duty <= "0000000000011001";
        wait;
    end process pwm_duty_process;

end testbench;
