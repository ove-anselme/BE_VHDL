library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mef is
    port 
    (
        clk_i     	:   in  std_logic;
        arst_i  	:   in  std_logic;
        continu     :   in  std_logic;
        start_stop  			:   in std_logic;
        srst	:	out std_logic
  
    );
end entity mef;

architecture rtl of mef is

type etat is (repos, mesure);
signal etat_present, etat_suivant : etat;
signal signal_clk_1hz : std_logic;
signal signal_start_stop : std_logic;
signal signal_continu :  std_logic;
signal signal_srst :  std_logic;
begin
	process(etat_present, start_stop, continu, signal_clk_1hz)
begin 
    case etat_present is
	    when repos =>
	        if start_stop = '1' or continu = '1' then
			     etat_suivant <= mesure;
			  else
			     etat_suivant <= repos;
			  end if;
		 when mesure =>
		     if signal_clk_1hz = '1' and continu ='0' then
			     etat_suivant <= repos;
			  else 
		        etat_suivant <= mesure;	  
			  end if;
		 when others =>
           	etat_suivant <= repos;	 
	 end case;
end process;

process(clk_i,arst_i)
begin
   if arst_i = '1' then
	   etat_present <= repos;
	elsif rising_edge(clk_i) then 
	   etat_present <= etat_suivant;

	end if;
end process;	
		srst <= '1' when etat_present = repos else '0';
		
end rtl;