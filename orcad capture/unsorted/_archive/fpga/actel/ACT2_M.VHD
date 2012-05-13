--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--		  			VHDL Macro Simulation Library for Actel ACT2 Family
-- File:	  		ACT2_M.VHD
-- Date:	  		August 28, 1997
-- Version:		v7.10
-- Resource:	Actel Macro Library Guide, 1995
                              
-- Author History	|Last Touched	|Reason:
--Brian J. Smith	|02/20/98		| Modified the following list of models to 
--						| use scalars instead of vectors. This was
--						| done so that the list of models could be
--						| used with EDIF 200 output as well as VHDL
--						| (currently our EDIF 200 doesn't output
--						| vectors as does VHDL): FCTD16C, FCTD8A,
--						| FCTD8B, FCTU16C, FCTU8A, FCTU8B, VAD16C,
--						| VADC16CR, VCTD16C, VAD16CR, and VADC16C.


--***************************************************************************
-- ACTEL ACT2 MACRO SIMULATION MODELS

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PRD9A IS PORT (
	D7 : IN std_logic;
	D6 : IN std_logic;
	D5 : IN std_logic;
	D4 : IN std_logic;
	D3 : IN std_logic;
	D2 : IN std_logic;
	D1 : IN std_logic;
	D0 : IN std_logic;
	D8 : IN std_logic;
	DB8 : IN std_logic;
	DB7 : IN std_logic;
	DB6 : IN std_logic;
	EVEN : OUT std_logic;
	ODD : OUT std_logic
); END PRD9A;



ARCHITECTURE STRUCTURE OF PRD9A IS

-- COMPONENTS

COMPONENT mx4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00014 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00001 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : mx4	PORT MAP(
	D0 => D6, 
	D1 => DB6, 
	D2 => DB6, 
	D3 => D6, 
	S0 => D0, 
	S1 => D1, 
	Y => N00001
);
U2 : mx4	PORT MAP(
	D0 => D7, 
	D1 => DB7, 
	D2 => DB7, 
	D3 => D7, 
	S0 => D2, 
	S1 => D3, 
	Y => N00008
);
U3 : mx4	PORT MAP(
	D0 => N00025, 
	D1 => N00014, 
	D2 => N00014, 
	D3 => N00025, 
	S0 => N00001, 
	S1 => N00008, 
	Y => ODD
);
U4 : mx4	PORT MAP(
	D0 => D8, 
	D1 => DB8, 
	D2 => DB8, 
	D3 => D8, 
	S0 => D4, 
	S1 => D5, 
	Y => N00025
);
U5 : mx4	PORT MAP(
	D0 => DB8, 
	D1 => D8, 
	D2 => D8, 
	D3 => DB8, 
	S0 => D4, 
	S1 => D5, 
	Y => N00014
);
U6 : mx4	PORT MAP(
	D0 => N00014, 
	D1 => N00025, 
	D2 => N00025, 
	D3 => N00014, 
	S0 => N00001, 
	S1 => N00008, 
	Y => EVEN
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY REGE8A IS PORT (
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	D3 : IN std_logic;
	CLR : IN std_logic;
	D4 : IN std_logic;
	PRE : IN std_logic;
	D5 : IN std_logic;
	D2 : IN std_logic;
	D0 : IN std_logic;
	D6 : IN std_logic;
	D1 : IN std_logic;
	D7 : IN std_logic;
	E : IN std_logic;
	CLK : IN std_logic
); END REGE8A;



ARCHITECTURE STRUCTURE OF REGE8A IS

-- COMPONENTS

COMPONENT xa1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT dfpc
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT and2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00049 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : xa1	PORT MAP(
	A => PRE, 
	B => CLR, 
	Y => N00017, 
	C => N00056
);
U2 : dfpc	PORT MAP(
	D => D0, 
	Q => Q0, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U3 : dfpc	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U4 : dfpc	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U5 : dfpc	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U6 : dfpc	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => N00017, 
	PRE => orcad_unused, 
	CLR => CLR
);
U7 : dfpc	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U8 : dfpc	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U9 : dfpc	PORT MAP(
	D => D7, 
	Q => Q7, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U10 : and2	PORT MAP(
	A => CLK, 
	B => E, 
	Y => N00056
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY REGE8B IS PORT (
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	D3 : IN std_logic;
	CLR : IN std_logic;
	D4 : IN std_logic;
	PRE : IN std_logic;
	D5 : IN std_logic;
	D2 : IN std_logic;
	D0 : IN std_logic;
	D6 : IN std_logic;
	D1 : IN std_logic;
	D7 : IN std_logic;
	E : IN std_logic;
	CLK : IN std_logic
); END REGE8B;



ARCHITECTURE STRUCTURE OF REGE8B IS

-- COMPONENTS

COMPONENT xa1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT dfpc
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT and2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00056 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00017 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : xa1	PORT MAP(
	A => PRE, 
	B => CLR, 
	Y => N00017, 
	C => N00056
);
U2 : dfpc	PORT MAP(
	D => D0, 
	Q => Q0, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U3 : dfpc	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U4 : dfpc	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U5 : dfpc	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U6 : dfpc	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U7 : dfpc	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U8 : dfpc	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U9 : dfpc	PORT MAP(
	D => D7, 
	Q => Q7, 
	CLK => N00017, 
	PRE => PRE, 
	CLR => CLR
);
U10 : and2	PORT MAP(
	A => CLK, 
	B => E, 
	Y => N00056
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NMMHL IS PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic
); END NMMHL;



ARCHITECTURE STRUCTURE OF NMMHL IS

-- COMPONENTS

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA2A
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV4	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	I3 : IN std_logic;
	O3 : OUT std_logic
); END COMPONENT;

COMPONENT INV3	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00078 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL XN3 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00092 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA1A	PORT MAP(
	A => VDD, 
	B => N00097, 
	CI => N00091, 
	CO => N00101, 
	S => P8
);
U14 : FA1A	PORT MAP(
	A => N00101, 
	B => N00098, 
	CI => N00092, 
	CO => N00102, 
	S => P9
);
U17 : AND2	PORT MAP(
	A => Y0, 
	B => X0, 
	Y => P4
);
U18 : AND2	PORT MAP(
	A => Y0, 
	B => X1, 
	Y => N00048
);
U19 : AND2	PORT MAP(
	A => Y0, 
	B => X2, 
	Y => N00049
);
U1 : INV	PORT MAP(
	A => N00096, 
	Y => P7
);
U2 : INV	PORT MAP(
	A => N00102, 
	Y => N00094
);
U3 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN1, 
	B => N00048, 
	CI => VDD, 
	CO => N00063, 
	S => P5
);
U4 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN1, 
	B => N00049, 
	CI => VDD, 
	CO => N00064, 
	S => N00069
);
U20 : AND2A	PORT MAP(
	A => Y0, 
	B => X3, 
	Y => N00040
);
U5 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN1, 
	B => N00040, 
	CI => VDD, 
	CO => N00065, 
	S => N00070
);
U21 : AND2A	PORT MAP(
	A => Y1, 
	B => X3, 
	Y => N00041
);
U6 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN2, 
	B => N00069, 
	CI => N00063, 
	CO => N00077, 
	S => P6
);
U22 : AND2A	PORT MAP(
	A => Y2, 
	B => X3, 
	Y => N00042
);
U7 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN2, 
	B => N00070, 
	CI => N00064, 
	CO => N00078, 
	S => N00081
);
U23 : VCC	PORT MAP(
	Y => VDD
);
U8 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN2, 
	B => N00041, 
	CI => N00065, 
	CO => N00079, 
	S => N00082
);
U9 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN3, 
	B => N00081, 
	CI => N00077, 
	CO => N00091, 
	S => N00096
);
U10 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN3, 
	B => N00082, 
	CI => N00078, 
	CO => N00092, 
	S => N00097
);
U11 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN3, 
	B => N00042, 
	CI => N00079, 
	CO => N00093, 
	S => N00098
);
U12 : FA2A	PORT MAP(
	A0 => XN3, 
	A1 => Y3, 
	B => N00094, 
	CI => N00093, 
	CO => P11, 
	S => P10
);
U15 : INV4	PORT MAP(
	I2 => X2, 
	I1 => X1, 
	I0 => X0, 
	O0 => XN0, 
	O1 => XN1, 
	O2 => XN2, 
	I3 => X3, 
	O3 => XN3
);
U16 : INV3	PORT MAP(
	I2 => Y3, 
	I1 => Y2, 
	I0 => Y1, 
	O0 => YN1, 
	O1 => YN2, 
	O2 => YN3
);
END STRUCTURE;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VAD16CR IS PORT (
	CIN : IN std_logic;
	CO2_0 : OUT std_logic;
	CO2_1 : OUT std_logic;
	CO : OUT std_logic;
	CO14_1 : OUT std_logic;
	CO14_0 : OUT std_logic;
	CO12_1 : OUT std_logic;
	CO12_0 : OUT std_logic;
	CO10_1 : OUT std_logic;
	CO10_0 : OUT std_logic;
	CO8_1 : OUT std_logic;
	CO8_0 : OUT std_logic;
	CO6_1 : OUT std_logic;
	CO6_0 : OUT std_logic;
	CO4B : OUT std_logic;
	CO0B : OUT std_logic;
	CO4A : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic
); END VAD16CR;



ARCHITECTURE STRUCTURE OF VAD16CR IS

-- COMPONENTS

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2B
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MAJ3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL CO0A : std_logic;
SIGNAL CO10_A : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL CO10_B : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL CO15_1 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL CO4_0 : std_logic;
SIGNAL CO15_B : std_logic;
SIGNAL CO15_0 : std_logic;
SIGNAL CO15_A : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL CO4_1 : std_logic;
SIGNAL N00117 : std_logic;

-- GATE INSTANCES

BEGIN
CO12_0<=N00051;
CO12_1<=N00036;
CO14_0<=N00034;
CO14_1<=N00032;
CO2_0<=N00119;
CO4A<=N00053;
CO2_1<=N00117;
CO6_0<=N00095;
CO6_1<=N00083;
CO8_0<=N00081;
CO8_1<=N00080;
CO10_0<=N00050;
CO10_1<=N00048;
U13 : CS2	PORT MAP(
	C => CO15_B, 
	B => N00032, 
	D => CO15_A, 
	A => N00034, 
	S => N00036, 
	Y => CO15_1
);
U14 : AND2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => CO15_B
);
U15 : OR2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => CO15_A
);
U16 : CY2A	PORT MAP(
	B1 => B14, 
	A1 => A14, 
	B0 => B13, 
	A0 => A13, 
	Y => N00034
);
U17 : CY2B	PORT MAP(
	B1 => B14, 
	A1 => A14, 
	B0 => B13, 
	A0 => A13, 
	Y => N00032
);
U18 : CY2B	PORT MAP(
	B1 => B12, 
	A1 => A12, 
	B0 => B11, 
	A0 => A11, 
	Y => N00036
);
U19 : CY2A	PORT MAP(
	B1 => B12, 
	A1 => A12, 
	B0 => B11, 
	A0 => A11, 
	Y => N00051
);
U1 : MAJ3	PORT MAP(
	A => A0, 
	B => B0, 
	C => CIN, 
	Y => CO0B
);
U2 : CS2	PORT MAP(
	C => CO4_0, 
	B => N00117, 
	D => CO4_1, 
	A => N00119, 
	S => CO0A, 
	Y => CO4B
);
U3 : CY2B	PORT MAP(
	B1 => B2, 
	A1 => A2, 
	B0 => B1, 
	A0 => A1, 
	Y => N00117
);
U4 : CY2A	PORT MAP(
	B1 => B2, 
	A1 => A2, 
	B0 => B1, 
	A0 => A1, 
	Y => N00119
);
U20 : CS2	PORT MAP(
	C => CO4_0, 
	B => N00117, 
	D => CO4_1, 
	A => N00119, 
	S => CO0A, 
	Y => N00053
);
U5 : CY2A	PORT MAP(
	B1 => B4, 
	A1 => A4, 
	B0 => B3, 
	A0 => A3, 
	Y => CO4_0
);
U21 : CY2B	PORT MAP(
	B1 => B4, 
	A1 => A4, 
	B0 => B3, 
	A0 => A3, 
	Y => CO4_1
);
U6 : CY2A	PORT MAP(
	B1 => B6, 
	A1 => A6, 
	B0 => B5, 
	A0 => A5, 
	Y => N00095
);
U22 : CS2	PORT MAP(
	C => CO10_A, 
	B => N00080, 
	D => CO10_B, 
	A => N00081, 
	S => N00083, 
	Y => N00048
);
U7 : CY2B	PORT MAP(
	B1 => B6, 
	A1 => A6, 
	B0 => B5, 
	A0 => A5, 
	Y => N00083
);
U23 : CS2	PORT MAP(
	C => CO10_A, 
	B => N00080, 
	D => CO10_B, 
	A => N00081, 
	S => N00095, 
	Y => N00050
);
U8 : CY2B	PORT MAP(
	B1 => B8, 
	A1 => A8, 
	B0 => B7, 
	A0 => A7, 
	Y => N00080
);
U24 : CS2	PORT MAP(
	C => CO15_0, 
	B => N00048, 
	D => CO15_1, 
	A => N00050, 
	S => N00053, 
	Y => CO
);
U9 : CY2A	PORT MAP(
	B1 => B8, 
	A1 => A8, 
	B0 => B7, 
	A0 => A7, 
	Y => N00081
);
U25 : MAJ3	PORT MAP(
	A => A0, 
	B => B0, 
	C => CIN, 
	Y => CO0A
);
U10 : CY2B	PORT MAP(
	B1 => B10, 
	A1 => A10, 
	B0 => B9, 
	A0 => A9, 
	Y => CO10_B
);
U11 : CY2A	PORT MAP(
	B1 => B10, 
	A1 => A10, 
	B0 => B9, 
	A0 => A9, 
	Y => CO10_A
);
U12 : CS2	PORT MAP(
	C => CO15_B, 
	B => N00032, 
	D => CO15_A, 
	A => N00034, 
	S => N00051, 
	Y => CO15_0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA55 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	Y : OUT std_logic
); END TA55;



ARCHITECTURE STRUCTURE OF TA55 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND4	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	D => D, 
	Y => N00007
);
U2 : AND4	PORT MAP(
	A => E, 
	B => F, 
	C => G, 
	D => H, 
	Y => N00011
);
U3 : NOR2	PORT MAP(
	A => N00007, 
	B => N00011, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA175 IS PORT (
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	CLR : IN std_logic;
	CLK : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic
); END TA175;



ARCHITECTURE STRUCTURE OF TA175 IS

-- COMPONENTS

COMPONENT DFC1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DFC1B	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => CLK, 
	CLR => CLR
);
U2 : DFC1B	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => CLK, 
	CLR => CLR
);
U3 : DFC1B	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => CLK, 
	CLR => CLR
);
U4 : DFC1B	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => CLK, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA164 IS PORT (
	CLR : IN std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	QE : OUT std_logic;
	QF : OUT std_logic;
	QG : OUT std_logic;
	QH : OUT std_logic
); END TA164;



ARCHITECTURE STRUCTURE OF TA164 IS

-- COMPONENTS

COMPONENT DFMB
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT DFC1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00013 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00011;
QB<=N00012;
QC<=N00013;
QD<=N00014;
QE<=N00015;
QF<=N00016;
QG<=N00018;
U1 : DFMB	PORT MAP(
	A => N00017, 
	B => A, 
	Q => N00011, 
	CLK => CLK, 
	S => B, 
	CLR => CLR
);
U2 : DFC1B	PORT MAP(
	D => N00011, 
	Q => N00012, 
	CLK => CLK, 
	CLR => CLR
);
U3 : DFC1B	PORT MAP(
	D => N00012, 
	Q => N00013, 
	CLK => CLK, 
	CLR => CLR
);
U4 : DFC1B	PORT MAP(
	D => N00013, 
	Q => N00014, 
	CLK => CLK, 
	CLR => CLR
);
U5 : DFC1B	PORT MAP(
	D => N00014, 
	Q => N00015, 
	CLK => CLK, 
	CLR => CLR
);
U6 : DFC1B	PORT MAP(
	D => N00015, 
	Q => N00016, 
	CLK => CLK, 
	CLR => CLR
);
U7 : DFC1B	PORT MAP(
	D => N00016, 
	Q => N00018, 
	CLK => CLK, 
	CLR => CLR
);
U8 : DFC1B	PORT MAP(
	D => N00018, 
	Q => QH, 
	CLK => CLK, 
	CLR => CLR
);
U9 : GND	PORT MAP(
	Y => N00017
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FADD11A IS PORT (
	A10 : IN std_logic;
	B10 : IN std_logic;
	A9 : IN std_logic;
	B9 : IN std_logic;
	A8 : IN std_logic;
	B8 : IN std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	A6 : IN std_logic;
	B6 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	CIN : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic
); END FADD11A;



ARCHITECTURE STRUCTURE OF FADD11A IS

-- COMPONENTS

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT MXC1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT CSA1	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic
); END COMPONENT;

COMPONENT CSA3	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S02 : OUT std_logic;
	S12 : OUT std_logic
); END COMPONENT;

COMPONENT CSA2A	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END COMPONENT;

COMPONENT CSA3B	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S02 : OUT std_logic;
	S12 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00029 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00070 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : MX2	PORT MAP(
	A => N00065, 
	B => N00069, 
	S => N00030, 
	Y => S4
);
U14 : MX2	PORT MAP(
	A => N00072, 
	B => N00073, 
	S => N00070, 
	Y => N00030
);
U15 : MX2	PORT MAP(
	A => N00075, 
	B => N00079, 
	S => N00070, 
	Y => S3
);
U16 : MX2	PORT MAP(
	A => N00081, 
	B => N00083, 
	S => N00070, 
	Y => S2
);
U17 : FA1A	PORT MAP(
	A => B1, 
	B => A1, 
	CI => N00087, 
	CO => N00070, 
	S => S1
);
U18 : FA1A	PORT MAP(
	A => B0, 
	B => A0, 
	CI => CIN, 
	CO => N00087, 
	S => S0
);
U1 : MXC1	PORT MAP(
	A => N00028, 
	B => N00029, 
	D => N00027, 
	C => N00026, 
	Y => N00020, 
	S => N00030
);
U6 : MX2	PORT MAP(
	A => N00022, 
	B => N00025, 
	S => N00020, 
	Y => S10
);
U7 : MX2	PORT MAP(
	A => N00032, 
	B => N00034, 
	S => N00031, 
	Y => S9
);
U8 : MX2	PORT MAP(
	A => N00036, 
	B => N00039, 
	S => N00031, 
	Y => S8
);
U9 : MX2	PORT MAP(
	A => N00044, 
	B => N00048, 
	S => N00031, 
	Y => S7
);
U10 : MX2	PORT MAP(
	A => N00028, 
	B => N00029, 
	S => N00030, 
	Y => N00031
);
U11 : MX2	PORT MAP(
	A => N00053, 
	B => N00055, 
	S => N00030, 
	Y => S6
);
U12 : MX2	PORT MAP(
	A => N00057, 
	B => N00060, 
	S => N00030, 
	Y => S5
);
U3 : CSA1	PORT MAP(
	A0 => A10, 
	B0 => B10, 
	S00 => N00025, 
	S10 => N00022, 
	C0 => OPEN, 
	C1 => OPEN
);
U4 : CSA3	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	S00 => N00069, 
	S10 => N00065, 
	C0 => N00029, 
	C1 => N00028, 
	B1 => B5, 
	B0 => B4, 
	S01 => N00060, 
	S11 => N00057, 
	A2 => A6, 
	B2 => B6, 
	S02 => N00055, 
	S12 => N00053
);
U5 : CSA2A	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	S00 => N00083, 
	S10 => N00081, 
	C0 => N00073, 
	C1 => N00072, 
	B1 => B3, 
	B0 => B2, 
	S01 => N00079, 
	S11 => N00075
);
U2 : CSA3B	PORT MAP(
	A1 => A8, 
	A0 => A7, 
	S00 => N00048, 
	S10 => N00044, 
	C0 => N00027, 
	C1 => N00026, 
	B1 => B8, 
	B0 => B7, 
	S01 => N00039, 
	S11 => N00036, 
	A2 => A9, 
	B2 => B9, 
	S02 => N00034, 
	S12 => N00032
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA154 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y8 : OUT std_logic;
	Y9 : OUT std_logic;
	Y10 : OUT std_logic;
	Y11 : OUT std_logic;
	Y12 : OUT std_logic;
	Y13 : OUT std_logic;
	Y14 : OUT std_logic;
	Y15 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	G1 : IN std_logic;
	G2 : IN std_logic
); END TA154;



ARCHITECTURE STRUCTURE OF TA154 IS

-- COMPONENTS

COMPONENT AND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00035 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00030 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2B	PORT MAP(
	A => G1, 
	B => G2, 
	Y => N00048
);
U14 : AND2B	PORT MAP(
	A => G2, 
	B => G1, 
	Y => N00049
);
U15 : NAND5C	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => N00035, 
	Y => Y0, 
	E => N00049
);
U16 : NAND5C	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y1, 
	E => N00049
);
U17 : NAND5C	PORT MAP(
	A => D, 
	B => C, 
	C => A, 
	D => B, 
	Y => Y2, 
	E => N00049
);
U18 : NAND5C	PORT MAP(
	A => D, 
	B => C, 
	C => N00033, 
	D => A, 
	Y => Y3, 
	E => N00049
);
U19 : NAND5C	PORT MAP(
	A => D, 
	B => B, 
	C => A, 
	D => C, 
	Y => Y4, 
	E => N00049
);
U1 : INV	PORT MAP(
	A => D, 
	Y => N00028
);
U2 : INV	PORT MAP(
	A => C, 
	Y => N00030
);
U3 : INV	PORT MAP(
	A => B, 
	Y => N00033
);
U4 : INV	PORT MAP(
	A => A, 
	Y => N00035
);
U20 : NAND5C	PORT MAP(
	A => D, 
	B => N00030, 
	C => B, 
	D => A, 
	Y => Y5, 
	E => N00049
);
U5 : NAND5C	PORT MAP(
	A => N00028, 
	B => N00030, 
	C => N00035, 
	D => B, 
	Y => Y15, 
	E => N00048
);
U21 : NAND5C	PORT MAP(
	A => D, 
	B => N00030, 
	C => A, 
	D => B, 
	Y => Y6, 
	E => N00049
);
U6 : NAND5C	PORT MAP(
	A => N00028, 
	B => N00030, 
	C => N00033, 
	D => N00035, 
	Y => Y14, 
	E => N00048
);
U22 : NAND5C	PORT MAP(
	A => D, 
	B => N00030, 
	C => N00033, 
	D => A, 
	Y => Y7, 
	E => N00049
);
U7 : NAND5C	PORT MAP(
	A => N00028, 
	B => N00030, 
	C => N00035, 
	D => N00033, 
	Y => Y13, 
	E => N00048
);
U8 : NAND5C	PORT MAP(
	A => N00028, 
	B => N00030, 
	C => B, 
	D => N00035, 
	Y => Y12, 
	E => N00048
);
U9 : NAND5C	PORT MAP(
	A => N00028, 
	B => N00033, 
	C => N00035, 
	D => N00030, 
	Y => Y11, 
	E => N00048
);
U10 : NAND5C	PORT MAP(
	A => N00028, 
	B => C, 
	C => N00033, 
	D => N00035, 
	Y => Y10, 
	E => N00048
);
U11 : NAND5C	PORT MAP(
	A => N00028, 
	B => N00035, 
	C => C, 
	D => N00033, 
	Y => Y9, 
	E => N00048
);
U12 : NAND5C	PORT MAP(
	A => N00028, 
	B => B, 
	C => A, 
	D => N00030, 
	Y => Y8, 
	E => N00048
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA195 IS PORT (
	CLR : IN std_logic;
	SHLD : IN std_logic;
	CLK : IN std_logic;
	K : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	J : IN std_logic;
	QDN : OUT std_logic
); END TA195;



ARCHITECTURE STRUCTURE OF TA195 IS

-- COMPONENTS

COMPONENT DFM6A
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT DFMB
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00021 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00009;
QB<=N00011;
QC<=N00015;
QD<=N00021;
U1 : DFM6A	PORT MAP(
	D0 => A, 
	D1 => A, 
	D2 => J, 
	D3 => K, 
	S0 => N00009, 
	S1 => SHLD, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00009
);
U2 : DFMB	PORT MAP(
	A => B, 
	B => N00009, 
	Q => N00011, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
U3 : DFMB	PORT MAP(
	A => C, 
	B => N00011, 
	Q => N00015, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
U4 : DFMB	PORT MAP(
	A => D, 
	B => N00015, 
	Q => N00021, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
U5 : INV	PORT MAP(
	A => N00021, 
	Y => QDN
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA151 IS PORT (
	EN : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Y : OUT std_logic;
	W : OUT std_logic
); END TA151;



ARCHITECTURE STRUCTURE OF TA151 IS

-- COMPONENTS

COMPONENT MX4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MX4	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	S0 => A, 
	S1 => B, 
	Y => N00014
);
U2 : MX4	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	S0 => A, 
	S1 => B, 
	Y => N00025
);
U3 : MX2	PORT MAP(
	A => N00014, 
	B => N00025, 
	S => C, 
	Y => N00017
);
U4 : AND2A	PORT MAP(
	A => EN, 
	B => N00017, 
	Y => Y
);
U5 : NAND2A	PORT MAP(
	A => EN, 
	B => N00017, 
	Y => W
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA3B IS PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S02 : OUT std_logic;
	S12 : OUT std_logic
); END CSA3B;



ARCHITECTURE STRUCTURE OF CSA3B IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00026 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00017 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00034, 
	CO => N00030, 
	S => S10
);
U2 : FA1A	PORT MAP(
	A => B1, 
	B => A1, 
	CI => N00030, 
	CO => N00026, 
	S => S11
);
U3 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00026, 
	CO => C1, 
	S => S12
);
U4 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00021, 
	CO => N00017, 
	S => S00
);
U5 : FA1A	PORT MAP(
	A => B1, 
	B => A1, 
	CI => N00017, 
	CO => N00013, 
	S => S01
);
U6 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00013, 
	CO => C0, 
	S => S02
);
U7 : VCC	PORT MAP(
	Y => N00021
);
U8 : GND	PORT MAP(
	Y => N00034
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA2A IS PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END CSA2A;



ARCHITECTURE STRUCTURE OF CSA2A IS

-- COMPONENTS

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00015 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00024 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1A	PORT MAP(
	A => B0, 
	B => A0, 
	CI => N00024, 
	CO => N00020, 
	S => S10
);
U2 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00020, 
	CO => C1, 
	S => S11
);
U3 : FA1A	PORT MAP(
	A => B0, 
	B => A0, 
	CI => N00015, 
	CO => N00011, 
	S => S00
);
U4 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00011, 
	CO => C0, 
	S => S01
);
U5 : GND	PORT MAP(
	Y => N00024
);
U6 : VCC	PORT MAP(
	Y => N00015
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CPROPB IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	CN : IN std_logic;
	S : OUT std_logic;
	CO1 : OUT std_logic;
	CO2 : OUT std_logic
); END CPROPB;



