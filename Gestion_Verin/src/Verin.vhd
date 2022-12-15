library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Verin is
  port (
    clk : in std_logic;
    Data_i : in std_logic;
    Cs_o : out std_logic;
    Clk_adc_o : out std_logic;
    Pwm_o : out std_logic;
    Sens_o : out std_logic;
    arst_i : in std_logic;
    address_i : in std_logic_vector(3 downto 0);
    write_data_i : in std_logic_vector(31 downto 0);
    write_i : in std_logic;
    read_i : in std_logic;
    read_data_o : out std_logic_vector(31 downto 0)
  );
end entity Verin;

architecture Behavioral of Verin is

  component Gestion_PWM is
    port (
      clk : in std_logic;
      Raz_n : in std_logic;
      pwm : out std_logic;
      freq : in std_logic_vector(15 downto 0);
      duty : in std_logic_vector(15 downto 0);
      Enable_pw : in std_logic
    );
  end component Gestion_PWM;

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

  component Gestion_MCP3201 is
    port (
      clk : in std_logic;
      Raz_n : in std_logic;
      Data_in : in std_logic;
      Angle_barre : out std_logic_vector(11 downto 0);
      Clk_adc : out std_logic;
      Cs_n : out std_logic
    );
  end component Gestion_MCP3201;

  signal sFreq : std_logic_vector(31 downto 0);
  signal sDuty : std_logic_vector(31 downto 0);
  signal sButee_g : std_logic_vector(31 downto 0);
  signal sButee_d  : std_logic_vector(31 downto 0);
  signal  sAngle_barre : std_logic_vector(31 downto 0);
  signal sConfig : std_logic_vector(4 downto 0);
  --signal sAngle_barre : std_logic_vector(31 downto 0);
  signal pwm : std_logic;

begin

  process (clk, arst_i)
  begin
    if arst_i = '0' then -- j'ai ajouter le reset
  
    elsif rising_edge(clk) then
      if write_i = '1' then
        case to_integer(unsigned(address_i)) is
          when 16#00# =>
            sFreq <= write_data_i;
          when 16#01# =>
            sDuty <= write_data_i;
          when 16#02# =>
            sButee_g <= write_data_i;
          when 16#03# =>
            sButee_d <= write_data_i;
          when 16#04# =>
            sConfig(2 downto 0) <= write_data_i(2 downto 0);
          when 16#05# =>
          when others =>
        end case;
      end if;
    end if;
  end process;

  read_data_o <= sFreq when unsigned(address_i) = 16#00# else
    sDuty when to_integer(unsigned(address_i)) = 16#01# else
    sButee_g when to_integer(unsigned(address_i)) = 16#02# else
    sButee_d when to_integer(unsigned(address_i)) = 16#03# else
    sConfig when to_integer(unsigned(address_i)) = 16#04# else
    sAngle_barre when to_integer(unsigned(address_i)) = 16#05# else X"00000000";

  uControlButee : component Gestion_butee
		port map (
      clk => clk, 
      angle_barre => sAngle_barre(11 downto 0),
      sens => sConfig(2),
      pwm => pwm, 
      butee_d => sButee_d(15 downto 0),
      butee_g => sButee_g(15 downto 0), 
      pwm_o => Pwm_o, 
      sens_o => Sens_o, 
      fin_course_d => sConfig(3),
      fin_course_g => sConfig(4)
  );

    uGestion_pwm : component Gestion_PWM
      port map(
        clk => clk,
        Raz_n => not(sConfig(0)),
        duty => sDuty(15 downto 0),
        freq => sFreq(15 downto 0),
        pwm => pwm,
        Enable_pw => sConfig(1)
      );
      uADC : component Gestion_MCP3201
        port map(
          clk => clk,
          Raz_n => not(sConfig(0)),
          Data_in => Data_i,
          Cs_n => Cs_o,
          Clk_adc => Clk_adc_o,
          Angle_barre => sAngle_barre(11 downto 0)
        );
      end architecture;