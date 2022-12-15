library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Gestion_MCP3201 is
  port (
    clk : in std_logic;
    Raz_n : in std_logic;
    Data_in : in std_logic;
    Angle_barre : out std_logic_vector(11 downto 0);
    Clk_adc : out std_logic;
    Cs_n : out std_logic
  );
end Gestion_MCP3201;

architecture Behavioral of Gestion_MCP3201 is
  signal s_clk_adc, s_clk_adc_RE, s_clk_adc_FE : std_logic;
  signal count : integer range 0 to 24;
  signal count_100ms : integer range 0 to 4999999;
  signal start_conv : std_logic;
  type State_Type is (Idle, Reading);
  signal  State : State_Type;
  signal count_fronts : integer range 0 to 14;
  signal enable_count : std_logic;
  signal conv_state : std_logic;
  signal Raz_Compteur : std_logic;
  signal s_data : std_logic_vector(11 downto 0);
begin

  pilote_adc : process (clk, Raz_n)
  begin
    if (Raz_n = '1') then
      State <= Idle;
      enable_count <= '0';
     -- Raz_Compteur <= '1';

    elsif rising_edge(clk) then
      --State <= State;
      case State is
        when Idle =>
          if (start_conv = '1') then
            State <= Reading;
            enable_count <= '1';
            Raz_Compteur <= '1';
          else
            State <= Idle;
            enable_count <= '0';
          end if;
        when Reading =>
        enable_count <= '1';
        State <= Reading;
        if Raz_Compteur = '1' then
          Raz_Compteur <= '0';
        end if;
          if (conv_state = '1') then
            State <= Idle;
            enable_count <= '0';
            Raz_Compteur <= '0';
          end if;
      end case;
    end if;
  end process;
  --------------------------------------------------------------------------------

  --------------------------------------------------------------------------------
  gene_1Mhz : process (clk, Raz_n)
  begin
    if (Raz_n = '1') then
      s_clk_adc <= '0';
    elsif (rising_edge(clk)) then
      if (enable_count = '1') then
        if (count = 24) then
          if (s_clk_adc = '0') then
            s_clk_adc_RE <= '1';
          end if;
          if (s_clk_adc = '1') then
            s_clk_adc_FE <= '1';
          end if;
          s_clk_adc <= not s_clk_adc;
          count <= 0;
        else
          s_clk_adc_RE <= '0';
          s_clk_adc_FE <= '0';
          count <= count + 1;
        end if;
      else
        s_clk_adc_RE <= '0';
        s_clk_adc_FE <= '0';
        s_clk_adc <= '0';
      end if;
    end if;

  end process;
  Clk_adc <= s_clk_adc;

  --------------------------------------------------------------------------------

  --------------------------------------------------------------------------------

  gene_start_conv : process (clk, Raz_n)

  begin
    if (Raz_n = '1') then
      start_conv <= '1';
    elsif (rising_edge(clk)) then
      if (count_100ms = 4999999) then
        start_conv <= '1';
        count_100ms <= 0;
      else
        start_conv <= '0';
        count_100ms <= count_100ms + 1;
      end if;
    end if;
  end process;
  --------------------------------------------------------------------------------

  --------------------------------------------------------------------------------

  compt_fronts : process (s_clk_adc_FE, Raz_Compteur)

  begin
    if (Raz_Compteur = '1') then
      conv_state <= '0';
    elsif s_clk_adc_FE = '1' then

      if (count_fronts = 14) then
        count_fronts <= 0;
        conv_state <= '1';
        Angle_barre <= s_data;
      else
        count_fronts <= count_fronts + 1;
        conv_state <= '0';
        s_data <= std_logic_vector(shift_left(unsigned(s_data), 1));
        s_data(0) <= Data_in;

      end if;
    end if;

  end process;
  Cs_n <= conv_state;

end Behavioral;