ARCHITECTURE STRUCTURE OF CPROPB IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	A => D, 
	Y => N00014
);
U2 : FA1B	PORT MAP(
	A => A, 
	B => B, 
	CI => N00014, 
	CO => N00009, 
	S => S
);
U3 : FA1A	PORT MAP(
	A => CN, 
	B => N00007, 
	CI => N00009, 
	CO => CO2, 
	S => CO1
);
U4 : GND	PORT MAP(
	Y => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA54 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	Y : OUT std_logic
); END TA54;



ARCHITECTURE STRUCTURE OF TA54 IS

-- COMPONENTS

COMPONENT NOR2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NOR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NOR2B	PORT MAP(
	A => G, 
	B => H, 
	Y => N00008
);
U2 : NOR2B	PORT MAP(
	A => E, 
	B => F, 
	Y => N00012
);
U3 : NOR2B	PORT MAP(
	A => B, 
	B => A, 
	Y => N00015
);
U4 : NAND2	PORT MAP(
	A => C, 
	B => D, 
	Y => N00010
);
U5 : NOR4A	PORT MAP(
	A => N00010, 
	B => N00012, 
	C => N00015, 
	D => N00008, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA273 IS PORT (
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	CLR : IN std_logic;
	CLK : IN std_logic;
	D1 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic
); END TA273;



ARCHITECTURE STRUCTURE OF TA273 IS

-- COMPONENTS

COMPONENT DFC1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DFC1B	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => CLK, 
	CLR => CLR
);
U2 : DFC1B	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => CLK, 
	CLR => CLR
);
U3 : DFC1B	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => CLK, 
	CLR => CLR
);
U4 : DFC1B	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => CLK, 
	CLR => CLR
);
U5 : DFC1B	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => CLK, 
	CLR => CLR
);
U6 : DFC1B	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => CLK, 
	CLR => CLR
);
U7 : DFC1B	PORT MAP(
	D => D7, 
	Q => Q7, 
	CLK => CLK, 
	CLR => CLR
);
U8 : DFC1B	PORT MAP(
	D => D8, 
	Q => Q8, 
	CLK => CLK, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA174 IS PORT (
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	CLR : IN std_logic;
	CLK : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic
); END TA174;



ARCHITECTURE STRUCTURE OF TA174 IS

-- COMPONENTS

COMPONENT DFC1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DFC1B	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => CLK, 
	CLR => CLR
);
U2 : DFC1B	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => CLK, 
	CLR => CLR
);
U3 : DFC1B	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => CLK, 
	CLR => CLR
);
U4 : DFC1B	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => CLK, 
	CLR => CLR
);
U5 : DFC1B	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => CLK, 
	CLR => CLR
);
U6 : DFC1B	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => CLK, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA194 IS PORT (
	CLR : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	SRSI : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	CLK : IN std_logic;
	SLSI : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic
); END TA194;



ARCHITECTURE STRUCTURE OF TA194 IS

-- COMPONENTS

COMPONENT MX4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFC1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00025 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00021 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00013;
QB<=N00012;
QC<=N00011;
QD<=N00010;
U1 : MX4	PORT MAP(
	D0 => N00013, 
	D1 => SRSI, 
	D2 => N00012, 
	D3 => A, 
	S0 => S0, 
	S1 => S1, 
	Y => N00019
);
U2 : MX4	PORT MAP(
	D0 => N00012, 
	D1 => N00013, 
	D2 => N00011, 
	D3 => B, 
	S0 => S0, 
	S1 => S1, 
	Y => N00021
);
U3 : MX4	PORT MAP(
	D0 => N00011, 
	D1 => N00012, 
	D2 => N00010, 
	D3 => C, 
	S0 => S0, 
	S1 => S1, 
	Y => N00023
);
U4 : DFC1B	PORT MAP(
	D => N00023, 
	Q => N00011, 
	CLK => CLK, 
	CLR => CLR
);
U5 : MX4	PORT MAP(
	D0 => N00010, 
	D1 => N00011, 
	D2 => SLSI, 
	D3 => D, 
	S0 => S0, 
	S1 => S1, 
	Y => N00025
);
U6 : DFC1B	PORT MAP(
	D => N00025, 
	Q => N00010, 
	CLK => CLK, 
	CLR => CLR
);
U7 : DFC1B	PORT MAP(
	D => N00019, 
	Q => N00013, 
	CLK => CLK, 
	CLR => CLR
);
U8 : DFC1B	PORT MAP(
	D => N00021, 
	Q => N00012, 
	CLK => CLK, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA161 IS PORT (
	CLR : IN std_logic;
	LD : IN std_logic;
	ENT : IN std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	ENP : IN std_logic;
	RCO : OUT std_logic
); END TA161;



ARCHITECTURE STRUCTURE OF TA161 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00016 : std_logic;
SIGNAL CEB : std_logic;
SIGNAL CED : std_logic;
SIGNAL GND : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL CEC : std_logic;
SIGNAL ENTP : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00013;
QB<=N00014;
QC<=N00016;
QD<=N00041;
U1 : INV	PORT MAP(
	A => N00013, 
	Y => CEB
);
U2 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D, 
	D1 => N00043, 
	D2 => D, 
	D3 => N00041, 
	S10 => CED, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00041
);
U3 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => C, 
	D1 => CED, 
	D2 => C, 
	D3 => N00016, 
	S10 => CEC, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00016
);
U4 : NAND2	PORT MAP(
	A => ENT, 
	B => ENP, 
	Y => ENTP
);
U5 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => A, 
	D1 => CEB, 
	D2 => A, 
	D3 => N00013, 
	S10 => GND, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00013
);
U6 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => B, 
	D1 => CEC, 
	D2 => B, 
	D3 => N00014, 
	S10 => CEB, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00014
);
U7 : NAND2	PORT MAP(
	A => N00013, 
	B => N00014, 
	Y => CEC
);
U8 : NAND3	PORT MAP(
	A => N00013, 
	B => N00014, 
	C => N00016, 
	Y => CED
);
U9 : INV	PORT MAP(
	A => N00041, 
	Y => N00043
);
U10 : AND3A	PORT MAP(
	A => CED, 
	B => N00041, 
	C => ENT, 
	Y => RCO
);
U11 : GND	PORT MAP(
	Y => GND
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA150 IS PORT (
	EN : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	W : OUT std_logic
); END TA150;



ARCHITECTURE STRUCTURE OF TA150 IS

-- COMPONENTS

COMPONENT MX4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00030 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00022 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MX4	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	S0 => A, 
	S1 => B, 
	Y => N00015
);
U2 : MX4	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	S0 => A, 
	S1 => B, 
	Y => N00022
);
U3 : MX4	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	S0 => A, 
	S1 => B, 
	Y => N00028
);
U4 : MX4	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	D2 => D14, 
	D3 => D15, 
	S0 => A, 
	S1 => B, 
	Y => N00030
);
U5 : MX4	PORT MAP(
	D0 => N00015, 
	D1 => N00022, 
	D2 => N00028, 
	D3 => N00030, 
	S0 => C, 
	S1 => D, 
	Y => N00027
);
U6 : AND2A	PORT MAP(
	A => EN, 
	B => N00027, 
	Y => W
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SUMX1A IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	Y : OUT std_logic
); END SUMX1A;



ARCHITECTURE STRUCTURE OF SUMX1A IS

-- COMPONENTS

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00014 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : CS2	PORT MAP(
	C => N00008, 
	B => N00014, 
	D => N00011, 
	A => N00015, 
	S => CI, 
	Y => Y
);
U2 : OR2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00014
);
U3 : AND2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00015
);
U4 : XNOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00011
);
U5 : XOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00008
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CPROPA IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	CN : IN std_logic;
	S : OUT std_logic;
	CO1 : OUT std_logic;
	CO2 : OUT std_logic
); END CPROPA;



ARCHITECTURE STRUCTURE OF CPROPA IS

-- COMPONENTS

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1A	PORT MAP(
	A => A, 
	B => D, 
	CI => B, 
	CO => N00008, 
	S => S
);
U2 : FA1A	PORT MAP(
	A => CN, 
	B => N00006, 
	CI => N00008, 
	CO => CO2, 
	S => CO1
);
U3 : GND	PORT MAP(
	Y => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VADC16SU IS PORT (
	A13 : IN std_logic;
	B13 : IN std_logic;
	A14 : IN std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	B14 : IN std_logic;
	A15 : IN std_logic;
	B15 : IN std_logic;
	CO4A : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	CO12_0 : IN std_logic;
	CO12_1 : IN std_logic;
	CO14_0 : IN std_logic;
	CO14_1 : IN std_logic;
	S15 : OUT std_logic
); END VADC16SU;



ARCHITECTURE STRUCTURE OF VADC16SU IS

-- COMPONENTS

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00059 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00038 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : CS2	PORT MAP(
	C => N00032, 
	B => CO14_1, 
	D => N00038, 
	A => CO14_0, 
	S => CO12_1, 
	Y => N00044
);
U14 : XOR2	PORT MAP(
	A => A13, 
	B => B13, 
	Y => N00020
);
U15 : XOR2	PORT MAP(
	A => A14, 
	B => B14, 
	Y => N00050
);
U16 : XOR2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => N00032
);
U1 : CS2	PORT MAP(
	C => N00022, 
	B => CO10_1, 
	D => N00025, 
	A => CO10_0, 
	S => CO4A, 
	Y => S13
);
U2 : XNOR2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => N00038
);
U3 : MX2B	PORT MAP(
	A => N00020, 
	B => N00020, 
	Y => N00022, 
	S => CO12_0
);
U4 : MX2B	PORT MAP(
	A => N00020, 
	B => N00020, 
	Y => N00025, 
	S => CO12_1
);
U5 : XNOR2	PORT MAP(
	A => A14, 
	B => B14, 
	Y => N00058
);
U6 : AND2	PORT MAP(
	A => A13, 
	B => B13, 
	Y => N00060
);
U7 : OR2	PORT MAP(
	A => A13, 
	B => B13, 
	Y => N00059
);
U8 : CS2	PORT MAP(
	C => N00050, 
	B => N00059, 
	D => N00058, 
	A => N00060, 
	S => CO12_1, 
	Y => N00067
);
U9 : CS2	PORT MAP(
	C => N00050, 
	B => N00059, 
	D => N00058, 
	A => N00060, 
	S => CO12_0, 
	Y => N00056
);
U10 : CS2	PORT MAP(
	C => N00056, 
	B => CO10_1, 
	D => N00067, 
	A => CO10_0, 
	S => CO4A, 
	Y => S14
);
U11 : CS2	PORT MAP(
	C => N00032, 
	B => CO14_1, 
	D => N00038, 
	A => CO14_0, 
	S => CO12_0, 
	Y => N00037
);
U12 : CS2	PORT MAP(
	C => N00037, 
	B => CO10_1, 
	D => N00044, 
	A => CO10_0, 
	S => CO4A, 
	Y => S15
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA86 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
); END TA86;



ARCHITECTURE STRUCTURE OF TA86 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	A => A, 
	B => B, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA42 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y8 : OUT std_logic;
	Y9 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic
); END TA42;



ARCHITECTURE STRUCTURE OF TA42 IS

-- COMPONENTS

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NAND4D	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y0
);
U2 : NAND4C	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y1
);
U3 : NAND4C	PORT MAP(
	A => D, 
	B => C, 
	C => A, 
	D => B, 
	Y => Y2
);
U4 : NAND4B	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y3
);
U5 : NAND4C	PORT MAP(
	A => D, 
	B => B, 
	C => A, 
	D => C, 
	Y => Y4
);
U6 : NAND4B	PORT MAP(
	A => D, 
	B => B, 
	C => C, 
	D => A, 
	Y => Y5
);
U7 : NAND4B	PORT MAP(
	A => D, 
	B => A, 
	C => C, 
	D => B, 
	Y => Y6
);
U8 : NAND4A	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y7
);
U9 : NAND4C	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	D => D, 
	Y => Y8
);
U10 : NAND4B	PORT MAP(
	A => C, 
	B => B, 
	C => D, 
	D => A, 
	Y => Y9
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FCTD16C IS PORT (
	CLK : IN std_logic;
	CLR : IN std_logic;
	LD1 : IN std_logic;
	LD2 : IN std_logic;
	CE1 : IN std_logic;
	CE2 : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
); END FCTD16C;



ARCHITECTURE STRUCTURE OF FCTD16C IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FCTD8B	 PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	TE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END COMPONENT;

COMPONENT FCTD8A	 PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	\TO\ : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N02349 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL \TO\ : std_logic;
SIGNAL TA : std_logic;
SIGNAL N04341 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N04341;
U3 : BUF	PORT MAP(
	A => CLR, 
	Y => N02349
);
U4 : BUF	PORT MAP(
	A => CLR, 
	Y => N00007
);
U5 : OR2	PORT MAP(
	A => \TO\, 
	B => N04341, 
	Y => TA
);
U1 : FCTD8B	PORT MAP(
	CLK => CLK, 
	LD => LD2, 
	CLR => N00007, 
	CE => CE2, 
	TE => TA, 
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15
);
U2 : FCTD8A	PORT MAP(
	CLK => CLK, 
	LD => LD1, 
	CLR => N02349, 
	CE => CE1, 
	\TO\ => \TO\, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	Q0 => N04341, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VAD16SL IS PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A6 : IN std_logic;
	S2 : OUT std_logic;
	B6 : IN std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	S3 : OUT std_logic;
	A8 : IN std_logic;
	B8 : IN std_logic;
	CIN : IN std_logic;
	CO0B : IN std_logic;
	CO2_0 : IN std_logic;
	CO2_1 : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic
); END VAD16SL;



ARCHITECTURE STRUCTURE OF VAD16SL IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT SUMX1A	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	Y : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00054 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL CO3 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00063 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : XOR2	PORT MAP(
	A => CO0B, 
	B => N00042, 
	Y => S1
);
U14 : XOR2	PORT MAP(
	A => CIN, 
	B => N00031, 
	Y => S0
);
U15 : XOR2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00031
);
U16 : XOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00042
);
U17 : XOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00066
);
U18 : XNOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00073
);
U19 : CS2	PORT MAP(
	C => N00034, 
	B => CO6_1, 
	D => N00037, 
	A => CO6_0, 
	S => CO4B, 
	Y => S7
);
U1 : CS2	PORT MAP(
	C => N00054, 
	B => N00063, 
	D => N00061, 
	A => N00064, 
	S => CO6_1, 
	Y => N00070
);
U2 : CS2	PORT MAP(
	C => N00054, 
	B => N00063, 
	D => N00061, 
	A => N00064, 
	S => CO6_0, 
	Y => N00060
);
U3 : OR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00063
);
U4 : AND2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00064
);
U20 : CS2	PORT MAP(
	C => N00066, 
	B => CO2_1, 
	D => N00073, 
	A => CO2_0, 
	S => CO0B, 
	Y => S3
);
U5 : XOR2	PORT MAP(
	A => A8, 
	B => B8, 
	Y => N00054
);
U21 : XOR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00034
);
U6 : XOR2	PORT MAP(
	A => A5, 
	B => B5, 
	Y => N00101
);
U7 : XOR2	PORT MAP(
	A => A4, 
	B => B4, 
	Y => N00094
);
U22 : XNOR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00037
);
U8 : XOR2	PORT MAP(
	A => CO3, 
	B => N00094, 
	Y => S4
);
U23 : MX2	PORT MAP(
	A => N00060, 
	B => N00070, 
	S => CO4B, 
	Y => S8
);
U24 : XOR2	PORT MAP(
	A => N00101, 
	B => CO4B, 
	Y => S5
);
U9 : OR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00090
);
U10 : AND2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00087
);
U11 : CS2	PORT MAP(
	C => N00087, 
	B => CO2_1, 
	D => N00090, 
	A => CO2_0, 
	S => CO0B, 
	Y => CO3
);
U12 : XNOR2	PORT MAP(
	A => A8, 
	B => B8, 
	Y => N00061
);
U25 : SUMX1A	PORT MAP(
	CI => CO0B, 
	A0 => A1, 
	B0 => B1, 
	A1 => A2, 
	B1 => B2, 
	Y => S2
);
U26 : SUMX1A	PORT MAP(
	CI => CO4B, 
	A0 => A5, 
	B0 => B5, 
	A1 => A6, 
	B1 => B6, 
	Y => S6
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA280 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	I : IN std_logic;
	EVEN : OUT std_logic;
	ODD : OUT std_logic
); END TA280;



ARCHITECTURE STRUCTURE OF TA280 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00024 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	A => A, 
	B => B, 
	Y => N00012
);
U2 : XOR2	PORT MAP(
	A => D, 
	B => E, 
	Y => N00019
);
U3 : XOR2	PORT MAP(
	A => G, 
	B => H, 
	Y => N00026
);
U4 : XOR2	PORT MAP(
	A => N00012, 
	B => C, 
	Y => N00014
);
U5 : XOR2	PORT MAP(
	A => N00019, 
	B => F, 
	Y => N00018
);
U6 : XOR2	PORT MAP(
	A => N00026, 
	B => I, 
	Y => N00024
);
U7 : XOR2	PORT MAP(
	A => N00014, 
	B => N00018, 
	Y => N00016
);
U8 : XOR2	PORT MAP(
	A => N00016, 
	B => N00024, 
	Y => ODD
);
U9 : XNOR2	PORT MAP(
	A => N00016, 
	B => N00024, 
	Y => EVEN
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NMMHH IS PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic;
	P12 : OUT std_logic;
	P13 : OUT std_logic;
	P14 : OUT std_logic;
	P15 : OUT std_logic
); END NMMHH;



ARCHITECTURE STRUCTURE OF NMMHH IS

-- COMPONENTS

COMPONENT FA2A
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV3	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic
); END COMPONENT;

COMPONENT INV4	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	I3 : IN std_logic;
	O3 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL XN0 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL XN3 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00080 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN1, 
	B => N00060, 
	CI => VDD, 
	CO => N00061, 
	S => N00067
);
U14 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN1, 
	B => N00058, 
	CI => VDD, 
	CO => N00059, 
	S => P9
);
U17 : AND2	PORT MAP(
	A => Y0, 
	B => X0, 
	Y => P8
);
U18 : AND2	PORT MAP(
	A => Y0, 
	B => X1, 
	Y => N00058
);
U19 : AND2	PORT MAP(
	A => Y0, 
	B => X2, 
	Y => N00060
);
U1 : FA1A	PORT MAP(
	A => N00085, 
	B => VDD, 
	CI => N00101, 
	CO => OPEN, 
	S => P15
);
U2 : FA1A	PORT MAP(
	A => N00097, 
	B => N00090, 
	CI => N00103, 
	CO => N00101, 
	S => P14
);
U3 : FA1A	PORT MAP(
	A => N00107, 
	B => N00100, 
	CI => N00095, 
	CO => N00103, 
	S => P13
);
U4 : FA1A	PORT MAP(
	A => VDD, 
	B => N00099, 
	CI => N00094, 
	CO => N00107, 
	S => P12
);
U20 : AND2A	PORT MAP(
	A => Y0, 
	B => X3, 
	Y => N00062
);
U5 : FA2A	PORT MAP(
	A0 => XN3, 
	A1 => YN3, 
	B => YN3, 
	CI => X3, 
	CO => N00085, 
	S => N00090
);
U21 : AND2A	PORT MAP(
	A => Y1, 
	B => X3, 
	Y => N00077
);
U6 : FA2A	PORT MAP(
	A0 => X2, 
	A1 => YN3, 
	B => N00096, 
	CI => N00078, 
	CO => N00097, 
	S => N00100
);
U22 : AND2A	PORT MAP(
	A => Y2, 
	B => X3, 
	Y => N00096
);
U7 : FA2A	PORT MAP(
	A0 => X1, 
	A1 => YN3, 
	B => N00081, 
	CI => N00076, 
	CO => N00095, 
	S => N00099
);
U23 : VCC	PORT MAP(
	Y => VDD
);
U8 : FA2A	PORT MAP(
	A0 => X0, 
	A1 => YN3, 
	B => N00080, 
	CI => N00075, 
	CO => N00094, 
	S => P11
);
U9 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN2, 
	B => N00077, 
	CI => N00063, 
	CO => N00078, 
	S => N00081
);
U10 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN2, 
	B => N00068, 
	CI => N00061, 
	CO => N00076, 
	S => N00080
);
U11 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN2, 
	B => N00067, 
	CI => N00059, 
	CO => N00075, 
	S => P10
);
U12 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN1, 
	B => N00062, 
	CI => VDD, 
	CO => N00063, 
	S => N00068
);
U15 : INV3	PORT MAP(
	I2 => Y3, 
	I1 => Y2, 
	I0 => Y1, 
	O0 => YN1, 
	O1 => YN2, 
	O2 => YN3
);
U16 : INV4	PORT MAP(
	I2 => X2, 
	I1 => X1, 
	I0 => X0, 
	O0 => XN0, 
	O1 => XN1, 
	O2 => XN2, 
	I3 => X3, 
	O3 => XN3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NMM IS PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P0 : OUT std_logic;
	P1 : OUT std_logic;
	P2 : OUT std_logic;
	P3 : OUT std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic
); END NMM;



ARCHITECTURE STRUCTURE OF NMM IS

-- COMPONENTS

COMPONENT FA2A
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV3	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic
); END COMPONENT;

COMPONENT INV4	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	I3 : IN std_logic;
	O3 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00066 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL XN3 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00098 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN3, 
	B => N00085, 
	CI => N00080, 
	CO => N00095, 
	S => N00101
);
U14 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN3, 
	B => N00096, 
	CI => N00082, 
	CO => N00097, 
	S => N00102
);
U15 : FA2A	PORT MAP(
	A0 => XN3, 
	A1 => YN3, 
	B => N00098, 
	CI => N00097, 
	CO => P7, 
	S => N00103
);
U16 : FA1B	PORT MAP(
	A => N00104, 
	B => N00101, 
	CI => N00094, 
	CO => N00105, 
	S => N00107
);
U17 : FA1A	PORT MAP(
	A => N00105, 
	B => N00102, 
	CI => N00095, 
	CO => N00106, 
	S => N00108
);
U18 : INV	PORT MAP(
	A => N00103, 
	Y => P6
);
U19 : AND2	PORT MAP(
	A => Y0, 
	B => X3, 
	Y => N00066
);
U1 : INV	PORT MAP(
	A => N00107, 
	Y => P4
);
U4 : INV	PORT MAP(
	A => N00108, 
	Y => P5
);
U20 : AND2	PORT MAP(
	A => Y0, 
	B => X2, 
	Y => N00064
);
U5 : INV	PORT MAP(
	A => N00106, 
	Y => N00098
);
U21 : AND2	PORT MAP(
	A => Y0, 
	B => X1, 
	Y => N00062
);
U6 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN1, 
	B => N00062, 
	CI => N00051, 
	CO => N00063, 
	S => P1
);
U22 : AND2	PORT MAP(
	A => Y0, 
	B => X0, 
	Y => P0
);
U7 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN1, 
	B => N00064, 
	CI => N00051, 
	CO => N00065, 
	S => N00071
);
U23 : AND2	PORT MAP(
	A => Y1, 
	B => X3, 
	Y => N00081
);
U8 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN1, 
	B => N00066, 
	CI => N00051, 
	CO => N00067, 
	S => N00072
);
U24 : AND2	PORT MAP(
	A => Y2, 
	B => X3, 
	Y => N00096
);
U9 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN2, 
	B => N00071, 
	CI => N00063, 
	CO => N00079, 
	S => P2
);
U25 : GND	PORT MAP(
	Y => N00104
);
U26 : VCC	PORT MAP(
	Y => N00051
);
U10 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN2, 
	B => N00072, 
	CI => N00065, 
	CO => N00080, 
	S => N00084
);
U11 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN2, 
	B => N00081, 
	CI => N00067, 
	CO => N00082, 
	S => N00085
);
U12 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN3, 
	B => N00084, 
	CI => N00079, 
	CO => N00094, 
	S => P3
);
U3 : INV3	PORT MAP(
	I2 => Y3, 
	I1 => Y2, 
	I0 => Y1, 
	O0 => YN1, 
	O1 => YN2, 
	O2 => YN3
);
U2 : INV4	PORT MAP(
	I2 => X2, 
	I1 => X1, 
	I0 => X0, 
	O0 => XN0, 
	O1 => XN1, 
	O2 => XN2, 
	I3 => X3, 
	O3 => XN3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC4X16A IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y8 : OUT std_logic;
	Y9 : OUT std_logic;
	Y10 : OUT std_logic;
	Y11 : OUT std_logic;
	Y12 : OUT std_logic;
	Y13 : OUT std_logic;
	Y14 : OUT std_logic;
	Y15 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic
); END DEC4X16A;



ARCHITECTURE STRUCTURE OF DEC4X16A IS

-- COMPONENTS

