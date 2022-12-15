Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity edge_detector is
port(
clk_i : in std_logic;
vent_X : in std_logic;
RE : out std_logic);
end edge_detector;

architecture rtl of edge_detector is
signal Bd1 : std_logic;
signal Bd2: std_logic;
begin

process (clk_i) is
begin
if rising_edge(clk_i) then
Bd1 <= vent_X;
Bd2 <= Bd1;
end if;
end process;

RE <= Bd1 and (not Bd2);

end rtl;