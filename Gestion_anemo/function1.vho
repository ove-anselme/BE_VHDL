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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/11/2022 14:42:35"

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

ENTITY 	gestion IS
    PORT (
	vent_X : IN std_logic;
	clk_i : IN std_logic;
	arst_i : IN std_logic;
	d_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END gestion;

-- Design Ports Information
-- d_out[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arst_i	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vent_X	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_vent_X : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_arst_i : std_logic;
SIGNAL ww_d_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \arst_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d_out[0]~output_o\ : std_logic;
SIGNAL \d_out[1]~output_o\ : std_logic;
SIGNAL \d_out[2]~output_o\ : std_logic;
SIGNAL \d_out[3]~output_o\ : std_logic;
SIGNAL \d_out[4]~output_o\ : std_logic;
SIGNAL \d_out[5]~output_o\ : std_logic;
SIGNAL \d_out[6]~output_o\ : std_logic;
SIGNAL \d_out[7]~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \count|q[0]~8_combout\ : std_logic;
SIGNAL \arst_i~input_o\ : std_logic;
SIGNAL \arst_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen|cmp[0]~26_combout\ : std_logic;
SIGNAL \gen|cmp[16]~56_combout\ : std_logic;
SIGNAL \gen|cmp[0]~27\ : std_logic;
SIGNAL \gen|cmp[1]~28_combout\ : std_logic;
SIGNAL \gen|cmp[1]~29\ : std_logic;
SIGNAL \gen|cmp[2]~30_combout\ : std_logic;
SIGNAL \gen|cmp[2]~31\ : std_logic;
SIGNAL \gen|cmp[3]~32_combout\ : std_logic;
SIGNAL \gen|cmp[3]~33\ : std_logic;
SIGNAL \gen|cmp[4]~34_combout\ : std_logic;
SIGNAL \gen|cmp[4]~35\ : std_logic;
SIGNAL \gen|cmp[5]~36_combout\ : std_logic;
SIGNAL \gen|cmp[5]~37\ : std_logic;
SIGNAL \gen|cmp[6]~38_combout\ : std_logic;
SIGNAL \gen|cmp[6]~39\ : std_logic;
SIGNAL \gen|cmp[7]~40_combout\ : std_logic;
SIGNAL \gen|cmp[7]~41\ : std_logic;
SIGNAL \gen|cmp[8]~42_combout\ : std_logic;
SIGNAL \gen|cmp[8]~43\ : std_logic;
SIGNAL \gen|cmp[9]~44_combout\ : std_logic;
SIGNAL \gen|cmp[9]~45\ : std_logic;
SIGNAL \gen|cmp[10]~46_combout\ : std_logic;
SIGNAL \gen|cmp[10]~47\ : std_logic;
SIGNAL \gen|cmp[11]~48_combout\ : std_logic;
SIGNAL \gen|cmp[11]~49\ : std_logic;
SIGNAL \gen|cmp[12]~50_combout\ : std_logic;
SIGNAL \gen|cmp[12]~51\ : std_logic;
SIGNAL \gen|cmp[13]~52_combout\ : std_logic;
SIGNAL \gen|cmp[13]~53\ : std_logic;
SIGNAL \gen|cmp[14]~54_combout\ : std_logic;
SIGNAL \gen|cmp[14]~55\ : std_logic;
SIGNAL \gen|cmp[15]~57_combout\ : std_logic;
SIGNAL \gen|cmp[15]~58\ : std_logic;
SIGNAL \gen|cmp[16]~59_combout\ : std_logic;
SIGNAL \gen|cmp[16]~60\ : std_logic;
SIGNAL \gen|cmp[17]~61_combout\ : std_logic;
SIGNAL \gen|cmp[17]~62\ : std_logic;
SIGNAL \gen|cmp[18]~63_combout\ : std_logic;
SIGNAL \gen|cmp[18]~64\ : std_logic;
SIGNAL \gen|cmp[19]~65_combout\ : std_logic;
SIGNAL \gen|cmp[19]~66\ : std_logic;
SIGNAL \gen|cmp[20]~67_combout\ : std_logic;
SIGNAL \gen|cmp[20]~68\ : std_logic;
SIGNAL \gen|cmp[21]~69_combout\ : std_logic;
SIGNAL \gen|cmp[21]~70\ : std_logic;
SIGNAL \gen|cmp[22]~71_combout\ : std_logic;
SIGNAL \gen|cmp[22]~72\ : std_logic;
SIGNAL \gen|cmp[23]~73_combout\ : std_logic;
SIGNAL \gen|cmp[23]~74\ : std_logic;
SIGNAL \gen|cmp[24]~75_combout\ : std_logic;
SIGNAL \gen|cmp[24]~76\ : std_logic;
SIGNAL \gen|cmp[25]~77_combout\ : std_logic;
SIGNAL \gen|LessThan0~0_combout\ : std_logic;
SIGNAL \gen|LessThan0~1_combout\ : std_logic;
SIGNAL \gen|LessThan0~2_combout\ : std_logic;
SIGNAL \gen|LessThan0~4_combout\ : std_logic;
SIGNAL \gen|LessThan0~3_combout\ : std_logic;
SIGNAL \gen|LessThan0~5_combout\ : std_logic;
SIGNAL \gen|LessThan0~6_combout\ : std_logic;
SIGNAL \gen|clk_1hz~q\ : std_logic;
SIGNAL \vent_X~input_o\ : std_logic;
SIGNAL \edge|Bd1~feeder_combout\ : std_logic;
SIGNAL \edge|Bd1~q\ : std_logic;
SIGNAL \edge|Bd2~q\ : std_logic;
SIGNAL \count|q[1]~10_combout\ : std_logic;
SIGNAL \regis|d_out[0]~feeder_combout\ : std_logic;
SIGNAL \count|q[0]~9\ : std_logic;
SIGNAL \count|q[1]~11_combout\ : std_logic;
SIGNAL \regis|d_out[1]~feeder_combout\ : std_logic;
SIGNAL \count|q[1]~12\ : std_logic;
SIGNAL \count|q[2]~13_combout\ : std_logic;
SIGNAL \regis|d_out[2]~feeder_combout\ : std_logic;
SIGNAL \count|q[2]~14\ : std_logic;
SIGNAL \count|q[3]~15_combout\ : std_logic;
SIGNAL \regis|d_out[3]~feeder_combout\ : std_logic;
SIGNAL \count|q[3]~16\ : std_logic;
SIGNAL \count|q[4]~17_combout\ : std_logic;
SIGNAL \regis|d_out[4]~feeder_combout\ : std_logic;
SIGNAL \count|q[4]~18\ : std_logic;
SIGNAL \count|q[5]~19_combout\ : std_logic;
SIGNAL \regis|d_out[5]~feeder_combout\ : std_logic;
SIGNAL \count|q[5]~20\ : std_logic;
SIGNAL \count|q[6]~21_combout\ : std_logic;
SIGNAL \regis|d_out[6]~feeder_combout\ : std_logic;
SIGNAL \count|q[6]~22\ : std_logic;
SIGNAL \count|q[7]~23_combout\ : std_logic;
SIGNAL \regis|d_out[7]~feeder_combout\ : std_logic;
SIGNAL \count|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen|cmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \regis|d_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_arst_i~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_vent_X <= vent_X;
ww_clk_i <= clk_i;
ww_arst_i <= arst_i;
d_out <= ww_d_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\arst_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \arst_i~input_o\);

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);
\ALT_INV_arst_i~inputclkctrl_outclk\ <= NOT \arst_i~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y14_N2
\d_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(0),
	devoe => ww_devoe,
	o => \d_out[0]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\d_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(1),
	devoe => ww_devoe,
	o => \d_out[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\d_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(2),
	devoe => ww_devoe,
	o => \d_out[2]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\d_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(3),
	devoe => ww_devoe,
	o => \d_out[3]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\d_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(4),
	devoe => ww_devoe,
	o => \d_out[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\d_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(5),
	devoe => ww_devoe,
	o => \d_out[5]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\d_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(6),
	devoe => ww_devoe,
	o => \d_out[6]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\d_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|d_out\(7),
	devoe => ww_devoe,
	o => \d_out[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

-- Location: CLKCTRL_G2
\clk_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y13_N6
\count|q[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[0]~8_combout\ = \count|q\(0) $ (VCC)
-- \count|q[0]~9\ = CARRY(\count|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|q\(0),
	datad => VCC,
	combout => \count|q[0]~8_combout\,
	cout => \count|q[0]~9\);

-- Location: IOIBUF_X0_Y16_N15
\arst_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arst_i,
	o => \arst_i~input_o\);

-- Location: CLKCTRL_G4
\arst_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \arst_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \arst_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X44_Y13_N6
\gen|cmp[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[0]~26_combout\ = \gen|cmp\(0) $ (VCC)
-- \gen|cmp[0]~27\ = CARRY(\gen|cmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(0),
	datad => VCC,
	combout => \gen|cmp[0]~26_combout\,
	cout => \gen|cmp[0]~27\);

-- Location: LCCOMB_X44_Y12_N26
\gen|cmp[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[16]~56_combout\ = (\arst_i~input_o\) # (\gen|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arst_i~input_o\,
	datac => \gen|LessThan0~6_combout\,
	combout => \gen|cmp[16]~56_combout\);

-- Location: FF_X44_Y13_N7
\gen|cmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[0]~26_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(0));

-- Location: LCCOMB_X44_Y13_N8
\gen|cmp[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[1]~28_combout\ = (\gen|cmp\(1) & (!\gen|cmp[0]~27\)) # (!\gen|cmp\(1) & ((\gen|cmp[0]~27\) # (GND)))
-- \gen|cmp[1]~29\ = CARRY((!\gen|cmp[0]~27\) # (!\gen|cmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(1),
	datad => VCC,
	cin => \gen|cmp[0]~27\,
	combout => \gen|cmp[1]~28_combout\,
	cout => \gen|cmp[1]~29\);

-- Location: FF_X44_Y13_N9
\gen|cmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[1]~28_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(1));

-- Location: LCCOMB_X44_Y13_N10
\gen|cmp[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[2]~30_combout\ = (\gen|cmp\(2) & (\gen|cmp[1]~29\ $ (GND))) # (!\gen|cmp\(2) & (!\gen|cmp[1]~29\ & VCC))
-- \gen|cmp[2]~31\ = CARRY((\gen|cmp\(2) & !\gen|cmp[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(2),
	datad => VCC,
	cin => \gen|cmp[1]~29\,
	combout => \gen|cmp[2]~30_combout\,
	cout => \gen|cmp[2]~31\);

-- Location: FF_X44_Y13_N11
\gen|cmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[2]~30_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(2));

-- Location: LCCOMB_X44_Y13_N12
\gen|cmp[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[3]~32_combout\ = (\gen|cmp\(3) & (!\gen|cmp[2]~31\)) # (!\gen|cmp\(3) & ((\gen|cmp[2]~31\) # (GND)))
-- \gen|cmp[3]~33\ = CARRY((!\gen|cmp[2]~31\) # (!\gen|cmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(3),
	datad => VCC,
	cin => \gen|cmp[2]~31\,
	combout => \gen|cmp[3]~32_combout\,
	cout => \gen|cmp[3]~33\);

-- Location: FF_X44_Y13_N13
\gen|cmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[3]~32_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(3));

-- Location: LCCOMB_X44_Y13_N14
\gen|cmp[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[4]~34_combout\ = (\gen|cmp\(4) & (\gen|cmp[3]~33\ $ (GND))) # (!\gen|cmp\(4) & (!\gen|cmp[3]~33\ & VCC))
-- \gen|cmp[4]~35\ = CARRY((\gen|cmp\(4) & !\gen|cmp[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(4),
	datad => VCC,
	cin => \gen|cmp[3]~33\,
	combout => \gen|cmp[4]~34_combout\,
	cout => \gen|cmp[4]~35\);

-- Location: FF_X44_Y13_N15
\gen|cmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[4]~34_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(4));

-- Location: LCCOMB_X44_Y13_N16
\gen|cmp[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[5]~36_combout\ = (\gen|cmp\(5) & (!\gen|cmp[4]~35\)) # (!\gen|cmp\(5) & ((\gen|cmp[4]~35\) # (GND)))
-- \gen|cmp[5]~37\ = CARRY((!\gen|cmp[4]~35\) # (!\gen|cmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(5),
	datad => VCC,
	cin => \gen|cmp[4]~35\,
	combout => \gen|cmp[5]~36_combout\,
	cout => \gen|cmp[5]~37\);

-- Location: FF_X44_Y13_N17
\gen|cmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[5]~36_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(5));

-- Location: LCCOMB_X44_Y13_N18
\gen|cmp[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[6]~38_combout\ = (\gen|cmp\(6) & (\gen|cmp[5]~37\ $ (GND))) # (!\gen|cmp\(6) & (!\gen|cmp[5]~37\ & VCC))
-- \gen|cmp[6]~39\ = CARRY((\gen|cmp\(6) & !\gen|cmp[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(6),
	datad => VCC,
	cin => \gen|cmp[5]~37\,
	combout => \gen|cmp[6]~38_combout\,
	cout => \gen|cmp[6]~39\);

-- Location: FF_X44_Y13_N19
\gen|cmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[6]~38_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(6));

-- Location: LCCOMB_X44_Y13_N20
\gen|cmp[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[7]~40_combout\ = (\gen|cmp\(7) & (!\gen|cmp[6]~39\)) # (!\gen|cmp\(7) & ((\gen|cmp[6]~39\) # (GND)))
-- \gen|cmp[7]~41\ = CARRY((!\gen|cmp[6]~39\) # (!\gen|cmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(7),
	datad => VCC,
	cin => \gen|cmp[6]~39\,
	combout => \gen|cmp[7]~40_combout\,
	cout => \gen|cmp[7]~41\);

-- Location: FF_X44_Y13_N21
\gen|cmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[7]~40_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(7));

-- Location: LCCOMB_X44_Y13_N22
\gen|cmp[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[8]~42_combout\ = (\gen|cmp\(8) & (\gen|cmp[7]~41\ $ (GND))) # (!\gen|cmp\(8) & (!\gen|cmp[7]~41\ & VCC))
-- \gen|cmp[8]~43\ = CARRY((\gen|cmp\(8) & !\gen|cmp[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(8),
	datad => VCC,
	cin => \gen|cmp[7]~41\,
	combout => \gen|cmp[8]~42_combout\,
	cout => \gen|cmp[8]~43\);

-- Location: FF_X44_Y13_N23
\gen|cmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[8]~42_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(8));

-- Location: LCCOMB_X44_Y13_N24
\gen|cmp[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[9]~44_combout\ = (\gen|cmp\(9) & (!\gen|cmp[8]~43\)) # (!\gen|cmp\(9) & ((\gen|cmp[8]~43\) # (GND)))
-- \gen|cmp[9]~45\ = CARRY((!\gen|cmp[8]~43\) # (!\gen|cmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(9),
	datad => VCC,
	cin => \gen|cmp[8]~43\,
	combout => \gen|cmp[9]~44_combout\,
	cout => \gen|cmp[9]~45\);

-- Location: FF_X44_Y13_N25
\gen|cmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[9]~44_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(9));

-- Location: LCCOMB_X44_Y13_N26
\gen|cmp[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[10]~46_combout\ = (\gen|cmp\(10) & (\gen|cmp[9]~45\ $ (GND))) # (!\gen|cmp\(10) & (!\gen|cmp[9]~45\ & VCC))
-- \gen|cmp[10]~47\ = CARRY((\gen|cmp\(10) & !\gen|cmp[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(10),
	datad => VCC,
	cin => \gen|cmp[9]~45\,
	combout => \gen|cmp[10]~46_combout\,
	cout => \gen|cmp[10]~47\);

-- Location: FF_X44_Y13_N27
\gen|cmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[10]~46_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(10));

-- Location: LCCOMB_X44_Y13_N28
\gen|cmp[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[11]~48_combout\ = (\gen|cmp\(11) & (!\gen|cmp[10]~47\)) # (!\gen|cmp\(11) & ((\gen|cmp[10]~47\) # (GND)))
-- \gen|cmp[11]~49\ = CARRY((!\gen|cmp[10]~47\) # (!\gen|cmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(11),
	datad => VCC,
	cin => \gen|cmp[10]~47\,
	combout => \gen|cmp[11]~48_combout\,
	cout => \gen|cmp[11]~49\);

-- Location: FF_X44_Y13_N29
\gen|cmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[11]~48_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(11));

-- Location: LCCOMB_X44_Y13_N30
\gen|cmp[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[12]~50_combout\ = (\gen|cmp\(12) & (\gen|cmp[11]~49\ $ (GND))) # (!\gen|cmp\(12) & (!\gen|cmp[11]~49\ & VCC))
-- \gen|cmp[12]~51\ = CARRY((\gen|cmp\(12) & !\gen|cmp[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(12),
	datad => VCC,
	cin => \gen|cmp[11]~49\,
	combout => \gen|cmp[12]~50_combout\,
	cout => \gen|cmp[12]~51\);

-- Location: FF_X44_Y13_N31
\gen|cmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[12]~50_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(12));

-- Location: LCCOMB_X44_Y12_N0
\gen|cmp[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[13]~52_combout\ = (\gen|cmp\(13) & (!\gen|cmp[12]~51\)) # (!\gen|cmp\(13) & ((\gen|cmp[12]~51\) # (GND)))
-- \gen|cmp[13]~53\ = CARRY((!\gen|cmp[12]~51\) # (!\gen|cmp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(13),
	datad => VCC,
	cin => \gen|cmp[12]~51\,
	combout => \gen|cmp[13]~52_combout\,
	cout => \gen|cmp[13]~53\);

-- Location: FF_X44_Y12_N1
\gen|cmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[13]~52_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(13));

-- Location: LCCOMB_X44_Y12_N2
\gen|cmp[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[14]~54_combout\ = (\gen|cmp\(14) & (\gen|cmp[13]~53\ $ (GND))) # (!\gen|cmp\(14) & (!\gen|cmp[13]~53\ & VCC))
-- \gen|cmp[14]~55\ = CARRY((\gen|cmp\(14) & !\gen|cmp[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(14),
	datad => VCC,
	cin => \gen|cmp[13]~53\,
	combout => \gen|cmp[14]~54_combout\,
	cout => \gen|cmp[14]~55\);

-- Location: FF_X44_Y12_N3
\gen|cmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[14]~54_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(14));

-- Location: LCCOMB_X44_Y12_N4
\gen|cmp[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[15]~57_combout\ = (\gen|cmp\(15) & (!\gen|cmp[14]~55\)) # (!\gen|cmp\(15) & ((\gen|cmp[14]~55\) # (GND)))
-- \gen|cmp[15]~58\ = CARRY((!\gen|cmp[14]~55\) # (!\gen|cmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(15),
	datad => VCC,
	cin => \gen|cmp[14]~55\,
	combout => \gen|cmp[15]~57_combout\,
	cout => \gen|cmp[15]~58\);

-- Location: FF_X44_Y12_N5
\gen|cmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[15]~57_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(15));

-- Location: LCCOMB_X44_Y12_N6
\gen|cmp[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[16]~59_combout\ = (\gen|cmp\(16) & (\gen|cmp[15]~58\ $ (GND))) # (!\gen|cmp\(16) & (!\gen|cmp[15]~58\ & VCC))
-- \gen|cmp[16]~60\ = CARRY((\gen|cmp\(16) & !\gen|cmp[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(16),
	datad => VCC,
	cin => \gen|cmp[15]~58\,
	combout => \gen|cmp[16]~59_combout\,
	cout => \gen|cmp[16]~60\);

-- Location: FF_X44_Y12_N7
\gen|cmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[16]~59_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(16));

-- Location: LCCOMB_X44_Y12_N8
\gen|cmp[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[17]~61_combout\ = (\gen|cmp\(17) & (!\gen|cmp[16]~60\)) # (!\gen|cmp\(17) & ((\gen|cmp[16]~60\) # (GND)))
-- \gen|cmp[17]~62\ = CARRY((!\gen|cmp[16]~60\) # (!\gen|cmp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(17),
	datad => VCC,
	cin => \gen|cmp[16]~60\,
	combout => \gen|cmp[17]~61_combout\,
	cout => \gen|cmp[17]~62\);

-- Location: FF_X44_Y12_N9
\gen|cmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[17]~61_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(17));

-- Location: LCCOMB_X44_Y12_N10
\gen|cmp[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[18]~63_combout\ = (\gen|cmp\(18) & (\gen|cmp[17]~62\ $ (GND))) # (!\gen|cmp\(18) & (!\gen|cmp[17]~62\ & VCC))
-- \gen|cmp[18]~64\ = CARRY((\gen|cmp\(18) & !\gen|cmp[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(18),
	datad => VCC,
	cin => \gen|cmp[17]~62\,
	combout => \gen|cmp[18]~63_combout\,
	cout => \gen|cmp[18]~64\);

-- Location: FF_X44_Y12_N11
\gen|cmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[18]~63_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(18));

-- Location: LCCOMB_X44_Y12_N12
\gen|cmp[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[19]~65_combout\ = (\gen|cmp\(19) & (!\gen|cmp[18]~64\)) # (!\gen|cmp\(19) & ((\gen|cmp[18]~64\) # (GND)))
-- \gen|cmp[19]~66\ = CARRY((!\gen|cmp[18]~64\) # (!\gen|cmp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(19),
	datad => VCC,
	cin => \gen|cmp[18]~64\,
	combout => \gen|cmp[19]~65_combout\,
	cout => \gen|cmp[19]~66\);

-- Location: FF_X44_Y12_N13
\gen|cmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[19]~65_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(19));

-- Location: LCCOMB_X44_Y12_N14
\gen|cmp[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[20]~67_combout\ = (\gen|cmp\(20) & (\gen|cmp[19]~66\ $ (GND))) # (!\gen|cmp\(20) & (!\gen|cmp[19]~66\ & VCC))
-- \gen|cmp[20]~68\ = CARRY((\gen|cmp\(20) & !\gen|cmp[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(20),
	datad => VCC,
	cin => \gen|cmp[19]~66\,
	combout => \gen|cmp[20]~67_combout\,
	cout => \gen|cmp[20]~68\);

-- Location: FF_X44_Y12_N15
\gen|cmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[20]~67_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(20));

-- Location: LCCOMB_X44_Y12_N16
\gen|cmp[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[21]~69_combout\ = (\gen|cmp\(21) & (!\gen|cmp[20]~68\)) # (!\gen|cmp\(21) & ((\gen|cmp[20]~68\) # (GND)))
-- \gen|cmp[21]~70\ = CARRY((!\gen|cmp[20]~68\) # (!\gen|cmp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(21),
	datad => VCC,
	cin => \gen|cmp[20]~68\,
	combout => \gen|cmp[21]~69_combout\,
	cout => \gen|cmp[21]~70\);

-- Location: FF_X44_Y12_N17
\gen|cmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[21]~69_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(21));

-- Location: LCCOMB_X44_Y12_N18
\gen|cmp[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[22]~71_combout\ = (\gen|cmp\(22) & (\gen|cmp[21]~70\ $ (GND))) # (!\gen|cmp\(22) & (!\gen|cmp[21]~70\ & VCC))
-- \gen|cmp[22]~72\ = CARRY((\gen|cmp\(22) & !\gen|cmp[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(22),
	datad => VCC,
	cin => \gen|cmp[21]~70\,
	combout => \gen|cmp[22]~71_combout\,
	cout => \gen|cmp[22]~72\);

-- Location: FF_X44_Y12_N19
\gen|cmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[22]~71_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(22));

-- Location: LCCOMB_X44_Y12_N20
\gen|cmp[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[23]~73_combout\ = (\gen|cmp\(23) & (!\gen|cmp[22]~72\)) # (!\gen|cmp\(23) & ((\gen|cmp[22]~72\) # (GND)))
-- \gen|cmp[23]~74\ = CARRY((!\gen|cmp[22]~72\) # (!\gen|cmp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|cmp\(23),
	datad => VCC,
	cin => \gen|cmp[22]~72\,
	combout => \gen|cmp[23]~73_combout\,
	cout => \gen|cmp[23]~74\);

-- Location: FF_X44_Y12_N21
\gen|cmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[23]~73_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(23));

-- Location: LCCOMB_X44_Y12_N22
\gen|cmp[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[24]~75_combout\ = (\gen|cmp\(24) & (\gen|cmp[23]~74\ $ (GND))) # (!\gen|cmp\(24) & (!\gen|cmp[23]~74\ & VCC))
-- \gen|cmp[24]~76\ = CARRY((\gen|cmp\(24) & !\gen|cmp[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(24),
	datad => VCC,
	cin => \gen|cmp[23]~74\,
	combout => \gen|cmp[24]~75_combout\,
	cout => \gen|cmp[24]~76\);

-- Location: FF_X44_Y12_N23
\gen|cmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[24]~75_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(24));

-- Location: LCCOMB_X44_Y12_N24
\gen|cmp[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|cmp[25]~77_combout\ = \gen|cmp[24]~76\ $ (\gen|cmp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen|cmp\(25),
	cin => \gen|cmp[24]~76\,
	combout => \gen|cmp[25]~77_combout\);

-- Location: FF_X44_Y12_N25
\gen|cmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|cmp[25]~77_combout\,
	sclr => \gen|cmp[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|cmp\(25));

-- Location: LCCOMB_X45_Y12_N0
\gen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~0_combout\ = (!\gen|cmp\(19) & (!\gen|cmp\(16) & (!\gen|cmp\(18) & !\gen|cmp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(19),
	datab => \gen|cmp\(16),
	datac => \gen|cmp\(18),
	datad => \gen|cmp\(17),
	combout => \gen|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y12_N6
\gen|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~1_combout\ = (!\gen|cmp\(20) & (!\gen|cmp\(22) & (!\gen|cmp\(21) & !\gen|cmp\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(20),
	datab => \gen|cmp\(22),
	datac => \gen|cmp\(21),
	datad => \gen|cmp\(23),
	combout => \gen|LessThan0~1_combout\);

-- Location: LCCOMB_X44_Y12_N28
\gen|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~2_combout\ = (!\gen|cmp\(24) & (!\gen|cmp\(25) & (\gen|LessThan0~0_combout\ & \gen|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(24),
	datab => \gen|cmp\(25),
	datac => \gen|LessThan0~0_combout\,
	datad => \gen|LessThan0~1_combout\,
	combout => \gen|LessThan0~2_combout\);

-- Location: LCCOMB_X44_Y13_N2
\gen|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~4_combout\ = (\gen|cmp\(7)) # ((\gen|cmp\(6) & ((\gen|cmp\(5)) # (\gen|cmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(5),
	datab => \gen|cmp\(7),
	datac => \gen|cmp\(4),
	datad => \gen|cmp\(6),
	combout => \gen|LessThan0~4_combout\);

-- Location: LCCOMB_X44_Y13_N0
\gen|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~3_combout\ = (!\gen|cmp\(10) & (!\gen|cmp\(11) & (!\gen|cmp\(12) & !\gen|cmp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(10),
	datab => \gen|cmp\(11),
	datac => \gen|cmp\(12),
	datad => \gen|cmp\(13),
	combout => \gen|LessThan0~3_combout\);

-- Location: LCCOMB_X44_Y13_N4
\gen|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~5_combout\ = (\gen|LessThan0~3_combout\ & (((!\gen|cmp\(8)) # (!\gen|LessThan0~4_combout\)) # (!\gen|cmp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(9),
	datab => \gen|LessThan0~4_combout\,
	datac => \gen|cmp\(8),
	datad => \gen|LessThan0~3_combout\,
	combout => \gen|LessThan0~5_combout\);

-- Location: LCCOMB_X44_Y12_N30
\gen|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen|LessThan0~6_combout\ = ((\gen|cmp\(15) & (\gen|cmp\(14) & !\gen|LessThan0~5_combout\))) # (!\gen|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|cmp\(15),
	datab => \gen|LessThan0~2_combout\,
	datac => \gen|cmp\(14),
	datad => \gen|LessThan0~5_combout\,
	combout => \gen|LessThan0~6_combout\);

-- Location: FF_X44_Y12_N31
\gen|clk_1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \gen|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clk_1hz~q\);

-- Location: IOIBUF_X53_Y17_N8
\vent_X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vent_X,
	o => \vent_X~input_o\);

-- Location: LCCOMB_X51_Y13_N22
\edge|Bd1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \edge|Bd1~feeder_combout\ = \vent_X~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vent_X~input_o\,
	combout => \edge|Bd1~feeder_combout\);

-- Location: FF_X51_Y13_N23
\edge|Bd1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \edge|Bd1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edge|Bd1~q\);

-- Location: FF_X51_Y13_N25
\edge|Bd2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \edge|Bd1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edge|Bd2~q\);

-- Location: LCCOMB_X51_Y13_N24
\count|q[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[1]~10_combout\ = (\gen|clk_1hz~q\) # ((\edge|Bd1~q\ & !\edge|Bd2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge|Bd1~q\,
	datac => \edge|Bd2~q\,
	datad => \gen|clk_1hz~q\,
	combout => \count|q[1]~10_combout\);

-- Location: FF_X52_Y13_N7
\count|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[0]~8_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(0));

-- Location: LCCOMB_X52_Y13_N0
\regis|d_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[0]~feeder_combout\ = \count|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(0),
	combout => \regis|d_out[0]~feeder_combout\);

-- Location: FF_X52_Y13_N1
\regis|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[0]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(0));

-- Location: LCCOMB_X52_Y13_N8
\count|q[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[1]~11_combout\ = (\count|q\(1) & (!\count|q[0]~9\)) # (!\count|q\(1) & ((\count|q[0]~9\) # (GND)))
-- \count|q[1]~12\ = CARRY((!\count|q[0]~9\) # (!\count|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|q\(1),
	datad => VCC,
	cin => \count|q[0]~9\,
	combout => \count|q[1]~11_combout\,
	cout => \count|q[1]~12\);

-- Location: FF_X52_Y13_N9
\count|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[1]~11_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(1));

-- Location: LCCOMB_X52_Y13_N22
\regis|d_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[1]~feeder_combout\ = \count|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|q\(1),
	combout => \regis|d_out[1]~feeder_combout\);

-- Location: FF_X52_Y13_N23
\regis|d_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[1]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(1));

-- Location: LCCOMB_X52_Y13_N10
\count|q[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[2]~13_combout\ = (\count|q\(2) & (\count|q[1]~12\ $ (GND))) # (!\count|q\(2) & (!\count|q[1]~12\ & VCC))
-- \count|q[2]~14\ = CARRY((\count|q\(2) & !\count|q[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|q\(2),
	datad => VCC,
	cin => \count|q[1]~12\,
	combout => \count|q[2]~13_combout\,
	cout => \count|q[2]~14\);

-- Location: FF_X52_Y13_N11
\count|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[2]~13_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(2));

-- Location: LCCOMB_X52_Y13_N24
\regis|d_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[2]~feeder_combout\ = \count|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(2),
	combout => \regis|d_out[2]~feeder_combout\);

-- Location: FF_X52_Y13_N25
\regis|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[2]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(2));

-- Location: LCCOMB_X52_Y13_N12
\count|q[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[3]~15_combout\ = (\count|q\(3) & (!\count|q[2]~14\)) # (!\count|q\(3) & ((\count|q[2]~14\) # (GND)))
-- \count|q[3]~16\ = CARRY((!\count|q[2]~14\) # (!\count|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|q\(3),
	datad => VCC,
	cin => \count|q[2]~14\,
	combout => \count|q[3]~15_combout\,
	cout => \count|q[3]~16\);

-- Location: FF_X52_Y13_N13
\count|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[3]~15_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(3));

-- Location: LCCOMB_X52_Y13_N2
\regis|d_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[3]~feeder_combout\ = \count|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(3),
	combout => \regis|d_out[3]~feeder_combout\);

-- Location: FF_X52_Y13_N3
\regis|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[3]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(3));

-- Location: LCCOMB_X52_Y13_N14
\count|q[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[4]~17_combout\ = (\count|q\(4) & (\count|q[3]~16\ $ (GND))) # (!\count|q\(4) & (!\count|q[3]~16\ & VCC))
-- \count|q[4]~18\ = CARRY((\count|q\(4) & !\count|q[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|q\(4),
	datad => VCC,
	cin => \count|q[3]~16\,
	combout => \count|q[4]~17_combout\,
	cout => \count|q[4]~18\);

-- Location: FF_X52_Y13_N15
\count|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[4]~17_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(4));

-- Location: LCCOMB_X52_Y13_N28
\regis|d_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[4]~feeder_combout\ = \count|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|q\(4),
	combout => \regis|d_out[4]~feeder_combout\);

-- Location: FF_X52_Y13_N29
\regis|d_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[4]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(4));

-- Location: LCCOMB_X52_Y13_N16
\count|q[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[5]~19_combout\ = (\count|q\(5) & (!\count|q[4]~18\)) # (!\count|q\(5) & ((\count|q[4]~18\) # (GND)))
-- \count|q[5]~20\ = CARRY((!\count|q[4]~18\) # (!\count|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|q\(5),
	datad => VCC,
	cin => \count|q[4]~18\,
	combout => \count|q[5]~19_combout\,
	cout => \count|q[5]~20\);

-- Location: FF_X52_Y13_N17
\count|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[5]~19_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(5));

-- Location: LCCOMB_X52_Y13_N26
\regis|d_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[5]~feeder_combout\ = \count|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(5),
	combout => \regis|d_out[5]~feeder_combout\);

-- Location: FF_X52_Y13_N27
\regis|d_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[5]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(5));

-- Location: LCCOMB_X52_Y13_N18
\count|q[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[6]~21_combout\ = (\count|q\(6) & (\count|q[5]~20\ $ (GND))) # (!\count|q\(6) & (!\count|q[5]~20\ & VCC))
-- \count|q[6]~22\ = CARRY((\count|q\(6) & !\count|q[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|q\(6),
	datad => VCC,
	cin => \count|q[5]~20\,
	combout => \count|q[6]~21_combout\,
	cout => \count|q[6]~22\);

-- Location: FF_X52_Y13_N19
\count|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[6]~21_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(6));

-- Location: LCCOMB_X52_Y13_N4
\regis|d_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[6]~feeder_combout\ = \count|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(6),
	combout => \regis|d_out[6]~feeder_combout\);

-- Location: FF_X52_Y13_N5
\regis|d_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[6]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(6));

-- Location: LCCOMB_X52_Y13_N20
\count|q[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|q[7]~23_combout\ = \count|q[6]~22\ $ (\count|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(7),
	cin => \count|q[6]~22\,
	combout => \count|q[7]~23_combout\);

-- Location: FF_X52_Y13_N21
\count|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count|q[7]~23_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	sclr => \gen|clk_1hz~q\,
	ena => \count|q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|q\(7));

-- Location: LCCOMB_X52_Y13_N30
\regis|d_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|d_out[7]~feeder_combout\ = \count|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count|q\(7),
	combout => \regis|d_out[7]~feeder_combout\);

-- Location: FF_X52_Y13_N31
\regis|d_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \regis|d_out[7]~feeder_combout\,
	clrn => \ALT_INV_arst_i~inputclkctrl_outclk\,
	ena => \gen|clk_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|d_out\(7));

ww_d_out(0) <= \d_out[0]~output_o\;

ww_d_out(1) <= \d_out[1]~output_o\;

ww_d_out(2) <= \d_out[2]~output_o\;

ww_d_out(3) <= \d_out[3]~output_o\;

ww_d_out(4) <= \d_out[4]~output_o\;

ww_d_out(5) <= \d_out[5]~output_o\;

ww_d_out(6) <= \d_out[6]~output_o\;

ww_d_out(7) <= \d_out[7]~output_o\;
END structure;


