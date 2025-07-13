-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/13/2025 17:27:08"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registro12bitsTristate IS
    PORT (
	O : OUT std_logic_vector(11 DOWNTO 0);
	Oen : IN std_logic;
	D : IN std_logic_vector(11 DOWNTO 0);
	Ien : IN std_logic;
	CLK : IN std_logic
	);
END registro12bitsTristate;

-- Design Ports Information
-- O[11]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[9]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[8]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Oen	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[11]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ien	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[10]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registro12bitsTristate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_O : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Oen : std_logic;
SIGNAL ww_D : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Ien : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ien~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \O[11]~output_o\ : std_logic;
SIGNAL \O[10]~output_o\ : std_logic;
SIGNAL \O[9]~output_o\ : std_logic;
SIGNAL \O[8]~output_o\ : std_logic;
SIGNAL \O[7]~output_o\ : std_logic;
SIGNAL \O[6]~output_o\ : std_logic;
SIGNAL \O[5]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[11]~input_o\ : std_logic;
SIGNAL \Ien~input_o\ : std_logic;
SIGNAL \Ien~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|inst2~1_combout\ : std_logic;
SIGNAL \inst11|inst4~q\ : std_logic;
SIGNAL \Oen~input_o\ : std_logic;
SIGNAL \D[10]~input_o\ : std_logic;
SIGNAL \inst10|inst2~1_combout\ : std_logic;
SIGNAL \inst10|inst4~q\ : std_logic;
SIGNAL \D[9]~input_o\ : std_logic;
SIGNAL \inst9|inst2~1_combout\ : std_logic;
SIGNAL \inst9|inst4~q\ : std_logic;
SIGNAL \D[8]~input_o\ : std_logic;
SIGNAL \inst8|inst2~1_combout\ : std_logic;
SIGNAL \inst8|inst4~q\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \inst7|inst2~1_combout\ : std_logic;
SIGNAL \inst7|inst4~q\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \inst6|inst2~1_combout\ : std_logic;
SIGNAL \inst6|inst4~q\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \inst5|inst2~1_combout\ : std_logic;
SIGNAL \inst5|inst4~q\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \inst4|inst2~1_combout\ : std_logic;
SIGNAL \inst4|inst4~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \inst3|inst2~1_combout\ : std_logic;
SIGNAL \inst3|inst4~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst4~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst4~q\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst|inst2~1_combout\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;

BEGIN

O <= ww_O;
ww_Oen <= Oen;
ww_D <= D;
ww_Ien <= Ien;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\Ien~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Ien~input_o\);

-- Location: IOOBUF_X0_Y23_N16
\O[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[11]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\O[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[10]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\O[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\O[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\O[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\O[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\O[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\O[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\O[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\O[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\O[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\O[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(11),
	o => \D[11]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\Ien~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ien,
	o => \Ien~input_o\);

-- Location: CLKCTRL_G2
\Ien~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ien~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ien~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y23_N12
\inst11|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[11]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst11|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2~1_combout\,
	datac => \D[11]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst11|inst2~1_combout\);

-- Location: FF_X1_Y23_N13
\inst11|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst4~q\);

-- Location: IOIBUF_X0_Y11_N15
\Oen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Oen,
	o => \Oen~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(10),
	o => \D[10]~input_o\);

-- Location: LCCOMB_X2_Y23_N0
\inst10|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[10]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst10|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst2~1_combout\,
	datac => \D[10]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst10|inst2~1_combout\);

-- Location: FF_X2_Y23_N1
\inst10|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4~q\);

-- Location: IOIBUF_X3_Y24_N1
\D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(9),
	o => \D[9]~input_o\);

-- Location: LCCOMB_X3_Y23_N0
\inst9|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[9]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst9|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2~1_combout\,
	datac => \D[9]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst9|inst2~1_combout\);

-- Location: FF_X3_Y23_N1
\inst9|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4~q\);

-- Location: IOIBUF_X13_Y24_N1
\D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(8),
	o => \D[8]~input_o\);

-- Location: LCCOMB_X13_Y23_N0
\inst8|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[8]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst8|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2~1_combout\,
	datac => \D[8]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst8|inst2~1_combout\);

-- Location: FF_X13_Y23_N1
\inst8|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4~q\);

-- Location: IOIBUF_X16_Y24_N15
\D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X16_Y23_N0
\inst7|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[7]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst7|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~1_combout\,
	datac => \D[7]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst7|inst2~1_combout\);

-- Location: FF_X16_Y23_N1
\inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4~q\);

-- Location: IOIBUF_X16_Y24_N1
\D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X16_Y23_N2
\inst6|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[6]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst6|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst2~1_combout\,
	datac => \D[6]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst6|inst2~1_combout\);

-- Location: FF_X16_Y23_N3
\inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst4~q\);

-- Location: IOIBUF_X7_Y24_N1
\D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X7_Y23_N0
\inst5|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[5]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst5|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst2~1_combout\,
	datac => \D[5]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst5|inst2~1_combout\);

-- Location: FF_X7_Y23_N1
\inst5|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst4~q\);

-- Location: IOIBUF_X1_Y24_N8
\D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X1_Y23_N10
\inst4|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[4]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst4|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2~1_combout\,
	datac => \D[4]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst4|inst2~1_combout\);

-- Location: FF_X1_Y23_N11
\inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4~q\);

-- Location: IOIBUF_X5_Y24_N1
\D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X5_Y23_N12
\inst3|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[3]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst3|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2~1_combout\,
	datac => \D[3]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst3|inst2~1_combout\);

-- Location: FF_X5_Y23_N13
\inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4~q\);

-- Location: IOIBUF_X0_Y22_N15
\D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\inst2|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[2]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst2|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2~1_combout\,
	datac => \D[2]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst2|inst2~1_combout\);

-- Location: FF_X1_Y23_N17
\inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4~q\);

-- Location: IOIBUF_X5_Y24_N15
\D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X5_Y23_N2
\inst1|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[1]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst1|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2~1_combout\,
	datac => \D[1]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst1|inst2~1_combout\);

-- Location: FF_X5_Y23_N3
\inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4~q\);

-- Location: IOIBUF_X13_Y24_N8
\D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X13_Y23_N2
\inst|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2~1_combout\ = (GLOBAL(\Ien~inputclkctrl_outclk\) & ((\D[0]~input_o\))) # (!GLOBAL(\Ien~inputclkctrl_outclk\) & (\inst|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2~1_combout\,
	datac => \D[0]~input_o\,
	datad => \Ien~inputclkctrl_outclk\,
	combout => \inst|inst2~1_combout\);

-- Location: FF_X13_Y23_N3
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

ww_O(11) <= \O[11]~output_o\;

ww_O(10) <= \O[10]~output_o\;

ww_O(9) <= \O[9]~output_o\;

ww_O(8) <= \O[8]~output_o\;

ww_O(7) <= \O[7]~output_o\;

ww_O(6) <= \O[6]~output_o\;

ww_O(5) <= \O[5]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(0) <= \O[0]~output_o\;
END structure;


