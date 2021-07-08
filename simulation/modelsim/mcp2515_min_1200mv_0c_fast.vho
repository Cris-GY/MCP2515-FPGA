-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "10/02/2020 09:53:57"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mcp2515 IS
    PORT (
	clk50 : IN std_logic;
	cs : OUT std_logic;
	si : OUT std_logic;
	sck : OUT std_logic;
	rst_n : IN std_logic;
	tx_empty : OUT std_logic
	);
END mcp2515;

-- Design Ports Information
-- cs	=>  Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- si	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sck	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tx_empty	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk50	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst_n	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mcp2515 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_si : std_logic;
SIGNAL ww_sck : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_tx_empty : std_logic;
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \si~output_o\ : std_logic;
SIGNAL \sck~output_o\ : std_logic;
SIGNAL \tx_empty~output_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \init~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \init~q\ : std_logic;
SIGNAL \da_buff[11]~0_combout\ : std_logic;
SIGNAL \da~5_combout\ : std_logic;
SIGNAL \da~8_combout\ : std_logic;
SIGNAL \tx_flag~1_combout\ : std_logic;
SIGNAL \tx_flag~2_combout\ : std_logic;
SIGNAL \tx_flag~q\ : std_logic;
SIGNAL \always2~4_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \da~6_combout\ : std_logic;
SIGNAL \da~7_combout\ : std_logic;
SIGNAL \da~q\ : std_logic;
SIGNAL \tx_flag~0_combout\ : std_logic;
SIGNAL \state[0]~2_combout\ : std_logic;
SIGNAL \state[0]~3_combout\ : std_logic;
SIGNAL \state[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \mscount[15]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \mscount~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \mscount~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \mscount~4_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \mscount~3_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \mscount~2_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \mscount~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \state[0]~1_combout\ : std_logic;
SIGNAL \state[0]~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~5_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \state~6_combout\ : std_logic;
SIGNAL \state[1]~7_combout\ : std_logic;
SIGNAL \state[1]~8_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \cc~0_combout\ : std_logic;
SIGNAL \cc_buff~2_combout\ : std_logic;
SIGNAL \cc~1_combout\ : std_logic;
SIGNAL \cc~q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \sc~0_combout\ : std_logic;
SIGNAL \sc~1_combout\ : std_logic;
SIGNAL \sc~2_combout\ : std_logic;
SIGNAL \sc~q\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \c_count~5_combout\ : std_logic;
SIGNAL \c_count~0_combout\ : std_logic;
SIGNAL \always2~1_combout\ : std_logic;
SIGNAL \clk_count[0]~9_combout\ : std_logic;
SIGNAL \clk_count[0]~10\ : std_logic;
SIGNAL \clk_count[1]~12_combout\ : std_logic;
SIGNAL \clk_count[1]~13\ : std_logic;
SIGNAL \clk_count[2]~14_combout\ : std_logic;
SIGNAL \clk_count[2]~15\ : std_logic;
SIGNAL \clk_count[3]~16_combout\ : std_logic;
SIGNAL \clk_count[3]~17\ : std_logic;
SIGNAL \clk_count[4]~18_combout\ : std_logic;
SIGNAL \clk_count[4]~19\ : std_logic;
SIGNAL \clk_count[5]~20_combout\ : std_logic;
SIGNAL \clk_count[5]~21\ : std_logic;
SIGNAL \clk_count[6]~22_combout\ : std_logic;
SIGNAL \clk_count[6]~23\ : std_logic;
SIGNAL \clk_count[7]~24_combout\ : std_logic;
SIGNAL \clk_count[7]~25\ : std_logic;
SIGNAL \clk_count[8]~26_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_count[3]~11_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \c_count~2_combout\ : std_logic;
SIGNAL \always2~2_combout\ : std_logic;
SIGNAL \c_count~3_combout\ : std_logic;
SIGNAL \c_count~4_combout\ : std_logic;
SIGNAL \c_count~7_combout\ : std_logic;
SIGNAL \c_count~6_combout\ : std_logic;
SIGNAL \c_count~1_combout\ : std_logic;
SIGNAL \always2~3_combout\ : std_logic;
SIGNAL \c_count~8_combout\ : std_logic;
SIGNAL \c_count~9_combout\ : std_logic;
SIGNAL \c_count~10_combout\ : std_logic;
SIGNAL \c_count~12_combout\ : std_logic;
SIGNAL \c_count~11_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \cs~2_combout\ : std_logic;
SIGNAL \cs~3_combout\ : std_logic;
SIGNAL \cs~reg0_q\ : std_logic;
SIGNAL \sc_buff~0_combout\ : std_logic;
SIGNAL \da_buff~1_combout\ : std_logic;
SIGNAL \sc_buff~1_combout\ : std_logic;
SIGNAL \sc_buff~22_combout\ : std_logic;
SIGNAL \sc_buff~23_combout\ : std_logic;
SIGNAL \sc_buff~24_combout\ : std_logic;
SIGNAL \sc_buff[12]~feeder_combout\ : std_logic;
SIGNAL \sc_buff~27_combout\ : std_logic;
SIGNAL \sc_buff~28_combout\ : std_logic;
SIGNAL \sc_buff~29_combout\ : std_logic;
SIGNAL \sc_buff~30_combout\ : std_logic;
SIGNAL \sc_buff~36_combout\ : std_logic;
SIGNAL \sc_buff~41_combout\ : std_logic;
SIGNAL \sc_buff~45_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \sc_buff~49_combout\ : std_logic;
SIGNAL \sc_buff~50_combout\ : std_logic;
SIGNAL \sc_buff~51_combout\ : std_logic;
SIGNAL \sc_buff~47_combout\ : std_logic;
SIGNAL \sc_buff~48_combout\ : std_logic;
SIGNAL \sc_buff[14]~19_combout\ : std_logic;
SIGNAL \sc_buff[14]~20_combout\ : std_logic;
SIGNAL \sc_buff~3_combout\ : std_logic;
SIGNAL \sc_buff~4_combout\ : std_logic;
SIGNAL \sc_buff[14]~21_combout\ : std_logic;
SIGNAL \sc_buff~40_combout\ : std_logic;
SIGNAL \sc_buff~46_combout\ : std_logic;
SIGNAL \sc_buff~43_combout\ : std_logic;
SIGNAL \sc_buff~44_combout\ : std_logic;
SIGNAL \sc_buff~42_combout\ : std_logic;
SIGNAL \sc_buff~38_combout\ : std_logic;
SIGNAL \sc_buff~16_combout\ : std_logic;
SIGNAL \sc_buff~39_combout\ : std_logic;
SIGNAL \sc_buff~37_combout\ : std_logic;
SIGNAL \sc_buff~34_combout\ : std_logic;
SIGNAL \sc_buff~35_combout\ : std_logic;
SIGNAL \sc_buff~31_combout\ : std_logic;
SIGNAL \sc_buff~32_combout\ : std_logic;
SIGNAL \sc_buff~33_combout\ : std_logic;
SIGNAL \sc_buff~25_combout\ : std_logic;
SIGNAL \sc_buff~26_combout\ : std_logic;
SIGNAL \sc_buff~17_combout\ : std_logic;
SIGNAL \sc_buff~18_combout\ : std_logic;
SIGNAL \sc_buff~2_combout\ : std_logic;
SIGNAL \sc_buff~5_combout\ : std_logic;
SIGNAL \sc_buff~15_combout\ : std_logic;
SIGNAL \sc_buff~14_combout\ : std_logic;
SIGNAL \sc_buff~12_combout\ : std_logic;
SIGNAL \sc_buff~13_combout\ : std_logic;
SIGNAL \sc_buff~11_combout\ : std_logic;
SIGNAL \sc_buff~10_combout\ : std_logic;
SIGNAL \sc_buff~9_combout\ : std_logic;
SIGNAL \sc_buff~8_combout\ : std_logic;
SIGNAL \sc_buff~7_combout\ : std_logic;
SIGNAL \sc_buff~6_combout\ : std_logic;
SIGNAL \da_buff[23]~4_combout\ : std_logic;
SIGNAL \da_buff[11]~6_combout\ : std_logic;
SIGNAL \da_buff[11]~7_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \da_buff[23]~3_combout\ : std_logic;
SIGNAL \da_buff[23]~2_combout\ : std_logic;
SIGNAL \da_buff[21]~11_combout\ : std_logic;
SIGNAL \da_buff[20]~13_combout\ : std_logic;
SIGNAL \da_buff~34_combout\ : std_logic;
SIGNAL \da_buff[0]~47_combout\ : std_logic;
SIGNAL \da_buff[0]~48_combout\ : std_logic;
SIGNAL \da_buff[0]~49_combout\ : std_logic;
SIGNAL \da_buff~46_combout\ : std_logic;
SIGNAL \da_buff[11]~31_combout\ : std_logic;
SIGNAL \da_buff~45_combout\ : std_logic;
SIGNAL \da_buff~44_combout\ : std_logic;
SIGNAL \da_buff[17]~19_combout\ : std_logic;
SIGNAL \da_buff[4]~43_combout\ : std_logic;
SIGNAL \da_buff[5]~42_combout\ : std_logic;
SIGNAL \da_buff[6]~40_combout\ : std_logic;
SIGNAL \da_buff[6]~41_combout\ : std_logic;
SIGNAL \da_buff[7]~38_combout\ : std_logic;
SIGNAL \da_buff[7]~39_combout\ : std_logic;
SIGNAL \da_buff~36_combout\ : std_logic;
SIGNAL \da_buff~37_combout\ : std_logic;
SIGNAL \da_buff~35_combout\ : std_logic;
SIGNAL \da_buff~32_combout\ : std_logic;
SIGNAL \da_buff~33_combout\ : std_logic;
SIGNAL \da_buff~29_combout\ : std_logic;
SIGNAL \da_buff~30_combout\ : std_logic;
SIGNAL \da_buff[12]~28_combout\ : std_logic;
SIGNAL \da_buff[13]~27_combout\ : std_logic;
SIGNAL \da_buff[14]~25_combout\ : std_logic;
SIGNAL \da_buff[14]~26_combout\ : std_logic;
SIGNAL \da_buff[15]~23_combout\ : std_logic;
SIGNAL \da_buff[15]~24_combout\ : std_logic;
SIGNAL \da_buff[16]~21_combout\ : std_logic;
SIGNAL \da_buff[16]~22_combout\ : std_logic;
SIGNAL \da_buff[17]~20_combout\ : std_logic;
SIGNAL \da_buff[18]~17_combout\ : std_logic;
SIGNAL \da_buff[18]~18_combout\ : std_logic;
SIGNAL \da_buff[19]~15_combout\ : std_logic;
SIGNAL \da_buff[19]~16_combout\ : std_logic;
SIGNAL \da_buff[20]~14_combout\ : std_logic;
SIGNAL \da_buff[21]~12_combout\ : std_logic;
SIGNAL \da_buff[22]~9_combout\ : std_logic;
SIGNAL \da_buff[22]~10_combout\ : std_logic;
SIGNAL \da_buff[23]~5_combout\ : std_logic;
SIGNAL \da_buff[23]~8_combout\ : std_logic;
SIGNAL \si~0_combout\ : std_logic;
SIGNAL \si~1_combout\ : std_logic;
SIGNAL \cc_buff~3_combout\ : std_logic;
SIGNAL \cc_buff~4_combout\ : std_logic;
SIGNAL \cc_buff~6_combout\ : std_logic;
SIGNAL \cc_buff~18_combout\ : std_logic;
SIGNAL \cc_buff~7_combout\ : std_logic;
SIGNAL \cc_buff~16_combout\ : std_logic;
SIGNAL \cc_buff~17_combout\ : std_logic;
SIGNAL \cc_buff~15_combout\ : std_logic;
SIGNAL \cc_buff~14_combout\ : std_logic;
SIGNAL \cc_buff~13_combout\ : std_logic;
SIGNAL \cc_buff~12_combout\ : std_logic;
SIGNAL \cc_buff~11_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \cc_buff~8_combout\ : std_logic;
SIGNAL \cc_buff~9_combout\ : std_logic;
SIGNAL \cc_buff~10_combout\ : std_logic;
SIGNAL \cc_buff~5_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \si~reg0_q\ : std_logic;
SIGNAL \sck~0_combout\ : std_logic;
SIGNAL \sck~reg0_q\ : std_logic;
SIGNAL \tx_empty~0_combout\ : std_logic;
SIGNAL \tx_empty~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(8 DOWNTO 0);
SIGNAL sc_buff : std_logic_vector(23 DOWNTO 0);
SIGNAL c_count : std_logic_vector(4 DOWNTO 0);
SIGNAL da_buff : std_logic_vector(23 DOWNTO 0);
SIGNAL cc_buff : std_logic_vector(7 DOWNTO 0);
SIGNAL state : std_logic_vector(3 DOWNTO 0);
SIGNAL mscount : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_tx_empty~reg0_q\ : std_logic;

BEGIN

ww_clk50 <= clk50;
cs <= ww_cs;
si <= ww_si;
sck <= ww_sck;
ww_rst_n <= rst_n;
tx_empty <= ww_tx_empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);
\ALT_INV_tx_empty~reg0_q\ <= NOT \tx_empty~reg0_q\;

