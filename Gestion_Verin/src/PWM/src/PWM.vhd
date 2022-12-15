library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;


library work;

entity PWM is
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
end PWM;

architecture Behavioral of PWM is

  component counter_8bits is
    generic (
      count_N : integer := 8
    );
    port (
        count_clk : in std_logic;
        count_a_reset : in std_logic;
        --count_s_reset : in std_logic;
        count_enable : in std_logic;
      count : out std_logic_vector(N - 1 downto 0));
  end component;

  component Comparator_inf_8bits is
    generic (
      inf_N : integer := 8
    );
    port (
        inf_A, inf_B : in std_logic_vector(N - 1 downto 0);
        inf_C : out std_logic
    );
  end component;

  component Comparator_sup_8bits is
    generic (
      sup_N : integer := 8
    );
    port (
        sup_A, sup_B : in std_logic_vector(N - 1 downto 0);
        sup_C : out std_logic
    );
  end component;

  signal Freq_count : std_logic_vector(N - 1 downto 0);
  signal Internal_reset : std_logic;

begin
    
      -- Internal reset
      --Internal_reset <= '1' when (a_reset = '1') else '0';
    
      -- Counter
    counter : counter_8bits
     generic map (
        count_N => N
     )
     port map (
        count_clk => clk,
        count_a_reset => Internal_reset,
        --count_s_reset => '0',
        count_enable => '1',
        count => Freq_count
     );
    
      -- Comparator
    Comparator_inf : Comparator_inf_8bits
     generic map (
        inf_N => N
     )
     port map (
        inf_A => Freq_count,
        inf_B => pwm_duty,
        inf_C => pwm
     );
    
    Comparator_sup : Comparator_sup_8bits
     generic map (
        sup_N => N
     )
     port map (
        sup_A => Freq_count,
        sup_B => pwm_period,
        sup_C => Internal_reset
     );
    
    end Behavioral;