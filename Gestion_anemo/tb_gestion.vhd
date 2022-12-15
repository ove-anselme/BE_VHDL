library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_gestion is
end entity tb_gestion;

architecture tb of tb_gestion is

signal vent_X : std_logic:='0';
signal clk_i : std_logic:='0';
signal arst_i : std_logic:='0';
signal en : std_logic:='1';
signal d_out : std_logic_vector(7 downto 0) := (others => '0');
signal clk_1hz :  std_logic:='0';
signal signal_RE : std_logic:='0';
signal clk_50M : std_logic:='0';
signal srst : std_logic:='0';
signal start_stop : std_logic:='0';
signal continu : std_logic:='0';


begin
  
gestion_anemometre : entity work.gestion
port map (
        vent_X => vent_X,
        clk_i => clk_i,
        arst_i => arst_i,
        d_out => d_out
    );

vent_process : process
begin
wait for 5 us;
vent_X <= not vent_X;
end process;

arst_process : process 
begin
 arst_i <= '1'; wait for 100 ns;
 arst_i <= '0'; wait;
end process;

clk_process : process
begin
wait for 5 ns;
clk_i <= not clk_i;
end process;

continu_process : process 
begin
 continu <= '0'; wait for 100 us;
 continu <= '1'; wait for 100 us;
end process;

st_process : process 
begin
 start_stop <= '1'; wait for 150 us; 
 start_stop <= '0'; wait for 300 us;
end process;

end tb;