COMPONENT OR4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00027 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00035 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : OR4	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => N00035, 
	Y => Y1
);
U14 : OR4	PORT MAP(
	A => D, 
	B => C, 
	C => N00032, 
	D => A, 
	Y => Y2
);
U15 : OR4	PORT MAP(
	A => D, 
	B => C, 
	C => N00032, 
	D => N00035, 
	Y => Y3
);
U16 : OR4	PORT MAP(
	A => D, 
	B => N00029, 
	C => B, 
	D => A, 
	Y => Y4
);
U17 : OR4	PORT MAP(
	A => D, 
	B => N00029, 
	C => B, 
	D => N00035, 
	Y => Y5
);
U18 : OR4	PORT MAP(
	A => D, 
	B => N00029, 
	C => N00032, 
	D => A, 
	Y => Y6
);
U19 : OR4	PORT MAP(
	A => D, 
	B => N00029, 
	C => N00032, 
	D => N00035, 
	Y => Y7
);
U1 : INV	PORT MAP(
	A => C, 
	Y => N00029
);
U2 : INV	PORT MAP(
	A => B, 
	Y => N00032
);
U3 : INV	PORT MAP(
	A => A, 
	Y => N00035
);
U4 : OR4	PORT MAP(
	A => N00027, 
	B => N00029, 
	C => N00032, 
	D => N00035, 
	Y => Y15
);
U20 : INV	PORT MAP(
	A => D, 
	Y => N00027
);
U5 : OR4	PORT MAP(
	A => N00027, 
	B => N00029, 
	C => N00032, 
	D => A, 
	Y => Y14
);
U6 : OR4	PORT MAP(
	A => N00027, 
	B => N00029, 
	C => B, 
	D => N00035, 
	Y => Y13
);
U7 : OR4	PORT MAP(
	A => N00027, 
	B => N00029, 
	C => B, 
	D => A, 
	Y => Y12
);
U8 : OR4	PORT MAP(
	A => N00027, 
	B => C, 
	C => N00032, 
	D => N00035, 
	Y => Y11
);
U9 : OR4	PORT MAP(
	A => N00027, 
	B => C, 
	C => N00032, 
	D => A, 
	Y => Y10
);
U10 : OR4	PORT MAP(
	A => N00027, 
	B => C, 
	C => B, 
	D => N00035, 
	Y => Y9
);
U11 : OR4	PORT MAP(
	A => N00027, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y8
);
U12 : OR4	PORT MAP(
	A => D, 
	B => C, 
	C => B, 
	D => A, 
	Y => Y0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VAD16SM IS PORT (
	A9 : IN std_logic;
	B9 : IN std_logic;
	A10 : IN std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	B10 : IN std_logic;
	A11 : IN std_logic;
	B11 : IN std_logic;
	A12 : IN std_logic;
	B12 : IN std_logic;
	CO4A : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	CO8_0 : IN std_logic;
	S11 : OUT std_logic;
	CO8_1 : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	S12 : OUT std_logic
); END VAD16SM;



ARCHITECTURE STRUCTURE OF VAD16SM IS

-- COMPONENTS

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00053 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00079 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : MX2	PORT MAP(
	A => N00056, 
	B => N00060, 
	S => N00053, 
	Y => N00058
);
U14 : XOR2	PORT MAP(
	A => A12, 
	B => B12, 
	Y => N00056
);
U15 : CS2	PORT MAP(
	C => N00058, 
	B => CO10_1, 
	D => N00061, 
	A => CO10_0, 
	S => CO4A, 
	Y => S12
);
U16 : XNOR2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00043
);
U17 : CS2	PORT MAP(
	C => N00069, 
	B => N00082, 
	D => N00075, 
	A => N00083, 
	S => CO4B, 
	Y => S10
);
U18 : OR2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00086
);
U19 : AND2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00079
);
U1 : AND2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00053
);
U2 : CS2	PORT MAP(
	C => N00038, 
	B => CO10_1, 
	D => N00043, 
	A => CO10_0, 
	S => CO4A, 
	Y => S11
);
U3 : CS2	PORT MAP(
	C => N00079, 
	B => CO8_1, 
	D => N00086, 
	A => CO8_0, 
	S => CO6_0, 
	Y => N00083
);
U4 : CS2	PORT MAP(
	C => N00079, 
	B => CO8_1, 
	D => N00086, 
	A => CO8_0, 
	S => CO6_1, 
	Y => N00082
);
U20 : XNOR2	PORT MAP(
	A => A10, 
	B => B10, 
	Y => N00075
);
U5 : MX2	PORT MAP(
	A => N00030, 
	B => N00039, 
	S => CO4B, 
	Y => S9
);
U21 : XOR2	PORT MAP(
	A => A10, 
	B => B10, 
	Y => N00069
);
U6 : CS2	PORT MAP(
	C => N00026, 
	B => CO8_1, 
	D => N00031, 
	A => CO8_0, 
	S => CO6_1, 
	Y => N00039
);
U22 : XOR2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00038
);
U7 : CS2	PORT MAP(
	C => N00026, 
	B => CO8_1, 
	D => N00031, 
	A => CO8_0, 
	S => CO6_0, 
	Y => N00030
);
U8 : XNOR2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00031
);
U9 : XOR2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00026
);
U10 : MX2	PORT MAP(
	A => N00056, 
	B => N00060, 
	S => N00066, 
	Y => N00061
);
U11 : XNOR2	PORT MAP(
	A => A12, 
	B => B12, 
	Y => N00060
);
U12 : OR2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00066
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA51 IS PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	C : IN std_logic
); END TA51;



ARCHITECTURE STRUCTURE OF TA51 IS

-- COMPONENTS

COMPONENT AOI4
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : AOI4	PORT MAP(
	Y => Y, 
	A => A, 
	B => B, 
	D => D, 
	C => C
);
END STRUCTURE;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FCTD8A IS PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	\TO\ : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END FCTD8A;



ARCHITECTURE STRUCTURE OF FCTD8A IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT DFM6A
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1B
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NAND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00080 : std_logic;
SIGNAL CE6 : std_logic;
SIGNAL CEB : std_logic;
SIGNAL TEB : std_logic;
SIGNAL CE1 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL CEN : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL CE03 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL LDB : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00083 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00032;
Q1<=N00055;
Q2<=N00083;
Q3<=N00114;
Q4<=N00033;
Q5<=N00054;
Q6<=N00075;
Q7<=N00099;
\TO\<=N00113;
U13 : INV	PORT MAP(
	A => N00054, 
	Y => N00059
);
U14 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00095, 
	D1 => N00095, 
	D2 => N00118, 
	D3 => N00124, 
	S10 => N00127, 
	S11 => N00129, 
	S0 => CE03, 
	CLK => CLK, 
	Q => N00113
);
U15 : DFM6A	PORT MAP(
	D0 => N00127, 
	D1 => N00127, 
	D2 => TEB, 
	D3 => CE03, 
	S0 => CEB, 
	S1 => LDB, 
	CLK => CLK, 
	CLR => CLR, 
	Q => TEB
);
U16 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D7, 
	D1 => N00107, 
	D2 => D7, 
	D3 => N00099, 
	S10 => CE6, 
	S11 => TEB, 
	S0 => LDB, 
	CLK => CLK, 
	Q => N00099
);
U17 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D6, 
	D1 => N00080, 
	D2 => D6, 
	D3 => N00075, 
	S10 => CE6, 
	S11 => TEB, 
	S0 => LDB, 
	CLK => CLK, 
	Q => N00075
);
U18 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D5, 
	D1 => N00059, 
	D2 => D5, 
	D3 => N00054, 
	S10 => CE6, 
	S11 => TEB, 
	S0 => LDB, 
	CLK => CLK, 
	Q => N00054
);
U19 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D4, 
	D1 => N00038, 
	D2 => D4, 
	D3 => N00033, 
	S10 => CEN, 
	S11 => TEB, 
	S0 => LDB, 
	CLK => CLK, 
	Q => N00033
);
U1 : NAND2A	PORT MAP(
	A => N00033, 
	B => CE, 
	Y => CE6
);
U2 : INV	PORT MAP(
	A => N00033, 
	Y => N00038
);
U3 : INV	PORT MAP(
	A => CE, 
	Y => CEN
);
U4 : BUF	PORT MAP(
	A => CE, 
	Y => CEB
);
U20 : DFM6A	PORT MAP(
	D0 => D3, 
	D1 => D3, 
	D2 => N00114, 
	D3 => N00130, 
	S0 => CE1, 
	S1 => LDB, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00114
);
U5 : BUF	PORT MAP(
	A => D7, 
	Y => N00095
);
U21 : DFM6A	PORT MAP(
	D0 => D2, 
	D1 => D2, 
	D2 => N00083, 
	D3 => N00091, 
	S0 => CE1, 
	S1 => LDB, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00083
);
U6 : NAND4D	PORT MAP(
	A => D3, 
	B => D2, 
	C => D1, 
	D => D0, 
	Y => N00127
);
U22 : DFM6A	PORT MAP(
	D0 => D1, 
	D1 => D1, 
	D2 => N00055, 
	D3 => N00066, 
	S0 => CE1, 
	S1 => LDB, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00055
);
U7 : NAND5C	PORT MAP(
	A => N00114, 
	B => N00083, 
	C => N00055, 
	D => N00032, 
	Y => CE03, 
	E => CE
);
U23 : AND2A	PORT MAP(
	A => N00032, 
	B => CE, 
	Y => CE1
);
U8 : AX1B	PORT MAP(
	Y => N00130, 
	A => N00055, 
	B => N00083, 
	C => N00114
);
U24 : NAND4D	PORT MAP(
	A => N00099, 
	B => N00075, 
	C => N00054, 
	D => N00033, 
	Y => N00118
);
U9 : AX1B	PORT MAP(
	Y => N00107, 
	A => N00075, 
	B => N00054, 
	C => N00099
);
U25 : NAND3B	PORT MAP(
	A => CE, 
	B => N00113, 
	C => LD, 
	Y => N00124
);
U26 : XNOR2	PORT MAP(
	A => N00083, 
	B => N00055, 
	Y => N00091
);
U27 : DFM6A	PORT MAP(
	D0 => D0, 
	D1 => D0, 
	D2 => N00032, 
	D3 => CE1, 
	S0 => CEB, 
	S1 => LDB, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00032
);
U28 : BUF	PORT MAP(
	A => LD, 
	Y => LDB
);
U10 : NAND4D	PORT MAP(
	A => D6, 
	B => D5, 
	C => D4, 
	D => LD, 
	Y => N00129
);
U11 : INV	PORT MAP(
	A => N00055, 
	Y => N00066
);
U12 : XNOR2	PORT MAP(
	A => N00075, 
	B => N00054, 
	Y => N00080
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA190 IS PORT (
	CTEN : IN std_logic;
	DU : IN std_logic;
	CLK : IN std_logic;
	LOAD : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	QD : OUT std_logic;
	QC : OUT std_logic;
	QB : OUT std_logic;
	QA : OUT std_logic;
	MM : OUT std_logic;
	RCO : OUT std_logic
); END TA190;



ARCHITECTURE STRUCTURE OF TA190 IS

-- COMPONENTS

COMPONENT AND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XA1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT NAND4B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AO1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT OA1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OAI2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT OA4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT AND4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AOI1A
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT GOR2
	PORT (
	A : IN std_logic;
	G : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00039 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL CTENB : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00058 : std_logic;

-- GATE INSTANCES

BEGIN
MM<=N00130;
QA<=N00039;
QB<=N00053;
QC<=N00054;
QD<=N00043;
U13 : AND4D	PORT MAP(
	A => N00039, 
	B => N00053, 
	C => N00054, 
	D => N00043, 
	Y => N00127
);
U14 : AND3	PORT MAP(
	A => DU, 
	B => N00039, 
	C => N00043, 
	Y => N00131
);
U15 : AND2B	PORT MAP(
	A => N00039, 
	B => N00043, 
	Y => N00041
);
U16 : AND3C	PORT MAP(
	A => N00039, 
	B => N00053, 
	C => N00054, 
	Y => N00045
);
U17 : XA1	PORT MAP(
	A => N00039, 
	B => N00053, 
	Y => N00058, 
	C => N00059
);
U18 : XA1	PORT MAP(
	A => N00054, 
	B => N00043, 
	Y => N00065, 
	C => D3
);
U19 : AND2A	PORT MAP(
	A => N00043, 
	B => DU, 
	Y => N00059
);
U1 : DFM	PORT MAP(
	A => A, 
	B => N00046, 
	Q => N00039, 
	CLK => CLK, 
	S => LOAD
);
U2 : DFM	PORT MAP(
	A => B, 
	B => N00068, 
	Q => N00053, 
	CLK => CLK, 
	S => LOAD
);
U3 : DFM	PORT MAP(
	A => C, 
	B => N00092, 
	Q => N00054, 
	CLK => CLK, 
	S => LOAD
);
U4 : DFM	PORT MAP(
	A => D, 
	B => N00115, 
	Q => N00043, 
	CLK => CLK, 
	S => LOAD
);
U20 : NAND4B	PORT MAP(
	A => DU, 
	B => N00043, 
	C => N00039, 
	D => N00053, 
	Y => N00067
);
U5 : AO1	PORT MAP(
	Y => N00046, 
	A => CTEN, 
	B => N00039, 
	C => N00048
);
U21 : AND3C	PORT MAP(
	A => N00039, 
	B => N00053, 
	C => DU, 
	Y => D3
);
U6 : AO1	PORT MAP(
	Y => N00068, 
	A => CTEN, 
	B => N00053, 
	C => N00071
);
U22 : XA1	PORT MAP(
	A => DU, 
	B => N00053, 
	Y => N00086, 
	C => N00087
);
U7 : AO1	PORT MAP(
	Y => N00115, 
	A => CTEN, 
	B => N00043, 
	C => N00118
);
U23 : XA1	PORT MAP(
	A => N00039, 
	B => DU, 
	Y => N00088, 
	C => N00087
);
U8 : OA1	PORT MAP(
	A => N00041, 
	B => N00045, 
	C => CTENB, 
	Y => N00048
);
U24 : OAI2A	PORT MAP(
	A => D1, 
	B => N00106, 
	C => N00106, 
	Y => N00091, 
	D => N00054
);
U9 : OA4A	PORT MAP(
	A => N00058, 
	B => N00065, 
	C => N00067, 
	Y => N00071, 
	D => CTENB
);
U25 : AND2A	PORT MAP(
	A => N00043, 
	B => N00054, 
	Y => N00087
);
U26 : AND4A	PORT MAP(
	A => N00043, 
	B => N00039, 
	C => N00053, 
	D => DU, 
	Y => D1
);
U27 : AND4C	PORT MAP(
	A => N00039, 
	B => N00053, 
	C => DU, 
	D => N00043, 
	Y => N00106
);
U28 : XA1	PORT MAP(
	A => DU, 
	B => N00039, 
	Y => N00123, 
	C => D2
);
U29 : AND3B	PORT MAP(
	A => N00053, 
	B => N00054, 
	C => N00043, 
	Y => D2
);
U30 : AND2	PORT MAP(
	A => D1, 
	B => N00054, 
	Y => N00138
);
U31 : NAND3B	PORT MAP(
	A => N00054, 
	B => N00043, 
	C => D3, 
	Y => N00142
);
U32 : INV	PORT MAP(
	A => CTEN, 
	Y => CTENB
);
U33 : AO1	PORT MAP(
	Y => N00092, 
	A => CTEN, 
	B => N00054, 
	C => N00095
);
U34 : OA4A	PORT MAP(
	A => N00086, 
	B => N00088, 
	C => N00091, 
	Y => N00095, 
	D => CTENB
);
U10 : OA4A	PORT MAP(
	A => N00123, 
	B => N00138, 
	C => N00142, 
	Y => N00118, 
	D => CTENB
);
U11 : AOI1A	PORT MAP(
	Y => N00130, 
	A => DU, 
	B => N00127, 
	C => N00131
);
U12 : GOR2	PORT MAP(
	A => N00130, 
	G => CLK, 
	Y => RCO
);
END STRUCTURE;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FCTU8B IS PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	TE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END FCTU8B;



ARCHITECTURE STRUCTURE OF FCTU8B IS

-- COMPONENTS

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1C
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL CE4 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL TE1 : std_logic;
SIGNAL CE0 : std_logic;
SIGNAL TE2 : std_logic;
SIGNAL TEB : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00097 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00024;
Q1<=N00051;
Q2<=N00073;
Q3<=N00099;
Q4<=N00023;
Q5<=N00050;
Q6<=N00072;
Q7<=N00097;
U13 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D6, 
	D1 => N00080, 
	D2 => D6, 
	D3 => N00072, 
	S10 => CE4, 
	S11 => TE2, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00072
);
U14 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D7, 
	D1 => N00106, 
	D2 => D7, 
	D3 => N00097, 
	S10 => CE4, 
	S11 => TE2, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00097
);
U15 : AND4	PORT MAP(
	A => D3, 
	B => D2, 
	C => D1, 
	D => D0, 
	Y => N00122
);
U16 : INV	PORT MAP(
	A => TE, 
	Y => TEB
);
U17 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D3, 
	D1 => N00107, 
	D2 => D3, 
	D3 => N00099, 
	S10 => CE0, 
	S11 => TEB, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00099
);
U18 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00122, 
	D1 => N00132, 
	D2 => N00122, 
	D3 => TE1, 
	S10 => TEB, 
	S11 => CE, 
	S0 => LD, 
	CLK => CLK, 
	Q => TE1
);
U19 : AND4A	PORT MAP(
	A => N00024, 
	B => N00073, 
	C => N00051, 
	D => N00099, 
	Y => N00132
);
U1 : AX1C	PORT MAP(
	Y => N00106, 
	A => N00050, 
	B => N00072, 
	C => N00097
);
U2 : XOR2	PORT MAP(
	A => N00050, 
	B => N00072, 
	Y => N00080
);
U3 : INV	PORT MAP(
	A => N00050, 
	Y => N00057
);
U4 : AX1C	PORT MAP(
	Y => N00107, 
	A => N00051, 
	B => N00073, 
	C => N00099
);
U20 : NAND2	PORT MAP(
	A => TE, 
	B => TE1, 
	Y => TE2
);
U5 : XOR2	PORT MAP(
	A => N00073, 
	B => N00051, 
	Y => N00081
);
U21 : NAND2A	PORT MAP(
	A => CE, 
	B => N00023, 
	Y => CE4
);
U6 : INV	PORT MAP(
	A => N00051, 
	Y => N00059
);
U7 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D0, 
	D1 => CE0, 
	D2 => D0, 
	D3 => N00024, 
	S10 => CE, 
	S11 => TEB, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00024
);
U8 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D1, 
	D1 => N00059, 
	D2 => D1, 
	D3 => N00051, 
	S10 => CE0, 
	S11 => TEB, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00051
);
U9 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D2, 
	D1 => N00081, 
	D2 => D2, 
	D3 => N00073, 
	S10 => CE0, 
	S11 => TEB, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00073
);
U10 : NAND2A	PORT MAP(
	A => CE, 
	B => N00024, 
	Y => CE0
);
U11 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D4, 
	D1 => CE4, 
	D2 => D4, 
	D3 => N00023, 
	S10 => CE, 
	S11 => TE2, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00023
);
U12 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D5, 
	D1 => N00057, 
	D2 => D5, 
	D3 => N00050, 
	S10 => CE4, 
	S11 => TE2, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00050
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FCTD8B IS PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	TE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END FCTD8B;



ARCHITECTURE STRUCTURE OF FCTD8B IS

-- COMPONENTS

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM6A
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1B
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL TE2 : std_logic;
SIGNAL TEB : std_logic;
SIGNAL TE1 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL TE6 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00024 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00025;
Q1<=N00047;
Q2<=N00073;
Q3<=N00104;
Q4<=N00024;
Q5<=N00046;
Q6<=N00067;
Q7<=N00096;
U13 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D5, 
	D1 => N00051, 
	D2 => D5, 
	D3 => N00046, 
	S10 => TE2, 
	S11 => TEB, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00046
);
U14 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D6, 
	D1 => N00072, 
	D2 => D6, 
	D3 => N00067, 
	S10 => TE6, 
	S11 => TE2, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00067
);
U15 : INV	PORT MAP(
	A => N00024, 
	Y => N00029
);
U16 : XNOR2	PORT MAP(
	A => N00024, 
	B => N00046, 
	Y => N00051
);
U17 : DFM6A	PORT MAP(
	D0 => N00124, 
	D1 => N00125, 
	D2 => N00124, 
	D3 => TE2, 
	S0 => LD, 
	S1 => TEB, 
	CLK => CLK, 
	CLR => CLR, 
	Q => TE2
);
U18 : NAND4D	PORT MAP(
	A => D3, 
	B => D2, 
	C => D1, 
	D => D0, 
	Y => N00124
);
U19 : NAND4C	PORT MAP(
	A => N00104, 
	B => N00073, 
	C => N00047, 
	D => N00025, 
	Y => N00125
);
U1 : AX1B	PORT MAP(
	Y => N00113, 
	A => N00047, 
	B => N00073, 
	C => N00104
);
U2 : XNOR2	PORT MAP(
	A => N00073, 
	B => N00047, 
	Y => N00082
);
U3 : XNOR2	PORT MAP(
	A => N00047, 
	B => N00025, 
	Y => N00057
);
U4 : INV	PORT MAP(
	A => N00025, 
	Y => N00033
);
U20 : NAND2A	PORT MAP(
	A => TE, 
	B => CE, 
	Y => TEB
);
U5 : DFM6A	PORT MAP(
	D0 => D0, 
	D1 => D0, 
	D2 => N00033, 
	D3 => N00025, 
	S0 => TEB, 
	S1 => LD, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00025
);
U21 : NAND3B	PORT MAP(
	A => N00025, 
	B => TE, 
	C => CE, 
	Y => TE1
);
U6 : DFM6A	PORT MAP(
	D0 => D1, 
	D1 => D1, 
	D2 => N00057, 
	D3 => N00047, 
	S0 => TEB, 
	S1 => LD, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00047
);
U22 : NAND3B	PORT MAP(
	A => N00024, 
	B => TE, 
	C => CE, 
	Y => TE6
);
U7 : DFM6A	PORT MAP(
	D0 => D2, 
	D1 => D2, 
	D2 => N00082, 
	D3 => N00073, 
	S0 => TE1, 
	S1 => LD, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00073
);
U8 : DFM6A	PORT MAP(
	D0 => D3, 
	D1 => D3, 
	D2 => N00113, 
	D3 => N00104, 
	S0 => TE1, 
	S1 => LD, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00104
);
U9 : AX1B	PORT MAP(
	Y => N00100, 
	A => N00067, 
	B => N00046, 
	C => N00096
);
U10 : XNOR2	PORT MAP(
	A => N00067, 
	B => N00046, 
	Y => N00072
);
U11 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D7, 
	D1 => N00100, 
	D2 => D7, 
	D3 => N00096, 
	S10 => TE6, 
	S11 => TE2, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00096
);
U12 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D4, 
	D1 => N00029, 
	D2 => D4, 
	D3 => N00024, 
	S10 => TE2, 
	S11 => TEB, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00024
);
END STRUCTURE;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VCTD2CU IS PORT (
	CNT : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	CT0 : IN std_logic;
	CT1 : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CI : IN std_logic
); END VCTD2CU;



ARCHITECTURE STRUCTURE OF VCTD2CU IS

-- COMPONENTS

COMPONENT AX1B
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NAND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00021;
U1 : AX1B	PORT MAP(
	Y => N00011, 
	A => CI, 
	B => CT1, 
	C => N00007
);
U2 : NAND2B	PORT MAP(
	A => CI, 
	B => N00007, 
	Y => N00020
);
U3 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00011, 
	D1 => P0, 
	D2 => N00007, 
	D3 => P0, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00007
);
U4 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00025, 
	D1 => P1, 
	D2 => N00021, 
	D3 => P1, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00021
);
U5 : AX1B	PORT MAP(
	Y => N00025, 
	A => N00020, 
	B => CT1, 
	C => N00021
);
END STRUCTURE;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VADC16CR IS PORT (
	CIN : IN std_logic;
	CO2_0 : OUT std_logic;
	CO2_1 : OUT std_logic;
	CO : OUT std_logic;
	CO14_1 : OUT std_logic;
	CO14_0 : OUT std_logic;
	CO12_1 : OUT std_logic;
	CO12_0 : OUT std_logic;
	CO10_1 : OUT std_logic;
	CO10_0 : OUT std_logic;
	CO8_1 : OUT std_logic;
	CO8_0 : OUT std_logic;
	CO6_1 : OUT std_logic;
	CO6_0 : OUT std_logic;
	CO4B : OUT std_logic;
	CO0B : OUT std_logic;
	CO4A : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic
); END VADC16CR;



ARCHITECTURE STRUCTURE OF VADC16CR IS

-- COMPONENTS

COMPONENT CY2B
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MAJ3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00048 : std_logic;
SIGNAL CO10_A : std_logic;
SIGNAL CO10_B : std_logic;
SIGNAL CO15_A : std_logic;
SIGNAL CO4_0 : std_logic;
SIGNAL CO15_0 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL CO0A : std_logic;
SIGNAL CO4_1 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL CO15_B : std_logic;
SIGNAL CO15_1 : std_logic;
SIGNAL N00082 : std_logic;

-- GATE INSTANCES

