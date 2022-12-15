library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Top is

  port (
    clk_adc : out std_logic; -- clk_adc
    cs_n : out std_logic; -- cs_n
    angle_barre : in std_logic := '0'; -- angle_barre
    pwm : out std_logic; -- pwm
    sens : out std_logic; -- sens
    clk : in std_logic := '0'; -- clk
    reset : in std_logic := '0' -- reset
  );
end entity Top;

architecture rtl of Top is

  component Soc is
    port (
      avalon_verin_0_conduit_end_clk_adc : out std_logic; -- avalon_verin_0_conduit_end.clk_adc
      avalon_verin_0_conduit_end_cs_n : out std_logic; --                           .cs_n
      avalon_verin_0_conduit_end_angle_barre : in std_logic := '0'; --                           .angle_barre
      avalon_verin_0_conduit_end_pwm : out std_logic; --                           .pwm
      avalon_verin_0_conduit_end_sens : out std_logic; --                           .sens
      clk_clk : in std_logic := '0'; --                        clk.clk
      reset_reset_n : in std_logic := '0' --                      reset.reset_n
    );
  end component Soc;

begin

    uSoc : component Soc
    port map (
      avalon_verin_0_conduit_end_clk_adc => clk_adc,
      avalon_verin_0_conduit_end_cs_n => cs_n,
      avalon_verin_0_conduit_end_angle_barre => angle_barre,
      avalon_verin_0_conduit_end_pwm => pwm,
      avalon_verin_0_conduit_end_sens => sens,
      clk_clk => clk,
      reset_reset_n => reset
    );

end architecture rtl;