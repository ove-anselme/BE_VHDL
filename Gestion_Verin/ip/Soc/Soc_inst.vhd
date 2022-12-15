	component Soc is
		port (
			avalon_verin_0_conduit_end_clk_adc     : out std_logic;        -- clk_adc
			avalon_verin_0_conduit_end_cs_n        : out std_logic;        -- cs_n
			avalon_verin_0_conduit_end_angle_barre : in  std_logic := 'X'; -- angle_barre
			avalon_verin_0_conduit_end_pwm         : out std_logic;        -- pwm
			avalon_verin_0_conduit_end_sens        : out std_logic;        -- sens
			clk_clk                                : in  std_logic := 'X'; -- clk
			reset_reset_n                          : in  std_logic := 'X'  -- reset_n
		);
	end component Soc;

	u0 : component Soc
		port map (
			avalon_verin_0_conduit_end_clk_adc     => CONNECTED_TO_avalon_verin_0_conduit_end_clk_adc,     -- avalon_verin_0_conduit_end.clk_adc
			avalon_verin_0_conduit_end_cs_n        => CONNECTED_TO_avalon_verin_0_conduit_end_cs_n,        --                           .cs_n
			avalon_verin_0_conduit_end_angle_barre => CONNECTED_TO_avalon_verin_0_conduit_end_angle_barre, --                           .angle_barre
			avalon_verin_0_conduit_end_pwm         => CONNECTED_TO_avalon_verin_0_conduit_end_pwm,         --                           .pwm
			avalon_verin_0_conduit_end_sens        => CONNECTED_TO_avalon_verin_0_conduit_end_sens,        --                           .sens
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                        clk.clk
			reset_reset_n                          => CONNECTED_TO_reset_reset_n                           --                      reset.reset_n
		);