BEGIN
CO12_0<=N00051;
CO12_1<=N00038;
CO14_0<=N00036;
CO14_1<=N00034;
CO4A<=N00053;
CO2_0<=N00117;
CO2_1<=N00115;
CO6_0<=N00093;
CO6_1<=N00082;
CO8_0<=N00080;
CO8_1<=N00079;
CO10_0<=N00050;
CO10_1<=N00048;
U13 : CY2B	PORT MAP(
	B1 => B14, 
	A1 => A14, 
	B0 => B13, 
	A0 => A13, 
	Y => N00034
);
U14 : CY2B	PORT MAP(
	B1 => B12, 
	A1 => A12, 
	B0 => B11, 
	A0 => A11, 
	Y => N00038
);
U15 : CY2B	PORT MAP(
	B1 => B10, 
	A1 => A10, 
	B0 => B9, 
	A0 => A9, 
	Y => CO10_B
);
U16 : CY2B	PORT MAP(
	B1 => B8, 
	A1 => A8, 
	B0 => B7, 
	A0 => A7, 
	Y => N00079
);
U17 : CY2B	PORT MAP(
	B1 => B6, 
	A1 => A6, 
	B0 => B5, 
	A0 => A5, 
	Y => N00082
);
U18 : CY2B	PORT MAP(
	B1 => B4, 
	A1 => A4, 
	B0 => B3, 
	A0 => A3, 
	Y => CO4_1
);
U19 : CY2B	PORT MAP(
	B1 => B2, 
	A1 => A2, 
	B0 => B1, 
	A0 => A1, 
	Y => N00115
);
U1 : CS2	PORT MAP(
	C => CO15_0, 
	B => N00048, 
	D => CO15_1, 
	A => N00050, 
	S => N00053, 
	Y => CO
);
U2 : CY2A	PORT MAP(
	B1 => B12, 
	A1 => A12, 
	B0 => B11, 
	A0 => A11, 
	Y => N00051
);
U3 : CY2A	PORT MAP(
	B1 => B14, 
	A1 => A14, 
	B0 => B13, 
	A0 => A13, 
	Y => N00036
);
U4 : CY2A	PORT MAP(
	B1 => B10, 
	A1 => A10, 
	B0 => B9, 
	A0 => A9, 
	Y => CO10_A
);
U20 : CY2A	PORT MAP(
	B1 => B2, 
	A1 => A2, 
	B0 => B1, 
	A0 => A1, 
	Y => N00117
);
U5 : CY2A	PORT MAP(
	B1 => B6, 
	A1 => A6, 
	B0 => B5, 
	A0 => A5, 
	Y => N00093
);
U21 : CY2A	PORT MAP(
	B1 => B4, 
	A1 => A4, 
	B0 => B3, 
	A0 => A3, 
	Y => CO4_0
);
U6 : CY2A	PORT MAP(
	B1 => B8, 
	A1 => A8, 
	B0 => B7, 
	A0 => A7, 
	Y => N00080
);
U22 : CS2	PORT MAP(
	C => CO15_B, 
	B => N00034, 
	D => CO15_A, 
	A => N00036, 
	S => N00051, 
	Y => CO15_0
);
U7 : OR2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => CO15_A
);
U23 : CS2	PORT MAP(
	C => CO15_B, 
	B => N00034, 
	D => CO15_A, 
	A => N00036, 
	S => N00038, 
	Y => CO15_1
);
U8 : AND2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => CO15_B
);
U24 : CS2	PORT MAP(
	C => CO4_0, 
	B => N00115, 
	D => CO4_1, 
	A => N00117, 
	S => CO0A, 
	Y => N00053
);
U9 : CS2	PORT MAP(
	C => CO10_A, 
	B => N00079, 
	D => CO10_B, 
	A => N00080, 
	S => N00093, 
	Y => N00050
);
U25 : MAJ3	PORT MAP(
	A => A0, 
	B => B0, 
	C => CIN, 
	Y => CO0A
);
U10 : MAJ3	PORT MAP(
	A => A0, 
	B => B0, 
	C => CIN, 
	Y => CO0B
);
U11 : CS2	PORT MAP(
	C => CO10_A, 
	B => N00079, 
	D => CO10_B, 
	A => N00080, 
	S => N00082, 
	Y => N00048
);
U12 : CS2	PORT MAP(
	C => CO4_0, 
	B => N00115, 
	D => CO4_1, 
	A => N00117, 
	S => CO0A, 
	Y => CO4B
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA191 IS PORT (
	CTEN : IN std_logic;
	DU : IN std_logic;
	CLK : IN std_logic;
	LOAD : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	QD : OUT std_logic;
	QC : OUT std_logic;
	QB : OUT std_logic;
	QA : OUT std_logic;
	MM : OUT std_logic;
	RCO : OUT std_logic
); END TA191;



ARCHITECTURE STRUCTURE OF TA191 IS

-- COMPONENTS

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XA1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT OA1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT AO1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT OA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AOI1A
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GOR2
	PORT (
	A : IN std_logic;
	G : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00068 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL CTENB : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N000171 : std_logic;
SIGNAL N000310 : std_logic;
SIGNAL N00079 : std_logic;

-- GATE INSTANCES

BEGIN
MM<=N00115;
QA<=N00038;
QB<=N00051;
QC<=N00065;
QD<=N00093;
U13 : AND2A	PORT MAP(
	A => N00038, 
	B => CTENB, 
	Y => N00042
);
U14 : XA1	PORT MAP(
	A => N00050, 
	B => DU, 
	Y => N00058, 
	C => CTENB
);
U15 : OA1	PORT MAP(
	A => N00068, 
	B => N00079, 
	C => CTENB, 
	Y => N00083
);
U16 : OA1	PORT MAP(
	A => N00105, 
	B => N000171, 
	C => CTENB, 
	Y => N00100
);
U17 : XNOR2	PORT MAP(
	A => N00038, 
	B => N00051, 
	Y => N00050
);
U18 : OR2	PORT MAP(
	A => N00064, 
	B => N00069, 
	Y => N00068
);
U19 : XA1	PORT MAP(
	A => DU, 
	B => N00038, 
	Y => N00064, 
	C => N00065
);
U1 : DFM	PORT MAP(
	A => A, 
	B => N00040, 
	Q => N00038, 
	CLK => CLK, 
	S => LOAD
);
U2 : DFM	PORT MAP(
	A => B, 
	B => N00056, 
	Q => N00051, 
	CLK => CLK, 
	S => LOAD
);
U3 : DFM	PORT MAP(
	A => C, 
	B => N00080, 
	Q => N00065, 
	CLK => CLK, 
	S => LOAD
);
U4 : DFM	PORT MAP(
	A => D, 
	B => N00098, 
	Q => N00093, 
	CLK => CLK, 
	S => LOAD
);
U20 : XA1	PORT MAP(
	A => DU, 
	B => N00051, 
	Y => N00069, 
	C => N00065
);
U5 : AO1	PORT MAP(
	Y => N00040, 
	A => CTEN, 
	B => N00038, 
	C => N00042
);
U21 : OA1B	PORT MAP(
	A => N00074, 
	B => N00077, 
	C => N00065, 
	Y => N00079
);
U6 : AO1	PORT MAP(
	Y => N00056, 
	A => CTEN, 
	B => N00051, 
	C => N00058
);
U22 : AND3	PORT MAP(
	A => N00038, 
	B => N00051, 
	C => DU, 
	Y => N00074
);
U7 : AO1	PORT MAP(
	Y => N00080, 
	A => CTEN, 
	B => N00065, 
	C => N00083
);
U23 : AND3C	PORT MAP(
	A => N00038, 
	B => N00051, 
	C => DU, 
	Y => N00077
);
U8 : AO1	PORT MAP(
	Y => N00098, 
	A => CTEN, 
	B => N00093, 
	C => N00100
);
U24 : OR3	PORT MAP(
	A => N00092, 
	B => N00103, 
	C => N00106, 
	Y => N00105
);
U9 : AOI1A	PORT MAP(
	Y => N00115, 
	A => DU, 
	B => N00113, 
	C => N00116
);
U25 : XA1	PORT MAP(
	A => DU, 
	B => N00038, 
	Y => N00092, 
	C => N00093
);
U26 : XA1	PORT MAP(
	A => DU, 
	B => N00051, 
	Y => N00103, 
	C => N00093
);
U27 : XA1	PORT MAP(
	A => DU, 
	B => N00065, 
	Y => N00106, 
	C => N00093
);
U28 : OA1B	PORT MAP(
	A => N00120, 
	B => N00123, 
	C => N00093, 
	Y => N000171
);
U29 : AND4	PORT MAP(
	A => DU, 
	B => N00038, 
	C => N00051, 
	D => N00065, 
	Y => N00120
);
U30 : AND4D	PORT MAP(
	A => DU, 
	B => N00038, 
	C => N00051, 
	D => N00065, 
	Y => N00123
);
U31 : AND3	PORT MAP(
	A => N000310, 
	B => N00093, 
	C => DU, 
	Y => N00116
);
U32 : AND3	PORT MAP(
	A => N00038, 
	B => N00051, 
	C => N00065, 
	Y => N000310
);
U10 : GOR2	PORT MAP(
	A => N00115, 
	G => CLK, 
	Y => RCO
);
U11 : AND4D	PORT MAP(
	A => N00038, 
	B => N00051, 
	C => N00065, 
	D => N00093, 
	Y => N00113
);
U12 : INV	PORT MAP(
	A => CTEN, 
	Y => CTENB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FCTU16C IS PORT (
	CLK : IN std_logic;
	CLR : IN std_logic;
	LD1 : IN std_logic;
	LD2 : IN std_logic;
	CE1 : IN std_logic;
	CE2 : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
); END FCTU16C;



ARCHITECTURE STRUCTURE OF FCTU16C IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FCTU8A	 PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	\TO\ : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END COMPONENT;

COMPONENT FCTU8B	 PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	TE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL \TO\ : std_logic;
SIGNAL N06180 : std_logic;

-- GATE INSTANCES

BEGIN
U4 : BUF	PORT MAP(
	A => CLR, 
	Y => N06180
);
U1 : FCTU8A	PORT MAP(
	CLK => CLK, 
	LD => LD1, 
	CLR => N06180, 
	CE => CE1, 
	\TO\ => \TO\, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7
);
U2 : FCTU8B	PORT MAP(
	CLK => CLK, 
	LD => LD2, 
	CLR => CLR, 
	CE => CE2, 
	TE => \TO\, 
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15
);
END STRUCTURE;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA688 IS PORT (
	G : IN std_logic;
	P7 : IN std_logic;
	P6 : IN std_logic;
	P5 : IN std_logic;
	P4 : IN std_logic;
	P3 : IN std_logic;
	P2 : IN std_logic;
	P1 : IN std_logic;
	P0 : IN std_logic;
	Q7 : IN std_logic;
	Q6 : IN std_logic;
	Q5 : IN std_logic;
	Q4 : IN std_logic;
	Q3 : IN std_logic;
	Q2 : IN std_logic;
	Q1 : IN std_logic;
	Q0 : IN std_logic;
	PEQ : OUT std_logic
); END TA688;



ARCHITECTURE STRUCTURE OF TA688 IS

-- COMPONENTS

COMPONENT XA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT XO1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT OR5B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00025 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XA1A	PORT MAP(
	A => P0, 
	B => Q0, 
	Y => N00013, 
	C => N00014
);
U2 : XA1A	PORT MAP(
	A => P2, 
	B => Q2, 
	Y => N00019, 
	C => N00020
);
U3 : XO1	PORT MAP(
	A => P4, 
	B => Q4, 
	Y => N00024, 
	C => N00028
);
U4 : XO1	PORT MAP(
	A => P6, 
	B => Q6, 
	Y => N00025, 
	C => N00033
);
U5 : OR5B	PORT MAP(
	A => N00013, 
	B => N00019, 
	C => N00024, 
	D => N00025, 
	Y => PEQ, 
	E => G
);
U6 : XNOR2	PORT MAP(
	A => P1, 
	B => Q1, 
	Y => N00014
);
U7 : XNOR2	PORT MAP(
	A => P3, 
	B => Q3, 
	Y => N00020
);
U8 : XOR2	PORT MAP(
	A => P5, 
	B => Q5, 
	Y => N00028
);
U9 : XOR2	PORT MAP(
	A => P7, 
	B => Q7, 
	Y => N00033
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA138 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	G1 : IN std_logic;
	G2B : IN std_logic;
	G2A : IN std_logic
); END TA138;



ARCHITECTURE STRUCTURE OF TA138 IS

-- COMPONENTS

COMPONENT OR4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00044 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00028 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR4	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	D => N00020, 
	Y => Y0
);
U2 : OR4	PORT MAP(
	A => N00022, 
	B => B, 
	C => C, 
	D => N00020, 
	Y => Y1
);
U3 : OR4	PORT MAP(
	A => A, 
	B => N00028, 
	C => C, 
	D => N00020, 
	Y => Y2
);
U4 : OR4	PORT MAP(
	A => N00022, 
	B => N00028, 
	C => C, 
	D => N00020, 
	Y => Y3
);
U5 : OR4	PORT MAP(
	A => A, 
	B => B, 
	C => N00044, 
	D => N00020, 
	Y => Y4
);
U6 : OR4	PORT MAP(
	A => N00022, 
	B => B, 
	C => N00044, 
	D => N00020, 
	Y => Y5
);
U7 : OR4	PORT MAP(
	A => A, 
	B => N00028, 
	C => N00044, 
	D => N00020, 
	Y => Y6
);
U8 : OR4	PORT MAP(
	A => N00022, 
	B => N00028, 
	C => N00044, 
	D => N00020, 
	Y => Y7
);
U9 : INV	PORT MAP(
	A => A, 
	Y => N00022
);
U10 : INV	PORT MAP(
	A => B, 
	Y => N00028
);
U11 : INV	PORT MAP(
	A => C, 
	Y => N00044
);
U12 : OR3A	PORT MAP(
	A => G1, 
	B => G2A, 
	C => G2B, 
	Y => N00020
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY INV4 IS PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	I3 : IN std_logic;
	O3 : OUT std_logic
); END INV4;



ARCHITECTURE STRUCTURE OF INV4 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	A => I3, 
	Y => O3
);
U2 : INV	PORT MAP(
	A => I2, 
	Y => O2
);
U3 : INV	PORT MAP(
	A => I1, 
	Y => O1
);
U4 : INV	PORT MAP(
	A => I0, 
	Y => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA139 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	EN : IN std_logic
); END TA139;



ARCHITECTURE STRUCTURE OF TA139 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	A => A, 
	B => B, 
	C => EN, 
	Y => Y0
);
U2 : NAND3B	PORT MAP(
	A => B, 
	B => EN, 
	C => A, 
	Y => Y1
);
U3 : NAND3B	PORT MAP(
	A => A, 
	B => EN, 
	C => B, 
	Y => Y2
);
U4 : NAND3A	PORT MAP(
	A => EN, 
	B => A, 
	C => B, 
	Y => Y3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NMMLH IS PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic
); END NMMLH;



ARCHITECTURE STRUCTURE OF NMMLH IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA2A
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV3	 PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00091 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL N00056 : std_logic;

-- GATE INSTANCES

BEGIN
U15 : INV	PORT MAP(
	A => N00099, 
	Y => N00091
);
U16 : AND2	PORT MAP(
	A => Y0, 
	B => X0, 
	Y => P4
);
U17 : AND2	PORT MAP(
	A => Y0, 
	B => X1, 
	Y => N00055
);
U18 : AND2	PORT MAP(
	A => Y0, 
	B => X2, 
	Y => N00057
);
U19 : AND2	PORT MAP(
	A => Y0, 
	B => X3, 
	Y => N00059
);
U1 : FA1A	PORT MAP(
	A => N00098, 
	B => N00095, 
	CI => N00088, 
	CO => N00099, 
	S => P9
);
U2 : FA1A	PORT MAP(
	A => VDD, 
	B => N00094, 
	CI => N00087, 
	CO => N00098, 
	S => P8
);
U3 : FA2A	PORT MAP(
	A0 => X3, 
	A1 => YN3, 
	B => N00091, 
	CI => N00090, 
	CO => P11, 
	S => P10
);
U4 : FA2A	PORT MAP(
	A0 => X2, 
	A1 => YN3, 
	B => N00089, 
	CI => N00075, 
	CO => N00090, 
	S => N00095
);
U20 : AND2	PORT MAP(
	A => Y1, 
	B => X3, 
	Y => N00074
);
U5 : FA2A	PORT MAP(
	A0 => X1, 
	A1 => YN3, 
	B => N00078, 
	CI => N00073, 
	CO => N00088, 
	S => N00094
);
U21 : AND2	PORT MAP(
	A => Y2, 
	B => X3, 
	Y => N00089
);
U6 : FA2A	PORT MAP(
	A0 => X0, 
	A1 => YN3, 
	B => N00077, 
	CI => N00072, 
	CO => N00087, 
	S => P7
);
U22 : VCC	PORT MAP(
	Y => VDD
);
U7 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN2, 
	B => N00074, 
	CI => N00060, 
	CO => N00075, 
	S => N00078
);
U8 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN2, 
	B => N00065, 
	CI => N00058, 
	CO => N00073, 
	S => N00077
);
U9 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN2, 
	B => N00064, 
	CI => N00056, 
	CO => N00072, 
	S => P6
);
U10 : FA2A	PORT MAP(
	A0 => XN2, 
	A1 => YN1, 
	B => N00059, 
	CI => VDD, 
	CO => N00060, 
	S => N00065
);
U11 : FA2A	PORT MAP(
	A0 => XN1, 
	A1 => YN1, 
	B => N00057, 
	CI => VDD, 
	CO => N00058, 
	S => N00064
);
U12 : FA2A	PORT MAP(
	A0 => XN0, 
	A1 => YN1, 
	B => N00055, 
	CI => VDD, 
	CO => N00056, 
	S => P5
);
U13 : INV3	PORT MAP(
	I2 => X2, 
	I1 => X1, 
	I0 => X0, 
	O0 => XN0, 
	O1 => XN1, 
	O2 => XN2
);
U14 : INV3	PORT MAP(
	I2 => Y3, 
	I1 => Y2, 
	I0 => Y1, 
	O0 => YN1, 
	O1 => YN2, 
	O2 => YN3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VADC16C IS PORT (
	CIN : IN std_logic;
	CO : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	S11 : OUT std_logic;
	S12 : OUT std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	S15 : OUT std_logic
); END VADC16C;



ARCHITECTURE STRUCTURE OF VADC16C IS

-- COMPONENTS

COMPONENT VADC16SU	 PORT (
	A13 : IN std_logic;
	B13 : IN std_logic;
	A14 : IN std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	B14 : IN std_logic;
	A15 : IN std_logic;
	B15 : IN std_logic;
	CO4A : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	CO12_0 : IN std_logic;
	CO12_1 : IN std_logic;
	CO14_0 : IN std_logic;
	CO14_1 : IN std_logic;
	S15 : OUT std_logic
); END COMPONENT;

COMPONENT VADC16CR	 PORT (
	CIN : IN std_logic;
	CO2_0 : OUT std_logic;
	CO2_1 : OUT std_logic;
	CO : OUT std_logic;
	CO14_1 : OUT std_logic;
	CO14_0 : OUT std_logic;
	CO12_1 : OUT std_logic;
	CO12_0 : OUT std_logic;
	CO10_1 : OUT std_logic;
	CO10_0 : OUT std_logic;
	CO8_1 : OUT std_logic;
	CO8_0 : OUT std_logic;
	CO6_1 : OUT std_logic;
	CO6_0 : OUT std_logic;
	CO4B : OUT std_logic;
	CO0B : OUT std_logic;
	CO4A : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic
); END COMPONENT;

COMPONENT VADC16SL	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A6 : IN std_logic;
	S2 : OUT std_logic;
	B6 : IN std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	S3 : OUT std_logic;
	A8 : IN std_logic;
	B8 : IN std_logic;
	CIN : IN std_logic;
	CO0B : IN std_logic;
	CO2_0 : IN std_logic;
	CO2_1 : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic
); END COMPONENT;

COMPONENT VADC16SM	 PORT (
	A9 : IN std_logic;
	B9 : IN std_logic;
	A10 : IN std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	B10 : IN std_logic;
	A11 : IN std_logic;
	B11 : IN std_logic;
	A12 : IN std_logic;
	B12 : IN std_logic;
	CO4A : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	CO8_0 : IN std_logic;
	S11 : OUT std_logic;
	CO8_1 : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	S12 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL CO6_1 : std_logic;
SIGNAL CO14_1 : std_logic;
SIGNAL CO2_0 : std_logic;
SIGNAL CO8_0 : std_logic;
SIGNAL CO4A : std_logic;
SIGNAL CO14_0 : std_logic;
SIGNAL CO12_0 : std_logic;
SIGNAL CO6_0 : std_logic;
SIGNAL CO10_1 : std_logic;
SIGNAL CO4B : std_logic;
SIGNAL CO12_1 : std_logic;
SIGNAL CO10_0 : std_logic;
SIGNAL CO8_1 : std_logic;
SIGNAL CO2_1 : std_logic;
SIGNAL CO0B : std_logic;

-- GATE INSTANCES

BEGIN
U3 : VADC16SU	PORT MAP(
	A13 => A13, 
	B13 => B13, 
	A14 => A14, 
	S13 => S13, 
	S14 => S14, 
	B14 => B14, 
	A15 => A15, 
	B15 => B15, 
	CO4A => CO4A, 
	CO10_0 => CO10_0, 
	CO10_1 => CO10_1, 
	CO12_0 => CO12_0, 
	CO12_1 => CO12_1, 
	CO14_0 => CO14_0, 
	CO14_1 => CO14_1, 
	S15 => S15
);
U4 : VADC16CR	PORT MAP(
	CIN => CIN, 
	CO2_0 => CO2_0, 
	CO2_1 => CO2_1, 
	CO => CO, 
	CO14_1 => CO14_1, 
	CO14_0 => CO14_0, 
	CO12_1 => CO12_1, 
	CO12_0 => CO12_0, 
	CO10_1 => CO10_1, 
	CO10_0 => CO10_0, 
	CO8_1 => CO8_1, 
	CO8_0 => CO8_0, 
	CO6_1 => CO6_1, 
	CO6_0 => CO6_0, 
	CO4B => CO4B, 
	CO0B => CO0B, 
	CO4A => CO4A, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
	A8 => A8, 
	A9 => A9, 
	A10 => A10, 
	A11 => A11, 
	A12 => A12, 
	A13 => A13, 
	A14 => A14, 
	A15 => A15, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	B8 => B8, 
	B9 => B9, 
	B10 => B10, 
	B11 => B11, 
	B12 => B12, 
	B13 => B13, 
	B14 => B14, 
	B15 => B15
);
U1 : VADC16SL	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	S0 => S0, 
	S1 => S1, 
	B1 => B1, 
	A2 => A2, 
	B2 => B2, 
	A3 => A3, 
	B3 => B3, 
	A4 => A4, 
	B4 => B4, 
	A5 => A5, 
	B5 => B5, 
	A6 => A6, 
	S2 => S2, 
	B6 => B6, 
	A7 => A7, 
	B7 => B7, 
	S3 => S3, 
	A8 => A8, 
	B8 => B8, 
	CIN => CIN, 
	CO0B => CO0B, 
	CO2_0 => CO2_0, 
	CO2_1 => CO2_1, 
	CO4B => CO4B, 
	CO6_0 => CO6_0, 
	CO6_1 => CO6_1, 
	S8 => S8, 
	S7 => S7, 
	S6 => S6, 
	S5 => S5, 
	S4 => S4
);
U2 : VADC16SM	PORT MAP(
	A9 => A9, 
	B9 => B9, 
	A10 => A10, 
	S9 => S9, 
	S10 => S10, 
	B10 => B10, 
	A11 => A11, 
	B11 => B11, 
	A12 => A12, 
	B12 => B12, 
	CO4A => CO4A, 
	CO4B => CO4B, 
	CO6_0 => CO6_0, 
	CO6_1 => CO6_1, 
	CO8_0 => CO8_0, 
	S11 => S11, 
	CO8_1 => CO8_1, 
	CO10_0 => CO10_0, 
	CO10_1 => CO10_1, 
	S12 => S12
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY VAD16C IS PORT (
	CO : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	S11 : OUT std_logic;
	S12 : OUT std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	S15 : OUT std_logic
); END VAD16C;



ARCHITECTURE STRUCTURE OF VAD16C IS

-- COMPONENTS

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VAD16SU	 PORT (
	A13 : IN std_logic;
	B13 : IN std_logic;
	A14 : IN std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	B14 : IN std_logic;
	A15 : IN std_logic;
	B15 : IN std_logic;
	CO4A : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	CO12_0 : IN std_logic;
	CO12_1 : IN std_logic;
	CO14_0 : IN std_logic;
	CO14_1 : IN std_logic;
	S15 : OUT std_logic
); END COMPONENT;

COMPONENT VAD16SL	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A6 : IN std_logic;
	S2 : OUT std_logic;
	B6 : IN std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	S3 : OUT std_logic;
	A8 : IN std_logic;
	B8 : IN std_logic;
	CIN : IN std_logic;
	CO0B : IN std_logic;
	CO2_0 : IN std_logic;
	CO2_1 : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic
); END COMPONENT;

COMPONENT VAD16CR	 PORT (
	CIN : IN std_logic;
	CO2_0 : OUT std_logic;
	CO2_1 : OUT std_logic;
	CO : OUT std_logic;
	CO14_1 : OUT std_logic;
	CO14_0 : OUT std_logic;
	CO12_1 : OUT std_logic;
	CO12_0 : OUT std_logic;
	CO10_1 : OUT std_logic;
	CO10_0 : OUT std_logic;
	CO8_1 : OUT std_logic;
	CO8_0 : OUT std_logic;
	CO6_1 : OUT std_logic;
	CO6_0 : OUT std_logic;
	CO4B : OUT std_logic;
	CO0B : OUT std_logic;
	CO4A : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic
); END COMPONENT;

