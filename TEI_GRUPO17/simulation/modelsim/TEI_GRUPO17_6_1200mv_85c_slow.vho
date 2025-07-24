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

-- DATE "07/24/2025 18:41:28"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comparador_1bit IS
    PORT (
	AmayB : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	I_AeqB : IN std_logic;
	I_AmayB : IN std_logic;
	AeqB : OUT std_logic;
	AmenB : OUT std_logic;
	I_AmenB : IN std_logic
	);
END comparador_1bit;

-- Design Ports Information
-- AmayB	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AeqB	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AmenB	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_AeqB	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_AmayB	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_AmenB	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AmayB : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_I_AeqB : std_logic;
SIGNAL ww_I_AmayB : std_logic;
SIGNAL ww_AeqB : std_logic;
SIGNAL ww_AmenB : std_logic;
SIGNAL ww_I_AmenB : std_logic;
SIGNAL \AmayB~output_o\ : std_logic;
SIGNAL \AeqB~output_o\ : std_logic;
SIGNAL \AmenB~output_o\ : std_logic;
SIGNAL \I_AeqB~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \I_AmayB~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \I_AmenB~input_o\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;

BEGIN

AmayB <= ww_AmayB;
ww_A <= A;
ww_B <= B;
ww_I_AeqB <= I_AeqB;
ww_I_AmayB <= I_AmayB;
AeqB <= ww_AeqB;
AmenB <= ww_AmenB;
ww_I_AmenB <= I_AmenB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y4_N16
\AmayB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \AmayB~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\AeqB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \AeqB~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\AmenB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~combout\,
	devoe => ww_devoe,
	o => \AmenB~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\I_AeqB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_AeqB,
	o => \I_AeqB~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\I_AmayB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_AmayB,
	o => \I_AmayB~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y7_N16
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\A~input_o\ & (((\I_AeqB~input_o\ & \I_AmayB~input_o\)) # (!\B~input_o\))) # (!\A~input_o\ & (\I_AeqB~input_o\ & (\I_AmayB~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_AeqB~input_o\,
	datab => \A~input_o\,
	datac => \I_AmayB~input_o\,
	datad => \B~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X1_Y7_N2
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\I_AeqB~input_o\ & (\A~input_o\ $ (!\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_AeqB~input_o\,
	datab => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst3~combout\);

-- Location: IOIBUF_X0_Y5_N22
\I_AmenB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_AmenB,
	o => \I_AmenB~input_o\);

-- Location: LCCOMB_X1_Y7_N28
inst10 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\A~input_o\ & (\I_AeqB~input_o\ & (\I_AmenB~input_o\ & \B~input_o\))) # (!\A~input_o\ & ((\B~input_o\) # ((\I_AeqB~input_o\ & \I_AmenB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_AeqB~input_o\,
	datab => \A~input_o\,
	datac => \I_AmenB~input_o\,
	datad => \B~input_o\,
	combout => \inst10~combout\);

ww_AmayB <= \AmayB~output_o\;

ww_AeqB <= \AeqB~output_o\;

ww_AmenB <= \AmenB~output_o\;
END structure;


