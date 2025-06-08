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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Sun Jun  8 02:39:11 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Prueba IS 
	PORT
	(
		y0 :  IN  STD_LOGIC;
		y1 :  IN  STD_LOGIC;
		x1 :  IN  STD_LOGIC;
		x0 :  IN  STD_LOGIC;
		z0 :  OUT  STD_LOGIC;
		z1 :  OUT  STD_LOGIC;
		z2 :  OUT  STD_LOGIC;
		z3 :  OUT  STD_LOGIC
	);
END Prueba;

ARCHITECTURE bdf_type OF Prueba IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



z0 <= x0 AND y1;


z2 <= y1 AND SYNTHESIZED_WIRE_0;


z1 <= y1 AND y0 AND SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_0 <= NOT(y1 AND y0);


SYNTHESIZED_WIRE_1 <= NOT(y1 AND x0);


z3 <= x0 AND x1 AND y0 AND y1;


END bdf_type;