COMPONENT VAD16SM	 PORT (
	A9 : IN std_logic;
	B9 : IN std_logic;
	A10 : IN std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	B10 : IN std_logic;
	A11 : IN std_logic;
	B11 : IN std_logic;
	A12 : IN std_logic;
	B12 : IN std_logic;
	CO4A : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	CO8_0 : IN std_logic;
	S11 : OUT std_logic;
	CO8_1 : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	S12 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL CO14_1 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL CO0B : std_logic;
SIGNAL CO4A : std_logic;
SIGNAL CO2_0 : std_logic;
SIGNAL CO6_0 : std_logic;
SIGNAL CO4B : std_logic;
SIGNAL CO2_1 : std_logic;
SIGNAL CO8_1 : std_logic;
SIGNAL CO6_1 : std_logic;
SIGNAL CO8_0 : std_logic;
SIGNAL CO14_0 : std_logic;
SIGNAL CO12_1 : std_logic;
SIGNAL CO12_0 : std_logic;
SIGNAL CO10_0 : std_logic;
SIGNAL CO10_1 : std_logic;

-- GATE INSTANCES

BEGIN
U5 : GND	PORT MAP(
	Y => CIN
);
U3 : VAD16SU	PORT MAP(
	A13 => A13, 
	B13 => B13, 
	A14 => A14, 
	S13 => S13, 
	S14 => S14, 
	B14 => B14, 
	A15 => A15, 
	B15 => B15, 
	CO4A => CO4A, 
	CO10_0 => CO10_0, 
	CO10_1 => CO10_1, 
	CO12_0 => CO12_0, 
	CO12_1 => CO12_1, 
	CO14_0 => CO14_0, 
	CO14_1 => CO14_1, 
	S15 => S15
);
U4 : VAD16SL	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	S0 => S0, 
	S1 => S1, 
	B1 => B1, 
	A2 => A2, 
	B2 => B2, 
	A3 => A3, 
	B3 => B3, 
	A4 => A4, 
	B4 => B4, 
	A5 => A5, 
	B5 => B5, 
	A6 => A6, 
	S2 => S2, 
	B6 => B6, 
	A7 => A7, 
	B7 => B7, 
	S3 => S3, 
	A8 => A8, 
	B8 => B8, 
	CIN => CIN, 
	CO0B => CO0B, 
	CO2_0 => CO2_0, 
	CO2_1 => CO2_1, 
	CO4B => CO4B, 
	CO6_0 => CO6_0, 
	CO6_1 => CO6_1, 
	S8 => S8, 
	S7 => S7, 
	S6 => S6, 
	S5 => S5, 
	S4 => S4
);
U1 : VAD16CR	PORT MAP(
	CIN => CIN, 
	CO2_0 => CO2_0, 
	CO2_1 => CO2_1, 
	CO => CO, 
	CO14_1 => CO14_1, 
	CO14_0 => CO14_0, 
	CO12_1 => CO12_1, 
	CO12_0 => CO12_0, 
	CO10_1 => CO10_1, 
	CO10_0 => CO10_0, 
	CO8_1 => CO8_1, 
	CO8_0 => CO8_0, 
	CO6_1 => CO6_1, 
	CO6_0 => CO6_0, 
	CO4B => CO4B, 
	CO0B => CO0B, 
	CO4A => CO4A, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
	A8 => A8, 
	A9 => A9, 
	A10 => A10, 
	A11 => A11, 
	A12 => A12, 
	A13 => A13, 
	A14 => A14, 
	A15 => A15, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	B8 => B8, 
	B9 => B9, 
	B10 => B10, 
	B11 => B11, 
	B12 => B12, 
	B13 => B13, 
	B14 => B14, 
	B15 => B15
);
U2 : VAD16SM	PORT MAP(
	A9 => A9, 
	B9 => B9, 
	A10 => A10, 
	S9 => S9, 
	S10 => S10, 
	B10 => B10, 
	A11 => A11, 
	B11 => B11, 
	A12 => A12, 
	B12 => B12, 
	CO4A => CO4A, 
	CO4B => CO4B, 
	CO6_0 => CO6_0, 
	CO6_1 => CO6_1, 
	CO8_0 => CO8_0, 
	S11 => S11, 
	CO8_1 => CO8_1, 
	CO10_0 => CO10_0, 
	CO10_1 => CO10_1, 
	S12 => S12
);
END STRUCTURE;

            

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FCTU8A IS PORT (
	CLK : IN std_logic;
	LD : IN std_logic;
	CLR : IN std_logic;
	CE : IN std_logic;
	\TO\ : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END FCTU8A;



ARCHITECTURE STRUCTURE OF FCTU8A IS

-- COMPONENTS

COMPONENT DFM6A
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT AX1C
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL D3TO0 : std_logic;
SIGNAL CEB : std_logic;
SIGNAL Q3X : std_logic;
SIGNAL LDB1 : std_logic;
SIGNAL TEB : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL Q6I : std_logic;
SIGNAL CETO : std_logic;
SIGNAL TE1 : std_logic;
SIGNAL Q2I : std_logic;
SIGNAL CE4 : std_logic;
SIGNAL CE0 : std_logic;
SIGNAL LDB2 : std_logic;
SIGNAL Q7X : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00135 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00030;
Q1<=N00055;
Q2<=N00076;
Q3<=N00099;
Q4<=N00031;
Q5<=N00056;
Q6<=N00075;
Q7<=N00097;
\TO\<=N00119;
U13 : DFM6A	PORT MAP(
	D0 => D1, 
	D1 => D1, 
	D2 => N00064, 
	D3 => N00055, 
	S0 => CE0, 
	S1 => LDB1, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00055
);
U14 : DFM6A	PORT MAP(
	D0 => D2, 
	D1 => D2, 
	D2 => Q2I, 
	D3 => N00076, 
	S0 => CE0, 
	S1 => LDB1, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00076
);
U15 : DFM6A	PORT MAP(
	D0 => D3, 
	D1 => D3, 
	D2 => Q3X, 
	D3 => N00099, 
	S0 => CE0, 
	S1 => LDB1, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00099
);
U16 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D4, 
	D1 => CE4, 
	D2 => D4, 
	D3 => N00031, 
	S10 => CEB, 
	S11 => TEB, 
	S0 => LDB2, 
	CLK => CLK, 
	Q => N00031
);
U17 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D5, 
	D1 => N00062, 
	D2 => D5, 
	D3 => N00056, 
	S10 => CE4, 
	S11 => TEB, 
	S0 => LDB2, 
	CLK => CLK, 
	Q => N00056
);
U18 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D6, 
	D1 => Q6I, 
	D2 => D6, 
	D3 => N00075, 
	S10 => CE4, 
	S11 => TEB, 
	S0 => LDB2, 
	CLK => CLK, 
	Q => N00075
);
U19 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D7, 
	D1 => Q7X, 
	D2 => D7, 
	D3 => N00097, 
	S10 => CE4, 
	S11 => TEB, 
	S0 => LDB2, 
	CLK => CLK, 
	Q => N00097
);
U1 : AX1C	PORT MAP(
	Y => Q3X, 
	A => N00055, 
	B => N00076, 
	C => N00099
);
U2 : AX1C	PORT MAP(
	Y => Q7X, 
	A => N00056, 
	B => N00075, 
	C => N00097
);
U3 : XOR2	PORT MAP(
	A => N00056, 
	B => N00075, 
	Y => Q6I
);
U4 : INV	PORT MAP(
	A => N00056, 
	Y => N00062
);
U20 : DFM6A	PORT MAP(
	D0 => D3TO0, 
	D1 => D3TO0, 
	D2 => CETO, 
	D3 => TE1, 
	S0 => CEB, 
	S1 => LDB1, 
	CLK => CLK, 
	CLR => CLR, 
	Q => TE1
);
U5 : XOR2	PORT MAP(
	A => N00055, 
	B => N00076, 
	Y => Q2I
);
U21 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D3TO0, 
	D1 => D3TO0, 
	D2 => N00121, 
	D3 => N00129, 
	S10 => N00132, 
	S11 => N00135, 
	S0 => CETO, 
	CLK => CLK, 
	Q => N00119
);
U6 : INV	PORT MAP(
	A => N00055, 
	Y => N00064
);
U22 : AND4	PORT MAP(
	A => D3, 
	B => D2, 
	C => D1, 
	D => D0, 
	Y => D3TO0
);
U7 : NAND3	PORT MAP(
	A => D6, 
	B => D5, 
	C => D4, 
	Y => N00132
);
U23 : NAND2A	PORT MAP(
	A => CE, 
	B => N00030, 
	Y => CE0
);
U8 : INV	PORT MAP(
	A => TE1, 
	Y => TEB
);
U24 : NAND2A	PORT MAP(
	A => CE, 
	B => N00031, 
	Y => CE4
);
U9 : NAND2A	PORT MAP(
	A => LD, 
	B => D7, 
	Y => N00135
);
U25 : AND5B	PORT MAP(
	A => CE, 
	B => N00030, 
	C => N00055, 
	D => N00076, 
	Y => CETO, 
	E => N00099
);
U26 : BUF	PORT MAP(
	A => LD, 
	Y => LDB1
);
U27 : BUF	PORT MAP(
	A => CE, 
	Y => CEB
);
U28 : BUF	PORT MAP(
	A => LD, 
	Y => LDB2
);
U10 : AND3	PORT MAP(
	A => CE, 
	B => N00119, 
	C => LD, 
	Y => N00121
);
U11 : AND4	PORT MAP(
	A => N00097, 
	B => N00075, 
	C => N00056, 
	D => N00031, 
	Y => N00129
);
U12 : DFM6A	PORT MAP(
	D0 => D0, 
	D1 => D0, 
	D2 => CE0, 
	D3 => N00030, 
	S0 => CEB, 
	S1 => LDB1, 
	CLK => CLK, 
	CLR => CLR, 
	Q => N00030
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VCTD4CM IS PORT (
	CNT : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	CT0 : IN std_logic;
	CT1 : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic;
	CI : IN std_logic
); END VCTD4CM;



ARCHITECTURE STRUCTURE OF VCTD4CM IS

-- COMPONENTS

COMPONENT NAND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1B
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00043 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00048 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00021;
Q2<=N00015;
Q3<=N00043;
U1 : NAND3C	PORT MAP(
	A => CI, 
	B => N00014, 
	C => N00021, 
	Y => N00020
);
U2 : NAND4D	PORT MAP(
	A => N00014, 
	B => N00021, 
	C => N00015, 
	D => N00043, 
	Y => CO
);
U3 : AX1B	PORT MAP(
	Y => N00056, 
	A => N00048, 
	B => CT1, 
	C => N00021
);
U4 : AX1B	PORT MAP(
	Y => N00026, 
	A => N00020, 
	B => CT1, 
	C => N00015
);
U5 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00026, 
	D1 => P2, 
	D2 => N00015, 
	D3 => P2, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00015
);
U6 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00024, 
	D1 => P0, 
	D2 => N00014, 
	D3 => P0, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00014
);
U7 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00056, 
	D1 => P1, 
	D2 => N00021, 
	D3 => P1, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00021
);
U8 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00055, 
	D1 => P3, 
	D2 => N00043, 
	D3 => P3, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00043
);
U9 : AX1B	PORT MAP(
	Y => N00055, 
	A => N00047, 
	B => CT1, 
	C => N00043
);
U10 : AX1B	PORT MAP(
	Y => N00024, 
	A => CI, 
	B => CT1, 
	C => N00014
);
U11 : NAND2B	PORT MAP(
	A => CI, 
	B => N00014, 
	Y => N00048
);
U12 : NAND4D	PORT MAP(
	A => CI, 
	B => N00014, 
	C => N00021, 
	D => N00015, 
	Y => N00047
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VCTD16C IS PORT (
	CLK : IN std_logic;
	LOAD : IN std_logic;
	COUNT : IN std_logic;
	RESET : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
); END VCTD16C;



ARCHITECTURE STRUCTURE OF VCTD16C IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCTD2CP	 PORT (
	COUNT : IN std_logic;
	CLEAR : IN std_logic;
	LOAD : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	LD : OUT std_logic;
	CLR : OUT std_logic;
	CNT : OUT std_logic
); END COMPONENT;

COMPONENT VCTD2CU	 PORT (
	CNT : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	CT0 : IN std_logic;
	CT1 : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CI : IN std_logic
); END COMPONENT;

COMPONENT VCTD4CM	 PORT (
	CNT : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	CT0 : IN std_logic;
	CT1 : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic;
	CI : IN std_logic
); END COMPONENT;

COMPONENT VCTD4CL	 PORT (
	CNT : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	CT0 : IN std_logic;
	CT1 : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00071 : std_logic;
SIGNAL COUNTB : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL D0B : std_logic;
SIGNAL D1B : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL RESETB : std_logic;
SIGNAL LOADB : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00054 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00054;
Q1<=N00062;
U1 : BUF	PORT MAP(
	A => COUNT, 
	Y => COUNTB
);
U2 : BUF	PORT MAP(
	A => RESET, 
	Y => RESETB
);
U3 : BUF	PORT MAP(
	A => D1, 
	Y => D1B
);
U4 : BUF	PORT MAP(
	A => D0, 
	Y => D0B
);
U5 : BUF	PORT MAP(
	A => LOAD, 
	Y => LOADB
);
U6 : NAND2B	PORT MAP(
	A => N00072, 
	B => N00071, 
	Y => N00073
);
U7 : NAND3C	PORT MAP(
	A => N00074, 
	B => N00072, 
	C => N00071, 
	Y => N00075
);
U11 : VCTD2CP	PORT MAP(
	COUNT => COUNTB, 
	CLEAR => RESETB, 
	LOAD => LOADB, 
	CLK => CLK, 
	P0 => D0B, 
	P1 => D1B, 
	Q1 => N00062, 
	Q0 => N00054, 
	LD => N00046, 
	CLR => N00038, 
	CNT => N00034
);
U12 : VCTD2CU	PORT MAP(
	CNT => N00034, 
	CLR => N00038, 
	LD => N00046, 
	CT0 => N00054, 
	CT1 => N00062, 
	CLK => CLK, 
	P0 => D14, 
	P1 => D15, 
	Q1 => Q15, 
	Q0 => Q14, 
	CI => N00075
);
U13 : VCTD4CM	PORT MAP(
	CNT => N00033, 
	CLR => N00037, 
	LD => N00044, 
	CT0 => N00052, 
	CT1 => N00060, 
	CLK => CLK, 
	P0 => D10, 
	P1 => D11, 
	P2 => D12, 
	P3 => D13, 
	Q3 => Q13, 
	Q2 => Q12, 
	Q1 => Q11, 
	Q0 => Q10, 
	CO => N00074, 
	CI => N00073
);
U14 : VCTD4CM	PORT MAP(
	CNT => N00032, 
	CLR => N00036, 
	LD => N00042, 
	CT0 => N00050, 
	CT1 => N00058, 
	CLK => CLK, 
	P0 => D6, 
	P1 => D7, 
	P2 => D8, 
	P3 => D9, 
	Q3 => Q9, 
	Q2 => Q8, 
	Q1 => Q7, 
	Q0 => Q6, 
	CO => N00072, 
	CI => N00071
);
U15 : VCTD4CL	PORT MAP(
	CNT => N00031, 
	CLR => N00035, 
	LD => N00040, 
	CT0 => N00048, 
	CT1 => N00056, 
	CLK => CLK, 
	P0 => D2, 
	P1 => D3, 
	P2 => D4, 
	P3 => D5, 
	Q3 => Q5, 
	Q2 => Q4, 
	Q1 => Q3, 
	Q0 => Q2, 
	CO => N00071
);
U8 : VCTD2CP	PORT MAP(
	COUNT => COUNTB, 
	CLEAR => RESETB, 
	LOAD => LOADB, 
	CLK => CLK, 
	P0 => D0B, 
	P1 => D1B, 
	Q1 => N00056, 
	Q0 => N00048, 
	LD => N00040, 
	CLR => N00035, 
	CNT => N00031
);
U9 : VCTD2CP	PORT MAP(
	COUNT => COUNTB, 
	CLEAR => RESETB, 
	LOAD => LOADB, 
	CLK => CLK, 
	P0 => D0B, 
	P1 => D1B, 
	Q1 => N00058, 
	Q0 => N00050, 
	LD => N00042, 
	CLR => N00036, 
	CNT => N00032
);
U10 : VCTD2CP	PORT MAP(
	COUNT => COUNTB, 
	CLEAR => RESETB, 
	LOAD => LOADB, 
	CLK => CLK, 
	P0 => D0B, 
	P1 => D1B, 
	Q1 => N00060, 
	Q0 => N00052, 
	LD => N00044, 
	CLR => N00037, 
	CNT => N00033
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA169 IS PORT (
	LD : IN std_logic;
	UD : IN std_logic;
	ENT : IN std_logic;
	ENP : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	RCO : OUT std_logic
); END TA169;



ARCHITECTURE STRUCTURE OF TA169 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AO3A
	PORT (
	Y : OUT std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT AX1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND4B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AOI1A
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NOR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00036 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00079 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00022;
QB<=N00032;
QC<=N00043;
QD<=N00059;
U13 : XNOR2	PORT MAP(
	A => UD, 
	B => N00022, 
	Y => N00036
);
U14 : AO3A	PORT MAP(
	Y => N00048, 
	C => UD, 
	B => N00032, 
	A => N00022, 
	D => N00053
);
U15 : AND3C	PORT MAP(
	A => N00022, 
	B => N00032, 
	C => UD, 
	Y => N00053
);
U16 : AND4	PORT MAP(
	A => N00022, 
	B => N00032, 
	C => UD, 
	D => N00043, 
	Y => N00066
);
U17 : OR2A	PORT MAP(
	A => N00063, 
	B => N00066, 
	Y => N00065
);
U18 : NAND4D	PORT MAP(
	A => N00022, 
	B => N00032, 
	C => UD, 
	D => N00043, 
	Y => N00063
);
U1 : DFM	PORT MAP(
	A => A, 
	B => N00027, 
	Q => N00022, 
	CLK => CLK, 
	S => LD
);
U2 : DFM	PORT MAP(
	A => B, 
	B => N00038, 
	Q => N00032, 
	CLK => CLK, 
	S => LD
);
U3 : DFM	PORT MAP(
	A => C, 
	B => N00050, 
	Q => N00043, 
	CLK => CLK, 
	S => LD
);
U4 : DFM	PORT MAP(
	A => D, 
	B => N00067, 
	Q => N00059, 
	CLK => CLK, 
	S => LD
);
U5 : XNOR2	PORT MAP(
	A => N00025, 
	B => N00022, 
	Y => N00027
);
U6 : AX1	PORT MAP(
	Y => N00038, 
	A => N00025, 
	B => N00036, 
	C => N00032
);
U7 : AX1	PORT MAP(
	Y => N00050, 
	A => N00025, 
	B => N00048, 
	C => N00043
);
U8 : AX1	PORT MAP(
	Y => N00067, 
	A => N00025, 
	B => N00065, 
	C => N00059
);
U9 : AND4B	PORT MAP(
	A => ENP, 
	B => ENT, 
	C => N00059, 
	D => N00066, 
	Y => N00074
);
U10 : AOI1A	PORT MAP(
	Y => RCO, 
	A => N00063, 
	B => N00079, 
	C => N00074
);
U11 : NOR3	PORT MAP(
	A => N00059, 
	B => ENP, 
	C => ENT, 
	Y => N00079
);
U12 : OR2	PORT MAP(
	A => ENP, 
	B => ENT, 
	Y => N00025
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VCTD2CP IS PORT (
	COUNT : IN std_logic;
	CLEAR : IN std_logic;
	LOAD : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	LD : OUT std_logic;
	CLR : OUT std_logic;
	CNT : OUT std_logic
); END VCTD2CP;



ARCHITECTURE STRUCTURE OF VCTD2CP IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT DF1
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic
	); END COMPONENT;

COMPONENT DF1A
	PORT (
	D : IN std_logic;
	QN : OUT std_logic;
	CLK : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL GND : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL CNTN : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00021;
Q1<=N00032;
CLR<=N00020;
CNT<=N00011;
LD<=N00017;
U1 : INV	PORT MAP(
	A => N00032, 
	Y => N00033
);
U2 : DFM7A	PORT MAP(
	CLR => N00020, 
	D0 => N00033, 
	D1 => P1, 
	D2 => N00032, 
	D3 => P1, 
	S10 => N00021, 
	S11 => N00011, 
	S0 => N00017, 
	CLK => CLK, 
	Q => N00032
);
U3 : DF1	PORT MAP(
	D => LOAD, 
	Q => N00017, 
	CLK => CLK
);
U4 : DF1	PORT MAP(
	D => COUNT, 
	Q => CNTN, 
	CLK => CLK
);
U5 : DF1A	PORT MAP(
	D => COUNT, 
	QN => N00011, 
	CLK => CLK
);
U6 : INV	PORT MAP(
	A => CLEAR, 
	Y => N00020
);
U7 : GND	PORT MAP(
	Y => GND
);
U8 : DFM7A	PORT MAP(
	CLR => N00020, 
	D0 => CNTN, 
	D1 => P0, 
	D2 => N00011, 
	D3 => P0, 
	S10 => N00021, 
	S11 => GND, 
	S0 => N00017, 
	CLK => CLK, 
	Q => N00021
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VADC16SL IS PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A6 : IN std_logic;
	S2 : OUT std_logic;
	B6 : IN std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	S3 : OUT std_logic;
	A8 : IN std_logic;
	B8 : IN std_logic;
	CIN : IN std_logic;
	CO0B : IN std_logic;
	CO2_0 : IN std_logic;
	CO2_1 : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic
); END VADC16SL;



ARCHITECTURE STRUCTURE OF VADC16SL IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT SUMX1A	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	Y : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00090 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL CO3 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00066 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00090
);
U14 : OR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00088
);
U15 : CS2	PORT MAP(
	C => N00077, 
	B => N00088, 
	D => N00083, 
	A => N00090, 
	S => CO6_1, 
	Y => N00100
);
U16 : XOR2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00034
);
U17 : XOR2	PORT MAP(
	A => CIN, 
	B => N00034, 
	Y => S0
);
U18 : XOR2	PORT MAP(
	A => CO0B, 
	B => N00040, 
	Y => S1
);
U19 : XOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00040
);
U1 : MX2	PORT MAP(
	A => N00081, 
	B => N00100, 
	S => CO4B, 
	Y => S8
);
U2 : XNOR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00059
);
U3 : CS2	PORT MAP(
	C => N00056, 
	B => CO6_1, 
	D => N00059, 
	A => CO6_0, 
	S => CO4B, 
	Y => S7
);
U20 : XOR2	PORT MAP(
	A => A4, 
	B => B4, 
	Y => N00094
);
U5 : XNOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00070
);
U21 : XOR2	PORT MAP(
	A => CO3, 
	B => N00094, 
	Y => S4
);
U6 : CS2	PORT MAP(
	C => N00066, 
	B => CO2_1, 
	D => N00070, 
	A => CO2_0, 
	S => CO0B, 
	Y => S3
);
U22 : XOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00066
);
U7 : CS2	PORT MAP(
	C => N00084, 
	B => CO2_1, 
	D => N00089, 
	A => CO2_0, 
	S => CO0B, 
	Y => CO3
);
U23 : XOR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00056
);
U8 : OR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00089
);
U24 : XOR2	PORT MAP(
	A => N00029, 
	B => CO4B, 
	Y => S5
);
U9 : AND2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00084
);
U25 : XOR2	PORT MAP(
	A => A5, 
	B => B5, 
	Y => N00029
);
U26 : XOR2	PORT MAP(
	A => A8, 
	B => B8, 
	Y => N00077
);
U11 : CS2	PORT MAP(
	C => N00077, 
	B => N00088, 
	D => N00083, 
	A => N00090, 
	S => CO6_0, 
	Y => N00081
);
U12 : XNOR2	PORT MAP(
	A => A8, 
	B => B8, 
	Y => N00083
);
U4 : SUMX1A	PORT MAP(
	CI => CO0B, 
	A0 => A1, 
	B0 => B1, 
	A1 => A2, 
	B1 => B2, 
	Y => S2
);
U10 : SUMX1A	PORT MAP(
	CI => CO4B, 
	A0 => A5, 
	B0 => B5, 
	A1 => A6, 
	B1 => B6, 
	Y => S6
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA269 IS PORT (
	LD : IN std_logic;
	UD : IN std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	ENT : IN std_logic;
	ENP : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	QH : OUT std_logic;
	QG : OUT std_logic;
	QF : OUT std_logic;
	QE : OUT std_logic;
	QD : OUT std_logic;
	QC : OUT std_logic;
	QB : OUT std_logic;
	QA : OUT std_logic;
	RCO : OUT std_logic
); END TA269;



ARCHITECTURE STRUCTURE OF TA269 IS

-- COMPONENTS

COMPONENT UDCNT4A
	PORT (
	LD : IN std_logic;
	UD : IN std_logic;
	CI : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q2 : OUT std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
	); END COMPONENT;

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT TA169	 PORT (
	LD : IN std_logic;
	UD : IN std_logic;
	ENT : IN std_logic;
	ENP : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	RCO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00005 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
U2 : UDCNT4A	PORT MAP(
	LD => LD, 
	UD => N00008, 
	CI => N00005, 
	CLK => CLK, 
	P0 => E, 
	P1 => F, 
	Q2 => QG, 
	P2 => G, 
	P3 => H, 
	Q3 => QH, 
	Q1 => QF, 
	Q0 => QE, 
	CO => RCO
);
U3 : BUF	PORT MAP(
	A => UD, 
	Y => N00008
);
U1 : TA169	PORT MAP(
	LD => LD, 
	UD => N00008, 
	ENT => ENT, 
	ENP => ENP, 
	QA => QA, 
	QB => QB, 
	QC => QC, 
	QD => QD, 
	CLK => CLK, 
	A => A, 
	B => B, 
	C => C, 
	D => D, 
	RCO => N00005
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY INV3 IS PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic
); END INV3;



ARCHITECTURE STRUCTURE OF INV3 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	A => I2, 
	Y => O2
);
U2 : INV	PORT MAP(
	A => I1, 
	Y => O1
);
U3 : INV	PORT MAP(
	A => I0, 
	Y => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VADC16SM IS PORT (
	A9 : IN std_logic;
	B9 : IN std_logic;
	A10 : IN std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	B10 : IN std_logic;
	A11 : IN std_logic;
	B11 : IN std_logic;
	A12 : IN std_logic;
	B12 : IN std_logic;
	CO4A : IN std_logic;
	CO4B : IN std_logic;
	CO6_0 : IN std_logic;
	CO6_1 : IN std_logic;
	CO8_0 : IN std_logic;
	S11 : OUT std_logic;
	CO8_1 : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	S12 : OUT std_logic
); END VADC16SM;



ARCHITECTURE STRUCTURE OF VADC16SM IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00057 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00035 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : XNOR2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00037
);
U14 : AND2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00048
);
U15 : MX2	PORT MAP(
	A => N00055, 
	B => N00060, 
	S => N00048, 
	Y => N00057
);
U16 : OR2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00065
);
U17 : XNOR2	PORT MAP(
	A => A12, 
	B => B12, 
	Y => N00060
);
U18 : MX2	PORT MAP(
	A => N00055, 
	B => N00060, 
	S => N00065, 
	Y => N00061
);
U19 : XOR2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00029
);
U1 : CS2	PORT MAP(
	C => N00078, 
	B => CO8_1, 
	D => N00085, 
	A => CO8_0, 
	S => CO6_1, 
	Y => N00081
);
U2 : CS2	PORT MAP(
	C => N00078, 
	B => CO8_1, 
	D => N00085, 
	A => CO8_0, 
	S => CO6_0, 
	Y => N00082
);
U3 : MX2	PORT MAP(
	A => N00035, 
	B => N00047, 
	S => CO4B, 
	Y => S9
);
U4 : XNOR2	PORT MAP(
	A => A10, 
	B => B10, 
	Y => N00074
);
U20 : XOR2	PORT MAP(
	A => A10, 
	B => B10, 
	Y => N00068
);
U5 : AND2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00078
);
U21 : XOR2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00026
);
U6 : OR2	PORT MAP(
	A => A9, 
	B => B9, 
	Y => N00085
);
U22 : XOR2	PORT MAP(
	A => A12, 
	B => B12, 
	Y => N00055
);
U7 : CS2	PORT MAP(
	C => N00068, 
	B => N00081, 
	D => N00074, 
	A => N00082, 
	S => CO4B, 
	Y => S10
);
U8 : XNOR2	PORT MAP(
	A => A11, 
	B => B11, 
	Y => N00033
);
U9 : CS2	PORT MAP(
	C => N00029, 
	B => CO8_1, 
	D => N00037, 
	A => CO8_0, 
	S => CO6_1, 
	Y => N00047
);
U10 : CS2	PORT MAP(
	C => N00026, 
	B => CO10_1, 
	D => N00033, 
	A => CO10_0, 
	S => CO4A, 
	Y => S11
);
U11 : CS2	PORT MAP(
	C => N00057, 
	B => CO10_1, 
	D => N00061, 
	A => CO10_0, 
	S => CO4A, 
	Y => S12
);
U12 : CS2	PORT MAP(
	C => N00029, 
	B => CO8_1, 
	D => N00037, 
	A => CO8_0, 
	S => CO6_0, 
	Y => N00035
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA1 IS PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic
); END CSA1;



