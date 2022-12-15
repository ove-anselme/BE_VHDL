-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/09/2022 09:39:28"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PWM IS
    PORT (
	clk : IN std_logic;
	pwm : BUFFER std_logic;
	pwm_duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_period : IN std_logic_vector(7 DOWNTO 0)
	);
END PWM;

-- Design Ports Information
-- pwm	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_duty[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_period[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL ww_pwm_duty : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_period : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter|count_reg[0]~8_combout\ : std_logic;
SIGNAL \pwm_period[7]~input_o\ : std_logic;
SIGNAL \pwm_period[6]~input_o\ : std_logic;
SIGNAL \pwm_period[5]~input_o\ : std_logic;
SIGNAL \pwm_period[4]~input_o\ : std_logic;
SIGNAL \pwm_period[3]~input_o\ : std_logic;
SIGNAL \pwm_period[2]~input_o\ : std_logic;
SIGNAL \pwm_period[1]~input_o\ : std_logic;
SIGNAL \pwm_period[0]~input_o\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~1_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~3_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~5_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~7_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~9_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~11_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~13_cout\ : std_logic;
SIGNAL \Comparator_sup|LessThan0~14_combout\ : std_logic;
SIGNAL \counter|count_reg[0]~9\ : std_logic;
SIGNAL \counter|count_reg[1]~10_combout\ : std_logic;
SIGNAL \counter|count_reg[1]~11\ : std_logic;
SIGNAL \counter|count_reg[2]~12_combout\ : std_logic;
SIGNAL \counter|count_reg[2]~13\ : std_logic;
SIGNAL \counter|count_reg[3]~14_combout\ : std_logic;
SIGNAL \counter|count_reg[3]~15\ : std_logic;
SIGNAL \counter|count_reg[4]~16_combout\ : std_logic;
SIGNAL \counter|count_reg[4]~17\ : std_logic;
SIGNAL \counter|count_reg[5]~18_combout\ : std_logic;
SIGNAL \counter|count_reg[5]~19\ : std_logic;
SIGNAL \counter|count_reg[6]~20_combout\ : std_logic;
SIGNAL \counter|count_reg[6]~21\ : std_logic;
SIGNAL \counter|count_reg[7]~22_combout\ : std_logic;
SIGNAL \pwm_duty[7]~input_o\ : std_logic;
SIGNAL \pwm_duty[6]~input_o\ : std_logic;
SIGNAL \pwm_duty[5]~input_o\ : std_logic;
SIGNAL \pwm_duty[4]~input_o\ : std_logic;
SIGNAL \pwm_duty[3]~input_o\ : std_logic;
SIGNAL \pwm_duty[2]~input_o\ : std_logic;
SIGNAL \pwm_duty[1]~input_o\ : std_logic;
SIGNAL \pwm_duty[0]~input_o\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~1_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~3_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~5_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~7_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~9_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~11_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~13_cout\ : std_logic;
SIGNAL \Comparator_inf|LessThan0~14_combout\ : std_logic;
SIGNAL \counter|count_reg\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
pwm <= ww_pwm;
ww_pwm_duty <= pwm_duty;
ww_pwm_period <= pwm_period;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N9
\pwm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator_inf|LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y18_N0
\counter|count_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[0]~8_combout\ = \counter|count_reg\(0) $ (VCC)
-- \counter|count_reg[0]~9\ = CARRY(\counter|count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(0),
	datad => VCC,
	combout => \counter|count_reg[0]~8_combout\,
	cout => \counter|count_reg[0]~9\);

-- Location: IOIBUF_X53_Y14_N1
\pwm_period[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(7),
	o => \pwm_period[7]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\pwm_period[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(6),
	o => \pwm_period[6]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\pwm_period[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(5),
	o => \pwm_period[5]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\pwm_period[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(4),
	o => \pwm_period[4]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\pwm_period[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(3),
	o => \pwm_period[3]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\pwm_period[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(2),
	o => \pwm_period[2]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\pwm_period[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(1),
	o => \pwm_period[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\pwm_period[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_period(0),
	o => \pwm_period[0]~input_o\);

-- Location: LCCOMB_X52_Y18_N16
\Comparator_sup|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~1_cout\ = CARRY((!\pwm_period[0]~input_o\ & \counter|count_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_period[0]~input_o\,
	datab => \counter|count_reg\(0),
	datad => VCC,
	cout => \Comparator_sup|LessThan0~1_cout\);

-- Location: LCCOMB_X52_Y18_N18
\Comparator_sup|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~3_cout\ = CARRY((\pwm_period[1]~input_o\ & ((!\Comparator_sup|LessThan0~1_cout\) # (!\counter|count_reg\(1)))) # (!\pwm_period[1]~input_o\ & (!\counter|count_reg\(1) & !\Comparator_sup|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_period[1]~input_o\,
	datab => \counter|count_reg\(1),
	datad => VCC,
	cin => \Comparator_sup|LessThan0~1_cout\,
	cout => \Comparator_sup|LessThan0~3_cout\);

-- Location: LCCOMB_X52_Y18_N20
\Comparator_sup|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~5_cout\ = CARRY((\pwm_period[2]~input_o\ & (\counter|count_reg\(2) & !\Comparator_sup|LessThan0~3_cout\)) # (!\pwm_period[2]~input_o\ & ((\counter|count_reg\(2)) # (!\Comparator_sup|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_period[2]~input_o\,
	datab => \counter|count_reg\(2),
	datad => VCC,
	cin => \Comparator_sup|LessThan0~3_cout\,
	cout => \Comparator_sup|LessThan0~5_cout\);

-- Location: LCCOMB_X52_Y18_N22
\Comparator_sup|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~7_cout\ = CARRY((\counter|count_reg\(3) & (\pwm_period[3]~input_o\ & !\Comparator_sup|LessThan0~5_cout\)) # (!\counter|count_reg\(3) & ((\pwm_period[3]~input_o\) # (!\Comparator_sup|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(3),
	datab => \pwm_period[3]~input_o\,
	datad => VCC,
	cin => \Comparator_sup|LessThan0~5_cout\,
	cout => \Comparator_sup|LessThan0~7_cout\);

-- Location: LCCOMB_X52_Y18_N24
\Comparator_sup|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~9_cout\ = CARRY((\pwm_period[4]~input_o\ & (\counter|count_reg\(4) & !\Comparator_sup|LessThan0~7_cout\)) # (!\pwm_period[4]~input_o\ & ((\counter|count_reg\(4)) # (!\Comparator_sup|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_period[4]~input_o\,
	datab => \counter|count_reg\(4),
	datad => VCC,
	cin => \Comparator_sup|LessThan0~7_cout\,
	cout => \Comparator_sup|LessThan0~9_cout\);

-- Location: LCCOMB_X52_Y18_N26
\Comparator_sup|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~11_cout\ = CARRY((\counter|count_reg\(5) & (\pwm_period[5]~input_o\ & !\Comparator_sup|LessThan0~9_cout\)) # (!\counter|count_reg\(5) & ((\pwm_period[5]~input_o\) # (!\Comparator_sup|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(5),
	datab => \pwm_period[5]~input_o\,
	datad => VCC,
	cin => \Comparator_sup|LessThan0~9_cout\,
	cout => \Comparator_sup|LessThan0~11_cout\);

-- Location: LCCOMB_X52_Y18_N28
\Comparator_sup|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~13_cout\ = CARRY((\counter|count_reg\(6) & ((!\Comparator_sup|LessThan0~11_cout\) # (!\pwm_period[6]~input_o\))) # (!\counter|count_reg\(6) & (!\pwm_period[6]~input_o\ & !\Comparator_sup|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(6),
	datab => \pwm_period[6]~input_o\,
	datad => VCC,
	cin => \Comparator_sup|LessThan0~11_cout\,
	cout => \Comparator_sup|LessThan0~13_cout\);

-- Location: LCCOMB_X52_Y18_N30
\Comparator_sup|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_sup|LessThan0~14_combout\ = (\counter|count_reg\(7) & ((\Comparator_sup|LessThan0~13_cout\) # (!\pwm_period[7]~input_o\))) # (!\counter|count_reg\(7) & (\Comparator_sup|LessThan0~13_cout\ & !\pwm_period[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|count_reg\(7),
	datad => \pwm_period[7]~input_o\,
	cin => \Comparator_sup|LessThan0~13_cout\,
	combout => \Comparator_sup|LessThan0~14_combout\);

-- Location: FF_X52_Y18_N1
\counter|count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[0]~8_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(0));

-- Location: LCCOMB_X52_Y18_N2
\counter|count_reg[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[1]~10_combout\ = (\counter|count_reg\(1) & (!\counter|count_reg[0]~9\)) # (!\counter|count_reg\(1) & ((\counter|count_reg[0]~9\) # (GND)))
-- \counter|count_reg[1]~11\ = CARRY((!\counter|count_reg[0]~9\) # (!\counter|count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|count_reg\(1),
	datad => VCC,
	cin => \counter|count_reg[0]~9\,
	combout => \counter|count_reg[1]~10_combout\,
	cout => \counter|count_reg[1]~11\);

-- Location: FF_X52_Y18_N3
\counter|count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[1]~10_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(1));

-- Location: LCCOMB_X52_Y18_N4
\counter|count_reg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[2]~12_combout\ = (\counter|count_reg\(2) & (\counter|count_reg[1]~11\ $ (GND))) # (!\counter|count_reg\(2) & (!\counter|count_reg[1]~11\ & VCC))
-- \counter|count_reg[2]~13\ = CARRY((\counter|count_reg\(2) & !\counter|count_reg[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|count_reg\(2),
	datad => VCC,
	cin => \counter|count_reg[1]~11\,
	combout => \counter|count_reg[2]~12_combout\,
	cout => \counter|count_reg[2]~13\);

-- Location: FF_X52_Y18_N5
\counter|count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[2]~12_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(2));

-- Location: LCCOMB_X52_Y18_N6
\counter|count_reg[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[3]~14_combout\ = (\counter|count_reg\(3) & (!\counter|count_reg[2]~13\)) # (!\counter|count_reg\(3) & ((\counter|count_reg[2]~13\) # (GND)))
-- \counter|count_reg[3]~15\ = CARRY((!\counter|count_reg[2]~13\) # (!\counter|count_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(3),
	datad => VCC,
	cin => \counter|count_reg[2]~13\,
	combout => \counter|count_reg[3]~14_combout\,
	cout => \counter|count_reg[3]~15\);

-- Location: FF_X52_Y18_N7
\counter|count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[3]~14_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(3));

-- Location: LCCOMB_X52_Y18_N8
\counter|count_reg[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[4]~16_combout\ = (\counter|count_reg\(4) & (\counter|count_reg[3]~15\ $ (GND))) # (!\counter|count_reg\(4) & (!\counter|count_reg[3]~15\ & VCC))
-- \counter|count_reg[4]~17\ = CARRY((\counter|count_reg\(4) & !\counter|count_reg[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|count_reg\(4),
	datad => VCC,
	cin => \counter|count_reg[3]~15\,
	combout => \counter|count_reg[4]~16_combout\,
	cout => \counter|count_reg[4]~17\);

-- Location: FF_X52_Y18_N9
\counter|count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[4]~16_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(4));

-- Location: LCCOMB_X52_Y18_N10
\counter|count_reg[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[5]~18_combout\ = (\counter|count_reg\(5) & (!\counter|count_reg[4]~17\)) # (!\counter|count_reg\(5) & ((\counter|count_reg[4]~17\) # (GND)))
-- \counter|count_reg[5]~19\ = CARRY((!\counter|count_reg[4]~17\) # (!\counter|count_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(5),
	datad => VCC,
	cin => \counter|count_reg[4]~17\,
	combout => \counter|count_reg[5]~18_combout\,
	cout => \counter|count_reg[5]~19\);

-- Location: FF_X52_Y18_N11
\counter|count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[5]~18_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(5));

-- Location: LCCOMB_X52_Y18_N12
\counter|count_reg[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[6]~20_combout\ = (\counter|count_reg\(6) & (\counter|count_reg[5]~19\ $ (GND))) # (!\counter|count_reg\(6) & (!\counter|count_reg[5]~19\ & VCC))
-- \counter|count_reg[6]~21\ = CARRY((\counter|count_reg\(6) & !\counter|count_reg[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(6),
	datad => VCC,
	cin => \counter|count_reg[5]~19\,
	combout => \counter|count_reg[6]~20_combout\,
	cout => \counter|count_reg[6]~21\);

-- Location: FF_X52_Y18_N13
\counter|count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[6]~20_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(6));

-- Location: LCCOMB_X52_Y18_N14
\counter|count_reg[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|count_reg[7]~22_combout\ = \counter|count_reg\(7) $ (\counter|count_reg[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|count_reg\(7),
	cin => \counter|count_reg[6]~21\,
	combout => \counter|count_reg[7]~22_combout\);

-- Location: FF_X52_Y18_N15
\counter|count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|count_reg[7]~22_combout\,
	sclr => \Comparator_sup|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|count_reg\(7));

-- Location: IOIBUF_X53_Y22_N1
\pwm_duty[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(7),
	o => \pwm_duty[7]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\pwm_duty[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(6),
	o => \pwm_duty[6]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\pwm_duty[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(5),
	o => \pwm_duty[5]~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\pwm_duty[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(4),
	o => \pwm_duty[4]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\pwm_duty[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(3),
	o => \pwm_duty[3]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\pwm_duty[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(2),
	o => \pwm_duty[2]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\pwm_duty[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(1),
	o => \pwm_duty[1]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\pwm_duty[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_duty(0),
	o => \pwm_duty[0]~input_o\);

-- Location: LCCOMB_X52_Y22_N6
\Comparator_inf|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~1_cout\ = CARRY((\pwm_duty[0]~input_o\ & !\counter|count_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_duty[0]~input_o\,
	datab => \counter|count_reg\(0),
	datad => VCC,
	cout => \Comparator_inf|LessThan0~1_cout\);

-- Location: LCCOMB_X52_Y22_N8
\Comparator_inf|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~3_cout\ = CARRY((\counter|count_reg\(1) & ((!\Comparator_inf|LessThan0~1_cout\) # (!\pwm_duty[1]~input_o\))) # (!\counter|count_reg\(1) & (!\pwm_duty[1]~input_o\ & !\Comparator_inf|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(1),
	datab => \pwm_duty[1]~input_o\,
	datad => VCC,
	cin => \Comparator_inf|LessThan0~1_cout\,
	cout => \Comparator_inf|LessThan0~3_cout\);

-- Location: LCCOMB_X52_Y22_N10
\Comparator_inf|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~5_cout\ = CARRY((\counter|count_reg\(2) & (\pwm_duty[2]~input_o\ & !\Comparator_inf|LessThan0~3_cout\)) # (!\counter|count_reg\(2) & ((\pwm_duty[2]~input_o\) # (!\Comparator_inf|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(2),
	datab => \pwm_duty[2]~input_o\,
	datad => VCC,
	cin => \Comparator_inf|LessThan0~3_cout\,
	cout => \Comparator_inf|LessThan0~5_cout\);

-- Location: LCCOMB_X52_Y22_N12
\Comparator_inf|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~7_cout\ = CARRY((\counter|count_reg\(3) & ((!\Comparator_inf|LessThan0~5_cout\) # (!\pwm_duty[3]~input_o\))) # (!\counter|count_reg\(3) & (!\pwm_duty[3]~input_o\ & !\Comparator_inf|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(3),
	datab => \pwm_duty[3]~input_o\,
	datad => VCC,
	cin => \Comparator_inf|LessThan0~5_cout\,
	cout => \Comparator_inf|LessThan0~7_cout\);

-- Location: LCCOMB_X52_Y22_N14
\Comparator_inf|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~9_cout\ = CARRY((\counter|count_reg\(4) & (\pwm_duty[4]~input_o\ & !\Comparator_inf|LessThan0~7_cout\)) # (!\counter|count_reg\(4) & ((\pwm_duty[4]~input_o\) # (!\Comparator_inf|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(4),
	datab => \pwm_duty[4]~input_o\,
	datad => VCC,
	cin => \Comparator_inf|LessThan0~7_cout\,
	cout => \Comparator_inf|LessThan0~9_cout\);

-- Location: LCCOMB_X52_Y22_N16
\Comparator_inf|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~11_cout\ = CARRY((\pwm_duty[5]~input_o\ & (\counter|count_reg\(5) & !\Comparator_inf|LessThan0~9_cout\)) # (!\pwm_duty[5]~input_o\ & ((\counter|count_reg\(5)) # (!\Comparator_inf|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_duty[5]~input_o\,
	datab => \counter|count_reg\(5),
	datad => VCC,
	cin => \Comparator_inf|LessThan0~9_cout\,
	cout => \Comparator_inf|LessThan0~11_cout\);

-- Location: LCCOMB_X52_Y22_N18
\Comparator_inf|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~13_cout\ = CARRY((\pwm_duty[6]~input_o\ & ((!\Comparator_inf|LessThan0~11_cout\) # (!\counter|count_reg\(6)))) # (!\pwm_duty[6]~input_o\ & (!\counter|count_reg\(6) & !\Comparator_inf|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_duty[6]~input_o\,
	datab => \counter|count_reg\(6),
	datad => VCC,
	cin => \Comparator_inf|LessThan0~11_cout\,
	cout => \Comparator_inf|LessThan0~13_cout\);

-- Location: LCCOMB_X52_Y22_N20
\Comparator_inf|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_inf|LessThan0~14_combout\ = (\counter|count_reg\(7) & (\Comparator_inf|LessThan0~13_cout\ & \pwm_duty[7]~input_o\)) # (!\counter|count_reg\(7) & ((\Comparator_inf|LessThan0~13_cout\) # (\pwm_duty[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|count_reg\(7),
	datad => \pwm_duty[7]~input_o\,
	cin => \Comparator_inf|LessThan0~13_cout\,
	combout => \Comparator_inf|LessThan0~14_combout\);

ww_pwm <= \pwm~output_o\;
END structure;