-- Location: IOOBUF_X34_Y3_N23
\cs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cs~reg0_q\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\si~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \si~reg0_q\,
	devoe => ww_devoe,
	o => \si~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\sck~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sck~reg0_q\,
	devoe => ww_devoe,
	o => \sck~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\tx_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx_empty~reg0_q\,
	devoe => ww_devoe,
	o => \tx_empty~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G2
\clk50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y9_N24
\Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!state(1) & (state(2) & (state(0) & state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X32_Y9_N14
\init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init~0_combout\ = (\init~q\) # ((!\tx_flag~0_combout\ & \Decoder1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_flag~0_combout\,
	datac => \init~q\,
	datad => \Decoder1~2_combout\,
	combout => \init~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G9
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: FF_X32_Y9_N15
init : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \init~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init~q\);

-- Location: LCCOMB_X32_Y9_N18
\da_buff[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[11]~0_combout\ = (!\cc~q\ & (!\sc~q\ & ((\da~q\) # (\init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc~q\,
	datab => \da~q\,
	datac => \init~q\,
	datad => \sc~q\,
	combout => \da_buff[11]~0_combout\);

-- Location: LCCOMB_X33_Y9_N16
\da~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \da~5_combout\ = (\da~q\ & (((!\da_buff[11]~0_combout\) # (!c_count(4))) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \da~q\,
	datac => c_count(4),
	datad => \da_buff[11]~0_combout\,
	combout => \da~5_combout\);

-- Location: LCCOMB_X30_Y7_N10
\da~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \da~8_combout\ = ((!state(2) & !state(1))) # (!state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datac => state(2),
	datad => state(1),
	combout => \da~8_combout\);

-- Location: LCCOMB_X29_Y9_N20
\tx_flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_flag~1_combout\ = (\tx_flag~q\ & (((\da~8_combout\) # (!\always2~0_combout\)) # (!\init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~q\,
	datab => \init~q\,
	datac => \always2~0_combout\,
	datad => \da~8_combout\,
	combout => \tx_flag~1_combout\);

-- Location: LCCOMB_X32_Y9_N20
\tx_flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_flag~2_combout\ = (\tx_flag~1_combout\) # ((!\tx_flag~0_combout\ & \Decoder1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_flag~0_combout\,
	datac => \tx_flag~1_combout\,
	datad => \Decoder1~2_combout\,
	combout => \tx_flag~2_combout\);

-- Location: FF_X32_Y9_N21
tx_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \tx_flag~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_flag~q\);

-- Location: LCCOMB_X32_Y9_N12
\always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~4_combout\ = (!\sc~q\ & (\tx_flag~q\ & (!\cc~q\ & !\da~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \tx_flag~q\,
	datac => \cc~q\,
	datad => \da~q\,
	combout => \always2~4_combout\);

-- Location: LCCOMB_X32_Y9_N16
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (state(0) & (state(3) & (!state(1) & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(1),
	datad => state(2),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X32_Y9_N10
\da~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \da~6_combout\ = (\always2~4_combout\ & (!\Decoder1~1_combout\ & !\Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datac => \Decoder1~1_combout\,
	datad => \Decoder1~0_combout\,
	combout => \da~6_combout\);

-- Location: LCCOMB_X32_Y9_N24
\da~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \da~7_combout\ = (\da~5_combout\) # ((\da_buff[11]~0_combout\ & (\da~8_combout\ & \da~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[11]~0_combout\,
	datab => \da~5_combout\,
	datac => \da~8_combout\,
	datad => \da~6_combout\,
	combout => \da~7_combout\);

-- Location: FF_X32_Y9_N25
da : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \da~q\);

-- Location: LCCOMB_X32_Y9_N8
\tx_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_flag~0_combout\ = (\sc~q\) # ((\init~q\) # ((\cc~q\) # (\da~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \init~q\,
	datac => \cc~q\,
	datad => \da~q\,
	combout => \tx_flag~0_combout\);

-- Location: LCCOMB_X31_Y7_N16
\state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~2_combout\ = (state(2) & ((state(1)) # (\tx_flag~0_combout\))) # (!state(2) & (state(1) & \tx_flag~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => state(1),
	datad => \tx_flag~0_combout\,
	combout => \state[0]~2_combout\);

-- Location: LCCOMB_X31_Y7_N14
\state[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~3_combout\ = (\tx_flag~0_combout\ & ((\state[0]~2_combout\) # ((!state(0) & state(3))))) # (!\tx_flag~0_combout\ & (!state(0) & (state(3) & \state[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \tx_flag~0_combout\,
	datac => state(3),
	datad => \state[0]~2_combout\,
	combout => \state[0]~3_combout\);

-- Location: LCCOMB_X31_Y7_N20
\state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~0_combout\ = (!state(2) & (!state(1) & (state(0) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(0),
	datad => state(3),
	combout => \state[0]~0_combout\);

-- Location: LCCOMB_X28_Y9_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = mscount(0) $ (VCC)
-- \Add1~1\ = CARRY(mscount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mscount(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X31_Y7_N4
\mscount[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount[15]~0_combout\ = (\state[0]~0_combout\ & (\rst_n~input_o\ & !\tx_flag~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[0]~0_combout\,
	datac => \rst_n~input_o\,
	datad => \tx_flag~0_combout\,
	combout => \mscount[15]~0_combout\);

-- Location: FF_X28_Y9_N1
\mscount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(0));

-- Location: LCCOMB_X28_Y9_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (mscount(1) & (!\Add1~1\)) # (!mscount(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!mscount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X28_Y9_N3
\mscount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(1));

-- Location: LCCOMB_X28_Y9_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (mscount(2) & (\Add1~3\ $ (GND))) # (!mscount(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((mscount(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X28_Y9_N5
\mscount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(2));

-- Location: LCCOMB_X28_Y9_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (mscount(3) & (!\Add1~5\)) # (!mscount(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!mscount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mscount(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X28_Y9_N7
\mscount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(3));

-- Location: LCCOMB_X28_Y9_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (mscount(4) & (\Add1~7\ $ (GND))) # (!mscount(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((mscount(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mscount(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X29_Y9_N30
\mscount~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount~5_combout\ = (\Equal2~4_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datad => \Add1~8_combout\,
	combout => \mscount~5_combout\);

-- Location: FF_X29_Y9_N31
\mscount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \mscount~5_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(4));

-- Location: LCCOMB_X28_Y9_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (mscount(5) & (!\Add1~9\)) # (!mscount(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!mscount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mscount(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X28_Y9_N11
\mscount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(5));

-- Location: LCCOMB_X28_Y9_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (mscount(6) & (\Add1~11\ $ (GND))) # (!mscount(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((mscount(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X29_Y9_N0
\mscount~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount~6_combout\ = (\Equal2~4_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datad => \Add1~12_combout\,
	combout => \mscount~6_combout\);

-- Location: FF_X29_Y9_N1
\mscount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \mscount~6_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(6));

-- Location: LCCOMB_X28_Y9_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (mscount(7) & (!\Add1~13\)) # (!mscount(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!mscount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X28_Y9_N15
\mscount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(7));

-- Location: LCCOMB_X28_Y9_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (mscount(8) & (\Add1~15\ $ (GND))) # (!mscount(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((mscount(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mscount(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X29_Y9_N6
\mscount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount~4_combout\ = (\Add1~16_combout\ & \Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	datad => \Equal2~4_combout\,
	combout => \mscount~4_combout\);

-- Location: FF_X29_Y9_N7
\mscount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \mscount~4_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(8));

-- Location: LCCOMB_X28_Y9_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (mscount(9) & (!\Add1~17\)) # (!mscount(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!mscount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X29_Y9_N24
\mscount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount~3_combout\ = (\Equal2~4_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datad => \Add1~18_combout\,
	combout => \mscount~3_combout\);

-- Location: FF_X29_Y9_N25
\mscount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \mscount~3_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(9));

-- Location: LCCOMB_X28_Y9_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (mscount(10) & (\Add1~19\ $ (GND))) # (!mscount(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((mscount(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X28_Y9_N21
\mscount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(10));

-- Location: LCCOMB_X28_Y9_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (mscount(11) & (!\Add1~21\)) # (!mscount(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!mscount(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mscount(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X28_Y9_N23
\mscount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(11));

-- Location: LCCOMB_X29_Y9_N12
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (((mscount(11)) # (mscount(10))) # (!mscount(9))) # (!mscount(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mscount(8),
	datab => mscount(9),
	datac => mscount(11),
	datad => mscount(10),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X29_Y9_N14
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (mscount(5)) # (((mscount(4)) # (mscount(7))) # (!mscount(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mscount(5),
	datab => mscount(6),
	datac => mscount(4),
	datad => mscount(7),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X29_Y9_N4
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (((!mscount(1)) # (!mscount(3))) # (!mscount(2))) # (!mscount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mscount(0),
	datab => mscount(2),
	datac => mscount(3),
	datad => mscount(1),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X28_Y9_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (mscount(12) & (\Add1~23\ $ (GND))) # (!mscount(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((mscount(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X28_Y9_N25
\mscount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(12));

-- Location: LCCOMB_X28_Y9_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (mscount(13) & (!\Add1~25\)) # (!mscount(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!mscount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mscount(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X28_Y9_N27
\mscount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(13));

-- Location: LCCOMB_X28_Y9_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (mscount(14) & (\Add1~27\ $ (GND))) # (!mscount(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((mscount(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mscount(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X29_Y9_N28
\mscount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount~2_combout\ = (\Equal2~4_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datad => \Add1~28_combout\,
	combout => \mscount~2_combout\);

-- Location: FF_X29_Y9_N29
\mscount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \mscount~2_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(14));

-- Location: LCCOMB_X28_Y9_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \Add1~29\ $ (mscount(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mscount(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X29_Y9_N2
\mscount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mscount~1_combout\ = (\Equal2~4_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datad => \Add1~30_combout\,
	combout => \mscount~1_combout\);

-- Location: FF_X29_Y9_N3
\mscount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \mscount~1_combout\,
	ena => \mscount[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mscount(15));

-- Location: LCCOMB_X29_Y9_N18
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (((mscount(13)) # (mscount(12))) # (!mscount(15))) # (!mscount(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mscount(14),
	datab => mscount(15),
	datac => mscount(13),
	datad => mscount(12),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X29_Y9_N10
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\) # ((\Equal2~2_combout\) # ((\Equal2~3_combout\) # (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X31_Y7_N18
\state[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~1_combout\ = (\tx_flag~0_combout\ & (((!\always2~4_combout\)))) # (!\tx_flag~0_combout\ & (\state[0]~0_combout\ & ((\Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~0_combout\,
	datab => \state[0]~0_combout\,
	datac => \always2~4_combout\,
	datad => \Equal2~4_combout\,
	combout => \state[0]~1_combout\);

-- Location: LCCOMB_X31_Y7_N8
\state[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~4_combout\ = state(0) $ (((!\state[0]~3_combout\ & !\state[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[0]~3_combout\,
	datac => state(0),
	datad => \state[0]~1_combout\,
	combout => \state[0]~4_combout\);

-- Location: FF_X31_Y7_N9
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \state[0]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X30_Y7_N2
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (state(2) & ((state(1) & (state(0) & !state(3))) # (!state(1) & (!state(0) & state(3))))) # (!state(2) & (((state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y7_N28
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (state(1)) # ((state(2)) # ((state(3) & !state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y7_N10
\state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (\tx_flag~0_combout\ & ((\WideOr2~0_combout\) # (!\always2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_flag~0_combout\,
	datac => \always2~4_combout\,
	datad => \WideOr2~0_combout\,
	combout => \state~9_combout\);

-- Location: LCCOMB_X31_Y7_N6
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\Mux0~0_combout\ & (((\state~9_combout\ & state(3))) # (!\tx_flag~0_combout\))) # (!\Mux0~0_combout\ & (\state~9_combout\ & (state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \state~9_combout\,
	datac => state(3),
	datad => \tx_flag~0_combout\,
	combout => \state~12_combout\);

-- Location: FF_X31_Y7_N7
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \state~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X31_Y7_N24
\state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~5_combout\ = (!state(3)) # (!state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => state(3),
	combout => \state~5_combout\);

-- Location: LCCOMB_X30_Y7_N6
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (state(1)) # ((!state(2) & (state(0) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y9_N30
\state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~6_combout\ = state(0) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(1),
	combout => \state~6_combout\);

-- Location: LCCOMB_X31_Y7_N22
\state[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[1]~7_combout\ = (\tx_flag~0_combout\ & (((\Mux19~0_combout\)))) # (!\tx_flag~0_combout\ & (\state~5_combout\ & ((\state~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~5_combout\,
	datab => \tx_flag~0_combout\,
	datac => \Mux19~0_combout\,
	datad => \state~6_combout\,
	combout => \state[1]~7_combout\);

-- Location: LCCOMB_X31_Y7_N2
\state[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[1]~8_combout\ = (\state[0]~1_combout\ & ((state(1)))) # (!\state[0]~1_combout\ & (\state[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~7_combout\,
	datac => state(1),
	datad => \state[0]~1_combout\,
	combout => \state[1]~8_combout\);

-- Location: FF_X31_Y7_N3
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \state[1]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X30_Y7_N20
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (state(1) & ((state(2) & (!state(0) & !state(3))) # (!state(2) & (state(0))))) # (!state(1) & (state(2) & ((!state(3)) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \state~10_combout\);

-- Location: LCCOMB_X31_Y7_N12
\state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state~10_combout\ & (((state(2) & \state~9_combout\)) # (!\tx_flag~0_combout\))) # (!\state~10_combout\ & (((state(2) & \state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => \tx_flag~0_combout\,
	datac => state(2),
	datad => \state~9_combout\,
	combout => \state~11_combout\);

-- Location: FF_X31_Y7_N13
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \state~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X31_Y7_N0
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!state(2) & (!state(1) & (!state(0) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(0),
	datad => state(3),
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X29_Y9_N8
\cc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc~0_combout\ = (\cc~q\ & ((c_count(4)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datab => \cc~q\,
	datac => \Equal3~0_combout\,
	combout => \cc~0_combout\);

-- Location: LCCOMB_X32_Y9_N22
\cc_buff~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~2_combout\ = (\tx_flag~q\ & (\always2~0_combout\ & (\tx_flag~0_combout\ & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~q\,
	datab => \always2~0_combout\,
	datac => \tx_flag~0_combout\,
	datad => \Decoder1~0_combout\,
	combout => \cc_buff~2_combout\);

-- Location: LCCOMB_X32_Y9_N26
\cc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc~1_combout\ = (\cc~0_combout\) # ((\cc_buff~2_combout\) # ((\Decoder1~1_combout\ & !\tx_flag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \tx_flag~0_combout\,
	datac => \cc~0_combout\,
	datad => \cc_buff~2_combout\,
	combout => \cc~1_combout\);

-- Location: FF_X32_Y9_N27
cc : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cc~q\);

-- Location: LCCOMB_X32_Y9_N28
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\Equal3~0_combout\) # (!c_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => c_count(4),
	datad => \Equal3~0_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X30_Y7_N16
\sc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc~0_combout\ = (state(1) & (state(2) & ((state(3))))) # (!state(1) & (!state(2) & (state(0) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \sc~0_combout\);

-- Location: LCCOMB_X31_Y9_N20
\sc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc~1_combout\ = (\tx_flag~0_combout\ & (((\always2~4_combout\ & \Decoder1~1_combout\)))) # (!\tx_flag~0_combout\ & (!\sc~0_combout\ & ((!\Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~0_combout\,
	datab => \always2~4_combout\,
	datac => \tx_flag~0_combout\,
	datad => \Decoder1~1_combout\,
	combout => \sc~1_combout\);

-- Location: LCCOMB_X32_Y9_N6
\sc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc~2_combout\ = (\sc~1_combout\) # ((\sc~q\ & ((\cc~q\) # (\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc~q\,
	datab => \Equal4~0_combout\,
	datac => \sc~q\,
	datad => \sc~1_combout\,
	combout => \sc~2_combout\);

-- Location: FF_X32_Y9_N7
sc : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc~q\);

-- Location: LCCOMB_X32_Y9_N2
\always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (!\sc~q\ & (!\cc~q\ & !\da~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datac => \cc~q\,
	datad => \da~q\,
	combout => \always2~0_combout\);

-- Location: LCCOMB_X29_Y9_N22
\c_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~5_combout\ = (\always2~0_combout\) # ((c_count(4) $ (!\cc~q\)) # (!\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datab => \always2~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \cc~q\,
	combout => \c_count~5_combout\);

-- Location: LCCOMB_X33_Y9_N26
\c_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~0_combout\ = (!\cc~q\ & (((\always2~0_combout\) # (!\Equal3~0_combout\)) # (!c_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc~q\,
	datab => c_count(4),
	datac => \Equal3~0_combout\,
	datad => \always2~0_combout\,
	combout => \c_count~0_combout\);

-- Location: LCCOMB_X33_Y9_N0
\always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~1_combout\ = (c_count(3) & ((c_count(0)) # ((c_count(2)) # (c_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(3),
	datab => c_count(0),
	datac => c_count(2),
	datad => c_count(1),
	combout => \always2~1_combout\);

-- Location: LCCOMB_X32_Y10_N10
\clk_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[0]~9_combout\ = clk_count(0) $ (VCC)
-- \clk_count[0]~10\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \clk_count[0]~9_combout\,
	cout => \clk_count[0]~10\);

-- Location: LCCOMB_X32_Y10_N12
\clk_count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[1]~12_combout\ = (clk_count(1) & (!\clk_count[0]~10\)) # (!clk_count(1) & ((\clk_count[0]~10\) # (GND)))
-- \clk_count[1]~13\ = CARRY((!\clk_count[0]~10\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datad => VCC,
	cin => \clk_count[0]~10\,
	combout => \clk_count[1]~12_combout\,
	cout => \clk_count[1]~13\);

-- Location: FF_X32_Y10_N13
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[1]~12_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X32_Y10_N14
\clk_count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[2]~14_combout\ = (clk_count(2) & (\clk_count[1]~13\ $ (GND))) # (!clk_count(2) & (!\clk_count[1]~13\ & VCC))
-- \clk_count[2]~15\ = CARRY((clk_count(2) & !\clk_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \clk_count[1]~13\,
	combout => \clk_count[2]~14_combout\,
	cout => \clk_count[2]~15\);

-- Location: FF_X32_Y10_N15
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[2]~14_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X32_Y10_N16
\clk_count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[3]~16_combout\ = (clk_count(3) & (!\clk_count[2]~15\)) # (!clk_count(3) & ((\clk_count[2]~15\) # (GND)))
-- \clk_count[3]~17\ = CARRY((!\clk_count[2]~15\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \clk_count[2]~15\,
	combout => \clk_count[3]~16_combout\,
	cout => \clk_count[3]~17\);

-- Location: FF_X32_Y10_N17
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[3]~16_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X32_Y10_N18
\clk_count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[4]~18_combout\ = (clk_count(4) & (\clk_count[3]~17\ $ (GND))) # (!clk_count(4) & (!\clk_count[3]~17\ & VCC))
-- \clk_count[4]~19\ = CARRY((clk_count(4) & !\clk_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datad => VCC,
	cin => \clk_count[3]~17\,
	combout => \clk_count[4]~18_combout\,
	cout => \clk_count[4]~19\);

-- Location: FF_X32_Y10_N19
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[4]~18_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X32_Y10_N20
\clk_count[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[5]~20_combout\ = (clk_count(5) & (!\clk_count[4]~19\)) # (!clk_count(5) & ((\clk_count[4]~19\) # (GND)))
-- \clk_count[5]~21\ = CARRY((!\clk_count[4]~19\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \clk_count[4]~19\,
	combout => \clk_count[5]~20_combout\,
	cout => \clk_count[5]~21\);

-- Location: FF_X32_Y10_N21
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[5]~20_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X32_Y10_N22
\clk_count[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[6]~22_combout\ = (clk_count(6) & (\clk_count[5]~21\ $ (GND))) # (!clk_count(6) & (!\clk_count[5]~21\ & VCC))
-- \clk_count[6]~23\ = CARRY((clk_count(6) & !\clk_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \clk_count[5]~21\,
	combout => \clk_count[6]~22_combout\,
	cout => \clk_count[6]~23\);

-- Location: FF_X32_Y10_N23
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[6]~22_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X32_Y10_N24
\clk_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[7]~24_combout\ = (clk_count(7) & (!\clk_count[6]~23\)) # (!clk_count(7) & ((\clk_count[6]~23\) # (GND)))
-- \clk_count[7]~25\ = CARRY((!\clk_count[6]~23\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \clk_count[6]~23\,
	combout => \clk_count[7]~24_combout\,
	cout => \clk_count[7]~25\);

-- Location: FF_X32_Y10_N25
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[7]~24_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X32_Y10_N26
\clk_count[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[8]~26_combout\ = \clk_count[7]~25\ $ (!clk_count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_count(8),
	cin => \clk_count[7]~25\,
	combout => \clk_count[8]~26_combout\);

-- Location: FF_X32_Y10_N27
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[8]~26_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X32_Y10_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (clk_count(1) & (clk_count(2) & (clk_count(0) & !clk_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datab => clk_count(2),
	datac => clk_count(0),
	datad => clk_count(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y10_N10
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!clk_count(5) & (clk_count(7) & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datac => clk_count(7),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X30_Y10_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((clk_count(6)) # (!\Equal1~1_combout\)) # (!clk_count(8))) # (!clk_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(8),
	datac => clk_count(6),
	datad => \Equal1~1_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y10_N2
\clk_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[3]~11_combout\ = (!\Equal0~0_combout\) # (!\cs~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cs~reg0_q\,
	datad => \Equal0~0_combout\,
	combout => \clk_count[3]~11_combout\);

-- Location: FF_X32_Y10_N11
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \clk_count[0]~9_combout\,
	sclr => \clk_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X32_Y10_N6
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!clk_count(0) & (clk_count(3) & (clk_count(8) & !clk_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datab => clk_count(3),
	datac => clk_count(8),
	datad => clk_count(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X32_Y10_N0
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!clk_count(4) & (!clk_count(2) & (clk_count(6) & clk_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datab => clk_count(2),
	datac => clk_count(6),
	datad => clk_count(5),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X32_Y10_N30
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~0_combout\ & (!clk_count(7) & \Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => clk_count(7),
	datad => \Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X33_Y9_N14
\c_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~2_combout\ = (\Equal5~2_combout\ & (!\c_count~1_combout\ & ((!c_count(4)) # (!\always2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~1_combout\,
	datab => c_count(4),
	datac => \Equal5~2_combout\,
	datad => \c_count~1_combout\,
	combout => \c_count~2_combout\);

-- Location: LCCOMB_X32_Y10_N28
\always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~2_combout\ = (!c_count(4) & (\Equal5~2_combout\ & !\always2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datac => \Equal5~2_combout\,
	datad => \always2~1_combout\,
	combout => \always2~2_combout\);

-- Location: LCCOMB_X33_Y9_N28
\c_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~3_combout\ = (\c_count~0_combout\ & (((!\c_count~2_combout\)))) # (!\c_count~0_combout\ & (((!\c_count~2_combout\ & !\always2~2_combout\)) # (!\c_count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_count~0_combout\,
	datab => \c_count~1_combout\,
	datac => \c_count~2_combout\,
	datad => \always2~2_combout\,
	combout => \c_count~3_combout\);

-- Location: LCCOMB_X33_Y9_N2
\c_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~4_combout\ = (c_count(0) & (c_count(1) & (c_count(2) & !\c_count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(0),
	datab => c_count(1),
	datac => c_count(2),
	datad => \c_count~3_combout\,
	combout => \c_count~4_combout\);

-- Location: LCCOMB_X33_Y9_N10
\c_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~7_combout\ = \c_count~4_combout\ $ (((\c_count~5_combout\ & c_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_count~5_combout\,
	datac => c_count(3),
	datad => \c_count~4_combout\,
	combout => \c_count~7_combout\);

-- Location: FF_X33_Y9_N11
\c_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \c_count~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \tx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_count(3));

-- Location: LCCOMB_X33_Y9_N20
\c_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~6_combout\ = (c_count(3) & (\c_count~4_combout\ $ (((\c_count~5_combout\ & c_count(4)))))) # (!c_count(3) & (\c_count~5_combout\ & (c_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(3),
	datab => \c_count~5_combout\,
	datac => c_count(4),
	datad => \c_count~4_combout\,
	combout => \c_count~6_combout\);

-- Location: FF_X33_Y9_N21
\c_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \c_count~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \tx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_count(4));

-- Location: LCCOMB_X33_Y9_N8
\c_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~1_combout\ = (\always2~0_combout\) # ((\cc~q\ & ((c_count(4)) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datab => \Equal3~0_combout\,
	datac => \cc~q\,
	datad => \always2~0_combout\,
	combout => \c_count~1_combout\);

-- Location: LCCOMB_X32_Y10_N4
\always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~3_combout\ = (\Equal5~0_combout\ & (\Equal5~1_combout\ & (!clk_count(7) & !\always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~1_combout\,
	datac => clk_count(7),
	datad => \always2~1_combout\,
	combout => \always2~3_combout\);

-- Location: LCCOMB_X33_Y9_N24
\c_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~8_combout\ = (!\c_count~0_combout\ & (((!c_count(4) & \always2~3_combout\)) # (!\c_count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datab => \c_count~1_combout\,
	datac => \c_count~0_combout\,
	datad => \always2~3_combout\,
	combout => \c_count~8_combout\);

-- Location: LCCOMB_X33_Y9_N4
\c_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~9_combout\ = (\c_count~8_combout\ & (\c_count~1_combout\ & ((!c_count(0))))) # (!\c_count~8_combout\ & ((\c_count~2_combout\ $ (c_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_count~1_combout\,
	datab => \c_count~2_combout\,
	datac => c_count(0),
	datad => \c_count~8_combout\,
	combout => \c_count~9_combout\);

-- Location: FF_X33_Y9_N5
\c_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \c_count~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \tx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_count(0));

-- Location: LCCOMB_X33_Y9_N6
\c_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~10_combout\ = (c_count(0) & (\c_count~5_combout\ $ (((!\c_count~2_combout\ & !\c_count~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(0),
	datab => \c_count~5_combout\,
	datac => \c_count~2_combout\,
	datad => \c_count~8_combout\,
	combout => \c_count~10_combout\);

-- Location: LCCOMB_X33_Y9_N12
\c_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~12_combout\ = c_count(1) $ (\c_count~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => c_count(1),
	datad => \c_count~10_combout\,
	combout => \c_count~12_combout\);

-- Location: FF_X33_Y9_N13
\c_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \c_count~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \tx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_count(1));

-- Location: LCCOMB_X33_Y9_N30
\c_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~11_combout\ = c_count(2) $ (((c_count(1) & \c_count~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => c_count(1),
	datac => c_count(2),
	datad => \c_count~10_combout\,
	combout => \c_count~11_combout\);

-- Location: FF_X33_Y9_N31
\c_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \c_count~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \tx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_count(2));

-- Location: LCCOMB_X33_Y9_N18
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!c_count(2) & (!c_count(1) & (c_count(0) & c_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(2),
	datab => c_count(1),
	datac => c_count(0),
	datad => c_count(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y8_N24
\cs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cs~2_combout\ = (\da~q\ & (((\Equal4~0_combout\)))) # (!\da~q\ & ((\sc~q\ & ((\Equal4~0_combout\))) # (!\sc~q\ & (\cs~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da~q\,
	datab => \cs~reg0_q\,
	datac => \sc~q\,
	datad => \Equal4~0_combout\,
	combout => \cs~2_combout\);

-- Location: LCCOMB_X32_Y8_N0
\cs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cs~3_combout\ = (\cc~q\ & (((c_count(4))) # (!\Equal3~0_combout\))) # (!\cc~q\ & (((\cs~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \cc~q\,
	datac => c_count(4),
	datad => \cs~2_combout\,
	combout => \cs~3_combout\);

-- Location: FF_X32_Y8_N1
\cs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cs~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \tx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs~reg0_q\);

-- Location: LCCOMB_X31_Y9_N2
\sc_buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~0_combout\ = (!\cc~q\ & (\always2~4_combout\ & (\tx_flag~0_combout\ & \Decoder1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc~q\,
	datab => \always2~4_combout\,
	datac => \tx_flag~0_combout\,
	datad => \Decoder1~1_combout\,
	combout => \sc_buff~0_combout\);

-- Location: LCCOMB_X32_Y9_N0
\da_buff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~1_combout\ = (\Equal5~2_combout\ & (((!\always2~1_combout\ & !\Equal3~0_combout\)) # (!c_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datab => \always2~1_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal3~0_combout\,
	combout => \da_buff~1_combout\);

-- Location: LCCOMB_X30_Y8_N12
\sc_buff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~1_combout\ = (\sc~q\ & (!\cc~q\ & (!\sc_buff~0_combout\ & \da_buff~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \cc~q\,
	datac => \sc_buff~0_combout\,
	datad => \da_buff~1_combout\,
	combout => \sc_buff~1_combout\);

-- Location: LCCOMB_X30_Y10_N14
\sc_buff~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~22_combout\ = (state(0) $ (((state(2)) # (!state(1))))) # (!state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \sc_buff~22_combout\);

-- Location: LCCOMB_X31_Y9_N4
\sc_buff~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~23_combout\ = (\sc_buff~22_combout\) # (\tx_flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~22_combout\,
	datab => \tx_flag~0_combout\,
	combout => \sc_buff~23_combout\);

-- Location: LCCOMB_X30_Y9_N8
\sc_buff~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~24_combout\ = (\tx_flag~0_combout\) # ((state(2) & (\state~6_combout\ & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~0_combout\,
	datab => state(2),
	datac => \state~6_combout\,
	datad => state(3),
	combout => \sc_buff~24_combout\);

-- Location: LCCOMB_X31_Y9_N14
\sc_buff[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff[12]~feeder_combout\ = \sc_buff~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc_buff~24_combout\,
	combout => \sc_buff[12]~feeder_combout\);

-- Location: LCCOMB_X30_Y9_N14
\sc_buff~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~27_combout\ = (state(3) & (state(0) $ (((!state(2) & !state(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \sc_buff~27_combout\);

-- Location: LCCOMB_X31_Y9_N12
\sc_buff~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~28_combout\ = (\tx_flag~0_combout\) # (\sc_buff~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_flag~0_combout\,
	datad => \sc_buff~27_combout\,
	combout => \sc_buff~28_combout\);

-- Location: LCCOMB_X30_Y10_N6
\sc_buff~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~29_combout\ = (state(3) & (((state(2))))) # (!state(3) & (!state(0) & ((state(1)) # (!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \sc_buff~29_combout\);

-- Location: LCCOMB_X31_Y9_N8
\sc_buff~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~30_combout\ = (\sc_buff~29_combout\ & !\tx_flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~29_combout\,
	datab => \tx_flag~0_combout\,
	combout => \sc_buff~30_combout\);

-- Location: LCCOMB_X30_Y9_N18
\sc_buff~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~36_combout\ = (state(0) & ((!state(1)))) # (!state(0) & (state(3) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(0),
	datad => state(1),
	combout => \sc_buff~36_combout\);

-- Location: LCCOMB_X30_Y10_N18
\sc_buff~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~41_combout\ = (state(1) & (!state(2) & !state(3))) # (!state(1) & ((!state(3)) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(2),
	datad => state(3),
	combout => \sc_buff~41_combout\);

-- Location: LCCOMB_X30_Y9_N12
\sc_buff~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~45_combout\ = (state(3) & ((state(2)) # (!state(1)))) # (!state(3) & (state(2) & !state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \sc_buff~45_combout\);

-- Location: LCCOMB_X29_Y8_N16
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (state(0) & (state(1) $ (((!state(2)) # (!state(3)))))) # (!state(0) & (state(3) $ ((!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X30_Y7_N0
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (state(1) & (!state(2) & (!state(0) & !state(3)))) # (!state(1) & ((state(2) & (state(0) $ (state(3)))) # (!state(2) & (state(0) & state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X30_Y8_N14
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (sc_buff(0) & (\Mux18~3_combout\)) # (!sc_buff(0) & ((\Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => sc_buff(0),
	datac => \Mux18~2_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X30_Y8_N6
\sc_buff~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~49_combout\ = (\cc~q\) # ((!\sc~q\ & ((!\always2~4_combout\) # (!\Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \Decoder1~1_combout\,
	datac => \always2~4_combout\,
	datad => \cc~q\,
	combout => \sc_buff~49_combout\);

-- Location: LCCOMB_X30_Y8_N28
\sc_buff~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~50_combout\ = (\sc_buff~49_combout\) # ((\sc~q\ & !\da_buff~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~49_combout\,
	datac => \sc~q\,
	datad => \da_buff~1_combout\,
	combout => \sc_buff~50_combout\);

-- Location: LCCOMB_X30_Y8_N24
\sc_buff~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~51_combout\ = (\tx_flag~0_combout\ & (((sc_buff(0) & \sc_buff~50_combout\)))) # (!\tx_flag~0_combout\ & (\Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~0_combout\,
	datab => \Mux18~4_combout\,
	datac => sc_buff(0),
	datad => \sc_buff~50_combout\,
	combout => \sc_buff~51_combout\);

-- Location: FF_X30_Y8_N25
\sc_buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~51_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(0));

-- Location: LCCOMB_X30_Y9_N22
\sc_buff~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~47_combout\ = (state(0) & (!state(1) & (state(3) $ (state(2))))) # (!state(0) & (!state(3) & ((!state(1)) # (!state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \sc_buff~47_combout\);

-- Location: LCCOMB_X31_Y9_N18
\sc_buff~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~48_combout\ = (\sc~q\ & ((sc_buff(0)) # ((!\tx_flag~0_combout\ & \sc_buff~47_combout\)))) # (!\sc~q\ & (!\tx_flag~0_combout\ & ((\sc_buff~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \tx_flag~0_combout\,
	datac => sc_buff(0),
	datad => \sc_buff~47_combout\,
	combout => \sc_buff~48_combout\);

-- Location: LCCOMB_X31_Y7_N26
\sc_buff[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff[14]~19_combout\ = (state(2) & ((!state(3)) # (!state(1)))) # (!state(2) & ((state(1)) # (state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datad => state(3),
	combout => \sc_buff[14]~19_combout\);

-- Location: LCCOMB_X31_Y9_N22
\sc_buff[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff[14]~20_combout\ = (\sc~q\ & (!\tx_flag~0_combout\ & (\sc_buff[14]~19_combout\))) # (!\sc~q\ & ((\sc_buff~0_combout\) # ((!\tx_flag~0_combout\ & \sc_buff[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \tx_flag~0_combout\,
	datac => \sc_buff[14]~19_combout\,
	datad => \sc_buff~0_combout\,
	combout => \sc_buff[14]~20_combout\);

-- Location: LCCOMB_X33_Y9_N22
\sc_buff~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~3_combout\ = ((!\Equal3~0_combout\ & !\always2~1_combout\)) # (!c_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => c_count(4),
	datad => \always2~1_combout\,
	combout => \sc_buff~3_combout\);

-- Location: LCCOMB_X31_Y9_N16
\sc_buff~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~4_combout\ = (\sc~q\ & (!\cc~q\ & (\Equal5~2_combout\ & \sc_buff~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \cc~q\,
	datac => \Equal5~2_combout\,
	datad => \sc_buff~3_combout\,
	combout => \sc_buff~4_combout\);

-- Location: LCCOMB_X31_Y9_N28
\sc_buff[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff[14]~21_combout\ = (\rst_n~input_o\ & ((\sc_buff[14]~20_combout\) # (\sc_buff~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datac => \sc_buff[14]~20_combout\,
	datad => \sc_buff~4_combout\,
	combout => \sc_buff[14]~21_combout\);

-- Location: FF_X31_Y9_N19
\sc_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~48_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(1));

-- Location: LCCOMB_X30_Y9_N2
\sc_buff~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~40_combout\ = (state(0) & !\tx_flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datad => \tx_flag~0_combout\,
	combout => \sc_buff~40_combout\);

-- Location: LCCOMB_X30_Y9_N6
\sc_buff~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~46_combout\ = (\sc_buff~45_combout\ & ((\sc_buff~40_combout\) # ((sc_buff(1) & \sc~q\)))) # (!\sc_buff~45_combout\ & (sc_buff(1) & (\sc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~45_combout\,
	datab => sc_buff(1),
	datac => \sc~q\,
	datad => \sc_buff~40_combout\,
	combout => \sc_buff~46_combout\);

-- Location: FF_X30_Y9_N7
\sc_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~46_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(2));

-- Location: LCCOMB_X30_Y7_N24
\sc_buff~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~43_combout\ = (!state(1) & ((state(2) & (state(0) & !state(3))) # (!state(2) & ((state(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \sc_buff~43_combout\);

-- Location: LCCOMB_X30_Y9_N4
\sc_buff~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~44_combout\ = (sc_buff(2) & ((\tx_flag~0_combout\) # ((\sc_buff~43_combout\)))) # (!sc_buff(2) & (!\sc~q\ & ((\tx_flag~0_combout\) # (\sc_buff~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc_buff(2),
	datab => \tx_flag~0_combout\,
	datac => \sc~q\,
	datad => \sc_buff~43_combout\,
	combout => \sc_buff~44_combout\);

-- Location: FF_X30_Y9_N5
\sc_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~44_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(3));

-- Location: LCCOMB_X31_Y9_N0
\sc_buff~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~42_combout\ = (\sc~q\ & ((sc_buff(3)) # ((\sc_buff~41_combout\ & \sc_buff~40_combout\)))) # (!\sc~q\ & (\sc_buff~41_combout\ & ((\sc_buff~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \sc_buff~41_combout\,
	datac => sc_buff(3),
	datad => \sc_buff~40_combout\,
	combout => \sc_buff~42_combout\);

-- Location: FF_X31_Y9_N1
\sc_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~42_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(4));

-- Location: LCCOMB_X30_Y9_N0
\sc_buff~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~38_combout\ = (state(0) & ((!state(1)) # (!state(3)))) # (!state(0) & ((state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(0),
	datad => state(1),
	combout => \sc_buff~38_combout\);

-- Location: LCCOMB_X30_Y9_N28
\sc_buff~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~16_combout\ = (!\tx_flag~0_combout\ & (state(3) $ (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(2),
	datad => \tx_flag~0_combout\,
	combout => \sc_buff~16_combout\);

-- Location: LCCOMB_X31_Y9_N10
\sc_buff~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~39_combout\ = (\sc~q\ & ((sc_buff(4)) # ((\sc_buff~38_combout\ & \sc_buff~16_combout\)))) # (!\sc~q\ & (((\sc_buff~38_combout\ & \sc_buff~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => sc_buff(4),
	datac => \sc_buff~38_combout\,
	datad => \sc_buff~16_combout\,
	combout => \sc_buff~39_combout\);

-- Location: FF_X31_Y9_N11
\sc_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~39_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(5));

-- Location: LCCOMB_X31_Y9_N24
\sc_buff~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~37_combout\ = (\sc~q\ & ((sc_buff(5)) # ((\sc_buff~36_combout\ & \sc_buff~16_combout\)))) # (!\sc~q\ & (\sc_buff~36_combout\ & ((\sc_buff~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => \sc_buff~36_combout\,
	datac => sc_buff(5),
	datad => \sc_buff~16_combout\,
	combout => \sc_buff~37_combout\);

-- Location: FF_X31_Y9_N25
\sc_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~37_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(6));

-- Location: LCCOMB_X30_Y9_N20
\sc_buff~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~34_combout\ = (state(2) & (!state(3) & (state(1) $ (state(0))))) # (!state(2) & (state(0) $ (((state(1) & state(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \sc_buff~34_combout\);

-- Location: LCCOMB_X30_Y9_N16
\sc_buff~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~35_combout\ = (\tx_flag~0_combout\ & (sc_buff(6) & (\sc~q\))) # (!\tx_flag~0_combout\ & ((\sc_buff~34_combout\) # ((sc_buff(6) & \sc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~0_combout\,
	datab => sc_buff(6),
	datac => \sc~q\,
	datad => \sc_buff~34_combout\,
	combout => \sc_buff~35_combout\);

-- Location: FF_X30_Y9_N17
\sc_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~35_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(7));

-- Location: LCCOMB_X30_Y9_N10
\sc_buff~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~31_combout\ = (sc_buff(7)) # (!\sc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc~q\,
	datad => sc_buff(7),
	combout => \sc_buff~31_combout\);

-- Location: LCCOMB_X30_Y10_N20
\sc_buff~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~32_combout\ = (state(2) & (!state(1) & (state(0) & !state(3)))) # (!state(2) & ((state(0) $ (state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => state(3),
	combout => \sc_buff~32_combout\);

-- Location: LCCOMB_X31_Y9_N26
\sc_buff~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~33_combout\ = (\sc_buff~31_combout\ & ((\tx_flag~0_combout\) # ((\sc_buff~32_combout\) # (!\state~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~31_combout\,
	datab => \tx_flag~0_combout\,
	datac => \sc_buff~32_combout\,
	datad => \state~5_combout\,
	combout => \sc_buff~33_combout\);

-- Location: FF_X31_Y9_N27
\sc_buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~33_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(8));

-- Location: FF_X31_Y9_N9
\sc_buff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~30_combout\,
	asdata => sc_buff(8),
	sload => \sc~q\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(9));

-- Location: FF_X31_Y9_N13
\sc_buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~28_combout\,
	asdata => sc_buff(9),
	sload => \sc~q\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(10));

-- Location: LCCOMB_X30_Y10_N28
\sc_buff~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~25_combout\ = (state(2) & ((state(3)) # ((!state(1) & !state(0))))) # (!state(2) & (((state(1) & state(0))) # (!state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	combout => \sc_buff~25_combout\);

-- Location: LCCOMB_X31_Y9_N30
\sc_buff~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~26_combout\ = (\sc~q\ & ((sc_buff(10)) # ((!\tx_flag~0_combout\ & \sc_buff~25_combout\)))) # (!\sc~q\ & (((!\tx_flag~0_combout\ & \sc_buff~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => sc_buff(10),
	datac => \tx_flag~0_combout\,
	datad => \sc_buff~25_combout\,
	combout => \sc_buff~26_combout\);

-- Location: FF_X31_Y9_N31
\sc_buff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~26_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(11));

-- Location: FF_X31_Y9_N15
\sc_buff[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff[12]~feeder_combout\,
	asdata => sc_buff(11),
	sload => \sc~q\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(12));

-- Location: FF_X31_Y9_N5
\sc_buff[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~23_combout\,
	asdata => sc_buff(12),
	sload => \sc~q\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(13));

-- Location: LCCOMB_X30_Y9_N26
\sc_buff~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~17_combout\ = (state(3) & ((state(0)) # (state(1)))) # (!state(3) & ((!state(1)) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => state(0),
	datad => state(1),
	combout => \sc_buff~17_combout\);

-- Location: LCCOMB_X31_Y9_N6
\sc_buff~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~18_combout\ = (\sc~q\ & ((sc_buff(13)) # ((!\sc_buff~17_combout\ & \sc_buff~16_combout\)))) # (!\sc~q\ & (((!\sc_buff~17_combout\ & \sc_buff~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => sc_buff(13),
	datac => \sc_buff~17_combout\,
	datad => \sc_buff~16_combout\,
	combout => \sc_buff~18_combout\);

-- Location: FF_X31_Y9_N7
\sc_buff[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~18_combout\,
	ena => \sc_buff[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(14));

-- Location: LCCOMB_X31_Y8_N26
\sc_buff~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~2_combout\ = (\tx_flag~0_combout\) # ((state(2) & (state(1) & state(3))) # (!state(2) & (!state(1) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => \tx_flag~0_combout\,
	combout => \sc_buff~2_combout\);

-- Location: LCCOMB_X30_Y8_N10
\sc_buff~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~5_combout\ = (\sc_buff~2_combout\ & (!\sc_buff~0_combout\ & !\sc_buff~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc_buff~2_combout\,
	datac => \sc_buff~0_combout\,
	datad => \sc_buff~4_combout\,
	combout => \sc_buff~5_combout\);

-- Location: LCCOMB_X30_Y8_N30
\sc_buff~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~15_combout\ = (\sc_buff~1_combout\ & ((sc_buff(14)) # ((sc_buff(15) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(15) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(14),
	datac => sc_buff(15),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~15_combout\);

-- Location: FF_X30_Y8_N31
\sc_buff[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~15_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(15));

-- Location: LCCOMB_X30_Y8_N26
\sc_buff~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~14_combout\ = (\sc_buff~1_combout\ & ((sc_buff(15)) # ((sc_buff(16) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(16) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(15),
	datac => sc_buff(16),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~14_combout\);

-- Location: FF_X30_Y8_N27
\sc_buff[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~14_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(16));

-- Location: LCCOMB_X30_Y8_N16
\sc_buff~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~12_combout\ = (sc_buff(17)) # (!\sc_buff~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sc_buff(17),
	datad => \sc_buff~2_combout\,
	combout => \sc_buff~12_combout\);

-- Location: LCCOMB_X30_Y8_N8
\sc_buff~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~13_combout\ = (\sc_buff~0_combout\) # ((\sc_buff~4_combout\ & (sc_buff(16))) # (!\sc_buff~4_combout\ & ((\sc_buff~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc_buff(16),
	datab => \sc_buff~12_combout\,
	datac => \sc_buff~0_combout\,
	datad => \sc_buff~4_combout\,
	combout => \sc_buff~13_combout\);

-- Location: FF_X30_Y8_N9
\sc_buff[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~13_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(17));

-- Location: LCCOMB_X30_Y8_N2
\sc_buff~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~11_combout\ = (\sc_buff~1_combout\ & ((sc_buff(17)) # ((sc_buff(18) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(18) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(17),
	datac => sc_buff(18),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~11_combout\);

-- Location: FF_X30_Y8_N3
\sc_buff[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~11_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(18));

-- Location: LCCOMB_X30_Y8_N20
\sc_buff~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~10_combout\ = (\sc_buff~1_combout\ & ((sc_buff(18)) # ((sc_buff(19) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(19) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(18),
	datac => sc_buff(19),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~10_combout\);

-- Location: FF_X30_Y8_N21
\sc_buff[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~10_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(19));

-- Location: LCCOMB_X30_Y8_N22
\sc_buff~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~9_combout\ = (\sc_buff~1_combout\ & ((sc_buff(19)) # ((sc_buff(20) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(20) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(19),
	datac => sc_buff(20),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~9_combout\);

-- Location: FF_X30_Y8_N23
\sc_buff[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~9_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(20));

-- Location: LCCOMB_X30_Y8_N4
\sc_buff~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~8_combout\ = (\sc_buff~1_combout\ & ((sc_buff(20)) # ((sc_buff(21) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(21) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(20),
	datac => sc_buff(21),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~8_combout\);

-- Location: FF_X30_Y8_N5
\sc_buff[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~8_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(21));

-- Location: LCCOMB_X30_Y8_N18
\sc_buff~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~7_combout\ = (\sc_buff~1_combout\ & ((sc_buff(21)) # ((sc_buff(22) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(22) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(21),
	datac => sc_buff(22),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~7_combout\);

-- Location: FF_X30_Y8_N19
\sc_buff[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~7_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(22));

-- Location: LCCOMB_X30_Y8_N0
\sc_buff~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_buff~6_combout\ = (\sc_buff~1_combout\ & ((sc_buff(22)) # ((sc_buff(23) & \sc_buff~5_combout\)))) # (!\sc_buff~1_combout\ & (((sc_buff(23) & \sc_buff~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc_buff~1_combout\,
	datab => sc_buff(22),
	datac => sc_buff(23),
	datad => \sc_buff~5_combout\,
	combout => \sc_buff~6_combout\);

-- Location: FF_X30_Y8_N1
\sc_buff[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sc_buff~6_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_buff(23));

-- Location: LCCOMB_X32_Y8_N8
\da_buff[23]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[23]~4_combout\ = (\rst_n~input_o\ & (!\cc~q\ & (!\sc~q\ & \tx_flag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \cc~q\,
	datac => \sc~q\,
	datad => \tx_flag~0_combout\,
	combout => \da_buff[23]~4_combout\);

-- Location: LCCOMB_X32_Y8_N2
\da_buff[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[11]~6_combout\ = (\da~q\ & (((!\always2~1_combout\ & !\Equal3~0_combout\)) # (!c_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datab => \da~q\,
	datac => \always2~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \da_buff[11]~6_combout\);

-- Location: LCCOMB_X32_Y8_N4
\da_buff[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[11]~7_combout\ = (!\always2~4_combout\ & (\Equal5~2_combout\ & (\da_buff[23]~4_combout\ & \da_buff[11]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \Equal5~2_combout\,
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[11]~6_combout\,
	combout => \da_buff[11]~7_combout\);

-- Location: LCCOMB_X31_Y7_N30
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = state(3) $ (((state(0)) # ((state(2)) # (state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => state(2),
	datad => state(1),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X32_Y8_N14
\da_buff[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[23]~3_combout\ = (\always2~4_combout\ & !\WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always2~4_combout\,
	datad => \WideOr4~0_combout\,
	combout => \da_buff[23]~3_combout\);

-- Location: LCCOMB_X32_Y9_N30
\da_buff[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[23]~2_combout\ = (!\always2~4_combout\ & ((!\da_buff~1_combout\) # (!\da~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \da~q\,
	datad => \da_buff~1_combout\,
	combout => \da_buff[23]~2_combout\);

-- Location: LCCOMB_X33_Y8_N14
\da_buff[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[21]~11_combout\ = (da_buff(21) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(21),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[21]~11_combout\);

-- Location: LCCOMB_X33_Y8_N22
\da_buff[20]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[20]~13_combout\ = (da_buff(20) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(20),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[20]~13_combout\);

-- Location: LCCOMB_X31_Y8_N8
\da_buff~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~34_combout\ = (state(1) & ((!state(0)))) # (!state(1) & ((state(0)) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \da_buff~34_combout\);

-- Location: LCCOMB_X31_Y8_N20
\da_buff[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[0]~47_combout\ = state(3) $ (((da_buff(0) & ((state(1)) # (state(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(0),
	datab => state(1),
	datac => state(2),
	datad => state(3),
	combout => \da_buff[0]~47_combout\);

-- Location: LCCOMB_X31_Y8_N6
\da_buff[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[0]~48_combout\ = (\always2~4_combout\ & ((\da_buff[0]~47_combout\ & (da_buff(0) & state(0))) # (!\da_buff[0]~47_combout\ & ((da_buff(0)) # (state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \da_buff[0]~47_combout\,
	datac => da_buff(0),
	datad => state(0),
	combout => \da_buff[0]~48_combout\);

-- Location: LCCOMB_X31_Y8_N30
\da_buff[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[0]~49_combout\ = (\da_buff[23]~4_combout\ & ((\da_buff[0]~48_combout\) # ((da_buff(0) & \da_buff[23]~2_combout\)))) # (!\da_buff[23]~4_combout\ & (((da_buff(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[0]~48_combout\,
	datab => \da_buff[23]~4_combout\,
	datac => da_buff(0),
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[0]~49_combout\);

-- Location: FF_X31_Y8_N31
\da_buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(0));

-- Location: LCCOMB_X31_Y8_N28
\da_buff~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~46_combout\ = (\always2~4_combout\ & (state(1) & ((!state(3))))) # (!\always2~4_combout\ & (((da_buff(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => state(1),
	datac => da_buff(0),
	datad => state(3),
	combout => \da_buff~46_combout\);

-- Location: LCCOMB_X31_Y8_N10
\da_buff[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[11]~31_combout\ = (\da_buff[11]~7_combout\) # ((\always2~4_combout\ & (\WideOr4~0_combout\ & \da_buff[23]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \WideOr4~0_combout\,
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[11]~7_combout\,
	combout => \da_buff[11]~31_combout\);

-- Location: FF_X31_Y8_N29
\da_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~46_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(1));

-- Location: LCCOMB_X31_Y8_N2
\da_buff~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~45_combout\ = (\always2~4_combout\ & (state(2) & ((!state(3))))) # (!\always2~4_combout\ & (((da_buff(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => da_buff(1),
	datac => \always2~4_combout\,
	datad => state(3),
	combout => \da_buff~45_combout\);

-- Location: FF_X31_Y8_N3
\da_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~45_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(2));

-- Location: LCCOMB_X31_Y8_N12
\da_buff~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~44_combout\ = (\always2~4_combout\ & (state(3))) # (!\always2~4_combout\ & ((da_buff(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datac => \always2~4_combout\,
	datad => da_buff(2),
	combout => \da_buff~44_combout\);

-- Location: FF_X31_Y8_N13
\da_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~44_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(3));

-- Location: LCCOMB_X32_Y8_N24
\da_buff[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[17]~19_combout\ = (\rst_n~input_o\ & (\da_buff[11]~0_combout\ & (\always2~4_combout\ & \WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \da_buff[11]~0_combout\,
	datac => \always2~4_combout\,
	datad => \WideOr4~0_combout\,
	combout => \da_buff[17]~19_combout\);

-- Location: LCCOMB_X31_Y8_N14
\da_buff[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[4]~43_combout\ = (\da_buff[17]~19_combout\) # ((\da_buff[11]~7_combout\ & (da_buff(3))) # (!\da_buff[11]~7_combout\ & ((da_buff(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(3),
	datab => \da_buff[17]~19_combout\,
	datac => da_buff(4),
	datad => \da_buff[11]~7_combout\,
	combout => \da_buff[4]~43_combout\);

-- Location: FF_X31_Y8_N15
\da_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(4));

-- Location: LCCOMB_X32_Y8_N18
\da_buff[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[5]~42_combout\ = (\da_buff[17]~19_combout\) # ((\da_buff[11]~7_combout\ & (da_buff(4))) # (!\da_buff[11]~7_combout\ & ((da_buff(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(4),
	datab => \da_buff[11]~7_combout\,
	datac => da_buff(5),
	datad => \da_buff[17]~19_combout\,
	combout => \da_buff[5]~42_combout\);

-- Location: FF_X32_Y8_N19
\da_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(5));

-- Location: LCCOMB_X33_Y8_N6
\da_buff[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[6]~40_combout\ = (da_buff(6) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(6),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[6]~40_combout\);

-- Location: LCCOMB_X33_Y8_N4
\da_buff[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[6]~41_combout\ = (\da_buff[6]~40_combout\) # ((da_buff(5) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => da_buff(5),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[6]~40_combout\,
	combout => \da_buff[6]~41_combout\);

-- Location: FF_X33_Y8_N5
\da_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(6));

-- Location: LCCOMB_X33_Y8_N26
\da_buff[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[7]~38_combout\ = (da_buff(7) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(7),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[7]~38_combout\);

-- Location: LCCOMB_X33_Y8_N16
\da_buff[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[7]~39_combout\ = (\da_buff[7]~38_combout\) # ((da_buff(6) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(6),
	datab => \da_buff[11]~7_combout\,
	datac => \da_buff[7]~38_combout\,
	combout => \da_buff[7]~39_combout\);

-- Location: FF_X33_Y8_N17
\da_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[7]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(7));

-- Location: LCCOMB_X29_Y8_N14
\da_buff~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~36_combout\ = (state(3)) # ((!state(0) & ((state(2)) # (state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \da_buff~36_combout\);

-- Location: LCCOMB_X31_Y8_N22
\da_buff~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~37_combout\ = (\always2~4_combout\ & ((\da_buff~36_combout\))) # (!\always2~4_combout\ & (da_buff(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(7),
	datac => \always2~4_combout\,
	datad => \da_buff~36_combout\,
	combout => \da_buff~37_combout\);

-- Location: FF_X31_Y8_N23
\da_buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~37_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(8));

-- Location: LCCOMB_X31_Y8_N0
\da_buff~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~35_combout\ = (\always2~4_combout\ & (\da_buff~34_combout\ & ((!state(3))))) # (!\always2~4_combout\ & (((da_buff(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \da_buff~34_combout\,
	datac => da_buff(8),
	datad => state(3),
	combout => \da_buff~35_combout\);

-- Location: FF_X31_Y8_N1
\da_buff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~35_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(9));

-- Location: LCCOMB_X29_Y8_N0
\da_buff~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~32_combout\ = (state(3)) # (state(2) $ (((!state(1)) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \da_buff~32_combout\);

-- Location: LCCOMB_X31_Y8_N4
\da_buff~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~33_combout\ = (\always2~4_combout\ & ((\da_buff~32_combout\))) # (!\always2~4_combout\ & (da_buff(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => da_buff(9),
	datac => \always2~4_combout\,
	datad => \da_buff~32_combout\,
	combout => \da_buff~33_combout\);

-- Location: FF_X31_Y8_N5
\da_buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~33_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(10));

-- Location: LCCOMB_X31_Y8_N18
\da_buff~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~29_combout\ = (state(2)) # ((state(3)) # ((state(0) & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => state(2),
	datad => state(3),
	combout => \da_buff~29_combout\);

-- Location: LCCOMB_X31_Y8_N16
\da_buff~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff~30_combout\ = (\always2~4_combout\ & ((\da_buff~29_combout\))) # (!\always2~4_combout\ & (da_buff(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => da_buff(10),
	datac => \always2~4_combout\,
	datad => \da_buff~29_combout\,
	combout => \da_buff~30_combout\);

-- Location: FF_X31_Y8_N17
\da_buff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff~30_combout\,
	ena => \da_buff[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(11));

-- Location: LCCOMB_X32_Y8_N12
\da_buff[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[12]~28_combout\ = (\da_buff[17]~19_combout\) # ((\da_buff[11]~7_combout\ & (da_buff(11))) # (!\da_buff[11]~7_combout\ & ((da_buff(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(11),
	datab => \da_buff[11]~7_combout\,
	datac => da_buff(12),
	datad => \da_buff[17]~19_combout\,
	combout => \da_buff[12]~28_combout\);

-- Location: FF_X32_Y8_N13
\da_buff[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[12]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(12));

-- Location: LCCOMB_X32_Y8_N26
\da_buff[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[13]~27_combout\ = (\da_buff[17]~19_combout\) # ((\da_buff[11]~7_combout\ & (da_buff(12))) # (!\da_buff[11]~7_combout\ & ((da_buff(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(12),
	datab => \da_buff[11]~7_combout\,
	datac => da_buff(13),
	datad => \da_buff[17]~19_combout\,
	combout => \da_buff[13]~27_combout\);

-- Location: FF_X32_Y8_N27
\da_buff[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(13));

-- Location: LCCOMB_X32_Y8_N28
\da_buff[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[14]~25_combout\ = (da_buff(14) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(14),
	datab => \da_buff[23]~3_combout\,
	datac => \da_buff[23]~2_combout\,
	datad => \da_buff[23]~4_combout\,
	combout => \da_buff[14]~25_combout\);

-- Location: LCCOMB_X32_Y8_N10
\da_buff[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[14]~26_combout\ = (\da_buff[14]~25_combout\) # ((da_buff(13) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(13),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[14]~25_combout\,
	combout => \da_buff[14]~26_combout\);

-- Location: FF_X32_Y8_N11
\da_buff[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(14));

-- Location: LCCOMB_X32_Y8_N16
\da_buff[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[15]~23_combout\ = (da_buff(15) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(15),
	datab => \da_buff[23]~3_combout\,
	datac => \da_buff[23]~2_combout\,
	datad => \da_buff[23]~4_combout\,
	combout => \da_buff[15]~23_combout\);

-- Location: LCCOMB_X32_Y8_N22
\da_buff[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[15]~24_combout\ = (\da_buff[15]~23_combout\) # ((da_buff(14) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(14),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[15]~23_combout\,
	combout => \da_buff[15]~24_combout\);

-- Location: FF_X32_Y8_N23
\da_buff[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(15));

-- Location: LCCOMB_X32_Y8_N20
\da_buff[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[16]~21_combout\ = (da_buff(16) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(16),
	datab => \da_buff[23]~3_combout\,
	datac => \da_buff[23]~2_combout\,
	datad => \da_buff[23]~4_combout\,
	combout => \da_buff[16]~21_combout\);

-- Location: LCCOMB_X32_Y8_N6
\da_buff[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[16]~22_combout\ = (\da_buff[16]~21_combout\) # ((da_buff(15) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(15),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[16]~21_combout\,
	combout => \da_buff[16]~22_combout\);

-- Location: FF_X32_Y8_N7
\da_buff[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(16));

-- Location: LCCOMB_X32_Y8_N30
\da_buff[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[17]~20_combout\ = (\da_buff[17]~19_combout\) # ((\da_buff[11]~7_combout\ & (da_buff(16))) # (!\da_buff[11]~7_combout\ & ((da_buff(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(16),
	datab => \da_buff[11]~7_combout\,
	datac => da_buff(17),
	datad => \da_buff[17]~19_combout\,
	combout => \da_buff[17]~20_combout\);

-- Location: FF_X32_Y8_N31
\da_buff[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(17));

-- Location: LCCOMB_X33_Y8_N2
\da_buff[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[18]~17_combout\ = (da_buff(18) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(18),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[18]~17_combout\);

-- Location: LCCOMB_X33_Y8_N12
\da_buff[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[18]~18_combout\ = (\da_buff[18]~17_combout\) # ((da_buff(17) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => da_buff(17),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[18]~17_combout\,
	combout => \da_buff[18]~18_combout\);

-- Location: FF_X33_Y8_N13
\da_buff[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(18));

-- Location: LCCOMB_X33_Y8_N18
\da_buff[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[19]~15_combout\ = (da_buff(19) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(19),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[19]~15_combout\);

-- Location: LCCOMB_X33_Y8_N20
\da_buff[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[19]~16_combout\ = (\da_buff[19]~15_combout\) # ((da_buff(18) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(18),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[19]~15_combout\,
	combout => \da_buff[19]~16_combout\);

-- Location: FF_X33_Y8_N21
\da_buff[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(19));

-- Location: LCCOMB_X33_Y8_N24
\da_buff[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[20]~14_combout\ = (\da_buff[20]~13_combout\) # ((\da_buff[11]~7_combout\ & da_buff(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \da_buff[11]~7_combout\,
	datac => \da_buff[20]~13_combout\,
	datad => da_buff(19),
	combout => \da_buff[20]~14_combout\);

-- Location: FF_X33_Y8_N25
\da_buff[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[20]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(20));

-- Location: LCCOMB_X33_Y8_N8
\da_buff[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[21]~12_combout\ = (\da_buff[21]~11_combout\) # ((\da_buff[11]~7_combout\ & da_buff(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \da_buff[11]~7_combout\,
	datac => \da_buff[21]~11_combout\,
	datad => da_buff(20),
	combout => \da_buff[21]~12_combout\);

-- Location: FF_X33_Y8_N9
\da_buff[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[21]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(21));

-- Location: LCCOMB_X33_Y8_N30
\da_buff[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[22]~9_combout\ = (da_buff(22) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(22),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[22]~9_combout\);

-- Location: LCCOMB_X33_Y8_N28
\da_buff[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[22]~10_combout\ = (\da_buff[22]~9_combout\) # ((da_buff(21) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => da_buff(21),
	datab => \da_buff[11]~7_combout\,
	datac => \da_buff[22]~9_combout\,
	combout => \da_buff[22]~10_combout\);

-- Location: FF_X33_Y8_N29
\da_buff[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(22));

-- Location: LCCOMB_X33_Y8_N10
\da_buff[23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[23]~5_combout\ = (da_buff(23) & ((\da_buff[23]~3_combout\) # ((\da_buff[23]~2_combout\) # (!\da_buff[23]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[23]~3_combout\,
	datab => da_buff(23),
	datac => \da_buff[23]~4_combout\,
	datad => \da_buff[23]~2_combout\,
	combout => \da_buff[23]~5_combout\);

-- Location: LCCOMB_X33_Y8_N0
\da_buff[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \da_buff[23]~8_combout\ = (\da_buff[23]~5_combout\) # ((da_buff(22) & \da_buff[11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => da_buff(22),
	datac => \da_buff[11]~7_combout\,
	datad => \da_buff[23]~5_combout\,
	combout => \da_buff[23]~8_combout\);

-- Location: FF_X33_Y8_N1
\da_buff[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \da_buff[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => da_buff(23));

-- Location: LCCOMB_X30_Y10_N12
\si~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \si~0_combout\ = (!\sc~q\ & ((\da~q\ & ((da_buff(23)))) # (!\da~q\ & (\si~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da~q\,
	datab => \si~reg0_q\,
	datac => \sc~q\,
	datad => da_buff(23),
	combout => \si~0_combout\);

-- Location: LCCOMB_X30_Y10_N24
\si~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \si~1_combout\ = (\si~0_combout\) # ((\sc~q\ & sc_buff(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~q\,
	datab => sc_buff(23),
	datad => \si~0_combout\,
	combout => \si~1_combout\);

-- Location: LCCOMB_X30_Y10_N8
\cc_buff~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~3_combout\ = (\cc~q\) # ((\Decoder1~1_combout\ & !\tx_flag~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cc~q\,
	datac => \Decoder1~1_combout\,
	datad => \tx_flag~0_combout\,
	combout => \cc_buff~3_combout\);

-- Location: LCCOMB_X31_Y10_N12
\cc_buff~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~4_combout\ = (\tx_flag~0_combout\ & (\always2~4_combout\ & (\Decoder1~0_combout\ & !\cc_buff~3_combout\))) # (!\tx_flag~0_combout\ & (((\cc_buff~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \Decoder1~0_combout\,
	datac => \tx_flag~0_combout\,
	datad => \cc_buff~3_combout\,
	combout => \cc_buff~4_combout\);

-- Location: LCCOMB_X31_Y10_N0
\cc_buff~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~6_combout\ = (\tx_flag~0_combout\ & (\always2~4_combout\ & ((\Decoder1~0_combout\)))) # (!\tx_flag~0_combout\ & (((\Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \Decoder1~1_combout\,
	datac => \tx_flag~0_combout\,
	datad => \Decoder1~0_combout\,
	combout => \cc_buff~6_combout\);

-- Location: LCCOMB_X31_Y10_N6
\cc_buff~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~18_combout\ = (!\Equal3~0_combout\ & (!c_count(4) & (\cc~q\ & \always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => c_count(4),
	datac => \cc~q\,
	datad => \always2~3_combout\,
	combout => \cc_buff~18_combout\);

-- Location: LCCOMB_X31_Y10_N16
\cc_buff~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~7_combout\ = (!c_count(4) & (!\Equal3~0_combout\ & \always2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datac => \Equal3~0_combout\,
	datad => \always2~3_combout\,
	combout => \cc_buff~7_combout\);

-- Location: LCCOMB_X31_Y10_N24
\cc_buff~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~16_combout\ = (!\cc_buff~3_combout\ & ((cc_buff(0)) # (\cc_buff~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~3_combout\,
	datab => cc_buff(0),
	datad => \cc_buff~2_combout\,
	combout => \cc_buff~16_combout\);

-- Location: LCCOMB_X31_Y10_N2
\cc_buff~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~17_combout\ = (\cc_buff~16_combout\) # ((\tx_flag~0_combout\ & (!\cc_buff~7_combout\ & cc_buff(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~0_combout\,
	datab => \cc_buff~7_combout\,
	datac => cc_buff(0),
	datad => \cc_buff~16_combout\,
	combout => \cc_buff~17_combout\);

-- Location: FF_X31_Y10_N3
\cc_buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~17_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(0));

-- Location: LCCOMB_X31_Y10_N4
\cc_buff~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~15_combout\ = (\cc_buff~18_combout\ & (((cc_buff(0))))) # (!\cc_buff~18_combout\ & (!\cc_buff~4_combout\ & ((cc_buff(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~4_combout\,
	datab => cc_buff(0),
	datac => cc_buff(1),
	datad => \cc_buff~18_combout\,
	combout => \cc_buff~15_combout\);

-- Location: FF_X31_Y10_N5
\cc_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~15_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(1));

-- Location: LCCOMB_X31_Y10_N18
\cc_buff~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~14_combout\ = (\cc_buff~18_combout\ & (((cc_buff(1))))) # (!\cc_buff~18_combout\ & (!\cc_buff~4_combout\ & ((cc_buff(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~4_combout\,
	datab => cc_buff(1),
	datac => cc_buff(2),
	datad => \cc_buff~18_combout\,
	combout => \cc_buff~14_combout\);

-- Location: FF_X31_Y10_N19
\cc_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~14_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(2));

-- Location: LCCOMB_X31_Y10_N28
\cc_buff~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~13_combout\ = (\cc_buff~18_combout\ & (cc_buff(2))) # (!\cc_buff~18_combout\ & (((cc_buff(3) & !\cc_buff~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~18_combout\,
	datab => cc_buff(2),
	datac => cc_buff(3),
	datad => \cc_buff~4_combout\,
	combout => \cc_buff~13_combout\);

-- Location: FF_X31_Y10_N29
\cc_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~13_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(3));

-- Location: LCCOMB_X31_Y10_N30
\cc_buff~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~12_combout\ = (\cc_buff~18_combout\ & (((cc_buff(3))))) # (!\cc_buff~18_combout\ & (!\cc_buff~4_combout\ & ((cc_buff(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~4_combout\,
	datab => cc_buff(3),
	datac => cc_buff(4),
	datad => \cc_buff~18_combout\,
	combout => \cc_buff~12_combout\);

-- Location: FF_X31_Y10_N31
\cc_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~12_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(4));

-- Location: LCCOMB_X31_Y10_N26
\cc_buff~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~11_combout\ = (\cc_buff~18_combout\ & (cc_buff(4))) # (!\cc_buff~18_combout\ & (((cc_buff(5) & !\cc_buff~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~18_combout\,
	datab => cc_buff(4),
	datac => cc_buff(5),
	datad => \cc_buff~4_combout\,
	combout => \cc_buff~11_combout\);

-- Location: FF_X31_Y10_N27
\cc_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~11_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(5));

-- Location: LCCOMB_X31_Y10_N22
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!c_count(4) & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_count(4),
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X31_Y10_N10
\cc_buff~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~8_combout\ = (cc_buff(5) & ((\cc_buff~7_combout\) # ((cc_buff(6) & \Equal3~1_combout\)))) # (!cc_buff(5) & (cc_buff(6) & (\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cc_buff(5),
	datab => cc_buff(6),
	datac => \Equal3~1_combout\,
	datad => \cc_buff~7_combout\,
	combout => \cc_buff~8_combout\);

-- Location: LCCOMB_X31_Y10_N20
\cc_buff~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~9_combout\ = (\cc~q\ & ((\cc_buff~8_combout\) # ((!\always2~2_combout\ & cc_buff(6))))) # (!\cc~q\ & (((cc_buff(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~2_combout\,
	datab => \cc~q\,
	datac => cc_buff(6),
	datad => \cc_buff~8_combout\,
	combout => \cc_buff~9_combout\);

-- Location: LCCOMB_X31_Y10_N14
\cc_buff~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~10_combout\ = (\cc~q\ & (((\cc_buff~9_combout\)) # (!\tx_flag~0_combout\))) # (!\cc~q\ & ((\cc_buff~6_combout\ & (!\tx_flag~0_combout\)) # (!\cc_buff~6_combout\ & ((\cc_buff~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_flag~0_combout\,
	datab => \cc_buff~6_combout\,
	datac => \cc~q\,
	datad => \cc_buff~9_combout\,
	combout => \cc_buff~10_combout\);

-- Location: FF_X31_Y10_N15
\cc_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~10_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(6));

-- Location: LCCOMB_X31_Y10_N8
\cc_buff~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc_buff~5_combout\ = (\cc_buff~18_combout\ & (((cc_buff(6))))) # (!\cc_buff~18_combout\ & ((\cc_buff~4_combout\) # ((cc_buff(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc_buff~4_combout\,
	datab => cc_buff(6),
	datac => cc_buff(7),
	datad => \cc_buff~18_combout\,
	combout => \cc_buff~5_combout\);

-- Location: FF_X31_Y10_N9
\cc_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cc_buff~5_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc_buff(7));

-- Location: LCCOMB_X30_Y10_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!clk_count(3) & (!clk_count(8) & (clk_count(6) & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(8),
	datac => clk_count(6),
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X30_Y10_N25
\si~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \si~1_combout\,
	asdata => cc_buff(7),
	sload => \cc~q\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \si~reg0_q\);

-- Location: LCCOMB_X30_Y10_N22
\sck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sck~0_combout\ = ((!\Equal1~2_combout\ & ((\sck~reg0_q\) # (!\Equal0~0_combout\)))) # (!\cs~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \cs~reg0_q\,
	datac => \sck~reg0_q\,
	datad => \Equal1~2_combout\,
	combout => \sck~0_combout\);

-- Location: FF_X30_Y10_N23
\sck~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \sck~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sck~reg0_q\);

-- Location: LCCOMB_X32_Y9_N4
\tx_empty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_empty~0_combout\ = (\da_buff[11]~0_combout\ & ((\da~q\ & (\tx_empty~reg0_q\)) # (!\da~q\ & ((\tx_flag~q\))))) # (!\da_buff[11]~0_combout\ & (((\tx_empty~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \da_buff[11]~0_combout\,
	datab => \da~q\,
	datac => \tx_empty~reg0_q\,
	datad => \tx_flag~q\,
	combout => \tx_empty~0_combout\);

-- Location: FF_X32_Y9_N5
\tx_empty~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \tx_empty~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_empty~reg0_q\);

ww_cs <= \cs~output_o\;

ww_si <= \si~output_o\;

ww_sck <= \sck~output_o\;

ww_tx_empty <= \tx_empty~output_o\;
END structure;