ARCHITECTURE STRUCTURE OF CSA1 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00009, 
	CO => C0, 
	S => S00
);
U2 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00014, 
	CO => C1, 
	S => S10
);
U3 : VCC	PORT MAP(
	Y => N00009
);
U4 : GND	PORT MAP(
	Y => N00014
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY WTREE5 IS PORT (
	B : IN std_logic;
	C : IN std_logic;
	DN : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	CON : OUT std_logic;
	A : IN std_logic;
	EN : IN std_logic
); END WTREE5;



ARCHITECTURE STRUCTURE OF WTREE5 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT FA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => B, 
	B => C, 
	CI => DN, 
	CO => N00006, 
	S => N00013
);
U2 : FA1B	PORT MAP(
	A => A, 
	B => N00013, 
	CI => EN, 
	CO => N00009, 
	S => S0
);
U3 : FA1A	PORT MAP(
	A => N00006, 
	B => N00007, 
	CI => N00009, 
	CO => CON, 
	S => S1
);
U4 : GND	PORT MAP(
	Y => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VCTD4CL IS PORT (
	CNT : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	CT0 : IN std_logic;
	CT1 : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END VCTD4CL;



ARCHITECTURE STRUCTURE OF VCTD4CL IS

-- COMPONENTS

COMPONENT AX1B
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00043 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00013;
Q1<=N00017;
Q2<=N00014;
Q3<=N00038;
U1 : AX1B	PORT MAP(
	Y => N00050, 
	A => N00043, 
	B => CT1, 
	C => N00038
);
U2 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00050, 
	D1 => P3, 
	D2 => N00038, 
	D3 => P3, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00038
);
U3 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00047, 
	D1 => P1, 
	D2 => N00017, 
	D3 => P1, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00017
);
U4 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00020, 
	D1 => P0, 
	D2 => N00013, 
	D3 => P0, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00013
);
U5 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => N00023, 
	D1 => P2, 
	D2 => N00014, 
	D3 => P2, 
	S10 => CT0, 
	S11 => CNT, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00014
);
U6 : NAND4D	PORT MAP(
	A => N00013, 
	B => N00017, 
	C => N00014, 
	D => N00038, 
	Y => CO
);
U7 : NAND2B	PORT MAP(
	A => N00013, 
	B => N00017, 
	Y => N00016
);
U8 : AX1B	PORT MAP(
	Y => N00023, 
	A => N00016, 
	B => CT1, 
	C => N00014
);
U9 : NAND3C	PORT MAP(
	A => N00013, 
	B => N00017, 
	C => N00014, 
	Y => N00043
);
U10 : AX1B	PORT MAP(
	Y => N00047, 
	A => N00013, 
	B => CT1, 
	C => N00017
);
U11 : XNOR2	PORT MAP(
	A => CT1, 
	B => N00013, 
	Y => N00020
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY VAD16SU IS PORT (
	A13 : IN std_logic;
	B13 : IN std_logic;
	A14 : IN std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	B14 : IN std_logic;
	A15 : IN std_logic;
	B15 : IN std_logic;
	CO4A : IN std_logic;
	CO10_0 : IN std_logic;
	CO10_1 : IN std_logic;
	CO12_0 : IN std_logic;
	CO12_1 : IN std_logic;
	CO14_0 : IN std_logic;
	CO14_1 : IN std_logic;
	S15 : OUT std_logic
); END VAD16SU;



ARCHITECTURE STRUCTURE OF VAD16SU IS

-- COMPONENTS

COMPONENT MX2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS2
	PORT (
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00040 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00060 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : MX2B	PORT MAP(
	A => N00033, 
	B => N00033, 
	Y => N00036, 
	S => CO12_0
);
U14 : XOR2	PORT MAP(
	A => A13, 
	B => B13, 
	Y => N00033
);
U15 : XNOR2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => N00024
);
U16 : CS2	PORT MAP(
	C => N00036, 
	B => CO10_1, 
	D => N00040, 
	A => CO10_0, 
	S => CO4A, 
	Y => S13
);
U1 : CS2	PORT MAP(
	C => N00019, 
	B => CO14_1, 
	D => N00024, 
	A => CO14_0, 
	S => CO12_1, 
	Y => N00031
);
U2 : CS2	PORT MAP(
	C => N00023, 
	B => CO10_1, 
	D => N00031, 
	A => CO10_0, 
	S => CO4A, 
	Y => S15
);
U3 : CS2	PORT MAP(
	C => N00019, 
	B => CO14_1, 
	D => N00024, 
	A => CO14_0, 
	S => CO12_0, 
	Y => N00023
);
U4 : CS2	PORT MAP(
	C => N00057, 
	B => CO10_1, 
	D => N00067, 
	A => CO10_0, 
	S => CO4A, 
	Y => S14
);
U5 : CS2	PORT MAP(
	C => N00053, 
	B => N00060, 
	D => N00059, 
	A => N00061, 
	S => CO12_0, 
	Y => N00057
);
U6 : CS2	PORT MAP(
	C => N00053, 
	B => N00060, 
	D => N00059, 
	A => N00061, 
	S => CO12_1, 
	Y => N00067
);
U7 : XOR2	PORT MAP(
	A => A15, 
	B => B15, 
	Y => N00019
);
U8 : OR2	PORT MAP(
	A => A13, 
	B => B13, 
	Y => N00060
);
U9 : AND2	PORT MAP(
	A => A13, 
	B => B13, 
	Y => N00061
);
U10 : XNOR2	PORT MAP(
	A => A14, 
	B => B14, 
	Y => N00059
);
U11 : XOR2	PORT MAP(
	A => A14, 
	B => B14, 
	Y => N00053
);
U12 : MX2B	PORT MAP(
	A => N00033, 
	B => N00033, 
	Y => N00040, 
	S => CO12_1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA377 IS PORT (
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	EN : IN std_logic;
	CLK : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	D1 : IN std_logic
); END TA377;



ARCHITECTURE STRUCTURE OF TA377 IS

-- COMPONENTS

COMPONENT DFE1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	E : IN std_logic;
	CLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DFE1B	PORT MAP(
	D => D1, 
	Q => Q1, 
	E => EN, 
	CLK => CLK
);
U2 : DFE1B	PORT MAP(
	D => D2, 
	Q => Q2, 
	E => EN, 
	CLK => CLK
);
U3 : DFE1B	PORT MAP(
	D => D3, 
	Q => Q3, 
	E => EN, 
	CLK => CLK
);
U4 : DFE1B	PORT MAP(
	D => D4, 
	Q => Q4, 
	E => EN, 
	CLK => CLK
);
U5 : DFE1B	PORT MAP(
	D => D5, 
	Q => Q5, 
	E => EN, 
	CLK => CLK
);
U6 : DFE1B	PORT MAP(
	D => D6, 
	Q => Q6, 
	E => EN, 
	CLK => CLK
);
U7 : DFE1B	PORT MAP(
	D => D7, 
	Q => Q7, 
	E => EN, 
	CLK => CLK
);
U8 : DFE1B	PORT MAP(
	D => D8, 
	Q => Q8, 
	E => EN, 
	CLK => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA3 IS PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S02 : OUT std_logic;
	S12 : OUT std_logic
); END CSA3;



ARCHITECTURE STRUCTURE OF CSA3 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00013 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00021 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00013, 
	CO => C0, 
	S => S02
);
U2 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00017, 
	CO => N00013, 
	S => S01
);
U3 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00021, 
	CO => N00017, 
	S => S00
);
U4 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00026, 
	CO => C1, 
	S => S12
);
U5 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00030, 
	CO => N00026, 
	S => S11
);
U6 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00034, 
	CO => N00030, 
	S => S10
);
U7 : VCC	PORT MAP(
	Y => N00021
);
U8 : GND	PORT MAP(
	Y => N00034
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA160A IS PORT (
	CLR : IN std_logic;
	LD : IN std_logic;
	ENT : IN std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	ENP : IN std_logic;
	RCO : OUT std_logic
); END TA160A;



ARCHITECTURE STRUCTURE OF TA160A IS

-- COMPONENTS

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT DFM7A
	PORT (
	CLR : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S10 : IN std_logic;
	S11 : IN std_logic;
	S0 : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1C
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AO1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00042 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL GND : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL ENTP : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00017 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00016;
QB<=N00015;
QC<=N00020;
QD<=N00039;
U13 : GND	PORT MAP(
	Y => GND
);
U1 : AX1	PORT MAP(
	Y => N00042, 
	A => N00039, 
	B => N00016, 
	C => N00015
);
U2 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => D, 
	D1 => GND, 
	D2 => D, 
	D3 => N00058, 
	S10 => N00061, 
	S11 => N00062, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00039
);
U3 : AND3	PORT MAP(
	A => ENT, 
	B => N00016, 
	C => N00039, 
	Y => RCO
);
U4 : AX1C	PORT MAP(
	Y => N00019, 
	A => N00015, 
	B => N00016, 
	C => N00020
);
U5 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => C, 
	D1 => N00019, 
	D2 => C, 
	D3 => N00020, 
	S10 => GND, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00020
);
U6 : NAND2	PORT MAP(
	A => ENT, 
	B => ENP, 
	Y => ENTP
);
U7 : INV	PORT MAP(
	A => N00016, 
	Y => N00017
);
U8 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => A, 
	D1 => N00017, 
	D2 => A, 
	D3 => N00016, 
	S10 => GND, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00016
);
U9 : DFM7A	PORT MAP(
	CLR => CLR, 
	D0 => B, 
	D1 => N00042, 
	D2 => B, 
	D3 => N00015, 
	S10 => GND, 
	S11 => ENTP, 
	S0 => LD, 
	CLK => CLK, 
	Q => N00015
);
U10 : AND4A	PORT MAP(
	A => N00039, 
	B => N00016, 
	C => N00015, 
	D => N00020, 
	Y => N00062
);
U11 : AND4C	PORT MAP(
	A => N00020, 
	B => N00016, 
	C => N00015, 
	D => N00039, 
	Y => N00061
);
U12 : AO1	PORT MAP(
	Y => N00058, 
	A => ENP, 
	B => ENT, 
	C => N00039
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MX16 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	Y : OUT std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	S3 : IN std_logic
); END MX16;



ARCHITECTURE STRUCTURE OF MX16 IS

-- COMPONENTS

COMPONENT MX4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MX4	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	S0 => S0, 
	S1 => S1, 
	Y => N00011
);
U2 : MX4	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	S0 => S0, 
	S1 => S1, 
	Y => N00020
);
U3 : MX4	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	S0 => S0, 
	S1 => S1, 
	Y => N00025
);
U4 : MX4	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	D2 => D14, 
	D3 => D15, 
	S0 => S0, 
	S1 => S1, 
	Y => N00027
);
U5 : MX4	PORT MAP(
	D0 => N00011, 
	D1 => N00020, 
	D2 => N00025, 
	D3 => N00027, 
	S0 => S2, 
	S1 => S3, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA21 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
); END TA21;



ARCHITECTURE STRUCTURE OF TA21 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : AND4	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	D => D, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA32 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
); END TA32;



ARCHITECTURE STRUCTURE OF TA32 IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	A => A, 
	B => B, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MCMP16 IS PORT (
	A15 : IN std_logic;
	A9 : IN std_logic;
	A14 : IN std_logic;
	A13 : IN std_logic;
	A12 : IN std_logic;
	A11 : IN std_logic;
	A10 : IN std_logic;
	A8 : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B15 : IN std_logic;
	B14 : IN std_logic;
	B13 : IN std_logic;
	B12 : IN std_logic;
	B11 : IN std_logic;
	B10 : IN std_logic;
	B9 : IN std_logic;
	B8 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	AGB : OUT std_logic
); END MCMP16;



ARCHITECTURE STRUCTURE OF MCMP16 IS

-- COMPONENTS

COMPONENT OR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT COMP4	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AGB : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic
); END COMPONENT;

COMPONENT COMP4A	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AGB : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00037 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00059 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : OR4A	PORT MAP(
	A => N00015, 
	B => N00016, 
	C => N00018, 
	D => N00020, 
	Y => AGB
);
U5 : AND4B	PORT MAP(
	A => N00031, 
	B => N00033, 
	C => N00036, 
	D => N00075, 
	Y => N00029
);
U6 : AND4B	PORT MAP(
	A => N00031, 
	B => N00033, 
	C => N00036, 
	D => N00072, 
	Y => N00020
);
U7 : AND3B	PORT MAP(
	A => N00031, 
	B => N00033, 
	C => N00059, 
	Y => N00027
);
U8 : AND3B	PORT MAP(
	A => N00031, 
	B => N00033, 
	C => N00056, 
	Y => N00018
);
U9 : NAND2A	PORT MAP(
	A => N00031, 
	B => N00045, 
	Y => N00022
);
U10 : NAND2A	PORT MAP(
	A => N00031, 
	B => N00042, 
	Y => N00015
);
U11 : AND4B	PORT MAP(
	A => N00031, 
	B => N00033, 
	C => N00036, 
	D => N00037, 
	Y => AEB
);
U12 : OR4A	PORT MAP(
	A => N00022, 
	B => N00024, 
	C => N00027, 
	D => N00029, 
	Y => ALB
);
U3 : COMP4	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	AEB => N00036, 
	ALB => N00059, 
	B1 => B5, 
	B0 => B4, 
	AGB => N00056, 
	A2 => A6, 
	B2 => B6, 
	B3 => B7, 
	A3 => A7
);
U4 : COMP4	PORT MAP(
	A1 => A1, 
	A0 => A0, 
	AEB => N00037, 
	ALB => N00075, 
	B1 => B1, 
	B0 => B0, 
	AGB => N00072, 
	A2 => A2, 
	B2 => B2, 
	B3 => B3, 
	A3 => A3
);
U1 : COMP4A	PORT MAP(
	A1 => A13, 
	A0 => A12, 
	AEB => N00031, 
	ALB => N00024, 
	B1 => B13, 
	B0 => B12, 
	AGB => N00016, 
	A2 => A14, 
	B2 => B14, 
	B3 => B15, 
	A3 => A15
);
U2 : COMP4A	PORT MAP(
	A1 => A9, 
	A0 => A8, 
	AEB => N00033, 
	ALB => N00045, 
	B1 => B9, 
	B0 => B8, 
	AGB => N00042, 
	A2 => A10, 
	B2 => B10, 
	B3 => B11, 
	A3 => A11
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA00 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
); END TA00;



ARCHITECTURE STRUCTURE OF TA00 IS

-- COMPONENTS

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NAND2	PORT MAP(
	A => A, 
	B => B, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA11 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
); END TA11;



ARCHITECTURE STRUCTURE OF TA11 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC2X4 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic
); END DEC2X4;



ARCHITECTURE STRUCTURE OF DEC2X4 IS

-- COMPONENTS

COMPONENT NOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NOR2	PORT MAP(
	A => B, 
	B => A, 
	Y => Y0
);
U2 : AND2A	PORT MAP(
	A => B, 
	B => A, 
	Y => Y1
);
U3 : AND2A	PORT MAP(
	A => A, 
	B => B, 
	Y => Y2
);
U4 : AND2	PORT MAP(
	A => B, 
	B => A, 
	Y => Y3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECE3X8A IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	E : IN std_logic
); END DECE3X8A;



ARCHITECTURE STRUCTURE OF DECE3X8A IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00037 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00026 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	A => C, 
	Y => N00037
);
U2 : INV	PORT MAP(
	A => B, 
	Y => N00026
);
U3 : INV	PORT MAP(
	A => A, 
	Y => N00019
);
U4 : OR4A	PORT MAP(
	A => E, 
	B => A, 
	C => B, 
	D => C, 
	Y => Y0
);
U5 : OR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => B, 
	D => C, 
	Y => Y1
);
U6 : OR4A	PORT MAP(
	A => E, 
	B => A, 
	C => N00026, 
	D => C, 
	Y => Y2
);
U7 : OR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => N00026, 
	D => C, 
	Y => Y3
);
U8 : OR4A	PORT MAP(
	A => E, 
	B => A, 
	C => B, 
	D => N00037, 
	Y => Y4
);
U9 : OR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => B, 
	D => N00037, 
	Y => Y5
);
U10 : OR4A	PORT MAP(
	A => E, 
	B => A, 
	C => N00026, 
	D => N00037, 
	Y => Y6
);
U11 : OR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => N00026, 
	D => N00037, 
	Y => Y7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MCMPC8 IS PORT (
	ALBI : IN std_logic;
	AEBI : IN std_logic;
	AGBI : IN std_logic;
	A7 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	ALB : OUT std_logic;
	AEB : OUT std_logic;
	AGB : OUT std_logic
); END MCMPC8;



ARCHITECTURE STRUCTURE OF MCMPC8 IS

-- COMPONENTS

COMPONENT MCMPC4	 PORT (
	ALBI : IN std_logic;
	AEBI : IN std_logic;
	AGBI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	ALB : OUT std_logic;
	AEB : OUT std_logic;
	AGB : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MCMPC4	PORT MAP(
	ALBI => ALBI, 
	AEBI => AEBI, 
	AGBI => AGBI, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	ALB => N00008, 
	AEB => N00010, 
	AGB => N00012
);
U2 : MCMPC4	PORT MAP(
	ALBI => N00008, 
	AEBI => N00010, 
	AGBI => N00012, 
	A0 => A4, 
	A1 => A5, 
	A2 => A6, 
	A3 => A7, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	ALB => ALB, 
	AEB => AEB, 
	AGB => AGB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA40 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
); END TA40;



ARCHITECTURE STRUCTURE OF TA40 IS

-- COMPONENTS

COMPONENT NAND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NAND4	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	D => D, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECE3X8 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	E : IN std_logic
); END DECE3X8;



ARCHITECTURE STRUCTURE OF DECE3X8 IS

-- COMPONENTS

COMPONENT NOR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00026 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00037 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NOR4A	PORT MAP(
	A => E, 
	B => A, 
	C => B, 
	D => C, 
	Y => Y0
);
U2 : NOR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => B, 
	D => C, 
	Y => Y1
);
U3 : NOR4A	PORT MAP(
	A => E, 
	B => A, 
	C => N00026, 
	D => C, 
	Y => Y2
);
U4 : NOR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => N00026, 
	D => C, 
	Y => Y3
);
U5 : NOR4A	PORT MAP(
	A => E, 
	B => A, 
	C => B, 
	D => N00037, 
	Y => Y4
);
U6 : NOR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => B, 
	D => N00037, 
	Y => Y5
);
U7 : NOR4A	PORT MAP(
	A => E, 
	B => A, 
	C => N00026, 
	D => N00037, 
	Y => Y6
);
U8 : NOR4A	PORT MAP(
	A => E, 
	B => N00019, 
	C => N00026, 
	D => N00037, 
	Y => Y7
);
U9 : INV	PORT MAP(
	A => C, 
	Y => N00037
);
U10 : INV	PORT MAP(
	A => B, 
	Y => N00026
);
U11 : INV	PORT MAP(
	A => A, 
	Y => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DLE8 IS PORT (
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	E : IN std_logic;
	G : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic
); END DLE8;



ARCHITECTURE STRUCTURE OF DLE8 IS

-- COMPONENTS

COMPONENT DLE
	PORT (
	Q : OUT std_logic;
	D : IN std_logic;
	G : IN std_logic;
	E : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DLE	PORT MAP(
	Q => Q0, 
	D => D0, 
	G => G, 
	E => E
);
U2 : DLE	PORT MAP(
	Q => Q1, 
	D => D1, 
	G => G, 
	E => E
);
U3 : DLE	PORT MAP(
	Q => Q2, 
	D => D2, 
	G => G, 
	E => E
);
U4 : DLE	PORT MAP(
	Q => Q3, 
	D => D3, 
	G => G, 
	E => E
);
U5 : DLE	PORT MAP(
	Q => Q4, 
	D => D4, 
	G => G, 
	E => E
);
U6 : DLE	PORT MAP(
	Q => Q5, 
	D => D5, 
	G => G, 
	E => E
);
U7 : DLE	PORT MAP(
	Q => Q6, 
	D => D6, 
	G => G, 
	E => E
);
U8 : DLE	PORT MAP(
	Q => Q7, 
	D => D7, 
	G => G, 
	E => E
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MCMPC4 IS PORT (
	ALBI : IN std_logic;
	AEBI : IN std_logic;
	AGBI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	ALB : OUT std_logic;
	AEB : OUT std_logic;
	AGB : OUT std_logic
); END MCMPC4;



ARCHITECTURE STRUCTURE OF MCMPC4 IS

-- COMPONENTS

COMPONENT MCMPC2	 PORT (
	ALBI : IN std_logic;
	AEBI : IN std_logic;
	AGBI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	AGB : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MCMPC2	PORT MAP(
	ALBI => ALBI, 
	AEBI => AEBI, 
	AGBI => AGBI, 
	A0 => A0, 
	A1 => A1, 
	B0 => B0, 
	B1 => B1, 
	AEB => N00009, 
	ALB => N00007, 
	AGB => N00011
);
U2 : MCMPC2	PORT MAP(
	ALBI => N00007, 
	AEBI => N00009, 
	AGBI => N00011, 
	A0 => A2, 
	A1 => A3, 
	B0 => B2, 
	B1 => B3, 
	AEB => AEB, 
	ALB => ALB, 
	AGB => AGB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FADD12 IS PORT (
	A4 : IN std_logic;
	A6 : IN std_logic;
	A8 : IN std_logic;
	A11 : IN std_logic;
	A10 : IN std_logic;
	A9 : IN std_logic;
	A7 : IN std_logic;
	A5 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B11 : IN std_logic;
	B10 : IN std_logic;
	B9 : IN std_logic;
	B8 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S11 : OUT std_logic;
	S10 : OUT std_logic;
	S9 : OUT std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END FADD12;



ARCHITECTURE STRUCTURE OF FADD12 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS1
	PORT (
	C : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CSA2H	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S10 : OUT std_logic;
	S00 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00097 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00037 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00112, 
	CO => OPEN, 
	S => S1
);
U14 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00116, 
	CO => N00112, 
	S => S0
);
U15 : VCC	PORT MAP(
	Y => N00116
);
U16 : CS1	PORT MAP(
	C => N00046, 
	D => N00048, 
	A => N00043, 
	B => N00044, 
	S => N00045, 
	Y => S9
);
U19 : MX2	PORT MAP(
	A => N00037, 
	B => N00040, 
	S => N00025, 
	Y => S10
);
U2 : CS1	PORT MAP(
	C => N00074, 
	D => N00075, 
	A => N00076, 
	B => N00077, 
	S => N00078, 
	Y => N00045
);
U3 : MX2	PORT MAP(
	A => N00070, 
	B => N00073, 
	S => N00045, 
	Y => S6
);
U4 : MX2	PORT MAP(
	A => N00063, 
	B => N00065, 
	S => N00045, 
	Y => S7
);
U20 : MX2	PORT MAP(
	A => N00030, 
	B => N00034, 
	S => N00025, 
	Y => S11
);
U21 : MX2	PORT MAP(
	A => N00026, 
	B => N00028, 
	S => N00025, 
	Y => CO
);
U22 : CS1	PORT MAP(
	C => N00041, 
	D => N00042, 
	A => N00043, 
	B => N00044, 
	S => N00045, 
	Y => N00025
);
U7 : MX2	PORT MAP(
	A => N00087, 
	B => N00090, 
	S => N00079, 
	Y => S4
);
U23 : CS1	PORT MAP(
	C => N00052, 
	D => N00055, 
	A => N00043, 
	B => N00044, 
	S => N00045, 
	Y => S8
);
U8 : MX2	PORT MAP(
	A => N00080, 
	B => N00082, 
	S => N00079, 
	Y => S5
);
U9 : MX2	PORT MAP(
	A => N00076, 
	B => N00077, 
	S => N00078, 
	Y => N00079
);
U10 : MX2	PORT MAP(
	A => N00095, 
	B => N00097, 
	S => N00078, 
	Y => S3
);
U11 : MX2	PORT MAP(
	A => N00100, 
	B => N00102, 
	S => N00078, 
	Y => S2
);
U12 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00078
);
U5 : CSA2H	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	B1 => B5, 
	B0 => B4, 
	S10 => N00090, 
	S00 => N00087, 
	C0 => N00074, 
	C1 => N00075, 
	S01 => N00080, 
	S11 => N00082
);
U6 : CSA2H	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	B1 => B3, 
	B0 => B2, 
	S10 => N00102, 
	S00 => N00100, 
	C0 => N00076, 
	C1 => N00077, 
	S01 => N00095, 
	S11 => N00097
);
U17 : CSA2H	PORT MAP(
	A1 => A9, 
	A0 => A8, 
	B1 => B9, 
	B0 => B8, 
	S10 => N00055, 
	S00 => N00052, 
	C0 => N00041, 
	C1 => N00042, 
	S01 => N00046, 
	S11 => N00048
);
U18 : CSA2H	PORT MAP(
	A1 => A11, 
	A0 => A10, 
	B1 => B11, 
	B0 => B10, 
	S10 => N00040, 
	S00 => N00037, 
	C0 => N00026, 
	C1 => N00028, 
	S01 => N00030, 
	S11 => N00034
);
U1 : CSA2H	PORT MAP(
	A1 => A7, 
	A0 => A6, 
	B1 => B7, 
	B0 => B6, 
	S10 => N00073, 
	S00 => N00070, 
	C0 => N00043, 
	C1 => N00044, 
	S01 => N00063, 
	S11 => N00065
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA20 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
); END TA20;



ARCHITECTURE STRUCTURE OF TA20 IS

-- COMPONENTS

COMPONENT NAND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NAND4	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	D => D, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SREG4A IS PORT (
	CLR : IN std_logic;
	SHLD : IN std_logic;
	CLK : IN std_logic;
	SI : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	SO : OUT std_logic
); END SREG4A;



ARCHITECTURE STRUCTURE OF SREG4A IS

-- COMPONENTS

COMPONENT DFMB
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : DFMB	PORT MAP(
	A => P0, 
	B => SI, 
	Q => N00011, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
U2 : DFMB	PORT MAP(
	A => P1, 
	B => N00011, 
	Q => N00012, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
U3 : DFMB	PORT MAP(
	A => P2, 
	B => N00012, 
	Q => N00013, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
U4 : DFMB	PORT MAP(
	A => P3, 
	B => N00013, 
	Q => SO, 
	CLK => CLK, 
	S => SHLD, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA10 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
); END TA10;



ARCHITECTURE STRUCTURE OF TA10 IS

-- COMPONENTS

COMPONENT NAND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NAND3	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MCMPC2 IS PORT (
	ALBI : IN std_logic;
	AEBI : IN std_logic;
	AGBI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	AGB : OUT std_logic
); END MCMPC2;



ARCHITECTURE STRUCTURE OF MCMPC2 IS

-- COMPONENTS

COMPONENT AO3
	PORT (
	Y : OUT std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT AO1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00022 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AO3	PORT MAP(
	Y => N00020, 
	C => B0, 
	B => N00012, 
	A => A0, 
	D => N00022
);
U2 : AO3	PORT MAP(
	Y => N00033, 
	C => A0, 
	B => N00012, 
	A => B0, 
	D => N00036
);
U3 : AO1	PORT MAP(
	Y => ALB, 
	A => ALBI, 
	B => N00016, 
	C => N00020
);
U4 : AO1	PORT MAP(
	Y => AGB, 
	A => AGBI, 
	B => N00016, 
	C => N00033
);
U5 : AND2	PORT MAP(
	A => AEBI, 
	B => N00016, 
	Y => AEB
);
U6 : XA1A	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00016, 
	C => N00012
);
U7 : AND2A	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00022
);
U8 : AND2A	PORT MAP(
	A => B1, 
	B => A1, 
	Y => N00036
);
U9 : XNOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00012
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SREG8A IS PORT (
	CLR : IN std_logic;
	SHLD : IN std_logic;
	CLK : IN std_logic;
	SI : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	P4 : IN std_logic;
	P5 : IN std_logic;
	P6 : IN std_logic;
	P7 : IN std_logic;
	SO : OUT std_logic
); END SREG8A;



ARCHITECTURE STRUCTURE OF SREG8A IS

-- COMPONENTS

COMPONENT SREG4A	 PORT (
	CLR : IN std_logic;
	SHLD : IN std_logic;
	CLK : IN std_logic;
	SI : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	SO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : SREG4A	PORT MAP(
	CLR => CLR, 
	SHLD => SHLD, 
	CLK => CLK, 
	SI => SI, 
	P0 => P0, 
	P1 => P1, 
	P2 => P2, 
	P3 => P3, 
	SO => N00011
);
U2 : SREG4A	PORT MAP(
	CLR => CLR, 
	SHLD => SHLD, 
	CLK => CLK, 
	SI => N00011, 
	P0 => P4, 
	P1 => P5, 
	P2 => P6, 
	P3 => P7, 
	SO => SO
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA181 IS PORT (
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	S3 : IN std_logic;
	M : IN std_logic;
	CI : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	F3 : OUT std_logic;
	F2 : OUT std_logic;
	F1 : OUT std_logic;
	F0 : OUT std_logic;
	CO : OUT std_logic;
	AEQB : OUT std_logic;
	G : OUT std_logic;
	P : OUT std_logic
); END TA181;



ARCHITECTURE STRUCTURE OF TA181 IS

-- COMPONENTS

COMPONENT OA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AO1C
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AOI2B
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OA3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT OR3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OA5
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NOR4B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AALUF	 PORT (
	A : IN std_logic;
	B : IN std_logic;
	S3 : IN std_logic;
	S2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	N3 : OUT std_logic;
	N2 : OUT std_logic;
	XO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00032 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00089 : std_logic;

-- GATE INSTANCES

BEGIN
G<=N00038;
F0<=N00106;
F1<=N00109;
U13 : OA1B	PORT MAP(
	A => M, 
	B => N00050, 
	C => N00119, 
	Y => N00112
);
U14 : AND4B	PORT MAP(
	A => N00082, 
	B => N00103, 
	C => N00106, 
	D => N00109, 
	Y => AEQB
);
U15 : AO1C	PORT MAP(
	Y => CO, 
	A => N00032, 
	B => N00053, 
	C => N00038
);
U16 : AND4C	PORT MAP(
	A => N00049, 
	B => N00039, 
	C => N00056, 
	D => CI, 
	Y => N00053
);
U17 : NAND4D	PORT MAP(
	A => N00032, 
	B => N00049, 
	C => N00039, 
	D => N00056, 
	Y => P
);
U18 : AOI2B	PORT MAP(
	Y => N00065, 
	A => N00039, 
	B => N00066, 
	C => N00068, 
	D => N00070
);
U19 : XNOR2	PORT MAP(
	A => N00085, 
	B => N00089, 
	Y => N00103
);
U20 : OA3A	PORT MAP(
	A => M, 
	B => N00042, 
	C => N00066, 
	Y => N00089, 
	D => N00093
);
U5 : XNOR2	PORT MAP(
	A => N00046, 
	B => N00065, 
	Y => N00082
);
U21 : OR3A	PORT MAP(
	A => N00075, 
	B => N00049, 
	C => N00050, 
	Y => N00093
);
U6 : OA5	PORT MAP(
	A => M, 
	B => N00042, 
	C => N00039, 
	D => N00030, 
	Y => N00068
);
U22 : NOR4B	PORT MAP(
	A => N00034, 
	B => N00037, 
	C => N00031, 
	D => N00041, 
	Y => N00038
);
U7 : AND4C	PORT MAP(
	A => N00039, 
	B => N00049, 
	C => N00050, 
	D => N00075, 
	Y => N00070
);
U23 : AND2B	PORT MAP(
	A => N00030, 
	B => N00032, 
	Y => N00031
);
U8 : INV	PORT MAP(
	A => M, 
	Y => N00075
);
U24 : AND4B	PORT MAP(
	A => N00056, 
	B => N00049, 
	C => N00075, 
	D => CI, 
	Y => N00066
);
U9 : NAND4D	PORT MAP(
	A => N00032, 
	B => N00039, 
	C => N00049, 
	D => N00050, 
	Y => N00037
);
U25 : XOR2	PORT MAP(
	A => N00046, 
	B => N00065, 
	Y => F3
);
U26 : XOR2	PORT MAP(
	A => N00085, 
	B => N00089, 
	Y => F2
);
U27 : XOR2	PORT MAP(
	A => N00107, 
	B => N00112, 
	Y => N00109
);
u28 : XOR2	PORT MAP(
	A => N00124, 
	B => N00127, 
	Y => N00106
);
U10 : AND3C	PORT MAP(
	A => N00032, 
	B => N00039, 
	C => N00042, 
	Y => N00041
);
U11 : NAND2A	PORT MAP(
	A => M, 
	B => CI, 
	Y => N00127
);
U12 : AND3B	PORT MAP(
	A => M, 
	B => N00056, 
	C => CI, 
	Y => N00119
);
U3 : AALUF	PORT MAP(
	A => A2, 
	B => B2, 
	S3 => S3, 
	S2 => S2, 
	S1 => S1, 
	S0 => S0, 
	N3 => N00030, 
	N2 => N00039, 
	XO => N00085
);
U4 : AALUF	PORT MAP(
	A => A3, 
	B => B3, 
	S3 => S3, 
	S2 => S2, 
	S1 => S1, 
	S0 => S0, 
	N3 => N00034, 
	N2 => N00032, 
	XO => N00046
);
U1 : AALUF	PORT MAP(
	A => A0, 
	B => B0, 
	S3 => S3, 
	S2 => S2, 
	S1 => S1, 
	S0 => S0, 
	N3 => N00050, 
	N2 => N00056, 
	XO => N00124
);
U2 : AALUF	PORT MAP(
	A => A1, 
	B => B1, 
	S3 => S3, 
	S2 => S2, 
	S1 => S1, 
	S0 => S0, 
	N3 => N00042, 
	N2 => N00049, 
	XO => N00107
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMP4A IS PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AGB : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic
); END COMP4A;



ARCHITECTURE STRUCTURE OF COMP4A IS

-- COMPONENTS

COMPONENT AND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00058 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00024 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND4C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00028, 
	D => N00078, 
	Y => N00070
);
U14 : AND3C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00074, 
	Y => N00067
);
U15 : AND4C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00028, 
	D => N00058, 
	Y => N00048
);
U16 : AND3C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00052, 
	Y => N00045
);
U17 : AND2B	PORT MAP(
	A => N00024, 
	B => N00046, 
	Y => N00041
);
U18 : OR4A	PORT MAP(
	A => N00061, 
	B => N00063, 
	C => N00067, 
	D => N00070, 
	Y => AGB
);
U19 : OR4A	PORT MAP(
	A => N00039, 
	B => N00041, 
	C => N00045, 
	D => N00048, 
	Y => ALB
);
U1 : AND2A	PORT MAP(
	A => B0, 
	B => A0, 
	Y => N00078
);
U2 : NAND2A	PORT MAP(
	A => B1, 
	B => A1, 
	Y => N00074
);
U3 : NAND2A	PORT MAP(
	A => B2, 
	B => A2, 
	Y => N00068
);
U4 : NAND2A	PORT MAP(
	A => B3, 
	B => A3, 
	Y => N00061
);
U20 : AND2B	PORT MAP(
	A => N00024, 
	B => N00068, 
	Y => N00063
);
U5 : AND2A	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00058
);
U21 : NAND4C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00028, 
	D => N00031, 
	Y => AEB
);
U6 : NAND2A	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00052
);
U7 : NAND2A	PORT MAP(
	A => A2, 
	B => B2, 
	Y => N00046
);
U8 : NAND2A	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00039
);
U9 : XOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00028
);
U10 : XNOR2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00031
);
U11 : XOR2	PORT MAP(
	A => A2, 
	B => B2, 
	Y => N00026
);
U12 : XOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00024
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC2X4A IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic
); END DEC2X4A;



