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

-- DATE "07/22/2025 16:22:09"

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

ENTITY 	contador_UC IS
    PORT (
	OIenA : OUT std_logic;
	IenA : IN std_logic;
	OIenB : OUT std_logic;
	IenB : IN std_logic;
	ABus : OUT std_logic_vector(11 DOWNTO 0);
	BidirBus : INOUT std_logic_vector(11 DOWNTO 0);
	SUMBus : IN std_logic_vector(11 DOWNTO 0);
	OenSUM : IN std_logic
	);
END contador_UC;

-- Design Ports Information
-- OIenA	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OIenB	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABus[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IenA	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IenB	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OenSUM	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUMBus[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_UC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OIenA : std_logic;
SIGNAL ww_IenA : std_logic;
SIGNAL ww_OIenB : std_logic;
SIGNAL ww_IenB : std_logic;
SIGNAL ww_ABus : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SUMBus : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_OenSUM : std_logic;
SIGNAL \BidirBus[11]~output_o\ : std_logic;
SIGNAL \BidirBus[10]~output_o\ : std_logic;
SIGNAL \BidirBus[9]~output_o\ : std_logic;
SIGNAL \BidirBus[8]~output_o\ : std_logic;
SIGNAL \BidirBus[7]~output_o\ : std_logic;
SIGNAL \BidirBus[6]~output_o\ : std_logic;
SIGNAL \BidirBus[5]~output_o\ : std_logic;
SIGNAL \BidirBus[4]~output_o\ : std_logic;
SIGNAL \BidirBus[3]~output_o\ : std_logic;
SIGNAL \BidirBus[2]~output_o\ : std_logic;
SIGNAL \BidirBus[1]~output_o\ : std_logic;
SIGNAL \BidirBus[0]~output_o\ : std_logic;
SIGNAL \OIenA~output_o\ : std_logic;
SIGNAL \OIenB~output_o\ : std_logic;
SIGNAL \ABus[11]~output_o\ : std_logic;
SIGNAL \ABus[10]~output_o\ : std_logic;
SIGNAL \ABus[9]~output_o\ : std_logic;
SIGNAL \ABus[8]~output_o\ : std_logic;
SIGNAL \ABus[7]~output_o\ : std_logic;
SIGNAL \ABus[6]~output_o\ : std_logic;
SIGNAL \ABus[5]~output_o\ : std_logic;
SIGNAL \ABus[4]~output_o\ : std_logic;
SIGNAL \ABus[3]~output_o\ : std_logic;
SIGNAL \ABus[2]~output_o\ : std_logic;
SIGNAL \ABus[1]~output_o\ : std_logic;
SIGNAL \ABus[0]~output_o\ : std_logic;
SIGNAL \SUMBus[11]~input_o\ : std_logic;
SIGNAL \OenSUM~input_o\ : std_logic;
SIGNAL \SUMBus[10]~input_o\ : std_logic;
SIGNAL \SUMBus[9]~input_o\ : std_logic;
SIGNAL \SUMBus[8]~input_o\ : std_logic;
SIGNAL \SUMBus[7]~input_o\ : std_logic;
SIGNAL \SUMBus[6]~input_o\ : std_logic;
SIGNAL \SUMBus[5]~input_o\ : std_logic;
SIGNAL \SUMBus[4]~input_o\ : std_logic;
SIGNAL \SUMBus[3]~input_o\ : std_logic;
SIGNAL \SUMBus[2]~input_o\ : std_logic;
SIGNAL \SUMBus[1]~input_o\ : std_logic;
SIGNAL \SUMBus[0]~input_o\ : std_logic;
SIGNAL \IenA~input_o\ : std_logic;
SIGNAL \IenB~input_o\ : std_logic;
SIGNAL \BidirBus[11]~input_o\ : std_logic;
SIGNAL \BidirBus[10]~input_o\ : std_logic;
SIGNAL \BidirBus[9]~input_o\ : std_logic;
SIGNAL \BidirBus[8]~input_o\ : std_logic;
SIGNAL \BidirBus[7]~input_o\ : std_logic;
SIGNAL \BidirBus[6]~input_o\ : std_logic;
SIGNAL \BidirBus[5]~input_o\ : std_logic;
SIGNAL \BidirBus[4]~input_o\ : std_logic;
SIGNAL \BidirBus[3]~input_o\ : std_logic;
SIGNAL \BidirBus[2]~input_o\ : std_logic;
SIGNAL \BidirBus[1]~input_o\ : std_logic;
SIGNAL \BidirBus[0]~input_o\ : std_logic;

BEGIN

OIenA <= ww_OIenA;
ww_IenA <= IenA;
OIenB <= ww_OIenB;
ww_IenB <= IenB;
ABus <= ww_ABus;
ww_SUMBus <= SUMBus;
ww_OenSUM <= OenSUM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X9_Y24_N16
\BidirBus[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[11]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[11]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\BidirBus[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[10]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\BidirBus[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[9]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[9]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\BidirBus[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[8]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\BidirBus[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[7]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\BidirBus[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[6]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\BidirBus[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[5]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[5]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\BidirBus[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[4]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\BidirBus[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[3]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\BidirBus[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[2]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\BidirBus[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[1]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\BidirBus[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUMBus[0]~input_o\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\OIenA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IenA~input_o\,
	devoe => ww_devoe,
	o => \OIenA~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\OIenB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IenB~input_o\,
	devoe => ww_devoe,
	o => \OIenB~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\ABus[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[11]~input_o\,
	devoe => ww_devoe,
	o => \ABus[11]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\ABus[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[10]~input_o\,
	devoe => ww_devoe,
	o => \ABus[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\ABus[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[9]~input_o\,
	devoe => ww_devoe,
	o => \ABus[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ABus[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[8]~input_o\,
	devoe => ww_devoe,
	o => \ABus[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\ABus[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[7]~input_o\,
	devoe => ww_devoe,
	o => \ABus[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\ABus[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[6]~input_o\,
	devoe => ww_devoe,
	o => \ABus[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ABus[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[5]~input_o\,
	devoe => ww_devoe,
	o => \ABus[5]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\ABus[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[4]~input_o\,
	devoe => ww_devoe,
	o => \ABus[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ABus[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[3]~input_o\,
	devoe => ww_devoe,
	o => \ABus[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ABus[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[2]~input_o\,
	devoe => ww_devoe,
	o => \ABus[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\ABus[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[1]~input_o\,
	devoe => ww_devoe,
	o => \ABus[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ABus[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirBus[0]~input_o\,
	devoe => ww_devoe,
	o => \ABus[0]~output_o\);

-- Location: IOIBUF_X9_Y24_N8
\SUMBus[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(11),
	o => \SUMBus[11]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\OenSUM~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OenSUM,
	o => \OenSUM~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\SUMBus[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(10),
	o => \SUMBus[10]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\SUMBus[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(9),
	o => \SUMBus[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\SUMBus[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(8),
	o => \SUMBus[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\SUMBus[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(7),
	o => \SUMBus[7]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\SUMBus[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(6),
	o => \SUMBus[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\SUMBus[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(5),
	o => \SUMBus[5]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\SUMBus[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(4),
	o => \SUMBus[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\SUMBus[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(3),
	o => \SUMBus[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\SUMBus[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(2),
	o => \SUMBus[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\SUMBus[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(1),
	o => \SUMBus[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SUMBus[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUMBus(0),
	o => \SUMBus[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\IenA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IenA,
	o => \IenA~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\IenB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IenB,
	o => \IenB~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\BidirBus[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(11),
	o => \BidirBus[11]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\BidirBus[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(10),
	o => \BidirBus[10]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\BidirBus[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(9),
	o => \BidirBus[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\BidirBus[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(8),
	o => \BidirBus[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\BidirBus[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(7),
	o => \BidirBus[7]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\BidirBus[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(6),
	o => \BidirBus[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\BidirBus[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(5),
	o => \BidirBus[5]~input_o\);

-- Location: IOIBUF_X21_Y24_N8
\BidirBus[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(4),
	o => \BidirBus[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\BidirBus[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(3),
	o => \BidirBus[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\BidirBus[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(2),
	o => \BidirBus[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\BidirBus[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(1),
	o => \BidirBus[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\BidirBus[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(0),
	o => \BidirBus[0]~input_o\);

ww_OIenA <= \OIenA~output_o\;

ww_OIenB <= \OIenB~output_o\;

ww_ABus(11) <= \ABus[11]~output_o\;

ww_ABus(10) <= \ABus[10]~output_o\;

ww_ABus(9) <= \ABus[9]~output_o\;

ww_ABus(8) <= \ABus[8]~output_o\;

ww_ABus(7) <= \ABus[7]~output_o\;

ww_ABus(6) <= \ABus[6]~output_o\;

ww_ABus(5) <= \ABus[5]~output_o\;

ww_ABus(4) <= \ABus[4]~output_o\;

ww_ABus(3) <= \ABus[3]~output_o\;

ww_ABus(2) <= \ABus[2]~output_o\;

ww_ABus(1) <= \ABus[1]~output_o\;

ww_ABus(0) <= \ABus[0]~output_o\;

BidirBus(11) <= \BidirBus[11]~output_o\;

BidirBus(10) <= \BidirBus[10]~output_o\;

BidirBus(9) <= \BidirBus[9]~output_o\;

BidirBus(8) <= \BidirBus[8]~output_o\;

BidirBus(7) <= \BidirBus[7]~output_o\;

BidirBus(6) <= \BidirBus[6]~output_o\;

BidirBus(5) <= \BidirBus[5]~output_o\;

BidirBus(4) <= \BidirBus[4]~output_o\;

BidirBus(3) <= \BidirBus[3]~output_o\;

BidirBus(2) <= \BidirBus[2]~output_o\;

BidirBus(1) <= \BidirBus[1]~output_o\;

BidirBus(0) <= \BidirBus[0]~output_o\;
END structure;


