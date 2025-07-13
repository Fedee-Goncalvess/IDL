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

-- DATE "07/12/2025 21:41:20"

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

ENTITY 	registro1bitTristate IS
    PORT (
	O : OUT std_logic;
	CLK : IN std_logic;
	D : IN std_logic;
	Ien : IN std_logic;
	Oen : IN std_logic
	);
END registro1bitTristate;

-- Design Ports Information
-- O	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Oen	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ien	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registro1bitTristate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_O : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Ien : std_logic;
SIGNAL ww_Oen : std_logic;
SIGNAL \O~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Ien~input_o\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \Oen~input_o\ : std_logic;

BEGIN

O <= ww_O;
ww_CLK <= CLK;
ww_D <= D;
ww_Ien <= Ien;
ww_Oen <= Oen;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N16
\O~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	oe => \Oen~input_o\,
	devoe => ww_devoe,
	o => \O~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\Ien~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ien,
	o => \Ien~input_o\);

-- Location: LCCOMB_X4_Y1_N0
\inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = (\Ien~input_o\ & (\D~input_o\)) # (!\Ien~input_o\ & ((\inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D~input_o\,
	datac => \Ien~input_o\,
	datad => \inst2~1_combout\,
	combout => \inst2~1_combout\);

-- Location: FF_X4_Y1_N1
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: IOIBUF_X0_Y23_N1
\Oen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Oen,
	o => \Oen~input_o\);

ww_O <= \O~output_o\;
END structure;


