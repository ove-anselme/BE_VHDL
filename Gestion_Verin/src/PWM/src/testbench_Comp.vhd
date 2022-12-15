library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity testbench_Comp is
end testbench_Comp;

architecture testbench of testbench_Comp is

  component  Comparator_sup_8bits is
    generic (
      sup_N : integer := 8
    );
    port (
      sup_A, sup_B : in std_logic_vector(sup_N - 1 downto 0);
      sup_C : out std_logic
    );
    end component Comparator_sup_8bits;


  signal s_A, s_B : std_logic_vector(7 downto 0);
  signal s_C : std_logic;

begin

    uut : Comparator_sup_8bits
        generic map (
        sup_N => 8
        )
        port map (
        sup_A => s_A,
        sup_B => s_B,
        sup_C => s_C
        );
        

  process
  begin
    s_A <= "00000000";
    s_B <= "00000000";
    wait for 10 ns;
    s_A <= "00000001";
    s_B <= "00000000";
    wait for 10 ns;
    s_A <= "00000000";
    s_B <= "00000001";
    wait for 10 ns;
    s_A <= "00000001";
    s_B <= "00000001";
    wait for 10 ns;
    s_A <= "00000010";
    s_B <= "00000001";
    wait for 10 ns;
    s_A <= "00000001";
    s_B <= "00000010";
    wait for 10 ns;
    s_A <= "00000010";
    s_B <= "00000010";
    wait for 10 ns;
    s_A <= "00000011";
    s_B <= "00000010";
    wait for 10 ns;
    s_A <= "00000010";
    s_B <= "00000011";
    wait for 10 ns;
    s_A <= "00000011";
    s_B <= "00000011";
    wait for 10 ns;
    s_A <= "00000100";
    s_B <= "00000011";
    wait for 10 ns;
    s_A <= "00000011";
    s_B <= "00000100";
    wait for 10 ns;
    s_A <= "00000100";
    s_B <= "00000100";
    wait for 10 ns;
    s_A <= "00000101";
    s_B <= "00000100";
    wait for 10 ns;
    s_A <= "00000100";
    s_B <= "00000101";
    wait for 10 ns;
    s_A <= "00000101";
    s_B <= "00000101";
    wait for 10 ns;
    s_A <= "00000110";
    s_B <= "00000101";
    wait for 10 ns;
    s_A <= "00000101";
    s_B <= "00000110";
    wait for 10 ns;
    s_A <= "00000110";
    s_B <= "00000110";
    wait for 10 ns;
    s_A <= "00000111";
    s_B <= "00000110";
    wait for 10 ns;

  end process;

end architecture testbench;