library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity compteur is
    port (
        clk   : in std_logic;
        arst_i : in std_logic;
        q_o     : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of compteur is
    signal count : std_logic_vector(7 downto 0) := (others => '0');
begin
    process(clk, arst_i)
    begin
        if arst_i = '1' then
            count <= (others => '0');
        elsif rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;
    q_o <= count;
end architecture;
