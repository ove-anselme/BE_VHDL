library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;

entity tb_Gestion_butee is
end tb_Gestion_butee;

architecture testbench of tb_Gestion_butee is

  component Gestion_butee is
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
  end component Gestion_butee;

  component Gestion_PWM is
    port (
      clk : in std_logic;
      Raz_n : in std_logic;
      pwm : out std_logic;
      freq : in std_logic_vector(15 downto 0);
      duty : in std_logic_vector(15 downto 0);
      Enable_pw : in std_logic
    );

  signal pwm_state : std_logic;
  signal sens : std_logic;
  signal enable : std_logic;
  signal angle : std_logic_vector(11 downto 0);
  signal  butee_droite : std_logic_vector (15 downto 0) := "0000111111111111";
  signal butee_gauche : std_logic_vector (15 downto 0) :=  "0000111111111111";
  signal pwm_out : std_logic;
  signal extremite_gauche_out : std_logic := '0';
  signal extremite_droite_out : std_logic := '0';

begin

  uut : Gestion_butee port map(
    clk => enable,
    angle_barre => angle,
    sens => sens,
    pwm => pwm,
    butee_d => butee_droite,
    butee_g => butee_gauche,
    pwm_o => pwm_out,
    sens_o => sens,
    fin_course_d => extremite_droite_out,
    fin_course_g => extremite_gauche_out
  );

  sens_gen : process
    begin
    sens <= '0';
    wait for 500 ns;
    sens <= '1';
    wait for 500 ns;
  end process sens_gen;

  angle_gen : process
    begin
    angle <= "000000000000";
    wait for 100 ns;
    angle <= "000001000001";
    wait for 100 ns;
    angle <= "111111111111";
    wait for 100 ns;
  end process angle_gen;

  pwm_gen : process
    begin
    pwm_state <= '0';
    wait for 500 ns;
    pwm_state <= '1';
    wait for 500 ns;
  end process pwm_gen;

    enable_gen : process
        begin
        enable <= '0';
        wait for 1000 ns;
        enable <= '1';
        wait for 1000 ns;
    end process enable_gen;

end testbench;