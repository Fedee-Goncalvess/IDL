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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Sun Jun  8 20:38:58 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY multiplicador2bitsBSS IS 
	PORT
	(
		ex1 :  IN  STD_LOGIC;
		ex0 :  IN  STD_LOGIC;
		ey1 :  IN  STD_LOGIC;
		ey0 :  IN  STD_LOGIC;
		z0 :  OUT  STD_LOGIC;
		z1 :  OUT  STD_LOGIC;
		z2 :  OUT  STD_LOGIC;
		z3 :  OUT  STD_LOGIC
	);
END multiplicador2bitsBSS;

ARCHITECTURE bdf_type OF multiplicador2bitsBSS IS 

SIGNAL	x0 :  STD_LOGIC;
SIGNAL	x1 :  STD_LOGIC;
SIGNAL	y0 :  STD_LOGIC;
SIGNAL	y1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



z0 <= ex0 AND y0;


z3 <= x1 AND x0 AND y1 AND y0;


SYNTHESIZED_WIRE_1 <= NOT(y0 AND x1);


z2 <= x1 AND y1 AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_0 <= NOT(y0 AND x0);


SYNTHESIZED_WIRE_3 <= y1 AND x0 AND SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_4 <= x1 AND y0 AND SYNTHESIZED_WIRE_2;


z1 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_2 <= NOT(y1 AND x0);

y0 <= ey0;
y1 <= ey1;
x1 <= ex1;

END bdf_type;