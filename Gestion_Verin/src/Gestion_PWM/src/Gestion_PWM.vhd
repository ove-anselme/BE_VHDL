library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity Gestion_PWM is
  port (
    clk : in std_logic;
    Raz_n : in std_logic;
    pwm : out std_logic;
    freq : in std_logic_vector(15 downto 0);
    duty : in std_logic_vector(15 downto 0);
    Enable_pw : in std_logic
  );
end Gestion_PWM;

architecture Behavioral of Gestion_PWM is
  signal pwm_count : unsigned(15 downto 0) := (others => '0');
  signal pwm_state : std_logic := '0';

begin

  divide : process (clk, Raz_n)
  begin
    if rising_edge(clk) then
      if Raz_n = '1' then
        pwm_count <= (others => '0');
      elsif Enable_pw = '1' then
        if pwm_count >= unsigned(freq)-1 then
          pwm_count <= (others => '0');
        else
          pwm_count <= pwm_count + 1;
        end if;
      end if;
    end if;
    end process divide;

    compare : process (clk, Raz_n)
    begin
      if rising_edge(clk) then

        if Raz_n = '1' then
          pwm_state <= '0';
        elsif Enable_pw = '1' then
          if pwm_count >= unsigned(duty) then
            pwm_state <= '0';
          else
            pwm_state <= '1';

          end if;
        end if;
      end if;

    end process;
    pwm <= pwm_state;

  end Behavioral;