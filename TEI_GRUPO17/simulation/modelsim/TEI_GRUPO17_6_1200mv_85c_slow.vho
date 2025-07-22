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

-- DATE "07/22/2025 17:41:33"

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

ENTITY 	contador_TOP IS
    PORT (
	C : OUT std_logic;
	CLK : IN std_logic;
	OenSUM : IN std_logic;
	IenA : IN std_logic;
	IenB : IN std_logic;
	BidirBus : INOUT std_logic_vector(11 DOWNTO 0);
	B : IN std_logic_vector(11 DOWNTO 0);
	RegA : OUT std_logic_vector(11 DOWNTO 0);
	Suma : OUT std_logic_vector(11 DOWNTO 0)
	);
END contador_TOP;

-- Design Ports Information
-- C	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[10]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[10]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BidirBus[0]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IenB	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IenA	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OenSUM	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OenSUM : std_logic;
SIGNAL ww_IenA : std_logic;
SIGNAL ww_IenB : std_logic;
SIGNAL ww_B : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_RegA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Suma : std_logic_vector(11 DOWNTO 0);
SIGNAL \IenB~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IenA~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \C~output_o\ : std_logic;
SIGNAL \RegA[11]~output_o\ : std_logic;
SIGNAL \RegA[10]~output_o\ : std_logic;
SIGNAL \RegA[9]~output_o\ : std_logic;
SIGNAL \RegA[8]~output_o\ : std_logic;
SIGNAL \RegA[7]~output_o\ : std_logic;
SIGNAL \RegA[6]~output_o\ : std_logic;
SIGNAL \RegA[5]~output_o\ : std_logic;
SIGNAL \RegA[4]~output_o\ : std_logic;
SIGNAL \RegA[3]~output_o\ : std_logic;
SIGNAL \RegA[2]~output_o\ : std_logic;
SIGNAL \RegA[1]~output_o\ : std_logic;
SIGNAL \RegA[0]~output_o\ : std_logic;
SIGNAL \Suma[11]~output_o\ : std_logic;
SIGNAL \Suma[10]~output_o\ : std_logic;
SIGNAL \Suma[9]~output_o\ : std_logic;
SIGNAL \Suma[8]~output_o\ : std_logic;
SIGNAL \Suma[7]~output_o\ : std_logic;
SIGNAL \Suma[6]~output_o\ : std_logic;
SIGNAL \Suma[5]~output_o\ : std_logic;
SIGNAL \Suma[4]~output_o\ : std_logic;
SIGNAL \Suma[3]~output_o\ : std_logic;
SIGNAL \Suma[2]~output_o\ : std_logic;
SIGNAL \Suma[1]~output_o\ : std_logic;
SIGNAL \Suma[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \BidirBus[11]~input_o\ : std_logic;
SIGNAL \IenA~input_o\ : std_logic;
SIGNAL \IenA~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst11|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst11|inst4~q\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \IenB~input_o\ : std_logic;
SIGNAL \IenB~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst10|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst10|inst4~q\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst2|inst8|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst8|inst4~q\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst2|inst6|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst6|inst4~q\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst2|inst5|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst5|inst4~q\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst2|inst4|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst4|inst4~q\ : std_logic;
SIGNAL \BidirBus[3]~input_o\ : std_logic;
SIGNAL \inst1|inst3|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst4~q\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst2|inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst2|inst4~q\ : std_logic;
SIGNAL \BidirBus[0]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst4~q\ : std_logic;
SIGNAL \BidirBus[1]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4~q\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst2|inst|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst4~q\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst2|inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst1|inst4~q\ : std_logic;
SIGNAL \inst|inst1|inst~0_combout\ : std_logic;
SIGNAL \BidirBus[2]~input_o\ : std_logic;
SIGNAL \inst1|inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst2|inst~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst2|inst3|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst3|inst4~q\ : std_logic;
SIGNAL \inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \BidirBus[4]~input_o\ : std_logic;
SIGNAL \inst1|inst4|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst4|inst4~q\ : std_logic;
SIGNAL \inst|inst4|inst~1_combout\ : std_logic;
SIGNAL \BidirBus[5]~input_o\ : std_logic;
SIGNAL \inst1|inst5|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst5|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \BidirBus[7]~input_o\ : std_logic;
SIGNAL \inst1|inst7|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst7|inst4~q\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst2|inst7|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst7|inst4~q\ : std_logic;
SIGNAL \BidirBus[6]~input_o\ : std_logic;
SIGNAL \inst1|inst6|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst6|inst4~q\ : std_logic;
SIGNAL \inst|inst6|inst~1_combout\ : std_logic;
SIGNAL \inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \BidirBus[8]~input_o\ : std_logic;
SIGNAL \inst1|inst8|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst8|inst4~q\ : std_logic;
SIGNAL \inst|inst8|inst~1_combout\ : std_logic;
SIGNAL \BidirBus[9]~input_o\ : std_logic;
SIGNAL \inst1|inst9|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst9|inst4~q\ : std_logic;
SIGNAL \inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \inst2|inst9|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst9|inst4~q\ : std_logic;
SIGNAL \inst|inst9|inst~0_combout\ : std_logic;
SIGNAL \BidirBus[10]~input_o\ : std_logic;
SIGNAL \inst1|inst10|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst10|inst4~q\ : std_logic;
SIGNAL \inst|inst10|inst~1_combout\ : std_logic;
SIGNAL \inst|inst10|inst~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \inst2|inst11|inst2~1_combout\ : std_logic;
SIGNAL \inst2|inst11|inst4~q\ : std_logic;
SIGNAL \inst|inst11|inst6~combout\ : std_logic;
SIGNAL \OenSUM~input_o\ : std_logic;
SIGNAL \inst|inst10|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst9|inst6~combout\ : std_logic;
SIGNAL \inst|inst8|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst6~combout\ : std_logic;
SIGNAL \inst|inst6|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst6~combout\ : std_logic;
SIGNAL \inst|inst4|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6~combout\ : std_logic;
SIGNAL \inst|inst2|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst11|inst~0_combout\ : std_logic;

BEGIN

C <= ww_C;
ww_CLK <= CLK;
ww_OenSUM <= OenSUM;
ww_IenA <= IenA;
ww_IenB <= IenB;
ww_B <= B;
RegA <= ww_RegA;
Suma <= ww_Suma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\IenB~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IenB~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\IenA~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IenA~input_o\);

