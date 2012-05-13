--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--					VHDL Macro Simulation Library for Xilinx XC5200 LCAs
-- File:			X5K_M.VHD
-- Date:			March 20, 1997
-- Version:		v7.00
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96
-- Modified:         
-- |Kathy Horvath		|07/30/98		|Edited the model for the CC8CLED to 
--										|make it work according to spec.
-- |Kathy Horvath		|05/07/98		|Added the following entities:
--										| ftclex.         
-- |Kathy Horvath		|07/06/98		|Edited the model for the CC16CLED to 
--										|make it work according to spec.
--***************************************************************************
-- XILINX XC5200 MACRO SIMULATION MODELS

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_390 IS PORT (
	CKA : IN std_logic;
	CKB : IN std_logic;
	CLR : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic
); END X74_390;



ARCHITECTURE STRUCTURE OF X74_390 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE_1	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D3 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL A21 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL OX3 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00014;
QB<=N00022;
QC<=N00031;
QD<=N00020;
U13 : INV	PORT MAP(
	O => D0, 
	I => N00014
);
U14 : AND2	PORT MAP(
	I0 => N00022, 
	I1 => N00031, 
	O => A21
);
U15 : AND2B1	PORT MAP(
	I0 => N00020, 
	I1 => N00022, 
	O => AX2
);
U18 : VCC	PORT MAP(
	P => N00017
);
U1 : NOR2	PORT MAP(
	I1 => N00020, 
	I0 => N00022, 
	O => D1
);
U3 : XOR2	PORT MAP(
	I1 => OX3, 
	I0 => N00020, 
	O => D3
);
U6 : XOR2	PORT MAP(
	I1 => AX2, 
	I0 => N00031, 
	O => D2
);
U12 : OR2	PORT MAP(
	I1 => N00020, 
	I0 => A21, 
	O => OX3
);
U23 : FDCE_1	PORT MAP(
	D => D1, 
	CE => N00017, 
	C => CKB, 
	CLR => CLR, 
	Q => N00022
);
U25 : FDCE_1	PORT MAP(
	D => D2, 
	CE => N00017, 
	C => CKB, 
	CLR => CLR, 
	Q => N00031
);
U27 : FDCE_1	PORT MAP(
	D => D3, 
	CE => N00017, 
	C => CKB, 
	CLR => CLR, 
	Q => N00020
);
U20 : FDCE_1	PORT MAP(
	D => D0, 
	CE => N00017, 
	C => CKA, 
	CLR => CLR, 
	Q => N00014
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB4CLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB4CLE;



ARCHITECTURE STRUCTURE OF CB4CLE IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T2 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00048;
Q0<=N00013;
Q1<=N00022;
Q2<=N00032;
Q3<=N00043;
U87 : AND4	PORT MAP(
	I0 => N00013, 
	I1 => N00022, 
	I2 => N00032, 
	I3 => N00043, 
	O => N00048
);
U59 : VCC	PORT MAP(
	P => N00014
);
U107 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00048, 
	O => CEO
);
U98 : AND2	PORT MAP(
	I0 => N00022, 
	I1 => N00013, 
	O => T2
);
U99 : AND3	PORT MAP(
	I0 => N00032, 
	I1 => N00022, 
	I2 => N00013, 
	O => T3
);
U40 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00014, 
	CE => CE, 
	C => C, 
	Q => N00013, 
	CLR => CLR
);
U41 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00013, 
	CE => CE, 
	C => C, 
	Q => N00022, 
	CLR => CLR
);
U42 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00032, 
	CLR => CLR
);
U43 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00043, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CC16CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CC16CE;



ARCHITECTURE STRUCTURE OF CC16CE IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00207 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL N00232 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C15 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL N00233 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00258 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00206 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00282 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL N00259 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00077;
TC<=N00071;
Q0<=N00258;
Q1<=N00232;
Q2<=N00206;
Q3<=N00180;
Q4<=N00154;
Q5<=N00128;
Q6<=N00102;
Q7<=N00076;
Q8<=N00259;
Q9<=N00233;
Q10<=N00207;
Q11<=N00181;
Q12<=N00155;
Q13<=N00129;
Q14<=N00103;
U803 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C5, 
	O => TQ5, 
	I1 => N00128
);
U259 : CY_MUX	PORT MAP(
	S => N00154, 
	CI => C4, 
	CO => C5, 
	DI => N00078
);
U1118 : FDCE	PORT MAP(
	D => TQ9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00233
);
U1119 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => N00233, 
	O => TQ9
);
U809 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C6, 
	O => TQ6, 
	I1 => N00102
);
U792 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C3, 
	O => TQ3, 
	I1 => N00180
);
U798 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C4, 
	O => TQ4, 
	I1 => N00154
);
U291 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => N00076, 
	O => TQ7
);
U263 : FDCE	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00128
);
U4 : CY_MUX	PORT MAP(
	S => N00258, 
	CI => C0, 
	CO => C1, 
	DI => N00078
);
U233 : CY_MUX	PORT MAP(
	S => N00206, 
	CI => C2, 
	CO => C3, 
	DI => N00078
);
U265 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00128, 
	O => TQ5
);
U298 : CY_MUX	PORT MAP(
	S => N00076, 
	CI => C7, 
	CO => C8, 
	DI => N00078
);
U6 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => N00258, 
	O => TQ0
);
U237 : FDCE	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00180
);
U814 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C7, 
	O => TQ7, 
	I1 => N00076
);
U239 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00180, 
	O => TQ3
);
U26 : CY_MUX	PORT MAP(
	S => N00232, 
	CI => C1, 
	CO => C2, 
	DI => N00078
);
U28 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00232, 
	O => TQ1
);
U1269 : GND	PORT MAP(
	G => N00080
);
U923 : VCC	PORT MAP(
	P => N00282
);
U742 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C0, 
	O => TQ0, 
	I1 => N00258
);
U748 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C1, 
	O => TQ1, 
	I1 => N00232
);
U272 : CY_MUX	PORT MAP(
	S => N00128, 
	CI => C5, 
	CO => C6, 
	DI => N00078
);
U1100 : XOR2	PORT MAP(
	I1 => C14, 
	I0 => N00103, 
	O => TQ14
);
U1101 : FDCE	PORT MAP(
	D => TQ14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00103
);
U1102 : FDCE	PORT MAP(
	D => TQ12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00155
);
U1103 : XOR2	PORT MAP(
	I1 => C12, 
	I0 => N00155, 
	O => TQ12
);
U276 : FDCE	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00102
);
U1104 : FDCE	PORT MAP(
	D => TQ10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00207
);
U886 : GND	PORT MAP(
	G => N00078
);
U246 : CY_MUX	PORT MAP(
	S => N00180, 
	CI => C3, 
	CO => C4, 
	DI => N00078
);
U1105 : XOR2	PORT MAP(
	I1 => C10, 
	I0 => N00207, 
	O => TQ10
);
U278 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => N00102, 
	O => TQ6
);
U1106 : XOR2	PORT MAP(
	I1 => C8, 
	I0 => N00259, 
	O => TQ8
);
U35 : FDCE	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00232
);
U36 : FDCE	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00258
);
U1242 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C8, 
	O => TQ8, 
	I1 => N00259
);
U1243 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C10, 
	O => TQ10, 
	I1 => N00207
);
U1244 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C15, 
	O => TQ15, 
	I1 => N00077
);
U1245 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C9, 
	O => TQ9, 
	I1 => N00233
);
U1246 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C11, 
	O => TQ11, 
	I1 => N00181
);
U1247 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C13, 
	O => TQ13, 
	I1 => N00129
);
U1248 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C12, 
	O => TQ12, 
	I1 => N00155
);
U1249 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C14, 
	O => TQ14, 
	I1 => N00103
);
U1095 : FDCE	PORT MAP(
	D => TQ8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00259
);
U1099 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00071, 
	O => CEO
);
U787 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C2, 
	O => TQ2, 
	I1 => N00206
);
U1140 : CY_MUX	PORT MAP(
	S => N00077, 
	CI => C15, 
	CO => N00071, 
	DI => N00080
);
U1141 : CY_MUX	PORT MAP(
	S => N00103, 
	CI => C14, 
	CO => C15, 
	DI => N00080
);
U250 : FDCE	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00154
);
U1142 : CY_MUX	PORT MAP(
	S => N00129, 
	CI => C13, 
	CO => C14, 
	DI => N00080
);
U252 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => N00154, 
	O => TQ4
);
U1143 : CY_MUX	PORT MAP(
	S => N00155, 
	CI => C12, 
	CO => C13, 
	DI => N00080
);
U1144 : CY_MUX	PORT MAP(
	S => N00181, 
	CI => C11, 
	CO => C12, 
	DI => N00080
);
U285 : CY_MUX	PORT MAP(
	S => N00102, 
	CI => C6, 
	CO => C7, 
	DI => N00078
);
U1112 : XOR2	PORT MAP(
	I1 => C15, 
	I0 => N00077, 
	O => TQ15
);
U1145 : CY_MUX	PORT MAP(
	S => N00207, 
	CI => C10, 
	CO => C11, 
	DI => N00080
);
U1113 : FDCE	PORT MAP(
	D => TQ15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00077
);
U1146 : CY_MUX	PORT MAP(
	S => N00233, 
	CI => C9, 
	CO => C10, 
	DI => N00080
);
U1114 : FDCE	PORT MAP(
	D => TQ13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00129
);
U224 : FDCE	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00206
);
U1147 : CY_MUX	PORT MAP(
	S => N00259, 
	CI => C8, 
	CO => C9, 
	DI => N00080
);
U1115 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => N00129, 
	O => TQ13
);
U1116 : FDCE	PORT MAP(
	D => TQ11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00181
);
U289 : FDCE	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00076
);
U1117 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => N00181, 
	O => TQ11
);
U226 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => N00206, 
	O => TQ2
);
U3 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00282
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CC8CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CC8CE;



ARCHITECTURE STRUCTURE OF CC8CE IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00055 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL C0 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00038;
Q0<=N00133;
Q1<=N00120;
Q2<=N00107;
Q3<=N00094;
Q4<=N00081;
Q5<=N00068;
Q6<=N00055;
Q7<=N00042;
U803 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C5, 
	O => TQ5, 
	I1 => N00068
);
U259 : CY_MUX	PORT MAP(
	S => N00081, 
	CI => C4, 
	CO => C5, 
	DI => N00043
);
U809 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C6, 
	O => TQ6, 
	I1 => N00055
);
U792 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C3, 
	O => TQ3, 
	I1 => N00094
);
U798 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C4, 
	O => TQ4, 
	I1 => N00081
);
U291 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => N00042, 
	O => TQ7
);
U263 : FDCE	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00068
);
U4 : CY_MUX	PORT MAP(
	S => N00133, 
	CI => C0, 
	CO => C1, 
	DI => N00043
);
U265 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00068, 
	O => TQ5
);
U233 : CY_MUX	PORT MAP(
	S => N00107, 
	CI => C2, 
	CO => C3, 
	DI => N00043
);
U298 : CY_MUX	PORT MAP(
	S => N00042, 
	CI => C7, 
	CO => N00038, 
	DI => N00043
);
U6 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => N00133, 
	O => TQ0
);
U237 : FDCE	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00094
);
U814 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C7, 
	O => TQ7, 
	I1 => N00042
);
U239 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00094, 
	O => TQ3
);
U26 : CY_MUX	PORT MAP(
	S => N00120, 
	CI => C1, 
	CO => C2, 
	DI => N00043
);
U28 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00120, 
	O => TQ1
);
U923 : VCC	PORT MAP(
	P => N00145
);
U956 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00038, 
	O => CEO
);
U742 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C0, 
	O => TQ0, 
	I1 => N00133
);
U748 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C1, 
	O => TQ1, 
	I1 => N00120
);
U272 : CY_MUX	PORT MAP(
	S => N00068, 
	CI => C5, 
	CO => C6, 
	DI => N00043
);
U276 : FDCE	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00055
);
U246 : CY_MUX	PORT MAP(
	S => N00094, 
	CI => C3, 
	CO => C4, 
	DI => N00043
);
U886 : GND	PORT MAP(
	G => N00043
);
U278 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => N00055, 
	O => TQ6
);
U35 : FDCE	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00120
);
U36 : FDCE	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00133
);
U787 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => C2, 
	O => TQ2, 
	I1 => N00107
);
U250 : FDCE	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00081
);
U252 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => N00081, 
	O => TQ4
);
U285 : CY_MUX	PORT MAP(
	S => N00055, 
	CI => C6, 
	CO => C7, 
	DI => N00043
);
U224 : FDCE	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00107
);
U289 : FDCE	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00042
);
U226 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => N00107, 
	O => TQ2
);
U3 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00145
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CD4RLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CD4RLE;



ARCHITECTURE STRUCTURE OF CD4RLE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTRSLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00032 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL TQ03 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL T1 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00060;
Q0<=N00020;
Q1<=N00032;
Q2<=N00041;
Q3<=N00029;
U13 : OR2	PORT MAP(
	I1 => TQ2, 
	I0 => TQ03, 
	O => T3
);
U181 : AND2B1	PORT MAP(
	I0 => N00029, 
	I1 => N00020, 
	O => T1
);
U150 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00060, 
	O => CEO
);
U123 : AND2	PORT MAP(
	I0 => N00020, 
	I1 => N00032, 
	O => T2
);
U2 : AND2	PORT MAP(
	I0 => T2, 
	I1 => N00041, 
	O => TQ2
);
U166 : AND2	PORT MAP(
	I0 => N00020, 
	I1 => N00029, 
	O => TQ03
);
U145 : GND	PORT MAP(
	G => N00015
);
U178 : AND4B2	PORT MAP(
	I0 => N00041, 
	I1 => N00032, 
	I2 => N00020, 
	I3 => N00029, 
	O => N00060
);
U44 : FTRSLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	R => R, 
	S => N00015, 
	Q => N00032, 
	CE => CE, 
	C => C
);
U45 : FTRSLE	PORT MAP(
	D => D0, 
	L => L, 
	T => CE, 
	R => R, 
	S => N00015, 
	Q => N00020, 
	CE => CE, 
	C => C
);
U39 : FTRSLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	R => R, 
	S => N00015, 
	Q => N00029, 
	CE => CE, 
	C => C
);
U40 : FTRSLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	R => R, 
	S => N00015, 
	Q => N00041, 
	CE => CE, 
	C => C
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMP8 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	EQ : OUT std_logic
); END COMP8;



ARCHITECTURE STRUCTURE OF COMP8 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB3 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB4 : std_logic;

-- GATE INSTANCES

BEGIN
U45 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
U50 : AND2	PORT MAP(
	I0 => AB47, 
	I1 => AB03, 
	O => EQ
);
U32 : AND4	PORT MAP(
	I0 => AB7, 
	I1 => AB6, 
	I2 => AB5, 
	I3 => AB4, 
	O => AB47
);
U33 : XNOR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => AB6
);
U34 : XNOR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => AB7
);
U35 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => AB5
);
U36 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => AB4
);
U41 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => AB03
);
U42 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U43 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U44 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFD8 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END OFD8;



ARCHITECTURE STRUCTURE OF OFD8 IS

-- COMPONENTS

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : OFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U34 : OFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U35 : OFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U36 : OFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U37 : OFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U30 : OFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U31 : OFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U32 : OFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE8 IS PORT (
	E : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	C : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END OFDE8;



ARCHITECTURE STRUCTURE OF OFDE8 IS

-- COMPONENTS

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00235 : std_logic;

-- GATE INSTANCES

BEGIN
U33 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U34 : OFDE	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4
);
U35 : OFDE	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5
);
U36 : OFDE	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6
);
U37 : OFDE	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7
);
U30 : OFDE	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0
);
U31 : OFDE	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1
);
U32 : OFDE	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_298 IS PORT (
	A1 : IN std_logic;
	A2 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	C1 : IN std_logic;
	C2 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	WS : IN std_logic;
	CK : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic
); END X74_298;



ARCHITECTURE STRUCTURE OF X74_298 IS

-- COMPONENTS

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FD_1	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MC : std_logic;
SIGNAL MA : std_logic;
SIGNAL MD : std_logic;
SIGNAL MB : std_logic;

-- GATE INSTANCES

BEGIN
U22 : M2_1	PORT MAP(
	D0 => D1, 
	D1 => D2, 
	S0 => WS, 
	O => MD
);
U23 : M2_1	PORT MAP(
	D0 => C1, 
	D1 => C2, 
	S0 => WS, 
	O => MC
);
U24 : M2_1	PORT MAP(
	D0 => B1, 
	D1 => B2, 
	S0 => WS, 
	O => MB
);
U25 : M2_1	PORT MAP(
	D0 => A1, 
	D1 => A2, 
	S0 => WS, 
	O => MA
);
U8 : FD_1	PORT MAP(
	D => MB, 
	C => CK, 
	Q => QB
);
U9 : FD_1	PORT MAP(
	D => MA, 
	C => CK, 
	Q => QA
);
U31 : FD_1	PORT MAP(
	D => MD, 
	C => CK, 
	Q => QD
);
U10 : FD_1	PORT MAP(
	D => MC, 
	C => CK, 
	Q => QC
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XNOR9 IS PORT (
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XNOR9;



ARCHITECTURE STRUCTURE OF XNOR9 IS

-- COMPONENTS

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I14 : std_logic;
SIGNAL I58 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
);
U85 : XNOR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
	I0 => I0, 
	O => O
);
U69 : XOR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XOR5 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XOR5;



ARCHITECTURE STRUCTURE OF XOR5 IS

-- COMPONENTS

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : XOR3	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : XOR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CJ5CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic
); END CJ5CE;



ARCHITECTURE STRUCTURE OF CJ5CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL Q4B : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00010;
Q1<=N00015;
Q2<=N00020;
Q3<=N00025;
Q4<=N00008;
U62 : FDCE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U63 : FDCE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00020
);
U64 : FDCE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00015
);
U65 : FDCE	PORT MAP(
	D => Q4B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U33 : FDCE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U34 : INV	PORT MAP(
	O => Q4B, 
	I => N00008
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMPMC8 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	GT : OUT std_logic;
	LT : OUT std_logic
); END COMPMC8;



ARCHITECTURE STRUCTURE OF COMPMC8 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL EQ01 : std_logic;
SIGNAL EQ45 : std_logic;
SIGNAL EQ23 : std_logic;
SIGNAL EQ67 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL CC2 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL CC1 : std_logic;
SIGNAL CC3 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL EQ : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL B7B : std_logic;
SIGNAL B3B : std_logic;
SIGNAL I2 : std_logic;
SIGNAL I4 : std_logic;
SIGNAL B6B : std_logic;
SIGNAL I0 : std_logic;
SIGNAL B2B : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL N00188 : std_logic;
SIGNAL CC0 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL I5 : std_logic;
SIGNAL B1B : std_logic;
SIGNAL I1 : std_logic;
SIGNAL B4B : std_logic;
SIGNAL I7 : std_logic;
SIGNAL I3 : std_logic;
SIGNAL B0B : std_logic;
SIGNAL B5B : std_logic;
SIGNAL I6 : std_logic;
SIGNAL N00192 : std_logic;

-- GATE INSTANCES

BEGIN
LT<=N00063;
U1727 : INV	PORT MAP(
	O => B3B, 
	I => B3
);
U1759 : INV	PORT MAP(
	O => B6B, 
	I => B6
);
U1728 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C4, 
	CO => C5, 
	DI => A3
);
U1830 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B4, 
	O => I4, 
	I1 => A4
);
U1831 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B7, 
	O => I7, 
	I1 => A7
);
U1838 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B6, 
	O => I6, 
	I1 => A6
);
U1621 : AND2	PORT MAP(
	I0 => AB2, 
	I1 => AB3, 
	O => EQ23
);
U1685 : FMAP	PORT MAP(
	I4 => B5, 
	I3 => A5, 
	I2 => B4, 
	O => EQ45, 
	I1 => A4
);
U1658 : AND2	PORT MAP(
	I0 => AB6, 
	I1 => AB7, 
	O => EQ67
);
U1790 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U1760 : CY_MUX	PORT MAP(
	S => I6, 
	CI => C7, 
	CO => C8, 
	DI => A6
);
U1 : XOR2	PORT MAP(
	I1 => B0B, 
	I0 => A0, 
	O => I0
);
U1730 : XOR2	PORT MAP(
	I1 => B3B, 
	I0 => A3, 
	O => I3
);
U1762 : XOR2	PORT MAP(
	I1 => B6B, 
	I0 => A6, 
	O => I6
);
U3 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C0, 
	CO => C1, 
	DI => A0
);
U1733 : XOR2	PORT MAP(
	I1 => B4B, 
	I0 => A4, 
	O => I4
);
U1765 : INV	PORT MAP(
	O => N00063, 
	I => LT_1
);
U1766 : NOR2	PORT MAP(
	I1 => EQ, 
	I0 => N00063, 
	O => GT
);
U1735 : CY_MUX	PORT MAP(
	S => I4, 
	CI => C5, 
	CO => C6, 
	DI => A4
);
U1736 : INV	PORT MAP(
	O => B4B, 
	I => B4
);
U1708 : XOR2	PORT MAP(
	I1 => B1B, 
	I0 => A1, 
	O => I1
);
U1691 : FMAP	PORT MAP(
	I4 => B7, 
	I3 => A7, 
	I2 => B6, 
	O => EQ67, 
	I1 => A6
);
U1661 : CY_MUX	PORT MAP(
	S => EQ67, 
	CI => CC3, 
	CO => EQ, 
	DI => N00096
);
U1664 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => AB7
);
U1665 : XNOR2	PORT MAP(
	I1 => B6, 
	I0 => A6, 
	O => AB6
);
U1602 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => AB1
);
U1604 : XNOR2	PORT MAP(
	I1 => B0, 
	I0 => A0, 
	O => AB0
);
U1636 : AND2	PORT MAP(
	I0 => AB4, 
	I1 => AB5, 
	O => EQ45
);
U1639 : CY_MUX	PORT MAP(
	S => EQ45, 
	CI => CC2, 
	CO => CC3, 
	DI => N00096
);
U1482 : GND	PORT MAP(
	G => N00096
);
U1483 : VCC	PORT MAP(
	P => N00188
);
U1484 : VCC	PORT MAP(
	P => N00192
);
U1773 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U1710 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C1, 
	CO => C2, 
	DI => A1
);
U1743 : INV	PORT MAP(
	O => B5B, 
	I => B5
);
U1711 : INV	PORT MAP(
	O => B1B, 
	I => B1
);
U1744 : CY_MUX	PORT MAP(
	S => I5, 
	CI => C6, 
	CO => C7, 
	DI => A5
);
U1746 : XOR2	PORT MAP(
	I1 => B5B, 
	I0 => A5, 
	O => I5
);
U1779 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U1749 : XOR2	PORT MAP(
	I1 => B7B, 
	I0 => A7, 
	O => I7
);
U1717 : XOR2	PORT MAP(
	I1 => B2B, 
	I0 => A2, 
	O => I2
);
U1719 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C2, 
	CO => C4, 
	DI => A2
);
U1823 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B5, 
	O => I5, 
	I1 => A5
);
U1033 : CY_MUX	PORT MAP(
	S => EQ01, 
	CI => CC0, 
	CO => CC1, 
	DI => N00096
);
U1642 : XNOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => AB5
);
U1643 : XNOR2	PORT MAP(
	I1 => B4, 
	I0 => A4, 
	O => AB4
);
U1612 : XNOR2	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => AB2
);
U1613 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => AB3
);
U1679 : FMAP	PORT MAP(
	I4 => B3, 
	I3 => A3, 
	I2 => B2, 
	O => EQ23, 
	I1 => A2
);
U1492 : FMAP	PORT MAP(
	I4 => B1, 
	I3 => A1, 
	I2 => B0, 
	O => EQ01, 
	I1 => A0
);
U1618 : CY_MUX	PORT MAP(
	S => EQ23, 
	CI => CC1, 
	CO => CC2, 
	DI => N00096
);
U1751 : CY_MUX	PORT MAP(
	S => I7, 
	CI => C8, 
	CO => LT_1, 
	DI => A7
);
U1783 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U1752 : INV	PORT MAP(
	O => B7B, 
	I => B7
);
U1720 : INV	PORT MAP(
	O => B2B, 
	I => B2
);
U1145 : AND2	PORT MAP(
	I0 => AB0, 
	I1 => AB1, 
	O => EQ01
);
U1114 : INV	PORT MAP(
	O => B0B, 
	I => B0
);
U1049 : CY_INIT	PORT MAP(
	COUT => CC0, 
	INIT => N00188
);
U153 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00192
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECODE32 IS PORT (
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
	A16 : IN std_logic;
	A17 : IN std_logic;
	A18 : IN std_logic;
	A19 : IN std_logic;
	A20 : IN std_logic;
	A21 : IN std_logic;
	A22 : IN std_logic;
	A23 : IN std_logic;
	A24 : IN std_logic;
	A25 : IN std_logic;
	A26 : IN std_logic;
	A27 : IN std_logic;
	A28 : IN std_logic;
	A29 : IN std_logic;
	A30 : IN std_logic;
	A31 : IN std_logic;
	O : OUT std_logic
); END DECODE32;



ARCHITECTURE STRUCTURE OF DECODE32 IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S0 : std_logic;
SIGNAL C_IN2 : std_logic;
SIGNAL C_IN3 : std_logic;
SIGNAL C_IN6 : std_logic;
SIGNAL C_IN7 : std_logic;
SIGNAL C_IN1 : std_logic;
SIGNAL C_IN4 : std_logic;
SIGNAL C_IN5 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL C_IN0 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S1 : std_logic;

-- GATE INSTANCES

BEGIN
U184 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S5, 
	I1 => orcad_unused
);
U185 : CY_MUX	PORT MAP(
	S => S4, 
	CI => C_IN4, 
	CO => C_IN5, 
	DI => N00035
);
U187 : AND4	PORT MAP(
	I0 => A16, 
	I1 => A17, 
	I2 => A18, 
	I3 => A19, 
	O => S4
);
U123 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C_IN1, 
	CO => C_IN2, 
	DI => N00035
);
U188 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S4, 
	I1 => orcad_unused
);
U189 : AND4	PORT MAP(
	I0 => A20, 
	I1 => A21, 
	I2 => A22, 
	I3 => A23, 
	O => S5
);
U125 : AND4	PORT MAP(
	I0 => A4, 
	I1 => A5, 
	I2 => A6, 
	I3 => A7, 
	O => S1
);
U127 : AND4	PORT MAP(
	I0 => A12, 
	I1 => A13, 
	I2 => A14, 
	I3 => A15, 
	O => S3
);
U128 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C_IN3, 
	CO => C_IN4, 
	DI => N00035
);
U129 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S2, 
	I1 => orcad_unused
);
U202 : AND4	PORT MAP(
	I0 => A28, 
	I1 => A29, 
	I2 => A30, 
	I3 => A31, 
	O => S7
);
U203 : AND4	PORT MAP(
	I0 => A24, 
	I1 => A25, 
	I2 => A26, 
	I3 => A27, 
	O => S6
);
U190 : CY_MUX	PORT MAP(
	S => S7, 
	CI => C_IN7, 
	CO => O, 
	DI => N00035
);
U193 : CY_MUX	PORT MAP(
	S => S5, 
	CI => C_IN5, 
	CO => C_IN6, 
	DI => N00035
);
U162 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S6, 
	I1 => orcad_unused
);
U131 : AND4	PORT MAP(
	I0 => A8, 
	I1 => A9, 
	I2 => A10, 
	I3 => A11, 
	O => S2
);
U163 : CY_MUX	PORT MAP(
	S => S6, 
	CI => C_IN6, 
	CO => C_IN7, 
	DI => N00035
);
U164 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S7, 
	I1 => orcad_unused
);
U101 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S0, 
	I1 => orcad_unused
);
U134 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C_IN2, 
	CO => C_IN3, 
	DI => N00035
);
U135 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S3, 
	I1 => orcad_unused
);
U92 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S1, 
	I1 => orcad_unused
);
U96 : CY_MUX	PORT MAP(
	S => S0, 
	CI => C_IN0, 
	CO => C_IN1, 
	DI => N00035
);
U97 : VCC	PORT MAP(
	P => N00093
);
U98 : GND	PORT MAP(
	G => N00035
);
U99 : AND4	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	O => S0
);
U100 : CY_INIT	PORT MAP(
	COUT => C_IN0, 
	INIT => N00093
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR5 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR5;



ARCHITECTURE STRUCTURE OF NOR5 IS

-- COMPONENTS

COMPONENT NOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NOR3	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR5B1 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR5B1;



ARCHITECTURE STRUCTURE OF NOR5B1 IS

-- COMPONENTS

COMPONENT NOR3B1
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NOR3B1	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFE4 IS PORT (
	E : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END OBUFE4;



ARCHITECTURE STRUCTURE OF OBUFE4 IS

-- COMPONENTS

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U37 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U38 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U39 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
U40 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP3B1B IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3B1B;



ARCHITECTURE STRUCTURE OF SOP3B1B IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B1
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I01 : std_logic;

-- GATE INSTANCES

BEGIN
U31 : AND2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I01
);
U32 : OR2B1	PORT MAP(
	I1 => I01, 
	I0 => I2, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR16CE IS PORT (
	SLI : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
); END SR16CE;



ARCHITECTURE STRUCTURE OF SR16CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00040 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00019;
Q1<=N00030;
Q2<=N00040;
Q3<=N00050;
Q4<=N00060;
Q5<=N00070;
Q6<=N00080;
Q7<=N00018;
Q8<=N00020;
Q9<=N00031;
Q10<=N00041;
Q11<=N00051;
Q12<=N00061;
Q13<=N00071;
Q14<=N00081;
U53 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
U54 : FDCE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00030
);
U55 : FDCE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00040
);
U56 : FDCE	PORT MAP(
	D => N00040, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00050
);
U57 : FDCE	PORT MAP(
	D => N00050, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U58 : FDCE	PORT MAP(
	D => N00060, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00070
);
U59 : FDCE	PORT MAP(
	D => N00070, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00080
);
U60 : FDCE	PORT MAP(
	D => N00080, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U61 : FDCE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00020
);
U62 : FDCE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U63 : FDCE	PORT MAP(
	D => N00031, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U64 : FDCE	PORT MAP(
	D => N00041, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00051
);
U65 : FDCE	PORT MAP(
	D => N00051, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00061
);
U66 : FDCE	PORT MAP(
	D => N00061, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00071
);
U67 : FDCE	PORT MAP(
	D => N00071, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00081
);
U68 : FDCE	PORT MAP(
	D => N00081, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR4RE IS PORT (
	SLI : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END SR4RE;



ARCHITECTURE STRUCTURE OF SR4RE IS

-- COMPONENTS

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00013 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00006;
Q1<=N00013;
Q2<=N00018;
U47 : FDRE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U48 : FDRE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U49 : FDRE	PORT MAP(
	D => N00006, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00013
);
U50 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR8CLED IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	SRI : IN std_logic;
	L : IN std_logic;
	LEFT : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END SR8CLED;



ARCHITECTURE STRUCTURE OF SR8CLED IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00753 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL2 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00031;
Q1<=N00033;
Q2<=N00044;
Q3<=N00055;
Q4<=N00066;
Q5<=N00077;
Q6<=N00088;
Q7<=N00099;
U120 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U102 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U66 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U67 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00033
);
U68 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00044
);
U69 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00055
);
U70 : FDCE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00066
);
U71 : FDCE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00077
);
U72 : FDCE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00088
);
U73 : FDCE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00099
);
U99 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U89 : M2_1	PORT MAP(
	D0 => N00077, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U103 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U104 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U105 : M2_1	PORT MAP(
	D0 => N00033, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U90 : M2_1	PORT MAP(
	D0 => N00077, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U91 : M2_1	PORT MAP(
	D0 => N00066, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U92 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U93 : M2_1	PORT MAP(
	D0 => N00088, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U94 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U95 : M2_1	PORT MAP(
	D0 => N00088, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U96 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U97 : M2_1	PORT MAP(
	D0 => N00066, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U100 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U98 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U101 : M2_1	PORT MAP(
	D0 => N00033, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_280 IS PORT (
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
); END X74_280;



ARCHITECTURE STRUCTURE OF X74_280 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR5	 PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL X4 : std_logic;
SIGNAL X5 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	I1 => X5, 
	I0 => X4, 
	O => ODD
);
U3 : XNOR2	PORT MAP(
	I1 => X4, 
	I0 => X5, 
	O => EVEN
);
U6 : XOR4	PORT MAP(
	I3 => F, 
	I2 => G, 
	I1 => H, 
	I0 => I, 
	O => X4
);
U8 : XOR5	PORT MAP(
	I4 => A, 
	I3 => B, 
	I2 => C, 
	I1 => D, 
	I0 => E, 
	O => X5
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMPM16 IS PORT (
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
	GT : OUT std_logic;
	LT : OUT std_logic
); END COMPM16;



ARCHITECTURE STRUCTURE OF COMPM16 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT OR8	 PORT (
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL LT12_13 : std_logic;
SIGNAL LT_13 : std_logic;
SIGNAL LT_5 : std_logic;
SIGNAL GE4_5 : std_logic;
SIGNAL GT_9 : std_logic;
SIGNAL LT4_5 : std_logic;
SIGNAL EQ10_11 : std_logic;
SIGNAL EQ14_15 : std_logic;
SIGNAL EQ4_5 : std_logic;
SIGNAL EQ6_7 : std_logic;
SIGNAL EQ12_13 : std_logic;
SIGNAL EQ8_9 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL EQ8_15 : std_logic;
SIGNAL GT2_3 : std_logic;
SIGNAL GT4_5 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LT_15 : std_logic;
SIGNAL LT_7 : std_logic;
SIGNAL GE8_9 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL GE10_11 : std_logic;
SIGNAL LE6_7 : std_logic;
SIGNAL GE6_7 : std_logic;
SIGNAL LT_11 : std_logic;
SIGNAL LE8_9 : std_logic;
SIGNAL LE4_5 : std_logic;
SIGNAL LE10_11 : std_logic;
SIGNAL GE14_15 : std_logic;
SIGNAL GE12_13 : std_logic;
SIGNAL GT_7 : std_logic;
SIGNAL GT_13 : std_logic;
SIGNAL LE14_15 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL LT10_11 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL LT2_3 : std_logic;
SIGNAL LT6_7 : std_logic;
SIGNAL GT6_7 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL GT_15 : std_logic;
SIGNAL GT10_11 : std_logic;
SIGNAL GT_5 : std_logic;
SIGNAL GT12_13 : std_logic;
SIGNAL LT_9 : std_logic;
SIGNAL LTC : std_logic;
SIGNAL LTH : std_logic;
SIGNAL GTF : std_logic;
SIGNAL LTF : std_logic;
SIGNAL LTG : std_logic;
SIGNAL GTH : std_logic;
SIGNAL LTA : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL GT8_9 : std_logic;
SIGNAL GT_3 : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL GT_11 : std_logic;
SIGNAL LE12_13 : std_logic;
SIGNAL LT8_9 : std_logic;
SIGNAL EQ_15 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL GTB : std_logic;
SIGNAL GTD : std_logic;
SIGNAL GTC : std_logic;
SIGNAL GTG : std_logic;
SIGNAL LTD : std_logic;
SIGNAL LTB : std_logic;
SIGNAL GTE : std_logic;
SIGNAL LTE : std_logic;
SIGNAL GTA : std_logic;
SIGNAL EQ_7 : std_logic;
SIGNAL EQ_5 : std_logic;
SIGNAL EQ_9 : std_logic;
SIGNAL EQ_11 : std_logic;
SIGNAL EQ_13 : std_logic;
SIGNAL EQ_3 : std_logic;

-- GATE INSTANCES

BEGIN
U77 : AND2B1	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	O => GT_15
);
U13 : AND3B1	PORT MAP(
	I0 => B6, 
	I1 => EQ_7, 
	I2 => A6, 
	O => GE6_7
);
U14 : AND3B1	PORT MAP(
	I0 => A6, 
	I1 => EQ_7, 
	I2 => B6, 
	O => LE6_7
);
U78 : OR2	PORT MAP(
	I1 => LE12_13, 
	I0 => LT_13, 
	O => LT12_13
);
U15 : OR2	PORT MAP(
	I1 => GE6_7, 
	I0 => GT_7, 
	O => GT6_7
);
U79 : NOR2	PORT MAP(
	I1 => LTH, 
	I0 => GTH, 
	O => EQ14_15
);
U16 : OR2	PORT MAP(
	I1 => LE6_7, 
	I0 => LT_7, 
	O => LT6_7
);
U80 : AND2B1	PORT MAP(
	I0 => A11, 
	I1 => B11, 
	O => LT_11
);
U81 : OR2	PORT MAP(
	I1 => LE8_9, 
	I0 => LT_9, 
	O => LT8_9
);
U82 : AND2B1	PORT MAP(
	I0 => B11, 
	I1 => A11, 
	O => GT_11
);
U50 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT0_1
);
U51 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U83 : AND2B1	PORT MAP(
	I0 => A9, 
	I1 => B9, 
	O => LT_9
);
U52 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U84 : XNOR2	PORT MAP(
	I1 => B11, 
	I0 => A11, 
	O => EQ_11
);
U85 : AND2B1	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => GT_9
);
U86 : XNOR2	PORT MAP(
	I1 => B9, 
	I0 => A9, 
	O => EQ_9
);
U22 : AND2	PORT MAP(
	I0 => EQ8_15, 
	I1 => LT6_7, 
	O => LTD
);
U54 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U23 : AND2	PORT MAP(
	I0 => GT6_7, 
	I1 => EQ8_15, 
	O => GTD
);
U87 : AND3B1	PORT MAP(
	I0 => B10, 
	I1 => EQ_11, 
	I2 => A10, 
	O => GE10_11
);
U9 : AND2B1	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => LT_7
);
U88 : AND3B1	PORT MAP(
	I0 => A10, 
	I1 => EQ_11, 
	I2 => B10, 
	O => LE10_11
);
U24 : AND4	PORT MAP(
	I0 => GT2_3, 
	I1 => EQ4_5, 
	I2 => EQ6_7, 
	I3 => EQ8_15, 
	O => GTB
);
U25 : AND4	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => EQ4_5, 
	I3 => LT2_3, 
	O => LTB
);
U57 : AND3	PORT MAP(
	I0 => GT4_5, 
	I1 => EQ6_7, 
	I2 => EQ8_15, 
	O => GTC
);
U89 : AND3B1	PORT MAP(
	I0 => B8, 
	I1 => EQ_9, 
	I2 => A8, 
	O => GE8_9
);
U58 : AND3	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => LT4_5, 
	O => LTC
);
U59 : NOR2	PORT MAP(
	I1 => LT10_11, 
	I0 => GT10_11, 
	O => EQ10_11
);
U162 : AND4	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => EQ10_11, 
	I3 => EQ8_9, 
	O => EQ8_15
);
U100 : XNOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => EQ_5
);
U101 : AND3B1	PORT MAP(
	I0 => B4, 
	I1 => EQ_5, 
	I2 => A4, 
	O => GE4_5
);
U102 : AND3B1	PORT MAP(
	I0 => A4, 
	I1 => EQ_5, 
	I2 => B4, 
	O => LE4_5
);
U103 : OR2	PORT MAP(
	I1 => GE4_5, 
	I0 => GT_5, 
	O => GT4_5
);
U90 : AND3B1	PORT MAP(
	I0 => A8, 
	I1 => EQ_9, 
	I2 => B8, 
	O => LE8_9
);
U91 : OR2	PORT MAP(
	I1 => GE8_9, 
	I0 => GT_9, 
	O => GT8_9
);
U92 : OR2	PORT MAP(
	I1 => GE10_11, 
	I0 => GT_11, 
	O => GT10_11
);
U60 : AND3	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => LT10_11, 
	O => LTF
);
U93 : OR2	PORT MAP(
	I1 => LE10_11, 
	I0 => LT_11, 
	O => LT10_11
);
U61 : AND2	PORT MAP(
	I0 => GT12_13, 
	I1 => EQ14_15, 
	O => GTG
);
U62 : AND2	PORT MAP(
	I0 => EQ14_15, 
	I1 => LT12_13, 
	O => LTG
);
U94 : NOR2	PORT MAP(
	I1 => LT12_13, 
	I0 => GT12_13, 
	O => EQ12_13
);
U95 : AND2B1	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	O => LT_15
);
U63 : AND4	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => EQ10_11, 
	I3 => LT8_9, 
	O => LTE
);
U64 : AND4	PORT MAP(
	I0 => GT8_9, 
	I1 => EQ10_11, 
	I2 => EQ12_13, 
	I3 => EQ14_15, 
	O => GTE
);
U96 : NOR2	PORT MAP(
	I1 => LT4_5, 
	I0 => GT4_5, 
	O => EQ4_5
);
U65 : AND3	PORT MAP(
	I0 => GT10_11, 
	I1 => EQ12_13, 
	I2 => EQ14_15, 
	O => GTF
);
U97 : OR2	PORT MAP(
	I1 => LE4_5, 
	I0 => LT_5, 
	O => LT4_5
);
U66 : OR2	PORT MAP(
	I1 => LE14_15, 
	I0 => LT_15, 
	O => LTH
);
U98 : AND2B1	PORT MAP(
	I0 => A5, 
	I1 => B5, 
	O => LT_5
);
U99 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => GT_5
);
U67 : OR2	PORT MAP(
	I1 => GE14_15, 
	I0 => GT_15, 
	O => GTH
);
U35 : NOR2	PORT MAP(
	I1 => LT2_3, 
	I0 => GT2_3, 
	O => EQ2_3
);
U36 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => GT_3
);
U68 : OR2	PORT MAP(
	I1 => GE12_13, 
	I0 => GT_13, 
	O => GT12_13
);
U37 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U69 : AND3B1	PORT MAP(
	I0 => A12, 
	I1 => EQ_13, 
	I2 => B12, 
	O => LE12_13
);
U38 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => EQ_3
);
U39 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U111 : NOR2	PORT MAP(
	I1 => LT8_9, 
	I0 => GT8_9, 
	O => EQ8_9
);
U114 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => LT_3
);
U70 : AND3B1	PORT MAP(
	I0 => B12, 
	I1 => EQ_13, 
	I2 => A12, 
	O => GE12_13
);
U71 : AND3B1	PORT MAP(
	I0 => A14, 
	I1 => EQ_15, 
	I2 => B14, 
	O => LE14_15
);
U40 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => EQ_3, 
	I2 => A2, 
	O => GE2_3
);
U72 : AND3B1	PORT MAP(
	I0 => B14, 
	I1 => EQ_15, 
	I2 => A14, 
	O => GE14_15
);
U41 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => EQ_3, 
	I2 => B2, 
	O => LE2_3
);
U73 : XNOR2	PORT MAP(
	I1 => B13, 
	I0 => A13, 
	O => EQ_13
);
U10 : NOR2	PORT MAP(
	I1 => LT6_7, 
	I0 => GT6_7, 
	O => EQ6_7
);
U42 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT0_1
);
U74 : AND2B1	PORT MAP(
	I0 => B13, 
	I1 => A13, 
	O => GT_13
);
U43 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GT2_3
);
U11 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => GT_7
);
U75 : XNOR2	PORT MAP(
	I1 => B15, 
	I0 => A15, 
	O => EQ_15
);
U44 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LT2_3
);
U12 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => EQ_7
);
U76 : AND2B1	PORT MAP(
	I0 => A13, 
	I1 => B13, 
	O => LT_13
);
U55 : AND5	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	I2 => EQ4_5, 
	I3 => EQ6_7, 
	I4 => EQ8_15, 
	O => GTA
);
U124 : OR8	PORT MAP(
	I7 => LTA, 
	I6 => LTB, 
	I5 => LTC, 
	I4 => LTD, 
	I3 => LTE, 
	I2 => LTF, 
	I1 => LTG, 
	I0 => LTH, 
	O => LT
);
U125 : OR8	PORT MAP(
	I7 => GTE, 
	I6 => GTF, 
	I5 => GTG, 
	I4 => GTH, 
	I3 => GTA, 
	I2 => GTB, 
	I1 => GTC, 
	I0 => GTD, 
	O => GT
);
U53 : AND5	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => EQ4_5, 
	I3 => EQ2_3, 
	I4 => LT0_1, 
	O => LTA
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECODE64 IS PORT (
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
	A16 : IN std_logic;
	A17 : IN std_logic;
	A18 : IN std_logic;
	A19 : IN std_logic;
	A20 : IN std_logic;
	A21 : IN std_logic;
	A22 : IN std_logic;
	A23 : IN std_logic;
	A24 : IN std_logic;
	A25 : IN std_logic;
	A26 : IN std_logic;
	A27 : IN std_logic;
	A28 : IN std_logic;
	A29 : IN std_logic;
	A30 : IN std_logic;
	A31 : IN std_logic;
	A32 : IN std_logic;
	A33 : IN std_logic;
	A34 : IN std_logic;
	A35 : IN std_logic;
	A36 : IN std_logic;
	A37 : IN std_logic;
	A38 : IN std_logic;
	A39 : IN std_logic;
	A40 : IN std_logic;
	A41 : IN std_logic;
	A42 : IN std_logic;
	A43 : IN std_logic;
	A44 : IN std_logic;
	A45 : IN std_logic;
	A46 : IN std_logic;
	A47 : IN std_logic;
	A48 : IN std_logic;
	A49 : IN std_logic;
	A50 : IN std_logic;
	A51 : IN std_logic;
	A52 : IN std_logic;
	A53 : IN std_logic;
	A54 : IN std_logic;
	A55 : IN std_logic;
	A56 : IN std_logic;
	A57 : IN std_logic;
	A58 : IN std_logic;
	A59 : IN std_logic;
	A60 : IN std_logic;
	A61 : IN std_logic;
	A62 : IN std_logic;
	A63 : IN std_logic;
	O : OUT std_logic
); END DECODE64;



ARCHITECTURE STRUCTURE OF DECODE64 IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C_IN8 : std_logic;
SIGNAL C_IN7 : std_logic;
SIGNAL C_IN6 : std_logic;
SIGNAL C_IN13 : std_logic;
SIGNAL C_IN12 : std_logic;
SIGNAL C_IN9 : std_logic;
SIGNAL C_IN11 : std_logic;
SIGNAL C_IN1 : std_logic;
SIGNAL C_IN4 : std_logic;
SIGNAL C_IN14 : std_logic;
SIGNAL C_IN10 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S8 : std_logic;
SIGNAL S14 : std_logic;
SIGNAL S10 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL S15 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S11 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL C_IN5 : std_logic;
SIGNAL C_IN15 : std_logic;
SIGNAL C_IN3 : std_logic;
SIGNAL C_IN2 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL C_IN0 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL S12 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S9 : std_logic;
SIGNAL S13 : std_logic;

-- GATE INSTANCES

BEGIN
U308 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S10, 
	I1 => orcad_unused
);
U184 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S5, 
	I1 => orcad_unused
);
U185 : CY_MUX	PORT MAP(
	S => S4, 
	CI => C_IN4, 
	CO => C_IN5, 
	DI => N00068
);
U123 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C_IN1, 
	CO => C_IN2, 
	DI => N00068
);
U187 : AND4	PORT MAP(
	I0 => A16, 
	I1 => A17, 
	I2 => A18, 
	I3 => A19, 
	O => S4
);
U188 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S4, 
	I1 => orcad_unused
);
U125 : AND4	PORT MAP(
	I0 => A4, 
	I1 => A5, 
	I2 => A6, 
	I3 => A7, 
	O => S1
);
U189 : AND4	PORT MAP(
	I0 => A20, 
	I1 => A21, 
	I2 => A22, 
	I3 => A23, 
	O => S5
);
U127 : AND4	PORT MAP(
	I0 => A12, 
	I1 => A13, 
	I2 => A14, 
	I3 => A15, 
	O => S3
);
U128 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C_IN3, 
	CO => C_IN4, 
	DI => N00068
);
U129 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S2, 
	I1 => orcad_unused
);
U260 : AND4	PORT MAP(
	I0 => A40, 
	I1 => A41, 
	I2 => A42, 
	I3 => A43, 
	O => S10
);
U261 : AND4	PORT MAP(
	I0 => A44, 
	I1 => A45, 
	I2 => A46, 
	I3 => A47, 
	O => S11
);
U230 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S13, 
	I1 => orcad_unused
);
U262 : CY_MUX	PORT MAP(
	S => S9, 
	CI => C_IN9, 
	CO => C_IN10, 
	DI => N00069
);
U231 : CY_MUX	PORT MAP(
	S => S12, 
	CI => C_IN12, 
	CO => C_IN13, 
	DI => N00069
);
U264 : CY_MUX	PORT MAP(
	S => S11, 
	CI => C_IN11, 
	CO => C_IN12, 
	DI => N00069
);
U232 : AND4	PORT MAP(
	I0 => A48, 
	I1 => A49, 
	I2 => A50, 
	I3 => A51, 
	O => S12
);
U233 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S12, 
	I1 => orcad_unused
);
U265 : AND4	PORT MAP(
	I0 => A36, 
	I1 => A37, 
	I2 => A38, 
	I3 => A39, 
	O => S9
);
U266 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S8, 
	I1 => orcad_unused
);
U202 : AND4	PORT MAP(
	I0 => A28, 
	I1 => A29, 
	I2 => A30, 
	I3 => A31, 
	O => S7
);
U234 : AND4	PORT MAP(
	I0 => A52, 
	I1 => A53, 
	I2 => A54, 
	I3 => A55, 
	O => S13
);
U235 : CY_MUX	PORT MAP(
	S => S15, 
	CI => C_IN15, 
	CO => O, 
	DI => N00069
);
U203 : AND4	PORT MAP(
	I0 => A24, 
	I1 => A25, 
	I2 => A26, 
	I3 => A27, 
	O => S6
);
U268 : AND4	PORT MAP(
	I0 => A32, 
	I1 => A33, 
	I2 => A34, 
	I3 => A35, 
	O => S8
);
U237 : CY_MUX	PORT MAP(
	S => S13, 
	CI => C_IN13, 
	CO => C_IN14, 
	DI => N00069
);
U269 : GND	PORT MAP(
	G => N00069
);
U238 : AND4	PORT MAP(
	I0 => A60, 
	I1 => A61, 
	I2 => A62, 
	I3 => A63, 
	O => S15
);
U239 : AND4	PORT MAP(
	I0 => A56, 
	I1 => A57, 
	I2 => A58, 
	I3 => A59, 
	O => S14
);
U190 : CY_MUX	PORT MAP(
	S => S7, 
	CI => C_IN7, 
	CO => C_IN8, 
	DI => N00068
);
U193 : CY_MUX	PORT MAP(
	S => S5, 
	CI => C_IN5, 
	CO => C_IN6, 
	DI => N00068
);
U162 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S6, 
	I1 => orcad_unused
);
U163 : CY_MUX	PORT MAP(
	S => S6, 
	CI => C_IN6, 
	CO => C_IN7, 
	DI => N00068
);
U131 : AND4	PORT MAP(
	I0 => A8, 
	I1 => A9, 
	I2 => A10, 
	I3 => A11, 
	O => S2
);
U164 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S7, 
	I1 => orcad_unused
);
U101 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S0, 
	I1 => orcad_unused
);
U134 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C_IN2, 
	CO => C_IN3, 
	DI => N00068
);
U135 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S3, 
	I1 => orcad_unused
);
U271 : CY_MUX	PORT MAP(
	S => S8, 
	CI => C_IN8, 
	CO => C_IN9, 
	DI => N00069
);
U272 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S9, 
	I1 => orcad_unused
);
U92 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S1, 
	I1 => orcad_unused
);
U96 : CY_MUX	PORT MAP(
	S => S0, 
	CI => C_IN0, 
	CO => C_IN1, 
	DI => N00068
);
U97 : VCC	PORT MAP(
	P => N00182
);
U98 : GND	PORT MAP(
	G => N00068
);
U99 : AND4	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	O => S0
);
U285 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S11, 
	I1 => orcad_unused
);
U286 : CY_MUX	PORT MAP(
	S => S10, 
	CI => C_IN10, 
	CO => C_IN11, 
	DI => N00069
);
U223 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S14, 
	I1 => orcad_unused
);
U224 : CY_MUX	PORT MAP(
	S => S14, 
	CI => C_IN14, 
	CO => C_IN15, 
	DI => N00069
);
U225 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S15, 
	I1 => orcad_unused
);
U100 : CY_INIT	PORT MAP(
	COUT => C_IN0, 
	INIT => N00182
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FJKC IS PORT (
	J : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic;
	K : IN std_logic
); END FJKC;



ARCHITECTURE STRUCTURE OF FJKC IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL A2 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A1 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U37 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => A0
);
U40 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U41 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U43 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U32 : FDC	PORT MAP(
	D => AD, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IOPAD8 IS PORT (
	IO0 : INOUT std_logic;
	IO1 : INOUT std_logic;
	IO2 : INOUT std_logic;
	IO3 : INOUT std_logic;
	IO4 : INOUT std_logic;
	IO5 : INOUT std_logic;
	IO6 : INOUT std_logic;
	IO7 : INOUT std_logic
); END IOPAD8;



ARCHITECTURE STRUCTURE OF IOPAD8 IS

-- COMPONENTS

COMPONENT IOPAD
	PORT (
	IOPAD : INOUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : IOPAD	PORT MAP(
	IOPAD => IO4
);
U31 : IOPAD	PORT MAP(
	IOPAD => IO5
);
U32 : IOPAD	PORT MAP(
	IOPAD => IO6
);
U33 : IOPAD	PORT MAP(
	IOPAD => IO7
);
U34 : IOPAD	PORT MAP(
	IOPAD => IO3
);
U35 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U36 : IOPAD	PORT MAP(
	IOPAD => IO1
);
U37 : IOPAD	PORT MAP(
	IOPAD => IO0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M2_1B2 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END M2_1B2;



ARCHITECTURE STRUCTURE OF M2_1B2 IS

-- COMPONENTS

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M1 : std_logic;
SIGNAL M0 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2B2	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
);
U8 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U9 : AND2B1	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB16CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB16CE;



ARCHITECTURE STRUCTURE OF CB16CE IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00045 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00036 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00155;
TC<=N00166;
Q0<=N00045;
Q1<=N00057;
Q2<=N00073;
Q3<=N00090;
Q4<=N00100;
Q5<=N00116;
Q6<=N00134;
Q7<=N00154;
Q8<=N00036;
Q9<=N00052;
Q10<=N00069;
Q11<=N00088;
Q12<=N00101;
Q13<=N00117;
Q14<=N00135;
U15 : AND2	PORT MAP(
	I0 => N00100, 
	I1 => T4, 
	O => T5
);
U19 : AND3	PORT MAP(
	I0 => N00116, 
	I1 => N00100, 
	I2 => T4, 
	O => T6
);
U3 : AND3	PORT MAP(
	I0 => N00073, 
	I1 => N00057, 
	I2 => N00045, 
	O => T3
);
U4 : AND2	PORT MAP(
	I0 => N00057, 
	I1 => N00045, 
	O => T2
);
U21 : AND4	PORT MAP(
	I0 => N00134, 
	I1 => N00116, 
	I2 => N00100, 
	I3 => T4, 
	O => T7
);
U54 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00166, 
	O => CEO
);
U23 : AND2	PORT MAP(
	I0 => N00101, 
	I1 => T12, 
	O => T13
);
U9 : VCC	PORT MAP(
	P => N00046
);
U24 : AND3	PORT MAP(
	I0 => N00117, 
	I1 => N00101, 
	I2 => T12, 
	O => T14
);
U25 : AND4	PORT MAP(
	I0 => N00135, 
	I1 => N00117, 
	I2 => N00101, 
	I3 => T12, 
	O => T15
);
U26 : AND4	PORT MAP(
	I0 => N00069, 
	I1 => N00052, 
	I2 => N00036, 
	I3 => T8, 
	O => T11
);
U27 : AND3	PORT MAP(
	I0 => N00052, 
	I1 => N00036, 
	I2 => T8, 
	O => T10
);
U28 : AND2	PORT MAP(
	I0 => N00036, 
	I1 => T8, 
	O => T9
);
U10 : AND4	PORT MAP(
	I0 => N00090, 
	I1 => N00073, 
	I2 => N00057, 
	I3 => N00045, 
	O => T4
);
U22 : AND5	PORT MAP(
	I0 => N00155, 
	I1 => N00135, 
	I2 => N00117, 
	I3 => N00101, 
	I4 => T12, 
	O => N00166
);
U44 : FTCE	PORT MAP(
	T => T9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00052
);
U5 : FTCE	PORT MAP(
	T => N00045, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U14 : AND5	PORT MAP(
	I0 => N00154, 
	I1 => N00134, 
	I2 => N00116, 
	I3 => N00100, 
	I4 => T4, 
	O => T8
);
U6 : FTCE	PORT MAP(
	T => N00046, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00045
);
U7 : FTCE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00090
);
U48 : FTCE	PORT MAP(
	T => T10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00069
);
U49 : FTCE	PORT MAP(
	T => T11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00088
);
U8 : FTCE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00073
);
U16 : FTCE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00154
);
U17 : FTCE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00134
);
U29 : AND5	PORT MAP(
	I0 => N00088, 
	I1 => N00069, 
	I2 => N00052, 
	I3 => N00036, 
	I4 => T8, 
	O => T12
);
U18 : FTCE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00116
);
U50 : FTCE	PORT MAP(
	T => T12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00101
);
U51 : FTCE	PORT MAP(
	T => T13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00117
);
U52 : FTCE	PORT MAP(
	T => T14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00135
);
U53 : FTCE	PORT MAP(
	T => T15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00155
);
U20 : FTCE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00100
);
U43 : FTCE	PORT MAP(
	T => T8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00036
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB4RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB4RE;



ARCHITECTURE STRUCTURE OF CB4RE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTRSE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00046;
Q0<=N00012;
Q1<=N00020;
Q2<=N00029;
Q3<=N00039;
U58 : VCC	PORT MAP(
	P => N00014
);
U31 : AND4	PORT MAP(
	I0 => N00039, 
	I1 => N00029, 
	I2 => N00020, 
	I3 => N00012, 
	O => N00046
);
U32 : AND3	PORT MAP(
	I0 => N00029, 
	I1 => N00020, 
	I2 => N00012, 
	O => T3
);
U64 : GND	PORT MAP(
	G => N00013
);
U33 : AND2	PORT MAP(
	I0 => N00020, 
	I1 => N00012, 
	O => T2
);
U69 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00046, 
	O => CEO
);
U40 : FTRSE	PORT MAP(
	T => N00014, 
	CE => CE, 
	C => C, 
	S => N00013, 
	Q => N00012, 
	R => R
);
U41 : FTRSE	PORT MAP(
	T => N00012, 
	CE => CE, 
	C => C, 
	S => N00013, 
	Q => N00020, 
	R => R
);
U42 : FTRSE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	S => N00013, 
	Q => N00029, 
	R => R
);
U43 : FTRSE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	S => N00013, 
	Q => N00039, 
	R => R
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY D3_8E IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	E : IN std_logic;
	D0 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	D4 : OUT std_logic;
	D5 : OUT std_logic;
	D6 : OUT std_logic;
	D7 : OUT std_logic
); END D3_8E;



ARCHITECTURE STRUCTURE OF D3_8E IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : AND4	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D7
);
U31 : AND4B1	PORT MAP(
	I0 => A0, 
	I1 => A2, 
	I2 => A1, 
	I3 => E, 
	O => D6
);
U32 : AND4B1	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => A0, 
	I3 => E, 
	O => D5
);
U33 : AND4B2	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => A2, 
	I3 => E, 
	O => D4
);
U34 : AND4B1	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => E, 
	O => D3
);
U35 : AND4B2	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => E, 
	O => D2
);
U36 : AND4B2	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D1
);
U37 : AND4B3	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC_CC8 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	C_IN : IN std_logic;
	O : OUT std_logic
); END DEC_CC8;



ARCHITECTURE STRUCTURE OF DEC_CC8 IS

-- COMPONENTS

COMPONENT DEC_CC4	 PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	C_IN : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
U56 : DEC_CC4	PORT MAP(
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	C_IN => N00009, 
	O => O
);
U57 : DEC_CC4	PORT MAP(
	A0 => A4, 
	A1 => A5, 
	A2 => A6, 
	A3 => A7, 
	C_IN => C_IN, 
	O => N00009
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDC_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END FDC_1;



ARCHITECTURE STRUCTURE OF FDC_1 IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U30 : FDCE	PORT MAP(
	D => D, 
	CE => N00007, 
	C => CB, 
	CLR => CLR, 
	Q => Q
);
U37 : VCC	PORT MAP(
	P => N00007
);
U39 : INV	PORT MAP(
	O => CB, 
	I => C
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTSRLE IS PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END FTSRLE;



ARCHITECTURE STRUCTURE OF FTSRLE IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDSE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL CE_R_L : std_logic;
SIGNAL MD : std_logic;
SIGNAL MD_S : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U32 : XOR2	PORT MAP(
	I1 => N00007, 
	I0 => T, 
	O => TQ
);
U70 : OR3	PORT MAP(
	I2 => R, 
	I1 => L, 
	I0 => CE, 
	O => CE_R_L
);
U76 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => MD, 
	O => MD_S
);
U35 : FDSE	PORT MAP(
	D => MD_S, 
	CE => CE_R_L, 
	C => C, 
	S => S, 
	Q => N00007
);
U30 : M2_1	PORT MAP(
	D0 => TQ, 
	D1 => D, 
	S0 => L, 
	O => MD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IBUF4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END IBUF4;



ARCHITECTURE STRUCTURE OF IBUF4 IS

-- COMPONENTS

COMPONENT IBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U37 : IBUF	PORT MAP(
	O => O3, 
	I => I3
);
U38 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U39 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U40 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M2_1E IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END M2_1E;



ARCHITECTURE STRUCTURE OF M2_1E IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M0 : std_logic;
SIGNAL M1 : std_logic;

-- GATE INSTANCES

BEGIN
U30 : AND3	PORT MAP(
	I0 => D1, 
	I1 => E, 
	I2 => S0, 
	O => M1
);
U31 : AND3B1	PORT MAP(
	I0 => S0, 
	I1 => E, 
	I2 => D0, 
	O => M0
);
U38 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR16RLE IS PORT (
	SLI : IN std_logic;
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
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
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
); END SR16RLE;



ARCHITECTURE STRUCTURE OF SR16RLE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00073 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL L_OR_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00047;
Q1<=N00057;
Q2<=N00073;
Q3<=N00089;
Q4<=N00105;
Q5<=N00121;
Q6<=N00137;
Q7<=N00042;
Q8<=N00040;
Q9<=N00058;
Q10<=N00074;
Q11<=N00090;
Q12<=N00106;
Q13<=N00122;
Q14<=N00138;
U67 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U77 : FDRE	PORT MAP(
	D => MD10, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00074
);
U66 : FDRE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00047
);
U33 : FDRE	PORT MAP(
	D => MD6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00137
);
U44 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => D15, 
	S0 => L, 
	O => MD15
);
U34 : FDRE	PORT MAP(
	D => MD7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00042
);
U78 : FDRE	PORT MAP(
	D => MD8, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00040
);
U45 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => D14, 
	S0 => L, 
	O => MD14
);
U46 : FDRE	PORT MAP(
	D => MD4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00105
);
U35 : FDRE	PORT MAP(
	D => MD12, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00106
);
U79 : FDRE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00073
);
U68 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D10, 
	S0 => L, 
	O => MD10
);
U47 : FDRE	PORT MAP(
	D => MD13, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00122
);
U36 : FDRE	PORT MAP(
	D => MD14, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00138
);
U69 : M2_1	PORT MAP(
	D0 => N00074, 
	D1 => D11, 
	S0 => L, 
	O => MD11
);
U37 : FDRE	PORT MAP(
	D => MD15, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U38 : M2_1	PORT MAP(
	D0 => N00089, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U39 : M2_1	PORT MAP(
	D0 => N00105, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U80 : FDRE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00057
);
U70 : M2_1	PORT MAP(
	D0 => N00040, 
	D1 => D9, 
	S0 => L, 
	O => MD9
);
U81 : FDRE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00089
);
U71 : M2_1	PORT MAP(
	D0 => N00042, 
	D1 => D8, 
	S0 => L, 
	O => MD8
);
U72 : M2_1	PORT MAP(
	D0 => N00073, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U73 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U40 : M2_1	PORT MAP(
	D0 => N00121, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U41 : M2_1	PORT MAP(
	D0 => N00137, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U74 : M2_1	PORT MAP(
	D0 => N00047, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U75 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U42 : M2_1	PORT MAP(
	D0 => N00090, 
	D1 => D12, 
	S0 => L, 
	O => MD12
);
U32 : FDRE	PORT MAP(
	D => MD5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00121
);
U76 : FDRE	PORT MAP(
	D => MD11, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00090
);
U65 : FDRE	PORT MAP(
	D => MD9, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00058
);
U43 : M2_1	PORT MAP(
	D0 => N00106, 
	D1 => D13, 
	S0 => L, 
	O => MD13
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_154 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	G1 : IN std_logic;
	G2 : IN std_logic;
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
	Y15 : OUT std_logic
); END X74_154;



ARCHITECTURE STRUCTURE OF X74_154 IS

-- COMPONENTS

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5B2	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT NAND5B4	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT NAND5B1	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT NAND5B3	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT NAND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
U140 : NOR2	PORT MAP(
	I1 => G1, 
	I0 => G2, 
	O => N00020
);
U124 : NAND5B2	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => N00020, 
	I3 => C, 
	I4 => A, 
	O => Y5
);
U125 : NAND5B2	PORT MAP(
	I0 => D, 
	I1 => A, 
	I2 => N00020, 
	I3 => C, 
	I4 => B, 
	O => Y6
);
U126 : NAND5B2	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => N00020, 
	I3 => D, 
	I4 => C, 
	O => Y12
);
U127 : NAND5B2	PORT MAP(
	I0 => A, 
	I1 => C, 
	I2 => N00020, 
	I3 => D, 
	I4 => B, 
	O => Y10
);
U128 : NAND5B2	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => N00020, 
	I3 => D, 
	I4 => A, 
	O => Y9
);
U118 : NAND5B4	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00020, 
	O => Y0
);
U129 : NAND5B1	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00020, 
	O => Y7
);
U119 : NAND5B3	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => D, 
	I3 => A, 
	I4 => N00020, 
	O => Y1
);
U130 : NAND5B1	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => C, 
	I3 => D, 
	I4 => N00020, 
	O => Y14
);
U131 : NAND5B1	PORT MAP(
	I0 => B, 
	I1 => A, 
	I2 => C, 
	I3 => D, 
	I4 => N00020, 
	O => Y13
);
U120 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => D, 
	I2 => C, 
	I3 => B, 
	I4 => N00020, 
	O => Y2
);
U121 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => D, 
	I3 => C, 
	I4 => N00020, 
	O => Y4
);
U132 : NAND5B1	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => D, 
	I4 => N00020, 
	O => Y11
);
U122 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => C, 
	I3 => D, 
	I4 => N00020, 
	O => Y8
);
U133 : NAND5	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00020, 
	O => Y15
);
U123 : NAND5B2	PORT MAP(
	I0 => C, 
	I1 => D, 
	I2 => N00020, 
	I3 => A, 
	I4 => B, 
	O => Y3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_352 IS PORT (
	I1C0 : IN std_logic;
	I1C1 : IN std_logic;
	I1C2 : IN std_logic;
	I1C3 : IN std_logic;
	I2C0 : IN std_logic;
	I2C1 : IN std_logic;
	I2C2 : IN std_logic;
	I2C3 : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	G1 : IN std_logic;
	G2 : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic
); END X74_352;



ARCHITECTURE STRUCTURE OF X74_352 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M1C23 : std_logic;
SIGNAL Y2B : std_logic;
SIGNAL M2C01 : std_logic;
SIGNAL G1B : std_logic;
SIGNAL G2B : std_logic;
SIGNAL M2C23 : std_logic;
SIGNAL M1C01 : std_logic;
SIGNAL Y1B : std_logic;

-- GATE INSTANCES

BEGIN
U82 : INV	PORT MAP(
	O => G1B, 
	I => G1
);
U83 : INV	PORT MAP(
	O => G2B, 
	I => G2
);
U74 : INV	PORT MAP(
	O => Y1, 
	I => Y1B
);
U75 : INV	PORT MAP(
	O => Y2, 
	I => Y2B
);
U46 : M2_1E	PORT MAP(
	D0 => M2C01, 
	D1 => M2C23, 
	S0 => B, 
	O => Y2B, 
	E => G2B
);
U47 : M2_1	PORT MAP(
	D0 => I2C2, 
	D1 => I2C3, 
	S0 => A, 
	O => M2C23
);
U48 : M2_1	PORT MAP(
	D0 => I2C0, 
	D1 => I2C1, 
	S0 => A, 
	O => M2C01
);
U38 : M2_1	PORT MAP(
	D0 => I1C0, 
	D1 => I1C1, 
	S0 => A, 
	O => M1C01
);
U39 : M2_1	PORT MAP(
	D0 => I1C2, 
	D1 => I1C3, 
	S0 => A, 
	O => M1C23
);
U31 : M2_1E	PORT MAP(
	D0 => M1C01, 
	D1 => M1C23, 
	S0 => B, 
	O => Y1B, 
	E => G1B
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XNOR8 IS PORT (
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XNOR8;



ARCHITECTURE STRUCTURE OF XNOR8 IS

-- COMPONENTS

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : XNOR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : XOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ADSU4 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END ADSU4;



ARCHITECTURE STRUCTURE OF ADSU4 IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I2 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL I3 : std_logic;
SIGNAL SUB : std_logic;
SIGNAL I0 : std_logic;

-- GATE INSTANCES

BEGIN
S1<=N00064;
S2<=N00049;
S3<=N00034;
CO<=N00025;
S0<=N00080;
U182 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U189 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I2, 
	O => N00049, 
	I1 => C1
);
U50 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B0, 
	I0 => A0, 
	O => I0
);
U55 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C0, 
	CO => C1, 
	DI => A1
);
U205 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I3, 
	O => N00034, 
	I1 => C2
);
U56 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B2, 
	I0 => A2, 
	O => I2
);
U206 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U57 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B3, 
	I0 => A3, 
	O => I3
);
U58 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C2, 
	CO => N00025, 
	DI => A3
);
U190 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I1, 
	O => N00064, 
	I1 => C0
);
U191 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I0, 
	O => N00080, 
	I1 => C_IN
);
U100 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B1, 
	I0 => A1, 
	O => I1
);
U241 : XOR2	PORT MAP(
	I1 => N00025, 
	I0 => C2, 
	O => OFL
);
U62 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C1, 
	CO => C2, 
	DI => A2
);
U111 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C_IN, 
	CO => C0, 
	DI => A0
);
U175 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U112 : INV	PORT MAP(
	O => SUB, 
	I => ADD
);
U178 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U73 : XOR2	PORT MAP(
	I1 => C_IN, 
	I0 => I0, 
	O => N00080
);
U74 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => I1, 
	O => N00064
);
U75 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => I3, 
	O => N00034
);
U76 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => I2, 
	O => N00049
);
U61 : CY_INIT	PORT MAP(
	COUT => C_IN, 
	INIT => CI
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CJ4CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END CJ4CE;



ARCHITECTURE STRUCTURE OF CJ4CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL Q3B : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00014;
Q2<=N00019;
Q3<=N00007;
U46 : FDCE	PORT MAP(
	D => N00009, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U47 : FDCE	PORT MAP(
	D => Q3B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00009
);
U33 : FDCE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U34 : INV	PORT MAP(
	O => Q3B, 
	I => N00007
);
U44 : FDCE	PORT MAP(
	D => N00014, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP3B1A IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3B1A;



ARCHITECTURE STRUCTURE OF SOP3B1A IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1 : std_logic;

-- GATE INSTANCES

BEGIN
U31 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
);
U32 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I0B1, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP3B2B IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3B2B;



ARCHITECTURE STRUCTURE OF SOP3B2B IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B1
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1 : std_logic;

-- GATE INSTANCES

BEGIN
U31 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
);
U32 : OR2B1	PORT MAP(
	I1 => I0B1, 
	I0 => I2, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP4B4 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4B4;



ARCHITECTURE STRUCTURE OF SOP4B4 IS

-- COMPONENTS

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I2B3B : std_logic;
SIGNAL I0B1B : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2B2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3B
);
U8 : OR2	PORT MAP(
	I1 => I2B3B, 
	I0 => I0B1B, 
	O => O
);
U9 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR4RLE IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END SR4RLE;



ARCHITECTURE STRUCTURE OF SR4RLE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL L_OR_CE : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL MD0 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00023;
Q2<=N00031;
U51 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U44 : FDRE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00023
);
U45 : FDRE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U46 : FDRE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U47 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U48 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U49 : M2_1	PORT MAP(
	D0 => N00023, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U50 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U53 : FDRE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00014
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_165S IS PORT (
	SI : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	S_L : IN std_logic;
	CE : IN std_logic;
	CK : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	QE : OUT std_logic;
	QF : OUT std_logic;
	QG : OUT std_logic;
	QH : OUT std_logic
); END X74_165S;



ARCHITECTURE STRUCTURE OF X74_165S IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B1
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MD2 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL MDF : std_logic;
SIGNAL MDA : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL MDE : std_logic;
SIGNAL MDB : std_logic;
SIGNAL MDD : std_logic;
SIGNAL MDG : std_logic;
SIGNAL MDH : std_logic;
SIGNAL L_OR_CE : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00023;
QB<=N00032;
QC<=N00040;
QD<=N00048;
QE<=N00056;
QF<=N00064;
QG<=N00072;
U13 : FDCE	PORT MAP(
	D => MDH, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => QH
);
U17 : FDCE	PORT MAP(
	D => MDF, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00064
);
U2 : GND	PORT MAP(
	G => N00031
);
U3 : FDCE	PORT MAP(
	D => MDA, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00023
);
U4 : OR2B1	PORT MAP(
	I1 => CE, 
	I0 => S_L, 
	O => L_OR_CE
);
U8 : FDCE	PORT MAP(
	D => MDD, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00048
);
U9 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00040
);
U10 : FDCE	PORT MAP(
	D => MDB, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00032
);
U11 : FDCE	PORT MAP(
	D => MDE, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00056
);
U12 : FDCE	PORT MAP(
	D => MDG, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00072
);
U5 : M2_1	PORT MAP(
	D0 => C, 
	D1 => N00032, 
	S0 => S_L, 
	O => MD2
);
U14 : M2_1	PORT MAP(
	D0 => F, 
	D1 => N00056, 
	S0 => S_L, 
	O => MDF
);
U6 : M2_1	PORT MAP(
	D0 => B, 
	D1 => N00023, 
	S0 => S_L, 
	O => MDB
);
U48 : M2_1	PORT MAP(
	D0 => D, 
	D1 => N00040, 
	S0 => S_L, 
	O => MDD
);
U15 : M2_1	PORT MAP(
	D0 => H, 
	D1 => N00072, 
	S0 => S_L, 
	O => MDH
);
U7 : M2_1	PORT MAP(
	D0 => A, 
	D1 => SI, 
	S0 => S_L, 
	O => MDA
);
U16 : M2_1	PORT MAP(
	D0 => G, 
	D1 => N00064, 
	S0 => S_L, 
	O => MDG
);
U49 : M2_1	PORT MAP(
	D0 => E, 
	D1 => N00048, 
	S0 => S_L, 
	O => MDE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BRLSHFT4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END BRLSHFT4;



ARCHITECTURE STRUCTURE OF BRLSHFT4 IS

-- COMPONENTS

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M30 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M12 : std_logic;

-- GATE INSTANCES

BEGIN
U55 : M2_1	PORT MAP(
	D0 => M12, 
	D1 => M30, 
	S0 => S1, 
	O => O1
);
U56 : M2_1	PORT MAP(
	D0 => I2, 
	D1 => I3, 
	S0 => S0, 
	O => M23
);
U57 : M2_1	PORT MAP(
	D0 => I3, 
	D1 => I0, 
	S0 => S0, 
	O => M30
);
U58 : M2_1	PORT MAP(
	D0 => I1, 
	D1 => I2, 
	S0 => S0, 
	O => M12
);
U59 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => O0
);
U60 : M2_1	PORT MAP(
	D0 => M30, 
	D1 => M12, 
	S0 => S1, 
	O => O3
);
U63 : M2_1	PORT MAP(
	D0 => I0, 
	D1 => I1, 
	S0 => S0, 
	O => M01
);
U54 : M2_1	PORT MAP(
	D0 => M23, 
	D1 => M01, 
	S0 => S1, 
	O => O2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFE16 IS PORT (
	E : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END BUFE16;



ARCHITECTURE STRUCTURE OF BUFE16 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U45 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U30 : BUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
U31 : BUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
U32 : BUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
U33 : BUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
);
U34 : BUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
);
U66 : INV	PORT MAP(
	O => T, 
	I => E
);
U35 : BUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
U36 : BUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
U37 : BUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
U38 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U39 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U40 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U41 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U42 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U43 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U44 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFT8 IS PORT (
	T : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END BUFT8;



ARCHITECTURE STRUCTURE OF BUFT8 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U31 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U32 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U33 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U34 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U35 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U36 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U37 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDT_1 IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END OFDT_1;



ARCHITECTURE STRUCTURE OF OFDT_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U20 : INV	PORT MAP(
	O => CB, 
	I => C
);
U15 : OFDT	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY READBACK IS PORT (
	CLK : IN std_logic;
	TRIG : IN std_logic;
	DATA : OUT std_logic;
	RIP : OUT std_logic
); END READBACK;



ARCHITECTURE STRUCTURE OF READBACK IS

-- COMPONENTS

COMPONENT RDBK
	PORT (
	DATA : OUT std_logic;
	RIP : OUT std_logic;
	TRIG : IN std_logic
	); END COMPONENT;

COMPONENT RDCLK
	PORT (
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U72 : RDBK	PORT MAP(
	DATA => DATA, 
	RIP => RIP, 
	TRIG => TRIG
);
U73 : RDCLK	PORT MAP(
	I => CLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CR16CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
); END CR16CE;



ARCHITECTURE STRUCTURE OF CR16CE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE_1	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00084 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ2 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00121;
Q0<=N00034;
Q1<=N00048;
Q2<=N00060;
Q3<=N00072;
Q4<=N00084;
Q5<=N00096;
Q6<=N00108;
Q7<=N00045;
Q8<=N00035;
Q9<=N00049;
Q10<=N00061;
Q11<=N00073;
Q12<=N00085;
Q13<=N00097;
Q14<=N00109;
U84 : INV	PORT MAP(
	O => TQ0, 
	I => N00034
);
U54 : INV	PORT MAP(
	O => TQ4, 
	I => N00084
);
U55 : INV	PORT MAP(
	O => TQ12, 
	I => N00085
);
U56 : INV	PORT MAP(
	O => TQ13, 
	I => N00097
);
U57 : INV	PORT MAP(
	O => TQ14, 
	I => N00109
);
U58 : INV	PORT MAP(
	O => TQ15, 
	I => N00121
);
U59 : INV	PORT MAP(
	O => TQ7, 
	I => N00045
);
U60 : INV	PORT MAP(
	O => TQ6, 
	I => N00108
);
U61 : INV	PORT MAP(
	O => TQ5, 
	I => N00096
);
U62 : INV	PORT MAP(
	O => TQ1, 
	I => N00048
);
U63 : INV	PORT MAP(
	O => TQ2, 
	I => N00060
);
U64 : INV	PORT MAP(
	O => TQ3, 
	I => N00072
);
U65 : INV	PORT MAP(
	O => TQ11, 
	I => N00073
);
U66 : INV	PORT MAP(
	O => TQ10, 
	I => N00061
);
U67 : INV	PORT MAP(
	O => TQ9, 
	I => N00049
);
U68 : INV	PORT MAP(
	O => TQ8, 
	I => N00035
);
U88 : FDCE_1	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => N00108, 
	CLR => CLR, 
	Q => N00045
);
U89 : FDCE_1	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => N00084, 
	CLR => CLR, 
	Q => N00096
);
U69 : FDCE_1	PORT MAP(
	D => TQ8, 
	CE => CE, 
	C => N00045, 
	CLR => CLR, 
	Q => N00035
);
U90 : FDCE_1	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => N00072, 
	CLR => CLR, 
	Q => N00084
);
U91 : FDCE_1	PORT MAP(
	D => TQ14, 
	CE => CE, 
	C => N00097, 
	CLR => CLR, 
	Q => N00109
);
U92 : FDCE_1	PORT MAP(
	D => TQ15, 
	CE => CE, 
	C => N00109, 
	CLR => CLR, 
	Q => N00121
);
U70 : FDCE_1	PORT MAP(
	D => TQ9, 
	CE => CE, 
	C => N00035, 
	CLR => CLR, 
	Q => N00049
);
U71 : FDCE_1	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => N00034, 
	CLR => CLR, 
	Q => N00048
);
U93 : FDCE_1	PORT MAP(
	D => TQ13, 
	CE => CE, 
	C => N00085, 
	CLR => CLR, 
	Q => N00097
);
U72 : FDCE_1	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00034
);
U94 : FDCE_1	PORT MAP(
	D => TQ12, 
	CE => CE, 
	C => N00073, 
	CLR => CLR, 
	Q => N00085
);
U73 : FDCE_1	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => N00048, 
	CLR => CLR, 
	Q => N00060
);
U95 : FDCE_1	PORT MAP(
	D => TQ11, 
	CE => CE, 
	C => N00061, 
	CLR => CLR, 
	Q => N00073
);
U96 : FDCE_1	PORT MAP(
	D => TQ10, 
	CE => CE, 
	C => N00049, 
	CLR => CLR, 
	Q => N00061
);
U74 : FDCE_1	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => N00060, 
	CLR => CLR, 
	Q => N00072
);
U87 : FDCE_1	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => N00096, 
	CLR => CLR, 
	Q => N00108
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD16CE IS PORT (
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
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
); END FD16CE;



ARCHITECTURE STRUCTURE OF FD16CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : FDCE	PORT MAP(
	D => D15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U30 : FDCE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q5
);
U31 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
);
U32 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U33 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U34 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U35 : FDCE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q4
);
U36 : FDCE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q6
);
U37 : FDCE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U38 : FDCE	PORT MAP(
	D => D8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q8
);
U39 : FDCE	PORT MAP(
	D => D9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q9
);
U40 : FDCE	PORT MAP(
	D => D10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q10
);
U41 : FDCE	PORT MAP(
	D => D11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q11
);
U42 : FDCE	PORT MAP(
	D => D12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q12
);
U43 : FDCE	PORT MAP(
	D => D13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q13
);
U44 : FDCE	PORT MAP(
	D => D14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q14
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD4CE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END FD4CE;



ARCHITECTURE STRUCTURE OF FD4CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U37 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U38 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U39 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
);
U40 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDCE_1 IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END FDCE_1;



ARCHITECTURE STRUCTURE OF FDCE_1 IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U30 : FDCE	PORT MAP(
	D => D, 
	CE => CE, 
	C => CB, 
	CLR => CLR, 
	Q => Q
);
U39 : INV	PORT MAP(
	O => CB, 
	I => C
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FJKCE IS PORT (
	J : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic;
	K : IN std_logic
); END FJKCE;



ARCHITECTURE STRUCTURE OF FJKCE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AD : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL A2 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U32 : FDCE	PORT MAP(
	D => AD, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U37 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => A0
);
U40 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U41 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U43 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTSRE IS PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END FTSRE;



ARCHITECTURE STRUCTURE OF FTSRE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDSE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL TQ : std_logic;
SIGNAL CE_R : std_logic;
SIGNAL D_R : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U77 : OR2	PORT MAP(
	I1 => R, 
	I0 => CE, 
	O => CE_R
);
U32 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U73 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => TQ, 
	O => D_R
);
U35 : FDSE	PORT MAP(
	D => D_R, 
	CE => CE_R, 
	C => C, 
	S => S, 
	Q => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY INV4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END INV4;



ARCHITECTURE STRUCTURE OF INV4 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U37 : INV	PORT MAP(
	O => O3, 
	I => I3
);
U38 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U39 : INV	PORT MAP(
	O => O1, 
	I => I1
);
U40 : INV	PORT MAP(
	O => O0, 
	I => I0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND5B5 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END NAND5B5;



ARCHITECTURE STRUCTURE OF NAND5B5 IS

-- COMPONENTS

COMPONENT NAND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NAND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3B3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M2_1B1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END M2_1B1;



ARCHITECTURE STRUCTURE OF M2_1B1 IS

-- COMPONENTS

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M1 : std_logic;
SIGNAL M0 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2B2	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
);
U8 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U9 : AND2	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND12 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	O : OUT std_logic
); END NAND12;



ARCHITECTURE STRUCTURE OF NAND12 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00025 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : AND4	PORT MAP(
	I0 => I8, 
	I1 => I9, 
	I2 => I10, 
	I3 => I11, 
	O => S2
);
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00025
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00025
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U109 : GND	PORT MAP(
	G => N00050
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U174 : VCC	PORT MAP(
	P => N00025
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00025
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00050
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND9 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	O : OUT std_logic
); END NAND9;



ARCHITECTURE STRUCTURE OF NAND9 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S1 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;

-- GATE INSTANCES

BEGIN
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00019
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00019
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U172 : BUF	PORT MAP(
	O => S2, 
	I => I8
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S2, 
	I1 => I8
);
U177 : GND	PORT MAP(
	G => N00044
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00019
);
U179 : VCC	PORT MAP(
	P => N00019
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00044
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUF4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END OBUF4;



ARCHITECTURE STRUCTURE OF OBUF4 IS

-- COMPONENTS

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U31 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U32 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U33 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFE IS PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END OBUFE;



ARCHITECTURE STRUCTURE OF OBUFE IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U10 : OBUFT	PORT MAP(
	T => T, 
	I => I, 
	O => O
);
U12 : INV	PORT MAP(
	O => T, 
	I => E
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFT8 IS PORT (
	T : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END OBUFT8;



ARCHITECTURE STRUCTURE OF OBUFT8 IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U31 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U32 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U33 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U34 : OBUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U35 : OBUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U36 : OBUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U37 : OBUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDT16 IS PORT (
	T : IN std_logic;
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
	C : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END OFDT16;



ARCHITECTURE STRUCTURE OF OFDT16 IS

-- COMPONENTS

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U55 : OFDT	PORT MAP(
	T => T, 
	D => D5, 
	C => C, 
	O => O5
);
U56 : OFDT	PORT MAP(
	T => T, 
	D => D6, 
	C => C, 
	O => O6
);
U57 : OFDT	PORT MAP(
	T => T, 
	D => D7, 
	C => C, 
	O => O7
);
U58 : OFDT	PORT MAP(
	T => T, 
	D => D15, 
	C => C, 
	O => O15
);
U59 : OFDT	PORT MAP(
	T => T, 
	D => D14, 
	C => C, 
	O => O14
);
U60 : OFDT	PORT MAP(
	T => T, 
	D => D13, 
	C => C, 
	O => O13
);
U61 : OFDT	PORT MAP(
	T => T, 
	D => D12, 
	C => C, 
	O => O12
);
U50 : OFDT	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2
);
U51 : OFDT	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1
);
U62 : OFDT	PORT MAP(
	T => T, 
	D => D11, 
	C => C, 
	O => O11
);
U52 : OFDT	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0
);
U63 : OFDT	PORT MAP(
	T => T, 
	D => D10, 
	C => C, 
	O => O10
);
U64 : OFDT	PORT MAP(
	T => T, 
	D => D9, 
	C => C, 
	O => O9
);
U53 : OFDT	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3
);
U54 : OFDT	PORT MAP(
	T => T, 
	D => D4, 
	C => C, 
	O => O4
);
U65 : OFDT	PORT MAP(
	T => T, 
	D => D8, 
	C => C, 
	O => O8
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP3B2A IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3B2A;



ARCHITECTURE STRUCTURE OF SOP3B2A IS

-- COMPONENTS

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1B : std_logic;

-- GATE INSTANCES

BEGIN
U31 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
U32 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I0B1B, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP4B2B IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4B2B;



ARCHITECTURE STRUCTURE OF SOP4B2B IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1 : std_logic;
SIGNAL I2B3 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3
);
U8 : OR2	PORT MAP(
	I1 => I2B3, 
	I0 => I0B1, 
	O => O
);
U9 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP4B3 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4B3;



ARCHITECTURE STRUCTURE OF SOP4B3 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I2B3 : std_logic;
SIGNAL I0B1B : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3
);
U8 : OR2	PORT MAP(
	I1 => I2B3, 
	I0 => I0B1B, 
	O => O
);
U9 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR4CE IS PORT (
	SLI : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END SR4CE;



ARCHITECTURE STRUCTURE OF SR4CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00013 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00006;
Q1<=N00013;
Q2<=N00018;
U35 : FDCE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U36 : FDCE	PORT MAP(
	D => N00006, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
U37 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00006
);
U38 : FDCE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR4RLED IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	SRI : IN std_logic;
	L : IN std_logic;
	LEFT : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END SR4RLED;



ARCHITECTURE STRUCTURE OF SR4RLED IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDR2 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDR1 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00019;
Q1<=N00020;
Q2<=N00032;
Q3<=N00043;
U77 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U110 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U66 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U67 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00020
);
U78 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U68 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00032
);
U79 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U69 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00043
);
U80 : M2_1	PORT MAP(
	D0 => N00020, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U72 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U73 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U74 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U75 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U76 : M2_1	PORT MAP(
	D0 => N00020, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND12 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	O : OUT std_logic
); END AND12;



ARCHITECTURE STRUCTURE OF AND12 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S2 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S0 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : AND4	PORT MAP(
	I0 => I8, 
	I1 => I9, 
	I2 => I10, 
	I3 => I11, 
	O => S2
);
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00025
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00025
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00050
);
U109 : GND	PORT MAP(
	G => N00025
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00025
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00050
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMPM2 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	GT : OUT std_logic;
	LT : OUT std_logic
); END COMPM2;



ARCHITECTURE STRUCTURE OF COMPM2 IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GT_1 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL LE0_1 : std_logic;

-- GATE INSTANCES

BEGIN
U45 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT
);
U46 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT
);
U30 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U41 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U42 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U43 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U44 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_164 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	QE : OUT std_logic;
	QF : OUT std_logic;
	QG : OUT std_logic;
	QH : OUT std_logic
); END X74_164;



ARCHITECTURE STRUCTURE OF X74_164 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL SLI : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00016;
QB<=N00021;
QC<=N00026;
QD<=N00031;
QE<=N00036;
QF<=N00041;
QG<=N00046;
U45 : AND2	PORT MAP(
	I0 => B, 
	I1 => A, 
	O => SLI
);
U53 : VCC	PORT MAP(
	P => N00017
);
U33 : FDCE	PORT MAP(
	D => N00046, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => QH
);
U34 : FDCE	PORT MAP(
	D => N00026, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00031
);
U37 : FDCE	PORT MAP(
	D => N00036, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00041
);
U69 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U38 : FDCE	PORT MAP(
	D => N00031, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00036
);
U39 : FDCE	PORT MAP(
	D => N00016, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00021
);
U40 : FDCE	PORT MAP(
	D => SLI, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00016
);
U41 : FDCE	PORT MAP(
	D => N00021, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00026
);
U42 : FDCE	PORT MAP(
	D => N00041, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00046
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XNOR7 IS PORT (
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XNOR7;



ARCHITECTURE STRUCTURE OF XNOR7 IS

-- COMPONENTS

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I46 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : XNOR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTCLE IS PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END FTCLE;



ARCHITECTURE STRUCTURE OF FTCLE IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL L_CE : std_logic;
SIGNAL MD : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL TQ : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U32 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U35 : FDCE	PORT MAP(
	D => MD, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00006
);
U71 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => L_CE
);
U30 : M2_1	PORT MAP(
	D0 => TQ, 
	D1 => D, 
	S0 => L, 
	O => MD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IPAD8 IS PORT (
	I0 : OUT std_logic;
	I1 : OUT std_logic;
	I2 : OUT std_logic;
	I3 : OUT std_logic;
	I4 : OUT std_logic;
	I5 : OUT std_logic;
	I6 : OUT std_logic;
	I7 : OUT std_logic
); END IPAD8;



ARCHITECTURE STRUCTURE OF IPAD8 IS

-- COMPONENTS

COMPONENT IPAD
	PORT (
	IPAD : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : IPAD	PORT MAP(
	IPAD => I0
);
U2 : IPAD	PORT MAP(
	IPAD => I1
);
U3 : IPAD	PORT MAP(
	IPAD => I2
);
U4 : IPAD	PORT MAP(
	IPAD => I3
);
U5 : IPAD	PORT MAP(
	IPAD => I4
);
U6 : IPAD	PORT MAP(
	IPAD => I5
);
U7 : IPAD	PORT MAP(
	IPAD => I6
);
U8 : IPAD	PORT MAP(
	IPAD => I7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LDC_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END LDC_1;



ARCHITECTURE STRUCTURE OF LDC_1 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
U37 : VCC	PORT MAP(
	P => N00007
);
U39 : INV	PORT MAP(
	O => GB, 
	I => G
);
U40 : LDCE	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q, 
	CLR => CLR, 
	GE => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M2_1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END M2_1;



ARCHITECTURE STRUCTURE OF M2_1 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M0 : std_logic;
SIGNAL M1 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2B1	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
);
U8 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U9 : AND2	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY D4_16E IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	E : IN std_logic;
	D0 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	D4 : OUT std_logic;
	D5 : OUT std_logic;
	D6 : OUT std_logic;
	D7 : OUT std_logic;
	D8 : OUT std_logic;
	D9 : OUT std_logic;
	D10 : OUT std_logic;
	D11 : OUT std_logic;
	D12 : OUT std_logic;
	D13 : OUT std_logic;
	D14 : OUT std_logic;
	D15 : OUT std_logic
); END D4_16E;



ARCHITECTURE STRUCTURE OF D4_16E IS

-- COMPONENTS

COMPONENT AND5B2	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B3	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B1	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B4	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U55 : AND5B2	PORT MAP(
	I0 => A0, 
	I1 => A2, 
	I2 => E, 
	I3 => A3, 
	I4 => A1, 
	O => D10
);
U66 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A3, 
	I2 => A2, 
	I3 => A1, 
	I4 => E, 
	O => D2
);
U56 : AND5B1	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => A3, 
	I4 => E, 
	O => D11
);
U67 : AND5B3	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => A3, 
	I3 => A0, 
	I4 => E, 
	O => D1
);
U57 : AND5B2	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	I3 => A3, 
	I4 => A2, 
	O => D12
);
U68 : AND5B4	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D0
);
U58 : AND5B1	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D13
);
U59 : AND5B1	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D14
);
U60 : AND5	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D15
);
U61 : AND5B2	PORT MAP(
	I0 => A3, 
	I1 => A0, 
	I2 => E, 
	I3 => A2, 
	I4 => A1, 
	O => D6
);
U62 : AND5B1	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D7
);
U63 : AND5B2	PORT MAP(
	I0 => A3, 
	I1 => A1, 
	I2 => E, 
	I3 => A2, 
	I4 => A0, 
	O => D5
);
U64 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A3, 
	I3 => A2, 
	I4 => E, 
	O => D4
);
U53 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D8
);
U54 : AND5B2	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => E, 
	I3 => A3, 
	I4 => A0, 
	O => D9
);
U65 : AND5B2	PORT MAP(
	I0 => A2, 
	I1 => A3, 
	I2 => E, 
	I3 => A0, 
	I4 => A1, 
	O => D3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECODE8 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	O : OUT std_logic
); END DECODE8;



ARCHITECTURE STRUCTURE OF DECODE8 IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00027 : std_logic;
SIGNAL C_IN0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL C_IN1 : std_logic;

-- GATE INSTANCES

BEGIN
U77 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S0, 
	I1 => orcad_unused
);
U79 : CY_MUX	PORT MAP(
	S => S0, 
	CI => C_IN0, 
	CO => C_IN1, 
	DI => N00017
);
U80 : AND4	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	O => S0
);
U95 : GND	PORT MAP(
	G => N00017
);
U96 : VCC	PORT MAP(
	P => N00027
);
U113 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C_IN1, 
	CO => O, 
	DI => N00017
);
U115 : AND4	PORT MAP(
	I0 => A4, 
	I1 => A5, 
	I2 => A6, 
	I3 => A7, 
	O => S1
);
U116 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S1, 
	I1 => orcad_unused
);
U78 : CY_INIT	PORT MAP(
	COUT => C_IN0, 
	INIT => N00027
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDPE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END FDPE;



ARCHITECTURE STRUCTURE OF FDPE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL QB : std_logic;
SIGNAL DB : std_logic;

-- GATE INSTANCES

BEGIN
U47 : INV	PORT MAP(
	O => DB, 
	I => D
);
U50 : FDCE	PORT MAP(
	D => DB, 
	CE => CE, 
	C => C, 
	CLR => PRE, 
	Q => QB
);
U51 : INV	PORT MAP(
	O => Q, 
	I => QB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDSRE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END FDSRE;



ARCHITECTURE STRUCTURE OF FDSRE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDSE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CE_R : std_logic;
SIGNAL D_R : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR2	PORT MAP(
	I1 => R, 
	I0 => CE, 
	O => CE_R
);
U75 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => D_R
);
U79 : FDSE	PORT MAP(
	D => D_R, 
	CE => CE_R, 
	C => C, 
	S => S, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILD4 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	G : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END ILD4;



ARCHITECTURE STRUCTURE OF ILD4 IS

-- COMPONENTS

COMPONENT ILD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U39 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U40 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U41 : ILD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U42 : ILD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M4_1E IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	E : IN std_logic;
	O : OUT std_logic
); END M4_1E;



ARCHITECTURE STRUCTURE OF M4_1E IS

-- COMPONENTS

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M01 : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
U46 : M2_1E	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01, 
	E => E
);
U47 : M2_1E	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23, 
	E => E
);
U50 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND5B4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END NAND5B4;



ARCHITECTURE STRUCTURE OF NAND5B4 IS

-- COMPONENTS

COMPONENT NAND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NAND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3B2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR12 IS PORT (
	I11 : IN std_logic;
	I10 : IN std_logic;
	I9 : IN std_logic;
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR12;



ARCHITECTURE STRUCTURE OF OR12 IS

-- COMPONENTS

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : NOR4	PORT MAP(
	I3 => I11, 
	I2 => I10, 
	I1 => I9, 
	I0 => I8, 
	O => S2
);
U127 : NOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00025
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00025
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U173 : VCC	PORT MAP(
	P => N00025
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U174 : GND	PORT MAP(
	G => N00050
);
U110 : NOR4	PORT MAP(
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => S0
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00025
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00050
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMPM8 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	GT : OUT std_logic;
	LT : OUT std_logic
); END COMPM8;



ARCHITECTURE STRUCTURE OF COMPM8 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL EQ4_5 : std_logic;
SIGNAL N01084 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LT_5 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL LT_7 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL GT_3 : std_logic;
SIGNAL GE4_5 : std_logic;
SIGNAL GT_7 : std_logic;
SIGNAL GT4_5 : std_logic;
SIGNAL GT_5 : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL GE6_7 : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL EQ6_7 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL LTA : std_logic;
SIGNAL LTB : std_logic;
SIGNAL LTD : std_logic;
SIGNAL LTC : std_logic;
SIGNAL GTC : std_logic;
SIGNAL GTB : std_logic;
SIGNAL GTD : std_logic;
SIGNAL LT4_5 : std_logic;
SIGNAL LT2_3 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL LE4_5 : std_logic;
SIGNAL LE6_7 : std_logic;
SIGNAL GT2_3 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL EQ_7 : std_logic;
SIGNAL EQ_5 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL GTA : std_logic;

-- GATE INSTANCES

BEGIN
U13 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U14 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U15 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => EQ_3
);
U16 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U17 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => GT_3
);
U18 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT0_1
);
U19 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => LT_3
);
U1 : AND2B1	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => LT_7
);
U3 : OR4	PORT MAP(
	I3 => LTA, 
	I2 => LTB, 
	I1 => LTC, 
	I0 => LTD, 
	O => LT
);
U4 : NOR2	PORT MAP(
	I1 => LT4_5, 
	I0 => GT4_5, 
	O => EQ4_5
);
U5 : AND3	PORT MAP(
	I0 => EQ6_7, 
	I1 => EQ4_5, 
	I2 => LT2_3, 
	O => LTB
);
U20 : AND2	PORT MAP(
	I0 => GT4_5, 
	I1 => EQ6_7, 
	O => GTC
);
U21 : AND2	PORT MAP(
	I0 => EQ6_7, 
	I1 => LT4_5, 
	O => LTC
);
U6 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LT2_3
);
U22 : NOR2	PORT MAP(
	I1 => LTD, 
	I0 => GTD, 
	O => EQ6_7
);
U7 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GT2_3
);
U8 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT0_1
);
U23 : OR2	PORT MAP(
	I1 => LE4_5, 
	I0 => LT_5, 
	O => LT4_5
);
U24 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => GT_7
);
U9 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U25 : AND2B1	PORT MAP(
	I0 => A5, 
	I1 => B5, 
	O => LT_5
);
U26 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => EQ_7
);
U27 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => GT_5
);
U28 : XNOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => EQ_5
);
U29 : AND3B1	PORT MAP(
	I0 => B6, 
	I1 => EQ_7, 
	I2 => A6, 
	O => GE6_7
);
U30 : AND3B1	PORT MAP(
	I0 => A6, 
	I1 => EQ_7, 
	I2 => B6, 
	O => LE6_7
);
U31 : AND3B1	PORT MAP(
	I0 => B4, 
	I1 => EQ_5, 
	I2 => A4, 
	O => GE4_5
);
U32 : AND3B1	PORT MAP(
	I0 => A4, 
	I1 => EQ_5, 
	I2 => B4, 
	O => LE4_5
);
U33 : OR2	PORT MAP(
	I1 => GE4_5, 
	I0 => GT_5, 
	O => GT4_5
);
U34 : OR2	PORT MAP(
	I1 => GE6_7, 
	I0 => GT_7, 
	O => GTD
);
U35 : OR2	PORT MAP(
	I1 => LE6_7, 
	I0 => LT_7, 
	O => LTD
);
U36 : AND4	PORT MAP(
	I0 => EQ6_7, 
	I1 => EQ4_5, 
	I2 => EQ2_3, 
	I3 => LT0_1, 
	O => LTA
);
U37 : AND4	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	I2 => EQ4_5, 
	I3 => EQ6_7, 
	O => GTA
);
U38 : AND3	PORT MAP(
	I0 => GT2_3, 
	I1 => EQ4_5, 
	I2 => EQ6_7, 
	O => GTB
);
U39 : NOR2	PORT MAP(
	I1 => LT2_3, 
	I0 => GT2_3, 
	O => EQ2_3
);
U40 : OR4	PORT MAP(
	I3 => GTA, 
	I2 => GTB, 
	I1 => GTC, 
	I0 => GTD, 
	O => GT
);
U10 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U11 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => EQ_3, 
	I2 => B2, 
	O => LE2_3
);
U12 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => EQ_3, 
	I2 => A2, 
	O => GE2_3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY D2_4E IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	E : IN std_logic;
	D0 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic
); END D2_4E;



ARCHITECTURE STRUCTURE OF D2_4E IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : AND3	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => E, 
	O => D3
);
U31 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	O => D2
);
U32 : AND3B1	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => E, 
	O => D1
);
U33 : AND3B2	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	O => D0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD8RE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END FD8RE;



ARCHITECTURE STRUCTURE OF FD8RE IS

-- COMPONENTS

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00052 : std_logic;

-- GATE INSTANCES

BEGIN
U33 : FDRE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q4
);
U34 : FDRE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q5
);
U35 : FDRE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q6
);
U36 : FDRE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U37 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U30 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q0
);
U31 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q1
);
U32 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LD4CE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	GE : IN std_logic;
	G : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END LD4CE;



ARCHITECTURE STRUCTURE OF LD4CE IS

-- COMPONENTS

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : LDCE	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0, 
	CLR => CLR, 
	GE => GE
);
U2 : LDCE	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1, 
	CLR => CLR, 
	GE => GE
);
U3 : LDCE	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2, 
	CLR => CLR, 
	GE => GE
);
U4 : LDCE	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3, 
	CLR => CLR, 
	GE => GE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
); END NAND8;



ARCHITECTURE STRUCTURE OF NAND8 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL S0 : std_logic;

-- GATE INSTANCES

BEGIN
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => O, 
	DI => N00022
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00022
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U141 : GND	PORT MAP(
	G => N00035
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U143 : VCC	PORT MAP(
	P => N00022
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00035
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUF16 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END OBUF16;



ARCHITECTURE STRUCTURE OF OBUF16 IS

-- COMPONENTS

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : OBUF	PORT MAP(
	O => O5, 
	I => I5
);
U30 : OBUF	PORT MAP(
	O => O8, 
	I => I8
);
U31 : OBUF	PORT MAP(
	O => O9, 
	I => I9
);
U32 : OBUF	PORT MAP(
	O => O10, 
	I => I10
);
U33 : OBUF	PORT MAP(
	O => O11, 
	I => I11
);
U34 : OBUF	PORT MAP(
	O => O15, 
	I => I15
);
U35 : OBUF	PORT MAP(
	O => O14, 
	I => I14
);
U36 : OBUF	PORT MAP(
	O => O13, 
	I => I13
);
U37 : OBUF	PORT MAP(
	O => O12, 
	I => I12
);
U38 : OBUF	PORT MAP(
	O => O6, 
	I => I6
);
U39 : OBUF	PORT MAP(
	O => O7, 
	I => I7
);
U40 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U41 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U42 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U43 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
U44 : OBUF	PORT MAP(
	O => O4, 
	I => I4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDT4 IS PORT (
	T : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END OFDT4;



ARCHITECTURE STRUCTURE OF OFDT4 IS

-- COMPONENTS

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : OFDT	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3
);
U30 : OFDT	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0
);
U31 : OFDT	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1
);
U32 : OFDT	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_153 IS PORT (
	I1C0 : IN std_logic;
	I1C1 : IN std_logic;
	I1C2 : IN std_logic;
	I1C3 : IN std_logic;
	I2C0 : IN std_logic;
	I2C1 : IN std_logic;
	I2C2 : IN std_logic;
	I2C3 : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	G1 : IN std_logic;
	G2 : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic
); END X74_153;



ARCHITECTURE STRUCTURE OF X74_153 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M1_23 : std_logic;
SIGNAL M2_01 : std_logic;
SIGNAL E1 : std_logic;
SIGNAL E2 : std_logic;
SIGNAL M2_23 : std_logic;
SIGNAL M1_01 : std_logic;

-- GATE INSTANCES

BEGIN
U85 : INV	PORT MAP(
	O => E2, 
	I => G2
);
U87 : INV	PORT MAP(
	O => E1, 
	I => G1
);
U77 : M2_1E	PORT MAP(
	D0 => M1_01, 
	D1 => M1_23, 
	S0 => B, 
	O => Y1, 
	E => E1
);
U80 : M2_1E	PORT MAP(
	D0 => M2_01, 
	D1 => M2_23, 
	S0 => B, 
	O => Y2, 
	E => E2
);
U73 : M2_1	PORT MAP(
	D0 => I2C0, 
	D1 => I2C1, 
	S0 => A, 
	O => M2_01
);
U74 : M2_1	PORT MAP(
	D0 => I2C2, 
	D1 => I2C3, 
	S0 => A, 
	O => M2_23
);
U75 : M2_1	PORT MAP(
	D0 => I1C2, 
	D1 => I1C3, 
	S0 => A, 
	O => M1_23
);
U76 : M2_1	PORT MAP(
	D0 => I1C0, 
	D1 => I1C1, 
	S0 => A, 
	O => M1_01
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ACC4 IS PORT (
	CI : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	L : IN std_logic;
	ADD : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic;
	R : IN std_logic
); END ACC4;



ARCHITECTURE STRUCTURE OF ACC4 IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT ADSU4	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00070 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL R_L_CE : std_logic;
SIGNAL SD2 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00010;
Q2<=N00006;
Q3<=N00002;
U13 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00070, 
	Q => N00010
);
U14 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S3, 
	I2 => D3, 
	O => R_SD3, 
	I1 => L
);
U15 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S2, 
	I2 => D2, 
	O => R_SD2, 
	I1 => L
);
U16 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S0, 
	I2 => D0, 
	O => R_SD0, 
	I1 => L
);
U17 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00070, 
	Q => N00014
);
U18 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00070, 
	Q => N00006
);
U19 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00070, 
	Q => N00002
);
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD0, 
	O => R_SD0
);
U2 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD1, 
	O => R_SD1
);
U3 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U4 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U5 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => R_L_CE
);
U11 : GND	PORT MAP(
	G => N00070
);
U12 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S1, 
	I2 => D1, 
	O => R_SD1, 
	I1 => L
);
U6 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U7 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U8 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U9 : M2_1	PORT MAP(
	D0 => S3, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U10 : ADSU4	PORT MAP(
	CI => CI, 
	A0 => N00014, 
	A1 => N00010, 
	A2 => N00006, 
	A3 => N00002, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	ADD => ADD, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	CO => CO, 
	OFL => OFL
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ADD4 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END ADD4;



ARCHITECTURE STRUCTURE OF ADD4 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C1 : std_logic;
SIGNAL I0 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL I3 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL I2 : std_logic;

-- GATE INSTANCES

BEGIN
S1<=N00058;
S2<=N00045;
S3<=N00032;
CO<=N00024;
S0<=N00071;
U259 : XOR2	PORT MAP(
	I1 => N00024, 
	I0 => C2, 
	O => OFL
);
U182 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U189 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I2, 
	O => N00045, 
	I1 => C1
);
U55 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C0, 
	CO => C1, 
	DI => A1
);
U205 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I3, 
	O => N00032, 
	I1 => C2
);
U206 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U239 : XOR2	PORT MAP(
	I1 => B0, 
	I0 => A0, 
	O => I0
);
U58 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C2, 
	CO => N00024, 
	DI => A3
);
U190 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I1, 
	O => N00058, 
	I1 => C0
);
U191 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I0, 
	O => N00071, 
	I1 => C_IN
);
U240 : XOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => I1
);
U241 : XOR2	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => I2
);
U242 : XOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => I3
);
U62 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C1, 
	CO => C2, 
	DI => A2
);
U111 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C_IN, 
	CO => C0, 
	DI => A0
);
U175 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U178 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U73 : XOR2	PORT MAP(
	I1 => C_IN, 
	I0 => I0, 
	O => N00071
);
U74 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => I1, 
	O => N00058
);
U75 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => I3, 
	O => N00032
);
U76 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => I2, 
	O => N00045
);
U61 : CY_INIT	PORT MAP(
	COUT => C_IN, 
	INIT => CI
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFE8 IS PORT (
	E : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END BUFE8;



ARCHITECTURE STRUCTURE OF BUFE8 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U51 : INV	PORT MAP(
	O => T, 
	I => E
);
U30 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U31 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U32 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U33 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U34 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
U35 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U36 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U37 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFT16 IS PORT (
	T : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END BUFT16;



ARCHITECTURE STRUCTURE OF BUFT16 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U30 : BUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
U31 : BUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
U32 : BUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
U33 : BUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
);
U34 : BUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
);
U35 : BUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
U36 : BUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
U37 : BUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
U38 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U39 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U40 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U41 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U42 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U43 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U44 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB2RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB2RE;



ARCHITECTURE STRUCTURE OF CB2RE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTRSE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00016 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00022;
Q0<=N00008;
Q1<=N00016;
U47 : VCC	PORT MAP(
	P => N00010
);
U54 : GND	PORT MAP(
	G => N00009
);
U55 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00022, 
	O => CEO
);
U37 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00008, 
	O => N00022
);
U34 : FTRSE	PORT MAP(
	T => N00008, 
	CE => CE, 
	C => C, 
	S => N00009, 
	Q => N00016, 
	R => R
);
U35 : FTRSE	PORT MAP(
	T => N00010, 
	CE => CE, 
	C => C, 
	S => N00009, 
	Q => N00008, 
	R => R
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB4CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB4CE;



ARCHITECTURE STRUCTURE OF CB4CE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00041 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00041;
Q0<=N00011;
Q1<=N00018;
Q2<=N00026;
Q3<=N00035;
U58 : VCC	PORT MAP(
	P => N00012
);
U31 : AND4	PORT MAP(
	I0 => N00035, 
	I1 => N00026, 
	I2 => N00018, 
	I3 => N00011, 
	O => N00041
);
U32 : AND3	PORT MAP(
	I0 => N00026, 
	I1 => N00018, 
	I2 => N00011, 
	O => T3
);
U33 : AND2	PORT MAP(
	I0 => N00018, 
	I1 => N00011, 
	O => T2
);
U67 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00041, 
	O => CEO
);
U40 : FTCE	PORT MAP(
	T => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U41 : FTCE	PORT MAP(
	T => N00011, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U42 : FTCE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00026
);
U43 : FTCE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00035
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CC8CLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CC8CLE;



ARCHITECTURE STRUCTURE OF CC8CLE IS

-- COMPONENTS

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MD2 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N00194 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00047;
Q0<=N00176;
Q1<=N00159;
Q2<=N00140;
Q3<=N00123;
Q4<=N00104;
Q5<=N00087;
Q6<=N00068;
Q7<=N00051;
U259 : CY_MUX	PORT MAP(
	S => N00104, 
	CI => C4, 
	CO => C5, 
	DI => N00052
);
U803 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D5, 
	I2 => C5, 
	O => MD5, 
	I1 => N00087
);
U809 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D6, 
	I2 => C6, 
	O => MD6, 
	I1 => N00068
);
U792 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D3, 
	I2 => C3, 
	O => MD3, 
	I1 => N00123
);
U798 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D4, 
	I2 => C4, 
	O => MD4, 
	I1 => N00104
);
U291 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => N00051, 
	O => TQ7
);
U263 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00087
);
U4 : CY_MUX	PORT MAP(
	S => N00176, 
	CI => C0, 
	CO => C1, 
	DI => N00052
);
U233 : CY_MUX	PORT MAP(
	S => N00140, 
	CI => C2, 
	CO => C3, 
	DI => N00052
);
U1156 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => L_CE
);
U265 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00087, 
	O => TQ5
);
U298 : CY_MUX	PORT MAP(
	S => N00051, 
	CI => C7, 
	CO => N00047, 
	DI => N00052
);
U6 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => N00176, 
	O => TQ0
);
U237 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00123
);
U814 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D7, 
	I2 => C7, 
	O => MD7, 
	I1 => N00051
);
U239 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00123, 
	O => TQ3
);
U26 : CY_MUX	PORT MAP(
	S => N00159, 
	CI => C1, 
	CO => C2, 
	DI => N00052
);
U28 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00159, 
	O => TQ1
);
U923 : VCC	PORT MAP(
	P => N00194
);
U956 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00047, 
	O => CEO
);
U742 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D0, 
	I2 => C0, 
	O => MD0, 
	I1 => N00176
);
U748 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D1, 
	I2 => C1, 
	O => MD1, 
	I1 => N00159
);
U272 : CY_MUX	PORT MAP(
	S => N00087, 
	CI => C5, 
	CO => C6, 
	DI => N00052
);
U276 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00068
);
U246 : CY_MUX	PORT MAP(
	S => N00123, 
	CI => C3, 
	CO => C4, 
	DI => N00052
);
U886 : GND	PORT MAP(
	G => N00052
);
U278 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => N00068, 
	O => TQ6
);
U35 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00159
);
U36 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00176
);
U787 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D2, 
	I2 => C2, 
	O => MD2, 
	I1 => N00140
);
U250 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00104
);
U252 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => N00104, 
	O => TQ4
);
U285 : CY_MUX	PORT MAP(
	S => N00068, 
	CI => C6, 
	CO => C7, 
	DI => N00052
);
U224 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00140
);
U289 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00051
);
U226 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => N00140, 
	O => TQ2
);
U3 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00194
);
U1079 : M2_1	PORT MAP(
	D0 => TQ0, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U1069 : M2_1	PORT MAP(
	D0 => TQ2, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U1059 : M2_1	PORT MAP(
	D0 => TQ4, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U1049 : M2_1	PORT MAP(
	D0 => TQ6, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U1074 : M2_1	PORT MAP(
	D0 => TQ1, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U1064 : M2_1	PORT MAP(
	D0 => TQ3, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U1054 : M2_1	PORT MAP(
	D0 => TQ5, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U1033 : M2_1	PORT MAP(
	D0 => TQ7, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CD4RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CD4RE;



ARCHITECTURE STRUCTURE OF CD4RE IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AX1 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL A03B : std_logic;
SIGNAL AO3A : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL OX3 : std_logic;
SIGNAL N00028 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00057;
Q0<=N00017;
Q1<=N00028;
Q2<=N00038;
Q3<=N00026;
U77 : AND2	PORT MAP(
	I0 => N00017, 
	I1 => N00028, 
	O => AX2
);
U78 : XOR2	PORT MAP(
	I1 => AX2, 
	I0 => N00038, 
	O => D2
);
U81 : AND2B1	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => AX1
);
U83 : INV	PORT MAP(
	O => D0, 
	I => N00017
);
U86 : XOR2	PORT MAP(
	I1 => AX1, 
	I0 => N00028, 
	O => D1
);
U88 : AND2	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => AO3A
);
U105 : AND4B2	PORT MAP(
	I0 => N00038, 
	I1 => N00028, 
	I2 => N00017, 
	I3 => N00026, 
	O => N00057
);
U99 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00057, 
	O => CEO
);
U70 : AND3	PORT MAP(
	I0 => N00038, 
	I1 => N00017, 
	I2 => N00028, 
	O => A03B
);
U73 : XOR2	PORT MAP(
	I1 => OX3, 
	I0 => N00026, 
	O => D3
);
U75 : OR2	PORT MAP(
	I1 => A03B, 
	I0 => AO3A, 
	O => OX3
);
U82 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00028
);
U84 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00017
);
U85 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00038
);
U87 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00026
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR8RE IS PORT (
	SLI : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END SR8RE;



ARCHITECTURE STRUCTURE OF SR8RE IS

-- COMPONENTS

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00011;
Q1<=N00022;
Q2<=N00032;
Q3<=N00010;
Q4<=N00012;
Q5<=N00023;
Q6<=N00033;
U33 : FDRE	PORT MAP(
	D => N00032, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00010
);
U34 : FDRE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00012
);
U35 : FDRE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00023
);
U36 : FDRE	PORT MAP(
	D => N00023, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00033
);
U37 : FDRE	PORT MAP(
	D => N00033, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U30 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00011
);
U31 : FDRE	PORT MAP(
	D => N00011, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00022
);
U32 : FDRE	PORT MAP(
	D => N00022, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00032
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_152 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	W : OUT std_logic
); END X74_152;



ARCHITECTURE STRUCTURE OF X74_152 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL O : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
U71 : INV	PORT MAP(
	O => W, 
	I => O
);
U77 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => B, 
	O => M03
);
U66 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => O
);
U78 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => A, 
	O => M45
);
U79 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => A, 
	O => M67
);
U80 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U81 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => A, 
	O => M23
);
U82 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => A, 
	O => M01
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_163 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	LOAD : IN std_logic;
	ENP : IN std_logic;
	ENT : IN std_logic;
	CK : IN std_logic;
	R : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	RCO : OUT std_logic
); END X74_163;



ARCHITECTURE STRUCTURE OF X74_163 IS

-- COMPONENTS

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FTRSLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00050 : std_logic;
SIGNAL RB : std_logic;
SIGNAL LOADB : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL CE : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00015;
QB<=N00025;
QC<=N00036;
QD<=N00050;
U121 : GND	PORT MAP(
	G => N00014
);
U123 : INV	PORT MAP(
	O => LOADB, 
	I => LOAD
);
U59 : VCC	PORT MAP(
	P => N00018
);
U103 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U109 : INV	PORT MAP(
	O => RB, 
	I => R
);
U98 : AND2	PORT MAP(
	I0 => N00025, 
	I1 => N00015, 
	O => T2
);
U99 : AND3	PORT MAP(
	I0 => N00036, 
	I1 => N00025, 
	I2 => N00015, 
	O => T3
);
U107 : AND5	PORT MAP(
	I0 => ENT, 
	I1 => N00015, 
	I2 => N00025, 
	I3 => N00036, 
	I4 => N00050, 
	O => RCO
);
U40 : FTRSLE	PORT MAP(
	D => A, 
	L => LOADB, 
	T => N00018, 
	R => RB, 
	S => N00014, 
	Q => N00015, 
	CE => CE, 
	C => CK
);
U41 : FTRSLE	PORT MAP(
	D => B, 
	L => LOADB, 
	T => N00015, 
	R => RB, 
	S => N00014, 
	Q => N00025, 
	CE => CE, 
	C => CK
);
U42 : FTRSLE	PORT MAP(
	D => C, 
	L => LOADB, 
	T => T2, 
	R => RB, 
	S => N00014, 
	Q => N00036, 
	CE => CE, 
	C => CK
);
U43 : FTRSLE	PORT MAP(
	D => D, 
	L => LOADB, 
	T => T3, 
	R => RB, 
	S => N00014, 
	Q => N00050, 
	CE => CE, 
	C => CK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_174 IS PORT (
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic
); END X74_174;



ARCHITECTURE STRUCTURE OF X74_174 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CLRB : std_logic;

-- GATE INSTANCES

BEGIN
U85 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U68 : FDC	PORT MAP(
	D => D6, 
	C => CK, 
	CLR => CLRB, 
	Q => Q6
);
U47 : FDC	PORT MAP(
	D => D4, 
	C => CK, 
	CLR => CLRB, 
	Q => Q4
);
U48 : FDC	PORT MAP(
	D => D3, 
	C => CK, 
	CLR => CLRB, 
	Q => Q3
);
U49 : FDC	PORT MAP(
	D => D2, 
	C => CK, 
	CLR => CLRB, 
	Q => Q2
);
U50 : FDC	PORT MAP(
	D => D1, 
	C => CK, 
	CLR => CLRB, 
	Q => Q1
);
U62 : FDC	PORT MAP(
	D => D5, 
	C => CK, 
	CLR => CLRB, 
	Q => Q5
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_273 IS PORT (
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic
); END X74_273;



ARCHITECTURE STRUCTURE OF X74_273 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CLRB : std_logic;

-- GATE INSTANCES

BEGIN
U13 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U23 : FDC	PORT MAP(
	D => D1, 
	C => CK, 
	CLR => CLRB, 
	Q => Q1
);
U24 : FDC	PORT MAP(
	D => D2, 
	C => CK, 
	CLR => CLRB, 
	Q => Q2
);
U25 : FDC	PORT MAP(
	D => D3, 
	C => CK, 
	CLR => CLRB, 
	Q => Q3
);
U26 : FDC	PORT MAP(
	D => D4, 
	C => CK, 
	CLR => CLRB, 
	Q => Q4
);
U27 : FDC	PORT MAP(
	D => D5, 
	C => CK, 
	CLR => CLRB, 
	Q => Q5
);
U28 : FDC	PORT MAP(
	D => D6, 
	C => CK, 
	CLR => CLRB, 
	Q => Q6
);
U29 : FDC	PORT MAP(
	D => D7, 
	C => CK, 
	CLR => CLRB, 
	Q => Q7
);
U30 : FDC	PORT MAP(
	D => D8, 
	C => CK, 
	CLR => CLRB, 
	Q => Q8
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XNOR6 IS PORT (
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XNOR6;



ARCHITECTURE STRUCTURE OF XNOR6 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;
SIGNAL I12 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
U85 : XNOR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U69 : XOR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CK_DIV IS 
	GENERIC(
	OSC        : string(1 to 8);
	DIVIDE1_BY : integer; 
	DIVIDE2_BY : integer);
	PORT (
	C : IN std_logic;
	OSC2 : OUT std_logic;
	OSC1 : OUT std_logic
); END CK_DIV;



ARCHITECTURE STRUCTURE OF CK_DIV IS

-- COMPONENTS

COMPONENT OSC52 
	GENERIC(
	OSC        : string(1 to 8);
	DIVIDE1_BY : integer; 
	DIVIDE2_BY : integer);
	PORT (
	C : IN std_logic;
	OSC2 : OUT std_logic;
	OSC1 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OSC52	
	GENERIC MAP (
	OSC => OSC,
	DIVIDE2_BY => DIVIDE2_BY,
	DIVIDE1_BY => DIVIDE1_BY)
	PORT MAP(
	C => C, 
	OSC2 => OSC2, 
	OSC1 => OSC1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END IFD;



ARCHITECTURE STRUCTURE OF IFD IS

-- COMPONENTS

COMPONENT IBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_IN : std_logic;

-- GATE INSTANCES

BEGIN
U24 : IBUF	PORT MAP(
	O => D_IN, 
	I => D
);
U15 : FD	PORT MAP(
	D => D_IN, 
	C => C, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND5B3 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END NAND5B3;



ARCHITECTURE STRUCTURE OF NAND5B3 IS

-- COMPONENTS

COMPONENT NAND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NAND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR5B5 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR5B5;



ARCHITECTURE STRUCTURE OF OR5B5 IS

-- COMPONENTS

COMPONENT OR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : OR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3B3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR9 IS PORT (
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR9;



ARCHITECTURE STRUCTURE OF OR9 IS

-- COMPONENTS

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I58 : std_logic;
SIGNAL I14 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
);
U85 : OR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
	I0 => I0, 
	O => O
);
U69 : OR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP3B3 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3B3;



ARCHITECTURE STRUCTURE OF SOP3B3 IS

-- COMPONENTS

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B1
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1B : std_logic;

-- GATE INSTANCES

BEGIN
U31 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
U32 : OR2B1	PORT MAP(
	I1 => I0B1B, 
	I0 => I2, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP4B2A IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4B2A;



ARCHITECTURE STRUCTURE OF SOP4B2A IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1B : std_logic;
SIGNAL I23 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U8 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I0B1B, 
	O => O
);
U9 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR8CLE IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END SR8CLE;



ARCHITECTURE STRUCTURE OF SR8CLE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00060 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00042 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00031;
Q1<=N00042;
Q2<=N00058;
Q3<=N00025;
Q4<=N00027;
Q5<=N00044;
Q6<=N00060;
U1 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U230 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00027
);
U233 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00044
);
U24 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00042
);
U137 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00058
);
U242 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U246 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U146 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U12 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U245 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U226 : M2_1	PORT MAP(
	D0 => N00027, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U238 : M2_1	PORT MAP(
	D0 => N00025, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U26 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U249 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U143 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U2 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U134 : M2_1	PORT MAP(
	D0 => N00042, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_L85 IS PORT (
	AGBI : IN std_logic;
	AEBI : IN std_logic;
	ALBI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	AGBO : OUT std_logic;
	AEBO : OUT std_logic;
	ALBO : OUT std_logic
); END X74_L85;



ARCHITECTURE STRUCTURE OF X74_L85 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT OR5	 PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B1	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL NA_B7 : std_logic;
SIGNAL NA_B3 : std_logic;
SIGNAL A_B6 : std_logic;
SIGNAL A_B1 : std_logic;
SIGNAL A_B2 : std_logic;
SIGNAL A_B7 : std_logic;
SIGNAL NA_B1 : std_logic;
SIGNAL A_B5 : std_logic;
SIGNAL A_B0 : std_logic;
SIGNAL A_B4 : std_logic;
SIGNAL NA_B5 : std_logic;
SIGNAL A_B3 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AG_7 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AL_7 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB2 : std_logic;

-- GATE INSTANCES

BEGIN
U123 : AND2B1	PORT MAP(
	I0 => A2, 
	I1 => B2, 
	O => A_B4
);
U82 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => NA_B7, 
	I2 => B2, 
	O => AB5
);
U83 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => A_B7
);
U85 : NOR2	PORT MAP(
	I1 => A_B6, 
	I0 => A_B7, 
	O => NA_B7
);
U86 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => A_B5
);
U89 : NOR2	PORT MAP(
	I1 => A_B4, 
	I0 => A_B5, 
	O => NA_B5
);
U106 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => A_B1
);
U107 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => AB7
);
U108 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => AB6
);
U90 : AND4B1	PORT MAP(
	I0 => A1, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => B1, 
	O => AB3
);
U109 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => NA_B7, 
	I2 => A2, 
	O => AB4
);
U91 : AND4B1	PORT MAP(
	I0 => B1, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => A1, 
	O => AB2
);
U92 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => A_B3
);
U95 : NOR2	PORT MAP(
	I1 => A_B2, 
	I0 => A_B3, 
	O => NA_B3
);
U97 : NOR2	PORT MAP(
	I1 => A_B0, 
	I0 => A_B1, 
	O => NA_B1
);
U67 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => A_B6
);
U69 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => A_B0
);
U118 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => A_B2
);
U102 : AND5	PORT MAP(
	I0 => NA_B7, 
	I1 => NA_B5, 
	I2 => NA_B3, 
	I3 => NA_B1, 
	I4 => ALBI, 
	O => AG_7
);
U125 : OR5	PORT MAP(
	I4 => AL_7, 
	I3 => AB0, 
	I2 => AB2, 
	I1 => AB4, 
	I0 => AB6, 
	O => AGBO
);
U103 : AND5	PORT MAP(
	I0 => NA_B7, 
	I1 => NA_B5, 
	I2 => NA_B3, 
	I3 => NA_B1, 
	I4 => AGBI, 
	O => AL_7
);
U104 : AND5	PORT MAP(
	I0 => NA_B7, 
	I1 => NA_B5, 
	I2 => NA_B3, 
	I3 => NA_B1, 
	I4 => AEBI, 
	O => AEBO
);
U126 : OR5	PORT MAP(
	I4 => AG_7, 
	I3 => AB1, 
	I2 => AB3, 
	I1 => AB5, 
	I0 => AB7, 
	O => ALBO
);
U96 : AND5B1	PORT MAP(
	I0 => A0, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => NA_B3, 
	I4 => B0, 
	O => AB1
);
U101 : AND5B1	PORT MAP(
	I0 => B0, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => NA_B3, 
	I4 => A0, 
	O => AB0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB8RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB8RE;



ARCHITECTURE STRUCTURE OF CB8RE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTRSE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00054 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00037 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00092;
Q0<=N00020;
Q1<=N00028;
Q2<=N00037;
Q3<=N00047;
Q4<=N00054;
Q5<=N00063;
Q6<=N00073;
Q7<=N00084;
U13 : VCC	PORT MAP(
	P => N00022
);
U21 : AND2	PORT MAP(
	I0 => N00028, 
	I1 => N00020, 
	O => T2
);
U22 : AND3	PORT MAP(
	I0 => N00037, 
	I1 => N00028, 
	I2 => N00020, 
	O => T3
);
U7 : GND	PORT MAP(
	G => N00021
);
U23 : AND4	PORT MAP(
	I0 => N00047, 
	I1 => N00037, 
	I2 => N00028, 
	I3 => N00020, 
	O => T4
);
U25 : AND2	PORT MAP(
	I0 => N00054, 
	I1 => T4, 
	O => T5
);
U26 : AND3	PORT MAP(
	I0 => N00063, 
	I1 => N00054, 
	I2 => T4, 
	O => T6
);
U28 : AND4	PORT MAP(
	I0 => N00073, 
	I1 => N00063, 
	I2 => N00054, 
	I3 => T4, 
	O => T7
);
U32 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00092, 
	O => CEO
);
U14 : FTRSE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00073, 
	R => R
);
U6 : FTRSE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00084, 
	R => R
);
U15 : FTRSE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00063, 
	R => R
);
U16 : FTRSE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00054, 
	R => R
);
U17 : FTRSE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00047, 
	R => R
);
U29 : AND5	PORT MAP(
	I0 => N00084, 
	I1 => N00073, 
	I2 => N00063, 
	I3 => N00054, 
	I4 => T4, 
	O => N00092
);
U18 : FTRSE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00037, 
	R => R
);
U19 : FTRSE	PORT MAP(
	T => N00020, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00028, 
	R => R
);
U20 : FTRSE	PORT MAP(
	T => N00022, 
	CE => CE, 
	C => C, 
	S => N00021, 
	Q => N00020, 
	R => R
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IBUF8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END IBUF8;



ARCHITECTURE STRUCTURE OF IBUF8 IS

-- COMPONENTS

COMPONENT IBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : IBUF	PORT MAP(
	O => O4, 
	I => I4
);
U31 : IBUF	PORT MAP(
	O => O5, 
	I => I5
);
U32 : IBUF	PORT MAP(
	O => O6, 
	I => I6
);
U33 : IBUF	PORT MAP(
	O => O7, 
	I => I7
);
U34 : IBUF	PORT MAP(
	O => O3, 
	I => I3
);
U35 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U36 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U37 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND7 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
); END NAND7;



ARCHITECTURE STRUCTURE OF NAND7 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I13 : std_logic;
SIGNAL I46 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : AND3	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	O => I13
);
U85 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I13, 
	I2 => I46, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	O => I46
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR5B5 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR5B5;



ARCHITECTURE STRUCTURE OF NOR5B5 IS

-- COMPONENTS

COMPONENT NOR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NOR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3B3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR9 IS PORT (
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR9;



ARCHITECTURE STRUCTURE OF NOR9 IS

-- COMPONENTS

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
U127 : NOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00019
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00019
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00044
);
U109 : GND	PORT MAP(
	G => N00019
);
U172 : INV	PORT MAP(
	O => S2, 
	I => I8
);
U142 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S2, 
	I1 => I8
);
U110 : NOR4	PORT MAP(
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => S0
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00019
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00044
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFE16 IS PORT (
	E : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END OBUFE16;



ARCHITECTURE STRUCTURE OF OBUFE16 IS

-- COMPONENTS

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : OBUFE	PORT MAP(
	E => E, 
	I => I11, 
	O => O11
);
U44 : OBUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U34 : OBUFE	PORT MAP(
	E => E, 
	I => I15, 
	O => O15
);
U45 : OBUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
U35 : OBUFE	PORT MAP(
	E => E, 
	I => I14, 
	O => O14
);
U36 : OBUFE	PORT MAP(
	E => E, 
	I => I13, 
	O => O13
);
U37 : OBUFE	PORT MAP(
	E => E, 
	I => I12, 
	O => O12
);
U38 : OBUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
U39 : OBUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U40 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U41 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
U30 : OBUFE	PORT MAP(
	E => E, 
	I => I8, 
	O => O8
);
U42 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U31 : OBUFE	PORT MAP(
	E => E, 
	I => I9, 
	O => O9
);
U32 : OBUFE	PORT MAP(
	E => E, 
	I => I10, 
	O => O10
);
U43 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFE8 IS PORT (
	E : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END OBUFE8;



ARCHITECTURE STRUCTURE OF OBUFE8 IS

-- COMPONENTS

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U34 : OBUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U35 : OBUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
U36 : OBUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
U37 : OBUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U30 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U31 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
U32 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_139 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	G : IN std_logic;
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic
); END X74_139;



ARCHITECTURE STRUCTURE OF X74_139 IS

-- COMPONENTS

COMPONENT NAND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U77 : NAND3B1	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y3
);
U74 : NAND3B3	PORT MAP(
	I0 => G, 
	I1 => A, 
	I2 => B, 
	O => Y0
);
U75 : NAND3B2	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y1
);
U76 : NAND3B2	PORT MAP(
	I0 => G, 
	I1 => A, 
	I2 => B, 
	O => Y2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB8CLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB8CLE;



ARCHITECTURE STRUCTURE OF CB8CLE IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00069 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00891 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T4 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00098;
Q0<=N00021;
Q1<=N00030;
Q2<=N00040;
Q3<=N00051;
Q4<=N00059;
Q5<=N00069;
Q6<=N00080;
Q7<=N00092;
U19 : AND2	PORT MAP(
	I0 => N00030, 
	I1 => N00021, 
	O => T2
);
U21 : AND3	PORT MAP(
	I0 => N00040, 
	I1 => N00030, 
	I2 => N00021, 
	O => T3
);
U8 : AND3	PORT MAP(
	I0 => N00069, 
	I1 => N00059, 
	I2 => T4, 
	O => T6
);
U23 : AND4	PORT MAP(
	I0 => N00051, 
	I1 => N00040, 
	I2 => N00030, 
	I3 => N00021, 
	O => T4
);
U25 : AND4	PORT MAP(
	I0 => N00080, 
	I1 => N00069, 
	I2 => N00059, 
	I3 => T4, 
	O => T7
);
U33 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00098, 
	O => CEO
);
U11 : AND2	PORT MAP(
	I0 => N00059, 
	I1 => T4, 
	O => T5
);
U12 : VCC	PORT MAP(
	P => N00022
);
U14 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00059, 
	CLR => CLR
);
U15 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00021, 
	CE => CE, 
	C => C, 
	Q => N00030, 
	CLR => CLR
);
U16 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00022, 
	CE => CE, 
	C => C, 
	Q => N00021, 
	CLR => CLR
);
U28 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00092, 
	CLR => CLR
);
U9 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00069, 
	CLR => CLR
);
U17 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00040, 
	CLR => CLR
);
U29 : AND5	PORT MAP(
	I0 => N00092, 
	I1 => N00080, 
	I2 => N00069, 
	I3 => N00059, 
	I4 => T4, 
	O => N00098
);
U18 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00051, 
	CLR => CLR
);
U2 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00080, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMP16 IS PORT (
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
	EQ : OUT std_logic
); END COMP16;



ARCHITECTURE STRUCTURE OF COMP16 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB13 : std_logic;
SIGNAL AB10 : std_logic;
SIGNAL ABCF : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB8B : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB11 : std_logic;
SIGNAL AB9 : std_logic;
SIGNAL AB15 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB14 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB12 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB8 : std_logic;
SIGNAL AB4 : std_logic;

-- GATE INSTANCES

BEGIN
U54 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U55 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U56 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => AB4
);
U57 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => AB5
);
U58 : XNOR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => AB6
);
U59 : XNOR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => AB7
);
U60 : XNOR2	PORT MAP(
	I1 => A8, 
	I0 => B8, 
	O => AB8
);
U61 : XNOR2	PORT MAP(
	I1 => A9, 
	I0 => B9, 
	O => AB9
);
U62 : XNOR2	PORT MAP(
	I1 => A10, 
	I0 => B10, 
	O => AB10
);
U31 : AND4	PORT MAP(
	I0 => ABCF, 
	I1 => AB8B, 
	I2 => AB47, 
	I3 => AB03, 
	O => EQ
);
U63 : XNOR2	PORT MAP(
	I1 => A11, 
	I0 => B11, 
	O => AB11
);
U64 : XNOR2	PORT MAP(
	I1 => A12, 
	I0 => B12, 
	O => AB12
);
U65 : XNOR2	PORT MAP(
	I1 => A13, 
	I0 => B13, 
	O => AB13
);
U66 : XNOR2	PORT MAP(
	I1 => A14, 
	I0 => B14, 
	O => AB14
);
U67 : XNOR2	PORT MAP(
	I1 => A15, 
	I0 => B15, 
	O => AB15
);
U68 : AND4	PORT MAP(
	I0 => AB7, 
	I1 => AB6, 
	I2 => AB5, 
	I3 => AB4, 
	O => AB47
);
U69 : AND4	PORT MAP(
	I0 => AB11, 
	I1 => AB10, 
	I2 => AB9, 
	I3 => AB8, 
	O => AB8B
);
U70 : AND4	PORT MAP(
	I0 => AB15, 
	I1 => AB14, 
	I2 => AB13, 
	I3 => AB12, 
	O => ABCF
);
U71 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => AB03
);
U40 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U41 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMP4 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	EQ : OUT std_logic
); END COMP4;



ARCHITECTURE STRUCTURE OF COMP4 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB0 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB3 : std_logic;

-- GATE INSTANCES

BEGIN
U32 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => EQ
);
U33 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U34 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U42 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U43 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECODE16 IS PORT (
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
	O : OUT std_logic
); END DECODE16;



ARCHITECTURE STRUCTURE OF DECODE16 IS

-- COMPONENTS

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C_IN0 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL C_IN3 : std_logic;
SIGNAL C_IN1 : std_logic;
SIGNAL C_IN2 : std_logic;

-- GATE INSTANCES

BEGIN
U123 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C_IN1, 
	CO => C_IN2, 
	DI => N00023
);
U125 : AND4	PORT MAP(
	I0 => A4, 
	I1 => A5, 
	I2 => A6, 
	I3 => A7, 
	O => S1
);
U127 : AND4	PORT MAP(
	I0 => A12, 
	I1 => A13, 
	I2 => A14, 
	I3 => A15, 
	O => S3
);
U128 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C_IN3, 
	CO => O, 
	DI => N00023
);
U129 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S2, 
	I1 => orcad_unused
);
U131 : AND4	PORT MAP(
	I0 => A8, 
	I1 => A9, 
	I2 => A10, 
	I3 => A11, 
	O => S2
);
U101 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S0, 
	I1 => orcad_unused
);
U134 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C_IN2, 
	CO => C_IN3, 
	DI => N00023
);
U135 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S3, 
	I1 => orcad_unused
);
U92 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S1, 
	I1 => orcad_unused
);
U96 : CY_MUX	PORT MAP(
	S => S0, 
	CI => C_IN0, 
	CO => C_IN1, 
	DI => N00023
);
U97 : VCC	PORT MAP(
	P => N00049
);
U98 : GND	PORT MAP(
	G => N00023
);
U99 : AND4	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	O => S0
);
U100 : CY_INIT	PORT MAP(
	COUT => C_IN0, 
	INIT => N00049
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END FD_1;



ARCHITECTURE STRUCTURE OF FD_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL CB : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U48 : INV	PORT MAP(
	O => CB, 
	I => C
);
U37 : FDCE	PORT MAP(
	D => D, 
	CE => N00008, 
	C => CB, 
	CLR => N00011, 
	Q => Q
);
U40 : VCC	PORT MAP(
	P => N00008
);
U43 : GND	PORT MAP(
	G => N00011
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTPE IS PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END FTPE;



ARCHITECTURE STRUCTURE OF FTPE IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDPE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U32 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U35 : FDPE	PORT MAP(
	D => TQ, 
	CE => CE, 
	C => C, 
	PRE => PRE, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTRSE IS PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END FTRSE;



ARCHITECTURE STRUCTURE OF FTRSE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL TQ : std_logic;
SIGNAL D_S : std_logic;
SIGNAL CE_S : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U77 : OR2	PORT MAP(
	I1 => S, 
	I0 => CE, 
	O => CE_S
);
U32 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U73 : OR2	PORT MAP(
	I1 => TQ, 
	I0 => S, 
	O => D_S
);
U35 : FDRE	PORT MAP(
	D => D_S, 
	CE => CE_S, 
	C => C, 
	R => R, 
	Q => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OPAD16 IS PORT (
	O0 : IN std_logic;
	O1 : IN std_logic;
	O2 : IN std_logic;
	O3 : IN std_logic;
	O4 : IN std_logic;
	O5 : IN std_logic;
	O6 : IN std_logic;
	O7 : IN std_logic;
	O8 : IN std_logic;
	O9 : IN std_logic;
	O10 : IN std_logic;
	O11 : IN std_logic;
	O12 : IN std_logic;
	O13 : IN std_logic;
	O14 : IN std_logic;
	O15 : IN std_logic
); END OPAD16;



ARCHITECTURE STRUCTURE OF OPAD16 IS

-- COMPONENTS

COMPONENT OPAD
	PORT (
	OPAD : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U77 : OPAD	PORT MAP(
	OPAD => O11
);
U78 : OPAD	PORT MAP(
	OPAD => O12
);
U79 : OPAD	PORT MAP(
	OPAD => O13
);
U80 : OPAD	PORT MAP(
	OPAD => O14
);
U81 : OPAD	PORT MAP(
	OPAD => O15
);
U66 : OPAD	PORT MAP(
	OPAD => O0
);
U67 : OPAD	PORT MAP(
	OPAD => O1
);
U68 : OPAD	PORT MAP(
	OPAD => O2
);
U69 : OPAD	PORT MAP(
	OPAD => O3
);
U70 : OPAD	PORT MAP(
	OPAD => O4
);
U71 : OPAD	PORT MAP(
	OPAD => O5
);
U72 : OPAD	PORT MAP(
	OPAD => O6
);
U73 : OPAD	PORT MAP(
	OPAD => O7
);
U74 : OPAD	PORT MAP(
	OPAD => O8
);
U75 : OPAD	PORT MAP(
	OPAD => O9
);
U76 : OPAD	PORT MAP(
	OPAD => O10
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_151 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	G : IN std_logic;
	Y : OUT std_logic;
	W : OUT std_logic
); END X74_151;



ARCHITECTURE STRUCTURE OF X74_151 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M23 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
Y<=N00021;
U90 : INV	PORT MAP(
	O => E, 
	I => G
);
U92 : INV	PORT MAP(
	O => W, 
	I => N00021
);
U66 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => N00021, 
	E => E
);
U67 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => A, 
	O => M01
);
U68 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => A, 
	O => M23
);
U69 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U70 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => A, 
	O => M67
);
U71 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => A, 
	O => M45
);
U72 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => B, 
	O => M03
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_162 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	LOAD : IN std_logic;
	ENP : IN std_logic;
	ENT : IN std_logic;
	CK : IN std_logic;
	R : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	RCO : OUT std_logic
); END X74_162;



ARCHITECTURE STRUCTURE OF X74_162 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FTRSLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL F3T : std_logic;
SIGNAL T2 : std_logic;
SIGNAL CE : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL TQAD : std_logic;
SIGNAL TQB : std_logic;
SIGNAL T3 : std_logic;
SIGNAL RB : std_logic;
SIGNAL LB : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
T2<=F3T;
QA<=N00023;
QB<=N00037;
QC<=N00049;
QD<=N00034;
U77 : AND2	PORT MAP(
	I0 => F3T, 
	I1 => N00049, 
	O => TQB
);
U78 : OR2	PORT MAP(
	I1 => TQB, 
	I0 => TQAD, 
	O => T3
);
U79 : INV	PORT MAP(
	O => LB, 
	I => LOAD
);
U121 : AND3	PORT MAP(
	I0 => CE, 
	I1 => N00023, 
	I2 => N00034, 
	O => TQAD
);
U122 : VCC	PORT MAP(
	P => N00025
);
U109 : GND	PORT MAP(
	G => N00019
);
U67 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U68 : INV	PORT MAP(
	O => RB, 
	I => R
);
U70 : AND3	PORT MAP(
	I0 => N00023, 
	I1 => CE, 
	I2 => N00037, 
	O => F3T
);
U71 : AND3B1	PORT MAP(
	I0 => N00034, 
	I1 => N00023, 
	I2 => CE, 
	O => T1
);
U115 : AND5B2	PORT MAP(
	I0 => N00037, 
	I1 => N00049, 
	I2 => ENT, 
	I3 => N00023, 
	I4 => N00034, 
	O => RCO
);
U72 : FTRSLE	PORT MAP(
	D => A, 
	L => LB, 
	T => CE, 
	R => RB, 
	S => N00019, 
	Q => N00023, 
	CE => N00025, 
	C => CK
);
U73 : FTRSLE	PORT MAP(
	D => D, 
	L => LB, 
	T => T3, 
	R => RB, 
	S => N00019, 
	Q => N00034, 
	CE => N00025, 
	C => CK
);
U74 : FTRSLE	PORT MAP(
	D => C, 
	L => LB, 
	T => F3T, 
	R => RB, 
	S => N00019, 
	Q => N00049, 
	CE => N00025, 
	C => CK
);
U75 : FTRSLE	PORT MAP(
	D => B, 
	L => LB, 
	T => T1, 
	R => RB, 
	S => N00019, 
	Q => N00037, 
	CE => N00025, 
	C => CK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_195 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	J : IN std_logic;
	K : IN std_logic;
	S_L : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	QDB : OUT std_logic
); END X74_195;



ARCHITECTURE STRUCTURE OF X74_195 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B1
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00036 : std_logic;
SIGNAL MB : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL JK : std_logic;
SIGNAL MD : std_logic;
SIGNAL MA : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL MC : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00016;
QB<=N00036;
QC<=N00042;
QD<=N00049;
U157 : INV	PORT MAP(
	O => QDB, 
	I => N00049
);
U129 : NAND2	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => N00025
);
U130 : NAND3B1	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00016, 
	O => N00018
);
U131 : OR3B1	PORT MAP(
	I2 => K, 
	I1 => N00016, 
	I0 => J, 
	O => N00022
);
U133 : NAND3	PORT MAP(
	I0 => N00025, 
	I1 => N00022, 
	I2 => N00018, 
	O => JK
);
U146 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U135 : FDC	PORT MAP(
	D => MB, 
	C => CK, 
	CLR => CLRB, 
	Q => N00036
);
U136 : FDC	PORT MAP(
	D => MC, 
	C => CK, 
	CLR => CLRB, 
	Q => N00042
);
U149 : M2_1	PORT MAP(
	D0 => D, 
	D1 => N00042, 
	S0 => S_L, 
	O => MD
);
U150 : M2_1	PORT MAP(
	D0 => C, 
	D1 => N00036, 
	S0 => S_L, 
	O => MC
);
U151 : M2_1	PORT MAP(
	D0 => B, 
	D1 => N00016, 
	S0 => S_L, 
	O => MB
);
U152 : FDC	PORT MAP(
	D => MA, 
	C => CK, 
	CLR => CLRB, 
	Q => N00016
);
U153 : FDC	PORT MAP(
	D => MD, 
	C => CK, 
	CLR => CLRB, 
	Q => N00049
);
U134 : M2_1	PORT MAP(
	D0 => A, 
	D1 => JK, 
	S0 => S_L, 
	O => MA
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_283 IS PORT (
	C0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	C4 : OUT std_logic
); END X74_283;



ARCHITECTURE STRUCTURE OF X74_283 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00053 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C1 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00050
);
U14 : OR3	PORT MAP(
	I2 => N00050, 
	I1 => N00053, 
	I0 => N00056, 
	O => C3
);
U15 : XOR3	PORT MAP(
	I2 => B1, 
	I1 => A1, 
	I0 => C0, 
	O => S1
);
U16 : OR3	PORT MAP(
	I2 => N00023, 
	I1 => N00026, 
	I0 => N00029, 
	O => C1
);
U17 : XOR3	PORT MAP(
	I2 => B4, 
	I1 => A4, 
	I0 => C3, 
	O => S4
);
U18 : AND2	PORT MAP(
	I0 => C3, 
	I1 => A4, 
	O => N00066
);
U19 : AND2	PORT MAP(
	I0 => B4, 
	I1 => C3, 
	O => N00069
);
U1 : OR3	PORT MAP(
	I2 => N00063, 
	I1 => N00066, 
	I0 => N00069, 
	O => C4
);
U2 : XOR3	PORT MAP(
	I2 => B3, 
	I1 => A3, 
	I0 => C2, 
	O => S3
);
U3 : XOR3	PORT MAP(
	I2 => B2, 
	I1 => A2, 
	I0 => C1, 
	O => S2
);
U4 : OR3	PORT MAP(
	I2 => N00037, 
	I1 => N00040, 
	I0 => N00043, 
	O => C2
);
U5 : AND2	PORT MAP(
	I0 => C0, 
	I1 => A1, 
	O => N00026
);
U20 : AND2	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00063
);
U6 : AND2	PORT MAP(
	I0 => B1, 
	I1 => C0, 
	O => N00029
);
U7 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00023
);
U8 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00037
);
U9 : AND2	PORT MAP(
	I0 => B2, 
	I1 => C1, 
	O => N00043
);
U10 : AND2	PORT MAP(
	I0 => C1, 
	I1 => A2, 
	O => N00040
);
U11 : AND2	PORT MAP(
	I0 => C2, 
	I1 => A3, 
	O => N00053
);
U12 : AND2	PORT MAP(
	I0 => B3, 
	I1 => C2, 
	O => N00056
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XNOR5 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XNOR5;



ARCHITECTURE STRUCTURE OF XNOR5 IS

-- COMPONENTS

COMPONENT XNOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : XNOR3	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : XOR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ADSU16 IS PORT (
	CI : IN std_logic;
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
	ADD : IN std_logic;
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
	S15 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END ADSU16;



ARCHITECTURE STRUCTURE OF ADSU16 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00313 : std_logic;
SIGNAL N00282 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL N00222 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00192 : std_logic;
SIGNAL N00252 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00163 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00253 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00223 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL N00312 : std_logic;
SIGNAL N00283 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL I0 : std_logic;
SIGNAL I14 : std_logic;
SIGNAL I7 : std_logic;
SIGNAL I3 : std_logic;
SIGNAL I15 : std_logic;
SIGNAL I6 : std_logic;
SIGNAL I10 : std_logic;
SIGNAL I4 : std_logic;
SIGNAL I5 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL SUB : std_logic;
SIGNAL I12 : std_logic;
SIGNAL I11 : std_logic;
SIGNAL I8 : std_logic;
SIGNAL I2 : std_logic;
SIGNAL I9 : std_logic;
SIGNAL I13 : std_logic;
SIGNAL C_IN : std_logic;

-- GATE INSTANCES

BEGIN
S13<=N00163;
S1<=N00282;
S14<=N00133;
S2<=N00252;
S15<=N00103;
S3<=N00222;
S4<=N00192;
S5<=N00162;
S6<=N00132;
S7<=N00102;
S8<=N00313;
S9<=N00283;
CO<=N00085;
S10<=N00253;
S11<=N00223;
S12<=N00193;
S0<=N00312;
U227 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => I1, 
	O => N00282
);
U77 : XOR2	PORT MAP(
	I1 => C12, 
	I0 => I13, 
	O => N00163
);
U78 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => I12, 
	O => N00193
);
U228 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => I3, 
	O => N00222
);
U79 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B15, 
	I0 => A15, 
	O => I15
);
U229 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => I2, 
	O => N00252
);
U16 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B8, 
	O => I8, 
	I1 => A8
);
U17 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B9, 
	O => I9, 
	I1 => A9
);
U18 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B10, 
	O => I10, 
	I1 => A10
);
U19 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B11, 
	O => I11, 
	I1 => A11
);
U303 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I4, 
	O => N00192, 
	I1 => C3
);
U304 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I3, 
	O => N00222, 
	I1 => C2
);
U305 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I2, 
	O => N00252, 
	I1 => C1
);
U306 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I1, 
	O => N00282, 
	I1 => C0
);
U307 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I0, 
	O => N00312, 
	I1 => C_IN
);
U308 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I7, 
	O => N00102, 
	I1 => C6
);
U309 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I6, 
	O => N00132, 
	I1 => C5
);
U291 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B5, 
	O => I5, 
	I1 => A5
);
U80 : XOR2	PORT MAP(
	I1 => C14, 
	I0 => I15, 
	O => N00103
);
U230 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => I5, 
	O => N00162
);
U231 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => I4, 
	O => N00192
);
U295 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B6, 
	O => I6, 
	I1 => A6
);
U81 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => I14, 
	O => N00133
);
U50 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B8, 
	I0 => A8, 
	O => I8
);
U232 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B7, 
	I0 => A7, 
	O => I7
);
U233 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => I7, 
	O => N00102
);
U20 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B12, 
	O => I12, 
	I1 => A12
);
U234 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => I6, 
	O => N00132
);
U299 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B7, 
	O => I7, 
	I1 => A7
);
U21 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B13, 
	O => I13, 
	I1 => A13
);
U22 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B14, 
	O => I14, 
	I1 => A14
);
U55 : CY_MUX	PORT MAP(
	S => I9, 
	CI => C8, 
	CO => C9, 
	DI => A9
);
U23 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B15, 
	O => I15, 
	I1 => A15
);
U56 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B10, 
	I0 => A10, 
	O => I10
);
U57 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B11, 
	I0 => A11, 
	O => I11
);
U58 : CY_MUX	PORT MAP(
	S => I11, 
	CI => C10, 
	CO => C11, 
	DI => A11
);
U59 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B14, 
	I0 => A14, 
	O => I14
);
U310 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I5, 
	O => N00162, 
	I1 => C4
);
U100 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B9, 
	I0 => A9, 
	O => I9
);
U107 : CY_MUX	PORT MAP(
	S => I14, 
	CI => C13, 
	CO => C14, 
	DI => A14
);
U272 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U109 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B13, 
	I0 => A13, 
	O => I13
);
U60 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B12, 
	I0 => A12, 
	O => I12
);
U243 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B1, 
	I0 => A1, 
	O => I1
);
U275 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U62 : CY_MUX	PORT MAP(
	S => I10, 
	CI => C9, 
	CO => C10, 
	DI => A10
);
U63 : CY_MUX	PORT MAP(
	S => I12, 
	CI => C11, 
	CO => C12, 
	DI => A12
);
U245 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B5, 
	I0 => A5, 
	O => I5
);
U64 : CY_MUX	PORT MAP(
	S => I15, 
	CI => C14, 
	CO => N00085, 
	DI => A15
);
U246 : INV	PORT MAP(
	O => SUB, 
	I => ADD
);
U279 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U248 : CY_MUX	PORT MAP(
	S => I7, 
	CI => C6, 
	CO => C7, 
	DI => A7
);
U249 : CY_MUX	PORT MAP(
	S => I6, 
	CI => C5, 
	CO => C6, 
	DI => A6
);
U37 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I8, 
	O => N00313, 
	I1 => C7
);
U38 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I9, 
	O => N00283, 
	I1 => C8
);
U39 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I10, 
	O => N00253, 
	I1 => C9
);
U353 : XOR2	PORT MAP(
	I1 => N00085, 
	I0 => C14, 
	O => OFL
);
U110 : CY_MUX	PORT MAP(
	S => I13, 
	CI => C12, 
	CO => C13, 
	DI => A13
);
U111 : CY_MUX	PORT MAP(
	S => I8, 
	CI => C7, 
	CO => C8, 
	DI => A8
);
U250 : CY_MUX	PORT MAP(
	S => I5, 
	CI => C4, 
	CO => C5, 
	DI => A5
);
U251 : CY_MUX	PORT MAP(
	S => I4, 
	CI => C3, 
	CO => C4, 
	DI => A4
);
U283 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U252 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C2, 
	CO => C3, 
	DI => A3
);
U220 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B0, 
	I0 => A0, 
	O => I0
);
U253 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C1, 
	CO => C2, 
	DI => A2
);
U254 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C0, 
	CO => C1, 
	DI => A1
);
U40 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I11, 
	O => N00223, 
	I1 => C10
);
U222 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B2, 
	I0 => A2, 
	O => I2
);
U41 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I12, 
	O => N00193, 
	I1 => C11
);
U223 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B3, 
	I0 => A3, 
	O => I3
);
U287 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B4, 
	O => I4, 
	I1 => A4
);
U255 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C_IN, 
	CO => C0, 
	DI => A0
);
U73 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => I8, 
	O => N00313
);
U42 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I13, 
	O => N00163, 
	I1 => C12
);
U224 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B6, 
	I0 => A6, 
	O => I6
);
U74 : XOR2	PORT MAP(
	I1 => C8, 
	I0 => I9, 
	O => N00283
);
U43 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I14, 
	O => N00133, 
	I1 => C13
);
U75 : XOR2	PORT MAP(
	I1 => C10, 
	I0 => I11, 
	O => N00223
);
U225 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B4, 
	I0 => A4, 
	O => I4
);
U226 : XOR2	PORT MAP(
	I1 => C_IN, 
	I0 => I0, 
	O => N00312
);
U76 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => I10, 
	O => N00253
);
U44 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I15, 
	O => N00103, 
	I1 => C14
);
U247 : CY_INIT	PORT MAP(
	COUT => C_IN, 
	INIT => CI
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BRLSHFT8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END BRLSHFT8;



ARCHITECTURE STRUCTURE OF BRLSHFT8 IS

-- COMPONENTS

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M67 : std_logic;
SIGNAL MO0 : std_logic;
SIGNAL MO1 : std_logic;
SIGNAL M12 : std_logic;
SIGNAL MO7 : std_logic;
SIGNAL M34 : std_logic;
SIGNAL MO6 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL MO4 : std_logic;
SIGNAL M56 : std_logic;
SIGNAL MO5 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL MO3 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL MO2 : std_logic;
SIGNAL M70 : std_logic;

-- GATE INSTANCES

BEGIN
U22 : M2_1	PORT MAP(
	D0 => I7, 
	D1 => I0, 
	S0 => S0, 
	O => M70
);
U12 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => MO0
);
U24 : M2_1	PORT MAP(
	D0 => M70, 
	D1 => M12, 
	S0 => S1, 
	O => MO7
);
U13 : M2_1	PORT MAP(
	D0 => M12, 
	D1 => M34, 
	S0 => S1, 
	O => MO1
);
U35 : M2_1	PORT MAP(
	D0 => M23, 
	D1 => M45, 
	S0 => S1, 
	O => MO2
);
U14 : M2_1	PORT MAP(
	D0 => I2, 
	D1 => I3, 
	S0 => S0, 
	O => M23
);
U47 : M2_1	PORT MAP(
	D0 => MO2, 
	D1 => MO6, 
	S0 => S2, 
	O => O2
);
U15 : M2_1	PORT MAP(
	D0 => I1, 
	D1 => I2, 
	S0 => S0, 
	O => M12
);
U48 : M2_1	PORT MAP(
	D0 => MO3, 
	D1 => MO7, 
	S0 => S2, 
	O => O3
);
U26 : M2_1	PORT MAP(
	D0 => M67, 
	D1 => M01, 
	S0 => S1, 
	O => MO6
);
U49 : M2_1	PORT MAP(
	D0 => MO4, 
	D1 => MO0, 
	S0 => S2, 
	O => O4
);
U16 : M2_1	PORT MAP(
	D0 => I0, 
	D1 => I1, 
	S0 => S0, 
	O => M01
);
U28 : M2_1	PORT MAP(
	D0 => M56, 
	D1 => M70, 
	S0 => S1, 
	O => MO5
);
U17 : M2_1	PORT MAP(
	D0 => I3, 
	D1 => I4, 
	S0 => S0, 
	O => M34
);
U19 : M2_1	PORT MAP(
	D0 => I6, 
	D1 => I7, 
	S0 => S0, 
	O => M67
);
U50 : M2_1	PORT MAP(
	D0 => MO5, 
	D1 => MO1, 
	S0 => S2, 
	O => O5
);
U51 : M2_1	PORT MAP(
	D0 => MO6, 
	D1 => MO2, 
	S0 => S2, 
	O => O6
);
U30 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => MO4
);
U52 : M2_1	PORT MAP(
	D0 => MO7, 
	D1 => MO3, 
	S0 => S2, 
	O => O7
);
U20 : M2_1	PORT MAP(
	D0 => I5, 
	D1 => I6, 
	S0 => S0, 
	O => M56
);
U53 : M2_1	PORT MAP(
	D0 => MO1, 
	D1 => MO5, 
	S0 => S2, 
	O => O1
);
U21 : M2_1	PORT MAP(
	D0 => I4, 
	D1 => I5, 
	S0 => S0, 
	O => M45
);
U32 : M2_1	PORT MAP(
	D0 => M34, 
	D1 => M56, 
	S0 => S1, 
	O => MO3
);
U54 : M2_1	PORT MAP(
	D0 => MO0, 
	D1 => MO4, 
	S0 => S2, 
	O => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILD16 IS PORT (
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
	G : IN std_logic;
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
); END ILD16;



ARCHITECTURE STRUCTURE OF ILD16 IS

-- COMPONENTS

COMPONENT ILD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U44 : ILD	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9
);
U33 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U45 : ILD	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8
);
U34 : ILD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U35 : ILD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U36 : ILD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U37 : ILD	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
U38 : ILD	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15
);
U39 : ILD	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14
);
U40 : ILD	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13
);
U41 : ILD	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12
);
U30 : ILD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U42 : ILD	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11
);
U31 : ILD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U43 : ILD	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10
);
U32 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILD_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ILD_1;



ARCHITECTURE STRUCTURE OF ILD_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT IBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT LD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_IN : std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U20 : INV	PORT MAP(
	O => GB, 
	I => G
);
U23 : IBUF	PORT MAP(
	O => D_IN, 
	I => D
);
U15 : LD	PORT MAP(
	D => D_IN, 
	G => GB, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND5B2 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END NAND5B2;



ARCHITECTURE STRUCTURE OF NAND5B2 IS

-- COMPONENTS

COMPONENT NAND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NAND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR5B4 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR5B4;



ARCHITECTURE STRUCTURE OF OR5B4 IS

-- COMPONENTS

COMPONENT OR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : OR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3B2	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR8 IS PORT (
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR8;



ARCHITECTURE STRUCTURE OF OR8 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : OR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : OR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP4 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4;



ARCHITECTURE STRUCTURE OF SOP4 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I01 : std_logic;
SIGNAL I23 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U8 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I01, 
	O => O
);
U9 : AND2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I01
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP4B1 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4B1;



ARCHITECTURE STRUCTURE OF SOP4B1 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I23 : std_logic;
SIGNAL I0B1 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U8 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I0B1, 
	O => O
);
U9 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR4CLED IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	SRI : IN std_logic;
	L : IN std_logic;
	LEFT : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END SR4CLED;



ARCHITECTURE STRUCTURE OF SR4CLED IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDL3 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00043 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00019;
Q1<=N00020;
Q2<=N00032;
Q3<=N00043;
U78 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U105 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U69 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00043
);
U72 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
U73 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00020
);
U74 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00032
);
U77 : M2_1	PORT MAP(
	D0 => N00020, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U79 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U80 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U70 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U81 : M2_1	PORT MAP(
	D0 => N00020, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U71 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U75 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U76 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LD IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END LD;



ARCHITECTURE STRUCTURE OF LD IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
U40 : VCC	PORT MAP(
	P => N00007
);
U43 : GND	PORT MAP(
	G => N00009
);
U44 : LDCE	PORT MAP(
	D => D, 
	G => G, 
	Q => Q, 
	CLR => N00009, 
	GE => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND6 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
); END NAND6;



ARCHITECTURE STRUCTURE OF NAND6 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I12 : std_logic;
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : AND2	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	O => I12
);
U85 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I12, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I3, 
	I1 => I4, 
	I2 => I5, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR5B4 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR5B4;



ARCHITECTURE STRUCTURE OF NOR5B4 IS

-- COMPONENTS

COMPONENT NOR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NOR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3B2	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR8 IS PORT (
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR8;



ARCHITECTURE STRUCTURE OF NOR8 IS

-- COMPONENTS

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00022 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;

-- GATE INSTANCES

BEGIN
U127 : NOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => O, 
	DI => N00022
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00022
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00035
);
U109 : GND	PORT MAP(
	G => N00022
);
U110 : NOR4	PORT MAP(
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => S0
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00035
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFD IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END OFD;



ARCHITECTURE STRUCTURE OF OFD IS

-- COMPONENTS

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL Q_OUT : std_logic;

-- GATE INSTANCES

BEGIN
U29 : OBUF	PORT MAP(
	O => Q, 
	I => Q_OUT
);
U15 : FD	PORT MAP(
	D => D, 
	C => C, 
	Q => Q_OUT
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFD4 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END OFD4;



ARCHITECTURE STRUCTURE OF OFD4 IS

-- COMPONENTS

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : OFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U30 : OFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U31 : OFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U32 : OFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END OFDE;



ARCHITECTURE STRUCTURE OF OFDE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U12 : INV	PORT MAP(
	O => T, 
	I => E
);
U15 : OFDT	PORT MAP(
	T => T, 
	D => D, 
	C => C, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE4 IS PORT (
	E : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END OFDE4;



ARCHITECTURE STRUCTURE OF OFDE4 IS

-- COMPONENTS

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U30 : OFDE	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0
);
U31 : OFDE	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1
);
U32 : OFDE	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CD4CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CD4CE;



ARCHITECTURE STRUCTURE OF CD4CE IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AX1 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL A03B : std_logic;
SIGNAL AO3A : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL OX3 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL D1 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00057;
Q0<=N00017;
Q1<=N00028;
Q2<=N00038;
Q3<=N00026;
U77 : AND2	PORT MAP(
	I0 => N00017, 
	I1 => N00028, 
	O => AX2
);
U78 : XOR2	PORT MAP(
	I1 => AX2, 
	I0 => N00038, 
	O => D2
);
U81 : AND2B1	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => AX1
);
U82 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00028
);
U83 : INV	PORT MAP(
	O => D0, 
	I => N00017
);
U84 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U85 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00038
);
U86 : XOR2	PORT MAP(
	I1 => AX1, 
	I0 => N00028, 
	O => D1
);
U87 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00026
);
U88 : AND2	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => AO3A
);
U105 : AND4B2	PORT MAP(
	I0 => N00038, 
	I1 => N00028, 
	I2 => N00017, 
	I3 => N00026, 
	O => N00057
);
U99 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00057, 
	O => CEO
);
U70 : AND3	PORT MAP(
	I0 => N00038, 
	I1 => N00017, 
	I2 => N00028, 
	O => A03B
);
U73 : XOR2	PORT MAP(
	I1 => OX3, 
	I0 => N00026, 
	O => D3
);
U75 : OR2	PORT MAP(
	I1 => A03B, 
	I0 => AO3A, 
	O => OX3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CJ8RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END CJ8RE;



ARCHITECTURE STRUCTURE OF CJ8RE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00018 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00018;
Q1<=N00025;
Q2<=N00035;
Q3<=N00013;
Q4<=N00014;
Q5<=N00024;
Q6<=N00034;
Q7<=N00011;
U61 : INV	PORT MAP(
	O => Q7B, 
	I => N00011
);
U77 : FDRE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00014
);
U78 : FDRE	PORT MAP(
	D => N00014, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00024
);
U79 : FDRE	PORT MAP(
	D => N00024, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00034
);
U80 : FDRE	PORT MAP(
	D => N00034, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00011
);
U30 : FDRE	PORT MAP(
	D => Q7B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U74 : FDRE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00025
);
U75 : FDRE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00035
);
U76 : FDRE	PORT MAP(
	D => N00035, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00013
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC_CC4 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	C_IN : IN std_logic;
	O : OUT std_logic
); END DEC_CC4;



ARCHITECTURE STRUCTURE OF DEC_CC4 IS

-- COMPONENTS

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;
SIGNAL S0 : std_logic;

-- GATE INSTANCES

BEGIN
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => C_IN, 
	CO => O, 
	DI => N00011
);
U109 : GND	PORT MAP(
	G => N00011
);
U110 : AND4	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	O => S0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDP_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END FDP_1;



ARCHITECTURE STRUCTURE OF FDP_1 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDPE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U37 : VCC	PORT MAP(
	P => N00008
);
U39 : INV	PORT MAP(
	O => CB, 
	I => C
);
U30 : FDPE	PORT MAP(
	D => D, 
	CE => N00008, 
	C => CB, 
	PRE => PRE, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDRE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END FDRE;



ARCHITECTURE STRUCTURE OF FDRE IS

-- COMPONENTS

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL A1 : std_logic;
SIGNAL QD : std_logic;
SIGNAL A0 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U32 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	I2 => CE, 
	O => A1
);
U33 : AND3B2	PORT MAP(
	I0 => CE, 
	I1 => R, 
	I2 => N00006, 
	O => A0
);
U34 : OR2	PORT MAP(
	I1 => A0, 
	I0 => A1, 
	O => QD
);
U42 : FD	PORT MAP(
	D => QD, 
	C => C, 
	Q => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDRSE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END FDRSE;



ARCHITECTURE STRUCTURE OF FDRSE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_S : std_logic;
SIGNAL CE_S : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR2	PORT MAP(
	I1 => S, 
	I0 => CE, 
	O => CE_S
);
U75 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => D_S
);
U79 : FDRE	PORT MAP(
	D => D_S, 
	CE => CE_S, 
	C => C, 
	R => R, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTC IS PORT (
	T : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END FTC;



ARCHITECTURE STRUCTURE OF FTC IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U32 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U35 : FDC	PORT MAP(
	D => TQ, 
	C => C, 
	CLR => CLR, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD8 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END IFD8;



ARCHITECTURE STRUCTURE OF IFD8 IS

-- COMPONENTS

COMPONENT IFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : IFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U34 : IFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U35 : IFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U36 : IFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U37 : IFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U38 : IFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U31 : IFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U32 : IFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CR8CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END CR8CE;



ARCHITECTURE STRUCTURE OF CR8CE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE_1	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ1 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ3 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00018;
Q1<=N00032;
Q2<=N00044;
Q3<=N00029;
Q4<=N00019;
Q5<=N00033;
Q6<=N00045;
Q7<=N00057;
U13 : INV	PORT MAP(
	O => TQ1, 
	I => N00032
);
U2 : INV	PORT MAP(
	O => TQ5, 
	I => N00033
);
U3 : INV	PORT MAP(
	O => TQ4, 
	I => N00019
);
U4 : INV	PORT MAP(
	O => TQ6, 
	I => N00045
);
U5 : INV	PORT MAP(
	O => TQ7, 
	I => N00057
);
U7 : INV	PORT MAP(
	O => TQ3, 
	I => N00029
);
U8 : INV	PORT MAP(
	O => TQ2, 
	I => N00044
);
U12 : INV	PORT MAP(
	O => TQ0, 
	I => N00018
);
U11 : FDCE_1	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => N00018, 
	CLR => CLR, 
	Q => N00032
);
U6 : FDCE_1	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => N00044, 
	CLR => CLR, 
	Q => N00029
);
U28 : FDCE_1	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => N00045, 
	CLR => CLR, 
	Q => N00057
);
U9 : FDCE_1	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => N00032, 
	CLR => CLR, 
	Q => N00044
);
U29 : FDCE_1	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => N00033, 
	CLR => CLR, 
	Q => N00045
);
U30 : FDCE_1	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => N00019, 
	CLR => CLR, 
	Q => N00033
);
U31 : FDCE_1	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => N00029, 
	CLR => CLR, 
	Q => N00019
);
U10 : FDCE_1	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD8CE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END FD8CE;



ARCHITECTURE STRUCTURE OF FD8CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U31 : FDCE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U32 : FDCE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q6
);
U33 : FDCE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q5
);
U34 : FDCE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q4
);
U35 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
);
U36 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U37 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U38 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDPE_1 IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END FDPE_1;



ARCHITECTURE STRUCTURE OF FDPE_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDPE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U39 : INV	PORT MAP(
	O => CB, 
	I => C
);
U30 : FDPE	PORT MAP(
	D => D, 
	CE => CE, 
	C => CB, 
	PRE => PRE, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FJKP IS PORT (
	J : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	K : IN std_logic
); END FJKP;



ARCHITECTURE STRUCTURE OF FJKP IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDP	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AD : std_logic;
SIGNAL A2 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A0 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U37 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => A0
);
U40 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U41 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U43 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U32 : FDP	PORT MAP(
	D => AD, 
	C => C, 
	PRE => PRE, 
	Q => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FJKPE IS PORT (
	J : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	K : IN std_logic
); END FJKPE;



ARCHITECTURE STRUCTURE OF FJKPE IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDPE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL A2 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U37 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => A0
);
U40 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U41 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U43 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U32 : FDPE	PORT MAP(
	D => AD, 
	CE => CE, 
	C => C, 
	PRE => PRE, 
	Q => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY INV8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END INV8;



ARCHITECTURE STRUCTURE OF INV8 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : INV	PORT MAP(
	O => O4, 
	I => I4
);
U31 : INV	PORT MAP(
	O => O5, 
	I => I5
);
U32 : INV	PORT MAP(
	O => O6, 
	I => I6
);
U33 : INV	PORT MAP(
	O => O7, 
	I => I7
);
U34 : INV	PORT MAP(
	O => O3, 
	I => I3
);
U35 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U36 : INV	PORT MAP(
	O => O1, 
	I => I1
);
U37 : INV	PORT MAP(
	O => O0, 
	I => I0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IOPAD16 IS PORT (
	IO0 : INOUT std_logic;
	IO1 : INOUT std_logic;
	IO2 : INOUT std_logic;
	IO3 : INOUT std_logic;
	IO4 : INOUT std_logic;
	IO5 : INOUT std_logic;
	IO6 : INOUT std_logic;
	IO7 : INOUT std_logic;
	IO8 : INOUT std_logic;
	IO9 : INOUT std_logic;
	IO10 : INOUT std_logic;
	IO11 : INOUT std_logic;
	IO12 : INOUT std_logic;
	IO13 : INOUT std_logic;
	IO14 : INOUT std_logic;
	IO15 : INOUT std_logic
); END IOPAD16;



ARCHITECTURE STRUCTURE OF IOPAD16 IS

-- COMPONENTS

COMPONENT IOPAD
	PORT (
	IOPAD : INOUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : IOPAD	PORT MAP(
	IOPAD => IO0
);
U30 : IOPAD	PORT MAP(
	IOPAD => IO8
);
U31 : IOPAD	PORT MAP(
	IOPAD => IO9
);
U32 : IOPAD	PORT MAP(
	IOPAD => IO10
);
U33 : IOPAD	PORT MAP(
	IOPAD => IO11
);
U34 : IOPAD	PORT MAP(
	IOPAD => IO15
);
U35 : IOPAD	PORT MAP(
	IOPAD => IO14
);
U36 : IOPAD	PORT MAP(
	IOPAD => IO13
);
U37 : IOPAD	PORT MAP(
	IOPAD => IO12
);
U38 : IOPAD	PORT MAP(
	IOPAD => IO4
);
U39 : IOPAD	PORT MAP(
	IOPAD => IO5
);
U40 : IOPAD	PORT MAP(
	IOPAD => IO6
);
U41 : IOPAD	PORT MAP(
	IOPAD => IO7
);
U42 : IOPAD	PORT MAP(
	IOPAD => IO3
);
U43 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U44 : IOPAD	PORT MAP(
	IOPAD => IO1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IOPAD4 IS PORT (
	IO0 : INOUT std_logic;
	IO1 : INOUT std_logic;
	IO2 : INOUT std_logic;
	IO3 : INOUT std_logic
); END IOPAD4;



ARCHITECTURE STRUCTURE OF IOPAD4 IS

-- COMPONENTS

COMPONENT IOPAD
	PORT (
	IOPAD : INOUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U46 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U47 : IOPAD	PORT MAP(
	IOPAD => IO3
);
U43 : IOPAD	PORT MAP(
	IOPAD => IO0
);
U44 : IOPAD	PORT MAP(
	IOPAD => IO1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR5B1 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR5B1;



ARCHITECTURE STRUCTURE OF OR5B1 IS

-- COMPONENTS

COMPONENT OR3B1
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : OR3B1	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR16RLED IS PORT (
	SLI : IN std_logic;
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
	SRI : IN std_logic;
	L : IN std_logic;
	LEFT : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
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
); END SR16RLED;



ARCHITECTURE STRUCTURE OF SR16RLED IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDR0 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL N00171 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL N00058 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00193;
Q0<=N00056;
Q1<=N00058;
Q2<=N00081;
Q3<=N00103;
Q4<=N00125;
Q5<=N00147;
Q6<=N00169;
Q7<=N00055;
Q8<=N00057;
Q9<=N00060;
Q10<=N00083;
Q11<=N00105;
Q12<=N00127;
Q13<=N00149;
Q14<=N00171;
U160 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U145 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U135 : M2_1	PORT MAP(
	D0 => N00103, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U124 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00056
);
U99 : FDRE	PORT MAP(
	D => MDR10, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00083
);
U66 : FDRE	PORT MAP(
	D => MDR15, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00193
);
U146 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U77 : M2_1	PORT MAP(
	D0 => N00149, 
	D1 => MDL12, 
	S0 => L_LEFT, 
	O => MDR12
);
U125 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00058
);
U67 : FDRE	PORT MAP(
	D => MDR14, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00171
);
U78 : M2_1	PORT MAP(
	D0 => N00127, 
	D1 => MDL11, 
	S0 => L_LEFT, 
	O => MDR11
);
U147 : M2_1	PORT MAP(
	D0 => N00056, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U136 : M2_1	PORT MAP(
	D0 => N00169, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U148 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U68 : FDRE	PORT MAP(
	D => MDR13, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00149
);
U126 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00081
);
U79 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => MDL8, 
	S0 => L_LEFT, 
	O => MDR8
);
U137 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U138 : M2_1	PORT MAP(
	D0 => N00169, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U127 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00103
);
U69 : FDRE	PORT MAP(
	D => MDR12, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00127
);
U149 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => D8, 
	S0 => L, 
	O => MDL8
);
U128 : FDRE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00125
);
U139 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U129 : FDRE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00147
);
U70 : FDRE	PORT MAP(
	D => MDR11, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00105
);
U81 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D9, 
	S0 => L, 
	O => MDL9
);
U71 : FDRE	PORT MAP(
	D => MDR9, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00060
);
U140 : M2_1	PORT MAP(
	D0 => N00125, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U82 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D10, 
	S0 => L, 
	O => MDL10
);
U72 : FDRE	PORT MAP(
	D => MDR8, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00057
);
U130 : FDRE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00169
);
U141 : M2_1	PORT MAP(
	D0 => N00081, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U83 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => D11, 
	S0 => L, 
	O => MDL11
);
U131 : FDRE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00055
);
U84 : M2_1	PORT MAP(
	D0 => N00105, 
	D1 => D12, 
	S0 => L, 
	O => MDL12
);
U142 : M2_1	PORT MAP(
	D0 => N00103, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U73 : M2_1	PORT MAP(
	D0 => N00105, 
	D1 => MDL10, 
	S0 => L_LEFT, 
	O => MDR10
);
U132 : M2_1	PORT MAP(
	D0 => N00147, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U85 : M2_1	PORT MAP(
	D0 => N00127, 
	D1 => D13, 
	S0 => L, 
	O => MDL13
);
U143 : M2_1	PORT MAP(
	D0 => N00081, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U74 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL15, 
	S0 => L_LEFT, 
	O => MDR15
);
U100 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL9, 
	S0 => L_LEFT, 
	O => MDR9
);
U133 : M2_1	PORT MAP(
	D0 => N00147, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U144 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U75 : M2_1	PORT MAP(
	D0 => N00193, 
	D1 => MDL14, 
	S0 => L_LEFT, 
	O => MDR14
);
U86 : M2_1	PORT MAP(
	D0 => N00149, 
	D1 => D14, 
	S0 => L, 
	O => MDL14
);
U87 : M2_1	PORT MAP(
	D0 => N00171, 
	D1 => D15, 
	S0 => L, 
	O => MDL15
);
U134 : M2_1	PORT MAP(
	D0 => N00125, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U76 : M2_1	PORT MAP(
	D0 => N00171, 
	D1 => MDL13, 
	S0 => L_LEFT, 
	O => MDR13
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_147 IS PORT (
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	A : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic
); END X74_147;



ARCHITECTURE STRUCTURE OF X74_147 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR5B1	 PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B1	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D7 : std_logic;
SIGNAL D4 : std_logic;
SIGNAL D9 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D6 : std_logic;
SIGNAL D11 : std_logic;
SIGNAL D10 : std_logic;

-- GATE INSTANCES

BEGIN
D<=N00022;
U13 : AND2B1	PORT MAP(
	I0 => I4, 
	I1 => N00022, 
	O => D8
);
U14 : NOR4	PORT MAP(
	I3 => D8, 
	I2 => D9, 
	I1 => D10, 
	I0 => D11, 
	O => C
);
U15 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00022, 
	O => D3
);
U16 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00022, 
	O => D7
);
U17 : AND2B1	PORT MAP(
	I0 => I6, 
	I1 => N00022, 
	O => D6
);
U2 : AND2	PORT MAP(
	I0 => I9, 
	I1 => I8, 
	O => N00022
);
U4 : AND4B1	PORT MAP(
	I0 => I2, 
	I1 => N00022, 
	I2 => I5, 
	I3 => I4, 
	O => D4
);
U5 : AND3B1	PORT MAP(
	I0 => I5, 
	I1 => N00022, 
	I2 => I6, 
	O => D2
);
U6 : AND4B1	PORT MAP(
	I0 => I3, 
	I1 => N00022, 
	I2 => I6, 
	I3 => I4, 
	O => D1
);
U8 : AND4B1	PORT MAP(
	I0 => I3, 
	I1 => N00022, 
	I2 => I5, 
	I3 => I4, 
	O => D5
);
U9 : NOR4	PORT MAP(
	I3 => D4, 
	I2 => D5, 
	I1 => D6, 
	I0 => D7, 
	O => B
);
U10 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00022, 
	O => D11
);
U11 : AND2B1	PORT MAP(
	I0 => I6, 
	I1 => N00022, 
	O => D10
);
U12 : AND2B1	PORT MAP(
	I0 => I5, 
	I1 => N00022, 
	O => D9
);
U3 : NOR5B1	PORT MAP(
	I4 => D0, 
	I3 => D1, 
	I2 => D2, 
	I1 => D3, 
	I0 => I9, 
	O => A
);
U7 : AND5B1	PORT MAP(
	I0 => I1, 
	I1 => N00022, 
	I2 => I6, 
	I3 => I4, 
	I4 => I2, 
	O => D0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_158 IS PORT (
	A1 : IN std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	S : IN std_logic;
	G : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic
); END X74_158;



ARCHITECTURE STRUCTURE OF X74_158 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL O1 : std_logic;
SIGNAL O4 : std_logic;
SIGNAL O3 : std_logic;
SIGNAL O2 : std_logic;
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
U100 : INV	PORT MAP(
	O => Y4, 
	I => O4
);
U92 : INV	PORT MAP(
	O => Y1, 
	I => O1
);
U96 : INV	PORT MAP(
	O => Y2, 
	I => O2
);
U98 : INV	PORT MAP(
	O => Y3, 
	I => O3
);
U66 : INV	PORT MAP(
	O => E, 
	I => G
);
U67 : M2_1E	PORT MAP(
	D0 => A4, 
	D1 => B4, 
	S0 => S, 
	O => O4, 
	E => E
);
U68 : M2_1E	PORT MAP(
	D0 => A3, 
	D1 => B3, 
	S0 => S, 
	O => O3, 
	E => E
);
U69 : M2_1E	PORT MAP(
	D0 => A2, 
	D1 => B2, 
	S0 => S, 
	O => O2, 
	E => E
);
U70 : M2_1E	PORT MAP(
	D0 => A1, 
	D1 => B1, 
	S0 => S, 
	O => O1, 
	E => E
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_521 IS PORT (
	P0 : IN std_logic;
	Q0 : IN std_logic;
	P1 : IN std_logic;
	Q1 : IN std_logic;
	P2 : IN std_logic;
	Q2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : IN std_logic;
	P4 : IN std_logic;
	Q4 : IN std_logic;
	P5 : IN std_logic;
	Q5 : IN std_logic;
	P6 : IN std_logic;
	Q6 : IN std_logic;
	P7 : IN std_logic;
	Q7 : IN std_logic;
	G : IN std_logic;
	PEQ : OUT std_logic
); END X74_521;



ARCHITECTURE STRUCTURE OF X74_521 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL PQ4 : std_logic;
SIGNAL PQ6 : std_logic;
SIGNAL PQ1 : std_logic;
SIGNAL PQ03 : std_logic;
SIGNAL PQ47 : std_logic;
SIGNAL PQ2 : std_logic;
SIGNAL PQ0 : std_logic;
SIGNAL PQ3 : std_logic;
SIGNAL PQ7 : std_logic;
SIGNAL PQ5 : std_logic;

-- GATE INSTANCES

BEGIN
U45 : XNOR2	PORT MAP(
	I1 => P0, 
	I0 => Q0, 
	O => PQ0
);
U32 : AND4	PORT MAP(
	I0 => PQ7, 
	I1 => PQ6, 
	I2 => PQ5, 
	I3 => PQ4, 
	O => PQ47
);
U33 : XNOR2	PORT MAP(
	I1 => P6, 
	I0 => Q6, 
	O => PQ6
);
U34 : XNOR2	PORT MAP(
	I1 => P7, 
	I0 => Q7, 
	O => PQ7
);
U35 : XNOR2	PORT MAP(
	I1 => P5, 
	I0 => Q5, 
	O => PQ5
);
U36 : XNOR2	PORT MAP(
	I1 => P4, 
	I0 => Q4, 
	O => PQ4
);
U41 : AND4	PORT MAP(
	I0 => PQ3, 
	I1 => PQ2, 
	I2 => PQ1, 
	I3 => PQ0, 
	O => PQ03
);
U42 : XNOR2	PORT MAP(
	I1 => P2, 
	I0 => Q2, 
	O => PQ2
);
U43 : XNOR2	PORT MAP(
	I1 => P3, 
	I0 => Q3, 
	O => PQ3
);
U76 : NAND3B1	PORT MAP(
	I0 => G, 
	I1 => PQ47, 
	I2 => PQ03, 
	O => PEQ
);
U44 : XNOR2	PORT MAP(
	I1 => P1, 
	I0 => Q1, 
	O => PQ1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XOR8 IS PORT (
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XOR8;



ARCHITECTURE STRUCTURE OF XOR8 IS

-- COMPONENTS

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : XOR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : XOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_138 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	G2A : IN std_logic;
	G2B : IN std_logic;
	G1 : IN std_logic;
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic
); END X74_138;



ARCHITECTURE STRUCTURE OF X74_138 IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
U48 : AND3B2	PORT MAP(
	I0 => G2B, 
	I1 => G2A, 
	I2 => G1, 
	O => E
);
U58 : NAND4B3	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y0
);
U59 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y1
);
U60 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => E, 
	O => Y2
);
U61 : NAND4B1	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => E, 
	O => Y3
);
U62 : NAND4B2	PORT MAP(
	I0 => B, 
	I1 => A, 
	I2 => C, 
	I3 => E, 
	O => Y4
);
U63 : NAND4B1	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => A, 
	I3 => E, 
	O => Y5
);
U64 : NAND4B1	PORT MAP(
	I0 => A, 
	I1 => C, 
	I2 => B, 
	I3 => E, 
	O => Y6
);
U65 : NAND4	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ACC16 IS PORT (
	CI : IN std_logic;
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
	L : IN std_logic;
	ADD : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
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
	Q15 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic;
	R : IN std_logic
); END ACC16;



ARCHITECTURE STRUCTURE OF ACC16 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT ADSU16	 PORT (
	CI : IN std_logic;
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
	ADD : IN std_logic;
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
	S15 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S : std_logic_vector(15 DOWNTO 0);
SIGNAL N00073 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL R_SD14 : std_logic;
SIGNAL R_SD11 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL R_SD7 : std_logic;
SIGNAL R_SD8 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL R_SD10 : std_logic;
SIGNAL R_SD4 : std_logic;
SIGNAL R_SD15 : std_logic;
SIGNAL R_SD9 : std_logic;
SIGNAL R_SD5 : std_logic;
SIGNAL R_SD12 : std_logic;
SIGNAL R_SD6 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL S11 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL S14 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL SD6 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL SD13 : std_logic;
SIGNAL SD5 : std_logic;
SIGNAL SD12 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL R_SD13 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL S15 : std_logic;
SIGNAL S8 : std_logic;
SIGNAL S12 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL SD4 : std_logic;
SIGNAL S9 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S10 : std_logic;
SIGNAL SD10 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL SD11 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL SD14 : std_logic;
SIGNAL S13 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL SD15 : std_logic;
SIGNAL SD8 : std_logic;
SIGNAL R_L_CE : std_logic;
SIGNAL SD7 : std_logic;
SIGNAL SD9 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00101;
Q0<=N00071;
Q1<=N00073;
Q2<=N00075;
Q3<=N00077;
Q4<=N00079;
Q5<=N00081;
Q6<=N00083;
Q7<=N00085;
Q8<=N00087;
Q9<=N00089;
Q10<=N00091;
Q11<=N00093;
Q12<=N00095;
Q13<=N00097;
Q14<=N00099;
U77 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD15, 
	O => R_SD15
);
U78 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD14, 
	O => R_SD14
);
U79 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD13, 
	O => R_SD13
);
U150 : FDCE	PORT MAP(
	D => R_SD9, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00089
);
U151 : FDCE	PORT MAP(
	D => R_SD10, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00091
);
U152 : FDCE	PORT MAP(
	D => R_SD11, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00093
);
U120 : FDCE	PORT MAP(
	D => R_SD7, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00085
);
U184 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S15, 
	I2 => D15, 
	O => R_SD15, 
	I1 => L
);
U185 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S14, 
	I2 => D14, 
	O => R_SD14, 
	I1 => L
);
U153 : FDCE	PORT MAP(
	D => R_SD12, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00095
);
U154 : FDCE	PORT MAP(
	D => R_SD13, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00097
);
U186 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S13, 
	I2 => D13, 
	O => R_SD13, 
	I1 => L
);
U155 : FDCE	PORT MAP(
	D => R_SD14, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00099
);
U187 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S12, 
	I2 => D12, 
	O => R_SD12, 
	I1 => L
);
U156 : FDCE	PORT MAP(
	D => R_SD15, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00101
);
U188 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S11, 
	I2 => D11, 
	O => R_SD11, 
	I1 => L
);
U189 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S10, 
	I2 => D10, 
	O => R_SD10, 
	I1 => L
);
U80 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD12, 
	O => R_SD12
);
U1 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S0, 
	I2 => D0, 
	O => R_SD0, 
	I1 => L
);
U2 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S1, 
	I2 => D1, 
	O => R_SD1, 
	I1 => L
);
U3 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S2, 
	I2 => D2, 
	O => R_SD2, 
	I1 => L
);
U4 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S3, 
	I2 => D3, 
	O => R_SD3, 
	I1 => L
);
U5 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S4, 
	I2 => D4, 
	O => R_SD4, 
	I1 => L
);
U6 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S5, 
	I2 => D5, 
	O => R_SD5, 
	I1 => L
);
U7 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S6, 
	I2 => D6, 
	O => R_SD6, 
	I1 => L
);
U8 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S7, 
	I2 => D7, 
	O => R_SD7, 
	I1 => L
);
U190 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S9, 
	I2 => D9, 
	O => R_SD9, 
	I1 => L
);
U191 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S8, 
	I2 => D8, 
	O => R_SD8, 
	I1 => L
);
U166 : FDCE	PORT MAP(
	D => R_SD6, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00083
);
U104 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00073
);
U105 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD4, 
	O => R_SD4
);
U106 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD5, 
	O => R_SD5
);
U107 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD6, 
	O => R_SD6
);
U108 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD7, 
	O => R_SD7
);
U109 : GND	PORT MAP(
	G => N00151
);
U110 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U111 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U112 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD0, 
	O => R_SD0
);
U113 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD1, 
	O => R_SD1
);
U114 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => R_L_CE
);
U115 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00071
);
U116 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00075
);
U117 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00077
);
U149 : FDCE	PORT MAP(
	D => R_SD8, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00152, 
	Q => N00087
);
U118 : FDCE	PORT MAP(
	D => R_SD4, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00079
);
U119 : FDCE	PORT MAP(
	D => R_SD5, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00151, 
	Q => N00081
);
U72 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD9, 
	O => R_SD9
);
U73 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD8, 
	O => R_SD8
);
U74 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD10, 
	O => R_SD10
);
U75 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD11, 
	O => R_SD11
);
U76 : GND	PORT MAP(
	G => N00152
);
U124 : M2_1	PORT MAP(
	D0 => S4, 
	D1 => D4, 
	S0 => L, 
	O => SD4
);
U135 : M2_1	PORT MAP(
	D0 => S15, 
	D1 => D15, 
	S0 => L, 
	O => SD15
);
U202 : ADSU16	PORT MAP(
	CI => CI, 
	A0 => N00071, 
	A1 => N00073, 
	A2 => N00075, 
	A3 => N00077, 
	A4 => N00079, 
	A5 => N00081, 
	A6 => N00083, 
	A7 => N00085, 
	A8 => N00087, 
	A9 => N00089, 
	A10 => N00091, 
	A11 => N00093, 
	A12 => N00095, 
	A13 => N00097, 
	A14 => N00099, 
	A15 => N00101, 
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
	B15 => B15, 
	ADD => ADD, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	S4 => S4, 
	S5 => S5, 
	S6 => S6, 
	S7 => S7, 
	S8 => S8, 
	S9 => S9, 
	S10 => S10, 
	S11 => S11, 
	S12 => S12, 
	S13 => S13, 
	S14 => S14, 
	S15 => S15, 
	CO => CO, 
	OFL => OFL
);
U125 : M2_1	PORT MAP(
	D0 => S5, 
	D1 => D5, 
	S0 => L, 
	O => SD5
);
U126 : M2_1	PORT MAP(
	D0 => S6, 
	D1 => D6, 
	S0 => L, 
	O => SD6
);
U127 : M2_1	PORT MAP(
	D0 => S7, 
	D1 => D7, 
	S0 => L, 
	O => SD7
);
U128 : M2_1	PORT MAP(
	D0 => S8, 
	D1 => D8, 
	S0 => L, 
	O => SD8
);
U129 : M2_1	PORT MAP(
	D0 => S9, 
	D1 => D9, 
	S0 => L, 
	O => SD9
);
U161 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U130 : M2_1	PORT MAP(
	D0 => S10, 
	D1 => D10, 
	S0 => L, 
	O => SD10
);
U131 : M2_1	PORT MAP(
	D0 => S11, 
	D1 => D11, 
	S0 => L, 
	O => SD11
);
U132 : M2_1	PORT MAP(
	D0 => S12, 
	D1 => D12, 
	S0 => L, 
	O => SD12
);
U121 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U122 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U133 : M2_1	PORT MAP(
	D0 => S13, 
	D1 => D13, 
	S0 => L, 
	O => SD13
);
U123 : M2_1	PORT MAP(
	D0 => S3, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U134 : M2_1	PORT MAP(
	D0 => S14, 
	D1 => D14, 
	S0 => L, 
	O => SD14
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ADD16 IS PORT (
	CI : IN std_logic;
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
	S15 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END ADD16;



ARCHITECTURE STRUCTURE OF ADD16 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I12 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL I9 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL N00280 : std_logic;
SIGNAL I2 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL I15 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL I10 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL I5 : std_logic;
SIGNAL I4 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL I7 : std_logic;
SIGNAL N00253 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL I11 : std_logic;
SIGNAL I3 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL I13 : std_logic;
SIGNAL N00202 : std_logic;
SIGNAL N00254 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL I14 : std_logic;
SIGNAL I8 : std_logic;
SIGNAL N00228 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL I6 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00279 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL I0 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00227 : std_logic;
SIGNAL N00123 : std_logic;

-- GATE INSTANCES

BEGIN
S13<=N00150;
S1<=N00253;
S2<=N00227;
S14<=N00124;
S15<=N00098;
S3<=N00201;
S4<=N00175;
S5<=N00149;
S6<=N00123;
S7<=N00097;
S8<=N00280;
S9<=N00254;
CO<=N00084;
S10<=N00228;
S11<=N00202;
S0<=N00279;
S12<=N00176;
U77 : XOR2	PORT MAP(
	I1 => C12, 
	I0 => I13, 
	O => N00150
);
U227 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => I1, 
	O => N00253
);
U78 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => I12, 
	O => N00176
);
U228 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => I3, 
	O => N00201
);
U229 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => I2, 
	O => N00227
);
U360 : XOR2	PORT MAP(
	I1 => B6, 
	I0 => A6, 
	O => I6
);
U361 : XOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => I7
);
U16 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B8, 
	O => I8, 
	I1 => A8
);
U17 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B9, 
	O => I9, 
	I1 => A9
);
U362 : XOR2	PORT MAP(
	I1 => B8, 
	I0 => A8, 
	O => I8
);
U18 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B10, 
	O => I10, 
	I1 => A10
);
U363 : XOR2	PORT MAP(
	I1 => B9, 
	I0 => A9, 
	O => I9
);
U19 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B11, 
	O => I11, 
	I1 => A11
);
U364 : XOR2	PORT MAP(
	I1 => B10, 
	I0 => A10, 
	O => I10
);
U365 : XOR2	PORT MAP(
	I1 => B11, 
	I0 => A11, 
	O => I11
);
U366 : XOR2	PORT MAP(
	I1 => B12, 
	I0 => A12, 
	O => I12
);
U367 : XOR2	PORT MAP(
	I1 => B13, 
	I0 => A13, 
	O => I13
);
U303 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I4, 
	O => N00175, 
	I1 => C3
);
U368 : XOR2	PORT MAP(
	I1 => B14, 
	I0 => A14, 
	O => I14
);
U304 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I3, 
	O => N00201, 
	I1 => C2
);
U369 : XOR2	PORT MAP(
	I1 => B15, 
	I0 => A15, 
	O => I15
);
U305 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I2, 
	O => N00227, 
	I1 => C1
);
U306 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I1, 
	O => N00253, 
	I1 => C0
);
U307 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I0, 
	O => N00279, 
	I1 => C_IN
);
U308 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I7, 
	O => N00097, 
	I1 => C6
);
U309 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I6, 
	O => N00123, 
	I1 => C5
);
U291 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B5, 
	O => I5, 
	I1 => A5
);
U230 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => I5, 
	O => N00149
);
U80 : XOR2	PORT MAP(
	I1 => C14, 
	I0 => I15, 
	O => N00098
);
U231 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => I4, 
	O => N00175
);
U81 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => I14, 
	O => N00124
);
U295 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B6, 
	O => I6, 
	I1 => A6
);
U233 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => I7, 
	O => N00097
);
U20 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B12, 
	O => I12, 
	I1 => A12
);
U234 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => I6, 
	O => N00123
);
U299 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B7, 
	O => I7, 
	I1 => A7
);
U21 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B13, 
	O => I13, 
	I1 => A13
);
U22 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B14, 
	O => I14, 
	I1 => A14
);
U23 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B15, 
	O => I15, 
	I1 => A15
);
U55 : CY_MUX	PORT MAP(
	S => I9, 
	CI => C8, 
	CO => C9, 
	DI => A9
);
U58 : CY_MUX	PORT MAP(
	S => I11, 
	CI => C10, 
	CO => C11, 
	DI => A11
);
U310 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I5, 
	O => N00149, 
	I1 => C4
);
U375 : XOR2	PORT MAP(
	I1 => N00084, 
	I0 => C14, 
	O => OFL
);
U107 : CY_MUX	PORT MAP(
	S => I14, 
	CI => C13, 
	CO => C14, 
	DI => A14
);
U272 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U275 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U62 : CY_MUX	PORT MAP(
	S => I10, 
	CI => C9, 
	CO => C10, 
	DI => A10
);
U63 : CY_MUX	PORT MAP(
	S => I12, 
	CI => C11, 
	CO => C12, 
	DI => A12
);
U64 : CY_MUX	PORT MAP(
	S => I15, 
	CI => C14, 
	CO => N00084, 
	DI => A15
);
U279 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U248 : CY_MUX	PORT MAP(
	S => I7, 
	CI => C6, 
	CO => C7, 
	DI => A7
);
U249 : CY_MUX	PORT MAP(
	S => I6, 
	CI => C5, 
	CO => C6, 
	DI => A6
);
U37 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I8, 
	O => N00280, 
	I1 => C7
);
U38 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I9, 
	O => N00254, 
	I1 => C8
);
U39 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I10, 
	O => N00228, 
	I1 => C9
);
U354 : XOR2	PORT MAP(
	I1 => B0, 
	I0 => A0, 
	O => I0
);
U355 : XOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => I1
);
U356 : XOR2	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => I2
);
U357 : XOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => I3
);
U358 : XOR2	PORT MAP(
	I1 => B4, 
	I0 => A4, 
	O => I4
);
U359 : XOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => I5
);
U110 : CY_MUX	PORT MAP(
	S => I13, 
	CI => C12, 
	CO => C13, 
	DI => A13
);
U111 : CY_MUX	PORT MAP(
	S => I8, 
	CI => C7, 
	CO => C8, 
	DI => A8
);
U250 : CY_MUX	PORT MAP(
	S => I5, 
	CI => C4, 
	CO => C5, 
	DI => A5
);
U283 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U251 : CY_MUX	PORT MAP(
	S => I4, 
	CI => C3, 
	CO => C4, 
	DI => A4
);
U252 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C2, 
	CO => C3, 
	DI => A3
);
U253 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C1, 
	CO => C2, 
	DI => A2
);
U254 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C0, 
	CO => C1, 
	DI => A1
);
U40 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I11, 
	O => N00202, 
	I1 => C10
);
U255 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C_IN, 
	CO => C0, 
	DI => A0
);
U73 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => I8, 
	O => N00280
);
U41 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I12, 
	O => N00176, 
	I1 => C11
);
U287 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B4, 
	O => I4, 
	I1 => A4
);
U74 : XOR2	PORT MAP(
	I1 => C8, 
	I0 => I9, 
	O => N00254
);
U42 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I13, 
	O => N00150, 
	I1 => C12
);
U75 : XOR2	PORT MAP(
	I1 => C10, 
	I0 => I11, 
	O => N00202
);
U43 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I14, 
	O => N00124, 
	I1 => C13
);
U44 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I15, 
	O => N00098, 
	I1 => C14
);
U226 : XOR2	PORT MAP(
	I1 => C_IN, 
	I0 => I0, 
	O => N00279
);
U76 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => I10, 
	O => N00228
);
U247 : CY_INIT	PORT MAP(
	COUT => C_IN, 
	INIT => CI
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND5B5 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END AND5B5;



ARCHITECTURE STRUCTURE OF AND5B5 IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : AND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3B3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND9 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	O : OUT std_logic
); END AND9;



ARCHITECTURE STRUCTURE OF AND9 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S2 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;

-- GATE INSTANCES

BEGIN
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00019
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00019
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00044
);
U109 : GND	PORT MAP(
	G => N00019
);
U172 : BUF	PORT MAP(
	O => S2, 
	I => I8
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S2, 
	I1 => I8
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00019
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00044
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFT4 IS PORT (
	T : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END BUFT4;



ARCHITECTURE STRUCTURE OF BUFT4 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U37 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U38 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U39 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U40 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB16CLE IS PORT (
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
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB16CLE;



ARCHITECTURE STRUCTURE OF CB16CLE IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00079 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00198 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00184 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00192 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00128 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00192;
TC<=N00198;
Q0<=N00038;
Q1<=N00058;
Q2<=N00079;
Q3<=N00102;
Q4<=N00118;
Q5<=N00138;
Q6<=N00160;
Q7<=N00184;
Q8<=N00043;
Q9<=N00065;
Q10<=N00089;
Q11<=N00110;
Q12<=N00128;
Q13<=N00149;
Q14<=N00172;
U13 : AND3	PORT MAP(
	I0 => N00138, 
	I1 => N00118, 
	I2 => T4, 
	O => T6
);
U14 : AND2	PORT MAP(
	I0 => N00118, 
	I1 => T4, 
	O => T5
);
U15 : AND4	PORT MAP(
	I0 => N00160, 
	I1 => N00138, 
	I2 => N00118, 
	I3 => T4, 
	O => T7
);
U17 : AND4	PORT MAP(
	I0 => N00102, 
	I1 => N00079, 
	I2 => N00058, 
	I3 => N00038, 
	O => T4
);
U18 : AND3	PORT MAP(
	I0 => N00079, 
	I1 => N00058, 
	I2 => N00038, 
	O => T3
);
U19 : AND2	PORT MAP(
	I0 => N00058, 
	I1 => N00038, 
	O => T2
);
U3 : AND4	PORT MAP(
	I0 => N00172, 
	I1 => N00149, 
	I2 => N00128, 
	I3 => T12, 
	O => T15
);
U4 : AND2	PORT MAP(
	I0 => N00128, 
	I1 => T12, 
	O => T13
);
U5 : AND3	PORT MAP(
	I0 => N00149, 
	I1 => N00128, 
	I2 => T12, 
	O => T14
);
U6 : AND3	PORT MAP(
	I0 => N00065, 
	I1 => N00043, 
	I2 => T8, 
	O => T10
);
U7 : AND2	PORT MAP(
	I0 => N00043, 
	I1 => T8, 
	O => T9
);
U8 : AND4	PORT MAP(
	I0 => N00089, 
	I1 => N00065, 
	I2 => N00043, 
	I3 => T8, 
	O => T11
);
U56 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00198, 
	O => CEO
);
U31 : VCC	PORT MAP(
	P => N00040
);
U33 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00040, 
	CE => CE, 
	C => C, 
	Q => N00038, 
	CLR => CLR
);
U22 : FTCLE	PORT MAP(
	D => D11, 
	L => L, 
	T => T11, 
	CE => CE, 
	C => C, 
	Q => N00110, 
	CLR => CLR
);
U34 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00138, 
	CLR => CLR
);
U23 : FTCLE	PORT MAP(
	D => D12, 
	L => L, 
	T => T12, 
	CE => CE, 
	C => C, 
	Q => N00128, 
	CLR => CLR
);
U35 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00184, 
	CLR => CLR
);
U24 : FTCLE	PORT MAP(
	D => D13, 
	L => L, 
	T => T13, 
	CE => CE, 
	C => C, 
	Q => N00149, 
	CLR => CLR
);
U25 : FTCLE	PORT MAP(
	D => D14, 
	L => L, 
	T => T14, 
	CE => CE, 
	C => C, 
	Q => N00172, 
	CLR => CLR
);
U36 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00118, 
	CLR => CLR
);
U26 : FTCLE	PORT MAP(
	D => D15, 
	L => L, 
	T => T15, 
	CE => CE, 
	C => C, 
	Q => N00192, 
	CLR => CLR
);
U37 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00160, 
	CLR => CLR
);
U16 : AND5	PORT MAP(
	I0 => N00184, 
	I1 => N00160, 
	I2 => N00138, 
	I3 => N00118, 
	I4 => T4, 
	O => T8
);
U27 : FTCLE	PORT MAP(
	D => D9, 
	L => L, 
	T => T9, 
	CE => CE, 
	C => C, 
	Q => N00065, 
	CLR => CLR
);
U9 : AND5	PORT MAP(
	I0 => N00110, 
	I1 => N00089, 
	I2 => N00065, 
	I3 => N00043, 
	I4 => T8, 
	O => T12
);
U28 : FTCLE	PORT MAP(
	D => D8, 
	L => L, 
	T => T8, 
	CE => CE, 
	C => C, 
	Q => N00043, 
	CLR => CLR
);
U29 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00102, 
	CLR => CLR
);
U30 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00079, 
	CLR => CLR
);
U2 : AND5	PORT MAP(
	I0 => N00192, 
	I1 => N00172, 
	I2 => N00149, 
	I3 => N00128, 
	I4 => T12, 
	O => N00198
);
U32 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00038, 
	CE => CE, 
	C => C, 
	Q => N00058, 
	CLR => CLR
);
U21 : FTCLE	PORT MAP(
	D => D10, 
	L => L, 
	T => T10, 
	CE => CE, 
	C => C, 
	Q => N00089, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB2CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB2CE;



ARCHITECTURE STRUCTURE OF CB2CE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00019;
Q0<=N00007;
Q1<=N00014;
U47 : VCC	PORT MAP(
	P => N00008
);
U52 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00019, 
	O => CEO
);
U37 : AND2	PORT MAP(
	I0 => N00014, 
	I1 => N00007, 
	O => N00019
);
U34 : FTCE	PORT MAP(
	T => N00007, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U35 : FTCE	PORT MAP(
	T => N00008, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_161 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	LOAD : IN std_logic;
	ENP : IN std_logic;
	ENT : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	RCO : OUT std_logic
); END X74_161;



ARCHITECTURE STRUCTURE OF X74_161 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T2 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL LOADB : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL CE : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00015;
QB<=N00024;
QC<=N00034;
QD<=N00046;
U59 : VCC	PORT MAP(
	P => N00016
);
U103 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U109 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U98 : AND2	PORT MAP(
	I0 => N00024, 
	I1 => N00015, 
	O => T2
);
U99 : AND3	PORT MAP(
	I0 => N00034, 
	I1 => N00024, 
	I2 => N00015, 
	O => T3
);
U119 : INV	PORT MAP(
	O => LOADB, 
	I => LOAD
);
U107 : AND5	PORT MAP(
	I0 => ENT, 
	I1 => N00015, 
	I2 => N00024, 
	I3 => N00034, 
	I4 => N00046, 
	O => RCO
);
U40 : FTCLE	PORT MAP(
	D => A, 
	L => LOADB, 
	T => N00016, 
	CE => CE, 
	C => CK, 
	Q => N00015, 
	CLR => CLRB
);
U41 : FTCLE	PORT MAP(
	D => B, 
	L => LOADB, 
	T => N00015, 
	CE => CE, 
	C => CK, 
	Q => N00024, 
	CLR => CLRB
);
U42 : FTCLE	PORT MAP(
	D => C, 
	L => LOADB, 
	T => T2, 
	CE => CE, 
	C => CK, 
	Q => N00034, 
	CLR => CLRB
);
U43 : FTCLE	PORT MAP(
	D => D, 
	L => LOADB, 
	T => T3, 
	CE => CE, 
	C => CK, 
	Q => N00046, 
	CLR => CLRB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_194 IS PORT (
	SLI : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	SRI : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic
); END X74_194;



ARCHITECTURE STRUCTURE OF X74_194 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MB : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL MLD : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL MA : std_logic;
SIGNAL MRB : std_logic;
SIGNAL MRD : std_logic;
SIGNAL MLC : std_logic;
SIGNAL MC : std_logic;
SIGNAL MLA : std_logic;
SIGNAL MD : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MLB : std_logic;
SIGNAL MRA : std_logic;
SIGNAL MRC : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00019;
QB<=N00022;
QC<=N00036;
QD<=N00049;
U35 : INV	PORT MAP(
	O => N00032, 
	I => CLR
);
U33 : M2_1	PORT MAP(
	D0 => N00036, 
	D1 => D, 
	S0 => S1, 
	O => MRD
);
U44 : M2_1	PORT MAP(
	D0 => MLD, 
	D1 => MRD, 
	S0 => S0, 
	O => MD
);
U12 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => A, 
	S0 => S1, 
	O => MRA
);
U23 : M2_1	PORT MAP(
	D0 => N00022, 
	D1 => C, 
	S0 => S1, 
	O => MRC
);
U14 : FDC	PORT MAP(
	D => MC, 
	C => CK, 
	CLR => N00032, 
	Q => N00036
);
U15 : FDC	PORT MAP(
	D => MA, 
	C => CK, 
	CLR => N00032, 
	Q => N00019
);
U16 : FDC	PORT MAP(
	D => MD, 
	C => CK, 
	CLR => N00032, 
	Q => N00049
);
U29 : FDC	PORT MAP(
	D => MB, 
	C => CK, 
	CLR => N00032, 
	Q => N00022
);
U19 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => B, 
	S0 => S1, 
	O => MRB
);
U41 : M2_1	PORT MAP(
	D0 => MLB, 
	D1 => MRB, 
	S0 => S0, 
	O => MB
);
U30 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => N00022, 
	S0 => S1, 
	O => MLA
);
U31 : M2_1	PORT MAP(
	D0 => N00022, 
	D1 => N00036, 
	S0 => S1, 
	O => MLB
);
U20 : M2_1	PORT MAP(
	D0 => N00036, 
	D1 => N00049, 
	S0 => S1, 
	O => MLC
);
U42 : M2_1	PORT MAP(
	D0 => MLC, 
	D1 => MRC, 
	S0 => S0, 
	O => MC
);
U43 : M2_1	PORT MAP(
	D0 => MLA, 
	D1 => MRA, 
	S0 => S0, 
	O => MA
);
U32 : M2_1	PORT MAP(
	D0 => N00049, 
	D1 => SLI, 
	S0 => S1, 
	O => MLD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_42 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y0 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y8 : OUT std_logic;
	Y9 : OUT std_logic
); END X74_42;



ARCHITECTURE STRUCTURE OF X74_42 IS

-- COMPONENTS

COMPONENT NAND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => A, 
	I3 => B, 
	O => Y2
);
U46 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => A, 
	I3 => C, 
	O => Y4
);
U47 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => C, 
	I3 => A, 
	O => Y5
);
U48 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => A, 
	I2 => C, 
	I3 => B, 
	O => Y6
);
U50 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => D, 
	O => Y9
);
U40 : NAND4B1	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y7
);
U41 : NAND4B3	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => D, 
	O => Y8
);
U42 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y3
);
U43 : OR4	PORT MAP(
	I3 => A, 
	I2 => B, 
	I1 => C, 
	I0 => D, 
	O => Y0
);
U44 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND16 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O : OUT std_logic
); END AND16;



ARCHITECTURE STRUCTURE OF AND16 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S1 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : AND4	PORT MAP(
	I0 => I8, 
	I1 => I9, 
	I2 => I10, 
	I3 => I11, 
	O => S2
);
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00028
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00028
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U161 : AND4	PORT MAP(
	I0 => I12, 
	I1 => I13, 
	I2 => I14, 
	I3 => I15, 
	O => S3
);
U165 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C2, 
	CO => O, 
	DI => N00028
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00065
);
U109 : GND	PORT MAP(
	G => N00028
);
U170 : FMAP	PORT MAP(
	I4 => I15, 
	I3 => I14, 
	I2 => I13, 
	O => S3, 
	I1 => I12
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => C2, 
	DI => N00028
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00065
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB2CLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB2CLE;



ARCHITECTURE STRUCTURE OF CB2CLE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00018 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00022;
Q0<=N00009;
Q1<=N00018;
U47 : VCC	PORT MAP(
	P => N00010
);
U50 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00022, 
	O => CEO
);
U37 : AND2	PORT MAP(
	I0 => N00018, 
	I1 => N00009, 
	O => N00022
);
U34 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00009, 
	CE => CE, 
	C => C, 
	Q => N00018, 
	CLR => CLR
);
U35 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00010, 
	CE => CE, 
	C => C, 
	Q => N00009, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CC16RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CC16RE;



ARCHITECTURE STRUCTURE OF CC16RE IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL R_TQ10 : std_logic;
SIGNAL R_TQ3 : std_logic;
SIGNAL R_TQ15 : std_logic;
SIGNAL R_TQ0 : std_logic;
SIGNAL R_TQ1 : std_logic;
SIGNAL R_TQ9 : std_logic;
SIGNAL R_TQ2 : std_logic;
SIGNAL R_TQ6 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL CE_M5 : std_logic;
SIGNAL CE_M9 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL R_TQ11 : std_logic;
SIGNAL R_TQ12 : std_logic;
SIGNAL R_TQ14 : std_logic;
SIGNAL R_TQ8 : std_logic;
SIGNAL R_TQ13 : std_logic;
SIGNAL R_TQ7 : std_logic;
SIGNAL R_TQ5 : std_logic;
SIGNAL R_TQ4 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL CE_M12 : std_logic;
SIGNAL CE_M1 : std_logic;
SIGNAL CE_M11 : std_logic;
SIGNAL CE_M10 : std_logic;
SIGNAL CE_M8 : std_logic;
SIGNAL CEB : std_logic;
SIGNAL CE_M13 : std_logic;
SIGNAL CE_M14 : std_logic;
SIGNAL CE_M7 : std_logic;
SIGNAL CE_M3 : std_logic;
SIGNAL CE_M6 : std_logic;
SIGNAL CE_M2 : std_logic;
SIGNAL CE_M15 : std_logic;
SIGNAL CE_M0 : std_logic;
SIGNAL CE_M4 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00231 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL N00390 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL C15 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00310 : std_logic;
SIGNAL N00391 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL N00270 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL N00350 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00192 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00190 : std_logic;
SIGNAL N00352 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL N00272 : std_logic;
SIGNAL N00311 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00430 : std_logic;
SIGNAL C0 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00114;
TC<=N00109;
Q0<=N00390;
Q1<=N00350;
Q2<=N00310;
Q3<=N00270;
Q4<=N00230;
Q5<=N00190;
Q6<=N00150;
Q7<=N00113;
Q8<=N00391;
Q9<=N00352;
Q10<=N00311;
Q11<=N00272;
Q12<=N00231;
Q13<=N00192;
Q14<=N00151;
U803 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00190, 
	I2 => C5, 
	O => R_TQ5, 
	I1 => R
);
U1438 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00192, 
	I2 => C13, 
	O => R_TQ13, 
	I1 => R
);
U259 : CY_MUX	PORT MAP(
	S => N00230, 
	CI => C4, 
	CO => C5, 
	DI => N00125
);
U1119 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M7, 
	O => R_TQ7
);
U1439 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00231, 
	I2 => C12, 
	O => R_TQ12, 
	I1 => R
);
U809 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00150, 
	I2 => C6, 
	O => R_TQ6, 
	I1 => R
);
U1224 : FDCE	PORT MAP(
	D => R_TQ14, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00151
);
U1225 : FDCE	PORT MAP(
	D => R_TQ10, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00311
);
U1226 : FDCE	PORT MAP(
	D => R_TQ11, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00272
);
U1390 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00114, 
	I2 => C15, 
	O => R_TQ15, 
	I1 => R
);
U1227 : FDCE	PORT MAP(
	D => R_TQ12, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00231
);
U1228 : FDCE	PORT MAP(
	D => R_TQ13, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00192
);
U1229 : FDCE	PORT MAP(
	D => R_TQ15, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00114
);
U792 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00270, 
	I2 => C3, 
	O => R_TQ3, 
	I1 => R
);
U1180 : XOR2	PORT MAP(
	I1 => C15, 
	I0 => N00114, 
	O => TQ15
);
U798 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00230, 
	I2 => C4, 
	O => R_TQ4, 
	I1 => R
);
U291 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => N00113, 
	O => TQ7
);
U1183 : GND	PORT MAP(
	G => N00127
);
U1151 : GND	PORT MAP(
	G => N00154
);
U1184 : XOR2	PORT MAP(
	I1 => C12, 
	I0 => N00231, 
	O => TQ12
);
U1440 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00151, 
	I2 => C14, 
	O => R_TQ14, 
	I1 => R
);
U1185 : XOR2	PORT MAP(
	I1 => C10, 
	I0 => N00311, 
	O => TQ10
);
U263 : FDCE	PORT MAP(
	D => R_TQ5, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00190
);
U1186 : XOR2	PORT MAP(
	I1 => C8, 
	I0 => N00391, 
	O => TQ8
);
U1187 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => N00192, 
	O => TQ13
);
U1124 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M6, 
	O => R_TQ6
);
U4 : CY_MUX	PORT MAP(
	S => N00390, 
	CI => C0, 
	CO => C1, 
	DI => N00125
);
U1188 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => N00272, 
	O => TQ11
);
U265 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00190, 
	O => TQ5
);
U233 : CY_MUX	PORT MAP(
	S => N00310, 
	CI => C2, 
	CO => C3, 
	DI => N00125
);
U1157 : GND	PORT MAP(
	G => N00155
);
U298 : CY_MUX	PORT MAP(
	S => N00113, 
	CI => C7, 
	CO => C8, 
	DI => N00125
);
U1189 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => N00352, 
	O => TQ9
);
U6 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => N00390, 
	O => TQ0
);
U1159 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M8, 
	O => R_TQ8
);
U237 : FDCE	PORT MAP(
	D => R_TQ3, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00270
);
U814 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00113, 
	I2 => C7, 
	O => R_TQ7, 
	I1 => R
);
U1129 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M5, 
	O => R_TQ5
);
U239 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00270, 
	O => TQ3
);
U26 : CY_MUX	PORT MAP(
	S => N00350, 
	CI => C1, 
	CO => C2, 
	DI => N00125
);
U1230 : FDCE	PORT MAP(
	D => R_TQ9, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00352
);
U1231 : FDCE	PORT MAP(
	D => R_TQ8, 
	CE => N00146, 
	C => C, 
	CLR => N00155, 
	Q => N00391
);
U28 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00350, 
	O => TQ1
);
U1232 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00109, 
	O => CEO
);
U1201 : CY_MUX	PORT MAP(
	S => N00114, 
	CI => C15, 
	CO => N00109, 
	DI => N00127
);
U1203 : CY_MUX	PORT MAP(
	S => N00151, 
	CI => C14, 
	CO => C15, 
	DI => N00127
);
U1235 : VCC	PORT MAP(
	P => N00146
);
U1204 : CY_MUX	PORT MAP(
	S => N00192, 
	CI => C13, 
	CO => C14, 
	DI => N00127
);
U1236 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M15, 
	O => R_TQ15
);
U1237 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M14, 
	O => R_TQ14
);
U1205 : CY_MUX	PORT MAP(
	S => N00231, 
	CI => C12, 
	CO => C13, 
	DI => N00127
);
U1206 : CY_MUX	PORT MAP(
	S => N00272, 
	CI => C11, 
	CO => C12, 
	DI => N00127
);
U923 : VCC	PORT MAP(
	P => N00430
);
U1207 : CY_MUX	PORT MAP(
	S => N00311, 
	CI => C10, 
	CO => C11, 
	DI => N00127
);
U1208 : CY_MUX	PORT MAP(
	S => N00352, 
	CI => C9, 
	CO => C10, 
	DI => N00127
);
U1209 : CY_MUX	PORT MAP(
	S => N00391, 
	CI => C8, 
	CO => C9, 
	DI => N00127
);
U742 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00390, 
	I2 => C0, 
	O => R_TQ0, 
	I1 => R
);
U1161 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M9, 
	O => R_TQ9
);
U748 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00350, 
	I2 => C1, 
	O => R_TQ1, 
	I1 => R
);
U1162 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M10, 
	O => R_TQ10
);
U272 : CY_MUX	PORT MAP(
	S => N00190, 
	CI => C5, 
	CO => C6, 
	DI => N00125
);
U1164 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M11, 
	O => R_TQ11
);
U1165 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M12, 
	O => R_TQ12
);
U1133 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M4, 
	O => R_TQ4
);
U276 : FDCE	PORT MAP(
	D => R_TQ6, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00150
);
U1167 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M13, 
	O => R_TQ13
);
U246 : CY_MUX	PORT MAP(
	S => N00270, 
	CI => C3, 
	CO => C4, 
	DI => N00125
);
U1137 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M3, 
	O => R_TQ3
);
U886 : GND	PORT MAP(
	G => N00125
);
U278 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => N00150, 
	O => TQ6
);
U35 : FDCE	PORT MAP(
	D => R_TQ1, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00350
);
U36 : FDCE	PORT MAP(
	D => R_TQ0, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00390
);
U1219 : XOR2	PORT MAP(
	I1 => C14, 
	I0 => N00151, 
	O => TQ14
);
U787 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00310, 
	I2 => C2, 
	O => R_TQ2, 
	I1 => R
);
U250 : FDCE	PORT MAP(
	D => R_TQ4, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00230
);
U1141 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M2, 
	O => R_TQ2
);
U252 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => N00230, 
	O => TQ4
);
U1112 : INV	PORT MAP(
	O => CEB, 
	I => CE
);
U285 : CY_MUX	PORT MAP(
	S => N00150, 
	CI => C6, 
	CO => C7, 
	DI => N00125
);
U1145 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M1, 
	O => R_TQ1
);
U1434 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00391, 
	I2 => C8, 
	O => R_TQ8, 
	I1 => R
);
U1435 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00311, 
	I2 => C10, 
	O => R_TQ10, 
	I1 => R
);
U224 : FDCE	PORT MAP(
	D => R_TQ2, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00310
);
U1436 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00352, 
	I2 => C9, 
	O => R_TQ9, 
	I1 => R
);
U289 : FDCE	PORT MAP(
	D => R_TQ7, 
	CE => N00144, 
	C => C, 
	CLR => N00154, 
	Q => N00113
);
U1437 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00272, 
	I2 => C11, 
	O => R_TQ11, 
	I1 => R
);
U1117 : VCC	PORT MAP(
	P => N00144
);
U1149 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M0, 
	O => R_TQ0
);
U226 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => N00310, 
	O => TQ2
);
U1177 : M2_1	PORT MAP(
	D0 => TQ11, 
	D1 => N00272, 
	S0 => CEB, 
	O => CE_M11
);
U3 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00430
);
U1079 : M2_1	PORT MAP(
	D0 => TQ0, 
	D1 => N00390, 
	S0 => CEB, 
	O => CE_M0
);
U1178 : M2_1	PORT MAP(
	D0 => TQ12, 
	D1 => N00231, 
	S0 => CEB, 
	O => CE_M12
);
U1223 : M2_1	PORT MAP(
	D0 => TQ14, 
	D1 => N00151, 
	S0 => CEB, 
	O => CE_M14
);
U1179 : M2_1	PORT MAP(
	D0 => TQ13, 
	D1 => N00192, 
	S0 => CEB, 
	O => CE_M13
);
U1069 : M2_1	PORT MAP(
	D0 => TQ2, 
	D1 => N00310, 
	S0 => CEB, 
	O => CE_M2
);
U1059 : M2_1	PORT MAP(
	D0 => TQ4, 
	D1 => N00230, 
	S0 => CEB, 
	O => CE_M4
);
U1049 : M2_1	PORT MAP(
	D0 => TQ6, 
	D1 => N00150, 
	S0 => CEB, 
	O => CE_M6
);
U1218 : M2_1	PORT MAP(
	D0 => TQ15, 
	D1 => N00114, 
	S0 => CEB, 
	O => CE_M15
);
U1074 : M2_1	PORT MAP(
	D0 => TQ1, 
	D1 => N00350, 
	S0 => CEB, 
	O => CE_M1
);
U1064 : M2_1	PORT MAP(
	D0 => TQ3, 
	D1 => N00270, 
	S0 => CEB, 
	O => CE_M3
);
U1174 : M2_1	PORT MAP(
	D0 => TQ8, 
	D1 => N00391, 
	S0 => CEB, 
	O => CE_M8
);
U1054 : M2_1	PORT MAP(
	D0 => TQ5, 
	D1 => N00190, 
	S0 => CEB, 
	O => CE_M5
);
U1175 : M2_1	PORT MAP(
	D0 => TQ9, 
	D1 => N00352, 
	S0 => CEB, 
	O => CE_M9
);
U1176 : M2_1	PORT MAP(
	D0 => TQ10, 
	D1 => N00311, 
	S0 => CEB, 
	O => CE_M10
);
U1033 : M2_1	PORT MAP(
	D0 => TQ7, 
	D1 => N00113, 
	S0 => CEB, 
	O => CE_M7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CC8RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CC8RE;



ARCHITECTURE STRUCTURE OF CC8RE IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00057 : std_logic;
SIGNAL CEB : std_logic;
SIGNAL CE_M5 : std_logic;
SIGNAL CE_M2 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL R_TQ7 : std_logic;
SIGNAL R_TQ5 : std_logic;
SIGNAL R_TQ4 : std_logic;
SIGNAL R_TQ2 : std_logic;
SIGNAL R_TQ6 : std_logic;
SIGNAL R_TQ3 : std_logic;
SIGNAL R_TQ1 : std_logic;
SIGNAL R_TQ0 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL CE_M1 : std_logic;
SIGNAL CE_M3 : std_logic;
SIGNAL CE_M6 : std_logic;
SIGNAL CE_M7 : std_logic;
SIGNAL CE_M0 : std_logic;
SIGNAL CE_M4 : std_logic;
SIGNAL N00220 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00200 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00180 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00057;
Q0<=N00200;
Q1<=N00180;
Q2<=N00160;
Q3<=N00140;
Q4<=N00120;
Q5<=N00100;
Q6<=N00080;
Q7<=N00061;
U803 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00100, 
	I2 => C5, 
	O => R_TQ5, 
	I1 => R
);
U259 : CY_MUX	PORT MAP(
	S => N00120, 
	CI => C4, 
	CO => C5, 
	DI => N00062
);
U1119 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M7, 
	O => R_TQ7
);
U809 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00080, 
	I2 => C6, 
	O => R_TQ6, 
	I1 => R
);
U792 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00140, 
	I2 => C3, 
	O => R_TQ3, 
	I1 => R
);
U798 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00120, 
	I2 => C4, 
	O => R_TQ4, 
	I1 => R
);
U291 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => N00061, 
	O => TQ7
);
U1151 : GND	PORT MAP(
	G => N00081
);
U263 : FDCE	PORT MAP(
	D => R_TQ5, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00100
);
U233 : CY_MUX	PORT MAP(
	S => N00160, 
	CI => C2, 
	CO => C3, 
	DI => N00062
);
U4 : CY_MUX	PORT MAP(
	S => N00200, 
	CI => C0, 
	CO => C1, 
	DI => N00062
);
U1124 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M6, 
	O => R_TQ6
);
U265 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00100, 
	O => TQ5
);
U298 : CY_MUX	PORT MAP(
	S => N00061, 
	CI => C7, 
	CO => N00057, 
	DI => N00062
);
U6 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => N00200, 
	O => TQ0
);
U237 : FDCE	PORT MAP(
	D => R_TQ3, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00140
);
U814 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00061, 
	I2 => C7, 
	O => R_TQ7, 
	I1 => R
);
U1129 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M5, 
	O => R_TQ5
);
U239 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00140, 
	O => TQ3
);
U26 : CY_MUX	PORT MAP(
	S => N00180, 
	CI => C1, 
	CO => C2, 
	DI => N00062
);
U28 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00180, 
	O => TQ1
);
U923 : VCC	PORT MAP(
	P => N00220
);
U956 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00057, 
	O => CEO
);
U742 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00200, 
	I2 => C0, 
	O => R_TQ0, 
	I1 => R
);
U748 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00180, 
	I2 => C1, 
	O => R_TQ1, 
	I1 => R
);
U272 : CY_MUX	PORT MAP(
	S => N00100, 
	CI => C5, 
	CO => C6, 
	DI => N00062
);
U1133 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M4, 
	O => R_TQ4
);
U276 : FDCE	PORT MAP(
	D => R_TQ6, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00080
);
U886 : GND	PORT MAP(
	G => N00062
);
U1137 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M3, 
	O => R_TQ3
);
U278 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => N00080, 
	O => TQ6
);
U246 : CY_MUX	PORT MAP(
	S => N00140, 
	CI => C3, 
	CO => C4, 
	DI => N00062
);
U35 : FDCE	PORT MAP(
	D => R_TQ1, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00180
);
U36 : FDCE	PORT MAP(
	D => R_TQ0, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00200
);
U787 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => N00160, 
	I2 => C2, 
	O => R_TQ2, 
	I1 => R
);
U1141 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M2, 
	O => R_TQ2
);
U250 : FDCE	PORT MAP(
	D => R_TQ4, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00120
);
U252 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => N00120, 
	O => TQ4
);
U285 : CY_MUX	PORT MAP(
	S => N00080, 
	CI => C6, 
	CO => C7, 
	DI => N00062
);
U1112 : INV	PORT MAP(
	O => CEB, 
	I => CE
);
U1145 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M1, 
	O => R_TQ1
);
U224 : FDCE	PORT MAP(
	D => R_TQ2, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00160
);
U289 : FDCE	PORT MAP(
	D => R_TQ7, 
	CE => N00076, 
	C => C, 
	CLR => N00081, 
	Q => N00061
);
U1149 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M0, 
	O => R_TQ0
);
U1117 : VCC	PORT MAP(
	P => N00076
);
U226 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => N00160, 
	O => TQ2
);
U3 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00220
);
U1079 : M2_1	PORT MAP(
	D0 => TQ0, 
	D1 => N00200, 
	S0 => CEB, 
	O => CE_M0
);
U1069 : M2_1	PORT MAP(
	D0 => TQ2, 
	D1 => N00160, 
	S0 => CEB, 
	O => CE_M2
);
U1059 : M2_1	PORT MAP(
	D0 => TQ4, 
	D1 => N00120, 
	S0 => CEB, 
	O => CE_M4
);
U1049 : M2_1	PORT MAP(
	D0 => TQ6, 
	D1 => N00080, 
	S0 => CEB, 
	O => CE_M6
);
U1074 : M2_1	PORT MAP(
	D0 => TQ1, 
	D1 => N00180, 
	S0 => CEB, 
	O => CE_M1
);
U1064 : M2_1	PORT MAP(
	D0 => TQ3, 
	D1 => N00140, 
	S0 => CEB, 
	O => CE_M3
);
U1054 : M2_1	PORT MAP(
	D0 => TQ5, 
	D1 => N00100, 
	S0 => CEB, 
	O => CE_M5
);
U1033 : M2_1	PORT MAP(
	D0 => TQ7, 
	D1 => N00061, 
	S0 => CEB, 
	O => CE_M7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CD4CLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CD4CLE;



ARCHITECTURE STRUCTURE OF CD4CLE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00018 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL TQ03 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL T1 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00055;
Q0<=N00018;
Q1<=N00028;
Q2<=N00036;
Q3<=N00027;
U13 : OR2	PORT MAP(
	I1 => TQ2, 
	I0 => TQ03, 
	O => T3
);
U123 : AND2	PORT MAP(
	I0 => N00018, 
	I1 => N00028, 
	O => T2
);
U2 : AND2	PORT MAP(
	I0 => T2, 
	I1 => N00036, 
	O => TQ2
);
U168 : AND2	PORT MAP(
	I0 => N00018, 
	I1 => N00027, 
	O => TQ03
);
U136 : AND2B1	PORT MAP(
	I0 => N00027, 
	I1 => N00018, 
	O => T1
);
U143 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00055, 
	O => CEO
);
U175 : AND4B2	PORT MAP(
	I0 => N00028, 
	I1 => N00036, 
	I2 => N00018, 
	I3 => N00027, 
	O => N00055
);
U44 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00028, 
	CLR => CLR
);
U45 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => CE, 
	CE => CE, 
	C => C, 
	Q => N00018, 
	CLR => CLR
);
U39 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00027, 
	CLR => CLR
);
U40 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00036, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FJKSRE IS PORT (
	J : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic;
	K : IN std_logic
); END FJKSRE;



ARCHITECTURE STRUCTURE OF FJKSRE IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDSE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL A0 : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A2 : std_logic;
SIGNAL AD : std_logic;
SIGNAL R_CE : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL AD_R : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00009;
U48 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => AD, 
	O => AD_R
);
U54 : OR2	PORT MAP(
	I1 => R, 
	I0 => CE, 
	O => R_CE
);
U37 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00009, 
	O => A0
);
U40 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U41 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U43 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U32 : FDSE	PORT MAP(
	D => AD_R, 
	CE => R_CE, 
	C => C, 
	S => S, 
	Q => N00009
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTCE IS PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END FTCE;



ARCHITECTURE STRUCTURE OF FTCE IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL TQ : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U32 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U35 : FDCE	PORT MAP(
	D => TQ, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LD16CE IS PORT (
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
	GE : IN std_logic;
	G : IN std_logic;
	CLR : IN std_logic;
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
); END LD16CE;



ARCHITECTURE STRUCTURE OF LD16CE IS

-- COMPONENTS

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : LDCE	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12, 
	CLR => CLR, 
	GE => GE
);
U14 : LDCE	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13, 
	CLR => CLR, 
	GE => GE
);
U15 : LDCE	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14, 
	CLR => CLR, 
	GE => GE
);
U16 : LDCE	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15, 
	CLR => CLR, 
	GE => GE
);
U1 : LDCE	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0, 
	CLR => CLR, 
	GE => GE
);
U2 : LDCE	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1, 
	CLR => CLR, 
	GE => GE
);
U3 : LDCE	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2, 
	CLR => CLR, 
	GE => GE
);
U4 : LDCE	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3, 
	CLR => CLR, 
	GE => GE
);
U5 : LDCE	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4, 
	CLR => CLR, 
	GE => GE
);
U6 : LDCE	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5, 
	CLR => CLR, 
	GE => GE
);
U7 : LDCE	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6, 
	CLR => CLR, 
	GE => GE
);
U8 : LDCE	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7, 
	CLR => CLR, 
	GE => GE
);
U9 : LDCE	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8, 
	CLR => CLR, 
	GE => GE
);
U10 : LDCE	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9, 
	CLR => CLR, 
	GE => GE
);
U11 : LDCE	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10, 
	CLR => CLR, 
	GE => GE
);
U12 : LDCE	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11, 
	CLR => CLR, 
	GE => GE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LDCE_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
); END LDCE_1;



ARCHITECTURE STRUCTURE OF LDCE_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U49 : INV	PORT MAP(
	O => GB, 
	I => G
);
U50 : LDCE	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q, 
	CLR => CLR, 
	GE => GE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M16_1E IS PORT (
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
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	S3 : IN std_logic;
	E : IN std_logic;
	O : OUT std_logic
); END M16_1E;



ARCHITECTURE STRUCTURE OF M16_1E IS

-- COMPONENTS

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M89 : std_logic;
SIGNAL MAB : std_logic;
SIGNAL M45 : std_logic;
SIGNAL MCD : std_logic;
SIGNAL MEF : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M8F : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M07 : std_logic;
SIGNAL M8B : std_logic;
SIGNAL MCF : std_logic;

-- GATE INSTANCES

BEGIN
U5 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U207 : M2_1	PORT MAP(
	D0 => M07, 
	D1 => M8F, 
	S0 => S3, 
	O => O
);
U208 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => S2, 
	O => M07, 
	E => E
);
U209 : M2_1E	PORT MAP(
	D0 => M8B, 
	D1 => MCF, 
	S0 => S2, 
	O => M8F, 
	E => E
);
U162 : M2_1	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	S0 => S0, 
	O => MCD
);
U163 : M2_1	PORT MAP(
	D0 => D14, 
	D1 => D15, 
	S0 => S0, 
	O => MEF
);
U152 : M2_1	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	S0 => S0, 
	O => M89
);
U153 : M2_1	PORT MAP(
	D0 => D10, 
	D1 => D11, 
	S0 => S0, 
	O => MAB
);
U164 : M2_1	PORT MAP(
	D0 => MCD, 
	D1 => MEF, 
	S0 => S1, 
	O => MCF
);
U142 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => S0, 
	O => M45
);
U143 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => S0, 
	O => M67
);
U154 : M2_1	PORT MAP(
	D0 => M89, 
	D1 => MAB, 
	S0 => S1, 
	O => M8B
);
U144 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => M47
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => M03
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND16 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O : OUT std_logic
); END NAND16;



ARCHITECTURE STRUCTURE OF NAND16 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S0 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00028 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : AND4	PORT MAP(
	I0 => I8, 
	I1 => I9, 
	I2 => I10, 
	I3 => I11, 
	O => S2
);
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00028
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00028
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U161 : AND4	PORT MAP(
	I0 => I12, 
	I1 => I13, 
	I2 => I14, 
	I3 => I15, 
	O => S3
);
U165 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C2, 
	CO => O, 
	DI => N00028
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U109 : GND	PORT MAP(
	G => N00065
);
U170 : FMAP	PORT MAP(
	I4 => I15, 
	I3 => I14, 
	I2 => I13, 
	O => S3, 
	I1 => I12
);
U172 : VCC	PORT MAP(
	P => N00028
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => C2, 
	DI => N00028
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00065
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUF8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END OBUF8;



ARCHITECTURE STRUCTURE OF OBUF8 IS

-- COMPONENTS

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U30 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U31 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U32 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U33 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
U34 : OBUF	PORT MAP(
	O => O7, 
	I => I7
);
U35 : OBUF	PORT MAP(
	O => O6, 
	I => I6
);
U36 : OBUF	PORT MAP(
	O => O5, 
	I => I5
);
U37 : OBUF	PORT MAP(
	O => O4, 
	I => I4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR5 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR5;



ARCHITECTURE STRUCTURE OF OR5 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : OR3	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY INV16 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END INV16;



ARCHITECTURE STRUCTURE OF INV16 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : INV	PORT MAP(
	O => O0, 
	I => I0
);
U30 : INV	PORT MAP(
	O => O8, 
	I => I8
);
U31 : INV	PORT MAP(
	O => O9, 
	I => I9
);
U32 : INV	PORT MAP(
	O => O10, 
	I => I10
);
U33 : INV	PORT MAP(
	O => O11, 
	I => I11
);
U34 : INV	PORT MAP(
	O => O15, 
	I => I15
);
U35 : INV	PORT MAP(
	O => O14, 
	I => I14
);
U36 : INV	PORT MAP(
	O => O13, 
	I => I13
);
U37 : INV	PORT MAP(
	O => O12, 
	I => I12
);
U38 : INV	PORT MAP(
	O => O4, 
	I => I4
);
U39 : INV	PORT MAP(
	O => O5, 
	I => I5
);
U40 : INV	PORT MAP(
	O => O6, 
	I => I6
);
U41 : INV	PORT MAP(
	O => O7, 
	I => I7
);
U42 : INV	PORT MAP(
	O => O3, 
	I => I3
);
U43 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U44 : INV	PORT MAP(
	O => O1, 
	I => I1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND5B1 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END NAND5B1;



ARCHITECTURE STRUCTURE OF NAND5B1 IS

-- COMPONENTS

COMPONENT NAND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NAND3B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR16 IS PORT (
	I15 : IN std_logic;
	I14 : IN std_logic;
	I13 : IN std_logic;
	I12 : IN std_logic;
	I11 : IN std_logic;
	I10 : IN std_logic;
	I9 : IN std_logic;
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR16;



ARCHITECTURE STRUCTURE OF NOR16 IS

-- COMPONENTS

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S3 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00065 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : NOR4	PORT MAP(
	I3 => I11, 
	I2 => I10, 
	I1 => I9, 
	I0 => I8, 
	O => S2
);
U127 : NOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00028
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00028
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U161 : NOR4	PORT MAP(
	I3 => I15, 
	I2 => I14, 
	I1 => I13, 
	I0 => I12, 
	O => S3
);
U165 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C2, 
	CO => O, 
	DI => N00028
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00065
);
U109 : GND	PORT MAP(
	G => N00028
);
U170 : FMAP	PORT MAP(
	I4 => I15, 
	I3 => I14, 
	I2 => I13, 
	O => S3, 
	I1 => I12
);
U110 : NOR4	PORT MAP(
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => S0
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => C2, 
	DI => N00028
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00065
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OPAD8 IS PORT (
	O0 : IN std_logic;
	O1 : IN std_logic;
	O2 : IN std_logic;
	O3 : IN std_logic;
	O4 : IN std_logic;
	O5 : IN std_logic;
	O6 : IN std_logic;
	O7 : IN std_logic
); END OPAD8;



ARCHITECTURE STRUCTURE OF OPAD8 IS

-- COMPONENTS

COMPONENT OPAD
	PORT (
	OPAD : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U60 : OPAD	PORT MAP(
	OPAD => O0
);
U61 : OPAD	PORT MAP(
	OPAD => O1
);
U62 : OPAD	PORT MAP(
	OPAD => O2
);
U63 : OPAD	PORT MAP(
	OPAD => O3
);
U64 : OPAD	PORT MAP(
	OPAD => O4
);
U65 : OPAD	PORT MAP(
	OPAD => O5
);
U66 : OPAD	PORT MAP(
	OPAD => O6
);
U67 : OPAD	PORT MAP(
	OPAD => O7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR5B3 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR5B3;



ARCHITECTURE STRUCTURE OF OR5B3 IS

-- COMPONENTS

COMPONENT OR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B1
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : OR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3B1	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR7 IS PORT (
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR7;



ARCHITECTURE STRUCTURE OF OR7 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I46 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : OR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOP3 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3;



ARCHITECTURE STRUCTURE OF SOP3 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I01 : std_logic;

-- GATE INSTANCES

BEGIN
U31 : AND2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I01
);
U32 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I01, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR8RLE IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END SR8RLE;



ARCHITECTURE STRUCTURE OF SR8RLE IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00024 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00026 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00031;
Q1<=N00041;
Q2<=N00057;
Q3<=N00026;
Q4<=N00024;
Q5<=N00042;
Q6<=N00058;
U12 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U146 : FDRE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00026
);
U245 : M2_1	PORT MAP(
	D0 => N00042, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U246 : FDRE	PORT MAP(
	D => MD7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U24 : FDRE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00041
);
U137 : FDRE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00057
);
U226 : M2_1	PORT MAP(
	D0 => N00024, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U249 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U238 : M2_1	PORT MAP(
	D0 => N00026, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U26 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U230 : FDRE	PORT MAP(
	D => MD4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00024
);
U242 : FDRE	PORT MAP(
	D => MD6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00058
);
U143 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U1 : FDRE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U134 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U233 : FDRE	PORT MAP(
	D => MD5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00042
);
U2 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR7 IS PORT (
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR7;



ARCHITECTURE STRUCTURE OF NOR7 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I13 : std_logic;
SIGNAL I46 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : NOR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFT16 IS PORT (
	T : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END OBUFT16;



ARCHITECTURE STRUCTURE OF OBUFT16 IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : OBUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U30 : OBUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
U31 : OBUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
U32 : OBUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
U33 : OBUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
);
U34 : OBUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
);
U35 : OBUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
U36 : OBUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
U37 : OBUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
U38 : OBUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U39 : OBUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U40 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U41 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U42 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U43 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U44 : OBUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFT4 IS PORT (
	T : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END OBUFT4;



ARCHITECTURE STRUCTURE OF OBUFT4 IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U37 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U38 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U39 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U40 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR16 IS PORT (
	I15 : IN std_logic;
	I14 : IN std_logic;
	I13 : IN std_logic;
	I12 : IN std_logic;
	I11 : IN std_logic;
	I10 : IN std_logic;
	I9 : IN std_logic;
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR16;



ARCHITECTURE STRUCTURE OF OR16 IS

-- COMPONENTS

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL S1 : std_logic;

-- GATE INSTANCES

BEGIN
U151 : NOR4	PORT MAP(
	I3 => I11, 
	I2 => I10, 
	I1 => I9, 
	I0 => I8, 
	O => S2
);
U127 : NOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00028
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00028
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U161 : NOR4	PORT MAP(
	I3 => I15, 
	I2 => I14, 
	I1 => I13, 
	I0 => I12, 
	O => S3
);
U165 : CY_MUX	PORT MAP(
	S => S3, 
	CI => C2, 
	CO => O, 
	DI => N00028
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U170 : FMAP	PORT MAP(
	I4 => I15, 
	I3 => I14, 
	I2 => I13, 
	O => S3, 
	I1 => I12
);
U172 : VCC	PORT MAP(
	P => N00028
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U174 : GND	PORT MAP(
	G => N00065
);
U110 : NOR4	PORT MAP(
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => S0
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => C2, 
	DI => N00028
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00065
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR16RE IS PORT (
	SLI : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
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
); END SR16RE;



ARCHITECTURE STRUCTURE OF SR16RE IS

-- COMPONENTS

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00051 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00070 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00019;
Q1<=N00030;
Q2<=N00040;
Q3<=N00050;
Q4<=N00060;
Q5<=N00070;
Q6<=N00080;
Q7<=N00018;
Q8<=N00020;
Q9<=N00031;
Q10<=N00041;
Q11<=N00051;
Q12<=N00061;
Q13<=N00071;
Q14<=N00081;
U157 : FDRE	PORT MAP(
	D => N00061, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00071
);
U124 : FDRE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00040
);
U158 : FDRE	PORT MAP(
	D => N00071, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00081
);
U159 : FDRE	PORT MAP(
	D => N00081, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U137 : FDRE	PORT MAP(
	D => N00080, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U129 : FDRE	PORT MAP(
	D => N00060, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00070
);
U140 : FDRE	PORT MAP(
	D => N00070, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00080
);
U142 : FDRE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00020
);
U143 : FDRE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U154 : FDRE	PORT MAP(
	D => N00031, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00041
);
U121 : FDRE	PORT MAP(
	D => N00040, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00050
);
U132 : FDRE	PORT MAP(
	D => N00050, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00060
);
U1 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U155 : FDRE	PORT MAP(
	D => N00041, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00051
);
U2 : FDRE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00030
);
U156 : FDRE	PORT MAP(
	D => N00051, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00061
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR8CE IS PORT (
	SLI : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END SR8CE;



ARCHITECTURE STRUCTURE OF SR8CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00010 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00011;
Q1<=N00022;
Q2<=N00032;
Q3<=N00010;
Q4<=N00012;
Q5<=N00023;
Q6<=N00033;
U33 : FDCE	PORT MAP(
	D => N00033, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U34 : FDCE	PORT MAP(
	D => N00032, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U37 : FDCE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00023
);
U38 : FDCE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U39 : FDCE	PORT MAP(
	D => N00011, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00022
);
U40 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U41 : FDCE	PORT MAP(
	D => N00022, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00032
);
U42 : FDCE	PORT MAP(
	D => N00023, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00033
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR8RLED IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	SRI : IN std_logic;
	L : IN std_logic;
	LEFT : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END SR8RLED;



ARCHITECTURE STRUCTURE OF SR8RLED IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDR1 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00751 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00099 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00031;
Q1<=N00032;
Q2<=N00044;
Q3<=N00055;
Q4<=N00066;
Q5<=N00077;
Q6<=N00088;
Q7<=N00099;
U120 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U103 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U88 : FDRE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00088
);
U99 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U102 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U89 : FDRE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00099
);
U104 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U105 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U106 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U90 : M2_1	PORT MAP(
	D0 => N00077, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U91 : M2_1	PORT MAP(
	D0 => N00077, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U92 : M2_1	PORT MAP(
	D0 => N00066, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U82 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00032
);
U93 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U83 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U94 : M2_1	PORT MAP(
	D0 => N00088, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U95 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U84 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00044
);
U85 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00055
);
U96 : M2_1	PORT MAP(
	D0 => N00088, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U86 : FDRE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00066
);
U100 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U97 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U101 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U87 : FDRE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00077
);
U98 : M2_1	PORT MAP(
	D0 => N00066, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_150 IS PORT (
	E0 : IN std_logic;
	E1 : IN std_logic;
	E2 : IN std_logic;
	E3 : IN std_logic;
	E4 : IN std_logic;
	E5 : IN std_logic;
	E6 : IN std_logic;
	E7 : IN std_logic;
	E8 : IN std_logic;
	E9 : IN std_logic;
	E10 : IN std_logic;
	E11 : IN std_logic;
	E12 : IN std_logic;
	E13 : IN std_logic;
	E14 : IN std_logic;
	E15 : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	W : OUT std_logic
); END X74_150;



ARCHITECTURE STRUCTURE OF X74_150 IS

-- COMPONENTS

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MAB : std_logic;
SIGNAL M89 : std_logic;
SIGNAL MCD : std_logic;
SIGNAL MEF : std_logic;
SIGNAL MCF : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M8F : std_logic;
SIGNAL M01 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL M8B : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M07 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL N00042 : std_logic;

-- GATE INSTANCES

BEGIN
U207 : AND3B1	PORT MAP(
	I0 => G, 
	I1 => M8F, 
	I2 => D, 
	O => N00045
);
U208 : AND3B2	PORT MAP(
	I0 => D, 
	I1 => G, 
	I2 => M07, 
	O => N00042
);
U219 : XNOR2	PORT MAP(
	I1 => N00042, 
	I0 => N00045, 
	O => W
);
U5 : M2_1	PORT MAP(
	D0 => E2, 
	D1 => E3, 
	S0 => A, 
	O => M23
);
U190 : M2_1	PORT MAP(
	D0 => M8B, 
	D1 => MCF, 
	S0 => C, 
	O => M8F
);
U162 : M2_1	PORT MAP(
	D0 => E12, 
	D1 => E13, 
	S0 => A, 
	O => MCD
);
U163 : M2_1	PORT MAP(
	D0 => E14, 
	D1 => E15, 
	S0 => A, 
	O => MEF
);
U152 : M2_1	PORT MAP(
	D0 => E8, 
	D1 => E9, 
	S0 => A, 
	O => M89
);
U153 : M2_1	PORT MAP(
	D0 => E10, 
	D1 => E11, 
	S0 => A, 
	O => MAB
);
U142 : M2_1	PORT MAP(
	D0 => E4, 
	D1 => E5, 
	S0 => A, 
	O => M45
);
U164 : M2_1	PORT MAP(
	D0 => MCD, 
	D1 => MEF, 
	S0 => B, 
	O => MCF
);
U154 : M2_1	PORT MAP(
	D0 => M89, 
	D1 => MAB, 
	S0 => B, 
	O => M8B
);
U143 : M2_1	PORT MAP(
	D0 => E6, 
	D1 => E7, 
	S0 => A, 
	O => M67
);
U187 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => M07
);
U144 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U1 : M2_1	PORT MAP(
	D0 => E0, 
	D1 => E1, 
	S0 => A, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => B, 
	O => M03
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_168 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	LOAD : IN std_logic;
	ENP : IN std_logic;
	ENT : IN std_logic;
	U_D : IN std_logic;
	CK : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	RCO : OUT std_logic
); END X74_168;



ARCHITECTURE STRUCTURE OF X74_168 IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL DB : std_logic;
SIGNAL DC : std_logic;
SIGNAL UDD : std_logic;
SIGNAL UDA : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL CE : std_logic;
SIGNAL UPD : std_logic;
SIGNAL RC : std_logic;
SIGNAL UD1 : std_logic;
SIGNAL UD2 : std_logic;
SIGNAL URC : std_logic;
SIGNAL DA : std_logic;
SIGNAL DD : std_logic;
SIGNAL UDB : std_logic;
SIGNAL UDC : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL DB3 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL DD4 : std_logic;
SIGNAL DD1 : std_logic;
SIGNAL DRC : std_logic;
SIGNAL DND : std_logic;
SIGNAL DNB : std_logic;
SIGNAL DC3 : std_logic;
SIGNAL DC2 : std_logic;
SIGNAL UB4 : std_logic;
SIGNAL UB1 : std_logic;
SIGNAL UB2 : std_logic;
SIGNAL DC1 : std_logic;
SIGNAL UPB : std_logic;
SIGNAL ENT_P : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL UC1 : std_logic;
SIGNAL CC : std_logic;
SIGNAL DNC : std_logic;
SIGNAL UPC : std_logic;
SIGNAL DD3 : std_logic;
SIGNAL DB4 : std_logic;
SIGNAL DD2 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL DB1 : std_logic;
SIGNAL DB2 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00045;
QB<=N00055;
QC<=N00076;
QD<=N00062;
U13 : OR2	PORT MAP(
	I1 => ENP, 
	I0 => ENT, 
	O => ENT_P
);
U391 : AND2B1	PORT MAP(
	I0 => N00045, 
	I1 => N00062, 
	O => UD1
);
U14 : OR2B2	PORT MAP(
	I1 => LOAD, 
	I0 => ENT_P, 
	O => CE
);
U519 : OR3	PORT MAP(
	I2 => UB1, 
	I1 => UB2, 
	I0 => UB4, 
	O => UPB
);
U395 : OR2	PORT MAP(
	I1 => RC, 
	I0 => ENT, 
	O => RCO
);
U366 : AND2	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	O => UC1
);
U522 : OR3	PORT MAP(
	I2 => DC1, 
	I1 => DC2, 
	I0 => DC3, 
	O => CC
);
U22 : FDCE	PORT MAP(
	D => DB, 
	CE => CE, 
	C => CK, 
	CLR => N00054, 
	Q => N00055
);
U26 : GND	PORT MAP(
	G => N00054
);
U372 : AND3B1	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	I2 => N00062, 
	O => DD1
);
U373 : AND3B1	PORT MAP(
	I0 => N00045, 
	I1 => N00076, 
	I2 => N00062, 
	O => DD2
);
U374 : AND4B2	PORT MAP(
	I0 => N00055, 
	I1 => N00076, 
	I2 => N00045, 
	I3 => N00062, 
	O => DD3
);
U375 : AND4B4	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	I2 => N00076, 
	I3 => N00062, 
	O => DD4
);
U376 : OR4	PORT MAP(
	I3 => DD1, 
	I2 => DD2, 
	I1 => DD3, 
	I0 => DD4, 
	O => DND
);
U530 : XOR2	PORT MAP(
	I1 => UC1, 
	I0 => N00076, 
	O => UPC
);
U275 : INV	PORT MAP(
	O => UDA, 
	I => N00045
);
U532 : OR2	PORT MAP(
	I1 => UD1, 
	I0 => UD2, 
	O => UPD
);
U534 : AND4B1	PORT MAP(
	I0 => N00062, 
	I1 => N00045, 
	I2 => N00055, 
	I3 => N00076, 
	O => UD2
);
U215 : FDCE	PORT MAP(
	D => DA, 
	CE => CE, 
	C => CK, 
	CLR => N00054, 
	Q => N00045
);
U216 : FDCE	PORT MAP(
	D => DC, 
	CE => CE, 
	C => CK, 
	CLR => N00054, 
	Q => N00076
);
U217 : FDCE	PORT MAP(
	D => DD, 
	CE => CE, 
	C => CK, 
	CLR => N00054, 
	Q => N00062
);
U350 : AND3B2	PORT MAP(
	I0 => N00055, 
	I1 => N00062, 
	I2 => N00045, 
	O => UB4
);
U352 : AND2	PORT MAP(
	I0 => N00055, 
	I1 => N00062, 
	O => UB2
);
U353 : AND2B1	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	O => UB1
);
U323 : AND3	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	I2 => N00062, 
	O => DC1
);
U282 : AND2	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	O => DB1
);
U283 : AND2	PORT MAP(
	I0 => N00055, 
	I1 => N00062, 
	O => DB2
);
U408 : OR4	PORT MAP(
	I3 => N00062, 
	I2 => N00076, 
	I1 => N00055, 
	I0 => N00045, 
	O => DRC
);
U284 : AND3B2	PORT MAP(
	I0 => N00045, 
	I1 => N00076, 
	I2 => N00062, 
	O => DB3
);
U409 : NAND4B2	PORT MAP(
	I0 => N00076, 
	I1 => N00055, 
	I2 => N00062, 
	I3 => N00045, 
	O => URC
);
U285 : AND4B3	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	I2 => N00062, 
	I3 => N00076, 
	O => DB4
);
U541 : XOR2	PORT MAP(
	I1 => CC, 
	I0 => N00076, 
	O => DNC
);
U286 : OR4	PORT MAP(
	I3 => DB1, 
	I2 => DB2, 
	I1 => DB3, 
	I0 => DB4, 
	O => DNB
);
U545 : AND4B3	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	I2 => N00062, 
	I3 => N00076, 
	O => DC2
);
U546 : AND4B3	PORT MAP(
	I0 => N00045, 
	I1 => N00055, 
	I2 => N00076, 
	I3 => N00062, 
	O => DC3
);
U256 : M2_1	PORT MAP(
	D0 => DND, 
	D1 => UPD, 
	S0 => U_D, 
	O => UDD
);
U236 : M2_1	PORT MAP(
	D0 => A, 
	D1 => UDA, 
	S0 => LOAD, 
	O => DA
);
U227 : M2_1	PORT MAP(
	D0 => B, 
	D1 => UDB, 
	S0 => LOAD, 
	O => DB
);
U238 : M2_1	PORT MAP(
	D0 => C, 
	D1 => UDC, 
	S0 => LOAD, 
	O => DC
);
U260 : M2_1	PORT MAP(
	D0 => DNC, 
	D1 => UPC, 
	S0 => U_D, 
	O => UDC
);
U272 : M2_1	PORT MAP(
	D0 => DRC, 
	D1 => URC, 
	S0 => U_D, 
	O => RC
);
U262 : M2_1	PORT MAP(
	D0 => DNB, 
	D1 => UPB, 
	S0 => U_D, 
	O => UDB
);
U240 : M2_1	PORT MAP(
	D0 => D, 
	D1 => UDD, 
	S0 => LOAD, 
	O => DD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_377 IS PORT (
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	G : IN std_logic;
	CK : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic
); END X74_377;



ARCHITECTURE STRUCTURE OF X74_377 IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U23 : FDCE	PORT MAP(
	D => D1, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q1
);
U24 : FDCE	PORT MAP(
	D => D2, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q2
);
U25 : FDCE	PORT MAP(
	D => D3, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q3
);
U26 : FDCE	PORT MAP(
	D => D4, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q4
);
U27 : FDCE	PORT MAP(
	D => D5, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q5
);
U28 : FDCE	PORT MAP(
	D => D6, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q6
);
U29 : FDCE	PORT MAP(
	D => D7, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q7
);
U30 : FDCE	PORT MAP(
	D => D8, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q8
);
U34 : INV	PORT MAP(
	O => GB, 
	I => G
);
U35 : GND	PORT MAP(
	G => N00016
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XOR7 IS PORT (
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XOR7;



ARCHITECTURE STRUCTURE OF XOR7 IS

-- COMPONENTS

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I13 : std_logic;
SIGNAL I46 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U85 : XOR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U69 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND5B2 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END AND5B2;



ARCHITECTURE STRUCTURE OF AND5B2 IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : AND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND6 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
); END AND6;



ARCHITECTURE STRUCTURE OF AND6 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;
SIGNAL I12 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : AND2	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	O => I12
);
U85 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I12, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I3, 
	I1 => I4, 
	I2 => I5, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CJ5RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic
); END CJ5RE;



ARCHITECTURE STRUCTURE OF CJ5RE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL Q4B : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00010;
Q1<=N00015;
Q2<=N00020;
Q3<=N00025;
Q4<=N00008;
U34 : INV	PORT MAP(
	O => Q4B, 
	I => N00008
);
U33 : FDRE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00008
);
U62 : FDRE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00025
);
U63 : FDRE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00020
);
U64 : FDRE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00015
);
U65 : FDRE	PORT MAP(
	D => Q4B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00010
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDR IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END FDR;



ARCHITECTURE STRUCTURE OF FDR IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_R : std_logic;

-- GATE INSTANCES

BEGIN
U41 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => D_R
);
U39 : FD	PORT MAP(
	D => D_R, 
	C => C, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDRS IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END FDRS;



ARCHITECTURE STRUCTURE OF FDRS IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDR	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_S : std_logic;

-- GATE INSTANCES

BEGIN
U75 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => D_S
);
U79 : FDR	PORT MAP(
	D => D_S, 
	C => C, 
	R => R, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFE IS PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END BUFE;



ARCHITECTURE STRUCTURE OF BUFE IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U10 : BUFT	PORT MAP(
	T => T, 
	I => I, 
	O => O
);
U12 : INV	PORT MAP(
	O => T, 
	I => E
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CC16CLE IS PORT (
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
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CC16CLE;



ARCHITECTURE STRUCTURE OF CC16CLE IS

-- COMPONENTS

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00095 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL N00310 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL C15 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00271 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00273 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00237 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL N00165 : std_logic;
SIGNAL N00309 : std_logic;
SIGNAL N00343 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL N00379 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00199 : std_logic;
SIGNAL N00345 : std_logic;
SIGNAL N00166 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00094;
TC<=N00089;
Q0<=N00343;
Q1<=N00309;
Q2<=N00271;
Q3<=N00237;
Q4<=N00199;
Q5<=N00165;
Q6<=N00127;
Q7<=N00093;
Q8<=N00345;
Q9<=N00310;
Q10<=N00273;
Q11<=N00238;
Q12<=N00201;
Q13<=N00166;
Q14<=N00129;
U259 : CY_MUX	PORT MAP(
	S => N00199, 
	CI => C4, 
	CO => C5, 
	DI => N00095
);
U803 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D5, 
	I2 => C5, 
	O => MD5, 
	I1 => N00165
);
U1220 : XOR2	PORT MAP(
	I1 => C12, 
	I0 => N00201, 
	O => TQ12
);
U1221 : GND	PORT MAP(
	G => N00097
);
U1223 : XOR2	PORT MAP(
	I1 => C15, 
	I0 => N00094, 
	O => TQ15
);
U809 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D6, 
	I2 => C6, 
	O => MD6, 
	I1 => N00127
);
U792 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D3, 
	I2 => C3, 
	O => MD3, 
	I1 => N00237
);
U798 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D4, 
	I2 => C4, 
	O => MD4, 
	I1 => N00199
);
U1306 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => L_CE
);
U291 : XOR2	PORT MAP(
	I1 => C7, 
	I0 => N00093, 
	O => TQ7
);
U263 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00165
);
U233 : CY_MUX	PORT MAP(
	S => N00271, 
	CI => C2, 
	CO => C3, 
	DI => N00095
);
U265 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00165, 
	O => TQ5
);
U4 : CY_MUX	PORT MAP(
	S => N00343, 
	CI => C0, 
	CO => C1, 
	DI => N00095
);
U1188 : XOR2	PORT MAP(
	I1 => C14, 
	I0 => N00129, 
	O => TQ14
);
U298 : CY_MUX	PORT MAP(
	S => N00093, 
	CI => C7, 
	CO => C8, 
	DI => N00095
);
U6 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => N00343, 
	O => TQ0
);
U237 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00237
);
U814 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D7, 
	I2 => C7, 
	O => MD7, 
	I1 => N00093
);
U239 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00237, 
	O => TQ3
);
U1262 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D14, 
	I2 => C14, 
	O => MD14, 
	I1 => N00129
);
U26 : CY_MUX	PORT MAP(
	S => N00309, 
	CI => C1, 
	CO => C2, 
	DI => N00095
);
U1263 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D12, 
	I2 => C12, 
	O => MD12, 
	I1 => N00201
);
U1264 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D13, 
	I2 => C13, 
	O => MD13, 
	I1 => N00166
);
U28 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00309, 
	O => TQ1
);
U1265 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D11, 
	I2 => C11, 
	O => MD11, 
	I1 => N00238
);
U1266 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D9, 
	I2 => C9, 
	O => MD9, 
	I1 => N00310
);
U1202 : CY_MUX	PORT MAP(
	S => N00345, 
	CI => C8, 
	CO => C9, 
	DI => N00097
);
U1203 : CY_MUX	PORT MAP(
	S => N00310, 
	CI => C9, 
	CO => C10, 
	DI => N00097
);
U1267 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D15, 
	I2 => C15, 
	O => MD15, 
	I1 => N00094
);
U1236 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D8, 
	I2 => C8, 
	O => MD8, 
	I1 => N00345
);
U1204 : CY_MUX	PORT MAP(
	S => N00273, 
	CI => C10, 
	CO => C11, 
	DI => N00097
);
U1268 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D10, 
	I2 => C10, 
	O => MD10, 
	I1 => N00273
);
U1205 : CY_MUX	PORT MAP(
	S => N00238, 
	CI => C11, 
	CO => C12, 
	DI => N00097
);
U923 : VCC	PORT MAP(
	P => N00379
);
U1206 : CY_MUX	PORT MAP(
	S => N00201, 
	CI => C12, 
	CO => C13, 
	DI => N00097
);
U1207 : CY_MUX	PORT MAP(
	S => N00166, 
	CI => C13, 
	CO => C14, 
	DI => N00097
);
U1208 : CY_MUX	PORT MAP(
	S => N00129, 
	CI => C14, 
	CO => C15, 
	DI => N00097
);
U1209 : CY_MUX	PORT MAP(
	S => N00094, 
	CI => C15, 
	CO => N00089, 
	DI => N00097
);
U742 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D0, 
	I2 => C0, 
	O => MD0, 
	I1 => N00343
);
U1191 : FDCE	PORT MAP(
	D => MD14, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00129
);
U1192 : FDCE	PORT MAP(
	D => MD10, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00273
);
U1193 : FDCE	PORT MAP(
	D => MD11, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00238
);
U748 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D1, 
	I2 => C1, 
	O => MD1, 
	I1 => N00309
);
U1194 : FDCE	PORT MAP(
	D => MD12, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00201
);
U272 : CY_MUX	PORT MAP(
	S => N00165, 
	CI => C5, 
	CO => C6, 
	DI => N00095
);
U1195 : FDCE	PORT MAP(
	D => MD13, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00166
);
U1196 : FDCE	PORT MAP(
	D => MD15, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00094
);
U276 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00127
);
U278 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => N00127, 
	O => TQ6
);
U1169 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00089, 
	O => CEO
);
U886 : GND	PORT MAP(
	G => N00095
);
U246 : CY_MUX	PORT MAP(
	S => N00237, 
	CI => C3, 
	CO => C4, 
	DI => N00095
);
U35 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00309
);
U36 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00343
);
U1213 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => N00310, 
	O => TQ9
);
U1214 : FDCE	PORT MAP(
	D => MD9, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00310
);
U1215 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => N00238, 
	O => TQ11
);
U1216 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => N00166, 
	O => TQ13
);
U1217 : XOR2	PORT MAP(
	I1 => C8, 
	I0 => N00345, 
	O => TQ8
);
U1218 : FDCE	PORT MAP(
	D => MD8, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00345
);
U1219 : XOR2	PORT MAP(
	I1 => C10, 
	I0 => N00273, 
	O => TQ10
);
U787 : FMAP	PORT MAP(
	I4 => L, 
	I3 => D2, 
	I2 => C2, 
	O => MD2, 
	I1 => N00271
);
U250 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00199
);
U252 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => N00199, 
	O => TQ4
);
U285 : CY_MUX	PORT MAP(
	S => N00127, 
	CI => C6, 
	CO => C7, 
	DI => N00095
);
U224 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00271
);
U289 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00093
);
U226 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => N00271, 
	O => TQ2
);
U3 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00379
);
U1079 : M2_1	PORT MAP(
	D0 => TQ0, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U1069 : M2_1	PORT MAP(
	D0 => TQ2, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U1059 : M2_1	PORT MAP(
	D0 => TQ4, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U1049 : M2_1	PORT MAP(
	D0 => TQ6, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U1226 : M2_1	PORT MAP(
	D0 => TQ13, 
	D1 => D13, 
	S0 => L, 
	O => MD13
);
U1227 : M2_1	PORT MAP(
	D0 => TQ12, 
	D1 => D12, 
	S0 => L, 
	O => MD12
);
U1228 : M2_1	PORT MAP(
	D0 => TQ11, 
	D1 => D11, 
	S0 => L, 
	O => MD11
);
U1190 : M2_1	PORT MAP(
	D0 => TQ15, 
	D1 => D15, 
	S0 => L, 
	O => MD15
);
U1229 : M2_1	PORT MAP(
	D0 => TQ10, 
	D1 => D10, 
	S0 => L, 
	O => MD10
);
U1074 : M2_1	PORT MAP(
	D0 => TQ1, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U1185 : M2_1	PORT MAP(
	D0 => TQ14, 
	D1 => D14, 
	S0 => L, 
	O => MD14
);
U1064 : M2_1	PORT MAP(
	D0 => TQ3, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U1230 : M2_1	PORT MAP(
	D0 => TQ9, 
	D1 => D9, 
	S0 => L, 
	O => MD9
);
U1054 : M2_1	PORT MAP(
	D0 => TQ5, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U1033 : M2_1	PORT MAP(
	D0 => TQ7, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U1231 : M2_1	PORT MAP(
	D0 => TQ8, 
	D1 => D8, 
	S0 => L, 
	O => MD8
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMP2 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	EQ : OUT std_logic
); END COMP2;



ARCHITECTURE STRUCTURE OF COMP2 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB0 : std_logic;
SIGNAL AB1 : std_logic;

-- GATE INSTANCES

BEGIN
U30 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U31 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
U35 : AND2	PORT MAP(
	I0 => AB1, 
	I1 => AB0, 
	O => EQ
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMPMC16 IS PORT (
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
	GT : OUT std_logic;
	LT : OUT std_logic
); END COMPMC16;



ARCHITECTURE STRUCTURE OF COMPMC16 IS

-- COMPONENTS

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CC5 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL CC6 : std_logic;
SIGNAL CC1 : std_logic;
SIGNAL CC7 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C15 : std_logic;
SIGNAL CC2 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL EQ45 : std_logic;
SIGNAL EQEF : std_logic;
SIGNAL EQ23 : std_logic;
SIGNAL EQCD : std_logic;
SIGNAL EQ67 : std_logic;
SIGNAL EQ89 : std_logic;
SIGNAL EQAB : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL CC4 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL CC3 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL AB11 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL EQ : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL N00185 : std_logic;
SIGNAL EQ01 : std_logic;
SIGNAL AB13 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB12 : std_logic;
SIGNAL AB8 : std_logic;
SIGNAL AB10 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB14 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB9 : std_logic;
SIGNAL I11 : std_logic;
SIGNAL B8B : std_logic;
SIGNAL B15B : std_logic;
SIGNAL B9B : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB15 : std_logic;
SIGNAL B11B : std_logic;
SIGNAL I2 : std_logic;
SIGNAL I0 : std_logic;
SIGNAL I8 : std_logic;
SIGNAL I15 : std_logic;
SIGNAL B0B : std_logic;
SIGNAL I10 : std_logic;
SIGNAL I14 : std_logic;
SIGNAL I5 : std_logic;
SIGNAL B4B : std_logic;
SIGNAL I3 : std_logic;
SIGNAL B12B : std_logic;
SIGNAL B14B : std_logic;
SIGNAL B10B : std_logic;
SIGNAL I4 : std_logic;
SIGNAL B13B : std_logic;
SIGNAL B6B : std_logic;
SIGNAL I7 : std_logic;
SIGNAL I12 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL I6 : std_logic;
SIGNAL B2B : std_logic;
SIGNAL B7B : std_logic;
SIGNAL I9 : std_logic;
SIGNAL N00366 : std_logic;
SIGNAL CC0 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00375 : std_logic;
SIGNAL B5B : std_logic;
SIGNAL B1B : std_logic;
SIGNAL B3B : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
LT<=N00116;
U2015 : FMAP	PORT MAP(
	I4 => B11, 
	I3 => A11, 
	I2 => B10, 
	O => EQAB, 
	I1 => A10
);
U1759 : INV	PORT MAP(
	O => B6B, 
	I => B6
);
U1727 : INV	PORT MAP(
	O => B3B, 
	I => B3
);
U2016 : FMAP	PORT MAP(
	I4 => B13, 
	I3 => A13, 
	I2 => B12, 
	O => EQCD, 
	I1 => A12
);
U1891 : GND	PORT MAP(
	G => N00185
);
U1728 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C3, 
	CO => C4, 
	DI => A3
);
U1893 : CY_MUX	PORT MAP(
	S => EQ89, 
	CI => CC4, 
	CO => CC5, 
	DI => N00185
);
U1830 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B4, 
	O => I4, 
	I1 => A4
);
U1862 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B15, 
	O => I15, 
	I1 => A15
);
U1894 : AND2	PORT MAP(
	I0 => AB8, 
	I1 => AB9, 
	O => EQ89
);
U1831 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B7, 
	O => I7, 
	I1 => A7
);
U1863 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B14, 
	O => I14, 
	I1 => A14
);
U1864 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B13, 
	O => I13, 
	I1 => A13
);
U1865 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B12, 
	O => I12, 
	I1 => A12
);
U1897 : XNOR2	PORT MAP(
	I1 => B10, 
	I0 => A10, 
	O => AB10
);
U1898 : XNOR2	PORT MAP(
	I1 => B11, 
	I0 => A11, 
	O => AB11
);
U1866 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B11, 
	O => I11, 
	I1 => A11
);
U1867 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B8, 
	O => I8, 
	I1 => A8
);
U1868 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B9, 
	O => I9, 
	I1 => A9
);
U1869 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B10, 
	O => I10, 
	I1 => A10
);
U1838 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B6, 
	O => I6, 
	I1 => A6
);
U1940 : XOR2	PORT MAP(
	I1 => B11B, 
	I0 => A11, 
	O => I11
);
U1685 : FMAP	PORT MAP(
	I4 => B5, 
	I3 => A5, 
	I2 => B4, 
	O => EQ45, 
	I1 => A4
);
U1941 : XOR2	PORT MAP(
	I1 => B9B, 
	I0 => A9, 
	O => I9
);
U1621 : AND2	PORT MAP(
	I0 => AB2, 
	I1 => AB3, 
	O => EQ23
);
U1942 : CY_MUX	PORT MAP(
	S => I9, 
	CI => C9, 
	CO => C10, 
	DI => A9
);
U1911 : CY_MUX	PORT MAP(
	S => EQEF, 
	CI => CC7, 
	CO => EQ, 
	DI => N00185
);
U1943 : INV	PORT MAP(
	O => B9B, 
	I => B9
);
U1912 : AND2	PORT MAP(
	I0 => AB14, 
	I1 => AB15, 
	O => EQEF
);
U1944 : INV	PORT MAP(
	O => B8B, 
	I => B8
);
U1945 : CY_MUX	PORT MAP(
	S => I8, 
	CI => C8, 
	CO => C9, 
	DI => A8
);
U1658 : AND2	PORT MAP(
	I0 => AB6, 
	I1 => AB7, 
	O => EQ67
);
U1790 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U1915 : NOR2	PORT MAP(
	I1 => EQ, 
	I0 => N00116, 
	O => GT
);
U1949 : XOR2	PORT MAP(
	I1 => B8B, 
	I0 => A8, 
	O => I8
);
U1760 : CY_MUX	PORT MAP(
	S => I6, 
	CI => C6, 
	CO => C7, 
	DI => A6
);
U1917 : XOR2	PORT MAP(
	I1 => B12B, 
	I0 => A12, 
	O => I12
);
U1 : XOR2	PORT MAP(
	I1 => B0B, 
	I0 => A0, 
	O => I0
);
U1918 : CY_MUX	PORT MAP(
	S => I12, 
	CI => C12, 
	CO => C13, 
	DI => A12
);
U1730 : XOR2	PORT MAP(
	I1 => B3B, 
	I0 => A3, 
	O => I3
);
U1919 : INV	PORT MAP(
	O => B12B, 
	I => B12
);
U1762 : XOR2	PORT MAP(
	I1 => B6B, 
	I0 => A6, 
	O => I6
);
U3 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C0, 
	CO => C1, 
	DI => A0
);
U1733 : XOR2	PORT MAP(
	I1 => B4B, 
	I0 => A4, 
	O => I4
);
U1735 : CY_MUX	PORT MAP(
	S => I4, 
	CI => C4, 
	CO => C5, 
	DI => A4
);
U1736 : INV	PORT MAP(
	O => B4B, 
	I => B4
);
U1708 : XOR2	PORT MAP(
	I1 => B1B, 
	I0 => A1, 
	O => I1
);
U1691 : FMAP	PORT MAP(
	I4 => B7, 
	I3 => A7, 
	I2 => B6, 
	O => EQ67, 
	I1 => A6
);
U1661 : CY_MUX	PORT MAP(
	S => EQ67, 
	CI => CC3, 
	CO => CC4, 
	DI => N00182
);
U1952 : INV	PORT MAP(
	O => N00116, 
	I => LT_1
);
U1664 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => AB7
);
U1665 : XNOR2	PORT MAP(
	I1 => B6, 
	I0 => A6, 
	O => AB6
);
U1922 : INV	PORT MAP(
	O => B13B, 
	I => B13
);
U1602 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => AB1
);
U1923 : CY_MUX	PORT MAP(
	S => I13, 
	CI => C13, 
	CO => C14, 
	DI => A13
);
U1604 : XNOR2	PORT MAP(
	I1 => B0, 
	I0 => A0, 
	O => AB0
);
U1924 : XOR2	PORT MAP(
	I1 => B13B, 
	I0 => A13, 
	O => I13
);
U1636 : AND2	PORT MAP(
	I0 => AB4, 
	I1 => AB5, 
	O => EQ45
);
U1925 : XOR2	PORT MAP(
	I1 => B15B, 
	I0 => A15, 
	O => I15
);
U1926 : CY_MUX	PORT MAP(
	S => I15, 
	CI => C15, 
	CO => LT_1, 
	DI => A15
);
U1482 : GND	PORT MAP(
	G => N00182
);
U1639 : CY_MUX	PORT MAP(
	S => EQ45, 
	CI => CC2, 
	CO => CC3, 
	DI => N00182
);
U1927 : INV	PORT MAP(
	O => B15B, 
	I => B15
);
U1483 : VCC	PORT MAP(
	P => N00366
);
U1484 : VCC	PORT MAP(
	P => N00375
);
U1773 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U1710 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C1, 
	CO => C2, 
	DI => A1
);
U1743 : INV	PORT MAP(
	O => B5B, 
	I => B5
);
U1711 : INV	PORT MAP(
	O => B1B, 
	I => B1
);
U1744 : CY_MUX	PORT MAP(
	S => I5, 
	CI => C5, 
	CO => C6, 
	DI => A5
);
U2001 : FMAP	PORT MAP(
	I4 => B9, 
	I3 => A9, 
	I2 => B8, 
	O => EQ89, 
	I1 => A8
);
U2002 : FMAP	PORT MAP(
	I4 => B15, 
	I3 => A15, 
	I2 => B14, 
	O => EQEF, 
	I1 => A14
);
U1746 : XOR2	PORT MAP(
	I1 => B5B, 
	I0 => A5, 
	O => I5
);
U1779 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U1717 : XOR2	PORT MAP(
	I1 => B2B, 
	I0 => A2, 
	O => I2
);
U1749 : XOR2	PORT MAP(
	I1 => B7B, 
	I0 => A7, 
	O => I7
);
U1719 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C2, 
	CO => C3, 
	DI => A2
);
U1823 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B5, 
	O => I5, 
	I1 => A5
);
U1888 : XNOR2	PORT MAP(
	I1 => B8, 
	I0 => A8, 
	O => AB8
);
U1889 : XNOR2	PORT MAP(
	I1 => B9, 
	I0 => A9, 
	O => AB9
);
U1033 : CY_MUX	PORT MAP(
	S => EQ01, 
	CI => CC0, 
	CO => CC1, 
	DI => N00182
);
U1930 : INV	PORT MAP(
	O => B14B, 
	I => B14
);
U1642 : XNOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => AB5
);
U1643 : XNOR2	PORT MAP(
	I1 => B4, 
	I0 => A4, 
	O => AB4
);
U1931 : CY_MUX	PORT MAP(
	S => I14, 
	CI => C14, 
	CO => C15, 
	DI => A14
);
U1900 : CY_MUX	PORT MAP(
	S => EQAB, 
	CI => CC5, 
	CO => CC6, 
	DI => N00185
);
U1612 : XNOR2	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => AB2
);
U1932 : XOR2	PORT MAP(
	I1 => B14B, 
	I0 => A14, 
	O => I14
);
U1901 : AND2	PORT MAP(
	I0 => AB10, 
	I1 => AB11, 
	O => EQAB
);
U1613 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => AB3
);
U1933 : XOR2	PORT MAP(
	I1 => B10B, 
	I0 => A10, 
	O => I10
);
U1934 : CY_MUX	PORT MAP(
	S => I10, 
	CI => C10, 
	CO => C11, 
	DI => A10
);
U1935 : INV	PORT MAP(
	O => B10B, 
	I => B10
);
U1903 : XNOR2	PORT MAP(
	I1 => B12, 
	I0 => A12, 
	O => AB12
);
U1679 : FMAP	PORT MAP(
	I4 => B3, 
	I3 => A3, 
	I2 => B2, 
	O => EQ23, 
	I1 => A2
);
U1904 : XNOR2	PORT MAP(
	I1 => B13, 
	I0 => A13, 
	O => AB13
);
U1492 : FMAP	PORT MAP(
	I4 => B1, 
	I3 => A1, 
	I2 => B0, 
	O => EQ01, 
	I1 => A0
);
U1938 : INV	PORT MAP(
	O => B11B, 
	I => B11
);
U1618 : CY_MUX	PORT MAP(
	S => EQ23, 
	CI => CC1, 
	CO => CC2, 
	DI => N00182
);
U1906 : CY_MUX	PORT MAP(
	S => EQCD, 
	CI => CC6, 
	CO => CC7, 
	DI => N00185
);
U1907 : AND2	PORT MAP(
	I0 => AB12, 
	I1 => AB13, 
	O => EQCD
);
U1939 : CY_MUX	PORT MAP(
	S => I11, 
	CI => C11, 
	CO => C12, 
	DI => A11
);
U1751 : CY_MUX	PORT MAP(
	S => I7, 
	CI => C7, 
	CO => C8, 
	DI => A7
);
U1908 : XNOR2	PORT MAP(
	I1 => B14, 
	I0 => A14, 
	O => AB14
);
U1783 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U1752 : INV	PORT MAP(
	O => B7B, 
	I => B7
);
U1909 : XNOR2	PORT MAP(
	I1 => B15, 
	I0 => A15, 
	O => AB15
);
U1720 : INV	PORT MAP(
	O => B2B, 
	I => B2
);
U1145 : AND2	PORT MAP(
	I0 => AB0, 
	I1 => AB1, 
	O => EQ01
);
U1114 : INV	PORT MAP(
	O => B0B, 
	I => B0
);
U1049 : CY_INIT	PORT MAP(
	COUT => CC0, 
	INIT => N00366
);
U153 : CY_INIT	PORT MAP(
	COUT => C0, 
	INIT => N00375
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CY_INIT IS PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END CY_INIT;



ARCHITECTURE STRUCTURE OF CY_INIT IS

-- COMPONENTS

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U2 : CY_MUX	PORT MAP(
	S => N00005, 
	CI => orcad_unused, 
	CO => COUT, 
	DI => INIT
);
U3 : GND	PORT MAP(
	G => N00005
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DEC_CC16 IS PORT (
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
	C_IN : IN std_logic;
	O : OUT std_logic
); END DEC_CC16;



ARCHITECTURE STRUCTURE OF DEC_CC16 IS

-- COMPONENTS

COMPONENT DEC_CC4	 PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	C_IN : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00021 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : DEC_CC4	PORT MAP(
	A0 => A8, 
	A1 => A9, 
	A2 => A10, 
	A3 => A11, 
	C_IN => N00021, 
	O => N00016
);
U56 : DEC_CC4	PORT MAP(
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	C_IN => N00011, 
	O => O
);
U89 : DEC_CC4	PORT MAP(
	A0 => A12, 
	A1 => A13, 
	A2 => A14, 
	A3 => A15, 
	C_IN => C_IN, 
	O => N00021
);
U57 : DEC_CC4	PORT MAP(
	A0 => A4, 
	A1 => A5, 
	A2 => A6, 
	A3 => A7, 
	C_IN => N00016, 
	O => N00011
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDC IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END FDC;



ARCHITECTURE STRUCTURE OF FDC IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U30 : FDCE	PORT MAP(
	D => D, 
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q => Q
);
U37 : VCC	PORT MAP(
	P => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDSE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END FDSE;



ARCHITECTURE STRUCTURE OF FDSE IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL A0 : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A_S : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U30 : AND2	PORT MAP(
	I0 => D, 
	I1 => CE, 
	O => A1
);
U32 : AND2B1	PORT MAP(
	I0 => CE, 
	I1 => N00006, 
	O => A0
);
U38 : OR3	PORT MAP(
	I2 => A0, 
	I1 => S, 
	I0 => A1, 
	O => A_S
);
U34 : FD	PORT MAP(
	D => A_S, 
	C => C, 
	Q => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTPLE IS PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END FTPLE;



ARCHITECTURE STRUCTURE OF FTPLE IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDPE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL TQ : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL MD : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U32 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U68 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => N00013
);
U35 : FDPE	PORT MAP(
	D => MD, 
	CE => N00013, 
	C => C, 
	PRE => PRE, 
	Q => N00006
);
U30 : M2_1	PORT MAP(
	D0 => TQ, 
	D1 => D, 
	S0 => L, 
	O => MD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTRSLE IS PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END FTRSLE;



ARCHITECTURE STRUCTURE OF FTRSLE IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL CE_S_L : std_logic;
SIGNAL MD_S : std_logic;
SIGNAL MD : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U32 : XOR2	PORT MAP(
	I1 => N00007, 
	I0 => T, 
	O => TQ
);
U70 : OR3	PORT MAP(
	I2 => S, 
	I1 => L, 
	I0 => CE, 
	O => CE_S_L
);
U76 : OR2	PORT MAP(
	I1 => MD, 
	I0 => S, 
	O => MD_S
);
U35 : FDRE	PORT MAP(
	D => MD_S, 
	CE => CE_S_L, 
	C => C, 
	R => R, 
	Q => N00007
);
U30 : M2_1	PORT MAP(
	D0 => TQ, 
	D1 => D, 
	S0 => L, 
	O => MD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD16 IS PORT (
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
	C : IN std_logic;
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
); END IFD16;



ARCHITECTURE STRUCTURE OF IFD16 IS

-- COMPONENTS

COMPONENT IFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U44 : IFD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U34 : IFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U45 : IFD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
);
U35 : IFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U46 : IFD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
);
U47 : IFD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U36 : IFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U37 : IFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U48 : IFD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U38 : IFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U49 : IFD	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15
);
U39 : IFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U40 : IFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U41 : IFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U42 : IFD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
U43 : IFD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END IFD_1;



ARCHITECTURE STRUCTURE OF IFD_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT IFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U20 : INV	PORT MAP(
	O => CB, 
	I => C
);
U15 : IFD	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILD8 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	G : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END ILD8;



ARCHITECTURE STRUCTURE OF ILD8 IS

-- COMPONENTS

COMPONENT ILD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U34 : ILD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U35 : ILD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U36 : ILD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U37 : ILD	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
U30 : ILD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U31 : ILD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U32 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IPAD4 IS PORT (
	I0 : OUT std_logic;
	I1 : OUT std_logic;
	I2 : OUT std_logic;
	I3 : OUT std_logic
); END IPAD4;



ARCHITECTURE STRUCTURE OF IPAD4 IS

-- COMPONENTS

COMPONENT IPAD
	PORT (
	IPAD : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : IPAD	PORT MAP(
	IPAD => I0
);
U2 : IPAD	PORT MAP(
	IPAD => I1
);
U3 : IPAD	PORT MAP(
	IPAD => I2
);
U4 : IPAD	PORT MAP(
	IPAD => I3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NAND5 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END NAND5;



ARCHITECTURE STRUCTURE OF NAND5 IS

-- COMPONENTS

COMPONENT NAND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR5B3 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR5B3;



ARCHITECTURE STRUCTURE OF NOR5B3 IS

-- COMPONENTS

COMPONENT NOR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B1
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NOR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3B1	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CJ4RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END CJ4RE;



ARCHITECTURE STRUCTURE OF CJ4RE IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL Q3B : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00014;
Q2<=N00019;
Q3<=N00007;
U30 : INV	PORT MAP(
	O => Q3B, 
	I => N00007
);
U33 : FDRE	PORT MAP(
	D => N00009, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00014
);
U34 : FDRE	PORT MAP(
	D => N00014, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U31 : FDRE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00007
);
U32 : FDRE	PORT MAP(
	D => Q3B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00009
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END FD;



ARCHITECTURE STRUCTURE OF FD IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
U37 : FDCE	PORT MAP(
	D => D, 
	CE => N00007, 
	C => C, 
	CLR => N00009, 
	Q => Q
);
U40 : VCC	PORT MAP(
	P => N00007
);
U43 : GND	PORT MAP(
	G => N00009
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTP IS PORT (
	T : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END FTP;



ARCHITECTURE STRUCTURE OF FTP IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDP	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U32 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U35 : FDP	PORT MAP(
	D => TQ, 
	C => C, 
	PRE => PRE, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD4 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END IFD4;



ARCHITECTURE STRUCTURE OF IFD4 IS

-- COMPONENTS

COMPONENT IFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U55 : IFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U56 : IFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U53 : IFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U54 : IFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IPAD16 IS PORT (
	I0 : OUT std_logic;
	I1 : OUT std_logic;
	I2 : OUT std_logic;
	I3 : OUT std_logic;
	I4 : OUT std_logic;
	I5 : OUT std_logic;
	I6 : OUT std_logic;
	I7 : OUT std_logic;
	I8 : OUT std_logic;
	I9 : OUT std_logic;
	I10 : OUT std_logic;
	I11 : OUT std_logic;
	I12 : OUT std_logic;
	I13 : OUT std_logic;
	I14 : OUT std_logic;
	I15 : OUT std_logic
); END IPAD16;



ARCHITECTURE STRUCTURE OF IPAD16 IS

-- COMPONENTS

COMPONENT IPAD
	PORT (
	IPAD : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : IPAD	PORT MAP(
	IPAD => I12
);
U14 : IPAD	PORT MAP(
	IPAD => I13
);
U15 : IPAD	PORT MAP(
	IPAD => I14
);
U16 : IPAD	PORT MAP(
	IPAD => I15
);
U1 : IPAD	PORT MAP(
	IPAD => I0
);
U2 : IPAD	PORT MAP(
	IPAD => I1
);
U3 : IPAD	PORT MAP(
	IPAD => I2
);
U4 : IPAD	PORT MAP(
	IPAD => I3
);
U5 : IPAD	PORT MAP(
	IPAD => I4
);
U6 : IPAD	PORT MAP(
	IPAD => I5
);
U7 : IPAD	PORT MAP(
	IPAD => I6
);
U8 : IPAD	PORT MAP(
	IPAD => I7
);
U9 : IPAD	PORT MAP(
	IPAD => I8
);
U10 : IPAD	PORT MAP(
	IPAD => I9
);
U11 : IPAD	PORT MAP(
	IPAD => I10
);
U12 : IPAD	PORT MAP(
	IPAD => I11
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LD8CE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	GE : IN std_logic;
	G : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END LD8CE;



ARCHITECTURE STRUCTURE OF LD8CE IS

-- COMPONENTS

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : LDCE	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4, 
	CLR => CLR, 
	GE => GE
);
U2 : LDCE	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5, 
	CLR => CLR, 
	GE => GE
);
U3 : LDCE	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6, 
	CLR => CLR, 
	GE => GE
);
U4 : LDCE	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7, 
	CLR => CLR, 
	GE => GE
);
U5 : LDCE	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3, 
	CLR => CLR, 
	GE => GE
);
U6 : LDCE	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2, 
	CLR => CLR, 
	GE => GE
);
U7 : LDCE	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1, 
	CLR => CLR, 
	GE => GE
);
U8 : LDCE	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0, 
	CLR => CLR, 
	GE => GE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDT8 IS PORT (
	T : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	C : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END OFDT8;



ARCHITECTURE STRUCTURE OF OFDT8 IS

-- COMPONENTS

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00233 : std_logic;

-- GATE INSTANCES

BEGIN
U33 : OFDT	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3
);
U34 : OFDT	PORT MAP(
	T => T, 
	D => D4, 
	C => C, 
	O => O4
);
U35 : OFDT	PORT MAP(
	T => T, 
	D => D5, 
	C => C, 
	O => O5
);
U36 : OFDT	PORT MAP(
	T => T, 
	D => D6, 
	C => C, 
	O => O6
);
U37 : OFDT	PORT MAP(
	T => T, 
	D => D7, 
	C => C, 
	O => O7
);
U30 : OFDT	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0
);
U31 : OFDT	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1
);
U32 : OFDT	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_157 IS PORT (
	A1 : IN std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	S : IN std_logic;
	G : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic
); END X74_157;



ARCHITECTURE STRUCTURE OF X74_157 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
U66 : INV	PORT MAP(
	O => E, 
	I => G
);
U67 : M2_1E	PORT MAP(
	D0 => A4, 
	D1 => B4, 
	S0 => S, 
	O => Y4, 
	E => E
);
U68 : M2_1E	PORT MAP(
	D0 => A3, 
	D1 => B3, 
	S0 => S, 
	O => Y3, 
	E => E
);
U69 : M2_1E	PORT MAP(
	D0 => A2, 
	D1 => B2, 
	S0 => S, 
	O => Y2, 
	E => E
);
U70 : M2_1E	PORT MAP(
	D0 => A1, 
	D1 => B1, 
	S0 => S, 
	O => Y1, 
	E => E
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IBUF16 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I8 : IN std_logic;
	I9 : IN std_logic;
	I10 : IN std_logic;
	I11 : IN std_logic;
	I12 : IN std_logic;
	I13 : IN std_logic;
	I14 : IN std_logic;
	I15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END IBUF16;



ARCHITECTURE STRUCTURE OF IBUF16 IS

-- COMPONENTS

COMPONENT IBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U45 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
U30 : IBUF	PORT MAP(
	O => O8, 
	I => I8
);
U31 : IBUF	PORT MAP(
	O => O9, 
	I => I9
);
U32 : IBUF	PORT MAP(
	O => O10, 
	I => I10
);
U33 : IBUF	PORT MAP(
	O => O11, 
	I => I11
);
U34 : IBUF	PORT MAP(
	O => O15, 
	I => I15
);
U35 : IBUF	PORT MAP(
	O => O14, 
	I => I14
);
U36 : IBUF	PORT MAP(
	O => O13, 
	I => I13
);
U37 : IBUF	PORT MAP(
	O => O12, 
	I => I12
);
U38 : IBUF	PORT MAP(
	O => O4, 
	I => I4
);
U39 : IBUF	PORT MAP(
	O => O5, 
	I => I5
);
U40 : IBUF	PORT MAP(
	O => O6, 
	I => I6
);
U41 : IBUF	PORT MAP(
	O => O7, 
	I => I7
);
U42 : IBUF	PORT MAP(
	O => O3, 
	I => I3
);
U43 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U44 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY M8_1E IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	E : IN std_logic;
	O : OUT std_logic
); END M8_1E;



ARCHITECTURE STRUCTURE OF M8_1E IS

-- COMPONENTS

COMPONENT M2_1E	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic;
	E : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M67 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M01 : std_logic;

-- GATE INSTANCES

BEGIN
U56 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => S2, 
	O => O, 
	E => E
);
U47 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => M03
);
U48 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => S0, 
	O => M45
);
U49 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => S0, 
	O => M67
);
U50 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => M47
);
U51 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U53 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR5B2 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR5B2;



ARCHITECTURE STRUCTURE OF OR5B2 IS

-- COMPONENTS

COMPONENT OR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : OR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OR6 IS PORT (
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END OR6;



ARCHITECTURE STRUCTURE OF OR6 IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I12 : std_logic;
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
U85 : OR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_148 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	EI : IN std_logic;
	A0 : OUT std_logic;
	A1 : OUT std_logic;
	A2 : OUT std_logic;
	EO : OUT std_logic;
	GS : OUT std_logic
); END X74_148;



ARCHITECTURE STRUCTURE OF X74_148 IS

-- COMPONENTS

COMPONENT NAND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B1	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00027 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D4 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D11 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D9 : std_logic;
SIGNAL D6 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D10 : std_logic;

-- GATE INSTANCES

BEGIN
EO<=N00027;
U45 : NAND2	PORT MAP(
	I0 => N00028, 
	I1 => N00024, 
	O => N00027
);
U13 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D3
);
U14 : AND3B2	PORT MAP(
	I0 => EI, 
	I1 => I5, 
	I2 => I6, 
	O => D2
);
U15 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I6, 
	I3 => I4, 
	O => D1
);
U48 : NOR2	PORT MAP(
	I1 => I6, 
	I0 => EI, 
	O => D6
);
U17 : NAND2B1	PORT MAP(
	I0 => EI, 
	I1 => N00027, 
	O => GS
);
U3 : NOR4	PORT MAP(
	I3 => D0, 
	I2 => D1, 
	I1 => D2, 
	I0 => D3, 
	O => A0
);
U4 : NOR4	PORT MAP(
	I3 => D4, 
	I2 => D5, 
	I1 => D6, 
	I0 => D7, 
	O => A1
);
U5 : NOR4	PORT MAP(
	I3 => D8, 
	I2 => D9, 
	I1 => D10, 
	I0 => D11, 
	O => A2
);
U6 : NOR2	PORT MAP(
	I1 => I5, 
	I0 => EI, 
	O => D9
);
U7 : NOR2	PORT MAP(
	I1 => I6, 
	I0 => EI, 
	O => D10
);
U8 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D11
);
U9 : NOR2	PORT MAP(
	I1 => I4, 
	I0 => EI, 
	O => D8
);
U10 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D7
);
U11 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I5, 
	I3 => I4, 
	O => D5
);
U12 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I2, 
	I2 => I5, 
	I3 => I4, 
	O => D4
);
U16 : AND5B2	PORT MAP(
	I0 => EI, 
	I1 => I1, 
	I2 => I6, 
	I3 => I4, 
	I4 => I2, 
	O => D0
);
U28 : AND5B1	PORT MAP(
	I0 => EI, 
	I1 => I7, 
	I2 => I6, 
	I3 => I5, 
	I4 => I4, 
	O => N00028
);
U29 : AND5B1	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I2, 
	I3 => I1, 
	I4 => I0, 
	O => N00024
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XOR9 IS PORT (
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XOR9;



ARCHITECTURE STRUCTURE OF XOR9 IS

-- COMPONENTS

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I58 : std_logic;
SIGNAL I14 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
);
U85 : XOR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
	I0 => I0, 
	O => O
);
U69 : XOR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND5B4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END AND5B4;



ARCHITECTURE STRUCTURE OF AND5B4 IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : AND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3B2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
); END AND8;



ARCHITECTURE STRUCTURE OF AND8 IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00035 : std_logic;
SIGNAL CIN : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL C0 : std_logic;

-- GATE INSTANCES

BEGIN
U127 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => O, 
	DI => N00022
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00022
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00035
);
U109 : GND	PORT MAP(
	G => N00022
);
U110 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	O => S0
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00035
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_160 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	LOAD : IN std_logic;
	ENP : IN std_logic;
	ENT : IN std_logic;
	CK : IN std_logic;
	CLR : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	RCO : OUT std_logic
); END X74_160;



ARCHITECTURE STRUCTURE OF X74_160 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

COMPONENT AND5B2	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00042 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL TQB : std_logic;
SIGNAL TQAD : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL LB : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL CE : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00020;
QB<=N00032;
QC<=N00042;
QD<=N00031;
U77 : AND2	PORT MAP(
	I0 => T2, 
	I1 => N00042, 
	O => TQB
);
U78 : OR2	PORT MAP(
	I1 => TQB, 
	I0 => TQAD, 
	O => T3
);
U79 : INV	PORT MAP(
	O => LB, 
	I => LOAD
);
U67 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U68 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U115 : AND3	PORT MAP(
	I0 => ENT, 
	I1 => N00020, 
	I2 => N00031, 
	O => TQAD
);
U70 : AND2	PORT MAP(
	I0 => N00020, 
	I1 => N00032, 
	O => T2
);
U71 : AND2B1	PORT MAP(
	I0 => N00031, 
	I1 => N00020, 
	O => T1
);
U72 : FTCLE	PORT MAP(
	D => A, 
	L => LB, 
	T => CE, 
	CE => CE, 
	C => CK, 
	Q => N00020, 
	CLR => CLRB
);
U73 : FTCLE	PORT MAP(
	D => D, 
	L => LB, 
	T => T3, 
	CE => CE, 
	C => CK, 
	Q => N00031, 
	CLR => CLRB
);
U74 : FTCLE	PORT MAP(
	D => C, 
	L => LB, 
	T => T2, 
	CE => CE, 
	C => CK, 
	Q => N00042, 
	CLR => CLRB
);
U111 : AND5B2	PORT MAP(
	I0 => N00032, 
	I1 => N00042, 
	I2 => ENT, 
	I3 => N00020, 
	I4 => N00031, 
	O => RCO
);
U75 : FTCLE	PORT MAP(
	D => B, 
	L => LB, 
	T => T1, 
	CE => CE, 
	C => CK, 
	Q => N00032, 
	CLR => CLRB
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY X74_518 IS PORT (
	P0 : IN std_logic;
	Q0 : IN std_logic;
	P1 : IN std_logic;
	Q1 : IN std_logic;
	P2 : IN std_logic;
	Q2 : IN std_logic;
	P3 : IN std_logic;
	Q3 : IN std_logic;
	P4 : IN std_logic;
	Q4 : IN std_logic;
	P5 : IN std_logic;
	Q5 : IN std_logic;
	P6 : IN std_logic;
	Q6 : IN std_logic;
	P7 : IN std_logic;
	Q7 : IN std_logic;
	G : IN std_logic;
	PEQ : OUT std_logic
); END X74_518;



ARCHITECTURE STRUCTURE OF X74_518 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL PQ2 : std_logic;
SIGNAL PQ1 : std_logic;
SIGNAL PQ6 : std_logic;
SIGNAL PQ3 : std_logic;
SIGNAL PQ03 : std_logic;
SIGNAL PQ47 : std_logic;
SIGNAL PQ0 : std_logic;
SIGNAL PQ7 : std_logic;
SIGNAL PQ5 : std_logic;
SIGNAL PQ4 : std_logic;

-- GATE INSTANCES

BEGIN
U45 : XNOR2	PORT MAP(
	I1 => P0, 
	I0 => Q0, 
	O => PQ0
);
U32 : AND4	PORT MAP(
	I0 => PQ7, 
	I1 => PQ6, 
	I2 => PQ5, 
	I3 => PQ4, 
	O => PQ47
);
U33 : XNOR2	PORT MAP(
	I1 => P6, 
	I0 => Q6, 
	O => PQ6
);
U34 : XNOR2	PORT MAP(
	I1 => P7, 
	I0 => Q7, 
	O => PQ7
);
U35 : XNOR2	PORT MAP(
	I1 => P5, 
	I0 => Q5, 
	O => PQ5
);
U36 : XNOR2	PORT MAP(
	I1 => P4, 
	I0 => Q4, 
	O => PQ4
);
U41 : AND4	PORT MAP(
	I0 => PQ3, 
	I1 => PQ2, 
	I2 => PQ1, 
	I3 => PQ0, 
	O => PQ03
);
U42 : XNOR2	PORT MAP(
	I1 => P2, 
	I0 => Q2, 
	O => PQ2
);
U43 : XNOR2	PORT MAP(
	I1 => P3, 
	I0 => Q3, 
	O => PQ3
);
U76 : AND3B1	PORT MAP(
	I0 => G, 
	I1 => PQ47, 
	I2 => PQ03, 
	O => PEQ
);
U44 : XNOR2	PORT MAP(
	I1 => P1, 
	I0 => Q1, 
	O => PQ1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OSC5 IS 
GENERIC(
OSC        : string(1 to 8);
DIVIDE1_BY : integer; 
DIVIDE2_BY : integer);
PORT (
	OSC2 : OUT std_logic;
	OSC1 : OUT std_logic
); END OSC5;



ARCHITECTURE STRUCTURE OF OSC5 IS

-- COMPONENTS

COMPONENT OSC52
	GENERIC(
	OSC        : string(1 to 8);
	DIVIDE1_BY : integer; 
	DIVIDE2_BY : integer);
	PORT (
	C : IN std_logic;
	OSC2 : OUT std_logic;
	OSC1 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OSC52	GENERIC MAP (
	OSC => OSC,
	DIVIDE2_BY => DIVIDE2_BY,
	DIVIDE1_BY => DIVIDE1_BY
	) 
	PORT MAP(
	C => orcad_unused, 
	OSC2 => OSC2, 
	OSC1 => OSC1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ACC8 IS PORT (
	CI : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	L : IN std_logic;
	ADD : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic;
	R : IN std_logic
); END ACC8;



ARCHITECTURE STRUCTURE OF ACC8 IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT ADSU8	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S : std_logic_vector(7 DOWNTO 0);
SIGNAL R_SD3 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL SD6 : std_logic;
SIGNAL SD5 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL R_SD6 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL R_SD4 : std_logic;
SIGNAL R_SD5 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL R_SD7 : std_logic;
SIGNAL SD7 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL SD4 : std_logic;
SIGNAL R_L_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00038;
Q1<=N00040;
Q2<=N00042;
Q3<=N00044;
Q4<=N00046;
Q5<=N00048;
Q6<=N00050;
Q7<=N00052;
U45 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD1, 
	O => R_SD1
);
U78 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S3, 
	I2 => D3, 
	O => R_SD3, 
	I1 => L
);
U79 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S2, 
	I2 => D2, 
	O => R_SD2, 
	I1 => L
);
U1 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00040
);
U80 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S1, 
	I2 => D1, 
	O => R_SD1, 
	I1 => L
);
U81 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S0, 
	I2 => D0, 
	O => R_SD0, 
	I1 => L
);
U53 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S6, 
	I2 => D6, 
	O => R_SD6, 
	I1 => L
);
U86 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S7, 
	I2 => D7, 
	O => R_SD7, 
	I1 => L
);
U54 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S5, 
	I2 => D5, 
	O => R_SD5, 
	I1 => L
);
U87 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S4, 
	I2 => D4, 
	O => R_SD4, 
	I1 => L
);
U24 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD4, 
	O => R_SD4
);
U25 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD5, 
	O => R_SD5
);
U26 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD6, 
	O => R_SD6
);
U27 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD7, 
	O => R_SD7
);
U28 : GND	PORT MAP(
	G => N00074
);
U100 : FDCE	PORT MAP(
	D => R_SD4, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00046
);
U101 : FDCE	PORT MAP(
	D => R_SD5, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00048
);
U102 : FDCE	PORT MAP(
	D => R_SD6, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00050
);
U103 : FDCE	PORT MAP(
	D => R_SD7, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00052
);
U90 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => R_L_CE
);
U31 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U32 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U97 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00038
);
U98 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00042
);
U99 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00074, 
	Q => N00044
);
U42 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD0, 
	O => R_SD0
);
U22 : M2_1	PORT MAP(
	D0 => S7, 
	D1 => D7, 
	S0 => L, 
	O => SD7
);
U33 : M2_1	PORT MAP(
	D0 => S3, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U88 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U89 : M2_1	PORT MAP(
	D0 => S4, 
	D1 => D4, 
	S0 => L, 
	O => SD4
);
U23 : M2_1	PORT MAP(
	D0 => S6, 
	D1 => D6, 
	S0 => L, 
	O => SD6
);
U47 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U106 : ADSU8	PORT MAP(
	CI => CI, 
	A0 => N00038, 
	A1 => N00040, 
	A2 => N00042, 
	A3 => N00044, 
	A4 => N00046, 
	A5 => N00048, 
	A6 => N00050, 
	A7 => N00052, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	ADD => ADD, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	S4 => S4, 
	S5 => S5, 
	S6 => S6, 
	S7 => S7, 
	CO => CO, 
	OFL => OFL
);
U39 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U93 : M2_1	PORT MAP(
	D0 => S5, 
	D1 => D5, 
	S0 => L, 
	O => SD5
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ADD8 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END ADD8;



ARCHITECTURE STRUCTURE OF ADD8 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00104 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL I7 : std_logic;
SIGNAL I0 : std_logic;
SIGNAL I6 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL I2 : std_logic;
SIGNAL I5 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL I3 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL I4 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N00078 : std_logic;

-- GATE INSTANCES

BEGIN
S1<=N00130;
S2<=N00117;
S3<=N00104;
S4<=N00091;
S5<=N00078;
S6<=N00065;
S7<=N00052;
CO<=N00044;
S0<=N00143;
U77 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => I5, 
	O => N00078
);
U78 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => I4, 
	O => N00091
);
U228 : XOR2	PORT MAP(
	I1 => B0, 
	I0 => A0, 
	O => I0
);
U229 : XOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => I1
);
U16 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U17 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U18 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U19 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U80 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => I7, 
	O => N00052
);
U230 : XOR2	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => I2
);
U81 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => I6, 
	O => N00065
);
U20 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B4, 
	O => I4, 
	I1 => A4
);
U21 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B5, 
	O => I5, 
	I1 => A5
);
U22 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B6, 
	O => I6, 
	I1 => A6
);
U55 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C0, 
	CO => C1, 
	DI => A1
);
U23 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B7, 
	O => I7, 
	I1 => A7
);
U239 : XOR2	PORT MAP(
	I1 => N00044, 
	I0 => C6, 
	O => OFL
);
U58 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C2, 
	CO => C3, 
	DI => A3
);
U107 : CY_MUX	PORT MAP(
	S => I6, 
	CI => C5, 
	CO => C6, 
	DI => A6
);
U62 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C1, 
	CO => C2, 
	DI => A2
);
U63 : CY_MUX	PORT MAP(
	S => I4, 
	CI => C3, 
	CO => C4, 
	DI => A4
);
U64 : CY_MUX	PORT MAP(
	S => I7, 
	CI => C6, 
	CO => N00044, 
	DI => A7
);
U37 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I0, 
	O => N00143, 
	I1 => C_IN
);
U38 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I1, 
	O => N00130, 
	I1 => C0
);
U39 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I2, 
	O => N00117, 
	I1 => C1
);
U110 : CY_MUX	PORT MAP(
	S => I5, 
	CI => C4, 
	CO => C5, 
	DI => A5
);
U111 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C_IN, 
	CO => C0, 
	DI => A0
);
U221 : XOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => I7
);
U40 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I3, 
	O => N00104, 
	I1 => C2
);
U222 : XOR2	PORT MAP(
	I1 => B6, 
	I0 => A6, 
	O => I6
);
U41 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I4, 
	O => N00091, 
	I1 => C3
);
U73 : XOR2	PORT MAP(
	I1 => C_IN, 
	I0 => I0, 
	O => N00143
);
U223 : XOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => I5
);
U224 : XOR2	PORT MAP(
	I1 => B4, 
	I0 => A4, 
	O => I4
);
U42 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I5, 
	O => N00078, 
	I1 => C4
);
U74 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => I1, 
	O => N00130
);
U43 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I6, 
	O => N00065, 
	I1 => C5
);
U75 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => I3, 
	O => N00104
);
U225 : XOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => I3
);
U44 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I7, 
	O => N00052, 
	I1 => C6
);
U76 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => I2, 
	O => N00117
);
U61 : CY_INIT	PORT MAP(
	COUT => C_IN, 
	INIT => CI
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB16RE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB16RE;



ARCHITECTURE STRUCTURE OF CB16RE IS

-- COMPONENTS

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT FTRSE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00184 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL N00171 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL T15 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00171;
TC<=N00184;
Q0<=N00048;
Q1<=N00062;
Q2<=N00080;
Q3<=N00099;
Q4<=N00110;
Q5<=N00128;
Q6<=N00148;
Q7<=N00170;
Q8<=N00038;
Q9<=N00056;
Q10<=N00075;
Q11<=N00096;
Q12<=N00111;
Q13<=N00129;
Q14<=N00149;
U1 : GND	PORT MAP(
	G => N00039
);
U2 : GND	PORT MAP(
	G => N00049
);
U21 : AND2	PORT MAP(
	I0 => N00038, 
	I1 => T8, 
	O => T9
);
U22 : AND3	PORT MAP(
	I0 => N00056, 
	I1 => N00038, 
	I2 => T8, 
	O => T10
);
U23 : AND4	PORT MAP(
	I0 => N00075, 
	I1 => N00056, 
	I2 => N00038, 
	I3 => T8, 
	O => T11
);
U24 : AND4	PORT MAP(
	I0 => N00149, 
	I1 => N00129, 
	I2 => N00111, 
	I3 => T12, 
	O => T15
);
U25 : AND3	PORT MAP(
	I0 => N00129, 
	I1 => N00111, 
	I2 => T12, 
	O => T14
);
U26 : AND2	PORT MAP(
	I0 => N00111, 
	I1 => T12, 
	O => T13
);
U58 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00184, 
	O => CEO
);
U28 : AND4	PORT MAP(
	I0 => N00148, 
	I1 => N00128, 
	I2 => N00110, 
	I3 => T4, 
	O => T7
);
U29 : AND3	PORT MAP(
	I0 => N00128, 
	I1 => N00110, 
	I2 => T4, 
	O => T6
);
U30 : AND2	PORT MAP(
	I0 => N00110, 
	I1 => T4, 
	O => T5
);
U32 : AND4	PORT MAP(
	I0 => N00099, 
	I1 => N00080, 
	I2 => N00062, 
	I3 => N00048, 
	O => T4
);
U33 : VCC	PORT MAP(
	P => N00050
);
U34 : AND2	PORT MAP(
	I0 => N00062, 
	I1 => N00048, 
	O => T2
);
U35 : AND3	PORT MAP(
	I0 => N00080, 
	I1 => N00062, 
	I2 => N00048, 
	O => T3
);
U11 : FTRSE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00170, 
	R => R
);
U4 : FTRSE	PORT MAP(
	T => N00050, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00048, 
	R => R
);
U12 : FTRSE	PORT MAP(
	T => T15, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00171, 
	R => R
);
U5 : FTRSE	PORT MAP(
	T => N00048, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00062, 
	R => R
);
U13 : FTRSE	PORT MAP(
	T => T14, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00149, 
	R => R
);
U14 : FTRSE	PORT MAP(
	T => T13, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00129, 
	R => R
);
U6 : FTRSE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00080, 
	R => R
);
U15 : FTRSE	PORT MAP(
	T => T12, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00111, 
	R => R
);
U7 : FTRSE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00099, 
	R => R
);
U27 : AND5	PORT MAP(
	I0 => N00171, 
	I1 => N00149, 
	I2 => N00129, 
	I3 => N00111, 
	I4 => T12, 
	O => N00184
);
U8 : FTRSE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00110, 
	R => R
);
U16 : FTRSE	PORT MAP(
	T => T11, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00096, 
	R => R
);
U17 : FTRSE	PORT MAP(
	T => T10, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00075, 
	R => R
);
U9 : FTRSE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00128, 
	R => R
);
U18 : FTRSE	PORT MAP(
	T => T9, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00056, 
	R => R
);
U19 : FTRSE	PORT MAP(
	T => T8, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00038, 
	R => R
);
U20 : AND5	PORT MAP(
	I0 => N00096, 
	I1 => N00075, 
	I2 => N00056, 
	I3 => N00038, 
	I4 => T8, 
	O => T12
);
U31 : AND5	PORT MAP(
	I0 => N00170, 
	I1 => N00148, 
	I2 => N00128, 
	I3 => N00110, 
	I4 => T4, 
	O => T8
);
U10 : FTRSE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	S => N00049, 
	Q => N00148, 
	R => R
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB8CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB8CE;



ARCHITECTURE STRUCTURE OF CB8CE IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00034 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00076 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00083;
Q0<=N00019;
Q1<=N00026;
Q2<=N00034;
Q3<=N00043;
Q4<=N00049;
Q5<=N00057;
Q6<=N00066;
Q7<=N00076;
U15 : AND4	PORT MAP(
	I0 => N00043, 
	I1 => N00034, 
	I2 => N00026, 
	I3 => N00019, 
	O => T4
);
U16 : VCC	PORT MAP(
	P => N00020
);
U2 : AND2	PORT MAP(
	I0 => N00049, 
	I1 => T4, 
	O => T5
);
U24 : AND2	PORT MAP(
	I0 => N00026, 
	I1 => N00019, 
	O => T2
);
U26 : AND3	PORT MAP(
	I0 => N00034, 
	I1 => N00026, 
	I2 => N00019, 
	O => T3
);
U28 : AND4	PORT MAP(
	I0 => N00066, 
	I1 => N00057, 
	I2 => N00049, 
	I3 => T4, 
	O => T7
);
U31 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00083, 
	O => CEO
);
U11 : AND3	PORT MAP(
	I0 => N00057, 
	I1 => N00049, 
	I2 => T4, 
	O => T6
);
U22 : FTCE	PORT MAP(
	T => N00020, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
U23 : FTCE	PORT MAP(
	T => N00019, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00026
);
U6 : FTCE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00076
);
U7 : FTCE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00066
);
U8 : FTCE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U17 : FTCE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00034
);
U18 : FTCE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00043
);
U19 : FTCE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00049
);
U1 : AND5	PORT MAP(
	I0 => N00076, 
	I1 => N00066, 
	I2 => N00057, 
	I3 => N00049, 
	I4 => T4, 
	O => N00083
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE_1 IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END OFDE_1;



ARCHITECTURE STRUCTURE OF OFDE_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U20 : INV	PORT MAP(
	O => CB, 
	I => C
);
U12 : INV	PORT MAP(
	O => T, 
	I => E
);
U15 : OFDT	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFD_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END OFD_1;



ARCHITECTURE STRUCTURE OF OFD_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U20 : INV	PORT MAP(
	O => CB, 
	I => C
);
U15 : OFD	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OPAD4 IS PORT (
	O0 : IN std_logic;
	O1 : IN std_logic;
	O2 : IN std_logic;
	O3 : IN std_logic
); END OPAD4;



ARCHITECTURE STRUCTURE OF OPAD4 IS

-- COMPONENTS

COMPONENT OPAD
	PORT (
	OPAD : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U49 : OPAD	PORT MAP(
	OPAD => O0
);
U50 : OPAD	PORT MAP(
	OPAD => O1
);
U51 : OPAD	PORT MAP(
	OPAD => O2
);
U52 : OPAD	PORT MAP(
	OPAD => O3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR16CLE IS PORT (
	SLI : IN std_logic;
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
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
); END SR16CLE;



ARCHITECTURE STRUCTURE OF SR16CLE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00108 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL L_OR_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00047;
Q1<=N00058;
Q2<=N00074;
Q3<=N00090;
Q4<=N00106;
Q5<=N00122;
Q6<=N00138;
Q7<=N00041;
Q8<=N00043;
Q9<=N00060;
Q10<=N00076;
Q11<=N00092;
Q12<=N00108;
Q13<=N00124;
Q14<=N00140;
U77 : FDCE	PORT MAP(
	D => MD10, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00076
);
U46 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00106
);
U78 : FDCE	PORT MAP(
	D => MD8, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00043
);
U79 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00074
);
U47 : FDCE	PORT MAP(
	D => MD13, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00124
);
U80 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00058
);
U81 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00090
);
U32 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00122
);
U65 : FDCE	PORT MAP(
	D => MD9, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U33 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00138
);
U34 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U66 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00047
);
U67 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U35 : FDCE	PORT MAP(
	D => MD12, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00108
);
U36 : FDCE	PORT MAP(
	D => MD14, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00140
);
U37 : FDCE	PORT MAP(
	D => MD15, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U76 : FDCE	PORT MAP(
	D => MD11, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00092
);
U44 : M2_1	PORT MAP(
	D0 => N00140, 
	D1 => D15, 
	S0 => L, 
	O => MD15
);
U45 : M2_1	PORT MAP(
	D0 => N00124, 
	D1 => D14, 
	S0 => L, 
	O => MD14
);
U68 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D10, 
	S0 => L, 
	O => MD10
);
U69 : M2_1	PORT MAP(
	D0 => N00076, 
	D1 => D11, 
	S0 => L, 
	O => MD11
);
U38 : M2_1	PORT MAP(
	D0 => N00090, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U39 : M2_1	PORT MAP(
	D0 => N00106, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U70 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => D9, 
	S0 => L, 
	O => MD9
);
U71 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => D8, 
	S0 => L, 
	O => MD8
);
U72 : M2_1	PORT MAP(
	D0 => N00074, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U73 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U40 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U74 : M2_1	PORT MAP(
	D0 => N00047, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U41 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U42 : M2_1	PORT MAP(
	D0 => N00092, 
	D1 => D12, 
	S0 => L, 
	O => MD12
);
U75 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U43 : M2_1	PORT MAP(
	D0 => N00108, 
	D1 => D13, 
	S0 => L, 
	O => MD13
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR16CLED IS PORT (
	SLI : IN std_logic;
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
	SRI : IN std_logic;
	L : IN std_logic;
	LEFT : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
); END SR16CLED;



ARCHITECTURE STRUCTURE OF SR16CLED IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDR1 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00171 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL MDL6 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00193;
Q0<=N00056;
Q1<=N00058;
Q2<=N00081;
Q3<=N00103;
Q4<=N00125;
Q5<=N00147;
Q6<=N00169;
Q7<=N00055;
Q8<=N00057;
Q9<=N00060;
Q10<=N00083;
Q11<=N00105;
Q12<=N00127;
Q13<=N00149;
Q14<=N00171;
U124 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00056
);
U125 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00058
);
U126 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00081
);
U127 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00103
);
U128 : FDCE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00125
);
U129 : FDCE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00147
);
U161 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U130 : FDCE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00169
);
U131 : FDCE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00055
);
U66 : FDCE	PORT MAP(
	D => MDR15, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00193
);
U67 : FDCE	PORT MAP(
	D => MDR14, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00171
);
U99 : FDCE	PORT MAP(
	D => MDR10, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00083
);
U68 : FDCE	PORT MAP(
	D => MDR13, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00149
);
U69 : FDCE	PORT MAP(
	D => MDR12, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00127
);
U145 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U70 : FDCE	PORT MAP(
	D => MDR11, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00105
);
U71 : FDCE	PORT MAP(
	D => MDR9, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U72 : FDCE	PORT MAP(
	D => MDR8, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U146 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U77 : M2_1	PORT MAP(
	D0 => N00149, 
	D1 => MDL12, 
	S0 => L_LEFT, 
	O => MDR12
);
U135 : M2_1	PORT MAP(
	D0 => N00103, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U136 : M2_1	PORT MAP(
	D0 => N00169, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U78 : M2_1	PORT MAP(
	D0 => N00127, 
	D1 => MDL11, 
	S0 => L_LEFT, 
	O => MDR11
);
U147 : M2_1	PORT MAP(
	D0 => N00056, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U137 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U148 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U79 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => MDL8, 
	S0 => L_LEFT, 
	O => MDR8
);
U149 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => D8, 
	S0 => L, 
	O => MDL8
);
U138 : M2_1	PORT MAP(
	D0 => N00169, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U139 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U81 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D9, 
	S0 => L, 
	O => MDL9
);
U140 : M2_1	PORT MAP(
	D0 => N00125, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U82 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D10, 
	S0 => L, 
	O => MDL10
);
U83 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => D11, 
	S0 => L, 
	O => MDL11
);
U141 : M2_1	PORT MAP(
	D0 => N00081, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U84 : M2_1	PORT MAP(
	D0 => N00105, 
	D1 => D12, 
	S0 => L, 
	O => MDL12
);
U142 : M2_1	PORT MAP(
	D0 => N00103, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U73 : M2_1	PORT MAP(
	D0 => N00105, 
	D1 => MDL10, 
	S0 => L_LEFT, 
	O => MDR10
);
U132 : M2_1	PORT MAP(
	D0 => N00147, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U143 : M2_1	PORT MAP(
	D0 => N00081, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U85 : M2_1	PORT MAP(
	D0 => N00127, 
	D1 => D13, 
	S0 => L, 
	O => MDL13
);
U74 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL15, 
	S0 => L_LEFT, 
	O => MDR15
);
U144 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U133 : M2_1	PORT MAP(
	D0 => N00147, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U100 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL9, 
	S0 => L_LEFT, 
	O => MDR9
);
U86 : M2_1	PORT MAP(
	D0 => N00149, 
	D1 => D14, 
	S0 => L, 
	O => MDL14
);
U75 : M2_1	PORT MAP(
	D0 => N00193, 
	D1 => MDL14, 
	S0 => L_LEFT, 
	O => MDR14
);
U87 : M2_1	PORT MAP(
	D0 => N00171, 
	D1 => D15, 
	S0 => L, 
	O => MDL15
);
U134 : M2_1	PORT MAP(
	D0 => N00125, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U76 : M2_1	PORT MAP(
	D0 => N00171, 
	D1 => MDL13, 
	S0 => L_LEFT, 
	O => MDR13
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY XOR6 IS PORT (
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END XOR6;



ARCHITECTURE STRUCTURE OF XOR6 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I12 : std_logic;
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : XOR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
U85 : XOR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U69 : XOR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND5 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END AND5;



ARCHITECTURE STRUCTURE OF AND5 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND5B1 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END AND5B1;



ARCHITECTURE STRUCTURE OF AND5B1 IS

-- COMPONENTS

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : AND3B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ADSU8 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	CO : OUT std_logic;
	OFL : OUT std_logic
); END ADSU8;



ARCHITECTURE STRUCTURE OF ADSU8 IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00114 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL I6 : std_logic;
SIGNAL I2 : std_logic;
SIGNAL I5 : std_logic;
SIGNAL SUB : std_logic;
SIGNAL I4 : std_logic;
SIGNAL I3 : std_logic;
SIGNAL I1 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL I7 : std_logic;
SIGNAL I0 : std_logic;

-- GATE INSTANCES

BEGIN
S1<=N00144;
S2<=N00129;
S3<=N00114;
S4<=N00099;
S5<=N00084;
S6<=N00069;
S7<=N00054;
CO<=N00045;
S0<=N00160;
U77 : XOR2	PORT MAP(
	I1 => C4, 
	I0 => I5, 
	O => N00084
);
U78 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => I4, 
	O => N00099
);
U79 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B7, 
	I0 => A7, 
	O => I7
);
U16 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B0, 
	O => I0, 
	I1 => A0
);
U17 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B1, 
	O => I1, 
	I1 => A1
);
U18 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B2, 
	O => I2, 
	I1 => A2
);
U19 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B3, 
	O => I3, 
	I1 => A3
);
U80 : XOR2	PORT MAP(
	I1 => C6, 
	I0 => I7, 
	O => N00054
);
U81 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => I6, 
	O => N00069
);
U50 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B0, 
	I0 => A0, 
	O => I0
);
U20 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B4, 
	O => I4, 
	I1 => A4
);
U21 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B5, 
	O => I5, 
	I1 => A5
);
U22 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B6, 
	O => I6, 
	I1 => A6
);
U55 : CY_MUX	PORT MAP(
	S => I1, 
	CI => C0, 
	CO => C1, 
	DI => A1
);
U23 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => ADD, 
	I2 => B7, 
	O => I7, 
	I1 => A7
);
U56 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B2, 
	I0 => A2, 
	O => I2
);
U57 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B3, 
	I0 => A3, 
	O => I3
);
U58 : CY_MUX	PORT MAP(
	S => I3, 
	CI => C2, 
	CO => C3, 
	DI => A3
);
U59 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B6, 
	I0 => A6, 
	O => I6
);
U100 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B1, 
	I0 => A1, 
	O => I1
);
U107 : CY_MUX	PORT MAP(
	S => I6, 
	CI => C5, 
	CO => C6, 
	DI => A6
);
U109 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B5, 
	I0 => A5, 
	O => I5
);
U60 : XOR3	PORT MAP(
	I2 => SUB, 
	I1 => B4, 
	I0 => A4, 
	O => I4
);
U62 : CY_MUX	PORT MAP(
	S => I2, 
	CI => C1, 
	CO => C2, 
	DI => A2
);
U63 : CY_MUX	PORT MAP(
	S => I4, 
	CI => C3, 
	CO => C4, 
	DI => A4
);
U64 : CY_MUX	PORT MAP(
	S => I7, 
	CI => C6, 
	CO => N00045, 
	DI => A7
);
U37 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I0, 
	O => N00160, 
	I1 => C_IN
);
U38 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I1, 
	O => N00144, 
	I1 => C0
);
U39 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I2, 
	O => N00129, 
	I1 => C1
);
U110 : CY_MUX	PORT MAP(
	S => I5, 
	CI => C4, 
	CO => C5, 
	DI => A5
);
U111 : CY_MUX	PORT MAP(
	S => I0, 
	CI => C_IN, 
	CO => C0, 
	DI => A0
);
U112 : INV	PORT MAP(
	O => SUB, 
	I => ADD
);
U221 : XOR2	PORT MAP(
	I1 => N00045, 
	I0 => C6, 
	O => OFL
);
U40 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I3, 
	O => N00114, 
	I1 => C2
);
U41 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I4, 
	O => N00099, 
	I1 => C3
);
U73 : XOR2	PORT MAP(
	I1 => C_IN, 
	I0 => I0, 
	O => N00160
);
U42 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I5, 
	O => N00084, 
	I1 => C4
);
U74 : XOR2	PORT MAP(
	I1 => C0, 
	I0 => I1, 
	O => N00144
);
U75 : XOR2	PORT MAP(
	I1 => C2, 
	I0 => I3, 
	O => N00114
);
U43 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I6, 
	O => N00069, 
	I1 => C5
);
U76 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => I2, 
	O => N00129
);
U44 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => I7, 
	O => N00054, 
	I1 => C6
);
U61 : CY_INIT	PORT MAP(
	COUT => C_IN, 
	INIT => CI
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND5B3 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END AND5B3;



ARCHITECTURE STRUCTURE OF AND5B3 IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : AND3B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I35, 
	O => O
);
U69 : AND3B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	I2 => I4, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AND7 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
); END AND7;



ARCHITECTURE STRUCTURE OF AND7 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I46 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : AND3	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	O => I13
);
U85 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I13, 
	I2 => I46, 
	O => O
);
U69 : AND3	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	O => I46
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFE4 IS PORT (
	E : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END BUFE4;



ARCHITECTURE STRUCTURE OF BUFE4 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U51 : INV	PORT MAP(
	O => T, 
	I => E
);
U37 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U38 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U39 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U40 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CJ8CE IS PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
); END CJ8CE;



ARCHITECTURE STRUCTURE OF CJ8CE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00024 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00017;
Q1<=N00025;
Q2<=N00035;
Q3<=N00013;
Q4<=N00012;
Q5<=N00024;
Q6<=N00034;
Q7<=N00011;
U77 : FDCE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U78 : FDCE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00024
);
U79 : FDCE	PORT MAP(
	D => N00024, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00034
);
U80 : FDCE	PORT MAP(
	D => N00034, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U61 : INV	PORT MAP(
	O => Q7B, 
	I => N00011
);
U30 : FDCE	PORT MAP(
	D => Q7B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U74 : FDCE	PORT MAP(
	D => N00017, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U75 : FDCE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00035
);
U76 : FDCE	PORT MAP(
	D => N00035, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DECODE4 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic
); END DECODE4;



ARCHITECTURE STRUCTURE OF DECODE4 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00016 : std_logic;
SIGNAL C_IN0 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL S0 : std_logic;

-- GATE INSTANCES

BEGIN
U157 : VCC	PORT MAP(
	P => N00016
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => C_IN0, 
	CO => O, 
	DI => N00014
);
U29 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => orcad_unused, 
	O => S0, 
	I1 => orcad_unused
);
U109 : GND	PORT MAP(
	G => N00014
);
U110 : AND4	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	O => S0
);
U13 : CY_INIT	PORT MAP(
	COUT => C_IN0, 
	INIT => N00016
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDS IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END FDS;



ARCHITECTURE STRUCTURE OF FDS IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_S : std_logic;

-- GATE INSTANCES

BEGIN
U41 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => D_S
);
U39 : FD	PORT MAP(
	D => D_S, 
	C => C, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COMPM4 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	GT : OUT std_logic;
	LT : OUT std_logic
); END COMPM4;



ARCHITECTURE STRUCTURE OF COMPM4 IS

-- COMPONENTS

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GTB : std_logic;
SIGNAL GTA : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL LTA : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL LTB : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL GT_3 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U14 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => EQ_3, 
	I2 => A2, 
	O => GE2_3
);
U15 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => EQ_3, 
	I2 => B2, 
	O => LE2_3
);
U16 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U17 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U18 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT0_1
);
U19 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GTB
);
U1 : AND2	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	O => GTA
);
U2 : AND2	PORT MAP(
	I0 => EQ2_3, 
	I1 => LT0_1, 
	O => LTA
);
U3 : NOR2	PORT MAP(
	I1 => LTB, 
	I0 => GTB, 
	O => EQ2_3
);
U4 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => LT_3
);
U20 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LTB
);
U5 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT0_1
);
U6 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => GT_3
);
U7 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U8 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => EQ_3
);
U9 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U11 : OR2	PORT MAP(
	I1 => LTA, 
	I0 => LTB, 
	O => LT
);
U12 : OR2	PORT MAP(
	I1 => GTA, 
	I0 => GTB, 
	O => GT
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD16RE IS PORT (
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
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
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
); END FD16RE;



ARCHITECTURE STRUCTURE OF FD16RE IS

-- COMPONENTS

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U44 : FDRE	PORT MAP(
	D => D14, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q14
);
U34 : FDRE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q4
);
U45 : FDRE	PORT MAP(
	D => D15, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U35 : FDRE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q5
);
U36 : FDRE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q6
);
U37 : FDRE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U38 : FDRE	PORT MAP(
	D => D8, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q8
);
U39 : FDRE	PORT MAP(
	D => D9, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q9
);
U40 : FDRE	PORT MAP(
	D => D10, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q10
);
U30 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q0
);
U41 : FDRE	PORT MAP(
	D => D11, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q11
);
U42 : FDRE	PORT MAP(
	D => D12, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q12
);
U31 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q1
);
U43 : FDRE	PORT MAP(
	D => D13, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q13
);
U32 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD4RE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END FD4RE;



ARCHITECTURE STRUCTURE OF FD4RE IS

-- COMPONENTS

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U33 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U30 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q0
);
U31 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q1
);
U32 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LDC IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END LDC;



ARCHITECTURE STRUCTURE OF LDC IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U37 : VCC	PORT MAP(
	P => N00006
);
U38 : LDCE	PORT MAP(
	D => D, 
	G => G, 
	Q => Q, 
	CLR => CLR, 
	GE => N00006
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR5B2 IS PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR5B2;



ARCHITECTURE STRUCTURE OF NOR5B2 IS

-- COMPONENTS

COMPONENT NOR3B2
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U88 : NOR3B2	PORT MAP(
	I2 => I35, 
	I1 => I1, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I4, 
	I1 => I3, 
	I0 => I2, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR6 IS PORT (
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR6;



ARCHITECTURE STRUCTURE OF NOR6 IS

-- COMPONENTS

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;
SIGNAL I12 : std_logic;

-- GATE INSTANCES

BEGIN
U84 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
U85 : NOR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U69 : OR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDT IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END OFDT;



ARCHITECTURE STRUCTURE OF OFDT IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL O_OUT : std_logic;

-- GATE INSTANCES

BEGIN
U29 : OBUFT	PORT MAP(
	T => T, 
	I => O_OUT, 
	O => O
);
U15 : FD	PORT MAP(
	D => D, 
	C => C, 
	Q => O_OUT
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SR4CLE IS PORT (
	SLI : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END SR4CLE;



ARCHITECTURE STRUCTURE OF SR4CLE IS

-- COMPONENTS

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00023 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL L_OR_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00023;
Q2<=N00031;
U45 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U46 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U51 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U53 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U44 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00023
);
U47 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U48 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U49 : M2_1	PORT MAP(
	D0 => N00023, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U50 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDP IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END FDP;



ARCHITECTURE STRUCTURE OF FDP IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT FDPE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
U37 : VCC	PORT MAP(
	P => N00007
);
U30 : FDPE	PORT MAP(
	D => D, 
	CE => N00007, 
	C => C, 
	PRE => PRE, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDSR IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic
); END FDSR;



ARCHITECTURE STRUCTURE OF FDSR IS

-- COMPONENTS

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDS	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_R : std_logic;

-- GATE INSTANCES

BEGIN
U75 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => D_R
);
U79 : FDS	PORT MAP(
	D => D_R, 
	C => C, 
	S => S, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FJKRSE IS PORT (
	J : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic;
	R : IN std_logic;
	K : IN std_logic
); END FJKRSE;



ARCHITECTURE STRUCTURE OF FJKRSE IS

-- COMPONENTS

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S_CE : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A2 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL AD_S : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00008;
U46 : OR4	PORT MAP(
	I3 => A0, 
	I2 => A1, 
	I1 => A2, 
	I0 => S, 
	O => AD_S
);
U55 : OR2	PORT MAP(
	I1 => S, 
	I0 => CE, 
	O => S_CE
);
U37 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00008, 
	O => A0
);
U40 : AND3B1	PORT MAP(
	I0 => N00008, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U43 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U32 : FDRE	PORT MAP(
	D => AD_S, 
	CE => S_CE, 
	C => C, 
	R => R, 
	Q => N00008
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILD IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ILD;



ARCHITECTURE STRUCTURE OF ILD IS

-- COMPONENTS

COMPONENT IBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT LD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00039 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : IBUF	PORT MAP(
	O => N00039, 
	I => D
);
U24 : LD	PORT MAP(
	D => N00039, 
	G => G, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY LD_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END LD_1;



ARCHITECTURE STRUCTURE OF LD_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT LDCE
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	GE : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL GB : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U48 : INV	PORT MAP(
	O => GB, 
	I => G
);
U49 : LDCE	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q, 
	CLR => N00011, 
	GE => N00008
);
U40 : VCC	PORT MAP(
	P => N00008
);
U43 : GND	PORT MAP(
	G => N00011
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY NOR12 IS PORT (
	I11 : IN std_logic;
	I10 : IN std_logic;
	I9 : IN std_logic;
	I8 : IN std_logic;
	I7 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
); END NOR12;



ARCHITECTURE STRUCTURE OF NOR12 IS

-- COMPONENTS

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY_MUX
	PORT (
	S : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	DI : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT CY_INIT	 PORT (
	COUT : OUT std_logic;
	INIT : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S0 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL CIN : std_logic;

-- GATE INSTANCES

BEGIN
U151 : NOR4	PORT MAP(
	I3 => I11, 
	I2 => I10, 
	I1 => I9, 
	I0 => I8, 
	O => S2
);
U127 : NOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => S1
);
U129 : CY_MUX	PORT MAP(
	S => S1, 
	CI => C0, 
	CO => C1, 
	DI => N00025
);
U2 : CY_MUX	PORT MAP(
	S => S0, 
	CI => CIN, 
	CO => C0, 
	DI => N00025
);
U29 : FMAP	PORT MAP(
	I4 => I3, 
	I3 => I2, 
	I2 => I1, 
	O => S0, 
	I1 => I0
);
U138 : FMAP	PORT MAP(
	I4 => I7, 
	I3 => I6, 
	I2 => I5, 
	O => S1, 
	I1 => I4
);
U107 : VCC	PORT MAP(
	P => N00050
);
U109 : GND	PORT MAP(
	G => N00025
);
U142 : FMAP	PORT MAP(
	I4 => I11, 
	I3 => I10, 
	I2 => I9, 
	O => S2, 
	I1 => I8
);
U110 : NOR4	PORT MAP(
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => S0
);
U147 : CY_MUX	PORT MAP(
	S => S2, 
	CI => C1, 
	CO => O, 
	DI => N00025
);
U13 : CY_INIT	PORT MAP(
	COUT => CIN, 
	INIT => N00050
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFD16 IS PORT (
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
	C : IN std_logic;
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
); END OFD16;



ARCHITECTURE STRUCTURE OF OFD16 IS

-- COMPONENTS

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00063 : std_logic;

-- GATE INSTANCES

BEGIN
U55 : OFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U56 : OFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U57 : OFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U58 : OFD	PORT MAP(
	D => D15, 
	C => C, 
	Q => N00063
);
U59 : OFD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U60 : OFD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U61 : OFD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
);
U50 : OFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U51 : OFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U62 : OFD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
);
U52 : OFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U63 : OFD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U53 : OFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U64 : OFD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
U54 : OFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U65 : OFD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE16 IS PORT (
	E : IN std_logic;
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
	C : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
); END OFDE16;



ARCHITECTURE STRUCTURE OF OFDE16 IS

-- COMPONENTS

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U55 : OFDE	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5
);
U56 : OFDE	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6
);
U57 : OFDE	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7
);
U58 : OFDE	PORT MAP(
	E => E, 
	D => D15, 
	C => C, 
	O => O15
);
U59 : OFDE	PORT MAP(
	E => E, 
	D => D14, 
	C => C, 
	O => O14
);
U60 : OFDE	PORT MAP(
	E => E, 
	D => D13, 
	C => C, 
	O => O13
);
U50 : OFDE	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2
);
U61 : OFDE	PORT MAP(
	E => E, 
	D => D12, 
	C => C, 
	O => O12
);
U51 : OFDE	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1
);
U62 : OFDE	PORT MAP(
	E => E, 
	D => D11, 
	C => C, 
	O => O11
);
U52 : OFDE	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0
);
U63 : OFDE	PORT MAP(
	E => E, 
	D => D10, 
	C => C, 
	O => O10
);
U64 : OFDE	PORT MAP(
	E => E, 
	D => D9, 
	C => C, 
	O => O9
);
U53 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U54 : OFDE	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4
);
U65 : OFDE	PORT MAP(
	E => E, 
	D => D8, 
	C => C, 
	O => O8
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB16CLED IS PORT (
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
	UP : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB16CLED;



ARCHITECTURE STRUCTURE OF CB16CLED IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5B4	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00312 : std_logic;
SIGNAL N00277 : std_logic;
SIGNAL N00243 : std_logic;
SIGNAL N00211 : std_logic;
SIGNAL N00177 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00294 : std_logic;
SIGNAL N00255 : std_logic;
SIGNAL N00221 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00165 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL T10_DN : std_logic;
SIGNAL T11_DN : std_logic;
SIGNAL T4_DN : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T6_UP : std_logic;
SIGNAL T14_DN : std_logic;
SIGNAL T11_UP : std_logic;
SIGNAL T10_UP : std_logic;
SIGNAL T5_UP : std_logic;
SIGNAL T8_UP : std_logic;
SIGNAL T9 : std_logic;
SIGNAL T7_UP : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T7_DN : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL T8_DN : std_logic;
SIGNAL T15_UP : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T5_DN : std_logic;
SIGNAL T12_UP : std_logic;
SIGNAL T13_DN : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL T9_UP : std_logic;
SIGNAL T4_UP : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T9_DN : std_logic;
SIGNAL T15_DN : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T14_UP : std_logic;
SIGNAL T15 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T13_UP : std_logic;
SIGNAL T14 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T12_DN : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T6_DN : std_logic;
SIGNAL N00325 : std_logic;
SIGNAL N14594 : std_logic;
SIGNAL N00071 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00325;
Q15<=N00312;
Q0<=N00069;
Q1<=N00097;
Q2<=N00129;
Q3<=N00165;
Q4<=N00196;
Q5<=N00221;
Q6<=N00255;
Q7<=N00294;
Q8<=N00074;
Q9<=N00106;
Q10<=N00140;
Q11<=N00177;
Q12<=N00211;
Q13<=N00243;
Q14<=N00277;
U77 : AND3	PORT MAP(
	I0 => N00221, 
	I1 => N00196, 
	I2 => T4, 
	O => T6_UP
);
U120 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00325, 
	O => CEO
);
U121 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N14594, 
	O => N00325
);
U83 : AND3B2	PORT MAP(
	I0 => N00221, 
	I1 => N00196, 
	I2 => T4, 
	O => T6_DN
);
U84 : AND2B1	PORT MAP(
	I0 => N00196, 
	I1 => T4, 
	O => T5_DN
);
U53 : AND2B1	PORT MAP(
	I0 => N00074, 
	I1 => T8, 
	O => T9_DN
);
U54 : AND3B2	PORT MAP(
	I0 => N00106, 
	I1 => N00074, 
	I2 => T8, 
	O => T10_DN
);
U86 : AND2	PORT MAP(
	I0 => N00097, 
	I1 => N00069, 
	O => T2_UP
);
U87 : AND2B2	PORT MAP(
	I0 => N00097, 
	I1 => N00069, 
	O => T2_DN
);
U55 : AND3	PORT MAP(
	I0 => N00106, 
	I1 => N00074, 
	I2 => T8, 
	O => T10_UP
);
U56 : AND4	PORT MAP(
	I0 => N00140, 
	I1 => N00106, 
	I2 => N00074, 
	I3 => T8, 
	O => T11_UP
);
U57 : AND4B3	PORT MAP(
	I0 => N00140, 
	I1 => N00106, 
	I2 => N00074, 
	I3 => T8, 
	O => T11_DN
);
U90 : VCC	PORT MAP(
	P => N00071
);
U60 : AND2	PORT MAP(
	I0 => N00074, 
	I1 => T8, 
	O => T9_UP
);
U61 : AND2B1	PORT MAP(
	I0 => N00211, 
	I1 => T12, 
	O => T13_DN
);
U62 : AND3B2	PORT MAP(
	I0 => N00243, 
	I1 => N00211, 
	I2 => T12, 
	O => T14_DN
);
U94 : AND4B4	PORT MAP(
	I0 => N00165, 
	I1 => N00129, 
	I2 => N00097, 
	I3 => N00069, 
	O => T4_DN
);
U63 : AND3	PORT MAP(
	I0 => N00243, 
	I1 => N00211, 
	I2 => T12, 
	O => T14_UP
);
U95 : AND3B3	PORT MAP(
	I0 => N00129, 
	I1 => N00097, 
	I2 => N00069, 
	O => T3_DN
);
U96 : AND3	PORT MAP(
	I0 => N00129, 
	I1 => N00097, 
	I2 => N00069, 
	O => T3_UP
);
U64 : AND4	PORT MAP(
	I0 => N00277, 
	I1 => N00243, 
	I2 => N00211, 
	I3 => T12, 
	O => T15_UP
);
U65 : AND4B3	PORT MAP(
	I0 => N00277, 
	I1 => N00243, 
	I2 => N00211, 
	I3 => T12, 
	O => T15_DN
);
U99 : AND4	PORT MAP(
	I0 => N00165, 
	I1 => N00129, 
	I2 => N00097, 
	I3 => N00069, 
	O => T4_UP
);
U69 : AND2	PORT MAP(
	I0 => N00211, 
	I1 => T12, 
	O => T13_UP
);
U70 : AND2	PORT MAP(
	I0 => N00196, 
	I1 => T4, 
	O => T5_UP
);
U73 : AND4B3	PORT MAP(
	I0 => N00255, 
	I1 => N00221, 
	I2 => N00196, 
	I3 => T4, 
	O => T7_DN
);
U74 : AND4	PORT MAP(
	I0 => N00255, 
	I1 => N00221, 
	I2 => N00196, 
	I3 => T4, 
	O => T7_UP
);
U102 : FTCLE	PORT MAP(
	D => D15, 
	L => L, 
	T => T15, 
	CE => CE, 
	C => C, 
	Q => N00312, 
	CLR => CLR
);
U113 : M2_1	PORT MAP(
	D0 => T10_DN, 
	D1 => T10_UP, 
	S0 => UP, 
	O => T10
);
U88 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00071, 
	CE => CE, 
	C => C, 
	Q => N00069, 
	CLR => CLR
);
U66 : AND5B4	PORT MAP(
	I0 => N00312, 
	I1 => N00277, 
	I2 => N00243, 
	I3 => N00211, 
	I4 => T12, 
	O => TC_DN
);
U67 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N14594
);
U78 : M2_1	PORT MAP(
	D0 => T5_DN, 
	D1 => T5_UP, 
	S0 => UP, 
	O => T5
);
U89 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00097, 
	CLR => CLR
);
U114 : M2_1	PORT MAP(
	D0 => T9_DN, 
	D1 => T9_UP, 
	S0 => UP, 
	O => T9
);
U103 : FTCLE	PORT MAP(
	D => D14, 
	L => L, 
	T => T14, 
	CE => CE, 
	C => C, 
	Q => N00277, 
	CLR => CLR
);
U68 : AND5	PORT MAP(
	I0 => N00312, 
	I1 => N00277, 
	I2 => N00243, 
	I3 => N00211, 
	I4 => T12, 
	O => TC_UP
);
U104 : FTCLE	PORT MAP(
	D => D13, 
	L => L, 
	T => T13, 
	CE => CE, 
	C => C, 
	Q => N00243, 
	CLR => CLR
);
U79 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00255, 
	CLR => CLR
);
U115 : M2_1	PORT MAP(
	D0 => T8_DN, 
	D1 => T8_UP, 
	S0 => UP, 
	O => T8
);
U105 : FTCLE	PORT MAP(
	D => D12, 
	L => L, 
	T => T12, 
	CE => CE, 
	C => C, 
	Q => N00211, 
	CLR => CLR
);
U58 : AND5B4	PORT MAP(
	I0 => N00177, 
	I1 => N00140, 
	I2 => N00106, 
	I3 => N00074, 
	I4 => T8, 
	O => T12_DN
);
U106 : FTCLE	PORT MAP(
	D => D11, 
	L => L, 
	T => T11, 
	CE => CE, 
	C => C, 
	Q => N00177, 
	CLR => CLR
);
U59 : AND5	PORT MAP(
	I0 => N00177, 
	I1 => N00140, 
	I2 => N00106, 
	I3 => N00074, 
	I4 => T8, 
	O => T12_UP
);
U107 : FTCLE	PORT MAP(
	D => D10, 
	L => L, 
	T => T10, 
	CE => CE, 
	C => C, 
	Q => N00140, 
	CLR => CLR
);
U108 : M2_1	PORT MAP(
	D0 => T15_DN, 
	D1 => T15_UP, 
	S0 => UP, 
	O => T15
);
U109 : M2_1	PORT MAP(
	D0 => T14_DN, 
	D1 => T14_UP, 
	S0 => UP, 
	O => T14
);
U80 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00196, 
	CLR => CLR
);
U91 : M2_1B1	PORT MAP(
	D0 => N00069, 
	D1 => N00069, 
	S0 => UP, 
	O => T1
);
U81 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00294, 
	CLR => CLR
);
U92 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00129, 
	CLR => CLR
);
U82 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00221, 
	CLR => CLR
);
U71 : AND5	PORT MAP(
	I0 => N00294, 
	I1 => N00255, 
	I2 => N00221, 
	I3 => N00196, 
	I4 => T4, 
	O => T8_UP
);
U93 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00165, 
	CLR => CLR
);
U72 : AND5B4	PORT MAP(
	I0 => N00294, 
	I1 => N00255, 
	I2 => N00221, 
	I3 => N00196, 
	I4 => T4, 
	O => T8_DN
);
U110 : M2_1	PORT MAP(
	D0 => T13_DN, 
	D1 => T13_UP, 
	S0 => UP, 
	O => T13
);
U85 : M2_1	PORT MAP(
	D0 => T2_DN, 
	D1 => T2_UP, 
	S0 => UP, 
	O => T2
);
U100 : FTCLE	PORT MAP(
	D => D8, 
	L => L, 
	T => T8, 
	CE => CE, 
	C => C, 
	Q => N00074, 
	CLR => CLR
);
U111 : M2_1	PORT MAP(
	D0 => T12_DN, 
	D1 => T12_UP, 
	S0 => UP, 
	O => T12
);
U97 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
U75 : M2_1	PORT MAP(
	D0 => T6_DN, 
	D1 => T6_UP, 
	S0 => UP, 
	O => T6
);
U101 : FTCLE	PORT MAP(
	D => D9, 
	L => L, 
	T => T9, 
	CE => CE, 
	C => C, 
	Q => N00106, 
	CLR => CLR
);
U112 : M2_1	PORT MAP(
	D0 => T11_DN, 
	D1 => T11_UP, 
	S0 => UP, 
	O => T11
);
U98 : M2_1	PORT MAP(
	D0 => T4_DN, 
	D1 => T4_UP, 
	S0 => UP, 
	O => T4
);
U76 : M2_1	PORT MAP(
	D0 => T7_DN, 
	D1 => T7_UP, 
	S0 => UP, 
	O => T7
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY cc16cled IS PORT (
	D11 : IN std_logic;
	D3 : IN std_logic;
	TC : OUT std_logic;
	Q15 : OUT std_logic;
	D12 : IN std_logic;
	D4 : IN std_logic;
	Q0 : OUT std_logic;
	D13 : IN std_logic;
	D5 : IN std_logic;
	CE : IN std_logic;
	Q1 : OUT std_logic;
	D14 : IN std_logic;
	D6 : IN std_logic;
	Q2 : OUT std_logic;
	D15 : IN std_logic;
	D7 : IN std_logic;
	Q3 : OUT std_logic;
	D8 : IN std_logic;
	CLR : IN std_logic;
	Q4 : OUT std_logic;
	D9 : IN std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	L : IN std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	UP : IN std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	D0 : IN std_logic;
	Q12 : OUT std_logic;
	D1 : IN std_logic;
	Q13 : OUT std_logic;
	D10 : IN std_logic;
	D2 : IN std_logic;
	C : IN std_logic;
	Q14 : OUT std_logic
); END cc16cled;



ARCHITECTURE STRUCTURE OF cc16cled IS

-- COMPONENTS

COMPONENT xor2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT fmap
	PORT (
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : IN std_logic
	); END COMPONENT;

COMPONENT m2_1
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	O : OUT std_logic;
	S0 : IN std_logic
	); END COMPONENT;

COMPONENT xnor2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT fdce
	PORT (
	C : IN std_logic;
	CE : IN std_logic;
	CLR : IN std_logic;
	D : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT cy4
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	ADD : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	C0 : IN std_logic;
	C1 : IN std_logic;
	C2 : IN std_logic;
	C3 : IN std_logic;
	C4 : IN std_logic;
	C5 : IN std_logic;
	C6 : IN std_logic;
	C7 : IN std_logic;
	CIN : IN std_logic;
	COUT : OUT std_logic;
	COUT0 : OUT std_logic
	); END COMPONENT;

COMPONENT or2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_18
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT and2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT and2b2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_42
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_25
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_19
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_26
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT inv
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL MD7_UP : std_logic;
SIGNAL TQ12_UP : std_logic;
SIGNAL TQ0_DN : std_logic;
SIGNAL TQ11_DN : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL TQ3_UP : std_logic;
SIGNAL TQ8_UP : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL TQ2_UP : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL TQ1_UP : std_logic;
SIGNAL TQ9_UP : std_logic;
SIGNAL MD10_UP : std_logic;
SIGNAL MD5_UP : std_logic;
SIGNAL TQ10_UP : std_logic;
SIGNAL MD8_UP : std_logic;
SIGNAL TQ8_DN : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL TQ2_DN : std_logic;
SIGNAL MD13_UP : std_logic;
SIGNAL TQ6_UP : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL TQ9_DN : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL TQ5_UP : std_logic;
SIGNAL TQ1_DN : std_logic;
SIGNAL MD12_UP : std_logic;
SIGNAL MD11_UP : std_logic;
SIGNAL MD3_UP : std_logic;
SIGNAL MD1_UP : std_logic;
SIGNAL TQ4_UP : std_logic;
SIGNAL TQ7_UP : std_logic;
SIGNAL TQ5_DN : std_logic;
SIGNAL TQ10_DN : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL MD2_UP : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL TQ4_DN : std_logic;
SIGNAL MD14_UP : std_logic;
SIGNAL MD9_UP : std_logic;
SIGNAL TQ15_UP : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL TQ3_DN : std_logic;
SIGNAL MD6_UP : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N032001 : std_logic;
SIGNAL TQ15_DN : std_logic;
SIGNAL TQ11_UP : std_logic;
SIGNAL TQ0_UP : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL TQ13_UP : std_logic;
SIGNAL TQ14_UP : std_logic;
SIGNAL TQ13_DN : std_logic;
SIGNAL TQ7_DN : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL TQ14_DN : std_logic;
SIGNAL MD4_UP : std_logic;
SIGNAL TQ12_DN : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL TQ6_DN : std_logic;
SIGNAL MD15_UP : std_logic;
SIGNAL N028326 : std_logic;
SIGNAL N028329 : std_logic;
SIGNAL N0283210 : std_logic;
SIGNAL N028325 : std_logic;
SIGNAL N028327 : std_logic;
SIGNAL N0283212 : std_logic;
SIGNAL N028328 : std_logic;
SIGNAL C14_DN : std_logic;
SIGNAL CO_DN : std_logic;
SIGNAL N032005 : std_logic;
SIGNAL N032007 : std_logic;
SIGNAL N032003 : std_logic;
SIGNAL N032000 : std_logic;
SIGNAL N032004 : std_logic;
SIGNAL N032002 : std_logic;
SIGNAL N032006 : std_logic;
SIGNAL N028840 : std_logic;
SIGNAL N028842 : std_logic;
SIGNAL N028845 : std_logic;
SIGNAL C10_DN : std_logic;
SIGNAL C11_DN : std_logic;
SIGNAL N028882 : std_logic;
SIGNAL N028884 : std_logic;
SIGNAL N028880 : std_logic;
SIGNAL N028886 : std_logic;
SIGNAL N028885 : std_logic;
SIGNAL N028881 : std_logic;
SIGNAL N028887 : std_logic;
SIGNAL N028883 : std_logic;
SIGNAL C13_DN : std_logic;
SIGNAL C12_DN : std_logic;
SIGNAL N0283211 : std_logic;
SIGNAL C6_DN : std_logic;
SIGNAL N028804 : std_logic;
SIGNAL N028807 : std_logic;
SIGNAL N028802 : std_logic;
SIGNAL N028806 : std_logic;
SIGNAL N028801 : std_logic;
SIGNAL N028803 : std_logic;
SIGNAL N028805 : std_logic;
SIGNAL N028800 : std_logic;
SIGNAL C8_DN : std_logic;
SIGNAL C9_DN : std_logic;
SIGNAL N028844 : std_logic;
SIGNAL N028843 : std_logic;
SIGNAL N028841 : std_logic;
SIGNAL N028846 : std_logic;
SIGNAL N028847 : std_logic;
SIGNAL N030806 : std_logic;
SIGNAL N030807 : std_logic;
SIGNAL N0308012 : std_logic;
SIGNAL N0308011 : std_logic;
SIGNAL N030805 : std_logic;
SIGNAL C4_DN : std_logic;
SIGNAL C5_DN : std_logic;
SIGNAL N029926 : std_logic;
SIGNAL N029927 : std_logic;
SIGNAL N0299211 : std_logic;
SIGNAL N029928 : std_logic;
SIGNAL N029925 : std_logic;
SIGNAL N0299210 : std_logic;
SIGNAL N029929 : std_logic;
SIGNAL N0299212 : std_logic;
SIGNAL C7_DN : std_logic;
SIGNAL N030287 : std_logic;
SIGNAL C1_DN : std_logic;
SIGNAL C0_DN : std_logic;
SIGNAL N030846 : std_logic;
SIGNAL N030848 : std_logic;
SIGNAL N030845 : std_logic;
SIGNAL N0308412 : std_logic;
SIGNAL N0308410 : std_logic;
SIGNAL N0308411 : std_logic;
SIGNAL N030847 : std_logic;
SIGNAL N030849 : std_logic;
SIGNAL C2_DN : std_logic;
SIGNAL C3_DN : std_logic;
SIGNAL N0308010 : std_logic;
SIGNAL N030809 : std_logic;
SIGNAL N030808 : std_logic;
SIGNAL N031689 : std_logic;
SIGNAL N0316811 : std_logic;
SIGNAL N0316812 : std_logic;
SIGNAL N031686 : std_logic;
SIGNAL N031685 : std_logic;
SIGNAL N031687 : std_logic;
SIGNAL N031688 : std_logic;
SIGNAL N0316810 : std_logic;
SIGNAL C0_UP : std_logic;
SIGNAL N030284 : std_logic;
SIGNAL N030283 : std_logic;
SIGNAL N030281 : std_logic;
SIGNAL N030286 : std_logic;
SIGNAL N030285 : std_logic;
SIGNAL N030280 : std_logic;
SIGNAL N030282 : std_logic;
SIGNAL N031521 : std_logic;
SIGNAL N031522 : std_logic;
SIGNAL N031526 : std_logic;
SIGNAL N031525 : std_logic;
SIGNAL C4_UP : std_logic;
SIGNAL C3_UP : std_logic;
SIGNAL N031483 : std_logic;
SIGNAL N031487 : std_logic;
SIGNAL N031486 : std_logic;
SIGNAL N031485 : std_logic;
SIGNAL N031480 : std_logic;
SIGNAL N031482 : std_logic;
SIGNAL N031484 : std_logic;
SIGNAL N031481 : std_logic;
SIGNAL C2_UP : std_logic;
SIGNAL C1_UP : std_logic;
SIGNAL C7_UP : std_logic;
SIGNAL C8_UP : std_logic;
SIGNAL N031607 : std_logic;
SIGNAL N031602 : std_logic;
SIGNAL N031606 : std_logic;
SIGNAL N031605 : std_logic;
SIGNAL N031604 : std_logic;
SIGNAL N031601 : std_logic;
SIGNAL N031603 : std_logic;
SIGNAL N031600 : std_logic;
SIGNAL C6_UP : std_logic;
SIGNAL C5_UP : std_logic;
SIGNAL N031524 : std_logic;
SIGNAL N031520 : std_logic;
SIGNAL N031527 : std_logic;
SIGNAL N031523 : std_logic;
SIGNAL N028685 : std_logic;
SIGNAL N028688 : std_logic;
SIGNAL N0286810 : std_logic;
SIGNAL N028687 : std_logic;
SIGNAL N0286811 : std_logic;
SIGNAL N028689 : std_logic;
SIGNAL C10_UP : std_logic;
SIGNAL C9_UP : std_logic;
SIGNAL N028608 : std_logic;
SIGNAL N0286011 : std_logic;
SIGNAL N0286012 : std_logic;
SIGNAL N028605 : std_logic;
SIGNAL N028607 : std_logic;
SIGNAL N028609 : std_logic;
SIGNAL N0286010 : std_logic;
SIGNAL N028606 : std_logic;
SIGNAL N028446 : std_logic;
SIGNAL N028441 : std_logic;
SIGNAL C13_UP : std_logic;
SIGNAL C14_UP : std_logic;
SIGNAL N0286411 : std_logic;
SIGNAL N0286412 : std_logic;
SIGNAL N0286410 : std_logic;
SIGNAL N028645 : std_logic;
SIGNAL N028647 : std_logic;
SIGNAL N028648 : std_logic;
SIGNAL N028646 : std_logic;
SIGNAL N028649 : std_logic;
SIGNAL C12_UP : std_logic;
SIGNAL C11_UP : std_logic;
SIGNAL N028686 : std_logic;
SIGNAL N0286812 : std_logic;
SIGNAL L_UP : std_logic;
SIGNAL N031921 : std_logic;
SIGNAL N031925 : std_logic;
SIGNAL N031926 : std_logic;
SIGNAL N031924 : std_logic;
SIGNAL N031923 : std_logic;
SIGNAL N031920 : std_logic;
SIGNAL N031927 : std_logic;
SIGNAL N031922 : std_logic;
SIGNAL CO_UP : std_logic;
SIGNAL N028447 : std_logic;
SIGNAL N028445 : std_logic;
SIGNAL N028442 : std_logic;
SIGNAL N028440 : std_logic;
SIGNAL N028444 : std_logic;
SIGNAL N028443 : std_logic;
SIGNAL MD0_UP : std_logic;
SIGNAL N02562 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N01232 : std_logic;
SIGNAL N01267 : std_logic;
SIGNAL N01302 : std_logic;
SIGNAL N00952 : std_logic;
SIGNAL N00987 : std_logic;
SIGNAL N01022 : std_logic;
SIGNAL N01057 : std_logic;
SIGNAL N01092 : std_logic;
SIGNAL N01127 : std_logic;
SIGNAL N01162 : std_logic;
SIGNAL N01197 : std_logic;
SIGNAL N00777 : std_logic;
SIGNAL N00812 : std_logic;
SIGNAL N00847 : std_logic;
SIGNAL N00882 : std_logic;
SIGNAL N00917 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N01302;
TC<=N02562;
Q0<=N00777;
Q1<=N00812;
Q2<=N00847;
Q3<=N00882;
Q4<=N00917;
Q5<=N00952;
Q6<=N00987;
Q7<=N01022;
Q8<=N01057;
Q9<=N01092;
Q10<=N01127;
Q11<=N01162;
Q12<=N01197;
Q13<=N01232;
Q14<=N01267;
U13 : xor2	PORT MAP(
	I0 => C14_UP, 
	I1 => N01302, 
	O => TQ15_UP
);
U45 : fmap	PORT MAP(
	I1 => C10_UP, 
	I2 => D11, 
	I3 => Q11, 
	I4 => L, 
	O => MD11_UP
);
U77 : m2_1	PORT MAP(
	D0 => TQ8_DN, 
	D1 => MD8_UP, 
	O => MD8, 
	S0 => L_UP
);
U78 : xor2	PORT MAP(
	I0 => N01057, 
	I1 => C7_UP, 
	O => TQ8_UP
);
U14 : xnor2	PORT MAP(
	I0 => C14_DN, 
	I1 => N01302, 
	O => TQ15_DN
);
U46 : fmap	PORT MAP(
	I1 => C10_DN, 
	I2 => MD11_UP, 
	I3 => Q11, 
	I4 => L_UP, 
	O => MD11
);
U79 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD8, 
	Q => N01057
);
U47 : cy4	PORT MAP(
	A0 => N01127, 
	A1 => N01162, 
	C0 => N028685, 
	C1 => N028686, 
	C2 => N028687, 
	C3 => N028688, 
	C4 => N028689, 
	C5 => N0286810, 
	C6 => N0286811, 
	C7 => N0286812, 
	CIN => C9_UP, 
	COUT => C11_UP, 
	COUT0 => C10_UP
);
U15 : m2_1	PORT MAP(
	D0 => TQ15_UP, 
	D1 => D15, 
	O => MD15_UP, 
	S0 => L
);
U16 : m2_1	PORT MAP(
	D0 => TQ15_DN, 
	D1 => MD15_UP, 
	O => MD15, 
	S0 => L_UP
);
U48 : cy4	PORT MAP(
	A0 => N01127, 
	A1 => N01162, 
	C0 => N028840, 
	C1 => N028841, 
	C2 => N028842, 
	C3 => N028843, 
	C4 => N028844, 
	C5 => N028845, 
	C6 => N028846, 
	C7 => N028847, 
	CIN => C9_DN, 
	COUT => C11_DN, 
	COUT0 => C10_DN
);
U17 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD15, 
	Q => N01302
);
U49 : xor2	PORT MAP(
	I0 => C10_UP, 
	I1 => N01162, 
	O => TQ11_UP
);
U18 : fmap	PORT MAP(
	I1 => C13_UP, 
	I2 => D14, 
	I3 => Q14, 
	I4 => L, 
	O => MD14_UP
);
U19 : fmap	PORT MAP(
	I1 => C13_DN, 
	I2 => MD14_UP, 
	I3 => Q14, 
	I4 => L_UP, 
	O => MD14
);
U150 : m2_1	PORT MAP(
	D0 => TQ0_DN, 
	D1 => MD0_UP, 
	O => MD0, 
	S0 => L_UP
);
U151 : m2_1	PORT MAP(
	D0 => TQ0_UP, 
	D1 => D0, 
	O => MD0_UP, 
	S0 => L
);
U152 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD0, 
	Q => N00777
);
U120 : cy4	PORT MAP(
	A0 => N00847, 
	A1 => N00882, 
	C0 => N030845, 
	C1 => N030846, 
	C2 => N030847, 
	C3 => N030848, 
	C4 => N030849, 
	C5 => N0308410, 
	C6 => N0308411, 
	C7 => N0308412, 
	CIN => C1_DN, 
	COUT => C3_DN, 
	COUT0 => C2_DN
);
U153 : or2	PORT MAP(
	I0 => L, 
	I1 => UP, 
	O => L_UP
);
U121 : xor2	PORT MAP(
	I0 => C2_UP, 
	I1 => N00882, 
	O => TQ3_UP
);
U154 : or2	PORT MAP(
	I0 => CE, 
	I1 => L, 
	O => L_CE
);
U122 : xnor2	PORT MAP(
	I0 => C2_DN, 
	I1 => N00882, 
	O => TQ3_DN
);
U123 : m2_1	PORT MAP(
	D0 => TQ3_UP, 
	D1 => D3, 
	O => MD3_UP, 
	S0 => L
);
U124 : m2_1	PORT MAP(
	D0 => TQ3_DN, 
	D1 => MD3_UP, 
	O => MD3, 
	S0 => L_UP
);
U125 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD3, 
	Q => N00882
);
U126 : fmap	PORT MAP(
	I1 => C1_UP, 
	I2 => D2, 
	I3 => Q2, 
	I4 => L, 
	O => MD2_UP
);
U127 : fmap	PORT MAP(
	I1 => C1_DN, 
	I2 => MD2_UP, 
	I3 => Q2, 
	I4 => L_UP, 
	O => MD2
);
U128 : xnor2	PORT MAP(
	I0 => N00847, 
	I1 => C1_DN, 
	O => TQ2_DN
);
U129 : cy4_18	PORT MAP(
	C0 => N031480, 
	C1 => N031481, 
	C2 => N031482, 
	C3 => N031483, 
	C4 => N031484, 
	C5 => N031485, 
	C6 => N031486, 
	C7 => N031487
);
U80 : m2_1	PORT MAP(
	D0 => TQ8_UP, 
	D1 => D8, 
	O => MD8_UP, 
	S0 => L
);
U1 : and2	PORT MAP(
	I0 => UP, 
	I1 => CO_UP, 
	O => TC_UP
);
U2 : cy4	PORT MAP(
	C0 => N031920, 
	C1 => N031921, 
	C2 => N031922, 
	C3 => N031923, 
	C4 => N031924, 
	C5 => N031925, 
	C6 => N031926, 
	C7 => N031927, 
	CIN => CO_UP
);
U81 : fmap	PORT MAP(
	I1 => C6_UP, 
	I2 => D7, 
	I3 => Q7, 
	I4 => L, 
	O => MD7_UP
);
U50 : xnor2	PORT MAP(
	I0 => C10_DN, 
	I1 => N01162, 
	O => TQ11_DN
);
U3 : cy4	PORT MAP(
	C0 => N032000, 
	C1 => N032001, 
	C2 => N032002, 
	C3 => N032003, 
	C4 => N032004, 
	C5 => N032005, 
	C6 => N032006, 
	C7 => N032007, 
	CIN => CO_DN
);
U82 : fmap	PORT MAP(
	I1 => C6_DN, 
	I2 => MD7_UP, 
	I3 => Q7, 
	I4 => L_UP, 
	O => MD7
);
U51 : m2_1	PORT MAP(
	D0 => TQ11_UP, 
	D1 => D11, 
	O => MD11_UP, 
	S0 => L
);
U83 : cy4	PORT MAP(
	A0 => N00987, 
	A1 => N01022, 
	C0 => N031600, 
	C1 => N031601, 
	C2 => N031602, 
	C3 => N031603, 
	C4 => N031604, 
	C5 => N031605, 
	C6 => N031606, 
	C7 => N031607, 
	CIN => C5_UP, 
	COUT => C7_UP, 
	COUT0 => C6_UP
);
U4 : and2	PORT MAP(
	I0 => N02562, 
	I1 => CE, 
	O => CEO
);
U5 : or2	PORT MAP(
	I0 => TC_DN, 
	I1 => TC_UP, 
	O => N02562
);
U20 : xnor2	PORT MAP(
	I0 => N01267, 
	I1 => C13_DN, 
	O => TQ14_DN
);
U84 : cy4	PORT MAP(
	A0 => N00987, 
	A1 => N01022, 
	C0 => N029925, 
	C1 => N029926, 
	C2 => N029927, 
	C3 => N029928, 
	C4 => N029929, 
	C5 => N0299210, 
	C6 => N0299211, 
	C7 => N0299212, 
	CIN => C5_DN, 
	COUT => C7_DN, 
	COUT0 => C6_DN
);
U52 : m2_1	PORT MAP(
	D0 => TQ11_DN, 
	D1 => MD11_UP, 
	O => MD11, 
	S0 => L_UP
);
U85 : xor2	PORT MAP(
	I0 => C6_UP, 
	I1 => N01022, 
	O => TQ7_UP
);
U53 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD11, 
	Q => N01162
);
U21 : cy4_18	PORT MAP(
	C0 => N028440, 
	C1 => N028441, 
	C2 => N028442, 
	C3 => N028443, 
	C4 => N028444, 
	C5 => N028445, 
	C6 => N028446, 
	C7 => N028447
);
U6 : and2b2	PORT MAP(
	I0 => CO_DN, 
	I1 => UP, 
	O => TC_DN
);
U7 : cy4_42	PORT MAP(
	C0 => N031920, 
	C1 => N031921, 
	C2 => N031922, 
	C3 => N031923, 
	C4 => N031924, 
	C5 => N031925, 
	C6 => N031926, 
	C7 => N031927
);
U22 : cy4_25	PORT MAP(
	C0 => N028325, 
	C1 => N028326, 
	C2 => N028327, 
	C3 => N028328, 
	C4 => N028329, 
	C5 => N0283210, 
	C6 => N0283211, 
	C7 => N0283212
);
U54 : fmap	PORT MAP(
	I1 => C9_UP, 
	I2 => D10, 
	I3 => Q10, 
	I4 => L, 
	O => MD10_UP
);
U86 : xnor2	PORT MAP(
	I0 => C6_DN, 
	I1 => N01022, 
	O => TQ7_DN
);
U23 : m2_1	PORT MAP(
	D0 => TQ14_DN, 
	D1 => MD14_UP, 
	O => MD14, 
	S0 => L_UP
);
U87 : m2_1	PORT MAP(
	D0 => TQ7_UP, 
	D1 => D7, 
	O => MD7_UP, 
	S0 => L
);
U8 : cy4_42	PORT MAP(
	C0 => N032000, 
	C1 => N032001, 
	C2 => N032002, 
	C3 => N032003, 
	C4 => N032004, 
	C5 => N032005, 
	C6 => N032006, 
	C7 => N032007
);
U55 : fmap	PORT MAP(
	I1 => C9_DN, 
	I2 => MD10_UP, 
	I3 => Q10, 
	I4 => L_UP, 
	O => MD10
);
U56 : xnor2	PORT MAP(
	I0 => N01127, 
	I1 => C9_DN, 
	O => TQ10_DN
);
U24 : xor2	PORT MAP(
	I0 => N01267, 
	I1 => C13_UP, 
	O => TQ14_UP
);
U88 : m2_1	PORT MAP(
	D0 => TQ7_DN, 
	D1 => MD7_UP, 
	O => MD7, 
	S0 => L_UP
);
U9 : fmap	PORT MAP(
	I1 => C14_UP, 
	I2 => D15, 
	I3 => Q15, 
	I4 => L, 
	O => MD15_UP
);
U25 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD14, 
	Q => N01267
);
U57 : cy4_18	PORT MAP(
	C0 => N028685, 
	C1 => N028686, 
	C2 => N028687, 
	C3 => N028688, 
	C4 => N028689, 
	C5 => N0286810, 
	C6 => N0286811, 
	C7 => N0286812
);
U89 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD7, 
	Q => N01022
);
U58 : cy4_25	PORT MAP(
	C0 => N028840, 
	C1 => N028841, 
	C2 => N028842, 
	C3 => N028843, 
	C4 => N028844, 
	C5 => N028845, 
	C6 => N028846, 
	C7 => N028847
);
U26 : m2_1	PORT MAP(
	D0 => TQ14_UP, 
	D1 => D14, 
	O => MD14_UP, 
	S0 => L
);
U27 : fmap	PORT MAP(
	I1 => C12_UP, 
	I2 => D13, 
	I3 => Q13, 
	I4 => L, 
	O => MD13_UP
);
U59 : m2_1	PORT MAP(
	D0 => TQ10_DN, 
	D1 => MD10_UP, 
	O => MD10, 
	S0 => L_UP
);
U28 : fmap	PORT MAP(
	I1 => C12_DN, 
	I2 => MD13_UP, 
	I3 => Q13, 
	I4 => L_UP, 
	O => MD13
);
U29 : cy4	PORT MAP(
	A0 => N01197, 
	A1 => N01232, 
	C0 => N028645, 
	C1 => N028646, 
	C2 => N028647, 
	C3 => N028648, 
	C4 => N028649, 
	C5 => N0286410, 
	C6 => N0286411, 
	C7 => N0286412, 
	CIN => C11_UP, 
	COUT => C13_UP, 
	COUT0 => C12_UP
);
U130 : cy4_25	PORT MAP(
	C0 => N030845, 
	C1 => N030846, 
	C2 => N030847, 
	C3 => N030848, 
	C4 => N030849, 
	C5 => N0308410, 
	C6 => N0308411, 
	C7 => N0308412
);
U131 : m2_1	PORT MAP(
	D0 => TQ2_DN, 
	D1 => MD2_UP, 
	O => MD2, 
	S0 => L_UP
);
U132 : xor2	PORT MAP(
	I0 => N00847, 
	I1 => C1_UP, 
	O => TQ2_UP
);
U100 : fmap	PORT MAP(
	I1 => C4_DN, 
	I2 => MD5_UP, 
	I3 => Q5, 
	I4 => L_UP, 
	O => MD5
);
U101 : cy4	PORT MAP(
	A0 => N00917, 
	A1 => N00952, 
	C0 => N031520, 
	C1 => N031521, 
	C2 => N031522, 
	C3 => N031523, 
	C4 => N031524, 
	C5 => N031525, 
	C6 => N031526, 
	C7 => N031527, 
	CIN => C3_UP, 
	COUT => C5_UP, 
	COUT0 => C4_UP
);
U133 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD2, 
	Q => N00847
);
U102 : cy4	PORT MAP(
	A0 => N00917, 
	A1 => N00952, 
	C0 => N030805, 
	C1 => N030806, 
	C2 => N030807, 
	C3 => N030808, 
	C4 => N030809, 
	C5 => N0308010, 
	C6 => N0308011, 
	C7 => N0308012, 
	CIN => C3_DN, 
	COUT => C5_DN, 
	COUT0 => C4_DN
);
U134 : m2_1	PORT MAP(
	D0 => TQ2_UP, 
	D1 => D2, 
	O => MD2_UP, 
	S0 => L
);
U103 : xor2	PORT MAP(
	I0 => C4_UP, 
	I1 => N00952, 
	O => TQ5_UP
);
U135 : fmap	PORT MAP(
	I1 => C0_UP, 
	I2 => D1, 
	I3 => Q1, 
	I4 => L, 
	O => MD1_UP
);
U136 : fmap	PORT MAP(
	I1 => C0_DN, 
	I2 => MD1_UP, 
	I3 => Q1, 
	I4 => L_UP, 
	O => MD1
);
U104 : xnor2	PORT MAP(
	I0 => C4_DN, 
	I1 => N00952, 
	O => TQ5_DN
);
U137 : cy4	PORT MAP(
	A0 => N00777, 
	A1 => N00812, 
	C0 => N031685, 
	C1 => N031686, 
	C2 => N031687, 
	C3 => N031688, 
	C4 => N031689, 
	C5 => N0316810, 
	C6 => N0316811, 
	C7 => N0316812, 
	COUT => C1_UP, 
	COUT0 => C0_UP
);
U105 : m2_1	PORT MAP(
	D0 => TQ5_UP, 
	D1 => D5, 
	O => MD5_UP, 
	S0 => L
);
U138 : cy4	PORT MAP(
	A0 => N00777, 
	A1 => N00812, 
	C0 => N030280, 
	C1 => N030281, 
	C2 => N030282, 
	C3 => N030283, 
	C4 => N030284, 
	C5 => N030285, 
	C6 => N030286, 
	C7 => N030287, 
	COUT => C1_DN, 
	COUT0 => C0_DN
);
U106 : m2_1	PORT MAP(
	D0 => TQ5_DN, 
	D1 => MD5_UP, 
	O => MD5, 
	S0 => L_UP
);
U107 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD5, 
	Q => N00952
);
U139 : xor2	PORT MAP(
	I0 => C0_UP, 
	I1 => N00812, 
	O => TQ1_UP
);
U108 : fmap	PORT MAP(
	I1 => C3_UP, 
	I2 => D4, 
	I3 => Q4, 
	I4 => L, 
	O => MD4_UP
);
U109 : fmap	PORT MAP(
	I1 => C3_DN, 
	I2 => MD4_UP, 
	I3 => Q4, 
	I4 => L_UP, 
	O => MD4
);
U90 : fmap	PORT MAP(
	I1 => C5_UP, 
	I2 => D6, 
	I3 => Q6, 
	I4 => L, 
	O => MD6_UP
);
U91 : fmap	PORT MAP(
	I1 => C5_DN, 
	I2 => MD6_UP, 
	I3 => Q6, 
	I4 => L_UP, 
	O => MD6
);
U92 : xnor2	PORT MAP(
	I0 => N00987, 
	I1 => C5_DN, 
	O => TQ6_DN
);
U60 : xor2	PORT MAP(
	I0 => N01127, 
	I1 => C9_UP, 
	O => TQ10_UP
);
U61 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD10, 
	Q => N01127
);
U93 : cy4_18	PORT MAP(
	C0 => N031600, 
	C1 => N031601, 
	C2 => N031602, 
	C3 => N031603, 
	C4 => N031604, 
	C5 => N031605, 
	C6 => N031606, 
	C7 => N031607
);
U30 : cy4	PORT MAP(
	A0 => N01197, 
	A1 => N01232, 
	C0 => N028880, 
	C1 => N028881, 
	C2 => N028882, 
	C3 => N028883, 
	C4 => N028884, 
	C5 => N028885, 
	C6 => N028886, 
	C7 => N028887, 
	CIN => C11_DN, 
	COUT => C13_DN, 
	COUT0 => C12_DN
);
U62 : m2_1	PORT MAP(
	D0 => TQ10_UP, 
	D1 => D10, 
	O => MD10_UP, 
	S0 => L
);
U94 : cy4_25	PORT MAP(
	C0 => N029925, 
	C1 => N029926, 
	C2 => N029927, 
	C3 => N029928, 
	C4 => N029929, 
	C5 => N0299210, 
	C6 => N0299211, 
	C7 => N0299212
);
U95 : m2_1	PORT MAP(
	D0 => TQ6_DN, 
	D1 => MD6_UP, 
	O => MD6, 
	S0 => L_UP
);
U31 : xor2	PORT MAP(
	I0 => C12_UP, 
	I1 => N01232, 
	O => TQ13_UP
);
U63 : fmap	PORT MAP(
	I1 => C8_UP, 
	I2 => D9, 
	I3 => Q9, 
	I4 => L, 
	O => MD9_UP
);
U32 : xnor2	PORT MAP(
	I0 => C12_DN, 
	I1 => N01232, 
	O => TQ13_DN
);
U96 : xor2	PORT MAP(
	I0 => N00987, 
	I1 => C5_UP, 
	O => TQ6_UP
);
U64 : fmap	PORT MAP(
	I1 => C8_DN, 
	I2 => MD9_UP, 
	I3 => Q9, 
	I4 => L_UP, 
	O => MD9
);
U97 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD6, 
	Q => N00987
);
U65 : cy4	PORT MAP(
	A0 => N01057, 
	A1 => N01092, 
	C0 => N028605, 
	C1 => N028606, 
	C2 => N028607, 
	C3 => N028608, 
	C4 => N028609, 
	C5 => N0286010, 
	C6 => N0286011, 
	C7 => N0286012, 
	CIN => C7_UP, 
	COUT => C9_UP, 
	COUT0 => C8_UP
);
U33 : m2_1	PORT MAP(
	D0 => TQ13_UP, 
	D1 => D13, 
	O => MD13_UP, 
	S0 => L
);
U34 : m2_1	PORT MAP(
	D0 => TQ13_DN, 
	D1 => MD13_UP, 
	O => MD13, 
	S0 => L_UP
);
U66 : cy4	PORT MAP(
	A0 => N01057, 
	A1 => N01092, 
	C0 => N028800, 
	C1 => N028801, 
	C2 => N028802, 
	C3 => N028803, 
	C4 => N028804, 
	C5 => N028805, 
	C6 => N028806, 
	C7 => N028807, 
	CIN => C7_DN, 
	COUT => C9_DN, 
	COUT0 => C8_DN
);
U98 : m2_1	PORT MAP(
	D0 => TQ6_UP, 
	D1 => D6, 
	O => MD6_UP, 
	S0 => L
);
U35 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD13, 
	Q => N01232
);
U67 : xor2	PORT MAP(
	I0 => C8_UP, 
	I1 => N01092, 
	O => TQ9_UP
);
U99 : fmap	PORT MAP(
	I1 => C4_UP, 
	I2 => D5, 
	I3 => Q5, 
	I4 => L, 
	O => MD5_UP
);
U68 : xnor2	PORT MAP(
	I0 => C8_DN, 
	I1 => N01092, 
	O => TQ9_DN
);
U36 : fmap	PORT MAP(
	I1 => C11_UP, 
	I2 => D12, 
	I3 => Q12, 
	I4 => L, 
	O => MD12_UP
);
U69 : m2_1	PORT MAP(
	D0 => TQ9_UP, 
	D1 => D9, 
	O => MD9_UP, 
	S0 => L
);
U37 : fmap	PORT MAP(
	I1 => C11_DN, 
	I2 => MD12_UP, 
	I3 => Q12, 
	I4 => L_UP, 
	O => MD12
);
U38 : xnor2	PORT MAP(
	I0 => N01197, 
	I1 => C11_DN, 
	O => TQ12_DN
);
U39 : cy4_18	PORT MAP(
	C0 => N028645, 
	C1 => N028646, 
	C2 => N028647, 
	C3 => N028648, 
	C4 => N028649, 
	C5 => N0286410, 
	C6 => N0286411, 
	C7 => N0286412
);
U140 : xnor2	PORT MAP(
	I0 => C0_DN, 
	I1 => N00812, 
	O => TQ1_DN
);
U141 : m2_1	PORT MAP(
	D0 => TQ1_UP, 
	D1 => D1, 
	O => MD1_UP, 
	S0 => L
);
U142 : m2_1	PORT MAP(
	D0 => TQ1_DN, 
	D1 => MD1_UP, 
	O => MD1, 
	S0 => L_UP
);
U110 : xnor2	PORT MAP(
	I0 => N00917, 
	I1 => C3_DN, 
	O => TQ4_DN
);
U111 : cy4_18	PORT MAP(
	C0 => N031520, 
	C1 => N031521, 
	C2 => N031522, 
	C3 => N031523, 
	C4 => N031524, 
	C5 => N031525, 
	C6 => N031526, 
	C7 => N031527
);
U143 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD1, 
	Q => N00812
);
U144 : fmap	PORT MAP(
	I2 => D0, 
	I3 => Q0, 
	I4 => L, 
	O => MD0_UP
);
U112 : cy4_25	PORT MAP(
	C0 => N030805, 
	C1 => N030806, 
	C2 => N030807, 
	C3 => N030808, 
	C4 => N030809, 
	C5 => N0308010, 
	C6 => N0308011, 
	C7 => N0308012
);
U145 : fmap	PORT MAP(
	I2 => MD0_UP, 
	I3 => Q0, 
	I4 => L_UP, 
	O => MD0
);
U113 : m2_1	PORT MAP(
	D0 => TQ4_DN, 
	D1 => MD4_UP, 
	O => MD4, 
	S0 => L_UP
);
U146 : cy4_19	PORT MAP(
	C0 => N031685, 
	C1 => N031686, 
	C2 => N031687, 
	C3 => N031688, 
	C4 => N031689, 
	C5 => N0316810, 
	C6 => N0316811, 
	C7 => N0316812
);
U114 : xor2	PORT MAP(
	I0 => N00917, 
	I1 => C3_UP, 
	O => TQ4_UP
);
U115 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD4, 
	Q => N00917
);
U147 : cy4_26	PORT MAP(
	C0 => N030280, 
	C1 => N030281, 
	C2 => N030282, 
	C3 => N030283, 
	C4 => N030284, 
	C5 => N030285, 
	C6 => N030286, 
	C7 => N030287
);
U116 : m2_1	PORT MAP(
	D0 => TQ4_UP, 
	D1 => D4, 
	O => MD4_UP, 
	S0 => L
);
U148 : inv	PORT MAP(
	I => N00777, 
	O => TQ0_UP
);
U117 : fmap	PORT MAP(
	I1 => C2_UP, 
	I2 => D3, 
	I3 => Q3, 
	I4 => L, 
	O => MD3_UP
);
U149 : inv	PORT MAP(
	I => N00777, 
	O => TQ0_DN
);
U118 : fmap	PORT MAP(
	I1 => C2_DN, 
	I2 => MD3_UP, 
	I3 => Q3, 
	I4 => L_UP, 
	O => MD3
);
U119 : cy4	PORT MAP(
	A0 => N00847, 
	A1 => N00882, 
	C0 => N031480, 
	C1 => N031481, 
	C2 => N031482, 
	C3 => N031483, 
	C4 => N031484, 
	C5 => N031485, 
	C6 => N031486, 
	C7 => N031487, 
	CIN => C1_UP, 
	COUT => C3_UP, 
	COUT0 => C2_UP
);
U70 : m2_1	PORT MAP(
	D0 => TQ9_DN, 
	D1 => MD9_UP, 
	O => MD9, 
	S0 => L_UP
);
U71 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD9, 
	Q => N01092
);
U40 : cy4_25	PORT MAP(
	C0 => N028880, 
	C1 => N028881, 
	C2 => N028882, 
	C3 => N028883, 
	C4 => N028884, 
	C5 => N028885, 
	C6 => N028886, 
	C7 => N028887
);
U72 : fmap	PORT MAP(
	I1 => C7_UP, 
	I2 => D8, 
	I3 => Q8, 
	I4 => L, 
	O => MD8_UP
);
U41 : m2_1	PORT MAP(
	D0 => TQ12_DN, 
	D1 => MD12_UP, 
	O => MD12, 
	S0 => L_UP
);
U73 : fmap	PORT MAP(
	I1 => C7_DN, 
	I2 => MD8_UP, 
	I3 => Q8, 
	I4 => L_UP, 
	O => MD8
);
U74 : xnor2	PORT MAP(
	I0 => N01057, 
	I1 => C7_DN, 
	O => TQ8_DN
);
U42 : xor2	PORT MAP(
	I0 => N01197, 
	I1 => C11_UP, 
	O => TQ12_UP
);
U10 : fmap	PORT MAP(
	I1 => C14_DN, 
	I2 => MD15_UP, 
	I3 => Q15, 
	I4 => L_UP, 
	O => MD15
);
U75 : cy4_18	PORT MAP(
	C0 => N028605, 
	C1 => N028606, 
	C2 => N028607, 
	C3 => N028608, 
	C4 => N028609, 
	C5 => N0286010, 
	C6 => N0286011, 
	C7 => N0286012
);
U11 : cy4	PORT MAP(
	A0 => N01267, 
	A1 => N01302, 
	C0 => N028440, 
	C1 => N028441, 
	C2 => N028442, 
	C3 => N028443, 
	C4 => N028444, 
	C5 => N028445, 
	C6 => N028446, 
	C7 => N028447, 
	CIN => C13_UP, 
	COUT => CO_UP, 
	COUT0 => C14_UP
);
U43 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD12, 
	Q => N01197
);
U76 : cy4_25	PORT MAP(
	C0 => N028800, 
	C1 => N028801, 
	C2 => N028802, 
	C3 => N028803, 
	C4 => N028804, 
	C5 => N028805, 
	C6 => N028806, 
	C7 => N028807
);
U12 : cy4	PORT MAP(
	A0 => N01267, 
	A1 => N01302, 
	C0 => N028325, 
	C1 => N028326, 
	C2 => N028327, 
	C3 => N028328, 
	C4 => N028329, 
	C5 => N0283210, 
	C6 => N0283211, 
	C7 => N0283212, 
	CIN => C13_DN, 
	COUT => CO_DN, 
	COUT0 => C14_DN
);
U44 : m2_1	PORT MAP(
	D0 => TQ12_UP, 
	D1 => D12, 
	O => MD12_UP, 
	S0 => L
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB8CLED IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	UP : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB8CLED;



ARCHITECTURE STRUCTURE OF CB8CLED IS

-- COMPONENTS

COMPONENT AND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT AND5	 PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T6_UP : std_logic;
SIGNAL T4_UP : std_logic;
SIGNAL T4_DN : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T7_DN : std_logic;
SIGNAL T7_UP : std_logic;
SIGNAL T6_DN : std_logic;
SIGNAL T5_UP : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T2 : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL T5_DN : std_logic;
SIGNAL T7 : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N07084 : std_logic;
SIGNAL N07087 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N07084;
Q0<=N00036;
Q1<=N00048;
Q2<=N00063;
Q3<=N00080;
Q4<=N00095;
Q5<=N00110;
Q6<=N00127;
Q7<=N00146;
U46 : AND3B3	PORT MAP(
	I0 => N00063, 
	I1 => N00048, 
	I2 => N00036, 
	O => T3_DN
);
U47 : AND4B4	PORT MAP(
	I0 => N00080, 
	I1 => N00063, 
	I2 => N00048, 
	I3 => N00036, 
	O => T4_DN
);
U48 : AND4	PORT MAP(
	I0 => N00080, 
	I1 => N00063, 
	I2 => N00048, 
	I3 => N00036, 
	O => T4_UP
);
U50 : AND2	PORT MAP(
	I0 => N00048, 
	I1 => N00036, 
	O => T2_UP
);
U51 : AND3	PORT MAP(
	I0 => N00063, 
	I1 => N00048, 
	I2 => N00036, 
	O => T3_UP
);
U52 : AND2	PORT MAP(
	I0 => N00095, 
	I1 => T4, 
	O => T5_UP
);
U63 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N07084, 
	O => CEO
);
U64 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N07087, 
	O => N07084
);
U33 : AND4	PORT MAP(
	I0 => N00127, 
	I1 => N00110, 
	I2 => N00095, 
	I3 => T4, 
	O => T7_UP
);
U34 : AND4B3	PORT MAP(
	I0 => N00127, 
	I1 => N00110, 
	I2 => N00095, 
	I3 => T4, 
	O => T7_DN
);
U36 : AND2B2	PORT MAP(
	I0 => N00048, 
	I1 => N00036, 
	O => T2_DN
);
U38 : VCC	PORT MAP(
	P => N00037
);
U40 : AND2B1	PORT MAP(
	I0 => N00095, 
	I1 => T4, 
	O => T5_DN
);
U41 : AND3	PORT MAP(
	I0 => N00110, 
	I1 => N00095, 
	I2 => T4, 
	O => T6_UP
);
U42 : AND3B2	PORT MAP(
	I0 => N00110, 
	I1 => N00095, 
	I2 => T4, 
	O => T6_DN
);
U55 : AND5B4	PORT MAP(
	I0 => N00146, 
	I1 => N00127, 
	I2 => N00110, 
	I3 => N00095, 
	I4 => T4, 
	O => TC_DN
);
U44 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00063, 
	CLR => CLR
);
U45 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00080, 
	CLR => CLR
);
U56 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00095, 
	CLR => CLR
);
U35 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00048, 
	CLR => CLR
);
U57 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00127, 
	CLR => CLR
);
U58 : M2_1	PORT MAP(
	D0 => T6_DN, 
	D1 => T6_UP, 
	S0 => UP, 
	O => T6
);
U37 : M2_1	PORT MAP(
	D0 => T2_DN, 
	D1 => T2_UP, 
	S0 => UP, 
	O => T2
);
U59 : M2_1	PORT MAP(
	D0 => T7_DN, 
	D1 => T7_UP, 
	S0 => UP, 
	O => T7
);
U49 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00110, 
	CLR => CLR
);
U39 : M2_1B1	PORT MAP(
	D0 => N00036, 
	D1 => N00036, 
	S0 => UP, 
	O => T1
);
U60 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N07087
);
U61 : M2_1	PORT MAP(
	D0 => T5_DN, 
	D1 => T5_UP, 
	S0 => UP, 
	O => T5
);
U62 : M2_1	PORT MAP(
	D0 => T4_DN, 
	D1 => T4_UP, 
	S0 => UP, 
	O => T4
);
U53 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00146, 
	CLR => CLR
);
U31 : AND5	PORT MAP(
	I0 => N00146, 
	I1 => N00127, 
	I2 => N00110, 
	I3 => N00095, 
	I4 => T4, 
	O => TC_UP
);
U32 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00037, 
	CE => CE, 
	C => C, 
	Q => N00036, 
	CLR => CLR
);
U43 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 

ENTITY cc8cled IS PORT (
	D3 : IN std_logic;
	TC : OUT std_logic;
	Q0 : OUT std_logic;
	D4 : IN std_logic;
	Q1 : OUT std_logic;
	D5 : IN std_logic;
	CE : IN std_logic;
	Q2 : OUT std_logic;
	D6 : IN std_logic;
	Q3 : OUT std_logic;
	D7 : IN std_logic;
	Q4 : OUT std_logic;
	CLR : IN std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	L : IN std_logic;
	CEO : OUT std_logic;
	UP : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	C : IN std_logic
); END cc8cled;



ARCHITECTURE STRUCTURE OF cc8cled IS

-- COMPONENTS

COMPONENT inv
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT xor2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT fmap
	PORT (
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : IN std_logic
	); END COMPONENT;

COMPONENT xnor2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT m2_1
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	O : OUT std_logic;
	S0 : IN std_logic
	); END COMPONENT;

COMPONENT cy4
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	ADD : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	C0 : IN std_logic;
	C1 : IN std_logic;
	C2 : IN std_logic;
	C3 : IN std_logic;
	C4 : IN std_logic;
	C5 : IN std_logic;
	C6 : IN std_logic;
	C7 : IN std_logic;
	CIN : IN std_logic;
	COUT : OUT std_logic;
	COUT0 : OUT std_logic
	); END COMPONENT;

COMPONENT fdce
	PORT (
	C : IN std_logic;
	CE : IN std_logic;
	CLR : IN std_logic;
	D : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT and2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT or2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT and2b2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_18
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_25
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_42
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_19
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

COMPONENT cy4_26
	PORT (
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL MD1_UP : std_logic;
SIGNAL MD3_UP : std_logic;
SIGNAL MD5_UP : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL TQ5_UP : std_logic;
SIGNAL MD6_UP : std_logic;
SIGNAL TQ3_UP : std_logic;
SIGNAL TQ1_DN : std_logic;
SIGNAL TQ3_DN : std_logic;
SIGNAL MD4_UP : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL TQ4_DN : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD2_UP : std_logic;
SIGNAL TQ0_DN : std_logic;
SIGNAL TQ6_DN : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N01075 : std_logic;
SIGNAL TQ5_DN : std_logic;
SIGNAL TQ7_DN : std_logic;
SIGNAL TQ2_UP : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL TQ0_UP : std_logic;
SIGNAL MD7_UP : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL TQ6_UP : std_logic;
SIGNAL TQ1_UP : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL TQ7_UP : std_logic;
SIGNAL TQ2_DN : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL TQ4_UP : std_logic;
SIGNAL N017007 : std_logic;
SIGNAL N017009 : std_logic;
SIGNAL C6_UP : std_logic;
SIGNAL CO_UP : std_logic;
SIGNAL N017206 : std_logic;
SIGNAL N017201 : std_logic;
SIGNAL N017204 : std_logic;
SIGNAL N017207 : std_logic;
SIGNAL N017202 : std_logic;
SIGNAL N017203 : std_logic;
SIGNAL N017205 : std_logic;
SIGNAL N017200 : std_logic;
SIGNAL N017088 : std_logic;
SIGNAL N017087 : std_logic;
SIGNAL N0170811 : std_logic;
SIGNAL N017089 : std_logic;
SIGNAL N017086 : std_logic;
SIGNAL N0170810 : std_logic;
SIGNAL N017085 : std_logic;
SIGNAL N0170812 : std_logic;
SIGNAL C5_UP : std_logic;
SIGNAL C4_UP : std_logic;
SIGNAL N0170011 : std_logic;
SIGNAL N017008 : std_logic;
SIGNAL N017006 : std_logic;
SIGNAL N0170010 : std_logic;
SIGNAL N0170012 : std_logic;
SIGNAL N017005 : std_logic;
SIGNAL N016880 : std_logic;
SIGNAL N016883 : std_logic;
SIGNAL N016885 : std_logic;
SIGNAL N016887 : std_logic;
SIGNAL C0_UP : std_logic;
SIGNAL C1_UP : std_logic;
SIGNAL N016926 : std_logic;
SIGNAL N016929 : std_logic;
SIGNAL N016927 : std_logic;
SIGNAL N0169211 : std_logic;
SIGNAL N016928 : std_logic;
SIGNAL N0169210 : std_logic;
SIGNAL N0169212 : std_logic;
SIGNAL N016925 : std_logic;
SIGNAL C2_UP : std_logic;
SIGNAL C3_UP : std_logic;
SIGNAL L_UP : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD0_UP : std_logic;
SIGNAL N016881 : std_logic;
SIGNAL N016886 : std_logic;
SIGNAL N016884 : std_logic;
SIGNAL N016882 : std_logic;
SIGNAL N017480 : std_logic;
SIGNAL N017482 : std_logic;
SIGNAL N017481 : std_logic;
SIGNAL N017485 : std_logic;
SIGNAL N017486 : std_logic;
SIGNAL N017484 : std_logic;
SIGNAL CO_DN : std_logic;
SIGNAL C6_DN : std_logic;
SIGNAL N018041 : std_logic;
SIGNAL N018043 : std_logic;
SIGNAL N018040 : std_logic;
SIGNAL N018047 : std_logic;
SIGNAL N018046 : std_logic;
SIGNAL N018042 : std_logic;
SIGNAL N018044 : std_logic;
SIGNAL N018045 : std_logic;
SIGNAL N017407 : std_logic;
SIGNAL N017400 : std_logic;
SIGNAL C2_DN : std_logic;
SIGNAL C3_DN : std_logic;
SIGNAL N017441 : std_logic;
SIGNAL N017445 : std_logic;
SIGNAL N017443 : std_logic;
SIGNAL N017447 : std_logic;
SIGNAL N017440 : std_logic;
SIGNAL N017444 : std_logic;
SIGNAL N017442 : std_logic;
SIGNAL N017446 : std_logic;
SIGNAL C4_DN : std_logic;
SIGNAL C5_DN : std_logic;
SIGNAL N017483 : std_logic;
SIGNAL N017487 : std_logic;
SIGNAL N017365 : std_logic;
SIGNAL N017367 : std_logic;
SIGNAL N0173611 : std_logic;
SIGNAL N017366 : std_logic;
SIGNAL N0173610 : std_logic;
SIGNAL N017368 : std_logic;
SIGNAL N0173612 : std_logic;
SIGNAL N017369 : std_logic;
SIGNAL C0_DN : std_logic;
SIGNAL C1_DN : std_logic;
SIGNAL N017402 : std_logic;
SIGNAL N017406 : std_logic;
SIGNAL N017405 : std_logic;
SIGNAL N017401 : std_logic;
SIGNAL N017404 : std_logic;
SIGNAL N017403 : std_logic;
SIGNAL N00679 : std_logic;
SIGNAL N00714 : std_logic;
SIGNAL N00749 : std_logic;
SIGNAL N00784 : std_logic;
SIGNAL N00819 : std_logic;
SIGNAL N00889 : std_logic;
SIGNAL N00854 : std_logic;
SIGNAL N00644 : std_logic;


-- GATE INSTANCES

BEGIN
TC<=N01075;
Q0<=N00679;
Q1<=N00714;
Q2<=N00749;
Q3<=N00784;
Q4<=N00819;
Q5<=N00889;
Q6<=N00854;
Q7<=N00644;
U77 : inv	PORT MAP(
	I => N00679, 
	O => TQ0_DN
);
U13 : xor2	PORT MAP(
	I0 => C6_UP, 
	I1 => N00644, 
	O => TQ7_UP
);
U45 : fmap	PORT MAP(
	I1 => C2_UP, 
	I2 => D3, 
	I3 => N00784, 
	I4 => L, 
	O => MD3_UP
);
U14 : xnor2	PORT MAP(
	I0 => C6_DN, 
	I1 => N00644, 
	O => TQ7_DN
);
U46 : fmap	PORT MAP(
	I1 => C2_DN, 
	I2 => MD3_UP, 
	I3 => N00784, 
	I4 => L_UP, 
	O => MD3
);
U78 : m2_1	PORT MAP(
	D0 => TQ0_DN, 
	D1 => MD0_UP, 
	O => MD0, 
	S0 => L_UP
);
U79 : m2_1	PORT MAP(
	D0 => TQ0_UP, 
	D1 => D0, 
	O => MD0_UP, 
	S0 => L
);
U47 : cy4	PORT MAP(
	A0 => N00749, 
	A1 => N00784, 
	C0 => N016925, 
	C1 => N016926, 
	C2 => N016927, 
	C3 => N016928, 
	C4 => N016929, 
	C5 => N0169210, 
	C6 => N0169211, 
	C7 => N0169212, 
	CIN => C1_UP, 
	COUT => C3_UP, 
	COUT0 => C2_UP
);
U15 : m2_1	PORT MAP(
	D0 => TQ7_UP, 
	D1 => D7, 
	O => MD7_UP, 
	S0 => L
);
U16 : m2_1	PORT MAP(
	D0 => TQ7_DN, 
	D1 => MD7_UP, 
	O => MD7, 
	S0 => L_UP
);
U48 : cy4	PORT MAP(
	A0 => N00749, 
	A1 => N00784, 
	C0 => N017400, 
	C1 => N017401, 
	C2 => N017402, 
	C3 => N017403, 
	C4 => N017404, 
	C5 => N017405, 
	C6 => N017406, 
	C7 => N017407, 
	CIN => C1_DN, 
	COUT => C3_DN, 
	COUT0 => C2_DN
);
U49 : xor2	PORT MAP(
	I0 => C2_UP, 
	I1 => N00784, 
	O => TQ3_UP
);
U17 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD7, 
	Q => N00644
);
U18 : fmap	PORT MAP(
	I1 => C5_UP, 
	I2 => D6, 
	I3 => N00854, 
	I4 => L, 
	O => MD6_UP
);
U19 : fmap	PORT MAP(
	I1 => C5_DN, 
	I2 => MD6_UP, 
	I3 => N00854, 
	I4 => L_UP, 
	O => MD6
);
U80 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD0, 
	Q => N00679
);
U1 : and2	PORT MAP(
	I0 => UP, 
	I1 => CO_UP, 
	O => TC_UP
);
U81 : or2	PORT MAP(
	I0 => L, 
	I1 => UP, 
	O => L_UP
);
U2 : cy4	PORT MAP(
	C0 => N017200, 
	C1 => N017201, 
	C2 => N017202, 
	C3 => N017203, 
	C4 => N017204, 
	C5 => N017205, 
	C6 => N017206, 
	C7 => N017207, 
	CIN => CO_UP
);
U50 : xnor2	PORT MAP(
	I0 => C2_DN, 
	I1 => N00784, 
	O => TQ3_DN
);
U3 : cy4	PORT MAP(
	C0 => N018040, 
	C1 => N018041, 
	C2 => N018042, 
	C3 => N018043, 
	C4 => N018044, 
	C5 => N018045, 
	C6 => N018046, 
	C7 => N018047, 
	CIN => CO_DN
);
U82 : or2	PORT MAP(
	I0 => CE, 
	I1 => L, 
	O => L_CE
);
U51 : m2_1	PORT MAP(
	D0 => TQ3_UP, 
	D1 => D3, 
	O => MD3_UP, 
	S0 => L
);
U4 : and2	PORT MAP(
	I0 => N01075, 
	I1 => CE, 
	O => CEO
);
U52 : m2_1	PORT MAP(
	D0 => TQ3_DN, 
	D1 => MD3_UP, 
	O => MD3, 
	S0 => L_UP
);
U5 : or2	PORT MAP(
	I0 => TC_DN, 
	I1 => TC_UP, 
	O => N01075
);
U20 : xnor2	PORT MAP(
	I0 => N00854, 
	I1 => C5_DN, 
	O => TQ6_DN
);
U53 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD3, 
	Q => N00784
);
U6 : and2b2	PORT MAP(
	I0 => CO_DN, 
	I1 => UP, 
	O => TC_DN
);
U21 : cy4_18	PORT MAP(
	C0 => N017005, 
	C1 => N017006, 
	C2 => N017007, 
	C3 => N017008, 
	C4 => N017009, 
	C5 => N0170010, 
	C6 => N0170011, 
	C7 => N0170012
);
U22 : cy4_25	PORT MAP(
	C0 => N017480, 
	C1 => N017481, 
	C2 => N017482, 
	C3 => N017483, 
	C4 => N017484, 
	C5 => N017485, 
	C6 => N017486, 
	C7 => N017487
);
U7 : cy4_42	PORT MAP(
	C0 => N017200, 
	C1 => N017201, 
	C2 => N017202, 
	C3 => N017203, 
	C4 => N017204, 
	C5 => N017205, 
	C6 => N017206, 
	C7 => N017207
);
U54 : fmap	PORT MAP(
	I1 => C1_UP, 
	I2 => D2, 
	I3 => N00749, 
	I4 => L, 
	O => MD2_UP
);
U8 : cy4_42	PORT MAP(
	C0 => N018040, 
	C1 => N018041, 
	C2 => N018042, 
	C3 => N018043, 
	C4 => N018044, 
	C5 => N018045, 
	C6 => N018046, 
	C7 => N018047
);
U55 : fmap	PORT MAP(
	I1 => C1_DN, 
	I2 => MD2_UP, 
	I3 => N00749, 
	I4 => L_UP, 
	O => MD2
);
U23 : m2_1	PORT MAP(
	D0 => TQ6_DN, 
	D1 => MD6_UP, 
	O => MD6, 
	S0 => L_UP
);
U56 : xnor2	PORT MAP(
	I0 => N00749, 
	I1 => C1_DN, 
	O => TQ2_DN
);
U24 : xor2	PORT MAP(
	I0 => N00854, 
	I1 => C5_UP, 
	O => TQ6_UP
);
U9 : fmap	PORT MAP(
	I1 => C6_UP, 
	I2 => D7, 
	I3 => N00644, 
	I4 => L, 
	O => MD7_UP
);
U57 : cy4_18	PORT MAP(
	C0 => N016925, 
	C1 => N016926, 
	C2 => N016927, 
	C3 => N016928, 
	C4 => N016929, 
	C5 => N0169210, 
	C6 => N0169211, 
	C7 => N0169212
);
U25 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD6, 
	Q => N00854
);
U58 : cy4_25	PORT MAP(
	C0 => N017400, 
	C1 => N017401, 
	C2 => N017402, 
	C3 => N017403, 
	C4 => N017404, 
	C5 => N017405, 
	C6 => N017406, 
	C7 => N017407
);
U26 : m2_1	PORT MAP(
	D0 => TQ6_UP, 
	D1 => D6, 
	O => MD6_UP, 
	S0 => L
);
U59 : m2_1	PORT MAP(
	D0 => TQ2_DN, 
	D1 => MD2_UP, 
	O => MD2, 
	S0 => L_UP
);
U27 : fmap	PORT MAP(
	I1 => C4_UP, 
	I2 => D5, 
	I3 => N00889, 
	I4 => L, 
	O => MD5_UP
);
U28 : fmap	PORT MAP(
	I1 => C4_DN, 
	I2 => MD5_UP, 
	I3 => N00889, 
	I4 => L_UP, 
	O => MD5
);
U29 : cy4	PORT MAP(
	A0 => N00819, 
	A1 => N00889, 
	C0 => N017085, 
	C1 => N017086, 
	C2 => N017087, 
	C3 => N017088, 
	C4 => N017089, 
	C5 => N0170810, 
	C6 => N0170811, 
	C7 => N0170812, 
	CIN => C3_UP, 
	COUT => C5_UP, 
	COUT0 => C4_UP
);
U60 : xor2	PORT MAP(
	I0 => N00749, 
	I1 => C1_UP, 
	O => TQ2_UP
);
U61 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD2, 
	Q => N00749
);
U62 : m2_1	PORT MAP(
	D0 => TQ2_UP, 
	D1 => D2, 
	O => MD2_UP, 
	S0 => L
);
U30 : cy4	PORT MAP(
	A0 => N00819, 
	A1 => N00889, 
	C0 => N017440, 
	C1 => N017441, 
	C2 => N017442, 
	C3 => N017443, 
	C4 => N017444, 
	C5 => N017445, 
	C6 => N017446, 
	C7 => N017447, 
	CIN => C3_DN, 
	COUT => C5_DN, 
	COUT0 => C4_DN
);
U31 : xor2	PORT MAP(
	I0 => C4_UP, 
	I1 => N00889, 
	O => TQ5_UP
);
U63 : fmap	PORT MAP(
	I1 => C0_UP, 
	I2 => D1, 
	I3 => N00714, 
	I4 => L, 
	O => MD1_UP
);
U32 : xnor2	PORT MAP(
	I0 => C4_DN, 
	I1 => N00889, 
	O => TQ5_DN
);
U64 : fmap	PORT MAP(
	I1 => C0_DN, 
	I2 => MD1_UP, 
	I3 => N00714, 
	I4 => L_UP, 
	O => MD1
);
U33 : m2_1	PORT MAP(
	D0 => TQ5_UP, 
	D1 => D5, 
	O => MD5_UP, 
	S0 => L
);
U65 : cy4	PORT MAP(
	A0 => N00679, 
	A1 => N00714, 
	C0 => N016880, 
	C1 => N016881, 
	C2 => N016882, 
	C3 => N016883, 
	C4 => N016884, 
	C5 => N016885, 
	C6 => N016886, 
	C7 => N016887, 
	COUT => C1_UP, 
	COUT0 => C0_UP
);
U34 : m2_1	PORT MAP(
	D0 => TQ5_DN, 
	D1 => MD5_UP, 
	O => MD5, 
	S0 => L_UP
);
U66 : cy4	PORT MAP(
	A0 => N00679, 
	A1 => N00714, 
	C0 => N017365, 
	C1 => N017366, 
	C2 => N017367, 
	C3 => N017368, 
	C4 => N017369, 
	C5 => N0173610, 
	C6 => N0173611, 
	C7 => N0173612, 
	COUT => C1_DN, 
	COUT0 => C0_DN
);
U35 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD5, 
	Q => N00889
);
U67 : xor2	PORT MAP(
	I0 => C0_UP, 
	I1 => N00714, 
	O => TQ1_UP
);
U68 : xnor2	PORT MAP(
	I0 => C0_DN, 
	I1 => N00714, 
	O => TQ1_DN
);
U36 : fmap	PORT MAP(
	I1 => C3_UP, 
	I2 => D4, 
	I3 => N00819, 
	I4 => L, 
	O => MD4_UP
);
U69 : m2_1	PORT MAP(
	D0 => TQ1_UP, 
	D1 => D1, 
	O => MD1_UP, 
	S0 => L
);
U37 : fmap	PORT MAP(
	I1 => C3_DN, 
	I2 => MD4_UP, 
	I3 => N00819, 
	I4 => L_UP, 
	O => MD4
);
U38 : xnor2	PORT MAP(
	I0 => N00819, 
	I1 => C3_DN, 
	O => TQ4_DN
);
U39 : cy4_18	PORT MAP(
	C0 => N017085, 
	C1 => N017086, 
	C2 => N017087, 
	C3 => N017088, 
	C4 => N017089, 
	C5 => N0170810, 
	C6 => N0170811, 
	C7 => N0170812
);
U70 : m2_1	PORT MAP(
	D0 => TQ1_DN, 
	D1 => MD1_UP, 
	O => MD1, 
	S0 => L_UP
);
U71 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD1, 
	Q => N00714
);
U72 : fmap	PORT MAP(
	I2 => D0, 
	I3 => N00679, 
	I4 => L, 
	O => MD0_UP
);
U40 : cy4_25	PORT MAP(
	C0 => N017440, 
	C1 => N017441, 
	C2 => N017442, 
	C3 => N017443, 
	C4 => N017444, 
	C5 => N017445, 
	C6 => N017446, 
	C7 => N017447
);
U41 : m2_1	PORT MAP(
	D0 => TQ4_DN, 
	D1 => MD4_UP, 
	O => MD4, 
	S0 => L_UP
);
U73 : fmap	PORT MAP(
	I2 => MD0_UP, 
	I3 => N00679, 
	I4 => L_UP, 
	O => MD0
);
U42 : xor2	PORT MAP(
	I0 => N00819, 
	I1 => C3_UP, 
	O => TQ4_UP
);
U74 : cy4_19	PORT MAP(
	C0 => N016880, 
	C1 => N016881, 
	C2 => N016882, 
	C3 => N016883, 
	C4 => N016884, 
	C5 => N016885, 
	C6 => N016886, 
	C7 => N016887
);
U10 : fmap	PORT MAP(
	I1 => C6_DN, 
	I2 => MD7_UP, 
	I3 => N00644, 
	I4 => L_UP, 
	O => MD7
);
U75 : cy4_26	PORT MAP(
	C0 => N017365, 
	C1 => N017366, 
	C2 => N017367, 
	C3 => N017368, 
	C4 => N017369, 
	C5 => N0173610, 
	C6 => N0173611, 
	C7 => N0173612
);
U43 : fdce	PORT MAP(
	C => C, 
	CE => L_CE, 
	CLR => CLR, 
	D => MD4, 
	Q => N00819
);
U11 : cy4	PORT MAP(
	A0 => N00854, 
	A1 => N00644, 
	C0 => N017005, 
	C1 => N017006, 
	C2 => N017007, 
	C3 => N017008, 
	C4 => N017009, 
	C5 => N0170010, 
	C6 => N0170011, 
	C7 => N0170012, 
	CIN => C5_UP, 
	COUT => CO_UP, 
	COUT0 => C6_UP
);
U12 : cy4	PORT MAP(
	A0 => N00854, 
	A1 => N00644, 
	C0 => N017480, 
	C1 => N017481, 
	C2 => N017482, 
	C3 => N017483, 
	C4 => N017484, 
	C5 => N017485, 
	C6 => N017486, 
	C7 => N017487, 
	CIN => C5_DN, 
	COUT => CO_DN, 
	COUT0 => C6_DN
);
U76 : inv	PORT MAP(
	I => N00679, 
	O => TQ0_UP
);
U44 : m2_1	PORT MAP(
	D0 => TQ4_UP, 
	D1 => D4, 
	O => MD4_UP, 
	S0 => L
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB4CLED IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	UP : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB4CLED;



ARCHITECTURE STRUCTURE OF CB4CLED IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N02026 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL T3_UP : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00074;
Q0<=N00020;
Q1<=N00032;
Q2<=N00047;
Q3<=N00064;
U15 : AND3	PORT MAP(
	I0 => N00047, 
	I1 => N00032, 
	I2 => N00020, 
	O => T3_UP
);
U16 : AND3B3	PORT MAP(
	I0 => N00047, 
	I1 => N00032, 
	I2 => N00020, 
	O => T3_DN
);
U1 : VCC	PORT MAP(
	P => N00021
);
U50 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00074, 
	O => CEO
);
U3 : AND2B2	PORT MAP(
	I0 => N00032, 
	I1 => N00020, 
	O => T2_DN
);
U51 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N02026, 
	O => N00074
);
U37 : AND2	PORT MAP(
	I0 => N00032, 
	I1 => N00020, 
	O => T2_UP
);
U10 : AND4	PORT MAP(
	I0 => N00064, 
	I1 => N00047, 
	I2 => N00032, 
	I3 => N00020, 
	O => TC_UP
);
U11 : AND4B4	PORT MAP(
	I0 => N00064, 
	I1 => N00047, 
	I2 => N00032, 
	I3 => N00020, 
	O => TC_DN
);
U34 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00032, 
	CLR => CLR
);
U25 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
U6 : M2_1	PORT MAP(
	D0 => T2_DN, 
	D1 => T2_UP, 
	S0 => UP, 
	O => T2
);
U26 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N02026
);
U17 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00064, 
	CLR => CLR
);
U18 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00047, 
	CLR => CLR
);
U31 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00021, 
	CE => CE, 
	C => C, 
	Q => N00020, 
	CLR => CLR
);
U32 : M2_1B1	PORT MAP(
	D0 => N00020, 
	D1 => N00020, 
	S0 => UP, 
	O => T1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CB2CLED IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	UP : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB2CLED;



ARCHITECTURE STRUCTURE OF CB2CLED IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FTCLE	 PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00012 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00721 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00032;
Q0<=N00012;
Q1<=N00024;
U7 : VCC	PORT MAP(
	P => N00013
);
U33 : AND2B2	PORT MAP(
	I0 => N00024, 
	I1 => N00012, 
	O => TC_DN
);
U36 : AND2	PORT MAP(
	I0 => N00024, 
	I1 => N00012, 
	O => TC_UP
);
U39 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00032, 
	O => CEO
);
U40 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00721, 
	O => N00032
);
U34 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N00721
);
U35 : M2_1B1	PORT MAP(
	D0 => N00012, 
	D1 => N00012, 
	S0 => UP, 
	O => T1
);
U6 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00024, 
	CLR => CLR
);
U8 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00013, 
	CE => CE, 
	C => C, 
	Q => N00012, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FTCLEX IS PORT (
	D :  IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q  : OUT std_logic
); END FTCLEX;


ARCHITECTURE STRUCTURE OF FTCLEX IS

-- COMPONENTS

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL TQ : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL MD : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U1 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);

U4 : FDCE	PORT MAP(
	D => MD, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00006
);
U2 : M2_1	PORT MAP(
	D0 => TQ, 
	D1 => D, 
	S0 => L, 
	O => MD
);
END STRUCTURE;

