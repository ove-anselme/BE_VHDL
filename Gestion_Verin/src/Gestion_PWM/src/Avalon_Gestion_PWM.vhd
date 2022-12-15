library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;

entity Avalon_Gestion_PWM is
    port(
        clk : in std_logic;
        chipselect : in std_logic;
        write_n : in std_logic;
        reset_n : in std_logic;
        writedata : in std_logic_vector(31 downto 0);
        readdata : out std_logic_vector(31 downto 0);
        address : in std_logic_vector(1 downto 0);
        pwm_out : out std_logic
    )
end Avalon_Gestion_PWM;

architecture Avalon_Gestion_PWM  is
    signal freq : unsigned(31 downto 0);
    