library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;
entity Gestion_butee is

  port (
    clk : in std_logic;
    angle_barre : in std_logic_vector(11 downto 0);
    sens : in std_logic;
    pwm : in std_logic;
    butee_d : in std_logic_vector(15 downto 0);
    butee_g : in std_logic_vector(15 downto 0);
    pwm_o : out std_logic;
    sens_o : out std_logic;
    fin_course_d, fin_course_g : out std_logic

  );
end Gestion_butee;

architecture Behavioral of Gestion_butee is
  signal s_fin_course_d : std_logic;
  signal s_fin_course_g : std_logic;

begin

  process (clk)
  begin
    if rising_edge(clk) then
      if sens = '1' then
        if angle_barre >= butee_d then
          pwm_o <= '0';
          s_fin_course_d <= '1';
        else
          pwm_o <= pwm;
          s_fin_course_d <= '0';
        end if;

      elsif sens = '0' then
        if angle_barre <= butee_g then

          pwm_o <= '0';
          s_fin_course_g <= '1';
        else
          pwm_o <= pwm;
          s_fin_course_g <= '0';
        end if;
      end if;
    end if;

  end process;
  fin_course_d <= s_fin_course_d;
  fin_course_g <= s_fin_course_g;
  sens_o <= sens;

end Behavioral;