ARCHITECTURE STRUCTURE OF DEC2X4A IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	A => B, 
	B => A, 
	Y => Y0
);
U2 : NAND2A	PORT MAP(
	A => B, 
	B => A, 
	Y => Y1
);
U3 : NAND2A	PORT MAP(
	A => A, 
	B => B, 
	Y => Y2
);
U4 : NAND2	PORT MAP(
	A => B, 
	B => A, 
	Y => Y3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FADD10 IS PORT (
	A9 : IN std_logic;
	A8 : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B9 : IN std_logic;
	B8 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	CO : OUT std_logic;
	S9 : OUT std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic
); END FADD10;



ARCHITECTURE STRUCTURE OF FADD10 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS1
	PORT (
	C : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CSA2H	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S10 : OUT std_logic;
	S00 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00081 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00051 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00093, 
	CO => OPEN, 
	S => S1
);
U14 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00096, 
	CO => N00093, 
	S => S0
);
U15 : VCC	PORT MAP(
	Y => N00096
);
U16 : CS1	PORT MAP(
	C => N00033, 
	D => N00036, 
	A => N00024, 
	B => N00025, 
	S => N00026, 
	Y => S8
);
U17 : CS1	PORT MAP(
	C => N00027, 
	D => N00029, 
	A => N00024, 
	B => N00025, 
	S => N00026, 
	Y => S9
);
U19 : CS1	PORT MAP(
	C => N00021, 
	D => N00023, 
	A => N00024, 
	B => N00025, 
	S => N00026, 
	Y => CO
);
U2 : CS1	PORT MAP(
	C => N00055, 
	D => N00056, 
	A => N00057, 
	B => N00058, 
	S => N00059, 
	Y => N00026
);
U3 : MX2	PORT MAP(
	A => N00051, 
	B => N00054, 
	S => N00026, 
	Y => S6
);
U4 : MX2	PORT MAP(
	A => N00044, 
	B => N00046, 
	S => N00026, 
	Y => S7
);
U7 : MX2	PORT MAP(
	A => N00068, 
	B => N00071, 
	S => N00060, 
	Y => S4
);
U8 : MX2	PORT MAP(
	A => N00061, 
	B => N00063, 
	S => N00060, 
	Y => S5
);
U9 : MX2	PORT MAP(
	A => N00057, 
	B => N00058, 
	S => N00059, 
	Y => N00060
);
U10 : MX2	PORT MAP(
	A => N00076, 
	B => N00078, 
	S => N00059, 
	Y => S3
);
U11 : MX2	PORT MAP(
	A => N00081, 
	B => N00083, 
	S => N00059, 
	Y => S2
);
U12 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00059
);
U5 : CSA2H	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	B1 => B5, 
	B0 => B4, 
	S10 => N00071, 
	S00 => N00068, 
	C0 => N00055, 
	C1 => N00056, 
	S01 => N00061, 
	S11 => N00063
);
U6 : CSA2H	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	B1 => B3, 
	B0 => B2, 
	S10 => N00083, 
	S00 => N00081, 
	C0 => N00057, 
	C1 => N00058, 
	S01 => N00076, 
	S11 => N00078
);
U18 : CSA2H	PORT MAP(
	A1 => A9, 
	A0 => A8, 
	B1 => B9, 
	B0 => B8, 
	S10 => N00036, 
	S00 => N00033, 
	C0 => N00021, 
	C1 => N00023, 
	S01 => N00027, 
	S11 => N00029
);
U1 : CSA2H	PORT MAP(
	A1 => A7, 
	A0 => A6, 
	B1 => B7, 
	B0 => B6, 
	S10 => N00054, 
	S00 => N00051, 
	C0 => N00024, 
	C1 => N00025, 
	S01 => N00044, 
	S11 => N00046
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FADD9 IS PORT (
	A8 : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B8 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	CO : OUT std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic
); END FADD9;



ARCHITECTURE STRUCTURE OF FADD9 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS1
	PORT (
	C : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CSA2H	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S10 : OUT std_logic;
	S00 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00028 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00049 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00091, 
	CO => OPEN, 
	S => S1
);
U14 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00095, 
	CO => N00091, 
	S => S0
);
U15 : VCC	PORT MAP(
	Y => N00095
);
U16 : FA1B	PORT MAP(
	A => A8, 
	B => B8, 
	CI => N00041, 
	CO => N00025, 
	S => N00033
);
U17 : FA1B	PORT MAP(
	A => A8, 
	B => B8, 
	CI => N00036, 
	CO => N00023, 
	S => N00031
);
U18 : CS1	PORT MAP(
	C => N00023, 
	D => N00025, 
	A => N00026, 
	B => N00027, 
	S => N00028, 
	Y => CO
);
U19 : VCC	PORT MAP(
	Y => N00036
);
U2 : CS1	PORT MAP(
	C => N00053, 
	D => N00054, 
	A => N00055, 
	B => N00056, 
	S => N00057, 
	Y => N00028
);
U3 : MX2	PORT MAP(
	A => N00049, 
	B => N00052, 
	S => N00028, 
	Y => S6
);
U4 : MX2	PORT MAP(
	A => N00042, 
	B => N00044, 
	S => N00028, 
	Y => S7
);
U20 : GND	PORT MAP(
	Y => N00041
);
U21 : CS1	PORT MAP(
	C => N00031, 
	D => N00033, 
	A => N00026, 
	B => N00027, 
	S => N00028, 
	Y => S8
);
U7 : MX2	PORT MAP(
	A => N00066, 
	B => N00069, 
	S => N00058, 
	Y => S4
);
U8 : MX2	PORT MAP(
	A => N00059, 
	B => N00061, 
	S => N00058, 
	Y => S5
);
U9 : MX2	PORT MAP(
	A => N00055, 
	B => N00056, 
	S => N00057, 
	Y => N00058
);
U10 : MX2	PORT MAP(
	A => N00074, 
	B => N00076, 
	S => N00057, 
	Y => S3
);
U11 : MX2	PORT MAP(
	A => N00079, 
	B => N00081, 
	S => N00057, 
	Y => S2
);
U12 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00057
);
U5 : CSA2H	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	B1 => B5, 
	B0 => B4, 
	S10 => N00069, 
	S00 => N00066, 
	C0 => N00053, 
	C1 => N00054, 
	S01 => N00059, 
	S11 => N00061
);
U6 : CSA2H	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	B1 => B3, 
	B0 => B2, 
	S10 => N00081, 
	S00 => N00079, 
	C0 => N00055, 
	C1 => N00056, 
	S01 => N00074, 
	S11 => N00076
);
U1 : CSA2H	PORT MAP(
	A1 => A7, 
	A0 => A6, 
	B1 => B7, 
	B0 => B6, 
	S10 => N00052, 
	S00 => N00049, 
	C0 => N00026, 
	C1 => N00027, 
	S01 => N00042, 
	S11 => N00044
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MX8 IS PORT (
	Y : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	S2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic
); END MX8;



ARCHITECTURE STRUCTURE OF MX8 IS

-- COMPONENTS

COMPONENT MX4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00015 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MX4	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	S0 => S0, 
	S1 => S1, 
	Y => N00010
);
U2 : MX4	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	S0 => S0, 
	S1 => S1, 
	Y => N00015
);
U3 : MX2	PORT MAP(
	A => N00010, 
	B => N00015, 
	S => S2, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ORITH IS PORT (
	D : IN std_logic;
	CLK : IN std_logic;
	PAD : OUT std_logic;
	E : IN std_logic
); END ORITH;



ARCHITECTURE STRUCTURE OF ORITH IS

-- COMPONENTS

COMPONENT TBDLHS
	PORT (
	D : IN std_logic;
	PAD : OUT std_logic;
	G : IN std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT DL1C
	PORT (
	D : IN std_logic;
	QN : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT6NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : TBDLHS	PORT MAP(
	D => INT6NET, 
	PAD => PAD, 
	G => CLK, 
	E => E
);
U2 : DL1C	PORT MAP(
	D => D, 
	QN => INT6NET, 
	G => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ICMP8 IS PORT (
	A7 : IN std_logic;
	A3 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AEB : OUT std_logic
); END ICMP8;



ARCHITECTURE STRUCTURE OF ICMP8 IS

-- COMPONENTS

COMPONENT XA1A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT XO1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NOR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XA1A	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00013, 
	C => N00014
);
U2 : XO1	PORT MAP(
	A => A2, 
	B => B2, 
	Y => N00019, 
	C => N00020
);
U3 : XO1	PORT MAP(
	A => A4, 
	B => B4, 
	Y => N00024, 
	C => N00028
);
U4 : XO1	PORT MAP(
	A => A6, 
	B => B6, 
	Y => N00026, 
	C => N00033
);
U5 : NOR4A	PORT MAP(
	A => N00013, 
	B => N00019, 
	C => N00024, 
	D => N00026, 
	Y => AEB
);
U6 : XNOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00014
);
U7 : XOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00020
);
U8 : XOR2	PORT MAP(
	A => A5, 
	B => B5, 
	Y => N00028
);
U9 : XOR2	PORT MAP(
	A => A7, 
	B => B7, 
	Y => N00033
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ORTH IS PORT (
	D : IN std_logic;
	CLK : IN std_logic;
	PAD : OUT std_logic;
	E : IN std_logic
); END ORTH;



ARCHITECTURE STRUCTURE OF ORTH IS

-- COMPONENTS

COMPONENT TBDLHS
	PORT (
	D : IN std_logic;
	PAD : OUT std_logic;
	G : IN std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT DL1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT6NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : TBDLHS	PORT MAP(
	D => INT6NET, 
	PAD => PAD, 
	G => CLK, 
	E => E
);
U2 : DL1B	PORT MAP(
	D => D, 
	Q => INT6NET, 
	G => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SMULT8 IS PORT (
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	P0 : OUT std_logic;
	P1 : OUT std_logic;
	P2 : OUT std_logic;
	P3 : OUT std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic;
	P12 : OUT std_logic;
	P13 : OUT std_logic;
	P14 : OUT std_logic;
	P15 : OUT std_logic
); END SMULT8;



ARCHITECTURE STRUCTURE OF SMULT8 IS

-- COMPONENTS

COMPONENT FADD11A
	PORT (
	A10 : IN std_logic;
	B10 : IN std_logic;
	A9 : IN std_logic;
	B9 : IN std_logic;
	A8 : IN std_logic;
	B8 : IN std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	A6 : IN std_logic;
	B6 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	CIN : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT NMM
	PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P0 : OUT std_logic;
	P1 : OUT std_logic;
	P2 : OUT std_logic;
	P3 : OUT std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic
	); END COMPONENT;

COMPONENT NMMHL
	PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic
	); END COMPONENT;

COMPONENT WTREE5
	PORT (
	B : IN std_logic;
	C : IN std_logic;
	DN : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	CON : OUT std_logic;
	A : IN std_logic;
	EN : IN std_logic
	); END COMPONENT;

COMPONENT CPROPB
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	CN : IN std_logic;
	S : OUT std_logic;
	CO1 : OUT std_logic;
	CO2 : OUT std_logic
	); END COMPONENT;

COMPONENT CPROPA
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	CN : IN std_logic;
	S : OUT std_logic;
	CO1 : OUT std_logic;
	CO2 : OUT std_logic
	); END COMPONENT;

COMPONENT NMMLH
	PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic
	); END COMPONENT;

COMPONENT NMMHH
	PORT (
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	Y2 : IN std_logic;
	Y1 : IN std_logic;
	Y0 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	P8 : OUT std_logic;
	P9 : OUT std_logic;
	P10 : OUT std_logic;
	P11 : OUT std_logic;
	P12 : OUT std_logic;
	P13 : OUT std_logic;
	P14 : OUT std_logic;
	P15 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00061 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FADD11A	PORT MAP(
	A10 => N00053, 
	B10 => N00019, 
	A9 => N00020, 
	B9 => N00053, 
	A8 => N00021, 
	B8 => N00027, 
	A7 => N00022, 
	B7 => N00030, 
	A6 => N00034, 
	B6 => N00043, 
	A5 => N00047, 
	B5 => N00061, 
	A4 => N00063, 
	B4 => N00066, 
	A3 => N00068, 
	B3 => N00073, 
	A2 => N00077, 
	B2 => N00086, 
	A1 => N00090, 
	B1 => N00096, 
	A0 => N00102, 
	B0 => N00105, 
	CIN => N00109, 
	S0 => P5, 
	S1 => P6, 
	S2 => P7, 
	S3 => P8, 
	S4 => P9, 
	S5 => P10, 
	S6 => P11, 
	S7 => P12, 
	S8 => P13, 
	S9 => P14, 
	S10 => P15
);
U14 : GND	PORT MAP(
	Y => N00053
);
U15 : VCC	PORT MAP(
	Y => N00109
);
U1 : FA1B	PORT MAP(
	A => N00058, 
	B => N00093, 
	CI => N00107, 
	CO => N00105, 
	S => P4
);
U2 : FA1B	PORT MAP(
	A => N00056, 
	B => N00088, 
	CI => N00098, 
	CO => N00096, 
	S => N00102
);
U3 : FA1B	PORT MAP(
	A => N00054, 
	B => N00085, 
	CI => N00089, 
	CO => N00086, 
	S => N00090
);
U4 : NMM	PORT MAP(
	X2 => A2, 
	X1 => A1, 
	X0 => A0, 
	Y2 => B2, 
	Y1 => B1, 
	Y0 => B0, 
	X3 => A3, 
	Y3 => B3, 
	P0 => P0, 
	P1 => P1, 
	P2 => P2, 
	P3 => P3, 
	P4 => N00107, 
	P5 => N00098, 
	P6 => N00089, 
	P7 => N00076
);
U5 : NMMHL	PORT MAP(
	X2 => A6, 
	X1 => A5, 
	X0 => A4, 
	Y2 => B2, 
	Y1 => B1, 
	Y0 => B0, 
	X3 => A7, 
	Y3 => B3, 
	P4 => N00093, 
	P5 => N00088, 
	P6 => N00085, 
	P7 => N00072, 
	P8 => N00065, 
	P9 => N00060, 
	P10 => N00042, 
	P11 => N00018
);
U6 : WTREE5	PORT MAP(
	B => B7, 
	C => A7, 
	DN => N00072, 
	S0 => N00077, 
	S1 => N00073, 
	CON => N00067, 
	A => N00051, 
	EN => N00076
);
U7 : CPROPB	PORT MAP(
	A => N00038, 
	B => N00049, 
	D => N00065, 
	CN => N00067, 
	S => N00068, 
	CO1 => N00066, 
	CO2 => N00062
);
U8 : CPROPB	PORT MAP(
	A => N00036, 
	B => N00045, 
	D => N00060, 
	CN => N00062, 
	S => N00063, 
	CO1 => N00061, 
	CO2 => N00046
);
U9 : CPROPA	PORT MAP(
	A => N00017, 
	B => N00018, 
	D => N00029, 
	CN => N00033, 
	S => N00034, 
	CO1 => N00030, 
	CO2 => N00027
);
U10 : CPROPB	PORT MAP(
	A => N00032, 
	B => N00040, 
	D => N00042, 
	CN => N00046, 
	S => N00047, 
	CO1 => N00043, 
	CO2 => N00033
);
U11 : NMMLH	PORT MAP(
	X2 => A2, 
	X1 => A1, 
	X0 => A0, 
	Y2 => B6, 
	Y1 => B5, 
	Y0 => B4, 
	X3 => A3, 
	Y3 => B7, 
	P4 => N00058, 
	P5 => N00056, 
	P6 => N00054, 
	P7 => N00051, 
	P8 => N00049, 
	P9 => N00045, 
	P10 => N00040, 
	P11 => N00017
);
U12 : NMMHH	PORT MAP(
	X2 => A6, 
	X1 => A5, 
	X0 => A4, 
	Y2 => B6, 
	Y1 => B5, 
	Y0 => B4, 
	X3 => A7, 
	Y3 => B7, 
	P8 => N00038, 
	P9 => N00036, 
	P10 => N00032, 
	P11 => N00029, 
	P12 => N00022, 
	P13 => N00021, 
	P14 => N00020, 
	P15 => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IR IS PORT (
	PAD : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic
); END IR;



ARCHITECTURE STRUCTURE OF IR IS

-- COMPONENTS

COMPONENT DL1
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

COMPONENT IBDL
	PORT (
	PAD : IN std_logic;
	Q : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT6NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : DL1	PORT MAP(
	D => INT6NET, 
	Q => Q, 
	G => CLK
);
U2 : IBDL	PORT MAP(
	PAD => PAD, 
	Q => INT6NET, 
	G => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY UDCNT4A IS PORT (
	LD : IN std_logic;
	UD : IN std_logic;
	CI : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q2 : OUT std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END UDCNT4A;



ARCHITECTURE STRUCTURE OF UDCNT4A IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFM
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AOI1A
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AO3A
	PORT (
	Y : OUT std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00050 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00040 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00021;
Q1<=N00029;
Q2<=N00040;
Q3<=N00056;
U13 : AND4	PORT MAP(
	A => N00021, 
	B => N00029, 
	C => UD, 
	D => N00040, 
	Y => N00063
);
U14 : OR2A	PORT MAP(
	A => N00060, 
	B => N00063, 
	Y => N00062
);
U15 : NAND4D	PORT MAP(
	A => N00021, 
	B => N00029, 
	C => UD, 
	D => N00040, 
	Y => N00060
);
U16 : AND3A	PORT MAP(
	A => CI, 
	B => N00056, 
	C => N00063, 
	Y => N00071
);
U17 : AND2B	PORT MAP(
	A => N00056, 
	B => CI, 
	Y => N00075
);
U1 : DFM	PORT MAP(
	A => P0, 
	B => N00024, 
	Q => N00021, 
	CLK => CLK, 
	S => LD
);
U2 : DFM	PORT MAP(
	A => P1, 
	B => N00035, 
	Q => N00029, 
	CLK => CLK, 
	S => LD
);
U3 : DFM	PORT MAP(
	A => P2, 
	B => N00047, 
	Q => N00040, 
	CLK => CLK, 
	S => LD
);
U4 : DFM	PORT MAP(
	A => P3, 
	B => N00064, 
	Q => N00056, 
	CLK => CLK, 
	S => LD
);
U5 : XNOR2	PORT MAP(
	A => CI, 
	B => N00021, 
	Y => N00024
);
U6 : AX1	PORT MAP(
	Y => N00035, 
	A => CI, 
	B => N00033, 
	C => N00029
);
U7 : AX1	PORT MAP(
	Y => N00047, 
	A => CI, 
	B => N00045, 
	C => N00040
);
U8 : AX1	PORT MAP(
	Y => N00064, 
	A => CI, 
	B => N00062, 
	C => N00056
);
U9 : AOI1A	PORT MAP(
	Y => CO, 
	A => N00060, 
	B => N00075, 
	C => N00071
);
U10 : XNOR2	PORT MAP(
	A => UD, 
	B => N00021, 
	Y => N00033
);
U11 : AO3A	PORT MAP(
	Y => N00045, 
	C => UD, 
	B => N00029, 
	A => N00021, 
	D => N00050
);
U12 : AND3C	PORT MAP(
	A => N00021, 
	B => N00029, 
	C => UD, 
	Y => N00050
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AALUF IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	S3 : IN std_logic;
	S2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	N3 : OUT std_logic;
	N2 : OUT std_logic;
	XO : OUT std_logic
); END AALUF;



ARCHITECTURE STRUCTURE OF AALUF IS

-- COMPONENTS

COMPONENT AO4A
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	B : IN std_logic
	); END COMPONENT;

COMPONENT AO5A
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
N2<=N00008;
N3<=N00012;
U1 : AO4A	PORT MAP(
	Y => N00008, 
	A => B, 
	C => A, 
	D => S3, 
	B => S2
);
U2 : AO5A	PORT MAP(
	Y => N00012, 
	A => B, 
	B => S1, 
	C => S0, 
	D => A
);
U3 : XOR2	PORT MAP(
	A => N00008, 
	B => N00012, 
	Y => XO
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FADD8 IS PORT (
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	CO : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic
); END FADD8;



ARCHITECTURE STRUCTURE OF FADD8 IS

-- COMPONENTS

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AO1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT CS1
	PORT (
	C : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CSA2H	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S10 : OUT std_logic;
	S00 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00057 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00072, 
	CO => OPEN, 
	S => S1
);
U14 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00076, 
	CO => N00072, 
	S => S0
);
U15 : VCC	PORT MAP(
	Y => N00076
);
U16 : AO1	PORT MAP(
	Y => CO, 
	A => N00018, 
	B => N00019, 
	C => N00021
);
U2 : CS1	PORT MAP(
	C => N00034, 
	D => N00035, 
	A => N00036, 
	B => N00037, 
	S => N00038, 
	Y => N00019
);
U3 : MX2	PORT MAP(
	A => N00030, 
	B => N00033, 
	S => N00019, 
	Y => S6
);
U4 : MX2	PORT MAP(
	A => N00023, 
	B => N00025, 
	S => N00019, 
	Y => S7
);
U7 : MX2	PORT MAP(
	A => N00047, 
	B => N00050, 
	S => N00039, 
	Y => S4
);
U8 : MX2	PORT MAP(
	A => N00040, 
	B => N00042, 
	S => N00039, 
	Y => S5
);
U9 : MX2	PORT MAP(
	A => N00036, 
	B => N00037, 
	S => N00038, 
	Y => N00039
);
U10 : MX2	PORT MAP(
	A => N00055, 
	B => N00057, 
	S => N00038, 
	Y => S3
);
U11 : MX2	PORT MAP(
	A => N00060, 
	B => N00062, 
	S => N00038, 
	Y => S2
);
U12 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00038
);
U5 : CSA2H	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	B1 => B5, 
	B0 => B4, 
	S10 => N00050, 
	S00 => N00047, 
	C0 => N00034, 
	C1 => N00035, 
	S01 => N00040, 
	S11 => N00042
);
U6 : CSA2H	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	B1 => B3, 
	B0 => B2, 
	S10 => N00062, 
	S00 => N00060, 
	C0 => N00036, 
	C1 => N00037, 
	S01 => N00055, 
	S11 => N00057
);
U1 : CSA2H	PORT MAP(
	A1 => A7, 
	A0 => A6, 
	B1 => B7, 
	B0 => B6, 
	S10 => N00033, 
	S00 => N00030, 
	C0 => N00021, 
	C1 => N00018, 
	S01 => N00023, 
	S11 => N00025
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC3X8 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
); END DEC3X8;



ARCHITECTURE STRUCTURE OF DEC3X8 IS

-- COMPONENTS

COMPONENT NOR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NOR3	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y0
);
U2 : AND3B	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y1
);
U3 : AND3B	PORT MAP(
	A => C, 
	B => A, 
	C => B, 
	Y => Y2
);
U4 : AND3A	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y3
);
U5 : AND3B	PORT MAP(
	A => B, 
	B => A, 
	C => C, 
	Y => Y4
);
U6 : AND3A	PORT MAP(
	A => B, 
	B => C, 
	C => A, 
	Y => Y5
);
U7 : AND3A	PORT MAP(
	A => A, 
	B => C, 
	C => B, 
	Y => Y6
);
U8 : AND3	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECE2X4A IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	E : IN std_logic
); END DECE2X4A;