-- Location: IOOBUF_X9_Y0_N23
\BidirBus[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11|inst6~combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\BidirBus[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10|inst6~0_combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\BidirBus[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst9|inst6~combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\BidirBus[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst8|inst6~0_combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\BidirBus[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst6~combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\BidirBus[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst6~0_combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\BidirBus[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst6~combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\BidirBus[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst6~0_combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[4]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\BidirBus[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst6~combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\BidirBus[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst6~0_combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\BidirBus[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst6~0_combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\BidirBus[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst~combout\,
	oe => \OenSUM~input_o\,
	devoe => ww_devoe,
	o => \BidirBus[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11|inst~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\RegA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\RegA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[10]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\RegA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\RegA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\RegA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RegA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\RegA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\RegA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\RegA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[3]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\RegA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\RegA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\RegA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst4~q\,
	devoe => ww_devoe,
	o => \RegA[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Suma[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11|inst6~combout\,
	devoe => ww_devoe,
	o => \Suma[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Suma[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10|inst6~0_combout\,
	devoe => ww_devoe,
	o => \Suma[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Suma[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst9|inst6~combout\,
	devoe => ww_devoe,
	o => \Suma[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Suma[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst8|inst6~0_combout\,
	devoe => ww_devoe,
	o => \Suma[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Suma[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst6~combout\,
	devoe => ww_devoe,
	o => \Suma[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Suma[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst6~0_combout\,
	devoe => ww_devoe,
	o => \Suma[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\Suma[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst6~combout\,
	devoe => ww_devoe,
	o => \Suma[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Suma[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst6~0_combout\,
	devoe => ww_devoe,
	o => \Suma[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\Suma[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst6~combout\,
	devoe => ww_devoe,
	o => \Suma[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\Suma[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst6~0_combout\,
	devoe => ww_devoe,
	o => \Suma[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\Suma[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst6~0_combout\,
	devoe => ww_devoe,
	o => \Suma[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Suma[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst~combout\,
	devoe => ww_devoe,
	o => \Suma[0]~output_o\);

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

-- Location: IOIBUF_X9_Y0_N22
\BidirBus[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(11),
	o => \BidirBus[11]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\IenA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IenA,
	o => \IenA~input_o\);

-- Location: CLKCTRL_G2
\IenA~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IenA~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IenA~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y1_N12
\inst1|inst11|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[11]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst11|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst11|inst2~1_combout\,
	datac => \BidirBus[11]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst11|inst2~1_combout\);

-- Location: FF_X9_Y1_N13
\inst1|inst11|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst11|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|inst4~q\);

-- Location: IOIBUF_X0_Y11_N22
\B[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\IenB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IenB,
	o => \IenB~input_o\);

-- Location: CLKCTRL_G3
\IenB~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IenB~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IenB~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y1_N8
\inst2|inst10|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[10]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst10|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst10|inst2~1_combout\,
	datac => \B[10]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst10|inst2~1_combout\);

-- Location: FF_X9_Y1_N9
\inst2|inst10|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst10|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10|inst4~q\);

-- Location: IOIBUF_X7_Y0_N22
\B[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\inst2|inst8|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst8|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[8]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst8|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst8|inst2~1_combout\,
	datac => \B[8]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst8|inst2~1_combout\);

-- Location: FF_X8_Y1_N25
\inst2|inst8|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst8|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|inst4~q\);

-- Location: IOIBUF_X18_Y0_N15
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\inst2|inst6|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst6|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[6]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst6|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|inst2~1_combout\,
	datac => \B[6]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst6|inst2~1_combout\);

-- Location: FF_X17_Y1_N1
\inst2|inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst6|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|inst4~q\);

-- Location: IOIBUF_X32_Y24_N15
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X32_Y20_N24
\inst2|inst5|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst5|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[5]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst5|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst5|inst2~1_combout\,
	datac => \B[5]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst5|inst2~1_combout\);

-- Location: FF_X32_Y20_N25
\inst2|inst5|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst5|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|inst4~q\);

-- Location: IOIBUF_X34_Y20_N15
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X33_Y20_N24
\inst2|inst4|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[4]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst4|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst4|inst2~1_combout\,
	datac => \B[4]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst4|inst2~1_combout\);

-- Location: FF_X33_Y20_N25
\inst2|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst4|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|inst4~q\);

-- Location: IOIBUF_X34_Y19_N1
\BidirBus[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(3),
	o => \BidirBus[3]~input_o\);

-- Location: LCCOMB_X33_Y20_N16
\inst1|inst3|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & (\BidirBus[3]~input_o\)) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & ((\inst1|inst3|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirBus[3]~input_o\,
	datab => \inst1|inst3|inst2~1_combout\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst3|inst2~1_combout\);

-- Location: FF_X33_Y20_N17
\inst1|inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst3|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst4~q\);

-- Location: IOIBUF_X34_Y16_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X33_Y20_N2
\inst2|inst2|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[2]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst2|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst2~1_combout\,
	datac => \B[2]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst2|inst2~1_combout\);

-- Location: FF_X33_Y20_N3
\inst2|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst2|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|inst4~q\);

-- Location: IOIBUF_X25_Y0_N8
\BidirBus[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(0),
	o => \BidirBus[0]~input_o\);

-- Location: LCCOMB_X25_Y1_N26
\inst1|inst|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[0]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst2~1_combout\,
	datac => \BidirBus[0]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst|inst2~1_combout\);

-- Location: FF_X25_Y1_N27
\inst1|inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|inst4~q\);

-- Location: IOIBUF_X25_Y0_N1
\BidirBus[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(1),
	o => \BidirBus[1]~input_o\);

-- Location: LCCOMB_X25_Y1_N30
\inst1|inst1|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[1]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst1|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2~1_combout\,
	datac => \BidirBus[1]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst1|inst2~1_combout\);

-- Location: FF_X25_Y1_N31
\inst1|inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst4~q\);

-- Location: IOIBUF_X25_Y0_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X25_Y1_N24
\inst2|inst|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[0]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst2~1_combout\,
	datac => \B[0]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst|inst2~1_combout\);

-- Location: FF_X25_Y1_N25
\inst2|inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4~q\);

-- Location: IOIBUF_X28_Y0_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X25_Y1_N12
\inst2|inst1|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[1]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst1|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|inst2~1_combout\,
	datac => \B[1]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst1|inst2~1_combout\);

-- Location: FF_X25_Y1_N13
\inst2|inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst1|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|inst4~q\);

-- Location: LCCOMB_X25_Y1_N16
\inst|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~0_combout\ = (\inst1|inst1|inst4~q\ & ((\inst1|inst|inst4~q\) # ((\inst2|inst|inst4~q\) # (\inst2|inst1|inst4~q\)))) # (!\inst1|inst1|inst4~q\ & (\inst2|inst1|inst4~q\ & ((\inst1|inst|inst4~q\) # (\inst2|inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst4~q\,
	datab => \inst1|inst1|inst4~q\,
	datac => \inst2|inst|inst4~q\,
	datad => \inst2|inst1|inst4~q\,
	combout => \inst|inst1|inst~0_combout\);

-- Location: IOIBUF_X34_Y19_N15
\BidirBus[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(2),
	o => \BidirBus[2]~input_o\);

-- Location: LCCOMB_X33_Y20_N6
\inst1|inst2|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & (\BidirBus[2]~input_o\)) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & ((\inst1|inst2|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BidirBus[2]~input_o\,
	datac => \inst1|inst2|inst2~1_combout\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst2|inst2~1_combout\);

-- Location: FF_X33_Y20_N7
\inst1|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst2|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst4~q\);

-- Location: LCCOMB_X33_Y20_N20
\inst|inst2|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~1_combout\ = (\inst1|inst2|inst4~q\ & ((\inst2|inst2|inst4~q\) # (\inst|inst1|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst4~q\,
	datac => \inst|inst1|inst~0_combout\,
	datad => \inst1|inst2|inst4~q\,
	combout => \inst|inst2|inst~1_combout\);

-- Location: IOIBUF_X34_Y20_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X33_Y20_N26
\inst2|inst3|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & (\B[3]~input_o\)) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & ((\inst2|inst3|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst2|inst3|inst2~1_combout\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst3|inst2~1_combout\);

-- Location: FF_X33_Y20_N27
\inst2|inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst3|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|inst4~q\);

-- Location: LCCOMB_X33_Y20_N0
\inst|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~0_combout\ = (\inst2|inst2|inst4~q\ & \inst|inst1|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst4~q\,
	datac => \inst|inst1|inst~0_combout\,
	combout => \inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X33_Y20_N30
\inst|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~0_combout\ = (\inst1|inst3|inst4~q\ & ((\inst|inst2|inst~1_combout\) # ((\inst2|inst3|inst4~q\) # (\inst|inst2|inst~0_combout\)))) # (!\inst1|inst3|inst4~q\ & (\inst2|inst3|inst4~q\ & ((\inst|inst2|inst~1_combout\) # 
-- (\inst|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|inst4~q\,
	datab => \inst|inst2|inst~1_combout\,
	datac => \inst2|inst3|inst4~q\,
	datad => \inst|inst2|inst~0_combout\,
	combout => \inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X33_Y19_N0
\inst|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~0_combout\ = (\inst2|inst4|inst4~q\ & \inst|inst3|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst4|inst4~q\,
	datac => \inst|inst3|inst~0_combout\,
	combout => \inst|inst4|inst~0_combout\);

-- Location: IOIBUF_X34_Y17_N22
\BidirBus[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(4),
	o => \BidirBus[4]~input_o\);

-- Location: LCCOMB_X33_Y20_N4
\inst1|inst4|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[4]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst4|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|inst2~1_combout\,
	datac => \BidirBus[4]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst4|inst2~1_combout\);

-- Location: FF_X33_Y20_N5
\inst1|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst4|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst4~q\);

-- Location: LCCOMB_X33_Y20_N14
\inst|inst4|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~1_combout\ = (\inst1|inst4|inst4~q\ & ((\inst2|inst4|inst4~q\) # (\inst|inst3|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|inst4~q\,
	datac => \inst2|inst4|inst4~q\,
	datad => \inst|inst3|inst~0_combout\,
	combout => \inst|inst4|inst~1_combout\);

-- Location: IOIBUF_X34_Y17_N1
\BidirBus[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(5),
	o => \BidirBus[5]~input_o\);

-- Location: LCCOMB_X33_Y20_N28
\inst1|inst5|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[5]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst5|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst2~1_combout\,
	datac => \BidirBus[5]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst5|inst2~1_combout\);

-- Location: FF_X33_Y20_N29
\inst1|inst5|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst5|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst4~q\);

-- Location: LCCOMB_X33_Y20_N22
\inst|inst5|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst~0_combout\ = (\inst2|inst5|inst4~q\ & ((\inst|inst4|inst~0_combout\) # ((\inst|inst4|inst~1_combout\) # (\inst1|inst5|inst4~q\)))) # (!\inst2|inst5|inst4~q\ & (\inst1|inst5|inst4~q\ & ((\inst|inst4|inst~0_combout\) # 
-- (\inst|inst4|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|inst4~q\,
	datab => \inst|inst4|inst~0_combout\,
	datac => \inst|inst4|inst~1_combout\,
	datad => \inst1|inst5|inst4~q\,
	combout => \inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X17_Y1_N30
\inst|inst6|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst~0_combout\ = (\inst2|inst6|inst4~q\ & \inst|inst5|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|inst4~q\,
	datad => \inst|inst5|inst~0_combout\,
	combout => \inst|inst6|inst~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\BidirBus[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(7),
	o => \BidirBus[7]~input_o\);

-- Location: LCCOMB_X17_Y1_N22
\inst1|inst7|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst7|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & (\BidirBus[7]~input_o\)) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & ((\inst1|inst7|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirBus[7]~input_o\,
	datac => \inst1|inst7|inst2~1_combout\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst7|inst2~1_combout\);

-- Location: FF_X17_Y1_N23
\inst1|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst7|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|inst4~q\);

-- Location: IOIBUF_X16_Y0_N15
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X17_Y1_N28
\inst2|inst7|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst7|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & ((\B[7]~input_o\))) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & (\inst2|inst7|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|inst2~1_combout\,
	datac => \B[7]~input_o\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst7|inst2~1_combout\);

-- Location: FF_X17_Y1_N29
\inst2|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst7|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|inst4~q\);

-- Location: IOIBUF_X18_Y0_N8
\BidirBus[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(6),
	o => \BidirBus[6]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\inst1|inst6|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[6]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst6|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6|inst2~1_combout\,
	datac => \BidirBus[6]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst6|inst2~1_combout\);

-- Location: FF_X17_Y1_N25
\inst1|inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst6|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst4~q\);

-- Location: LCCOMB_X17_Y1_N18
\inst|inst6|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst~1_combout\ = (\inst1|inst6|inst4~q\ & ((\inst2|inst6|inst4~q\) # (\inst|inst5|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|inst4~q\,
	datac => \inst1|inst6|inst4~q\,
	datad => \inst|inst5|inst~0_combout\,
	combout => \inst|inst6|inst~1_combout\);

-- Location: LCCOMB_X17_Y1_N8
\inst|inst7|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7|inst~0_combout\ = (\inst1|inst7|inst4~q\ & ((\inst|inst6|inst~0_combout\) # ((\inst2|inst7|inst4~q\) # (\inst|inst6|inst~1_combout\)))) # (!\inst1|inst7|inst4~q\ & (\inst2|inst7|inst4~q\ & ((\inst|inst6|inst~0_combout\) # 
-- (\inst|inst6|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|inst~0_combout\,
	datab => \inst1|inst7|inst4~q\,
	datac => \inst2|inst7|inst4~q\,
	datad => \inst|inst6|inst~1_combout\,
	combout => \inst|inst7|inst~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\BidirBus[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(8),
	o => \BidirBus[8]~input_o\);

-- Location: LCCOMB_X9_Y1_N16
\inst1|inst8|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst8|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[8]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst8|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|inst2~1_combout\,
	datac => \BidirBus[8]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst8|inst2~1_combout\);

-- Location: FF_X9_Y1_N17
\inst1|inst8|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst8|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|inst4~q\);

-- Location: LCCOMB_X9_Y1_N30
\inst|inst8|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst~1_combout\ = (\inst1|inst8|inst4~q\ & ((\inst2|inst8|inst4~q\) # (\inst|inst7|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst8|inst4~q\,
	datac => \inst|inst7|inst~0_combout\,
	datad => \inst1|inst8|inst4~q\,
	combout => \inst|inst8|inst~1_combout\);

-- Location: IOIBUF_X9_Y0_N15
\BidirBus[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(9),
	o => \BidirBus[9]~input_o\);

-- Location: LCCOMB_X9_Y1_N0
\inst1|inst9|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst9|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[9]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst9|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|inst2~1_combout\,
	datac => \BidirBus[9]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst9|inst2~1_combout\);

-- Location: FF_X9_Y1_N1
\inst1|inst9|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst9|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|inst4~q\);

-- Location: LCCOMB_X9_Y1_N26
\inst|inst8|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst~0_combout\ = (\inst2|inst8|inst4~q\ & \inst|inst7|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst8|inst4~q\,
	datac => \inst|inst7|inst~0_combout\,
	combout => \inst|inst8|inst~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\B[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X10_Y1_N4
\inst2|inst9|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst9|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & (\B[9]~input_o\)) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & ((\inst2|inst9|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \inst2|inst9|inst2~1_combout\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst9|inst2~1_combout\);

-- Location: FF_X10_Y1_N5
\inst2|inst9|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst9|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst9|inst4~q\);

-- Location: LCCOMB_X9_Y1_N14
\inst|inst9|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|inst~0_combout\ = (\inst1|inst9|inst4~q\ & ((\inst|inst8|inst~1_combout\) # ((\inst|inst8|inst~0_combout\) # (\inst2|inst9|inst4~q\)))) # (!\inst1|inst9|inst4~q\ & (\inst2|inst9|inst4~q\ & ((\inst|inst8|inst~1_combout\) # 
-- (\inst|inst8|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst~1_combout\,
	datab => \inst1|inst9|inst4~q\,
	datac => \inst|inst8|inst~0_combout\,
	datad => \inst2|inst9|inst4~q\,
	combout => \inst|inst9|inst~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\BidirBus[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => BidirBus(10),
	o => \BidirBus[10]~input_o\);

-- Location: LCCOMB_X9_Y1_N6
\inst1|inst10|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10|inst2~1_combout\ = (GLOBAL(\IenA~inputclkctrl_outclk\) & ((\BidirBus[10]~input_o\))) # (!GLOBAL(\IenA~inputclkctrl_outclk\) & (\inst1|inst10|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst10|inst2~1_combout\,
	datac => \BidirBus[10]~input_o\,
	datad => \IenA~inputclkctrl_outclk\,
	combout => \inst1|inst10|inst2~1_combout\);

-- Location: FF_X9_Y1_N7
\inst1|inst10|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst10|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|inst4~q\);

-- Location: LCCOMB_X9_Y1_N28
\inst|inst10|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst~1_combout\ = (\inst1|inst10|inst4~q\ & ((\inst2|inst10|inst4~q\) # (\inst|inst9|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst10|inst4~q\,
	datac => \inst|inst9|inst~0_combout\,
	datad => \inst1|inst10|inst4~q\,
	combout => \inst|inst10|inst~1_combout\);

-- Location: LCCOMB_X9_Y1_N4
\inst|inst10|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst~0_combout\ = (\inst2|inst10|inst4~q\ & \inst|inst9|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst10|inst4~q\,
	datac => \inst|inst9|inst~0_combout\,
	combout => \inst|inst10|inst~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\B[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X9_Y1_N2
\inst2|inst11|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst11|inst2~1_combout\ = (GLOBAL(\IenB~inputclkctrl_outclk\) & (\B[11]~input_o\)) # (!GLOBAL(\IenB~inputclkctrl_outclk\) & ((\inst2|inst11|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \inst2|inst11|inst2~1_combout\,
	datad => \IenB~inputclkctrl_outclk\,
	combout => \inst2|inst11|inst2~1_combout\);

-- Location: FF_X9_Y1_N3
\inst2|inst11|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst11|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst11|inst4~q\);

-- Location: LCCOMB_X9_Y1_N20
\inst|inst11|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst6~combout\ = \inst1|inst11|inst4~q\ $ (\inst2|inst11|inst4~q\ $ (((\inst|inst10|inst~1_combout\) # (\inst|inst10|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11|inst4~q\,
	datab => \inst|inst10|inst~1_combout\,
	datac => \inst|inst10|inst~0_combout\,
	datad => \inst2|inst11|inst4~q\,
	combout => \inst|inst11|inst6~combout\);

-- Location: IOIBUF_X21_Y0_N15
\OenSUM~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OenSUM,
	o => \OenSUM~input_o\);

-- Location: LCCOMB_X9_Y1_N22
\inst|inst10|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst6~0_combout\ = \inst2|inst10|inst4~q\ $ (\inst|inst9|inst~0_combout\ $ (\inst1|inst10|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst10|inst4~q\,
	datac => \inst|inst9|inst~0_combout\,
	datad => \inst1|inst10|inst4~q\,
	combout => \inst|inst10|inst6~0_combout\);

-- Location: LCCOMB_X9_Y1_N24
\inst|inst9|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|inst6~combout\ = \inst1|inst9|inst4~q\ $ (\inst2|inst9|inst4~q\ $ (((\inst|inst8|inst~1_combout\) # (\inst|inst8|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst~1_combout\,
	datab => \inst1|inst9|inst4~q\,
	datac => \inst|inst8|inst~0_combout\,
	datad => \inst2|inst9|inst4~q\,
	combout => \inst|inst9|inst6~combout\);

-- Location: LCCOMB_X9_Y1_N10
\inst|inst8|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst6~0_combout\ = \inst2|inst8|inst4~q\ $ (\inst|inst7|inst~0_combout\ $ (\inst1|inst8|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst8|inst4~q\,
	datac => \inst|inst7|inst~0_combout\,
	datad => \inst1|inst8|inst4~q\,
	combout => \inst|inst8|inst6~0_combout\);

-- Location: LCCOMB_X17_Y1_N26
\inst|inst7|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7|inst6~combout\ = \inst1|inst7|inst4~q\ $ (\inst2|inst7|inst4~q\ $ (((\inst|inst6|inst~0_combout\) # (\inst|inst6|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|inst~0_combout\,
	datab => \inst1|inst7|inst4~q\,
	datac => \inst2|inst7|inst4~q\,
	datad => \inst|inst6|inst~1_combout\,
	combout => \inst|inst7|inst6~combout\);

-- Location: LCCOMB_X17_Y1_N20
\inst|inst6|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst6~0_combout\ = \inst2|inst6|inst4~q\ $ (\inst1|inst6|inst4~q\ $ (\inst|inst5|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|inst4~q\,
	datac => \inst1|inst6|inst4~q\,
	datad => \inst|inst5|inst~0_combout\,
	combout => \inst|inst6|inst6~0_combout\);

-- Location: LCCOMB_X33_Y20_N12
\inst|inst5|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst6~combout\ = \inst2|inst5|inst4~q\ $ (\inst1|inst5|inst4~q\ $ (((\inst|inst4|inst~0_combout\) # (\inst|inst4|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|inst4~q\,
	datab => \inst|inst4|inst~0_combout\,
	datac => \inst|inst4|inst~1_combout\,
	datad => \inst1|inst5|inst4~q\,
	combout => \inst|inst5|inst6~combout\);

-- Location: LCCOMB_X33_Y20_N10
\inst|inst4|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst6~0_combout\ = \inst1|inst4|inst4~q\ $ (\inst2|inst4|inst4~q\ $ (\inst|inst3|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|inst4~q\,
	datac => \inst2|inst4|inst4~q\,
	datad => \inst|inst3|inst~0_combout\,
	combout => \inst|inst4|inst6~0_combout\);

-- Location: LCCOMB_X33_Y20_N8
\inst|inst3|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6~combout\ = \inst1|inst3|inst4~q\ $ (\inst2|inst3|inst4~q\ $ (((\inst|inst2|inst~1_combout\) # (\inst|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|inst4~q\,
	datab => \inst|inst2|inst~1_combout\,
	datac => \inst2|inst3|inst4~q\,
	datad => \inst|inst2|inst~0_combout\,
	combout => \inst|inst3|inst6~combout\);

-- Location: LCCOMB_X33_Y20_N18
\inst|inst2|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst6~0_combout\ = \inst2|inst2|inst4~q\ $ (\inst|inst1|inst~0_combout\ $ (\inst1|inst2|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst4~q\,
	datac => \inst|inst1|inst~0_combout\,
	datad => \inst1|inst2|inst4~q\,
	combout => \inst|inst2|inst6~0_combout\);

-- Location: LCCOMB_X25_Y1_N10
\inst|inst1|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst6~0_combout\ = \inst1|inst1|inst4~q\ $ (\inst2|inst1|inst4~q\ $ (((\inst1|inst|inst4~q\) # (\inst2|inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst4~q\,
	datab => \inst1|inst1|inst4~q\,
	datac => \inst2|inst|inst4~q\,
	datad => \inst2|inst1|inst4~q\,
	combout => \inst|inst1|inst6~0_combout\);

-- Location: LCCOMB_X25_Y1_N20
\inst|inst|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst~combout\ = (\inst1|inst|inst4~q\ & \inst2|inst|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst4~q\,
	datac => \inst2|inst|inst4~q\,
	combout => \inst|inst|inst~combout\);

-- Location: LCCOMB_X9_Y1_N18
\inst|inst11|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst~0_combout\ = (\inst1|inst11|inst4~q\ & ((\inst|inst10|inst~1_combout\) # ((\inst|inst10|inst~0_combout\) # (\inst2|inst11|inst4~q\)))) # (!\inst1|inst11|inst4~q\ & (\inst2|inst11|inst4~q\ & ((\inst|inst10|inst~1_combout\) # 
-- (\inst|inst10|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11|inst4~q\,
	datab => \inst|inst10|inst~1_combout\,
	datac => \inst|inst10|inst~0_combout\,
	datad => \inst2|inst11|inst4~q\,
	combout => \inst|inst11|inst~0_combout\);

ww_C <= \C~output_o\;

ww_RegA(11) <= \RegA[11]~output_o\;

ww_RegA(10) <= \RegA[10]~output_o\;

ww_RegA(9) <= \RegA[9]~output_o\;

ww_RegA(8) <= \RegA[8]~output_o\;

ww_RegA(7) <= \RegA[7]~output_o\;

ww_RegA(6) <= \RegA[6]~output_o\;

ww_RegA(5) <= \RegA[5]~output_o\;

ww_RegA(4) <= \RegA[4]~output_o\;

ww_RegA(3) <= \RegA[3]~output_o\;

ww_RegA(2) <= \RegA[2]~output_o\;

ww_RegA(1) <= \RegA[1]~output_o\;

ww_RegA(0) <= \RegA[0]~output_o\;

ww_Suma(11) <= \Suma[11]~output_o\;

ww_Suma(10) <= \Suma[10]~output_o\;

ww_Suma(9) <= \Suma[9]~output_o\;

ww_Suma(8) <= \Suma[8]~output_o\;

ww_Suma(7) <= \Suma[7]~output_o\;

ww_Suma(6) <= \Suma[6]~output_o\;

ww_Suma(5) <= \Suma[5]~output_o\;

ww_Suma(4) <= \Suma[4]~output_o\;

ww_Suma(3) <= \Suma[3]~output_o\;

ww_Suma(2) <= \Suma[2]~output_o\;

ww_Suma(1) <= \Suma[1]~output_o\;

ww_Suma(0) <= \Suma[0]~output_o\;

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


