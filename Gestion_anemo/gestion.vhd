library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity gestion is
   
    port (
        vent_X : in std_logic;
        clk_i : in std_logic;
        arst_i : in std_logic;
        d_out : out std_logic_vector(7 downto 0)
    );
end entity gestion;

architecture rtl of gestion is

signal signal_clk_1hz :  std_logic;
signal clk :  std_logic;
signal signal_RE : std_logic;
signal signal_q_o : std_logic_vector(7 downto 0);
signal start_stop : std_logic;
signal continu :  std_logic;
signal srst :  std_logic;
signal clk_50M :  std_logic;

-------------------------------------------------------
component counter
    port (
        arst_n_i : in std_logic;
        clk_i : in std_logic;
        srst_i : in std_logic;
        en_i : in std_logic;
        q_o : out std_logic_vector(7 downto 0)
    );
end component ;
-------------------------------------------------------
component  gen_imp
    port ( clk_50M: in std_logic;
           srst : in std_logic;
           clk_1hz : out std_logic
			  );

end component ;
--------------------------------------------------------

component edge_detector
    port (
           clk_i : in std_logic;
           vent_X : in std_logic;
           RE : out std_logic
			  );
end component;
--------------------------------------------------------
component regsitre
    port(   clk_i,arst,en  :   in std_logic;
        d_in        :   in std_logic_vector(7 downto 0);
        d_out       :   out std_logic_vector(7 downto 0)
		  );
end component;
----------------------------------------------------------
component mef
    port(   clk_i,arst_i,continu  :   in std_logic;
        start_stop        :   in std_logic;
        srst       :   out std_logic
		  );
end component;
begin



    
   
    edge : edge_detector port map (clk_i => clk_i, vent_X => vent_X, RE => signal_RE);

    gen : gen_imp port map ( clk_50M => clk_i, srst => arst_i, clk_1hz => signal_clk_1hz );

    count : counter port map (clk_i => clk_i, arst_n_i => arst_i, en_i => signal_RE , srst_i => signal_clk_1hz, q_o => signal_q_o);

    regis : regsitre port map (en => signal_clk_1hz , clk_i => clk_i, arst => arst_i, d_in => signal_q_o, d_out => d_out);

	 machine : mef port map (clk_i => clk_i, arst_i => arst_i, continu => continu, start_stop => start_stop, srst => clk_50M);

	 
end rtl;