ARCHITECTURE STRUCTURE OF DECE2X4A IS

-- COMPONENTS

COMPONENT NAND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NAND3B	PORT MAP(
	A => B, 
	B => A, 
	C => E, 
	Y => Y0
);
U2 : NAND3A	PORT MAP(
	A => B, 
	B => A, 
	C => E, 
	Y => Y1
);
U3 : NAND3A	PORT MAP(
	A => A, 
	B => B, 
	C => E, 
	Y => Y2
);
U4 : NAND3	PORT MAP(
	A => A, 
	B => B, 
	C => E, 
	Y => Y3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DLM8 IS PORT (
	S : IN std_logic;
	G : IN std_logic;
	A5 : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic
); END DLM8;



ARCHITECTURE STRUCTURE OF DLM8 IS

-- COMPONENTS

COMPONENT DLM
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	G : IN std_logic;
	S : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DLM	PORT MAP(
	A => B0, 
	B => A0, 
	Q => Q0, 
	G => G, 
	S => S
);
U2 : DLM	PORT MAP(
	A => B1, 
	B => A1, 
	Q => Q1, 
	G => G, 
	S => S
);
U3 : DLM	PORT MAP(
	A => B2, 
	B => A2, 
	Q => Q2, 
	G => G, 
	S => S
);
U4 : DLM	PORT MAP(
	A => B3, 
	B => A3, 
	Q => Q3, 
	G => G, 
	S => S
);
U5 : DLM	PORT MAP(
	A => B4, 
	B => A4, 
	Q => Q4, 
	G => G, 
	S => S
);
U6 : DLM	PORT MAP(
	A => B5, 
	B => A5, 
	Q => Q5, 
	G => G, 
	S => S
);
U7 : DLM	PORT MAP(
	A => B6, 
	B => A6, 
	Q => Q6, 
	G => G, 
	S => S
);
U8 : DLM	PORT MAP(
	A => B7, 
	B => A7, 
	Q => Q7, 
	G => G, 
	S => S
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ICMP4 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	AEB : OUT std_logic
); END ICMP4;



ARCHITECTURE STRUCTURE OF ICMP4 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NOR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XNOR2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00008
);
U2 : XOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00011
);
U3 : XOR2	PORT MAP(
	A => A2, 
	B => B2, 
	Y => N00014
);
U4 : XOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00016
);
U5 : NOR4A	PORT MAP(
	A => N00008, 
	B => N00011, 
	C => N00014, 
	D => N00016, 
	Y => AEB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA07 IS PORT (
	A : IN std_logic;
	Y : OUT std_logic
); END TA07;



ARCHITECTURE STRUCTURE OF TA07 IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	A => A, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC3X8A IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
); END DEC3X8A;



ARCHITECTURE STRUCTURE OF DEC3X8A IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y0
);
U2 : NAND3B	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y1
);
U3 : NAND3B	PORT MAP(
	A => C, 
	B => A, 
	C => B, 
	Y => Y2
);
U4 : NAND3A	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y3
);
U5 : NAND3B	PORT MAP(
	A => B, 
	B => A, 
	C => C, 
	Y => Y4
);
U6 : NAND3A	PORT MAP(
	A => B, 
	B => C, 
	C => A, 
	Y => Y5
);
U7 : NAND3	PORT MAP(
	A => C, 
	B => B, 
	C => A, 
	Y => Y7
);
U8 : NAND3A	PORT MAP(
	A => A, 
	B => C, 
	C => B, 
	Y => Y6
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA08 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
); END TA08;



ARCHITECTURE STRUCTURE OF TA08 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : AND2	PORT MAP(
	A => A, 
	B => B, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECE2X4 IS PORT (
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	E : IN std_logic
); END DECE2X4;



ARCHITECTURE STRUCTURE OF DECE2X4 IS

-- COMPONENTS

COMPONENT AND3B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : AND3B	PORT MAP(
	A => B, 
	B => A, 
	C => E, 
	Y => Y0
);
U2 : AND3A	PORT MAP(
	A => B, 
	B => A, 
	C => E, 
	Y => Y1
);
U3 : AND3A	PORT MAP(
	A => A, 
	B => B, 
	C => E, 
	Y => Y2
);
U4 : AND3	PORT MAP(
	A => B, 
	B => A, 
	C => E, 
	Y => Y3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA3H IS PORT (
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	S12 : OUT std_logic;
	S02 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
); END CSA3H;



ARCHITECTURE STRUCTURE OF CSA3H IS

-- COMPONENTS

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MAJ3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2B
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00047 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00016
);
U2 : MAJ3	PORT MAP(
	A => N00016, 
	B => A2, 
	C => B2, 
	Y => C0
);
U3 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00025, 
	CO => OPEN, 
	S => S02
);
U4 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00029, 
	CO => N00025, 
	S => S01
);
U5 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00032, 
	CO => N00029, 
	S => S00
);
U6 : MAJ3	PORT MAP(
	A => N00036, 
	B => A2, 
	C => B2, 
	Y => C1
);
U7 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00045, 
	CO => OPEN, 
	S => S12
);
U8 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00047, 
	CO => N00045, 
	S => S11
);
U9 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00048, 
	CO => N00047, 
	S => S10
);
U10 : VCC	PORT MAP(
	Y => N00032
);
U11 : GND	PORT MAP(
	Y => N00048
);
U12 : CY2B	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00036
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DFC1G IS PORT (
	D : IN std_logic;
	QN : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
); END DFC1G;



ARCHITECTURE STRUCTURE OF DFC1G IS

-- COMPONENTS

COMPONENT DFC1D
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT4NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : DFC1D	PORT MAP(
	D => D, 
	Q => INT4NET, 
	CLK => CLK, 
	CLR => CLR
);
U2 : INV	PORT MAP(
	A => INT4NET, 
	Y => QN
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ORIH IS PORT (
	D : IN std_logic;
	CLK : IN std_logic;
	PAD : OUT std_logic
); END ORIH;



ARCHITECTURE STRUCTURE OF ORIH IS

-- COMPONENTS

COMPONENT DL1C
	PORT (
	D : IN std_logic;
	QN : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

COMPONENT OBDLHS
	PORT (
	D : IN std_logic;
	PAD : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT6NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : DL1C	PORT MAP(
	D => D, 
	QN => INT6NET, 
	G => CLK
);
U2 : OBDLHS	PORT MAP(
	D => INT6NET, 
	PAD => PAD, 
	G => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA04 IS PORT (
	A : IN std_logic;
	Y : OUT std_logic
); END TA04;



ARCHITECTURE STRUCTURE OF TA04 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	A => A, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMP4 IS PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	AGB : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic
); END COMP4;



ARCHITECTURE STRUCTURE OF COMP4 IS

-- COMPONENTS

COMPONENT AND4C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR4A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00031 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00052 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND4C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00028, 
	D => N00078, 
	Y => N00070
);
U14 : AND3C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00074, 
	Y => N00067
);
U15 : AND4C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00028, 
	D => N00058, 
	Y => N00048
);
U16 : AND3C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00052, 
	Y => N00045
);
U17 : AND2B	PORT MAP(
	A => N00024, 
	B => N00046, 
	Y => N00041
);
U18 : OR4A	PORT MAP(
	A => N00061, 
	B => N00063, 
	C => N00067, 
	D => N00070, 
	Y => AGB
);
U19 : OR4A	PORT MAP(
	A => N00039, 
	B => N00041, 
	C => N00045, 
	D => N00048, 
	Y => ALB
);
U1 : AND2A	PORT MAP(
	A => B0, 
	B => A0, 
	Y => N00078
);
U2 : NAND2A	PORT MAP(
	A => B1, 
	B => A1, 
	Y => N00074
);
U3 : NAND2A	PORT MAP(
	A => B2, 
	B => A2, 
	Y => N00068
);
U4 : NAND2A	PORT MAP(
	A => B3, 
	B => A3, 
	Y => N00061
);
U20 : AND4C	PORT MAP(
	A => N00024, 
	B => N00026, 
	C => N00028, 
	D => N00031, 
	Y => AEB
);
U5 : AND2A	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00058
);
U21 : AND2B	PORT MAP(
	A => N00024, 
	B => N00068, 
	Y => N00063
);
U6 : NAND2A	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00052
);
U7 : NAND2A	PORT MAP(
	A => A2, 
	B => B2, 
	Y => N00046
);
U8 : NAND2A	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00039
);
U9 : XOR2	PORT MAP(
	A => A1, 
	B => B1, 
	Y => N00028
);
U10 : XNOR2	PORT MAP(
	A => A0, 
	B => B0, 
	Y => N00031
);
U11 : XOR2	PORT MAP(
	A => A2, 
	B => B2, 
	Y => N00026
);
U12 : XOR2	PORT MAP(
	A => A3, 
	B => B3, 
	Y => N00024
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA2H IS PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S10 : OUT std_logic;
	S00 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END CSA2H;



ARCHITECTURE STRUCTURE OF CSA2H IS

-- COMPONENTS

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2B
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00034 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00030 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => C0
);
U2 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00017, 
	CO => OPEN, 
	S => S01
);
U3 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00021, 
	CO => N00017, 
	S => S00
);
U4 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00030, 
	CO => OPEN, 
	S => S11
);
U5 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00034, 
	CO => N00030, 
	S => S10
);
U6 : VCC	PORT MAP(
	Y => N00021
);
U7 : GND	PORT MAP(
	Y => N00034
);
U8 : CY2B	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => C1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MX8A IS PORT (
	Y : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	S2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic
); END MX8A;



ARCHITECTURE STRUCTURE OF MX8A IS

-- COMPONENTS

COMPONENT MX4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2C
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic;
	S : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00010 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : MX4	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	S0 => S0, 
	S1 => S1, 
	Y => N00010
);
U2 : MX4	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	S0 => S0, 
	S1 => S1, 
	Y => N00015
);
U3 : MX2C	PORT MAP(
	A => N00010, 
	B => N00015, 
	Y => Y, 
	S => S2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA27 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
); END TA27;



ARCHITECTURE STRUCTURE OF TA27 IS

-- COMPONENTS

COMPONENT NOR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NOR3	PORT MAP(
	A => A, 
	B => B, 
	C => C, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DFC1E IS PORT (
	D : IN std_logic;
	QN : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
); END DFC1E;



ARCHITECTURE STRUCTURE OF DFC1E IS

-- COMPONENTS

COMPONENT DFC1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT4NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : DFC1B	PORT MAP(
	D => D, 
	Q => INT4NET, 
	CLK => CLK, 
	CLR => CLR
);
U2 : INV	PORT MAP(
	A => INT4NET, 
	Y => QN
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DLC8A IS PORT (
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	CLR : IN std_logic;
	G : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic
); END DLC8A;



ARCHITECTURE STRUCTURE OF DLC8A IS

-- COMPONENTS

COMPONENT DLC
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	G : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : DLC	PORT MAP(
	D => D1, 
	Q => Q1, 
	G => G, 
	CLR => CLR
);
U2 : DLC	PORT MAP(
	D => D2, 
	Q => Q2, 
	G => G, 
	CLR => CLR
);
U3 : DLC	PORT MAP(
	D => D3, 
	Q => Q3, 
	G => G, 
	CLR => CLR
);
U4 : DLC	PORT MAP(
	D => D4, 
	Q => Q4, 
	G => G, 
	CLR => CLR
);
U5 : DLC	PORT MAP(
	D => D5, 
	Q => Q5, 
	G => G, 
	CLR => CLR
);
U6 : DLC	PORT MAP(
	D => D6, 
	Q => Q6, 
	G => G, 
	CLR => CLR
);
U7 : DLC	PORT MAP(
	D => D7, 
	Q => Q7, 
	G => G, 
	CLR => CLR
);
U8 : DLC	PORT MAP(
	D => D0, 
	Q => Q0, 
	G => G, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FADD16 IS PORT (
	CO : OUT std_logic;
	A15 : IN std_logic;
	A14 : IN std_logic;
	A13 : IN std_logic;
	A12 : IN std_logic;
	A11 : IN std_logic;
	A10 : IN std_logic;
	A9 : IN std_logic;
	A8 : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B15 : IN std_logic;
	B14 : IN std_logic;
	B13 : IN std_logic;
	B12 : IN std_logic;
	B11 : IN std_logic;
	B10 : IN std_logic;
	B9 : IN std_logic;
	B8 : IN std_logic;
	B7 : IN std_logic;
	B6 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S15 : OUT std_logic;
	S14 : OUT std_logic;
	S13 : OUT std_logic;
	S12 : OUT std_logic;
	S11 : OUT std_logic;
	S10 : OUT std_logic;
	S9 : OUT std_logic;
	S8 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic
); END FADD16;



ARCHITECTURE STRUCTURE OF FADD16 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CS1
	PORT (
	C : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CY2A
	PORT (
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
	); END COMPONENT;

COMPONENT CSA2H	 PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S10 : OUT std_logic;
	S00 : OUT std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic
); END COMPONENT;

COMPONENT CSA3H	 PORT (
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S01 : OUT std_logic;
	S11 : OUT std_logic;
	S00 : OUT std_logic;
	S10 : OUT std_logic;
	S12 : OUT std_logic;
	S02 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00103 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00034 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : VCC	PORT MAP(
	Y => N00146
);
U14 : CS1	PORT MAP(
	C => N00062, 
	D => N00065, 
	A => N00053, 
	B => N00054, 
	S => N00055, 
	Y => S11
);
U15 : MX2	PORT MAP(
	A => N00047, 
	B => N00050, 
	S => N00029, 
	Y => S13
);
U16 : MX2	PORT MAP(
	A => N00039, 
	B => N00044, 
	S => N00029, 
	Y => S14
);
U17 : MX2	PORT MAP(
	A => N00034, 
	B => N00036, 
	S => N00029, 
	Y => S15
);
U1 : CS1	PORT MAP(
	C => N00098, 
	D => N00099, 
	A => N00100, 
	B => N00101, 
	S => N00102, 
	Y => N00055
);
U2 : MX2	PORT MAP(
	A => N00094, 
	B => N00097, 
	S => N00055, 
	Y => S7
);
U3 : MX2	PORT MAP(
	A => N00085, 
	B => N00088, 
	S => N00055, 
	Y => S8
);
U5 : MX2	PORT MAP(
	A => N00117, 
	B => N00120, 
	S => N00103, 
	Y => S4
);
U6 : MX2	PORT MAP(
	A => N00108, 
	B => N00111, 
	S => N00103, 
	Y => S5
);
U22 : MX2	PORT MAP(
	A => N00104, 
	B => N00106, 
	S => N00103, 
	Y => S6
);
U7 : MX2	PORT MAP(
	A => N00100, 
	B => N00101, 
	S => N00102, 
	Y => N00103
);
U23 : MX2	PORT MAP(
	A => N00081, 
	B => N00083, 
	S => N00055, 
	Y => S9
);
U8 : MX2	PORT MAP(
	A => N00125, 
	B => N00127, 
	S => N00102, 
	Y => S3
);
U24 : MX2	PORT MAP(
	A => N00030, 
	B => N00032, 
	S => N00029, 
	Y => CO
);
U9 : MX2	PORT MAP(
	A => N00130, 
	B => N00132, 
	S => N00102, 
	Y => S2
);
U25 : CS1	PORT MAP(
	C => N00051, 
	D => N00052, 
	A => N00053, 
	B => N00054, 
	S => N00055, 
	Y => N00029
);
U26 : CS1	PORT MAP(
	C => N00056, 
	D => N00058, 
	A => N00053, 
	B => N00054, 
	S => N00055, 
	Y => S12
);
U27 : CS1	PORT MAP(
	C => N00073, 
	D => N00076, 
	A => N00053, 
	B => N00054, 
	S => N00055, 
	Y => S10
);
U10 : CY2A	PORT MAP(
	B1 => B1, 
	A1 => A1, 
	B0 => B0, 
	A0 => A0, 
	Y => N00102
);
U11 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00142, 
	CO => OPEN, 
	S => S1
);
U12 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => N00146, 
	CO => N00142, 
	S => S0
);
U4 : CSA2H	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	B1 => B3, 
	B0 => B2, 
	S10 => N00132, 
	S00 => N00130, 
	C0 => N00100, 
	C1 => N00101, 
	S01 => N00125, 
	S11 => N00127
);
U18 : CSA3H	PORT MAP(
	A2 => A6, 
	A1 => A5, 
	A0 => A4, 
	B2 => B6, 
	B1 => B5, 
	B0 => B4, 
	S01 => N00108, 
	S11 => N00111, 
	S00 => N00117, 
	S10 => N00120, 
	S12 => N00106, 
	S02 => N00104, 
	C1 => N00099, 
	C0 => N00098
);
U19 : CSA3H	PORT MAP(
	A2 => A9, 
	A1 => A8, 
	A0 => A7, 
	B2 => B9, 
	B1 => B8, 
	B0 => B7, 
	S01 => N00085, 
	S11 => N00088, 
	S00 => N00094, 
	S10 => N00097, 
	S12 => N00083, 
	S02 => N00081, 
	C1 => N00054, 
	C0 => N00053
);
U20 : CSA3H	PORT MAP(
	A2 => A12, 
	A1 => A11, 
	A0 => A10, 
	B2 => B12, 
	B1 => B11, 
	B0 => B10, 
	S01 => N00062, 
	S11 => N00065, 
	S00 => N00073, 
	S10 => N00076, 
	S12 => N00058, 
	S02 => N00056, 
	C1 => N00052, 
	C0 => N00051
);
U21 : CSA3H	PORT MAP(
	A2 => A15, 
	A1 => A14, 
	A0 => A13, 
	B2 => B15, 
	B1 => B14, 
	B0 => B13, 
	S01 => N00039, 
	S11 => N00044, 
	S00 => N00047, 
	S10 => N00050, 
	S12 => N00036, 
	S02 => N00034, 
	C1 => N00032, 
	C0 => N00030
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TA02 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
); END TA02;



ARCHITECTURE STRUCTURE OF TA02 IS

-- COMPONENTS

COMPONENT NOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : NOR2	PORT MAP(
	A => A, 
	B => B, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CNT4A IS PORT (
	CLR : IN std_logic;
	LD : IN std_logic;
	CI : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q2 : OUT std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END CNT4A;



ARCHITECTURE STRUCTURE OF CNT4A IS

-- COMPONENTS

COMPONENT DFMB
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AX1C
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00056 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00049 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00023;
Q2<=N00036;
Q3<=N00049;
U1 : DFMB	PORT MAP(
	A => N00016, 
	B => P0, 
	Q => N00014, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U2 : DFMB	PORT MAP(
	A => N00026, 
	B => P1, 
	Q => N00023, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U3 : DFMB	PORT MAP(
	A => N00038, 
	B => P2, 
	Q => N00036, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U4 : DFMB	PORT MAP(
	A => N00051, 
	B => P3, 
	Q => N00049, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U5 : XOR2	PORT MAP(
	A => CI, 
	B => N00014, 
	Y => N00016
);
U6 : AX1	PORT MAP(
	Y => N00038, 
	A => N00035, 
	B => CI, 
	C => N00036
);
U7 : AX1	PORT MAP(
	Y => N00051, 
	A => N00045, 
	B => CI, 
	C => N00049
);
U8 : NAND2	PORT MAP(
	A => N00023, 
	B => N00014, 
	Y => N00035
);
U9 : NAND3	PORT MAP(
	A => N00036, 
	B => N00023, 
	C => N00014, 
	Y => N00045
);
U10 : AND3	PORT MAP(
	A => N00036, 
	B => N00023, 
	C => N00014, 
	Y => N00056
);
U11 : AND3	PORT MAP(
	A => N00056, 
	B => N00049, 
	C => CI, 
	Y => CO
);
U12 : AX1C	PORT MAP(
	Y => N00026, 
	A => N00014, 
	B => CI, 
	C => N00023
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ORH IS PORT (
	D : IN std_logic;
	CLK : IN std_logic;
	PAD : OUT std_logic
); END ORH;



ARCHITECTURE STRUCTURE OF ORH IS

-- COMPONENTS

COMPONENT OBDLHS
	PORT (
	D : IN std_logic;
	PAD : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

COMPONENT DL1B
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	G : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL INT6NET : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OBDLHS	PORT MAP(
	D => INT6NET, 
	PAD => PAD, 
	G => CLK
);
U2 : DL1B	PORT MAP(
	D => D, 
	Q => INT6NET, 
	G => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CNT4B IS PORT (
	CLR : IN std_logic;
	LD : IN std_logic;
	CI : IN std_logic;
	CLK : IN std_logic;
	P0 : IN std_logic;
	P1 : IN std_logic;
	Q2 : OUT std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END CNT4B;



ARCHITECTURE STRUCTURE OF CNT4B IS

-- COMPONENTS

COMPONENT DFMB
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	S : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT AX1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00025 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00017 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00019;
Q1<=N00021;
Q2<=N00023;
Q3<=N00025;
U1 : DFMB	PORT MAP(
	A => N00015, 
	B => P1, 
	Q => N00021, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U2 : DFMB	PORT MAP(
	A => N00016, 
	B => P2, 
	Q => N00023, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U3 : DFMB	PORT MAP(
	A => N00017, 
	B => P3, 
	Q => N00025, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U4 : AX1	PORT MAP(
	Y => N00014, 
	A => CI, 
	B => N00039, 
	C => N00019
);
U5 : AX1	PORT MAP(
	Y => N00015, 
	A => CI, 
	B => N00019, 
	C => N00021
);
U6 : AX1	PORT MAP(
	Y => N00017, 
	A => CI, 
	B => N00041, 
	C => N00025
);
U7 : AND2	PORT MAP(
	A => N00019, 
	B => N00021, 
	Y => N00034
);
U8 : AND3	PORT MAP(
	A => N00023, 
	B => N00021, 
	C => N00019, 
	Y => N00041
);
U9 : NAND3A	PORT MAP(
	A => CI, 
	B => N00025, 
	C => N00041, 
	Y => CO
);
U10 : DFMB	PORT MAP(
	A => N00014, 
	B => P0, 
	Q => N00019, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U11 : AX1	PORT MAP(
	Y => N00016, 
	A => CI, 
	B => N00034, 
	C => N00023
);
U12 : VCC	PORT MAP(
	Y => N00039
);
END STRUCTURE;

