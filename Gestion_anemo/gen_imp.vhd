library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity gen_imp is
port ( clk_50M: in std_logic;
       srst : in std_logic;
       clk_1hz : out std_logic);
end gen_imp;
 
architecture rtl of gen_imp is
  signal cmp : unsigned(25 downto 0);
begin
 
process(clk_50M)

begin

if(clk_50M'event and clk_50M='1') then
	if srst ='1' then
	cmp <= (others => '0');
	clk_1hz <= '0';
	else
		 cmp <= cmp + 1;
	end if;
	if cmp >= 50_000 then
	cmp <= (others => '0');
	clk_1hz <= '1';
	else
	clk_1hz <= '0';
end if;
end if;
end process;  
end rtl;