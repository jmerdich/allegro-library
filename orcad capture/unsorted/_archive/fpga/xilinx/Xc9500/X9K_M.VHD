--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--					VHDL Macro Simulation Library for Xilinx XC9500 EPLDs
-- File:			X9K_M.VHD
-- Date:			August 5, 1997
-- Version:		v7.10
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96
--	Modified by:	| Date:			| Changes Made: 
--	Kathy Horvath	|06/17/98		| Removed the follwing components: ADSU16x1, ADSU16x2.
--	Kathy Horvath	|06/07/98		| Added the following components: bufce, buffoe 
--***************************************************************************
-- XILINX XC9000 MACRO SIMULATION MODELS

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD4X1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CE : IN std_logic
); END IFD4X1;



ARCHITECTURE STRUCTURE OF IFD4X1 IS

-- COMPONENTS

COMPONENT IFDX1	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : IFDX1	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2, 
	CE => CE
);
U4 : IFDX1	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3, 
	CE => CE
);
U1 : IFDX1	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0, 
	CE => CE
);
U2 : IFDX1	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD8X1 IS PORT (
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
	Q7 : OUT std_logic;
	CE : IN std_logic
); END IFD8X1;



ARCHITECTURE STRUCTURE OF IFD8X1 IS

-- COMPONENTS

COMPONENT IFDX1	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : IFDX1	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2, 
	CE => CE
);
U4 : IFDX1	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3, 
	CE => CE
);
U5 : IFDX1	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4, 
	CE => CE
);
U6 : IFDX1	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5, 
	CE => CE
);
U7 : IFDX1	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6, 
	CE => CE
);
U8 : IFDX1	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7, 
	CE => CE
);
U1 : IFDX1	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0, 
	CE => CE
);
U2 : IFDX1	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD16X1 IS PORT (
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
	Q15 : OUT std_logic;
	CE : IN std_logic
); END IFD16X1;



ARCHITECTURE STRUCTURE OF IFD16X1 IS

-- COMPONENTS

COMPONENT IFDX1	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : IFDX1	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2, 
	CE => CE
);
U11 : IFDX1	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10, 
	CE => CE
);
U12 : IFDX1	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11, 
	CE => CE
);
U4 : IFDX1	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3, 
	CE => CE
);
U13 : IFDX1	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12, 
	CE => CE
);
U5 : IFDX1	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4, 
	CE => CE
);
U14 : IFDX1	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13, 
	CE => CE
);
U6 : IFDX1	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5, 
	CE => CE
);
U15 : IFDX1	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14, 
	CE => CE
);
U7 : IFDX1	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6, 
	CE => CE
);
U8 : IFDX1	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7, 
	CE => CE
);
U16 : IFDX1	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15, 
	CE => CE
);
U9 : IFDX1	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8, 
	CE => CE
);
U1 : IFDX1	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0, 
	CE => CE
);
U10 : IFDX1	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9, 
	CE => CE
);
U2 : IFDX1	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4B3
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00125 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00012;
Q1<=N00011;
Q2<=N00010;
Q3<=N00009;
U45 : INV	PORT MAP(
	O => N00109, 
	I => N00011
);
U46 : INV	PORT MAP(
	O => N00114, 
	I => N00009
);
U14 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00007, 
	I2 => N00003, 
	I3 => N00012, 
	O => N00034
);
U47 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00007, 
	I2 => N00003, 
	I3 => N00010, 
	O => N00110
);
U15 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D0, 
	I2 => N00007, 
	O => N00041
);
U16 : INV	PORT MAP(
	O => N00045, 
	I => N00007
);
U48 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D2, 
	I2 => N00007, 
	O => N00121
);
U49 : INV	PORT MAP(
	O => N00125, 
	I => N00007
);
U17 : AND6	PORT MAP(
	I0 => N00053, 
	I1 => N00051, 
	I2 => N00012, 
	I3 => N00047, 
	I4 => N00045, 
	I5 => N00003, 
	O => N00048
);
U18 : INV	PORT MAP(
	O => N00047, 
	I => R
);
U19 : INV	PORT MAP(
	O => N00051, 
	I => N00011
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U50 : AND7	PORT MAP(
	I0 => N00133, 
	I1 => N00010, 
	I2 => N00011, 
	I3 => N00012, 
	I4 => N00127, 
	I5 => N00125, 
	I6 => N00003, 
	O => N00129
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00008, 
	O => N00007
);
U51 : INV	PORT MAP(
	O => N00127, 
	I => R
);
U4 : GND	PORT MAP(
	G => N00008
);
U52 : INV	PORT MAP(
	O => N00133, 
	I => N00009
);
U20 : INV	PORT MAP(
	O => N00053, 
	I => N00009
);
U5 : INV	PORT MAP(
	O => N00015, 
	I => N00007
);
U53 : INV	PORT MAP(
	O => N00136, 
	I => N00007
);
U21 : INV	PORT MAP(
	O => N00056, 
	I => N00007
);
U6 : AND6	PORT MAP(
	I0 => N00024, 
	I1 => N00022, 
	I2 => N00020, 
	I3 => N00017, 
	I4 => N00015, 
	I5 => N00003, 
	O => N00018
);
U54 : AND7	PORT MAP(
	I0 => N00009, 
	I1 => N00144, 
	I2 => N00142, 
	I3 => N00140, 
	I4 => N00138, 
	I5 => N00136, 
	I6 => N00003, 
	O => N00146
);
U7 : INV	PORT MAP(
	O => N00017, 
	I => R
);
U22 : AND6	PORT MAP(
	I0 => N00063, 
	I1 => N00011, 
	I2 => N00060, 
	I3 => N00058, 
	I4 => N00056, 
	I5 => N00003, 
	O => N00064
);
U55 : INV	PORT MAP(
	O => N00138, 
	I => R
);
U23 : INV	PORT MAP(
	O => N00058, 
	I => R
);
U8 : INV	PORT MAP(
	O => N00020, 
	I => N00012
);
U56 : INV	PORT MAP(
	O => N00140, 
	I => N00012
);
U24 : INV	PORT MAP(
	O => N00060, 
	I => N00012
);
U9 : INV	PORT MAP(
	O => N00022, 
	I => N00011
);
U57 : INV	PORT MAP(
	O => N00142, 
	I => N00011
);
U25 : OR4	PORT MAP(
	I3 => N00048, 
	I2 => N00064, 
	I1 => N00068, 
	I0 => N00075, 
	O => N00065
);
U58 : INV	PORT MAP(
	O => N00144, 
	I => N00010
);
U26 : INV	PORT MAP(
	O => N00063, 
	I => N00009
);
U59 : OR4	PORT MAP(
	I3 => N00129, 
	I2 => N00146, 
	I1 => N00150, 
	I0 => N00157, 
	O => N00147
);
U28 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00007, 
	I2 => N00003, 
	I3 => N00011, 
	O => N00068
);
U29 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D1, 
	I2 => N00007, 
	O => N00075
);
U61 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00007, 
	I2 => N00003, 
	I3 => N00009, 
	O => N00150
);
U30 : INV	PORT MAP(
	O => N00079, 
	I => N00007
);
U62 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D3, 
	I2 => N00007, 
	O => N00157
);
U31 : AND7	PORT MAP(
	I0 => N00088, 
	I1 => N00086, 
	I2 => N00011, 
	I3 => N00012, 
	I4 => N00081, 
	I5 => N00079, 
	I6 => N00003, 
	O => N00083
);
U63 : AND5B2	PORT MAP(
	I0 => N00010, 
	I1 => N00011, 
	I2 => N00009, 
	I3 => N00012, 
	I4 => N00003, 
	O => CEO
);
U32 : INV	PORT MAP(
	O => N00081, 
	I => R
);
U64 : AND4B2	PORT MAP(
	I0 => N00010, 
	I1 => N00011, 
	I2 => N00009, 
	I3 => N00012, 
	O => TC
);
U33 : INV	PORT MAP(
	O => N00086, 
	I => N00010
);
U34 : INV	PORT MAP(
	O => N00088, 
	I => N00009
);
U35 : INV	PORT MAP(
	O => N00091, 
	I => N00007
);
U36 : AND6	PORT MAP(
	I0 => N00098, 
	I1 => N00010, 
	I2 => N00095, 
	I3 => N00093, 
	I4 => N00091, 
	I5 => N00003, 
	O => N00104
);
U37 : INV	PORT MAP(
	O => N00093, 
	I => R
);
U38 : INV	PORT MAP(
	O => N00095, 
	I => N00012
);
U39 : INV	PORT MAP(
	O => N00098, 
	I => N00009
);
U40 : INV	PORT MAP(
	O => N00101, 
	I => N00007
);
U41 : AND6	PORT MAP(
	I0 => N00114, 
	I1 => N00010, 
	I2 => N00109, 
	I3 => N00103, 
	I4 => N00101, 
	I5 => N00003, 
	O => N00105
);
U10 : INV	PORT MAP(
	O => N00024, 
	I => N00010
);
U42 : OR5	PORT MAP(
	I4 => N00083, 
	I3 => N00104, 
	I2 => N00105, 
	I1 => N00110, 
	I0 => N00121, 
	O => N00106
);
U43 : INV	PORT MAP(
	O => N00103, 
	I => R
);
U11 : AND5B4	PORT MAP(
	I0 => N00009, 
	I1 => N00012, 
	I2 => R, 
	I3 => N00007, 
	I4 => N00003, 
	O => N00030
);
U12 : OR4	PORT MAP(
	I3 => N00018, 
	I2 => N00030, 
	I1 => N00034, 
	I0 => N00041, 
	O => N00031
);
U44 : FD	PORT MAP(
	D => N00106, 
	C => C, 
	Q => N00010
);
U13 : FD	PORT MAP(
	D => N00031, 
	C => C, 
	Q => N00012
);
U27 : FD	PORT MAP(
	D => N00065, 
	C => C, 
	Q => N00011
);
U60 : FD	PORT MAP(
	D => N00147, 
	C => C, 
	Q => N00009
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2CLE	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00019, 
	I1 => N00008, 
	O => TC
);
U1 : CB2CLE	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	L => L, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2CLE	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	L => L, 
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => CEO, 
	TC => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB2RLE IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB2RLE;



ARCHITECTURE STRUCTURE OF CB2RLE IS

-- COMPONENTS

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT AND3B2
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00012;
U13 : AND4B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00014, 
	I3 => N00003, 
	O => N00035
);
U14 : OR2	PORT MAP(
	I1 => N00035, 
	I0 => N00036, 
	O => N00040
);
U15 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => D1, 
	O => N00036
);
U16 : AND2	PORT MAP(
	I0 => N00012, 
	I1 => N00014, 
	O => TC
);
U17 : XOR2	PORT MAP(
	I1 => N00040, 
	I0 => N00045, 
	O => N00043
);
U19 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00012, 
	O => N00045
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : OR2	PORT MAP(
	I1 => R, 
	I0 => N00007, 
	O => N00009
);
U5 : AND3	PORT MAP(
	I0 => N00014, 
	I1 => N00012, 
	I2 => N00003, 
	O => CEO
);
U6 : GND	PORT MAP(
	G => N00007
);
U7 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00018
);
U8 : OR2	PORT MAP(
	I1 => N00018, 
	I0 => N00019, 
	O => N00023
);
U9 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => D0, 
	O => N00019
);
U10 : XOR2	PORT MAP(
	I1 => N00023, 
	I0 => N00026, 
	O => N00024
);
U12 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00014, 
	O => N00026
);
U11 : FD	PORT MAP(
	D => N00024, 
	C => C, 
	Q => N00014
);
U18 : FD	PORT MAP(
	D => N00043, 
	C => C, 
	Q => N00012
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB8CLED	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00044 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00044, 
	I1 => N00020, 
	O => TC
);
U1 : CB8CLED	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	UP => UP, 
	L => L, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7, 
	CEO => N00018, 
	TC => N00020
);
U2 : CB8CLED	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	UP => UP, 
	L => L, 
	CE => N00018, 
	C => C, 
	CLR => CLR, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15, 
	CEO => CEO, 
	TC => N00044
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OR4	PORT MAP(
	I3 => A, 
	I2 => B, 
	I1 => C, 
	I0 => D, 
	O => Y0
);
U2 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y1
);
U3 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => A, 
	I3 => B, 
	O => Y2
);
U4 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y3
);
U5 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => A, 
	I3 => C, 
	O => Y4
);
U6 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => C, 
	I3 => A, 
	O => Y5
);
U7 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => A, 
	I2 => C, 
	I3 => B, 
	O => Y6
);
U8 : NAND4B1	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y7
);
U9 : NAND4B3	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => D, 
	O => Y8
);
U10 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => D, 
	O => Y9
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
SIGNAL MCI : std_logic;
SIGNAL MQA : std_logic;
SIGNAL MAR : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL MQB : std_logic;
SIGNAL MBI : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL MD : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL MA : std_logic;
SIGNAL MC : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL MQD : std_logic;
SIGNAL MDI : std_logic;
SIGNAL MQC : std_logic;
SIGNAL MB : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00002;
QB<=N00005;
QC<=N00021;
QD<=N00037;
U17 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U3 : FDC	PORT MAP(
	D => MA, 
	C => CK, 
	CLR => CLRB, 
	Q => N00002
);
U11 : FDC	PORT MAP(
	D => MC, 
	C => CK, 
	CLR => CLRB, 
	Q => N00021
);
U12 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => C, 
	S0 => S1, 
	O => MQC
);
U4 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => A, 
	S0 => S1, 
	O => MQA
);
U13 : M2_1	PORT MAP(
	D0 => N00037, 
	D1 => SLI, 
	S0 => S1, 
	O => MDI
);
U5 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => N00021, 
	S0 => S1, 
	O => MBI
);
U14 : M2_1	PORT MAP(
	D0 => MDI, 
	D1 => MQD, 
	S0 => S0, 
	O => MD
);
U6 : M2_1	PORT MAP(
	D0 => MBI, 
	D1 => MQB, 
	S0 => S0, 
	O => MB
);
U7 : FDC	PORT MAP(
	D => MB, 
	C => CK, 
	CLR => CLRB, 
	Q => N00005
);
U15 : FDC	PORT MAP(
	D => MD, 
	C => CK, 
	CLR => CLRB, 
	Q => N00037
);
U16 : M2_1	PORT MAP(
	D0 => N00021, 
	D1 => D, 
	S0 => S1, 
	O => MQD
);
U8 : M2_1	PORT MAP(
	D0 => N00002, 
	D1 => B, 
	S0 => S1, 
	O => MQB
);
U9 : M2_1	PORT MAP(
	D0 => N00021, 
	D1 => N00037, 
	S0 => S1, 
	O => MCI
);
U1 : M2_1	PORT MAP(
	D0 => N00002, 
	D1 => N00005, 
	S0 => S1, 
	O => MAR
);
U10 : M2_1	PORT MAP(
	D0 => MCI, 
	D1 => MQC, 
	S0 => S0, 
	O => MC
);
U2 : M2_1	PORT MAP(
	D0 => MAR, 
	D1 => MQA, 
	S0 => S0, 
	O => MA
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

COMPONENT XOR2
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00010 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00012;
QB<=N00010;
QC<=N00009;
QD<=N00008;
U13 : XOR2	PORT MAP(
	I1 => N00036, 
	I0 => N00046, 
	O => N00039
);
U15 : AND2	PORT MAP(
	I0 => N00010, 
	I1 => N00003, 
	O => N00043
);
U16 : OR2	PORT MAP(
	I1 => N00043, 
	I0 => N00048, 
	O => N00046
);
U17 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => B, 
	O => N00048
);
U18 : AND5	PORT MAP(
	I0 => N00010, 
	I1 => N00012, 
	I2 => N00013, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00053
);
U19 : XOR2	PORT MAP(
	I1 => N00053, 
	I0 => N00063, 
	O => N00056
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => LOAD, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => N00002, 
	O => N00006
);
U4 : AND2	PORT MAP(
	I0 => ENP, 
	I1 => N00002, 
	O => N00013
);
U5 : AND3	PORT MAP(
	I0 => N00013, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00017
);
U6 : AND5	PORT MAP(
	I0 => N00012, 
	I1 => N00010, 
	I2 => N00009, 
	I3 => N00008, 
	I4 => N00006, 
	O => RCO
);
U21 : AND2	PORT MAP(
	I0 => N00009, 
	I1 => N00003, 
	O => N00060
);
U22 : OR2	PORT MAP(
	I1 => N00060, 
	I0 => N00066, 
	O => N00063
);
U7 : XOR2	PORT MAP(
	I1 => N00017, 
	I0 => N00030, 
	O => N00023
);
U23 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => C, 
	O => N00066
);
U9 : AND2	PORT MAP(
	I0 => N00012, 
	I1 => N00003, 
	O => N00027
);
U24 : AND6	PORT MAP(
	I0 => N00009, 
	I1 => N00010, 
	I2 => N00012, 
	I3 => N00013, 
	I4 => N00006, 
	I5 => N00003, 
	O => N00071
);
U25 : XOR2	PORT MAP(
	I1 => N00071, 
	I0 => N00082, 
	O => N00075
);
U27 : AND2	PORT MAP(
	I0 => N00003, 
	I1 => N00008, 
	O => N00079
);
U28 : OR2	PORT MAP(
	I1 => N00079, 
	I0 => N00084, 
	O => N00082
);
U29 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => D, 
	O => N00084
);
U30 : INV	PORT MAP(
	O => N00029, 
	I => CLR
);
U10 : OR2	PORT MAP(
	I1 => N00027, 
	I0 => N00032, 
	O => N00030
);
U11 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => A, 
	O => N00032
);
U12 : AND4	PORT MAP(
	I0 => N00012, 
	I1 => N00013, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00036
);
U14 : FDC	PORT MAP(
	D => N00039, 
	C => CK, 
	CLR => N00029, 
	Q => N00010
);
U26 : FDC	PORT MAP(
	D => N00075, 
	C => CK, 
	CLR => N00029, 
	Q => N00008
);
U8 : FDC	PORT MAP(
	D => N00023, 
	C => CK, 
	CLR => N00029, 
	Q => N00012
);
U20 : FDC	PORT MAP(
	D => N00056, 
	C => CK, 
	CLR => N00029, 
	Q => N00009
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FJKCP IS PORT (
	J : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	K : IN std_logic
); END FJKCP;



ARCHITECTURE STRUCTURE OF FJKCP IS

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

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00010 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => J, 
	O => N00006
);
U2 : OR2	PORT MAP(
	I1 => N00006, 
	I0 => N00010, 
	O => N00008
);
U3 : FDCP	PORT MAP(
	D => N00008, 
	C => C, 
	PRE => PRE, 
	Q => N00002, 
	CLR => CLR
);
U4 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => N00002, 
	O => N00010
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => N00004
);
U2 : OR2	PORT MAP(
	I1 => N00004, 
	I0 => N00007, 
	O => N00005
);
U4 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => S, 
	O => N00007
);
U3 : FD	PORT MAP(
	D => N00005, 
	C => C, 
	Q => Q
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
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => N00004
);
U2 : FD	PORT MAP(
	D => N00004, 
	C => C, 
	Q => Q
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
SIGNAL N00022 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL Q4B : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00010;
Q2<=N00016;
Q3<=N00022;
Q4<=N00002;
U1 : INV	PORT MAP(
	O => Q4B, 
	I => N00002
);
U3 : FDRE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00010
);
U4 : FDRE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00016
);
U5 : FDRE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00022
);
U6 : FDRE	PORT MAP(
	D => N00022, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00002
);
U2 : FDRE	PORT MAP(
	D => Q4B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB16X1 IS PORT (
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
	CEU : IN std_logic;
	CED : IN std_logic;
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
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END CB16X1;



ARCHITECTURE STRUCTURE OF CB16X1 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB8X1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
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
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00047 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00022 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00045, 
	I1 => N00018, 
	O => TCU
);
U4 : AND2	PORT MAP(
	I0 => N00047, 
	I1 => N00020, 
	O => TCD
);
U1 : CB8X1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	CEU => CEU, 
	CED => CED, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7, 
	TCU => N00018, 
	L => L, 
	TCD => N00020, 
	CEOU => N00022, 
	CEOD => N00024
);
U2 : CB8X1	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	CEU => N00022, 
	CED => N00024, 
	C => C, 
	CLR => CLR, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15, 
	TCU => N00045, 
	L => L, 
	TCD => N00047, 
	CEOU => CEOU, 
	CEOD => CEOD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD4X1 IS PORT (
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
	CO : OUT std_logic
); END ADD4X1;



ARCHITECTURE STRUCTURE OF ADD4X1 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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

COMPONENT XOR2
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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
SIGNAL N00029 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : OR3	PORT MAP(
	I2 => N00039, 
	I1 => N00044, 
	I0 => N00047, 
	O => N00045
);
U14 : AND4	PORT MAP(
	I0 => N00018, 
	I1 => N00032, 
	I2 => B0, 
	I3 => A0, 
	O => N00047
);
U15 : XOR2	PORT MAP(
	I1 => N00045, 
	I0 => N00036, 
	O => S3
);
U16 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00054
);
U17 : AND3	PORT MAP(
	I0 => N00036, 
	I1 => A2, 
	I2 => B2, 
	O => N00058
);
U18 : AND4	PORT MAP(
	I0 => N00036, 
	I1 => N00032, 
	I2 => B1, 
	I3 => A1, 
	O => N00065
);
U19 : OR4	PORT MAP(
	I3 => N00054, 
	I2 => N00058, 
	I1 => N00065, 
	I0 => N00067, 
	O => CO
);
U1 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00014
);
U2 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => S0
);
U3 : XOR2	PORT MAP(
	I1 => N00014, 
	I0 => N00018, 
	O => S1
);
U4 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00025
);
U20 : AND5	PORT MAP(
	I0 => N00036, 
	I1 => N00032, 
	I2 => N00018, 
	I3 => B0, 
	I4 => A0, 
	O => N00067
);
U5 : XOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00018
);
U6 : AND3	PORT MAP(
	I0 => N00018, 
	I1 => B0, 
	I2 => A0, 
	O => N00029
);
U7 : OR2	PORT MAP(
	I1 => N00025, 
	I0 => N00029, 
	O => N00027
);
U8 : XOR2	PORT MAP(
	I1 => N00027, 
	I0 => N00032, 
	O => S2
);
U9 : XOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00032
);
U10 : XOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00036
);
U11 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00039
);
U12 : AND3	PORT MAP(
	I0 => N00032, 
	I1 => B1, 
	I2 => A1, 
	O => N00044
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC4X1 IS PORT (
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
	R : IN std_logic
); END ACC4X1;



ARCHITECTURE STRUCTURE OF ACC4X1 IS

-- COMPONENTS

COMPONENT OR2
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT AND3B2
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00080 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00195 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00164 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00022;
Q1<=N00021;
Q2<=N00020;
Q3<=N00019;
U13 : OR2	PORT MAP(
	I1 => N00032, 
	I0 => N00042, 
	O => N00028
);
U45 : XNOR2	PORT MAP(
	I1 => B2, 
	I0 => N00006, 
	O => N00097
);
U46 : AND3	PORT MAP(
	I0 => N00146, 
	I1 => N00019, 
	I2 => N00017, 
	O => N00145
);
U14 : XOR2	PORT MAP(
	I1 => N00027, 
	I0 => N00033, 
	O => N00038
);
U15 : AND4B2	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => N00040, 
	I3 => N00003, 
	O => N00042
);
U47 : AND3B2	PORT MAP(
	I0 => N00013, 
	I1 => N00010, 
	I2 => N00019, 
	O => N00149
);
U48 : AND4	PORT MAP(
	I0 => N00097, 
	I1 => N00020, 
	I2 => N00152, 
	I3 => N00017, 
	O => N00154
);
U49 : XOR2	PORT MAP(
	I1 => N00149, 
	I0 => N00155, 
	O => N00152
);
U17 : AND3	PORT MAP(
	I0 => N00040, 
	I1 => N00022, 
	I2 => N00017, 
	O => N00044
);
U18 : OR2	PORT MAP(
	I1 => N00044, 
	I0 => N00053, 
	O => N00049
);
U19 : AND3	PORT MAP(
	I0 => N00027, 
	I1 => N00017, 
	I2 => N00007, 
	O => N00053
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U50 : AND3B1	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => D3, 
	O => N00160
);
U3 : AND2	PORT MAP(
	I0 => ADD, 
	I1 => N00002, 
	O => N00006
);
U51 : XOR2	PORT MAP(
	I1 => N00152, 
	I0 => N00115, 
	O => N00164
);
U4 : INV	PORT MAP(
	O => N00007, 
	I => N00006
);
U52 : OR2	PORT MAP(
	I1 => N00160, 
	I0 => N00176, 
	O => N00155
);
U20 : XNOR2	PORT MAP(
	I1 => B0, 
	I0 => N00006, 
	O => N00040
);
U5 : OR2	PORT MAP(
	I1 => R, 
	I0 => N00011, 
	O => N00010
);
U21 : AND3	PORT MAP(
	I0 => N00062, 
	I1 => N00021, 
	I2 => N00017, 
	O => N00061
);
U53 : AND5	PORT MAP(
	I0 => N00062, 
	I1 => N00021, 
	I2 => N00152, 
	I3 => N00099, 
	I4 => N00017, 
	O => N00170
);
U6 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00011, 
	O => N00013
);
U7 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => N00003, 
	O => N00017
);
U22 : AND3B2	PORT MAP(
	I0 => N00013, 
	I1 => N00010, 
	I2 => N00021, 
	O => N00065
);
U54 : OR5	PORT MAP(
	I4 => N00145, 
	I3 => N00154, 
	I2 => N00170, 
	I1 => N00175, 
	I0 => N00195, 
	O => CO
);
U8 : GND	PORT MAP(
	G => N00011
);
U23 : XOR2	PORT MAP(
	I1 => N00066, 
	I0 => N00049, 
	O => N00069
);
U24 : XOR2	PORT MAP(
	I1 => N00065, 
	I0 => N00072, 
	O => N00066
);
U9 : AND3B2	PORT MAP(
	I0 => N00013, 
	I1 => N00010, 
	I2 => N00022, 
	O => N00025
);
U56 : AND4B2	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => N00146, 
	I3 => N00003, 
	O => N00176
);
U25 : AND4	PORT MAP(
	I0 => N00040, 
	I1 => N00022, 
	I2 => N00066, 
	I3 => N00017, 
	O => N00073
);
U57 : AND6	PORT MAP(
	I0 => N00040, 
	I1 => N00022, 
	I2 => N00152, 
	I3 => N00099, 
	I4 => N00066, 
	I5 => N00017, 
	O => N00175
);
U58 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => N00006, 
	O => N00146
);
U59 : AND6	PORT MAP(
	I0 => N00007, 
	I1 => N00152, 
	I2 => N00099, 
	I3 => N00066, 
	I4 => N00027, 
	I5 => N00017, 
	O => N00195
);
U27 : OR3	PORT MAP(
	I2 => N00061, 
	I1 => N00073, 
	I0 => N00078, 
	O => N00074
);
U28 : AND3B1	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => D1, 
	O => N00080
);
U29 : OR2	PORT MAP(
	I1 => N00080, 
	I0 => N00087, 
	O => N00072
);
U30 : AND4	PORT MAP(
	I0 => N00066, 
	I1 => N00027, 
	I2 => N00017, 
	I3 => N00007, 
	O => N00078
);
U31 : AND4B2	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => N00062, 
	I3 => N00003, 
	O => N00087
);
U32 : AND3	PORT MAP(
	I0 => N00097, 
	I1 => N00020, 
	I2 => N00017, 
	O => N00096
);
U33 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => N00006, 
	O => N00062
);
U34 : XOR2	PORT MAP(
	I1 => N00099, 
	I0 => N00074, 
	O => N00102
);
U35 : AND4	PORT MAP(
	I0 => N00062, 
	I1 => N00021, 
	I2 => N00099, 
	I3 => N00017, 
	O => N00106
);
U37 : AND3B2	PORT MAP(
	I0 => N00013, 
	I1 => N00010, 
	I2 => N00020, 
	O => N00109
);
U38 : OR4	PORT MAP(
	I3 => N00096, 
	I2 => N00106, 
	I1 => N00117, 
	I0 => N00136, 
	O => N00115
);
U39 : XOR2	PORT MAP(
	I1 => N00109, 
	I0 => N00116, 
	O => N00099
);
U40 : AND3B1	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => D2, 
	O => N00121
);
U41 : AND5	PORT MAP(
	I0 => N00040, 
	I1 => N00022, 
	I2 => N00099, 
	I3 => N00066, 
	I4 => N00017, 
	O => N00117
);
U10 : XOR2	PORT MAP(
	I1 => N00025, 
	I0 => N00028, 
	O => N00027
);
U42 : OR2	PORT MAP(
	I1 => N00121, 
	I0 => N00130, 
	O => N00116
);
U11 : AND3B1	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => D0, 
	O => N00032
);
U43 : AND4B2	PORT MAP(
	I0 => N00010, 
	I1 => N00013, 
	I2 => N00097, 
	I3 => N00003, 
	O => N00130
);
U12 : AND2	PORT MAP(
	I0 => N00017, 
	I1 => N00007, 
	O => N00033
);
U44 : AND5	PORT MAP(
	I0 => N00099, 
	I1 => N00066, 
	I2 => N00027, 
	I3 => N00017, 
	I4 => N00007, 
	O => N00136
);
U55 : FD	PORT MAP(
	D => N00164, 
	C => C, 
	Q => N00019
);
U36 : FD	PORT MAP(
	D => N00102, 
	C => C, 
	Q => N00020
);
U26 : FD	PORT MAP(
	D => N00069, 
	C => C, 
	Q => N00021
);
U16 : FD	PORT MAP(
	D => N00038, 
	C => C, 
	Q => N00022
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
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
SIGNAL N00026 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL MD3 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00008;
Q1<=N00017;
Q2<=N00026;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U3 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U4 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U5 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U6 : M2_1	PORT MAP(
	D0 => N00017, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U7 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00026
);
U8 : M2_1	PORT MAP(
	D0 => N00026, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U9 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
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
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OBUFT	PORT MAP(
	T => T, 
	I => N00004, 
	O => O
);
U2 : FD	PORT MAP(
	D => D, 
	C => C, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FDCPE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END FDCPE;



ARCHITECTURE STRUCTURE OF FDCPE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : VCC	PORT MAP(
	P => N00004
);
U2 : AND2B1	PORT MAP(
	I0 => N00005, 
	I1 => N00002, 
	O => N00008
);
U3 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00004, 
	O => N00005
);
U4 : OR2	PORT MAP(
	I1 => N00008, 
	I0 => N00011, 
	O => N00009
);
U5 : FDCP	PORT MAP(
	D => N00009, 
	C => C, 
	PRE => PRE, 
	Q => N00002, 
	CLR => CLR
);
U6 : AND2	PORT MAP(
	I0 => D, 
	I1 => N00005, 
	O => N00011
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
U3 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
U4 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U1 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q0
);
U2 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q1
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

COMPONENT OR2B1
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00042 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00027 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => N00027
);
U14 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00030
);
U15 : AND2	PORT MAP(
	I0 => N00036, 
	I1 => N00030, 
	O => N00033
);
U16 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00036
);
U17 : OR2	PORT MAP(
	I1 => N00033, 
	I0 => N00042, 
	O => N00039
);
U18 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00042
);
U19 : AND2	PORT MAP(
	I0 => N00048, 
	I1 => N00039, 
	O => N00044
);
U1 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => N00003
);
U2 : AND2	PORT MAP(
	I0 => N00007, 
	I1 => N00003, 
	O => N00005
);
U3 : OR2B1	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => N00007
);
U4 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00011, 
	O => N00009
);
U20 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00048
);
U5 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => N00011
);
U21 : OR2	PORT MAP(
	I1 => N00044, 
	I0 => N00054, 
	O => N00051
);
U6 : AND2	PORT MAP(
	I0 => N00015, 
	I1 => N00009, 
	O => N00013
);
U7 : OR2B1	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => N00015
);
U22 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00054
);
U23 : AND2	PORT MAP(
	I0 => N00060, 
	I1 => N00051, 
	O => N00057
);
U8 : OR2	PORT MAP(
	I1 => N00013, 
	I0 => N00019, 
	O => N00017
);
U24 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00060
);
U9 : AND2B1	PORT MAP(
	I0 => A2, 
	I1 => B2, 
	O => N00019
);
U25 : OR2	PORT MAP(
	I1 => N00057, 
	I0 => N00066, 
	O => GT
);
U26 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00066
);
U10 : AND2	PORT MAP(
	I0 => N00023, 
	I1 => N00017, 
	O => N00021
);
U11 : OR2B1	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => N00023
);
U12 : OR2	PORT MAP(
	I1 => N00021, 
	I0 => N00027, 
	O => LT
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB3 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB1 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
U2 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U3 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => AB03
);
U4 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U5 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U6 : AND2	PORT MAP(
	I0 => AB47, 
	I1 => AB03, 
	O => EQ
);
U7 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => AB4
);
U8 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => AB5
);
U9 : AND4	PORT MAP(
	I0 => AB7, 
	I1 => AB6, 
	I2 => AB5, 
	I3 => AB4, 
	O => AB47
);
U10 : XNOR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => AB6
);
U11 : XNOR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => AB7
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

COMPONENT NAND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL E2_3 : std_logic;
SIGNAL E4_5 : std_logic;
SIGNAL X4 : std_logic;
SIGNAL X0 : std_logic;
SIGNAL E6_7 : std_logic;
SIGNAL X1 : std_logic;
SIGNAL GB : std_logic;
SIGNAL E0_1 : std_logic;
SIGNAL X6 : std_logic;
SIGNAL X2 : std_logic;
SIGNAL X3 : std_logic;
SIGNAL X5 : std_logic;
SIGNAL X7 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : NAND5	PORT MAP(
	I0 => E6_7, 
	I1 => E4_5, 
	I2 => GB, 
	I3 => E2_3, 
	I4 => E0_1, 
	O => PEQ
);
U14 : INV	PORT MAP(
	O => GB, 
	I => G
);
U1 : XNOR2	PORT MAP(
	I1 => P0, 
	I0 => Q0, 
	O => X0
);
U2 : XNOR2	PORT MAP(
	I1 => P1, 
	I0 => Q1, 
	O => X1
);
U3 : XNOR2	PORT MAP(
	I1 => P2, 
	I0 => Q2, 
	O => X2
);
U4 : XNOR2	PORT MAP(
	I1 => P3, 
	I0 => Q3, 
	O => X3
);
U5 : XNOR2	PORT MAP(
	I1 => P4, 
	I0 => Q4, 
	O => X4
);
U6 : XNOR2	PORT MAP(
	I1 => P5, 
	I0 => Q5, 
	O => X5
);
U7 : XNOR2	PORT MAP(
	I1 => P6, 
	I0 => Q6, 
	O => X6
);
U8 : XNOR2	PORT MAP(
	I1 => P7, 
	I0 => Q7, 
	O => X7
);
U9 : AND2	PORT MAP(
	I0 => X1, 
	I1 => X0, 
	O => E0_1
);
U10 : AND2	PORT MAP(
	I0 => X3, 
	I1 => X2, 
	O => E2_3
);
U11 : AND2	PORT MAP(
	I0 => X5, 
	I1 => X4, 
	O => E4_5
);
U12 : AND2	PORT MAP(
	I0 => X7, 
	I1 => X6, 
	O => E6_7
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
SIGNAL E : std_logic;
SIGNAL O4 : std_logic;
SIGNAL O3 : std_logic;
SIGNAL O2 : std_logic;
SIGNAL O1 : std_logic;

-- GATE INSTANCES

BEGIN
U2 : INV	PORT MAP(
	O => Y1, 
	I => O1
);
U4 : INV	PORT MAP(
	O => Y2, 
	I => O2
);
U6 : INV	PORT MAP(
	O => Y3, 
	I => O3
);
U8 : INV	PORT MAP(
	O => Y4, 
	I => O4
);
U9 : INV	PORT MAP(
	O => E, 
	I => G
);
U3 : M2_1E	PORT MAP(
	D0 => A2, 
	D1 => B2, 
	S0 => S, 
	O => O2, 
	E => E
);
U5 : M2_1E	PORT MAP(
	D0 => A3, 
	D1 => B3, 
	S0 => S, 
	O => O3, 
	E => E
);
U7 : M2_1E	PORT MAP(
	D0 => A4, 
	D1 => B4, 
	S0 => S, 
	O => O4, 
	E => E
);
U1 : M2_1E	PORT MAP(
	D0 => A1, 
	D1 => B1, 
	S0 => S, 
	O => O1, 
	E => E
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

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT NOR5B1
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D11 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL D10 : std_logic;
SIGNAL D4 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D9 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D6 : std_logic;

-- GATE INSTANCES

BEGIN
D<=N00006;
U13 : NOR4	PORT MAP(
	I3 => D8, 
	I2 => D9, 
	I1 => D10, 
	I0 => D11, 
	O => C
);
U14 : AND2B1	PORT MAP(
	I0 => I6, 
	I1 => N00006, 
	O => D10
);
U15 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00006, 
	O => D11
);
U16 : AND2	PORT MAP(
	I0 => I9, 
	I1 => I8, 
	O => N00006
);
U1 : AND5B1	PORT MAP(
	I0 => I1, 
	I1 => N00006, 
	I2 => I6, 
	I3 => I4, 
	I4 => I2, 
	O => D0
);
U2 : AND4B1	PORT MAP(
	I0 => I3, 
	I1 => N00006, 
	I2 => I6, 
	I3 => I4, 
	O => D1
);
U3 : NOR5B1	PORT MAP(
	I4 => D0, 
	I3 => D1, 
	I2 => D2, 
	I1 => D3, 
	I0 => I9, 
	O => A
);
U4 : AND3B1	PORT MAP(
	I0 => I5, 
	I1 => N00006, 
	I2 => I6, 
	O => D2
);
U5 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00006, 
	O => D3
);
U6 : AND4B1	PORT MAP(
	I0 => I2, 
	I1 => N00006, 
	I2 => I5, 
	I3 => I4, 
	O => D4
);
U7 : AND4B1	PORT MAP(
	I0 => I3, 
	I1 => N00006, 
	I2 => I5, 
	I3 => I4, 
	O => D5
);
U8 : NOR4	PORT MAP(
	I3 => D4, 
	I2 => D5, 
	I1 => D6, 
	I0 => D7, 
	O => B
);
U9 : AND2B1	PORT MAP(
	I0 => I6, 
	I1 => N00006, 
	O => D6
);
U10 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00006, 
	O => D7
);
U11 : AND2B1	PORT MAP(
	I0 => I4, 
	I1 => N00006, 
	O => D8
);
U12 : AND2B1	PORT MAP(
	I0 => I5, 
	I1 => N00006, 
	O => D9
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
SIGNAL N00010 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL N00278 : std_logic;
SIGNAL N00275 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL MDR7 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00164;
Q0<=N00007;
Q1<=N00005;
Q2<=N00031;
Q3<=N00057;
Q4<=N00083;
Q5<=N00109;
Q6<=N00135;
Q7<=N00014;
Q8<=N00010;
Q9<=N00008;
Q10<=N00034;
Q11<=N00060;
Q12<=N00086;
Q13<=N00112;
Q14<=N00138;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U50 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U22 : M2_1	PORT MAP(
	D0 => N00086, 
	D1 => MDL11, 
	S0 => L_LEFT, 
	O => MDR11
);
U11 : FDRE	PORT MAP(
	D => MDR9, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00008
);
U3 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00007
);
U33 : FDRE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00109
);
U44 : M2_1	PORT MAP(
	D0 => N00010, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U4 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => MDL8, 
	S0 => L_LEFT, 
	O => MDR8
);
U34 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => MDL13, 
	S0 => L_LEFT, 
	O => MDR13
);
U12 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U23 : FDRE	PORT MAP(
	D => MDR11, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00060
);
U45 : FDRE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00014
);
U13 : M2_1	PORT MAP(
	D0 => N00010, 
	D1 => D9, 
	S0 => L, 
	O => MDL9
);
U46 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL15, 
	S0 => L_LEFT, 
	O => MDR15
);
U24 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U5 : FDRE	PORT MAP(
	D => MDR8, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00010
);
U35 : FDRE	PORT MAP(
	D => MDR13, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00112
);
U47 : FDRE	PORT MAP(
	D => MDR15, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00164
);
U25 : M2_1	PORT MAP(
	D0 => N00034, 
	D1 => D11, 
	S0 => L, 
	O => MDL11
);
U6 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U36 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U14 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U7 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => D8, 
	S0 => L, 
	O => MDL8
);
U37 : M2_1	PORT MAP(
	D0 => N00086, 
	D1 => D13, 
	S0 => L, 
	O => MDL13
);
U48 : M2_1	PORT MAP(
	D0 => N00135, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U15 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U26 : M2_1	PORT MAP(
	D0 => N00109, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U16 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => MDL10, 
	S0 => L_LEFT, 
	O => MDR10
);
U49 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => D15, 
	S0 => L, 
	O => MDL15
);
U27 : FDRE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00083
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U38 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U28 : M2_1	PORT MAP(
	D0 => N00112, 
	D1 => MDL12, 
	S0 => L_LEFT, 
	O => MDR12
);
U17 : FDRE	PORT MAP(
	D => MDR10, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00034
);
U9 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00005
);
U39 : FDRE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00135
);
U29 : FDRE	PORT MAP(
	D => MDR12, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00086
);
U18 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U19 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => D10, 
	S0 => L, 
	O => MDL10
);
U40 : M2_1	PORT MAP(
	D0 => N00164, 
	D1 => MDL14, 
	S0 => L_LEFT, 
	O => MDR14
);
U30 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U41 : FDRE	PORT MAP(
	D => MDR14, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00138
);
U31 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D12, 
	S0 => L, 
	O => MDL12
);
U42 : M2_1	PORT MAP(
	D0 => N00109, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U20 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U10 : M2_1	PORT MAP(
	D0 => N00034, 
	D1 => MDL9, 
	S0 => L_LEFT, 
	O => MDR9
);
U43 : M2_1	PORT MAP(
	D0 => N00112, 
	D1 => D14, 
	S0 => L, 
	O => MDL14
);
U21 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00057
);
U2 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U32 : M2_1	PORT MAP(
	D0 => N00135, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
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
U1 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
U5 : OBUF	PORT MAP(
	O => O4, 
	I => I4
);
U6 : OBUF	PORT MAP(
	O => O5, 
	I => I5
);
U7 : OBUF	PORT MAP(
	O => O6, 
	I => I6
);
U8 : OBUF	PORT MAP(
	O => O7, 
	I => I7
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
SIGNAL MCF : std_logic;
SIGNAL M67 : std_logic;
SIGNAL MCD : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M8B : std_logic;
SIGNAL M89 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M8F : std_logic;
SIGNAL MEF : std_logic;
SIGNAL M01 : std_logic;
SIGNAL MAB : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M07 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U11 : M2_1	PORT MAP(
	D0 => D10, 
	D1 => D11, 
	S0 => S0, 
	O => MAB
);
U4 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => S2, 
	O => M07
);
U12 : M2_1	PORT MAP(
	D0 => M8B, 
	D1 => MCF, 
	S0 => S2, 
	O => M8F
);
U5 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => S0, 
	O => M45
);
U13 : M2_1	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	S0 => S0, 
	O => MCD
);
U6 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => M47
);
U14 : M2_1	PORT MAP(
	D0 => MCD, 
	D1 => MEF, 
	S0 => S1, 
	O => MCF
);
U7 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => S0, 
	O => M67
);
U15 : M2_1	PORT MAP(
	D0 => D14, 
	D1 => D15, 
	S0 => S0, 
	O => MEF
);
U8 : M2_1E	PORT MAP(
	D0 => M07, 
	D1 => M8F, 
	S0 => S3, 
	O => O, 
	E => E
);
U9 : M2_1	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	S0 => S0, 
	O => M89
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
U10 : M2_1	PORT MAP(
	D0 => M89, 
	D1 => MAB, 
	S0 => S1, 
	O => M8B
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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
SIGNAL N00005 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00009
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	I2 => T, 
	O => N00011
);
U5 : OR3	PORT MAP(
	I2 => N00009, 
	I1 => N00011, 
	I0 => N00015, 
	O => N00012
);
U7 : AND2B1	PORT MAP(
	I0 => T, 
	I1 => N00005, 
	O => N00015
);
U6 : FDC	PORT MAP(
	D => N00012, 
	C => C, 
	CLR => CLR, 
	Q => N00005
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT NAND2B1
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
SIGNAL N00003 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B2	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	O => N00007
);
U4 : AND3	PORT MAP(
	I0 => K, 
	I1 => N00003, 
	I2 => N00005, 
	O => N00012
);
U5 : OR4	PORT MAP(
	I3 => N00007, 
	I2 => N00012, 
	I1 => N00014, 
	I0 => R, 
	O => N00013
);
U6 : NAND2B1	PORT MAP(
	I0 => S, 
	I1 => N00013, 
	O => N00015
);
U8 : AND2B2	PORT MAP(
	I0 => J, 
	I1 => N00005, 
	O => N00014
);
U7 : FD	PORT MAP(
	D => N00015, 
	C => C, 
	Q => N00005
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2RE	 PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00008, 
	O => TC
);
U1 : CB2RE	PORT MAP(
	CE => CE, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2RE	PORT MAP(
	CE => N00006, 
	C => C, 
	R => R, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => CEO, 
	TC => N00016
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

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2CE	 PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
U9 : AND8	PORT MAP(
	I0 => N00064, 
	I1 => N00056, 
	I2 => N00048, 
	I3 => N00040, 
	I4 => N00032, 
	I5 => N00024, 
	I6 => N00016, 
	I7 => N00008, 
	O => TC
);
U3 : CB2CE	PORT MAP(
	CE => N00014, 
	C => C, 
	CLR => CLR, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00022, 
	TC => N00024
);
U4 : CB2CE	PORT MAP(
	CE => N00022, 
	C => C, 
	CLR => CLR, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => N00030, 
	TC => N00032
);
U5 : CB2CE	PORT MAP(
	CE => N00030, 
	C => C, 
	CLR => CLR, 
	Q0 => Q8, 
	Q1 => Q9, 
	CEO => N00038, 
	TC => N00040
);
U6 : CB2CE	PORT MAP(
	CE => N00038, 
	C => C, 
	CLR => CLR, 
	Q0 => Q10, 
	Q1 => Q11, 
	CEO => N00046, 
	TC => N00048
);
U7 : CB2CE	PORT MAP(
	CE => N00046, 
	C => C, 
	CLR => CLR, 
	Q0 => Q12, 
	Q1 => Q13, 
	CEO => N00054, 
	TC => N00056
);
U8 : CB2CE	PORT MAP(
	CE => N00054, 
	C => C, 
	CLR => CLR, 
	Q0 => Q14, 
	Q1 => Q15, 
	CEO => CEO, 
	TC => N00064
);
U1 : CB2CE	PORT MAP(
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2CE	PORT MAP(
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00014, 
	TC => N00016
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
U1 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U2 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U3 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U4 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U5 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
U6 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U7 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U8 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
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
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : BUFT	PORT MAP(
	T => N00002, 
	I => I12, 
	O => O12
);
U14 : BUFT	PORT MAP(
	T => N00002, 
	I => I13, 
	O => O13
);
U15 : BUFT	PORT MAP(
	T => N00002, 
	I => I14, 
	O => O14
);
U16 : BUFT	PORT MAP(
	T => N00002, 
	I => I15, 
	O => O15
);
U17 : INV	PORT MAP(
	O => N00002, 
	I => E
);
U1 : BUFT	PORT MAP(
	T => N00002, 
	I => I0, 
	O => O0
);
U2 : BUFT	PORT MAP(
	T => N00002, 
	I => I1, 
	O => O1
);
U3 : BUFT	PORT MAP(
	T => N00002, 
	I => I2, 
	O => O2
);
U4 : BUFT	PORT MAP(
	T => N00002, 
	I => I3, 
	O => O3
);
U5 : BUFT	PORT MAP(
	T => N00002, 
	I => I4, 
	O => O4
);
U6 : BUFT	PORT MAP(
	T => N00002, 
	I => I5, 
	O => O5
);
U7 : BUFT	PORT MAP(
	T => N00002, 
	I => I6, 
	O => O6
);
U8 : BUFT	PORT MAP(
	T => N00002, 
	I => I7, 
	O => O7
);
U9 : BUFT	PORT MAP(
	T => N00002, 
	I => I8, 
	O => O8
);
U10 : BUFT	PORT MAP(
	T => N00002, 
	I => I9, 
	O => O9
);
U11 : BUFT	PORT MAP(
	T => N00002, 
	I => I10, 
	O => O10
);
U12 : BUFT	PORT MAP(
	T => N00002, 
	I => I11, 
	O => O11
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
SIGNAL M12 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M30 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => I1, 
	D1 => I2, 
	S0 => S0, 
	O => M12
);
U4 : M2_1	PORT MAP(
	D0 => M12, 
	D1 => M30, 
	S0 => S1, 
	O => O1
);
U5 : M2_1	PORT MAP(
	D0 => I2, 
	D1 => I3, 
	S0 => S0, 
	O => M23
);
U6 : M2_1	PORT MAP(
	D0 => M23, 
	D1 => M01, 
	S0 => S1, 
	O => O2
);
U7 : M2_1	PORT MAP(
	D0 => I3, 
	D1 => I0, 
	S0 => S0, 
	O => M30
);
U8 : M2_1	PORT MAP(
	D0 => M30, 
	D1 => M12, 
	S0 => S1, 
	O => O3
);
U1 : M2_1	PORT MAP(
	D0 => I0, 
	D1 => I1, 
	S0 => S0, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => O0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU4X2 IS PORT (
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
	CO : OUT std_logic
); END ADSU4X2;



ARCHITECTURE STRUCTURE OF ADSU4X2 IS

-- COMPONENTS

COMPONENT ADSU1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : ADSU1X2	PORT MAP(
	CI => N00013, 
	A0 => A2, 
	B0 => B2, 
	ADD => ADD, 
	S0 => S2, 
	CO => N00020
);
U4 : ADSU1X2	PORT MAP(
	CI => N00020, 
	A0 => A3, 
	B0 => B3, 
	ADD => ADD, 
	S0 => S3, 
	CO => CO
);
U1 : ADSU1X2	PORT MAP(
	CI => CI, 
	A0 => A0, 
	B0 => B0, 
	ADD => ADD, 
	S0 => S0, 
	CO => N00006
);
U2 : ADSU1X2	PORT MAP(
	CI => N00006, 
	A0 => A1, 
	B0 => B1, 
	ADD => ADD, 
	S0 => S1, 
	CO => N00013
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL E6_7 : std_logic;
SIGNAL E0_1 : std_logic;
SIGNAL E4_5 : std_logic;
SIGNAL E2_3 : std_logic;
SIGNAL X7 : std_logic;
SIGNAL X6 : std_logic;
SIGNAL X5 : std_logic;
SIGNAL X4 : std_logic;
SIGNAL X3 : std_logic;
SIGNAL X2 : std_logic;
SIGNAL X1 : std_logic;
SIGNAL X0 : std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2	PORT MAP(
	I0 => X7, 
	I1 => X6, 
	O => E6_7
);
U14 : XNOR2	PORT MAP(
	I1 => P7, 
	I0 => Q7, 
	O => X7
);
U1 : XNOR2	PORT MAP(
	I1 => P0, 
	I0 => Q0, 
	O => X0
);
U2 : AND2	PORT MAP(
	I0 => X1, 
	I1 => X0, 
	O => E0_1
);
U3 : XNOR2	PORT MAP(
	I1 => P1, 
	I0 => Q1, 
	O => X1
);
U4 : XNOR2	PORT MAP(
	I1 => P2, 
	I0 => Q2, 
	O => X2
);
U5 : AND2	PORT MAP(
	I0 => X3, 
	I1 => X2, 
	O => E2_3
);
U6 : XNOR2	PORT MAP(
	I1 => P3, 
	I0 => Q3, 
	O => X3
);
U7 : AND5	PORT MAP(
	I0 => E6_7, 
	I1 => E4_5, 
	I2 => GB, 
	I3 => E2_3, 
	I4 => E0_1, 
	O => PEQ
);
U8 : INV	PORT MAP(
	O => GB, 
	I => G
);
U9 : XNOR2	PORT MAP(
	I1 => P4, 
	I0 => Q4, 
	O => X4
);
U10 : AND2	PORT MAP(
	I0 => X5, 
	I1 => X4, 
	O => E4_5
);
U11 : XNOR2	PORT MAP(
	I1 => P5, 
	I0 => Q5, 
	O => X5
);
U12 : XNOR2	PORT MAP(
	I1 => P6, 
	I0 => Q6, 
	O => X6
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

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
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
SIGNAL N00029 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00030 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00007;
QB<=N00010;
QC<=N00012;
QD<=N00008;
U13 : AND5B2	PORT MAP(
	I0 => N00008, 
	I1 => N00010, 
	I2 => N00007, 
	I3 => N00013, 
	I4 => N00019, 
	O => N00044
);
U14 : AND5B2	PORT MAP(
	I0 => N00008, 
	I1 => N00007, 
	I2 => N00010, 
	I3 => N00013, 
	I4 => N00019, 
	O => N00052
);
U15 : OR4	PORT MAP(
	I3 => N00044, 
	I2 => N00052, 
	I1 => N00055, 
	I0 => N00062, 
	O => N00053
);
U17 : AND3B1	PORT MAP(
	I0 => N00019, 
	I1 => N00013, 
	I2 => N00010, 
	O => N00055
);
U18 : AND2B1	PORT MAP(
	I0 => N00013, 
	I1 => B, 
	O => N00062
);
U19 : AND6	PORT MAP(
	I0 => N00072, 
	I1 => N00070, 
	I2 => N00010, 
	I3 => N00007, 
	I4 => N00013, 
	I5 => N00019, 
	O => N00067
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => N00002, 
	O => N00004
);
U3 : AND2	PORT MAP(
	I0 => N00130, 
	I1 => N00004, 
	O => N00019
);
U4 : AND2	PORT MAP(
	I0 => N00002, 
	I1 => ENP, 
	O => N00130
);
U5 : AND5B2	PORT MAP(
	I0 => N00012, 
	I1 => N00010, 
	I2 => N00008, 
	I3 => N00007, 
	I4 => N00004, 
	O => RCO
);
U20 : INV	PORT MAP(
	O => N00070, 
	I => N00012
);
U21 : INV	PORT MAP(
	O => N00072, 
	I => N00008
);
U6 : AND2	PORT MAP(
	I0 => N00002, 
	I1 => LOAD, 
	O => N00013
);
U22 : AND5B2	PORT MAP(
	I0 => N00008, 
	I1 => N00007, 
	I2 => N00012, 
	I3 => N00013, 
	I4 => N00019, 
	O => N00080
);
U7 : AND5B3	PORT MAP(
	I0 => N00012, 
	I1 => N00010, 
	I2 => N00007, 
	I3 => N00013, 
	I4 => N00019, 
	O => N00022
);
U23 : AND5B2	PORT MAP(
	I0 => N00008, 
	I1 => N00010, 
	I2 => N00012, 
	I3 => N00013, 
	I4 => N00019, 
	O => N00082
);
U8 : AND4B2	PORT MAP(
	I0 => N00008, 
	I1 => N00007, 
	I2 => N00013, 
	I3 => N00019, 
	O => N00029
);
U9 : OR4	PORT MAP(
	I3 => N00022, 
	I2 => N00029, 
	I1 => N00032, 
	I0 => N00039, 
	O => N00030
);
U24 : OR5	PORT MAP(
	I4 => N00067, 
	I3 => N00080, 
	I2 => N00082, 
	I1 => N00086, 
	I0 => N00094, 
	O => N00083
);
U26 : AND3B1	PORT MAP(
	I0 => N00019, 
	I1 => N00013, 
	I2 => N00012, 
	O => N00086
);
U27 : AND2B1	PORT MAP(
	I0 => N00013, 
	I1 => C, 
	O => N00094
);
U28 : AND6	PORT MAP(
	I0 => N00103, 
	I1 => N00012, 
	I2 => N00010, 
	I3 => N00007, 
	I4 => N00013, 
	I5 => N00019, 
	O => N00099
);
U29 : INV	PORT MAP(
	O => N00103, 
	I => N00008
);
U30 : AND6	PORT MAP(
	I0 => N00008, 
	I1 => N00111, 
	I2 => N00109, 
	I3 => N00107, 
	I4 => N00013, 
	I5 => N00019, 
	O => N00113
);
U31 : INV	PORT MAP(
	O => N00107, 
	I => N00007
);
U32 : INV	PORT MAP(
	O => N00109, 
	I => N00010
);
U33 : INV	PORT MAP(
	O => N00111, 
	I => N00012
);
U34 : OR4	PORT MAP(
	I3 => N00099, 
	I2 => N00113, 
	I1 => N00116, 
	I0 => N00123, 
	O => N00114
);
U36 : AND3B1	PORT MAP(
	I0 => N00019, 
	I1 => N00013, 
	I2 => N00008, 
	O => N00116
);
U37 : AND2B1	PORT MAP(
	I0 => N00013, 
	I1 => D, 
	O => N00123
);
U38 : INV	PORT MAP(
	O => N00037, 
	I => CLR
);
U11 : AND3B1	PORT MAP(
	I0 => N00019, 
	I1 => N00013, 
	I2 => N00007, 
	O => N00032
);
U12 : AND2B1	PORT MAP(
	I0 => N00013, 
	I1 => A, 
	O => N00039
);
U35 : FDC	PORT MAP(
	D => N00114, 
	C => CK, 
	CLR => N00037, 
	Q => N00008
);
U25 : FDC	PORT MAP(
	D => N00083, 
	C => CK, 
	CLR => N00037, 
	Q => N00012
);
U16 : FDC	PORT MAP(
	D => N00053, 
	C => CK, 
	CLR => N00037, 
	Q => N00010
);
U10 : FDC	PORT MAP(
	D => N00030, 
	C => CK, 
	CLR => N00037, 
	Q => N00007
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

-- GATE INSTANCES

BEGIN
U3 : OFDT	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2
);
U4 : OFDT	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3
);
U5 : OFDT	PORT MAP(
	T => T, 
	D => D4, 
	C => C, 
	O => O4
);
U6 : OFDT	PORT MAP(
	T => T, 
	D => D5, 
	C => C, 
	O => O5
);
U7 : OFDT	PORT MAP(
	T => T, 
	D => D6, 
	C => C, 
	O => O6
);
U8 : OFDT	PORT MAP(
	T => T, 
	D => D7, 
	C => C, 
	O => O7
);
U1 : OFDT	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0
);
U2 : OFDT	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1
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
U3 : IFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U4 : IFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U1 : IFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : IFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
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

COMPONENT FDP	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => T, 
	O => N00006
);
U2 : OR2	PORT MAP(
	I1 => N00006, 
	I0 => N00009, 
	O => N00007
);
U4 : AND2B1	PORT MAP(
	I0 => T, 
	I1 => N00002, 
	O => N00009
);
U3 : FDP	PORT MAP(
	D => N00007, 
	C => C, 
	PRE => PRE, 
	Q => N00002
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

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FDCP	PORT MAP(
	D => D, 
	C => C, 
	PRE => N00002, 
	Q => Q, 
	CLR => N00002
);
U2 : GND	PORT MAP(
	G => N00002
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
SIGNAL N00002 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00010;
Q2<=N00016;
Q3<=N00002;
U1 : INV	PORT MAP(
	O => Q3B, 
	I => N00002
);
U3 : FDRE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00010
);
U4 : FDRE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00016
);
U5 : FDRE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00002
);
U2 : FDRE	PORT MAP(
	D => Q3B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB4X2 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic;
	TCDINV : OUT std_logic
); END CB4X2;



ARCHITECTURE STRUCTURE OF CB4X2 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND4B3
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

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR5
	PORT (
	I4 : IN std_logic;
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00117 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00163 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00158 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00150 : std_logic;

-- GATE INSTANCES

BEGIN
TCD<=N00175;
TCU<=N00023;
Q0<=N00009;
Q1<=N00008;
Q2<=N00007;
Q3<=N00006;
TCDINV<=N00161;
U45 : INV	PORT MAP(
	O => N00113, 
	I => R
);
U13 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D0, 
	I2 => N00015, 
	O => N00038
);
U14 : AND5B4	PORT MAP(
	I0 => N00009, 
	I1 => N00015, 
	I2 => R, 
	I3 => N00011, 
	I4 => N00004, 
	O => N00043
);
U46 : XOR2	PORT MAP(
	I1 => N00117, 
	I0 => N00121, 
	O => N00119
);
U15 : OR2	PORT MAP(
	I1 => N00043, 
	I0 => N00048, 
	O => N00050
);
U48 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00006, 
	O => N00125
);
U16 : AND4B2	PORT MAP(
	I0 => R, 
	I1 => N00015, 
	I2 => N00009, 
	I3 => N00011, 
	O => N00048
);
U49 : OR2	PORT MAP(
	I1 => N00125, 
	I0 => N00129, 
	O => N00121
);
U17 : XOR2	PORT MAP(
	I1 => N00050, 
	I0 => N00054, 
	O => N00052
);
U19 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00008, 
	O => N00058
);
U1 : OR2	PORT MAP(
	I1 => N00003, 
	I0 => CED, 
	O => N00004
);
U2 : OR2	PORT MAP(
	I1 => CEU, 
	I0 => N00003, 
	O => N00011
);
U50 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D3, 
	I2 => N00015, 
	O => N00129
);
U3 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00011, 
	O => N00014
);
U51 : INV	PORT MAP(
	O => N00132, 
	I => N00004
);
U4 : OR2	PORT MAP(
	I1 => N00014, 
	I0 => N00020, 
	O => N00026
);
U5 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00015, 
	I2 => N00011, 
	I3 => N00004, 
	O => N00020
);
U52 : INV	PORT MAP(
	O => N00134, 
	I => N00011
);
U20 : OR2	PORT MAP(
	I1 => N00058, 
	I0 => N00062, 
	O => N00054
);
U6 : AND4	PORT MAP(
	I0 => N00009, 
	I1 => N00008, 
	I2 => N00007, 
	I3 => N00006, 
	O => N00023
);
U21 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D1, 
	I2 => N00015, 
	O => N00062
);
U53 : AND7	PORT MAP(
	I0 => N00145, 
	I1 => N00143, 
	I2 => N00141, 
	I3 => N00138, 
	I4 => N00136, 
	I5 => N00134, 
	I6 => N00132, 
	O => N00139
);
U22 : INV	PORT MAP(
	O => N00066, 
	I => N00011
);
U54 : INV	PORT MAP(
	O => N00136, 
	I => N00015
);
U7 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00003, 
	O => N00015
);
U23 : AND6	PORT MAP(
	I0 => N00075, 
	I1 => N00073, 
	I2 => N00071, 
	I3 => N00068, 
	I4 => N00066, 
	I5 => N00004, 
	O => N00069
);
U55 : INV	PORT MAP(
	O => N00138, 
	I => N00009
);
U8 : XOR2	PORT MAP(
	I1 => N00026, 
	I0 => N00031, 
	O => N00028
);
U24 : INV	PORT MAP(
	O => N00068, 
	I => N00015
);
U56 : INV	PORT MAP(
	O => N00141, 
	I => N00008
);
U25 : INV	PORT MAP(
	O => N00071, 
	I => R
);
U57 : INV	PORT MAP(
	O => N00143, 
	I => N00007
);
U26 : INV	PORT MAP(
	O => N00073, 
	I => N00009
);
U58 : INV	PORT MAP(
	O => N00145, 
	I => N00006
);
U27 : INV	PORT MAP(
	O => N00075, 
	I => N00008
);
U59 : INV	PORT MAP(
	O => N00148, 
	I => N00011
);
U28 : OR2	PORT MAP(
	I1 => N00069, 
	I0 => N00079, 
	O => N00082
);
U29 : AND5B2	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00008, 
	I3 => N00009, 
	I4 => N00011, 
	O => N00079
);
U60 : AND7	PORT MAP(
	I0 => N00157, 
	I1 => N00155, 
	I2 => N00153, 
	I3 => N00009, 
	I4 => N00150, 
	I5 => N00148, 
	I6 => N00004, 
	O => N00158
);
U61 : INV	PORT MAP(
	O => N00150, 
	I => N00015
);
U62 : INV	PORT MAP(
	O => N00153, 
	I => N00008
);
U30 : XOR2	PORT MAP(
	I1 => N00082, 
	I0 => N00086, 
	O => N00083
);
U63 : INV	PORT MAP(
	O => N00155, 
	I => N00007
);
U32 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00007, 
	O => N00088
);
U64 : NOR5	PORT MAP(
	I4 => N00139, 
	I3 => N00158, 
	I2 => R, 
	I1 => N00163, 
	I0 => N00172, 
	O => N00160
);
U65 : INV	PORT MAP(
	O => N00157, 
	I => N00006
);
U33 : OR2	PORT MAP(
	I1 => N00088, 
	I0 => N00093, 
	O => N00086
);
U34 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D2, 
	I2 => N00015, 
	O => N00093
);
U35 : INV	PORT MAP(
	O => N00097, 
	I => N00011
);
U67 : AND5B4	PORT MAP(
	I0 => D3, 
	I1 => D2, 
	I2 => D1, 
	I3 => D0, 
	I4 => N00015, 
	O => N00163
);
U36 : AND7	PORT MAP(
	I0 => N00108, 
	I1 => N00106, 
	I2 => N00104, 
	I3 => N00101, 
	I4 => N00099, 
	I5 => N00097, 
	I6 => N00004, 
	O => N00102
);
U68 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00023, 
	I2 => N00011, 
	O => N00172
);
U69 : INV	PORT MAP(
	O => N00175, 
	I => N00161
);
U37 : INV	PORT MAP(
	O => N00099, 
	I => N00015
);
U38 : INV	PORT MAP(
	O => N00101, 
	I => R
);
U39 : INV	PORT MAP(
	O => N00104, 
	I => N00009
);
U70 : AND2	PORT MAP(
	I0 => N00023, 
	I1 => N00011, 
	O => CEOU
);
U71 : AND3B1	PORT MAP(
	I0 => N00011, 
	I1 => N00175, 
	I2 => N00004, 
	O => CEOD
);
U40 : INV	PORT MAP(
	O => N00106, 
	I => N00008
);
U41 : INV	PORT MAP(
	O => N00108, 
	I => N00007
);
U10 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00009, 
	O => N00033
);
U42 : OR2	PORT MAP(
	I1 => N00102, 
	I0 => N00114, 
	O => N00117
);
U43 : INV	PORT MAP(
	O => N00111, 
	I => N00015
);
U11 : OR2	PORT MAP(
	I1 => N00033, 
	I0 => N00038, 
	O => N00031
);
U44 : AND6	PORT MAP(
	I0 => N00007, 
	I1 => N00008, 
	I2 => N00009, 
	I3 => N00113, 
	I4 => N00111, 
	I5 => N00011, 
	O => N00114
);
U12 : GND	PORT MAP(
	G => N00003
);
U66 : FD	PORT MAP(
	D => N00160, 
	C => C, 
	Q => N00161
);
U47 : FD	PORT MAP(
	D => N00119, 
	C => C, 
	Q => N00006
);
U9 : FD	PORT MAP(
	D => N00028, 
	C => C, 
	Q => N00009
);
U18 : FD	PORT MAP(
	D => N00052, 
	C => C, 
	Q => N00008
);
U31 : FD	PORT MAP(
	D => N00083, 
	C => C, 
	Q => N00007
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

COMPONENT XOR4
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I0, 
	I2 => I1, 
	I1 => I2, 
	I0 => I3, 
	O => N00004
);
U2 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00010, 
	O => O
);
U3 : XOR4	PORT MAP(
	I3 => I4, 
	I2 => I5, 
	I1 => I6, 
	I0 => I7, 
	O => N00010
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
SIGNAL N00003 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00003;
Q1<=N00009;
Q2<=N00015;
U3 : FDRE	PORT MAP(
	D => N00009, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00015
);
U4 : FDRE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U1 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00003
);
U2 : FDRE	PORT MAP(
	D => N00003, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00009
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

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00076 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00066 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00016;
Q2<=N00028;
Q3<=N00040;
Q4<=N00052;
Q5<=N00064;
Q6<=N00076;
Q7<=N00002;
Q8<=N00006;
Q9<=N00018;
Q10<=N00030;
Q11<=N00042;
Q12<=N00054;
Q13<=N00066;
Q14<=N00078;
U3 : FDCE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00016
);
U11 : FDCE	PORT MAP(
	D => N00052, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00064
);
U12 : FDCE	PORT MAP(
	D => N00054, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00066
);
U4 : FDCE	PORT MAP(
	D => N00006, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U5 : FDCE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00028
);
U13 : FDCE	PORT MAP(
	D => N00064, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00076
);
U6 : FDCE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00030
);
U14 : FDCE	PORT MAP(
	D => N00066, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00078
);
U7 : FDCE	PORT MAP(
	D => N00028, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00040
);
U15 : FDCE	PORT MAP(
	D => N00076, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00002
);
U8 : FDCE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00042
);
U16 : FDCE	PORT MAP(
	D => N00078, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U9 : FDCE	PORT MAP(
	D => N00040, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00052
);
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
);
U10 : FDCE	PORT MAP(
	D => N00042, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00054
);
U2 : FDCE	PORT MAP(
	D => N00002, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00006
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
U1 : AND2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I01
);
U2 : OR2B1	PORT MAP(
	I1 => I01, 
	I0 => I2, 
	O => O
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
U3 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U4 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U1 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U2 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M1 : std_logic;
SIGNAL M0 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3B1	PORT MAP(
	I0 => S0, 
	I1 => E, 
	I2 => D0, 
	O => M0
);
U2 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U3 : AND3	PORT MAP(
	I0 => D1, 
	I1 => E, 
	I2 => S0, 
	O => M1
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
U1 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : IBUF	PORT MAP(
	O => O3, 
	I => I3
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00008, 
	O => N00006
);
U4 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00006, 
	I2 => N00003, 
	I3 => N00007, 
	O => N00011
);
U5 : GND	PORT MAP(
	G => N00008
);
U6 : AND5B3	PORT MAP(
	I0 => R, 
	I1 => N00006, 
	I2 => N00007, 
	I3 => T, 
	I4 => N00003, 
	O => N00019
);
U7 : OR5	PORT MAP(
	I4 => N00011, 
	I3 => N00019, 
	I2 => S, 
	I1 => N00023, 
	I0 => N00030, 
	O => N00021
);
U9 : AND4B3	PORT MAP(
	I0 => T, 
	I1 => R, 
	I2 => N00006, 
	I3 => N00007, 
	O => N00023
);
U10 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	I2 => N00006, 
	O => N00030
);
U8 : FD	PORT MAP(
	D => N00021, 
	C => C, 
	Q => N00007
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

COMPONENT AND4B3
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

COMPONENT AND4B1
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : AND4B3	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D0
);
U2 : AND4B2	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D1
);
U3 : AND4B2	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => E, 
	O => D2
);
U4 : AND4B1	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => E, 
	O => D3
);
U5 : AND4B2	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => A2, 
	I3 => E, 
	O => D4
);
U6 : AND4B1	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => A0, 
	I3 => E, 
	O => D5
);
U7 : AND4B1	PORT MAP(
	I0 => A0, 
	I1 => A2, 
	I2 => A1, 
	I3 => E, 
	O => D6
);
U8 : AND4	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D7
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL Q4B : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00010;
Q2<=N00016;
Q3<=N00022;
Q4<=N00002;
U1 : INV	PORT MAP(
	O => Q4B, 
	I => N00002
);
U3 : FDCE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U4 : FDCE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00016
);
U5 : FDCE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00022
);
U6 : FDCE	PORT MAP(
	D => N00022, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00002
);
U2 : FDCE	PORT MAP(
	D => Q4B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB4X1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic;
	TCDINV : OUT std_logic
); END CB4X1;



ARCHITECTURE STRUCTURE OF CB4X1 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT AND3B2
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

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND4B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00139 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00156 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00136 : std_logic;

-- GATE INSTANCES

BEGIN
TCD<=N00156;
TCU<=N00023;
Q0<=N00010;
Q1<=N00009;
Q2<=N00008;
Q3<=N00007;
TCDINV<=N00141;
U13 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00015, 
	O => N00036
);
U45 : AND7	PORT MAP(
	I0 => N00126, 
	I1 => N00124, 
	I2 => N00122, 
	I3 => N00119, 
	I4 => N00117, 
	I5 => N00115, 
	I6 => N00113, 
	O => N00120
);
U46 : INV	PORT MAP(
	O => N00117, 
	I => N00015
);
U14 : AND4B3	PORT MAP(
	I0 => N00010, 
	I1 => N00015, 
	I2 => N00012, 
	I3 => N00005, 
	O => N00040
);
U47 : INV	PORT MAP(
	O => N00119, 
	I => N00010
);
U15 : OR2	PORT MAP(
	I1 => N00040, 
	I0 => N00045, 
	O => N00047
);
U48 : INV	PORT MAP(
	O => N00122, 
	I => N00009
);
U16 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00010, 
	I2 => N00012, 
	O => N00045
);
U49 : INV	PORT MAP(
	O => N00124, 
	I => N00008
);
U17 : XOR2	PORT MAP(
	I1 => N00047, 
	I0 => N00050, 
	O => N00048
);
U19 : AND2B1	PORT MAP(
	I0 => N00015, 
	I1 => N00009, 
	O => N00053
);
U1 : OR2	PORT MAP(
	I1 => N00004, 
	I0 => CED, 
	O => N00005
);
U2 : OR2	PORT MAP(
	I1 => CEU, 
	I0 => N00004, 
	O => N00012
);
U50 : INV	PORT MAP(
	O => N00126, 
	I => N00007
);
U3 : AND2B1	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	O => N00014
);
U51 : INV	PORT MAP(
	O => N00129, 
	I => N00012
);
U4 : OR2	PORT MAP(
	I1 => N00014, 
	I0 => N00020, 
	O => N00025
);
U52 : AND7	PORT MAP(
	I0 => N00138, 
	I1 => N00136, 
	I2 => N00134, 
	I3 => N00010, 
	I4 => N00131, 
	I5 => N00129, 
	I6 => N00005, 
	O => N00139
);
U20 : OR2	PORT MAP(
	I1 => N00053, 
	I0 => N00057, 
	O => N00050
);
U5 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00005, 
	O => N00020
);
U6 : AND4	PORT MAP(
	I0 => N00010, 
	I1 => N00009, 
	I2 => N00008, 
	I3 => N00007, 
	O => N00023
);
U53 : INV	PORT MAP(
	O => N00131, 
	I => N00015
);
U21 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00015, 
	O => N00057
);
U54 : INV	PORT MAP(
	O => N00134, 
	I => N00009
);
U22 : AND5B4	PORT MAP(
	I0 => N00009, 
	I1 => N00010, 
	I2 => N00015, 
	I3 => N00012, 
	I4 => N00005, 
	O => N00062
);
U7 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00004, 
	O => N00015
);
U55 : INV	PORT MAP(
	O => N00136, 
	I => N00008
);
U23 : OR2	PORT MAP(
	I1 => N00062, 
	I0 => N00067, 
	O => N00070
);
U8 : XOR2	PORT MAP(
	I1 => N00025, 
	I0 => N00030, 
	O => N00027
);
U56 : NOR4	PORT MAP(
	I3 => N00120, 
	I2 => N00139, 
	I1 => N00143, 
	I0 => N00153, 
	O => N00140
);
U24 : AND4B1	PORT MAP(
	I0 => N00015, 
	I1 => N00009, 
	I2 => N00010, 
	I3 => N00012, 
	O => N00067
);
U57 : INV	PORT MAP(
	O => N00138, 
	I => N00007
);
U25 : XOR2	PORT MAP(
	I1 => N00070, 
	I0 => N00074, 
	O => N00071
);
U27 : AND2B1	PORT MAP(
	I0 => N00015, 
	I1 => N00008, 
	O => N00075
);
U59 : AND5B4	PORT MAP(
	I0 => D3, 
	I1 => D2, 
	I2 => D1, 
	I3 => D0, 
	I4 => N00015, 
	O => N00143
);
U28 : OR2	PORT MAP(
	I1 => N00075, 
	I0 => N00080, 
	O => N00074
);
U29 : AND2	PORT MAP(
	I0 => D2, 
	I1 => N00015, 
	O => N00080
);
U60 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00023, 
	I2 => N00012, 
	O => N00153
);
U61 : INV	PORT MAP(
	O => N00156, 
	I => N00141
);
U62 : AND2	PORT MAP(
	I0 => N00023, 
	I1 => N00012, 
	O => CEOU
);
U30 : INV	PORT MAP(
	O => N00084, 
	I => N00012
);
U63 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00156, 
	I2 => N00005, 
	O => CEOD
);
U31 : AND6	PORT MAP(
	I0 => N00093, 
	I1 => N00091, 
	I2 => N00089, 
	I3 => N00086, 
	I4 => N00084, 
	I5 => N00005, 
	O => N00087
);
U32 : INV	PORT MAP(
	O => N00086, 
	I => N00015
);
U33 : INV	PORT MAP(
	O => N00089, 
	I => N00010
);
U34 : INV	PORT MAP(
	O => N00091, 
	I => N00009
);
U35 : INV	PORT MAP(
	O => N00093, 
	I => N00008
);
U36 : OR2	PORT MAP(
	I1 => N00087, 
	I0 => N00097, 
	O => N00100
);
U37 : AND5B1	PORT MAP(
	I0 => N00015, 
	I1 => N00008, 
	I2 => N00009, 
	I3 => N00010, 
	I4 => N00012, 
	O => N00097
);
U38 : XOR2	PORT MAP(
	I1 => N00100, 
	I0 => N00103, 
	O => N00101
);
U40 : AND2B1	PORT MAP(
	I0 => N00015, 
	I1 => N00007, 
	O => N00106
);
U41 : OR2	PORT MAP(
	I1 => N00106, 
	I0 => N00110, 
	O => N00103
);
U42 : AND2	PORT MAP(
	I0 => D3, 
	I1 => N00015, 
	O => N00110
);
U10 : AND2B1	PORT MAP(
	I0 => N00015, 
	I1 => N00010, 
	O => N00031
);
U43 : INV	PORT MAP(
	O => N00113, 
	I => N00005
);
U11 : GND	PORT MAP(
	G => N00004
);
U44 : INV	PORT MAP(
	O => N00115, 
	I => N00012
);
U12 : OR2	PORT MAP(
	I1 => N00031, 
	I0 => N00036, 
	O => N00030
);
U58 : FDC	PORT MAP(
	D => N00140, 
	C => C, 
	CLR => CLR, 
	Q => N00141
);
U26 : FDC	PORT MAP(
	D => N00071, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U9 : FDC	PORT MAP(
	D => N00027, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U39 : FDC	PORT MAP(
	D => N00101, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U18 : FDC	PORT MAP(
	D => N00048, 
	C => C, 
	CLR => CLR, 
	Q => N00009
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD1X2 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END ADD1X2;



ARCHITECTURE STRUCTURE OF ADD1X2 IS

-- COMPONENTS

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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => N00007, 
	O => S0
);
U2 : AND2B1	PORT MAP(
	I0 => CI, 
	I1 => B0, 
	O => N00005
);
U3 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00009, 
	O => N00007
);
U4 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => CI, 
	O => N00009
);
U5 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => N00012
);
U6 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00015
);
U7 : OR3	PORT MAP(
	I2 => N00012, 
	I1 => N00015, 
	I0 => N00019, 
	O => CO
);
U8 : AND2	PORT MAP(
	I0 => CI, 
	I1 => B0, 
	O => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC1X2 IS PORT (
	CI : IN std_logic;
	B0 : IN std_logic;
	D0 : IN std_logic;
	L : IN std_logic;
	ADD : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END ACC1X2;



ARCHITECTURE STRUCTURE OF ACC1X2 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
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

COMPONENT XOR2
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00052 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N001410 : std_logic;
SIGNAL N001420 : std_logic;
SIGNAL N001430 : std_logic;
SIGNAL N001540 : std_logic;
SIGNAL N001530 : std_logic;
SIGNAL N001520 : std_logic;
SIGNAL N001510 : std_logic;
SIGNAL N001500 : std_logic;
SIGNAL N001490 : std_logic;
SIGNAL N001480 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N001440 : std_logic;
SIGNAL N001450 : std_logic;
SIGNAL N001460 : std_logic;
SIGNAL N001470 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00046;
U13 : INV	PORT MAP(
	O => N001470, 
	I => R
);
U14 : INV	PORT MAP(
	O => N001480, 
	I => B0
);
U15 : AND6	PORT MAP(
	I0 => N001490, 
	I1 => N001500, 
	I2 => N001510, 
	I3 => ADD, 
	I4 => CI, 
	I5 => N00003, 
	O => N00028
);
U16 : OR4	PORT MAP(
	I3 => N00013, 
	I2 => N00020, 
	I1 => N00028, 
	I0 => N00037, 
	O => N00029
);
U17 : INV	PORT MAP(
	O => N001510, 
	I => N00008
);
U18 : INV	PORT MAP(
	O => N001500, 
	I => R
);
U19 : INV	PORT MAP(
	O => N001490, 
	I => B0
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00009, 
	O => N00008
);
U4 : INV	PORT MAP(
	O => N001410, 
	I => CI
);
U5 : AND6	PORT MAP(
	I0 => B0, 
	I1 => N001430, 
	I2 => N001420, 
	I3 => ADD, 
	I4 => N001410, 
	I5 => N00003, 
	O => N00013
);
U20 : AND6	PORT MAP(
	I0 => B0, 
	I1 => N001520, 
	I2 => N001530, 
	I3 => N001540, 
	I4 => CI, 
	I5 => N00003, 
	O => N00037
);
U21 : INV	PORT MAP(
	O => N001540, 
	I => ADD
);
U6 : GND	PORT MAP(
	G => N00009
);
U22 : INV	PORT MAP(
	O => N001530, 
	I => N00008
);
U7 : INV	PORT MAP(
	O => N001420, 
	I => N00008
);
U23 : INV	PORT MAP(
	O => N001520, 
	I => R
);
U8 : INV	PORT MAP(
	O => N001430, 
	I => R
);
U9 : INV	PORT MAP(
	O => N001440, 
	I => CI
);
U24 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => N00008, 
	I2 => D0, 
	O => N00043
);
U25 : XOR2	PORT MAP(
	I1 => N00029, 
	I0 => N00050, 
	O => N00047
);
U26 : AND3B2	PORT MAP(
	I0 => R, 
	I1 => N00008, 
	I2 => N00046, 
	O => N00052
);
U27 : OR2	PORT MAP(
	I1 => N00043, 
	I0 => N00052, 
	O => N00050
);
U29 : AND3	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => N00046, 
	O => N00056
);
U30 : AND3	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => CI, 
	O => N00060
);
U31 : OR5	PORT MAP(
	I4 => N00056, 
	I3 => N00060, 
	I2 => N00065, 
	I1 => N00068, 
	I0 => N00074, 
	O => CO
);
U32 : AND3B2	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => N00046, 
	O => N00065
);
U33 : AND3B2	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => CI, 
	O => N00068
);
U34 : AND2	PORT MAP(
	I0 => N00046, 
	I1 => CI, 
	O => N00074
);
U10 : AND6	PORT MAP(
	I0 => N001480, 
	I1 => N001470, 
	I2 => N001460, 
	I3 => N001450, 
	I4 => N001440, 
	I5 => N00003, 
	O => N00020
);
U11 : INV	PORT MAP(
	O => N001450, 
	I => ADD
);
U12 : INV	PORT MAP(
	O => N001460, 
	I => N00008
);
U28 : FD	PORT MAP(
	D => N00047, 
	C => C, 
	Q => N00046
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

COMPONENT XOR4
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

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I0, 
	I2 => I1, 
	I1 => I2, 
	I0 => I3, 
	O => N00004
);
U2 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00010, 
	O => O
);
U3 : XOR3	PORT MAP(
	I2 => I4, 
	I1 => I5, 
	I0 => I6, 
	O => N00010
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U9 : INV	PORT MAP(
	O => GB, 
	I => G
);
U10 : GND	PORT MAP(
	G => N00006
);
U3 : FDCE	PORT MAP(
	D => D3, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q3
);
U4 : FDCE	PORT MAP(
	D => D4, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q4
);
U5 : FDCE	PORT MAP(
	D => D5, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q5
);
U6 : FDCE	PORT MAP(
	D => D6, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q6
);
U7 : FDCE	PORT MAP(
	D => D7, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q7
);
U8 : FDCE	PORT MAP(
	D => D8, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q8
);
U1 : FDCE	PORT MAP(
	D => D1, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q1
);
U2 : FDCE	PORT MAP(
	D => D2, 
	CE => GB, 
	C => CK, 
	CLR => N00006, 
	Q => Q2
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
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

COMPONENT OR8
	PORT (
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

COMPONENT NAND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR7
	PORT (
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR6
	PORT (
	I5 : IN std_logic;
	I4 : IN std_logic;
	I3 : IN std_logic;
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00090 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00229 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00237 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00234 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00197 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00242 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00232 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00206 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00224 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00216 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00211 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00185 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00209 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00207 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00244 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00221 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00218 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00227 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00008;
QB<=N00007;
QC<=N00006;
QD<=N00005;
U77 : INV	PORT MAP(
	O => N00242, 
	I => N00007
);
U45 : AND6	PORT MAP(
	I0 => N00147, 
	I1 => N00006, 
	I2 => N00144, 
	I3 => U_D, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00142
);
U13 : AND2B1	PORT MAP(
	I0 => N00024, 
	I1 => A, 
	O => N00042
);
U78 : INV	PORT MAP(
	O => N00244, 
	I => N00006
);
U46 : INV	PORT MAP(
	O => N00144, 
	I => N00008
);
U14 : AND7	PORT MAP(
	I0 => N00005, 
	I1 => N00060, 
	I2 => N00058, 
	I3 => N00055, 
	I4 => N00053, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00056
);
U79 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00005, 
	I2 => N00024, 
	O => N00234
);
U47 : INV	PORT MAP(
	O => N00147, 
	I => N00005
);
U15 : INV	PORT MAP(
	O => N00053, 
	I => U_D
);
U48 : AND6	PORT MAP(
	I0 => N00159, 
	I1 => N00006, 
	I2 => N00154, 
	I3 => U_D, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00151
);
U16 : INV	PORT MAP(
	O => N00055, 
	I => N00008
);
U49 : INV	PORT MAP(
	O => N00154, 
	I => N00007
);
U17 : INV	PORT MAP(
	O => N00058, 
	I => N00007
);
U18 : INV	PORT MAP(
	O => N00060, 
	I => N00006
);
U19 : AND7	PORT MAP(
	I0 => N00073, 
	I1 => N00006, 
	I2 => N00070, 
	I3 => N00067, 
	I4 => N00065, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00068
);
U80 : AND2B1	PORT MAP(
	I0 => N00024, 
	I1 => D, 
	O => N00238
);
U1 : OR2	PORT MAP(
	I1 => ENT, 
	I0 => N00004, 
	O => N00003
);
U2 : OR2	PORT MAP(
	I1 => ENP, 
	I0 => N00004, 
	O => N00010
);
U50 : OR8	PORT MAP(
	I7 => N00121, 
	I6 => N00133, 
	I5 => N00142, 
	I4 => N00151, 
	I3 => N00164, 
	I2 => N00166, 
	I1 => N00170, 
	I0 => N00172, 
	O => N00161
);
U3 : NAND5B3	PORT MAP(
	I0 => N00006, 
	I1 => N00007, 
	I2 => N00003, 
	I3 => N00005, 
	I4 => N00008, 
	O => RCO
);
U51 : INV	PORT MAP(
	O => N00159, 
	I => N00005
);
U4 : GND	PORT MAP(
	G => N00004
);
U20 : INV	PORT MAP(
	O => N00065, 
	I => U_D
);
U5 : AND2B2	PORT MAP(
	I0 => N00010, 
	I1 => N00003, 
	O => N00015
);
U53 : AND6	PORT MAP(
	I0 => N00176, 
	I1 => N00006, 
	I2 => N00008, 
	I3 => N00169, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00164
);
U21 : INV	PORT MAP(
	O => N00067, 
	I => N00008
);
U6 : AND5B3	PORT MAP(
	I0 => N00006, 
	I1 => N00007, 
	I2 => N00008, 
	I3 => N00024, 
	I4 => N00015, 
	O => N00026
);
U54 : INV	PORT MAP(
	O => N00169, 
	I => U_D
);
U22 : INV	PORT MAP(
	O => N00070, 
	I => N00007
);
U7 : VCC	PORT MAP(
	P => N00029
);
U55 : INV	PORT MAP(
	O => N00176, 
	I => N00005
);
U23 : INV	PORT MAP(
	O => N00073, 
	I => N00005
);
U8 : AND2	PORT MAP(
	I0 => LOAD, 
	I1 => N00029, 
	O => N00024
);
U56 : AND6	PORT MAP(
	I0 => N00185, 
	I1 => N00006, 
	I2 => N00007, 
	I3 => N00180, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00166
);
U24 : AND6	PORT MAP(
	I0 => N00082, 
	I1 => N00080, 
	I2 => N00008, 
	I3 => U_D, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00077
);
U9 : AND4B2	PORT MAP(
	I0 => N00005, 
	I1 => N00008, 
	I2 => N00024, 
	I3 => N00015, 
	O => N00033
);
U57 : INV	PORT MAP(
	O => N00180, 
	I => U_D
);
U25 : INV	PORT MAP(
	O => N00080, 
	I => N00007
);
U58 : INV	PORT MAP(
	O => N00185, 
	I => N00005
);
U26 : INV	PORT MAP(
	O => N00082, 
	I => N00005
);
U59 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00006, 
	I2 => N00024, 
	O => N00170
);
U27 : AND6	PORT MAP(
	I0 => N00099, 
	I1 => N00007, 
	I2 => N00093, 
	I3 => U_D, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00089
);
U28 : OR7	PORT MAP(
	I6 => N00056, 
	I5 => N00068, 
	I4 => N00077, 
	I3 => N00089, 
	I2 => N00094, 
	I1 => N00096, 
	I0 => N00100, 
	O => N00090
);
U60 : AND2B1	PORT MAP(
	I0 => N00024, 
	I1 => C, 
	O => N00172
);
U61 : AND7	PORT MAP(
	I0 => N00201, 
	I1 => N00006, 
	I2 => N00007, 
	I3 => N00008, 
	I4 => U_D, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00197
);
U62 : INV	PORT MAP(
	O => N00201, 
	I => N00005
);
U30 : INV	PORT MAP(
	O => N00093, 
	I => N00008
);
U63 : AND7	PORT MAP(
	I0 => N00005, 
	I1 => N00211, 
	I2 => N00209, 
	I3 => N00206, 
	I4 => U_D, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00207
);
U31 : INV	PORT MAP(
	O => N00099, 
	I => N00005
);
U64 : INV	PORT MAP(
	O => N00206, 
	I => N00008
);
U32 : AND6	PORT MAP(
	I0 => N00109, 
	I1 => N00007, 
	I2 => N00008, 
	I3 => N00104, 
	I4 => N00024, 
	I5 => N00015, 
	O => N00094
);
U65 : INV	PORT MAP(
	O => N00209, 
	I => N00007
);
U33 : INV	PORT MAP(
	O => N00104, 
	I => U_D
);
U66 : INV	PORT MAP(
	O => N00211, 
	I => N00006
);
U34 : INV	PORT MAP(
	O => N00109, 
	I => N00005
);
U67 : AND7	PORT MAP(
	I0 => N00227, 
	I1 => N00224, 
	I2 => N00221, 
	I3 => N00218, 
	I4 => N00216, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00219
);
U35 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00007, 
	I2 => N00024, 
	O => N00096
);
U68 : INV	PORT MAP(
	O => N00216, 
	I => U_D
);
U36 : AND2B1	PORT MAP(
	I0 => N00024, 
	I1 => B, 
	O => N00100
);
U69 : INV	PORT MAP(
	O => N00218, 
	I => N00008
);
U37 : AND7	PORT MAP(
	I0 => N00126, 
	I1 => N00124, 
	I2 => N00007, 
	I3 => N00008, 
	I4 => U_D, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00121
);
U38 : INV	PORT MAP(
	O => N00124, 
	I => N00006
);
U39 : INV	PORT MAP(
	O => N00126, 
	I => N00005
);
U70 : INV	PORT MAP(
	O => N00221, 
	I => N00007
);
U71 : INV	PORT MAP(
	O => N00224, 
	I => N00006
);
U72 : OR6	PORT MAP(
	I5 => N00197, 
	I4 => N00207, 
	I3 => N00219, 
	I2 => N00232, 
	I1 => N00234, 
	I0 => N00238, 
	O => N00229
);
U40 : AND7	PORT MAP(
	I0 => N00005, 
	I1 => N00137, 
	I2 => N00135, 
	I3 => N00132, 
	I4 => N00130, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00133
);
U73 : INV	PORT MAP(
	O => N00227, 
	I => N00005
);
U41 : INV	PORT MAP(
	O => N00130, 
	I => U_D
);
U42 : INV	PORT MAP(
	O => N00132, 
	I => N00008
);
U10 : OR4	PORT MAP(
	I3 => N00026, 
	I2 => N00033, 
	I1 => N00040, 
	I0 => N00042, 
	O => N00038
);
U75 : AND7	PORT MAP(
	I0 => N00005, 
	I1 => N00244, 
	I2 => N00242, 
	I3 => N00008, 
	I4 => N00237, 
	I5 => N00024, 
	I6 => N00015, 
	O => N00232
);
U43 : INV	PORT MAP(
	O => N00135, 
	I => N00007
);
U76 : INV	PORT MAP(
	O => N00237, 
	I => U_D
);
U44 : INV	PORT MAP(
	O => N00137, 
	I => N00006
);
U12 : AND3B1	PORT MAP(
	I0 => N00015, 
	I1 => N00008, 
	I2 => N00024, 
	O => N00040
);
U11 : FD	PORT MAP(
	D => N00038, 
	C => CK, 
	Q => N00008
);
U29 : FD	PORT MAP(
	D => N00090, 
	C => CK, 
	Q => N00007
);
U52 : FD	PORT MAP(
	D => N00161, 
	C => CK, 
	Q => N00006
);
U74 : FD	PORT MAP(
	D => N00229, 
	C => CK, 
	Q => N00005
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
U5 : INV	PORT MAP(
	O => E, 
	I => G
);
U3 : M2_1E	PORT MAP(
	D0 => A3, 
	D1 => B3, 
	S0 => S, 
	O => Y3, 
	E => E
);
U4 : M2_1E	PORT MAP(
	D0 => A4, 
	D1 => B4, 
	S0 => S, 
	O => Y4, 
	E => E
);
U1 : M2_1E	PORT MAP(
	D0 => A1, 
	D1 => B1, 
	S0 => S, 
	O => Y1, 
	E => E
);
U2 : M2_1E	PORT MAP(
	D0 => A2, 
	D1 => B2, 
	S0 => S, 
	O => Y2, 
	E => E
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB4RLE IS PORT (
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
); END CB4RLE;



ARCHITECTURE STRUCTURE OF CB4RLE IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2RLE	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00019, 
	I1 => N00008, 
	O => TC
);
U1 : CB2RLE	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	L => L, 
	CE => CE, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2RLE	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	L => L, 
	CE => N00006, 
	C => C, 
	R => R, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => CEO, 
	TC => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY BUF8 IS PORT (
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
); END BUF8;



ARCHITECTURE STRUCTURE OF BUF8 IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : BUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : BUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : BUF	PORT MAP(
	O => O3, 
	I => I3
);
U5 : BUF	PORT MAP(
	O => O4, 
	I => I4
);
U6 : BUF	PORT MAP(
	O => O5, 
	I => I5
);
U7 : BUF	PORT MAP(
	O => O6, 
	I => I6
);
U8 : BUF	PORT MAP(
	O => O7, 
	I => I7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY BUF16 IS PORT (
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
); END BUF16;



ARCHITECTURE STRUCTURE OF BUF16 IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : BUF	PORT MAP(
	O => O12, 
	I => I12
);
U14 : BUF	PORT MAP(
	O => O13, 
	I => I13
);
U15 : BUF	PORT MAP(
	O => O14, 
	I => I14
);
U16 : BUF	PORT MAP(
	O => O15, 
	I => I15
);
U1 : BUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : BUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : BUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : BUF	PORT MAP(
	O => O3, 
	I => I3
);
U5 : BUF	PORT MAP(
	O => O4, 
	I => I4
);
U6 : BUF	PORT MAP(
	O => O5, 
	I => I5
);
U7 : BUF	PORT MAP(
	O => O6, 
	I => I6
);
U8 : BUF	PORT MAP(
	O => O7, 
	I => I7
);
U9 : BUF	PORT MAP(
	O => O8, 
	I => I8
);
U10 : BUF	PORT MAP(
	O => O9, 
	I => I9
);
U11 : BUF	PORT MAP(
	O => O10, 
	I => I10
);
U12 : BUF	PORT MAP(
	O => O11, 
	I => I11
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU4X1 IS PORT (
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
	CO : OUT std_logic
); END ADSU4X1;



ARCHITECTURE STRUCTURE OF ADSU4X1 IS

-- COMPONENTS

COMPONENT ADSU1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADSU1X1	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : ADSU1X2	PORT MAP(
	CI => N00012, 
	A0 => A2, 
	B0 => B2, 
	ADD => ADD, 
	S0 => S2, 
	CO => N00019
);
U4 : ADSU1X2	PORT MAP(
	CI => N00019, 
	A0 => A3, 
	B0 => B3, 
	ADD => ADD, 
	S0 => S3, 
	CO => CO
);
U1 : ADSU1X1	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	ADD => ADD, 
	S0 => S0, 
	CO => N00005
);
U2 : ADSU1X2	PORT MAP(
	CI => N00005, 
	A0 => A1, 
	B0 => B1, 
	ADD => ADD, 
	S0 => S1, 
	CO => N00012
);
END STRUCTURE;

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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00024 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00007;
QB<=N00013;
QC<=N00020;
QD<=N00017;
U13 : AND2	PORT MAP(
	I0 => N00020, 
	I1 => N00013, 
	O => N00042
);
U1 : INV	PORT MAP(
	O => N00004, 
	I => CKA
);
U2 : INV	PORT MAP(
	O => N00006, 
	I => CKB
);
U3 : INV	PORT MAP(
	O => N00009, 
	I => N00007
);
U5 : NOR2	PORT MAP(
	I1 => N00013, 
	I0 => N00017, 
	O => N00015
);
U7 : XOR2	PORT MAP(
	I1 => N00020, 
	I0 => N00024, 
	O => N00022
);
U9 : AND2B1	PORT MAP(
	I0 => N00017, 
	I1 => N00013, 
	O => N00024
);
U10 : XOR2	PORT MAP(
	I1 => N00017, 
	I0 => N00035, 
	O => N00031
);
U12 : OR2	PORT MAP(
	I1 => N00017, 
	I0 => N00042, 
	O => N00035
);
U11 : FDC	PORT MAP(
	D => N00031, 
	C => N00006, 
	CLR => CLR, 
	Q => N00017
);
U4 : FDC	PORT MAP(
	D => N00009, 
	C => N00004, 
	CLR => CLR, 
	Q => N00007
);
U6 : FDC	PORT MAP(
	D => N00015, 
	C => N00006, 
	CLR => CLR, 
	Q => N00013
);
U8 : FDC	PORT MAP(
	D => N00022, 
	C => N00006, 
	CLR => CLR, 
	Q => N00020
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

COMPONENT XNOR9	 PORT (
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
); END COMPONENT;

COMPONENT XOR9	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : XNOR9	PORT MAP(
	I8 => A, 
	I7 => B, 
	I6 => C, 
	I5 => D, 
	I4 => E, 
	I3 => F, 
	I2 => G, 
	I1 => H, 
	I0 => I, 
	O => EVEN
);
U2 : XOR9	PORT MAP(
	I8 => A, 
	I7 => B, 
	I6 => C, 
	I5 => D, 
	I4 => E, 
	I3 => F, 
	I2 => G, 
	I1 => H, 
	I0 => I, 
	O => ODD
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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDR6 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00005;
Q2<=N00018;
Q3<=N00031;
Q4<=N00044;
Q5<=N00057;
Q6<=N00070;
Q7<=N00083;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U26 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U22 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U3 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U11 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U12 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U23 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U4 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U24 : FDCE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00083
);
U5 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U13 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U25 : M2_1	PORT MAP(
	D0 => N00070, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U6 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00005
);
U14 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U7 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U15 : FDCE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00044
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U16 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U9 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U17 : M2_1	PORT MAP(
	D0 => N00070, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U18 : FDCE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U19 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U20 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U21 : FDCE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00070
);
U2 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U10 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
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
SIGNAL MD2 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00138 : std_logic;

-- GATE INSTANCES

BEGIN
MD12<=L_OR_CE;
Q0<=N00011;
Q1<=N00029;
Q2<=N00047;
Q3<=N00065;
Q4<=N00083;
Q5<=N00101;
Q6<=N00119;
Q7<=N00006;
Q8<=N00008;
Q9<=N00026;
Q10<=N00044;
Q11<=N00062;
Q12<=N00080;
Q13<=N00098;
Q14<=N00116;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U11 : FDCE	PORT MAP(
	D => MD10, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00044
);
U22 : M2_1	PORT MAP(
	D0 => N00080, 
	D1 => N00102, 
	S0 => L, 
	O => MD13
);
U33 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00006
);
U3 : FDCE	PORT MAP(
	D => MD8, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U23 : FDCE	PORT MAP(
	D => MD13, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00098
);
U4 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => N00014, 
	S0 => L, 
	O => MD0
);
U12 : M2_1	PORT MAP(
	D0 => N00029, 
	D1 => N00050, 
	S0 => L, 
	O => MD2
);
U5 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U13 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00047
);
U24 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => N00104, 
	S0 => L, 
	O => MD5
);
U6 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => N00030, 
	S0 => L, 
	O => MD9
);
U14 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => N00066, 
	S0 => L, 
	O => MD11
);
U25 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00101
);
U15 : FDCE	PORT MAP(
	D => MD11, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00062
);
U26 : M2_1	PORT MAP(
	D0 => N00098, 
	D1 => N00120, 
	S0 => L, 
	O => MD14
);
U7 : FDCE	PORT MAP(
	D => MD9, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00026
);
U27 : FDCE	PORT MAP(
	D => MD14, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00116
);
U8 : M2_1	PORT MAP(
	D0 => N00011, 
	D1 => N00032, 
	S0 => L, 
	O => MD1
);
U16 : M2_1	PORT MAP(
	D0 => N00047, 
	D1 => N00068, 
	S0 => L, 
	O => MD3
);
U9 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00029
);
U17 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00065
);
U28 : M2_1	PORT MAP(
	D0 => N00101, 
	D1 => N00122, 
	S0 => L, 
	O => MD6
);
U18 : M2_1	PORT MAP(
	D0 => N00062, 
	D1 => N00084, 
	S0 => L, 
	O => N00079
);
U29 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00119
);
U19 : FDCE	PORT MAP(
	D => N00079, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00080
);
U30 : M2_1	PORT MAP(
	D0 => N00116, 
	D1 => N00138, 
	S0 => L, 
	O => MD15
);
U31 : FDCE	PORT MAP(
	D => MD15, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U20 : M2_1	PORT MAP(
	D0 => N00065, 
	D1 => N00086, 
	S0 => L, 
	O => MD4
);
U2 : M2_1	PORT MAP(
	D0 => N00006, 
	D1 => N00012, 
	S0 => L, 
	O => MD8
);
U10 : M2_1	PORT MAP(
	D0 => N00026, 
	D1 => N00048, 
	S0 => L, 
	O => MD10
);
U21 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00083
);
U32 : M2_1	PORT MAP(
	D0 => N00119, 
	D1 => N00140, 
	S0 => L, 
	O => MD7
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
U1 : OPAD	PORT MAP(
	OPAD => O0
);
U2 : OPAD	PORT MAP(
	OPAD => O1
);
U3 : OPAD	PORT MAP(
	OPAD => O2
);
U4 : OPAD	PORT MAP(
	OPAD => O3
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
SIGNAL N00074 : std_logic;
SIGNAL N00077 : std_logic;

-- GATE INSTANCES

BEGIN
U11 : OFDE	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5
);
U3 : OFDE	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1
);
U4 : OFDE	PORT MAP(
	E => E, 
	D => D9, 
	C => C, 
	O => O9
);
U12 : OFDE	PORT MAP(
	E => E, 
	D => D13, 
	C => C, 
	O => O13
);
U13 : OFDE	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6
);
U5 : OFDE	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2
);
U6 : OFDE	PORT MAP(
	E => E, 
	D => D10, 
	C => C, 
	O => O10
);
U14 : OFDE	PORT MAP(
	E => E, 
	D => D14, 
	C => C, 
	O => O14
);
U15 : OFDE	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7
);
U7 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U8 : OFDE	PORT MAP(
	E => E, 
	D => D11, 
	C => C, 
	O => O11
);
U16 : OFDE	PORT MAP(
	E => E, 
	D => D15, 
	C => C, 
	O => O15
);
U9 : OFDE	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4
);
U1 : OFDE	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0
);
U2 : OFDE	PORT MAP(
	E => E, 
	D => D8, 
	C => C, 
	O => O8
);
U10 : OFDE	PORT MAP(
	E => E, 
	D => D12, 
	C => C, 
	O => O12
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

COMPONENT AND4B1
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

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
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
SIGNAL N00005 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00017 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND4B1	PORT MAP(
	I0 => S, 
	I1 => K, 
	I2 => N00003, 
	I3 => N00005, 
	O => N00008
);
U4 : AND3B3	PORT MAP(
	I0 => S, 
	I1 => N00003, 
	I2 => N00005, 
	O => N00014
);
U5 : NOR4	PORT MAP(
	I3 => N00008, 
	I2 => N00014, 
	I1 => N00017, 
	I0 => R, 
	O => N00015
);
U7 : AND3B3	PORT MAP(
	I0 => J, 
	I1 => S, 
	I2 => N00005, 
	O => N00017
);
U6 : FD	PORT MAP(
	D => N00015, 
	C => C, 
	Q => N00005
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
SIGNAL N00005 : std_logic;
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => N00003
);
U2 : OR2	PORT MAP(
	I1 => N00003, 
	I0 => S, 
	O => N00005
);
U3 : FD	PORT MAP(
	D => N00005, 
	C => C, 
	Q => Q
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

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FDCP	PORT MAP(
	D => D, 
	C => C, 
	PRE => PRE, 
	Q => Q, 
	CLR => N00006
);
U2 : GND	PORT MAP(
	G => N00006
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
SIGNAL I0B1 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I0B1, 
	O => O
);
U2 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
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
U1 : INV	PORT MAP(
	O => O0, 
	I => I0
);
U2 : INV	PORT MAP(
	O => O1, 
	I => I1
);
U3 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U4 : INV	PORT MAP(
	O => O3, 
	I => I3
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
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
SIGNAL N00006 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND3B2	PORT MAP(
	I0 => R, 
	I1 => N00003, 
	I2 => N00006, 
	O => N00009
);
U4 : AND4B2	PORT MAP(
	I0 => R, 
	I1 => N00006, 
	I2 => N00003, 
	I3 => T, 
	O => N00015
);
U5 : OR4	PORT MAP(
	I3 => N00009, 
	I2 => N00015, 
	I1 => N00018, 
	I0 => S, 
	O => N00016
);
U7 : AND3B2	PORT MAP(
	I0 => T, 
	I1 => R, 
	I2 => N00006, 
	O => N00018
);
U6 : FD	PORT MAP(
	D => N00016, 
	C => C, 
	Q => N00006
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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
SIGNAL N00012 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00009
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => J, 
	I2 => N00003, 
	O => N00011
);
U5 : OR3	PORT MAP(
	I2 => N00009, 
	I1 => N00011, 
	I0 => N00015, 
	O => N00012
);
U7 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => N00005, 
	O => N00015
);
U6 : FDC	PORT MAP(
	D => N00012, 
	C => C, 
	CLR => CLR, 
	Q => N00005
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

COMPONENT FDCE	 PORT (
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
U3 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U4 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U1 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U2 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND9
	PORT (
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
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
SIGNAL N00023 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00173 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00165 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00073 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00160;
Q0<=N00005;
Q1<=N00018;
Q2<=N00037;
Q3<=N00057;
Q4<=N00079;
Q5<=N00103;
Q6<=N00129;
Q7<=N00157;
Q8<=N00006;
Q9<=N00020;
Q10<=N00038;
Q11<=N00058;
Q12<=N00080;
Q13<=N00105;
Q14<=N00131;
U13 : XOR2	PORT MAP(
	I1 => N00037, 
	I0 => N00044, 
	O => N00041
);
U46 : AND8	PORT MAP(
	I0 => N00131, 
	I1 => N00105, 
	I2 => N00080, 
	I3 => N00058, 
	I4 => N00038, 
	I5 => N00020, 
	I6 => N00006, 
	I7 => N00015, 
	O => N00176
);
U14 : AND3	PORT MAP(
	I0 => N00018, 
	I1 => N00005, 
	I2 => N00003, 
	O => N00044
);
U47 : XOR2	PORT MAP(
	I1 => N00160, 
	I0 => N00176, 
	O => N00173
);
U16 : XOR2	PORT MAP(
	I1 => N00038, 
	I0 => N00052, 
	O => N00049
);
U17 : AND3	PORT MAP(
	I0 => N00020, 
	I1 => N00006, 
	I2 => N00015, 
	O => N00052
);
U49 : AND9	PORT MAP(
	I0 => N00157, 
	I1 => N00129, 
	I2 => N00103, 
	I3 => N00079, 
	I4 => N00057, 
	I5 => N00037, 
	I6 => N00018, 
	I7 => N00005, 
	I8 => N00003, 
	O => N00015
);
U19 : AND4	PORT MAP(
	I0 => N00037, 
	I1 => N00018, 
	I2 => N00005, 
	I3 => N00003, 
	O => N00064
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U50 : INV	PORT MAP(
	O => N00012, 
	I => C
);
U3 : XOR2	PORT MAP(
	I1 => N00005, 
	I0 => N00003, 
	O => N00008
);
U5 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => N00015, 
	O => N00013
);
U20 : XOR2	PORT MAP(
	I1 => N00057, 
	I0 => N00064, 
	O => N00062
);
U22 : AND4	PORT MAP(
	I0 => N00038, 
	I1 => N00020, 
	I2 => N00006, 
	I3 => N00015, 
	O => N00073
);
U7 : XOR2	PORT MAP(
	I1 => N00018, 
	I0 => N00025, 
	O => N00023
);
U23 : XOR2	PORT MAP(
	I1 => N00058, 
	I0 => N00073, 
	O => N00070
);
U8 : AND2	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	O => N00025
);
U25 : AND5	PORT MAP(
	I0 => N00057, 
	I1 => N00037, 
	I2 => N00018, 
	I3 => N00005, 
	I4 => N00003, 
	O => N00087
);
U26 : XOR2	PORT MAP(
	I1 => N00079, 
	I0 => N00087, 
	O => N00084
);
U28 : AND5	PORT MAP(
	I0 => N00058, 
	I1 => N00038, 
	I2 => N00020, 
	I3 => N00006, 
	I4 => N00015, 
	O => N00097
);
U29 : XOR2	PORT MAP(
	I1 => N00080, 
	I0 => N00097, 
	O => N00093
);
U31 : AND6	PORT MAP(
	I0 => N00079, 
	I1 => N00057, 
	I2 => N00037, 
	I3 => N00018, 
	I4 => N00005, 
	I5 => N00003, 
	O => N00112
);
U32 : XOR2	PORT MAP(
	I1 => N00103, 
	I0 => N00112, 
	O => N00109
);
U34 : AND6	PORT MAP(
	I0 => N00080, 
	I1 => N00058, 
	I2 => N00038, 
	I3 => N00020, 
	I4 => N00006, 
	I5 => N00015, 
	O => N00121
);
U35 : XOR2	PORT MAP(
	I1 => N00105, 
	I0 => N00121, 
	O => N00118
);
U37 : AND7	PORT MAP(
	I0 => N00103, 
	I1 => N00079, 
	I2 => N00057, 
	I3 => N00037, 
	I4 => N00018, 
	I5 => N00005, 
	I6 => N00003, 
	O => N00139
);
U38 : XOR2	PORT MAP(
	I1 => N00129, 
	I0 => N00139, 
	O => N00135
);
U40 : AND7	PORT MAP(
	I0 => N00105, 
	I1 => N00080, 
	I2 => N00058, 
	I3 => N00038, 
	I4 => N00020, 
	I5 => N00006, 
	I6 => N00015, 
	O => N00149
);
U41 : XOR2	PORT MAP(
	I1 => N00131, 
	I0 => N00149, 
	O => N00145
);
U10 : XOR2	PORT MAP(
	I1 => N00020, 
	I0 => N00032, 
	O => N00030
);
U11 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => N00015, 
	O => N00032
);
U43 : AND8	PORT MAP(
	I0 => N00129, 
	I1 => N00103, 
	I2 => N00079, 
	I3 => N00057, 
	I4 => N00037, 
	I5 => N00018, 
	I6 => N00005, 
	I7 => N00003, 
	O => N00167
);
U44 : XOR2	PORT MAP(
	I1 => N00157, 
	I0 => N00167, 
	O => N00165
);
U33 : FDC	PORT MAP(
	D => N00109, 
	C => N00012, 
	CLR => CLR, 
	Q => N00103
);
U12 : FDC	PORT MAP(
	D => N00030, 
	C => N00012, 
	CLR => CLR, 
	Q => N00020
);
U4 : FDC	PORT MAP(
	D => N00008, 
	C => N00012, 
	CLR => CLR, 
	Q => N00005
);
U45 : FDC	PORT MAP(
	D => N00165, 
	C => N00012, 
	CLR => CLR, 
	Q => N00157
);
U24 : FDC	PORT MAP(
	D => N00070, 
	C => N00012, 
	CLR => CLR, 
	Q => N00058
);
U6 : FDC	PORT MAP(
	D => N00013, 
	C => N00012, 
	CLR => CLR, 
	Q => N00006
);
U36 : FDC	PORT MAP(
	D => N00118, 
	C => N00012, 
	CLR => CLR, 
	Q => N00105
);
U48 : FDC	PORT MAP(
	D => N00173, 
	C => N00012, 
	CLR => CLR, 
	Q => N00160
);
U15 : FDC	PORT MAP(
	D => N00041, 
	C => N00012, 
	CLR => CLR, 
	Q => N00037
);
U27 : FDC	PORT MAP(
	D => N00084, 
	C => N00012, 
	CLR => CLR, 
	Q => N00079
);
U9 : FDC	PORT MAP(
	D => N00023, 
	C => N00012, 
	CLR => CLR, 
	Q => N00018
);
U39 : FDC	PORT MAP(
	D => N00135, 
	C => N00012, 
	CLR => CLR, 
	Q => N00129
);
U18 : FDC	PORT MAP(
	D => N00049, 
	C => N00012, 
	CLR => CLR, 
	Q => N00038
);
U30 : FDC	PORT MAP(
	D => N00093, 
	C => N00012, 
	CLR => CLR, 
	Q => N00080
);
U42 : FDC	PORT MAP(
	D => N00145, 
	C => N00012, 
	CLR => CLR, 
	Q => N00131
);
U21 : FDC	PORT MAP(
	D => N00062, 
	C => N00012, 
	CLR => CLR, 
	Q => N00057
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

COMPONENT OR2B1
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => N00003
);
U2 : AND2	PORT MAP(
	I0 => N00007, 
	I1 => N00003, 
	O => N00005
);
U3 : OR2B1	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => N00007
);
U4 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00011, 
	O => LT
);
U5 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => N00011
);
U6 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00014
);
U7 : AND2	PORT MAP(
	I0 => N00018, 
	I1 => N00014, 
	O => N00016
);
U8 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00018
);
U9 : OR2	PORT MAP(
	I1 => N00016, 
	I0 => N00022, 
	O => GT
);
U10 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00022
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

COMPONENT OR2B1
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00045 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00165 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00177 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00212 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00245 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00209 : std_logic;
SIGNAL N00244 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL N00213 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00195 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00185 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00205 : std_logic;
SIGNAL N00252 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00203 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00217 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00251 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00256 : std_logic;
SIGNAL N00221 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00220 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00168 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00237 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00156 : std_logic;
SIGNAL N00236 : std_logic;
SIGNAL N00227 : std_logic;
SIGNAL N00257 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00188 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00243 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00229 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00235 : std_logic;
SIGNAL N00184 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00234 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00225 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00261 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00228 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00173 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00208 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00197 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00241 : std_logic;
SIGNAL N00412 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U45 : OR2B1	PORT MAP(
	I1 => B6, 
	I0 => A6, 
	O => N00105
);
U13 : OR2B1	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => N00035
);
U77 : AND2B1	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => N00172
);
U46 : AND2B1	PORT MAP(
	I0 => A13, 
	I1 => B13, 
	O => N00110
);
U14 : OR2	PORT MAP(
	I1 => N00028, 
	I0 => N00044, 
	O => N00039
);
U78 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00173
);
U47 : OR2	PORT MAP(
	I1 => N00101, 
	I0 => N00110, 
	O => N00111
);
U15 : OR2	PORT MAP(
	I1 => N00030, 
	I0 => N00045, 
	O => N00040
);
U79 : AND2	PORT MAP(
	I0 => N00180, 
	I1 => N00168, 
	O => N00176
);
U16 : AND2B1	PORT MAP(
	I0 => A9, 
	I1 => B9, 
	O => N00044
);
U48 : AND2B1	PORT MAP(
	I0 => A6, 
	I1 => B6, 
	O => N00112
);
U49 : OR2	PORT MAP(
	I1 => N00103, 
	I0 => N00112, 
	O => N00113
);
U17 : AND2B1	PORT MAP(
	I0 => A2, 
	I1 => B2, 
	O => N00045
);
U18 : AND2	PORT MAP(
	I0 => N00054, 
	I1 => N00039, 
	O => N00049
);
U19 : AND2	PORT MAP(
	I0 => N00055, 
	I1 => N00040, 
	O => N00050
);
U120 : OR2B1	PORT MAP(
	I1 => A15, 
	I0 => B15, 
	O => N00257
);
U121 : OR2	PORT MAP(
	I1 => N00256, 
	I0 => N00261, 
	O => GT
);
U122 : AND2B1	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	O => N00261
);
U1 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => N00005
);
U80 : AND2	PORT MAP(
	I0 => N00181, 
	I1 => N00169, 
	O => N00177
);
U2 : AND2	PORT MAP(
	I0 => N00014, 
	I1 => N00007, 
	O => N00009
);
U81 : OR2B1	PORT MAP(
	I1 => A10, 
	I0 => B10, 
	O => N00180
);
U50 : AND2	PORT MAP(
	I0 => N00120, 
	I1 => N00111, 
	O => N00117
);
U3 : AND2	PORT MAP(
	I0 => N00015, 
	I1 => N00005, 
	O => N00010
);
U82 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00181
);
U51 : AND2	PORT MAP(
	I0 => N00121, 
	I1 => N00113, 
	O => N00119
);
U4 : OR2B1	PORT MAP(
	I1 => B8, 
	I0 => A8, 
	O => N00014
);
U83 : OR2	PORT MAP(
	I1 => N00176, 
	I0 => N00188, 
	O => N00184
);
U20 : OR2B1	PORT MAP(
	I1 => B10, 
	I0 => A10, 
	O => N00054
);
U52 : OR2B1	PORT MAP(
	I1 => B14, 
	I0 => A14, 
	O => N00120
);
U5 : OR2B1	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => N00015
);
U84 : OR2	PORT MAP(
	I1 => N00177, 
	I0 => N00189, 
	O => N00185
);
U6 : OR2	PORT MAP(
	I1 => N00009, 
	I0 => N00024, 
	O => N00019
);
U53 : OR2B1	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => N00121
);
U21 : OR2B1	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => N00055
);
U85 : AND2B1	PORT MAP(
	I0 => B10, 
	I1 => A10, 
	O => N00188
);
U22 : OR2	PORT MAP(
	I1 => N00049, 
	I0 => N00064, 
	O => N00059
);
U54 : OR2	PORT MAP(
	I1 => N00117, 
	I0 => N00127, 
	O => N00131
);
U7 : OR2	PORT MAP(
	I1 => N00010, 
	I0 => N00025, 
	O => N00020
);
U86 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00189
);
U55 : OR2	PORT MAP(
	I1 => N00119, 
	I0 => N00128, 
	O => N00007
);
U8 : AND2B1	PORT MAP(
	I0 => A8, 
	I1 => B8, 
	O => N00024
);
U23 : OR2	PORT MAP(
	I1 => N00050, 
	I0 => N00065, 
	O => N00061
);
U87 : AND2	PORT MAP(
	I0 => N00196, 
	I1 => N00184, 
	O => N00193
);
U24 : AND2B1	PORT MAP(
	I0 => A10, 
	I1 => B10, 
	O => N00064
);
U56 : AND2B1	PORT MAP(
	I0 => A14, 
	I1 => B14, 
	O => N00127
);
U9 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => N00025
);
U88 : AND2	PORT MAP(
	I0 => N00197, 
	I1 => N00185, 
	O => N00195
);
U57 : AND2B1	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => N00128
);
U25 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => N00065
);
U89 : OR2B1	PORT MAP(
	I1 => A11, 
	I0 => B11, 
	O => N00196
);
U26 : AND2	PORT MAP(
	I0 => N00072, 
	I1 => N00059, 
	O => N00069
);
U58 : AND2	PORT MAP(
	I0 => N00134, 
	I1 => N00131, 
	O => N00133
);
U27 : AND2	PORT MAP(
	I0 => N00073, 
	I1 => N00061, 
	O => N00071
);
U59 : OR2B1	PORT MAP(
	I1 => B15, 
	I0 => A15, 
	O => N00134
);
U28 : OR2B1	PORT MAP(
	I1 => B11, 
	I0 => A11, 
	O => N00072
);
U29 : OR2B1	PORT MAP(
	I1 => B4, 
	I0 => A4, 
	O => N00073
);
U100 : OR2	PORT MAP(
	I1 => N00209, 
	I0 => N00221, 
	O => N00219
);
U101 : AND2B1	PORT MAP(
	I0 => B12, 
	I1 => A12, 
	O => N00220
);
U102 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => N00221
);
U103 : AND2	PORT MAP(
	I0 => N00228, 
	I1 => N00217, 
	O => N00225
);
U104 : AND2	PORT MAP(
	I0 => N00229, 
	I1 => N00219, 
	O => N00227
);
U105 : OR2B1	PORT MAP(
	I1 => A13, 
	I0 => B13, 
	O => N00228
);
U106 : OR2B1	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => N00229
);
U107 : AND2B1	PORT MAP(
	I0 => B13, 
	I1 => A13, 
	O => N00234
);
U108 : OR2	PORT MAP(
	I1 => N00225, 
	I0 => N00234, 
	O => N00235
);
U90 : OR2B1	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => N00197
);
U109 : AND2B1	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => N00236
);
U91 : OR2	PORT MAP(
	I1 => N00193, 
	I0 => N00204, 
	O => N00201
);
U60 : OR2	PORT MAP(
	I1 => N00133, 
	I0 => N00138, 
	O => LT
);
U92 : OR2	PORT MAP(
	I1 => N00195, 
	I0 => N00205, 
	O => N00203
);
U61 : AND2B1	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	O => N00138
);
U93 : AND2B1	PORT MAP(
	I0 => B11, 
	I1 => A11, 
	O => N00204
);
U30 : OR2	PORT MAP(
	I1 => N00069, 
	I0 => N00080, 
	O => N00077
);
U62 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00141
);
U94 : AND2B1	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00205
);
U31 : OR2	PORT MAP(
	I1 => N00071, 
	I0 => N00081, 
	O => N00079
);
U63 : AND2	PORT MAP(
	I0 => N00148, 
	I1 => N00143, 
	O => N00144
);
U95 : AND2	PORT MAP(
	I0 => N00212, 
	I1 => N00201, 
	O => N00208
);
U64 : AND2	PORT MAP(
	I0 => N00149, 
	I1 => N00141, 
	O => N00145
);
U32 : AND2B1	PORT MAP(
	I0 => A11, 
	I1 => B11, 
	O => N00080
);
U96 : AND2	PORT MAP(
	I0 => N00213, 
	I1 => N00203, 
	O => N00209
);
U33 : AND2B1	PORT MAP(
	I0 => A4, 
	I1 => B4, 
	O => N00081
);
U65 : OR2B1	PORT MAP(
	I1 => A8, 
	I0 => B8, 
	O => N00148
);
U97 : OR2B1	PORT MAP(
	I1 => A12, 
	I0 => B12, 
	O => N00212
);
U34 : AND2	PORT MAP(
	I0 => N00088, 
	I1 => N00077, 
	O => N00084
);
U66 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00149
);
U98 : OR2B1	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => N00213
);
U35 : AND2	PORT MAP(
	I0 => N00089, 
	I1 => N00079, 
	O => N00085
);
U67 : OR2	PORT MAP(
	I1 => N00144, 
	I0 => N00156, 
	O => N00152
);
U99 : OR2	PORT MAP(
	I1 => N00208, 
	I0 => N00220, 
	O => N00217
);
U68 : OR2	PORT MAP(
	I1 => N00145, 
	I0 => N00157, 
	O => N00153
);
U36 : OR2B1	PORT MAP(
	I1 => B12, 
	I0 => A12, 
	O => N00088
);
U37 : OR2B1	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => N00089
);
U69 : AND2B1	PORT MAP(
	I0 => B8, 
	I1 => A8, 
	O => N00156
);
U38 : OR2	PORT MAP(
	I1 => N00084, 
	I0 => N00096, 
	O => N00093
);
U39 : OR2	PORT MAP(
	I1 => N00085, 
	I0 => N00097, 
	O => N00095
);
U110 : OR2	PORT MAP(
	I1 => N00227, 
	I0 => N00236, 
	O => N00237
);
U111 : AND2	PORT MAP(
	I0 => N00244, 
	I1 => N00235, 
	O => N00241
);
U112 : AND2	PORT MAP(
	I0 => N00245, 
	I1 => N00237, 
	O => N00243
);
U113 : OR2B1	PORT MAP(
	I1 => A14, 
	I0 => B14, 
	O => N00244
);
U114 : OR2B1	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => N00245
);
U115 : OR2	PORT MAP(
	I1 => N00241, 
	I0 => N00251, 
	O => N00412
);
U116 : OR2	PORT MAP(
	I1 => N00243, 
	I0 => N00252, 
	O => N00143
);
U117 : AND2B1	PORT MAP(
	I0 => B14, 
	I1 => A14, 
	O => N00251
);
U118 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => N00252
);
U119 : AND2	PORT MAP(
	I0 => N00257, 
	I1 => N00412, 
	O => N00256
);
U70 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00157
);
U71 : AND2	PORT MAP(
	I0 => N00164, 
	I1 => N00152, 
	O => N00160
);
U40 : AND2B1	PORT MAP(
	I0 => A12, 
	I1 => B12, 
	O => N00096
);
U72 : AND2	PORT MAP(
	I0 => N00165, 
	I1 => N00153, 
	O => N00161
);
U41 : AND2B1	PORT MAP(
	I0 => A5, 
	I1 => B5, 
	O => N00097
);
U73 : OR2B1	PORT MAP(
	I1 => A9, 
	I0 => B9, 
	O => N00164
);
U42 : AND2	PORT MAP(
	I0 => N00104, 
	I1 => N00093, 
	O => N00101
);
U74 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00165
);
U10 : AND2	PORT MAP(
	I0 => N00034, 
	I1 => N00019, 
	O => N00028
);
U43 : AND2	PORT MAP(
	I0 => N00105, 
	I1 => N00095, 
	O => N00103
);
U11 : AND2	PORT MAP(
	I0 => N00035, 
	I1 => N00020, 
	O => N00030
);
U75 : OR2	PORT MAP(
	I1 => N00160, 
	I0 => N00172, 
	O => N00168
);
U12 : OR2B1	PORT MAP(
	I1 => B9, 
	I0 => A9, 
	O => N00034
);
U44 : OR2B1	PORT MAP(
	I1 => B13, 
	I0 => A13, 
	O => N00104
);
U76 : OR2	PORT MAP(
	I1 => N00161, 
	I0 => N00173, 
	O => N00169
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL Q3B : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00010;
Q2<=N00016;
Q3<=N00002;
U1 : INV	PORT MAP(
	O => Q3B, 
	I => N00002
);
U3 : FDCE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U4 : FDCE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00016
);
U5 : FDCE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00002
);
U2 : FDCE	PORT MAP(
	D => Q3B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB2X2 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END CB2X2;



ARCHITECTURE STRUCTURE OF CB2X2 IS

-- COMPONENTS

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT AND4B3
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00034 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
TCD<=N00074;
TCU<=N00064;
Q0<=N00017;
Q1<=N00016;
U13 : AND3B2	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => N00017, 
	O => N00038
);
U14 : AND5B4	PORT MAP(
	I0 => N00017, 
	I1 => N00012, 
	I2 => N00009, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00043
);
U15 : OR2	PORT MAP(
	I1 => N00043, 
	I0 => N00048, 
	O => N00050
);
U16 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => N00017, 
	I3 => N00006, 
	O => N00048
);
U17 : XOR2	PORT MAP(
	I1 => N00050, 
	I0 => N00054, 
	O => N00052
);
U19 : AND3B2	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => N00016, 
	O => N00058
);
U1 : OR2	PORT MAP(
	I1 => CED, 
	I0 => N00004, 
	O => N00003
);
U2 : OR2	PORT MAP(
	I1 => CEU, 
	I0 => N00004, 
	O => N00006
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00004, 
	O => N00009
);
U4 : OR2	PORT MAP(
	I1 => R, 
	I0 => N00004, 
	O => N00012
);
U5 : GND	PORT MAP(
	G => N00004
);
U20 : OR2	PORT MAP(
	I1 => N00058, 
	I0 => N00063, 
	O => N00054
);
U6 : AND4B3	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00020
);
U21 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => D1, 
	O => N00063
);
U7 : OR2	PORT MAP(
	I1 => N00020, 
	I0 => N00025, 
	O => N00027
);
U22 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00017, 
	O => N00064
);
U23 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => N00064, 
	O => CEOU
);
U8 : AND3B2	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => N00006, 
	O => N00025
);
U9 : XOR2	PORT MAP(
	I1 => N00027, 
	I0 => N00030, 
	O => N00028
);
U24 : AND3B2	PORT MAP(
	I0 => D1, 
	I1 => D0, 
	I2 => N00009, 
	O => N00071
);
U25 : AND3B1	PORT MAP(
	I0 => N00006, 
	I1 => N00074, 
	I2 => N00003, 
	O => CEOD
);
U26 : AND5B5	PORT MAP(
	I0 => N00016, 
	I1 => N00017, 
	I2 => N00009, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00080
);
U27 : NOR5	PORT MAP(
	I4 => N00012, 
	I3 => N00071, 
	I2 => N00080, 
	I1 => N00089, 
	I0 => N00091, 
	O => N00086
);
U29 : INV	PORT MAP(
	O => N00074, 
	I => N00087
);
U30 : AND5B3	PORT MAP(
	I0 => N00016, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00017, 
	I4 => N00003, 
	O => N00089
);
U31 : AND4B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00016, 
	I3 => N00017, 
	O => N00091
);
U11 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => D0, 
	I2 => N00009, 
	O => N00034
);
U12 : OR2	PORT MAP(
	I1 => N00034, 
	I0 => N00038, 
	O => N00030
);
U28 : FD	PORT MAP(
	D => N00086, 
	C => C, 
	Q => N00087
);
U18 : FD	PORT MAP(
	D => N00052, 
	C => C, 
	Q => N00016
);
U10 : FD	PORT MAP(
	D => N00028, 
	C => C, 
	Q => N00017
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

COMPONENT AND4B2
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT ADSU1	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00034 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
S3<=N00025;
U5 : AND4B2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	I2 => ADD, 
	I3 => N00025, 
	O => N00034
);
U6 : AND4B1	PORT MAP(
	I0 => N00025, 
	I1 => ADD, 
	I2 => B3, 
	I3 => A3, 
	O => N00039
);
U7 : OR4	PORT MAP(
	I3 => N00034, 
	I2 => N00039, 
	I1 => N00045, 
	I0 => N00052, 
	O => OFL
);
U8 : AND4B2	PORT MAP(
	I0 => A3, 
	I1 => ADD, 
	I2 => N00025, 
	I3 => B3, 
	O => N00045
);
U9 : AND4B3	PORT MAP(
	I0 => ADD, 
	I1 => B3, 
	I2 => N00025, 
	I3 => A3, 
	O => N00052
);
U3 : ADSU1	PORT MAP(
	CI => N00013, 
	A0 => A2, 
	B0 => B2, 
	ADD => ADD, 
	S0 => S2, 
	CO => N00020
);
U4 : ADSU1	PORT MAP(
	CI => N00020, 
	A0 => A3, 
	B0 => B3, 
	ADD => ADD, 
	S0 => N00025, 
	CO => CO
);
U1 : ADSU1	PORT MAP(
	CI => CI, 
	A0 => A0, 
	B0 => B0, 
	ADD => ADD, 
	S0 => S0, 
	CO => N00006
);
U2 : ADSU1	PORT MAP(
	CI => N00006, 
	A0 => A1, 
	B0 => B1, 
	ADD => ADD, 
	S0 => S1, 
	CO => N00013
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD1X1 IS PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END ADD1X1;



ARCHITECTURE STRUCTURE OF ADD1X1 IS

-- COMPONENTS

COMPONENT XOR2
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

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => S0
);
U2 : AND2	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => CO
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC1X1 IS PORT (
	B0 : IN std_logic;
	D0 : IN std_logic;
	L : IN std_logic;
	ADD : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END ACC1X1;



ARCHITECTURE STRUCTURE OF ACC1X1 IS

-- COMPONENTS

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
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
SIGNAL N00026 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00018;
U13 : OR3	PORT MAP(
	I2 => N00026, 
	I1 => N00029, 
	I0 => N00033, 
	O => CO
);
U14 : AND2B2	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	O => N00033
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : GND	PORT MAP(
	G => N00007
);
U5 : AND4B2	PORT MAP(
	I0 => R, 
	I1 => N00006, 
	I2 => B0, 
	I3 => N00003, 
	O => N00010
);
U6 : OR2	PORT MAP(
	I1 => N00010, 
	I0 => N00016, 
	O => N00013
);
U7 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D0, 
	I2 => N00006, 
	O => N00016
);
U8 : XOR2	PORT MAP(
	I1 => N00013, 
	I0 => N00022, 
	O => N00019
);
U9 : AND3B2	PORT MAP(
	I0 => R, 
	I1 => N00006, 
	I2 => N00018, 
	O => N00022
);
U11 : AND2	PORT MAP(
	I0 => B0, 
	I1 => N00018, 
	O => N00026
);
U12 : AND2B1	PORT MAP(
	I0 => ADD, 
	I1 => N00018, 
	O => N00029
);
U10 : FD	PORT MAP(
	D => N00019, 
	C => C, 
	Q => N00018
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

COMPONENT XOR3
	PORT (
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I0, 
	I1 => I1, 
	I0 => I2, 
	O => N00004
);
U2 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00009, 
	O => O
);
U3 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I4, 
	I0 => I5, 
	O => N00009
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
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
SIGNAL MDL2 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00278 : std_logic;
SIGNAL N00275 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL MDR0 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00164;
Q0<=N00007;
Q1<=N00005;
Q2<=N00031;
Q3<=N00057;
Q4<=N00083;
Q5<=N00109;
Q6<=N00135;
Q7<=N00014;
Q8<=N00010;
Q9<=N00008;
Q10<=N00034;
Q11<=N00060;
Q12<=N00086;
Q13<=N00112;
Q14<=N00138;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U50 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U3 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U11 : FDCE	PORT MAP(
	D => MDR9, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U33 : FDCE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00109
);
U22 : M2_1	PORT MAP(
	D0 => N00086, 
	D1 => MDL11, 
	S0 => L_LEFT, 
	O => MDR11
);
U44 : M2_1	PORT MAP(
	D0 => N00010, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U23 : FDCE	PORT MAP(
	D => MDR11, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U45 : FDCE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U4 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => MDL8, 
	S0 => L_LEFT, 
	O => MDR8
);
U34 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => MDL13, 
	S0 => L_LEFT, 
	O => MDR13
);
U12 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U13 : M2_1	PORT MAP(
	D0 => N00010, 
	D1 => D9, 
	S0 => L, 
	O => MDL9
);
U5 : FDCE	PORT MAP(
	D => MDR8, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U35 : FDCE	PORT MAP(
	D => MDR13, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00112
);
U46 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL15, 
	S0 => L_LEFT, 
	O => MDR15
);
U24 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U47 : FDCE	PORT MAP(
	D => MDR15, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00164
);
U25 : M2_1	PORT MAP(
	D0 => N00034, 
	D1 => D11, 
	S0 => L, 
	O => MDL11
);
U14 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U6 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U36 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U15 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U7 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => D8, 
	S0 => L, 
	O => MDL8
);
U37 : M2_1	PORT MAP(
	D0 => N00086, 
	D1 => D13, 
	S0 => L, 
	O => MDL13
);
U26 : M2_1	PORT MAP(
	D0 => N00109, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U48 : M2_1	PORT MAP(
	D0 => N00135, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U49 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => D15, 
	S0 => L, 
	O => MDL15
);
U27 : FDCE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00083
);
U16 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => MDL10, 
	S0 => L_LEFT, 
	O => MDR10
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U38 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U9 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00005
);
U17 : FDCE	PORT MAP(
	D => MDR10, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00034
);
U39 : FDCE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00135
);
U28 : M2_1	PORT MAP(
	D0 => N00112, 
	D1 => MDL12, 
	S0 => L_LEFT, 
	O => MDR12
);
U29 : FDCE	PORT MAP(
	D => MDR12, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00086
);
U18 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U19 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => D10, 
	S0 => L, 
	O => MDL10
);
U40 : M2_1	PORT MAP(
	D0 => N00164, 
	D1 => MDL14, 
	S0 => L_LEFT, 
	O => MDR14
);
U41 : FDCE	PORT MAP(
	D => MDR14, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00138
);
U30 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U31 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D12, 
	S0 => L, 
	O => MDL12
);
U20 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U42 : M2_1	PORT MAP(
	D0 => N00109, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U21 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U10 : M2_1	PORT MAP(
	D0 => N00034, 
	D1 => MDL9, 
	S0 => L_LEFT, 
	O => MDR9
);
U43 : M2_1	PORT MAP(
	D0 => N00112, 
	D1 => D14, 
	S0 => L, 
	O => MDL14
);
U2 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U32 : M2_1	PORT MAP(
	D0 => N00135, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD8X2 IS PORT (
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
	CO : OUT std_logic
); END ADD8X2;



ARCHITECTURE STRUCTURE OF ADD8X2 IS

-- COMPONENTS

COMPONENT ADD4X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ADD4X2	PORT MAP(
	CI => CI, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	CO => N00012
);
U2 : ADD4X2	PORT MAP(
	CI => N00012, 
	A0 => A4, 
	A1 => A5, 
	A2 => A6, 
	A3 => A7, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	S0 => S4, 
	S1 => S5, 
	S2 => S6, 
	S3 => S7, 
	CO => CO
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00034 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00050 : std_logic;

-- GATE INSTANCES

BEGIN
S3<=N00062;
U13 : AND3	PORT MAP(
	I0 => N00025, 
	I1 => N00013, 
	I2 => N00010, 
	O => N00037
);
U14 : XOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00047
);
U15 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00050
);
U16 : AND3	PORT MAP(
	I0 => N00040, 
	I1 => B1, 
	I2 => A1, 
	O => N00055
);
U17 : OR4	PORT MAP(
	I3 => N00050, 
	I2 => N00055, 
	I1 => N00058, 
	I0 => N00069, 
	O => N00056
);
U18 : AND4	PORT MAP(
	I0 => N00025, 
	I1 => N00040, 
	I2 => B0, 
	I3 => A0, 
	O => N00058
);
U19 : XOR2	PORT MAP(
	I1 => N00056, 
	I0 => N00047, 
	O => N00062
);
U1 : XOR2	PORT MAP(
	I1 => N00010, 
	I0 => N00013, 
	O => S0
);
U2 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00016
);
U3 : OR2	PORT MAP(
	I1 => N00016, 
	I0 => N00019, 
	O => N00017
);
U4 : AND2	PORT MAP(
	I0 => N00013, 
	I1 => N00010, 
	O => N00019
);
U20 : AND4	PORT MAP(
	I0 => N00040, 
	I1 => N00025, 
	I2 => N00013, 
	I3 => N00010, 
	O => N00069
);
U5 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00013
);
U6 : XOR2	PORT MAP(
	I1 => N00017, 
	I0 => N00025, 
	O => S1
);
U21 : AND3B1	PORT MAP(
	I0 => N00062, 
	I1 => B3, 
	I2 => A3, 
	O => N00068
);
U7 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00032
);
U22 : OR2	PORT MAP(
	I1 => N00068, 
	I0 => N00076, 
	O => OFL
);
U23 : AND3B2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	I2 => N00062, 
	O => N00076
);
U8 : XOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00025
);
U24 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00079
);
U9 : AND3	PORT MAP(
	I0 => N00025, 
	I1 => B0, 
	I2 => A0, 
	O => N00034
);
U25 : AND3	PORT MAP(
	I0 => N00047, 
	I1 => A2, 
	I2 => B2, 
	O => N00083
);
U26 : AND4	PORT MAP(
	I0 => N00047, 
	I1 => N00040, 
	I2 => B1, 
	I3 => A1, 
	O => N00088
);
U27 : OR5	PORT MAP(
	I4 => N00079, 
	I3 => N00083, 
	I2 => N00088, 
	I1 => N00091, 
	I0 => N00105, 
	O => CO
);
U28 : AND5	PORT MAP(
	I0 => N00047, 
	I1 => N00040, 
	I2 => N00025, 
	I3 => B0, 
	I4 => A0, 
	O => N00091
);
U29 : OR2	PORT MAP(
	I1 => CI, 
	I0 => N00101, 
	O => N00010
);
U30 : AND5	PORT MAP(
	I0 => N00047, 
	I1 => N00040, 
	I2 => N00025, 
	I3 => N00013, 
	I4 => N00010, 
	O => N00105
);
U31 : GND	PORT MAP(
	G => N00101
);
U10 : OR3	PORT MAP(
	I2 => N00032, 
	I1 => N00034, 
	I0 => N00037, 
	O => N00035
);
U11 : XOR2	PORT MAP(
	I1 => N00035, 
	I0 => N00040, 
	O => S2
);
U12 : XOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00040
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC8X2 IS PORT (
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
	R : IN std_logic
); END ACC8X2;



ARCHITECTURE STRUCTURE OF ACC8X2 IS

-- COMPONENTS

COMPONENT ACC4X2	 PORT (
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
	R : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACC4X2	PORT MAP(
	CI => CI, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	CO => N00012, 
	R => R
);
U2 : ACC4X2	PORT MAP(
	CI => N00012, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q4, 
	Q1 => Q5, 
	Q2 => Q6, 
	Q3 => Q7, 
	CO => CO, 
	R => R
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT AND3B2
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00045 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00200 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00184 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00194 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00177 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00199 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00168 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00132 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00024;
Q1<=N00023;
Q2<=N00022;
Q3<=N00021;
U13 : OR2	PORT MAP(
	I1 => N00034, 
	I0 => N00046, 
	O => N00030
);
U45 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D2, 
	O => N00144
);
U46 : AND5	PORT MAP(
	I0 => N00043, 
	I1 => N00024, 
	I2 => N00122, 
	I3 => N00079, 
	I4 => N00019, 
	O => N00140
);
U14 : XOR2	PORT MAP(
	I1 => N00029, 
	I0 => N00035, 
	O => N00040
);
U47 : OR2	PORT MAP(
	I1 => N00144, 
	I0 => N00153, 
	O => N00139
);
U15 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00043, 
	I3 => N00003, 
	O => N00046
);
U48 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00120, 
	I3 => N00003, 
	O => N00153
);
U49 : AND5	PORT MAP(
	I0 => N00122, 
	I1 => N00079, 
	I2 => N00029, 
	I3 => N00019, 
	I4 => N00009, 
	O => N00159
);
U17 : AND4B2	PORT MAP(
	I0 => B3, 
	I1 => N00021, 
	I2 => N00045, 
	I3 => N00006, 
	O => N00050
);
U18 : AND3	PORT MAP(
	I0 => N00043, 
	I1 => N00024, 
	I2 => N00019, 
	O => N00048
);
U19 : OR2	PORT MAP(
	I1 => N00048, 
	I0 => N00060, 
	O => N00055
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U50 : XNOR2	PORT MAP(
	I1 => B2, 
	I0 => N00006, 
	O => N00120
);
U3 : AND2	PORT MAP(
	I0 => ADD, 
	I1 => N00002, 
	O => N00006
);
U51 : AND3	PORT MAP(
	I0 => N00169, 
	I1 => N00021, 
	I2 => N00019, 
	O => N00168
);
U4 : OR2	PORT MAP(
	I1 => CI, 
	I0 => N00010, 
	O => N00009
);
U52 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00021, 
	O => N00172
);
U20 : AND3	PORT MAP(
	I0 => N00029, 
	I1 => N00019, 
	I2 => N00009, 
	O => N00060
);
U5 : OR2	PORT MAP(
	I1 => R, 
	I0 => N00010, 
	O => N00012
);
U21 : XNOR2	PORT MAP(
	I1 => B0, 
	I0 => N00006, 
	O => N00043
);
U53 : AND4	PORT MAP(
	I0 => N00120, 
	I1 => N00022, 
	I2 => N00175, 
	I3 => N00019, 
	O => N00177
);
U6 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00010, 
	O => N00015
);
U7 : AND3B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00003, 
	O => N00019
);
U54 : XOR2	PORT MAP(
	I1 => N00172, 
	I0 => N00178, 
	O => N00175
);
U22 : AND4B2	PORT MAP(
	I0 => N00021, 
	I1 => N00006, 
	I2 => B3, 
	I3 => N00045, 
	O => N00074
);
U55 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D3, 
	O => N00184
);
U23 : AND3	PORT MAP(
	I0 => N00073, 
	I1 => N00023, 
	I2 => N00019, 
	O => N00072
);
U8 : GND	PORT MAP(
	G => N00010
);
U9 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00024, 
	O => N00027
);
U24 : OR4	PORT MAP(
	I3 => N00050, 
	I2 => N00074, 
	I1 => N00081, 
	I0 => N00107, 
	O => OFL
);
U56 : XOR2	PORT MAP(
	I1 => N00175, 
	I0 => N00138, 
	O => N00045
);
U25 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00023, 
	O => N00078
);
U57 : OR2	PORT MAP(
	I1 => N00184, 
	I0 => N00200, 
	O => N00178
);
U58 : AND5	PORT MAP(
	I0 => N00073, 
	I1 => N00023, 
	I2 => N00175, 
	I3 => N00122, 
	I4 => N00019, 
	O => N00194
);
U26 : XOR2	PORT MAP(
	I1 => N00079, 
	I0 => N00055, 
	O => N00084
);
U59 : OR5	PORT MAP(
	I4 => N00168, 
	I3 => N00177, 
	I2 => N00194, 
	I1 => N00199, 
	I0 => N00219, 
	O => CO
);
U27 : AND4B1	PORT MAP(
	I0 => N00045, 
	I1 => B3, 
	I2 => N00021, 
	I3 => N00006, 
	O => N00081
);
U28 : XOR2	PORT MAP(
	I1 => N00078, 
	I0 => N00088, 
	O => N00079
);
U29 : AND4	PORT MAP(
	I0 => N00043, 
	I1 => N00024, 
	I2 => N00079, 
	I3 => N00019, 
	O => N00089
);
U61 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00169, 
	I3 => N00003, 
	O => N00200
);
U62 : AND6	PORT MAP(
	I0 => N00043, 
	I1 => N00024, 
	I2 => N00175, 
	I3 => N00122, 
	I4 => N00079, 
	I5 => N00019, 
	O => N00199
);
U63 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => N00006, 
	O => N00169
);
U31 : OR3	PORT MAP(
	I2 => N00072, 
	I1 => N00089, 
	I0 => N00095, 
	O => N00090
);
U32 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D1, 
	O => N00098
);
U64 : AND6	PORT MAP(
	I0 => N00009, 
	I1 => N00175, 
	I2 => N00122, 
	I3 => N00079, 
	I4 => N00029, 
	I5 => N00019, 
	O => N00219
);
U33 : OR2	PORT MAP(
	I1 => N00098, 
	I0 => N00108, 
	O => N00088
);
U34 : AND4	PORT MAP(
	I0 => N00079, 
	I1 => N00029, 
	I2 => N00019, 
	I3 => N00009, 
	O => N00095
);
U35 : AND4B3	PORT MAP(
	I0 => N00045, 
	I1 => B3, 
	I2 => N00006, 
	I3 => N00021, 
	O => N00107
);
U36 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00073, 
	I3 => N00003, 
	O => N00108
);
U37 : AND3	PORT MAP(
	I0 => N00120, 
	I1 => N00022, 
	I2 => N00019, 
	O => N00119
);
U38 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => N00006, 
	O => N00073
);
U39 : XOR2	PORT MAP(
	I1 => N00122, 
	I0 => N00090, 
	O => N00125
);
U40 : AND4	PORT MAP(
	I0 => N00073, 
	I1 => N00023, 
	I2 => N00122, 
	I3 => N00019, 
	O => N00129
);
U10 : XOR2	PORT MAP(
	I1 => N00027, 
	I0 => N00030, 
	O => N00029
);
U42 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00022, 
	O => N00132
);
U11 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D0, 
	O => N00034
);
U43 : OR4	PORT MAP(
	I3 => N00119, 
	I2 => N00129, 
	I1 => N00140, 
	I0 => N00159, 
	O => N00138
);
U44 : XOR2	PORT MAP(
	I1 => N00132, 
	I0 => N00139, 
	O => N00122
);
U12 : AND2	PORT MAP(
	I0 => N00019, 
	I1 => N00009, 
	O => N00035
);
U16 : FD	PORT MAP(
	D => N00040, 
	C => C, 
	Q => N00024
);
U60 : FD	PORT MAP(
	D => N00045, 
	C => C, 
	Q => N00021
);
U30 : FD	PORT MAP(
	D => N00084, 
	C => C, 
	Q => N00023
);
U41 : FD	PORT MAP(
	D => N00125, 
	C => C, 
	Q => N00022
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

COMPONENT FDCE	 PORT (
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
SIGNAL N00062 : std_logic;
SIGNAL MDH : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDA : std_logic;
SIGNAL MDF : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL MDB : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL MDE : std_logic;
SIGNAL MDD : std_logic;
SIGNAL MDG : std_logic;
SIGNAL MDC : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00008;
QB<=N00017;
QC<=N00026;
QD<=N00035;
QE<=N00044;
QF<=N00053;
QG<=N00062;
U18 : GND	PORT MAP(
	G => N00013
);
U1 : OR2B1	PORT MAP(
	I1 => CE, 
	I0 => S_L, 
	O => L_OR_CE
);
U11 : FDCE	PORT MAP(
	D => MDE, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00044
);
U3 : FDCE	PORT MAP(
	D => MDA, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00008
);
U12 : M2_1	PORT MAP(
	D0 => F, 
	D1 => N00044, 
	S0 => S_L, 
	O => MDF
);
U4 : M2_1	PORT MAP(
	D0 => B, 
	D1 => N00008, 
	S0 => S_L, 
	O => MDB
);
U5 : FDCE	PORT MAP(
	D => MDB, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00017
);
U13 : FDCE	PORT MAP(
	D => MDF, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00053
);
U14 : M2_1	PORT MAP(
	D0 => G, 
	D1 => N00053, 
	S0 => S_L, 
	O => MDG
);
U6 : M2_1	PORT MAP(
	D0 => C, 
	D1 => N00017, 
	S0 => S_L, 
	O => MDC
);
U7 : FDCE	PORT MAP(
	D => MDC, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00026
);
U15 : FDCE	PORT MAP(
	D => MDG, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00062
);
U16 : M2_1	PORT MAP(
	D0 => H, 
	D1 => N00062, 
	S0 => S_L, 
	O => MDH
);
U8 : M2_1	PORT MAP(
	D0 => D, 
	D1 => N00026, 
	S0 => S_L, 
	O => MDD
);
U9 : FDCE	PORT MAP(
	D => MDD, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => N00035
);
U17 : FDCE	PORT MAP(
	D => MDH, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00013, 
	Q => QH
);
U2 : M2_1	PORT MAP(
	D0 => A, 
	D1 => SI, 
	S0 => S_L, 
	O => MDA
);
U10 : M2_1	PORT MAP(
	D0 => E, 
	D1 => N00035, 
	S0 => S_L, 
	O => MDE
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
SIGNAL MD3 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00008;
Q1<=N00017;
Q2<=N00026;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U3 : FDRE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00008
);
U4 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U5 : FDRE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00017
);
U6 : M2_1	PORT MAP(
	D0 => N00017, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U7 : FDRE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00026
);
U8 : M2_1	PORT MAP(
	D0 => N00026, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U9 : FDRE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => Q3
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
SIGNAL I0B1B : std_logic;
SIGNAL I2B3B : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3B
);
U2 : OR2	PORT MAP(
	I1 => I2B3B, 
	I0 => I0B1B, 
	O => O
);
U3 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
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
U1 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
);
U2 : OR2B1	PORT MAP(
	I1 => I0B1, 
	I0 => I2, 
	O => O
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

COMPONENT XOR3
	PORT (
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

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I0, 
	I1 => I1, 
	I0 => I2, 
	O => N00005
);
U2 : XOR2	PORT MAP(
	I1 => N00005, 
	I0 => N00006, 
	O => N00010
);
U3 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I4, 
	I0 => I5, 
	O => N00006
);
U4 : XNOR2	PORT MAP(
	I1 => N00010, 
	I0 => N00014, 
	O => O
);
U5 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I7, 
	I0 => I8, 
	O => N00014
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

COMPONENT INV
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
SIGNAL N00013 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2B1	PORT MAP(
	I0 => WS, 
	I1 => D1, 
	O => N00031
);
U14 : OR2	PORT MAP(
	I1 => N00031, 
	I0 => N00034, 
	O => N00032
);
U16 : AND2	PORT MAP(
	I0 => WS, 
	I1 => D2, 
	O => N00034
);
U17 : INV	PORT MAP(
	O => N00009, 
	I => CK
);
U1 : AND2B1	PORT MAP(
	I0 => WS, 
	I1 => A1, 
	O => N00004
);
U2 : OR2	PORT MAP(
	I1 => N00004, 
	I0 => N00007, 
	O => N00005
);
U4 : AND2	PORT MAP(
	I0 => WS, 
	I1 => A2, 
	O => N00007
);
U5 : AND2B1	PORT MAP(
	I0 => WS, 
	I1 => B1, 
	O => N00013
);
U6 : OR2	PORT MAP(
	I1 => N00013, 
	I0 => N00016, 
	O => N00014
);
U8 : AND2	PORT MAP(
	I0 => WS, 
	I1 => B2, 
	O => N00016
);
U9 : AND2B1	PORT MAP(
	I0 => WS, 
	I1 => C1, 
	O => N00022
);
U10 : OR2	PORT MAP(
	I1 => N00022, 
	I0 => N00025, 
	O => N00023
);
U12 : AND2	PORT MAP(
	I0 => WS, 
	I1 => C2, 
	O => N00025
);
U3 : FD	PORT MAP(
	D => N00005, 
	C => N00009, 
	Q => QA
);
U11 : FD	PORT MAP(
	D => N00023, 
	C => N00009, 
	Q => QC
);
U7 : FD	PORT MAP(
	D => N00014, 
	C => N00009, 
	Q => QB
);
U15 : FD	PORT MAP(
	D => N00032, 
	C => N00009, 
	Q => QD
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

-- GATE INSTANCES

BEGIN
U3 : OFDE	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2
);
U4 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U5 : OFDE	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4
);
U6 : OFDE	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5
);
U7 : OFDE	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6
);
U8 : OFDE	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7
);
U1 : OFDE	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0
);
U2 : OFDE	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1
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
U1 : AND2B2	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
);
U2 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U3 : AND2B1	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
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
U1 : IOPAD	PORT MAP(
	IOPAD => IO0
);
U2 : IOPAD	PORT MAP(
	IOPAD => IO1
);
U3 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U4 : IOPAD	PORT MAP(
	IOPAD => IO3
);
U5 : IOPAD	PORT MAP(
	IOPAD => IO4
);
U6 : IOPAD	PORT MAP(
	IOPAD => IO5
);
U7 : IOPAD	PORT MAP(
	IOPAD => IO6
);
U8 : IOPAD	PORT MAP(
	IOPAD => IO7
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => N00002, 
	O => N00005
);
U2 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00008, 
	O => N00006
);
U4 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => J, 
	O => N00008
);
U3 : FDC	PORT MAP(
	D => N00006, 
	C => C, 
	CLR => CLR, 
	Q => N00002
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

COMPONENT AND3B2
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

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U1 : VCC	PORT MAP(
	P => N00017
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00017, 
	O => N00002
);
U3 : AND3B2	PORT MAP(
	I0 => R, 
	I1 => N00002, 
	I2 => N00004, 
	O => N00007
);
U4 : OR3	PORT MAP(
	I2 => N00007, 
	I1 => S, 
	I0 => N00014, 
	O => N00010
);
U6 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	I2 => N00002, 
	O => N00014
);
U5 : FD	PORT MAP(
	D => N00010, 
	C => C, 
	Q => N00004
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

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
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
U13 : AND5B2	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	I3 => A3, 
	I4 => A2, 
	O => D12
);
U14 : AND5B1	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D13
);
U15 : AND5B1	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D14
);
U16 : AND5	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D15
);
U1 : AND5B4	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D0
);
U2 : AND5B3	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => A3, 
	I3 => A0, 
	I4 => E, 
	O => D1
);
U3 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A3, 
	I2 => A2, 
	I3 => A1, 
	I4 => E, 
	O => D2
);
U4 : AND5B2	PORT MAP(
	I0 => A2, 
	I1 => A3, 
	I2 => E, 
	I3 => A0, 
	I4 => A1, 
	O => D3
);
U5 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A3, 
	I3 => A2, 
	I4 => E, 
	O => D4
);
U6 : AND5B2	PORT MAP(
	I0 => A3, 
	I1 => A1, 
	I2 => E, 
	I3 => A2, 
	I4 => A0, 
	O => D5
);
U7 : AND5B2	PORT MAP(
	I0 => A3, 
	I1 => A0, 
	I2 => E, 
	I3 => A2, 
	I4 => A1, 
	O => D6
);
U8 : AND5B1	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D7
);
U9 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D8
);
U10 : AND5B2	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => E, 
	I3 => A3, 
	I4 => A0, 
	O => D9
);
U11 : AND5B2	PORT MAP(
	I0 => A0, 
	I1 => A2, 
	I2 => E, 
	I3 => A3, 
	I4 => A1, 
	O => D10
);
U12 : AND5B1	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => A3, 
	I4 => E, 
	O => D11
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

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00041 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00086 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00008;
Q1<=N00007;
Q2<=N00006;
Q3<=N00005;
U14 : AND3B2	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => N00007, 
	O => N00055
);
U15 : AND6	PORT MAP(
	I0 => N00066, 
	I1 => N00064, 
	I2 => N00062, 
	I3 => N00007, 
	I4 => N00008, 
	I5 => N00003, 
	O => N00060
);
U16 : INV	PORT MAP(
	O => N00062, 
	I => N00005
);
U17 : INV	PORT MAP(
	O => N00064, 
	I => N00006
);
U18 : INV	PORT MAP(
	O => N00066, 
	I => R
);
U19 : AND5B3	PORT MAP(
	I0 => N00005, 
	I1 => N00008, 
	I2 => R, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00070
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00005, 
	I2 => N00008, 
	I3 => N00003, 
	O => N00012
);
U4 : AND5B2	PORT MAP(
	I0 => N00007, 
	I1 => N00006, 
	I2 => N00005, 
	I3 => N00008, 
	I4 => N00003, 
	O => CEO
);
U20 : OR4	PORT MAP(
	I3 => N00060, 
	I2 => N00070, 
	I1 => N00077, 
	I0 => N00086, 
	O => N00074
);
U5 : AND5B4	PORT MAP(
	I0 => N00006, 
	I1 => N00007, 
	I2 => R, 
	I3 => N00008, 
	I4 => N00003, 
	O => N00023
);
U6 : OR3	PORT MAP(
	I2 => N00012, 
	I1 => N00023, 
	I0 => N00033, 
	O => N00024
);
U22 : AND5B3	PORT MAP(
	I0 => N00005, 
	I1 => N00007, 
	I2 => R, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00077
);
U23 : AND3B2	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => N00006, 
	O => N00086
);
U8 : AND4B2	PORT MAP(
	I0 => N00007, 
	I1 => N00006, 
	I2 => N00005, 
	I3 => N00008, 
	O => TC
);
U24 : AND6	PORT MAP(
	I0 => N00096, 
	I1 => N00094, 
	I2 => N00006, 
	I3 => N00008, 
	I4 => N00003, 
	I5 => N00007, 
	O => N00091
);
U9 : AND3B2	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => N00008, 
	O => N00033
);
U25 : INV	PORT MAP(
	O => N00094, 
	I => N00005
);
U26 : INV	PORT MAP(
	O => N00096, 
	I => R
);
U27 : AND6	PORT MAP(
	I0 => N00110, 
	I1 => N00107, 
	I2 => N00105, 
	I3 => N00100, 
	I4 => N00005, 
	I5 => N00003, 
	O => N00101
);
U28 : INV	PORT MAP(
	O => N00100, 
	I => N00008
);
U29 : OR3	PORT MAP(
	I2 => N00091, 
	I1 => N00101, 
	I0 => N00113, 
	O => N00102
);
U31 : INV	PORT MAP(
	O => N00105, 
	I => N00007
);
U32 : INV	PORT MAP(
	O => N00107, 
	I => N00006
);
U33 : INV	PORT MAP(
	O => N00110, 
	I => R
);
U34 : AND3B2	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => N00005, 
	O => N00113
);
U10 : AND5B3	PORT MAP(
	I0 => N00005, 
	I1 => N00008, 
	I2 => R, 
	I3 => N00007, 
	I4 => N00003, 
	O => N00041
);
U11 : AND5B3	PORT MAP(
	I0 => N00005, 
	I1 => N00007, 
	I2 => R, 
	I3 => N00008, 
	I4 => N00003, 
	O => N00047
);
U12 : OR3	PORT MAP(
	I2 => N00041, 
	I1 => N00047, 
	I0 => N00055, 
	O => N00048
);
U13 : FD	PORT MAP(
	D => N00048, 
	C => C, 
	Q => N00007
);
U7 : FD	PORT MAP(
	D => N00024, 
	C => C, 
	Q => N00008
);
U30 : FD	PORT MAP(
	D => N00102, 
	C => C, 
	Q => N00005
);
U21 : FD	PORT MAP(
	D => N00074, 
	C => C, 
	Q => N00006
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2CE	 PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00008, 
	O => TC
);
U1 : CB2CE	PORT MAP(
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2CE	PORT MAP(
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => CEO, 
	TC => N00016
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00006;
U13 : AND2B1	PORT MAP(
	I0 => N00010, 
	I1 => N00006, 
	O => N00027
);
U14 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => N00009, 
	O => TC
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND3	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => CEO
);
U4 : OR2	PORT MAP(
	I1 => R, 
	I0 => N00011, 
	O => N00010
);
U5 : AND2B1	PORT MAP(
	I0 => N00010, 
	I1 => N00003, 
	O => N00014
);
U6 : GND	PORT MAP(
	G => N00011
);
U7 : XOR2	PORT MAP(
	I1 => N00014, 
	I0 => N00017, 
	O => N00015
);
U9 : AND2B1	PORT MAP(
	I0 => N00010, 
	I1 => N00009, 
	O => N00017
);
U10 : AND3B1	PORT MAP(
	I0 => N00010, 
	I1 => N00009, 
	I2 => N00003, 
	O => N00024
);
U11 : XOR2	PORT MAP(
	I1 => N00024, 
	I0 => N00027, 
	O => N00025
);
U12 : FD	PORT MAP(
	D => N00025, 
	C => C, 
	Q => N00006
);
U8 : FD	PORT MAP(
	D => N00015, 
	C => C, 
	Q => N00009
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
U13 : BUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
U14 : BUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
U15 : BUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
U16 : BUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
);
U1 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U2 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U3 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U4 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U5 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
U6 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U7 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U8 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U9 : BUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
U10 : BUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
U11 : BUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
U12 : BUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
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

COMPONENT BUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : BUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U4 : BUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U5 : BUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U6 : BUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
U7 : BUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
U8 : BUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U1 : BUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U2 : BUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
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
SIGNAL M0 : std_logic;
SIGNAL M1 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B2	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
);
U2 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U3 : AND2	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
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
SIGNAL N00008 : std_logic;
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => N00003
);
U2 : OR2	PORT MAP(
	I1 => N00003, 
	I0 => N00008, 
	O => O
);
U3 : AND2	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => N00008
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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
SIGNAL N00003 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00027 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00008;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : GND	PORT MAP(
	G => N00007
);
U5 : AND3B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	I2 => N00008, 
	O => N00011
);
U6 : AND4B2	PORT MAP(
	I0 => N00006, 
	I1 => N00008, 
	I2 => N00003, 
	I3 => T, 
	O => N00017
);
U7 : OR4	PORT MAP(
	I3 => N00011, 
	I2 => N00017, 
	I1 => N00020, 
	I0 => N00027, 
	O => N00018
);
U9 : AND3B2	PORT MAP(
	I0 => T, 
	I1 => N00006, 
	I2 => N00008, 
	O => N00020
);
U10 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => D, 
	O => N00027
);
U8 : FDC	PORT MAP(
	D => N00018, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB2X1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END CB2X1;



ARCHITECTURE STRUCTURE OF CB2X1 IS

-- COMPONENTS

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
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

COMPONENT AND5B5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00051 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
TCU<=N00055;
TCD<=N00065;
Q0<=N00014;
Q1<=N00013;
U13 : AND4B3	PORT MAP(
	I0 => N00014, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00038
);
U14 : OR2	PORT MAP(
	I1 => N00038, 
	I0 => N00039, 
	O => N00043
);
U15 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00014, 
	I2 => N00006, 
	O => N00039
);
U16 : XOR2	PORT MAP(
	I1 => N00043, 
	I0 => N00046, 
	O => N00044
);
U18 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00013, 
	O => N00051
);
U19 : OR2	PORT MAP(
	I1 => N00051, 
	I0 => N00052, 
	O => N00046
);
U1 : OR2	PORT MAP(
	I1 => CED, 
	I0 => N00004, 
	O => N00003
);
U2 : OR2	PORT MAP(
	I1 => CEU, 
	I0 => N00004, 
	O => N00006
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00004, 
	O => N00009
);
U4 : GND	PORT MAP(
	G => N00004
);
U5 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00018
);
U20 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00009, 
	O => N00052
);
U21 : AND2	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	O => N00055
);
U6 : OR2	PORT MAP(
	I1 => N00018, 
	I0 => N00019, 
	O => N00022
);
U22 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => N00055, 
	O => CEOU
);
U7 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	O => N00019
);
U8 : XOR2	PORT MAP(
	I1 => N00022, 
	I0 => N00025, 
	O => N00023
);
U23 : AND3B2	PORT MAP(
	I0 => D1, 
	I1 => D0, 
	I2 => N00009, 
	O => N00062
);
U24 : AND3B1	PORT MAP(
	I0 => N00006, 
	I1 => N00065, 
	I2 => N00003, 
	O => CEOD
);
U25 : AND5B5	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00009, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00071
);
U26 : NOR4	PORT MAP(
	I3 => N00062, 
	I2 => N00071, 
	I1 => N00079, 
	I0 => N00090, 
	O => N00076
);
U28 : INV	PORT MAP(
	O => N00065, 
	I => N00077
);
U29 : AND5B3	PORT MAP(
	I0 => N00013, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00014, 
	I4 => N00003, 
	O => N00079
);
U30 : AND4B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00013, 
	I3 => N00014, 
	O => N00090
);
U10 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00009, 
	O => N00030
);
U11 : OR2	PORT MAP(
	I1 => N00030, 
	I0 => N00031, 
	O => N00025
);
U12 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00014, 
	O => N00031
);
U27 : FDC	PORT MAP(
	D => N00076, 
	C => C, 
	CLR => CLR, 
	Q => N00077
);
U9 : FDC	PORT MAP(
	D => N00023, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U17 : FDC	PORT MAP(
	D => N00044, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD16X2 IS PORT (
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
	CO : OUT std_logic
); END ADD16X2;



ARCHITECTURE STRUCTURE OF ADD16X2 IS

-- COMPONENTS

COMPONENT ADD8X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ADD8X2	PORT MAP(
	CI => CI, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	S4 => S4, 
	S5 => S5, 
	S6 => S6, 
	S7 => S7, 
	CO => N00020
);
U2 : ADD8X2	PORT MAP(
	CI => N00020, 
	A0 => A8, 
	A1 => A9, 
	A2 => A10, 
	A3 => A11, 
	A4 => A12, 
	A5 => A13, 
	A6 => A14, 
	A7 => A15, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	S0 => S8, 
	S1 => S9, 
	S2 => S10, 
	S3 => S11, 
	S4 => S12, 
	S5 => S13, 
	S6 => S14, 
	S7 => S15, 
	CO => CO
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC16X2 IS PORT (
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
	R : IN std_logic
); END ACC16X2;



ARCHITECTURE STRUCTURE OF ACC16X2 IS

-- COMPONENTS

COMPONENT ACC8X2	 PORT (
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
	R : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACC8X2	PORT MAP(
	CI => CI, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7, 
	CO => N00020, 
	R => R
);
U2 : ACC8X2	PORT MAP(
	CI => N00020, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15, 
	CO => CO, 
	R => R
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I0, 
	I1 => I1, 
	I0 => I2, 
	O => N00004
);
U2 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00008, 
	O => O
);
U3 : XOR2	PORT MAP(
	I1 => I3, 
	I0 => I4, 
	O => N00008
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC8X1 IS PORT (
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
	R : IN std_logic
); END ACC8X1;



ARCHITECTURE STRUCTURE OF ACC8X1 IS

-- COMPONENTS

COMPONENT ACC4X1	 PORT (
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
	R : IN std_logic
); END COMPONENT;

COMPONENT ACC4X2	 PORT (
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
	R : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACC4X1	PORT MAP(
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	CO => N00011, 
	R => R
);
U2 : ACC4X2	PORT MAP(
	CI => N00011, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q4, 
	Q1 => Q5, 
	Q2 => Q6, 
	Q3 => Q7, 
	CO => CO, 
	R => R
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
SIGNAL N00007 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL1 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00005;
Q2<=N00018;
Q3<=N00031;
U14 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U11 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U3 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00007
);
U12 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U4 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U5 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U13 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U6 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00005
);
U7 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U9 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U2 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U10 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
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

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00003 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00003;
Q1<=N00009;
Q2<=N00015;
U3 : FDCE	PORT MAP(
	D => N00009, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00015
);
U4 : FDCE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00003
);
U2 : FDCE	PORT MAP(
	D => N00003, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00009
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
SIGNAL I0B1B : std_logic;
SIGNAL I2B3 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3
);
U2 : OR2	PORT MAP(
	I1 => I2B3, 
	I0 => I0B1B, 
	O => O
);
U3 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
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
U1 : AND2B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3
);
U2 : OR2	PORT MAP(
	I1 => I2B3, 
	I0 => I0B1, 
	O => O
);
U3 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
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

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I0B1B, 
	O => O
);
U2 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
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
SIGNAL M01 : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01
);
U2 : M2_1E	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => O, 
	E => E
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

COMPONENT ILD
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : ILD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : ILD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U3 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U4 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
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

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I0, 
	I2 => I1, 
	I1 => I2, 
	I0 => I3, 
	O => N00004
);
U2 : XNOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00010, 
	O => O
);
U3 : XOR4	PORT MAP(
	I3 => I4, 
	I2 => I5, 
	I1 => I6, 
	I0 => I7, 
	O => N00010
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
SIGNAL Y2B : std_logic;
SIGNAL M2C01 : std_logic;
SIGNAL G1B : std_logic;
SIGNAL M1C23 : std_logic;
SIGNAL G2B : std_logic;
SIGNAL Y1B : std_logic;
SIGNAL M2C23 : std_logic;
SIGNAL M1C01 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : INV	PORT MAP(
	O => Y1, 
	I => Y1B
);
U5 : INV	PORT MAP(
	O => G1B, 
	I => G1
);
U8 : INV	PORT MAP(
	O => Y2, 
	I => Y2B
);
U10 : INV	PORT MAP(
	O => G2B, 
	I => G2
);
U4 : M2_1	PORT MAP(
	D0 => I1C2, 
	D1 => I1C3, 
	S0 => A, 
	O => M1C23
);
U6 : M2_1	PORT MAP(
	D0 => I2C0, 
	D1 => I2C1, 
	S0 => A, 
	O => M2C01
);
U7 : M2_1E	PORT MAP(
	D0 => M2C01, 
	D1 => M2C23, 
	S0 => B, 
	O => Y2B, 
	E => G2B
);
U9 : M2_1	PORT MAP(
	D0 => I2C2, 
	D1 => I2C3, 
	S0 => A, 
	O => M2C23
);
U1 : M2_1	PORT MAP(
	D0 => I1C0, 
	D1 => I1C1, 
	S0 => A, 
	O => M1C01
);
U2 : M2_1E	PORT MAP(
	D0 => M1C01, 
	D1 => M1C23, 
	S0 => B, 
	O => Y1B, 
	E => G1B
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

COMPONENT NAND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : NAND5B2	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => N00002, 
	I3 => D, 
	I4 => C, 
	O => Y12
);
U14 : NAND5B1	PORT MAP(
	I0 => B, 
	I1 => A, 
	I2 => C, 
	I3 => D, 
	I4 => N00002, 
	O => Y13
);
U15 : NOR2	PORT MAP(
	I1 => G1, 
	I0 => G2, 
	O => N00002
);
U16 : NAND5B1	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => C, 
	I3 => D, 
	I4 => N00002, 
	O => Y14
);
U17 : NAND5	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00002, 
	O => Y15
);
U1 : NAND5B4	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00002, 
	O => Y0
);
U2 : NAND5B3	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => D, 
	I3 => A, 
	I4 => N00002, 
	O => Y1
);
U3 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => D, 
	I2 => C, 
	I3 => B, 
	I4 => N00002, 
	O => Y2
);
U4 : NAND5B2	PORT MAP(
	I0 => C, 
	I1 => D, 
	I2 => N00002, 
	I3 => A, 
	I4 => B, 
	O => Y3
);
U5 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => D, 
	I3 => C, 
	I4 => N00002, 
	O => Y4
);
U6 : NAND5B2	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => N00002, 
	I3 => C, 
	I4 => A, 
	O => Y5
);
U7 : NAND5B2	PORT MAP(
	I0 => D, 
	I1 => A, 
	I2 => N00002, 
	I3 => C, 
	I4 => B, 
	O => Y6
);
U8 : NAND5B1	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00002, 
	O => Y7
);
U9 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => C, 
	I3 => D, 
	I4 => N00002, 
	O => Y8
);
U10 : NAND5B2	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => N00002, 
	I3 => D, 
	I4 => A, 
	O => Y9
);
U11 : NAND5B2	PORT MAP(
	I0 => A, 
	I1 => C, 
	I2 => N00002, 
	I3 => D, 
	I4 => B, 
	O => Y10
);
U12 : NAND5B1	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => D, 
	I4 => N00002, 
	O => Y11
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
SIGNAL MD11 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL MD2 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00027;
Q2<=N00045;
Q3<=N00063;
Q4<=N00081;
Q5<=N00099;
Q6<=N00117;
Q8<=N00012;
Q9<=N00030;
Q10<=N00048;
Q11<=N00066;
Q12<=N00084;
Q13<=N00102;
Q14<=N00120;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => N00003
);
U33 : FDRE	PORT MAP(
	D => MD15, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => Q15
);
U11 : FDRE	PORT MAP(
	D => MD2, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00045
);
U3 : FDRE	PORT MAP(
	D => MD0, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00009
);
U22 : M2_1	PORT MAP(
	D0 => N00081, 
	D1 => N00103, 
	S0 => L, 
	O => MD5
);
U12 : M2_1	PORT MAP(
	D0 => N00030, 
	D1 => N00051, 
	S0 => L, 
	O => MD10
);
U23 : FDRE	PORT MAP(
	D => MD5, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00099
);
U4 : M2_1	PORT MAP(
	D0 => N00006, 
	D1 => N00015, 
	S0 => L, 
	O => MD8
);
U13 : FDRE	PORT MAP(
	D => MD10, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00048
);
U5 : FDRE	PORT MAP(
	D => MD8, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00012
);
U24 : M2_1	PORT MAP(
	D0 => N00084, 
	D1 => N00105, 
	S0 => L, 
	O => MD13
);
U25 : FDRE	PORT MAP(
	D => MD13, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00102
);
U6 : M2_1	PORT MAP(
	D0 => N00009, 
	D1 => N00031, 
	S0 => L, 
	O => MD1
);
U14 : M2_1	PORT MAP(
	D0 => N00045, 
	D1 => N00067, 
	S0 => L, 
	O => MD3
);
U15 : FDRE	PORT MAP(
	D => MD3, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00063
);
U7 : FDRE	PORT MAP(
	D => MD1, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00027
);
U26 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => N00121, 
	S0 => L, 
	O => MD6
);
U8 : M2_1	PORT MAP(
	D0 => N00012, 
	D1 => N00033, 
	S0 => L, 
	O => MD9
);
U16 : M2_1	PORT MAP(
	D0 => N00048, 
	D1 => N00069, 
	S0 => L, 
	O => MD11
);
U27 : FDRE	PORT MAP(
	D => MD6, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00117
);
U17 : FDRE	PORT MAP(
	D => MD11, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00066
);
U9 : FDRE	PORT MAP(
	D => MD9, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00030
);
U28 : M2_1	PORT MAP(
	D0 => N00102, 
	D1 => N00123, 
	S0 => L, 
	O => MD14
);
U29 : FDRE	PORT MAP(
	D => MD14, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00120
);
U18 : M2_1	PORT MAP(
	D0 => N00063, 
	D1 => N00085, 
	S0 => L, 
	O => MD4
);
U19 : FDRE	PORT MAP(
	D => MD4, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00081
);
U30 : M2_1	PORT MAP(
	D0 => N00117, 
	D1 => N00139, 
	S0 => L, 
	O => MD7
);
U20 : M2_1	PORT MAP(
	D0 => N00066, 
	D1 => N00087, 
	S0 => L, 
	O => MD12
);
U31 : FDRE	PORT MAP(
	D => MD7, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => Q7
);
U2 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => N00013, 
	S0 => L, 
	O => MD0
);
U32 : M2_1	PORT MAP(
	D0 => N00120, 
	D1 => N00141, 
	S0 => L, 
	O => MD15
);
U21 : FDRE	PORT MAP(
	D => MD12, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00084
);
U10 : M2_1	PORT MAP(
	D0 => N00027, 
	D1 => N00049, 
	S0 => L, 
	O => MD2
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
SIGNAL N00077 : std_logic;
SIGNAL N00074 : std_logic;

-- GATE INSTANCES

BEGIN
U11 : OFDT	PORT MAP(
	T => T, 
	D => D5, 
	C => C, 
	O => O5
);
U3 : OFDT	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1
);
U12 : OFDT	PORT MAP(
	T => T, 
	D => D13, 
	C => C, 
	O => O13
);
U4 : OFDT	PORT MAP(
	T => T, 
	D => D9, 
	C => C, 
	O => O9
);
U13 : OFDT	PORT MAP(
	T => T, 
	D => D6, 
	C => C, 
	O => O6
);
U5 : OFDT	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2
);
U14 : OFDT	PORT MAP(
	T => T, 
	D => D14, 
	C => C, 
	O => O14
);
U6 : OFDT	PORT MAP(
	T => T, 
	D => D10, 
	C => C, 
	O => O10
);
U15 : OFDT	PORT MAP(
	T => T, 
	D => D7, 
	C => C, 
	O => O7
);
U7 : OFDT	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3
);
U16 : OFDT	PORT MAP(
	T => T, 
	D => D15, 
	C => C, 
	O => O15
);
U8 : OFDT	PORT MAP(
	T => T, 
	D => D11, 
	C => C, 
	O => O11
);
U9 : OFDT	PORT MAP(
	T => T, 
	D => D4, 
	C => C, 
	O => O4
);
U1 : OFDT	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0
);
U10 : OFDT	PORT MAP(
	T => T, 
	D => D12, 
	C => C, 
	O => O12
);
U2 : OFDT	PORT MAP(
	T => T, 
	D => D8, 
	C => C, 
	O => O8
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
U1 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U2 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U3 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U4 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U5 : OBUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
U6 : OBUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U7 : OBUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U8 : OBUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => N00003, 
	I => E
);
U2 : OBUFT	PORT MAP(
	T => N00003, 
	I => I, 
	O => O
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
U1 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FD4 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END FD4;



ARCHITECTURE STRUCTURE OF FD4 IS

-- COMPONENTS

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : FD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U4 : FD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U1 : FD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : FD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
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
SIGNAL AB1 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB2 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
U2 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U3 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => EQ
);
U4 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U5 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
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
SIGNAL N00024 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB13 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB14 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL AB15 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL ABCF : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB10 : std_logic;
SIGNAL AB8B : std_logic;
SIGNAL AB9 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL AB8 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL AB12 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL AB11 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : XNOR2	PORT MAP(
	I1 => N00044, 
	I0 => N00046, 
	O => AB9
);
U14 : AND4	PORT MAP(
	I0 => AB11, 
	I1 => AB10, 
	I2 => AB9, 
	I3 => AB8, 
	O => AB8B
);
U15 : XNOR2	PORT MAP(
	I1 => N00052, 
	I0 => N00054, 
	O => AB10
);
U16 : XNOR2	PORT MAP(
	I1 => N00055, 
	I0 => N00057, 
	O => AB11
);
U17 : XNOR2	PORT MAP(
	I1 => N00058, 
	I0 => N00060, 
	O => AB12
);
U18 : XNOR2	PORT MAP(
	I1 => N00061, 
	I0 => N00063, 
	O => AB13
);
U19 : AND4	PORT MAP(
	I0 => AB15, 
	I1 => AB14, 
	I2 => AB13, 
	I3 => AB12, 
	O => ABCF
);
U1 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => N00004, 
	O => AB0
);
U2 : XNOR2	PORT MAP(
	I1 => N00005, 
	I0 => N00007, 
	O => AB1
);
U3 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => AB03
);
U4 : XNOR2	PORT MAP(
	I1 => N00013, 
	I0 => N00015, 
	O => AB2
);
U20 : XNOR2	PORT MAP(
	I1 => N00069, 
	I0 => N00071, 
	O => AB14
);
U5 : XNOR2	PORT MAP(
	I1 => N00016, 
	I0 => N00018, 
	O => AB3
);
U21 : XNOR2	PORT MAP(
	I1 => N00072, 
	I0 => N00074, 
	O => AB15
);
U6 : XNOR2	PORT MAP(
	I1 => N00019, 
	I0 => N00021, 
	O => AB4
);
U7 : XNOR2	PORT MAP(
	I1 => N00022, 
	I0 => N00024, 
	O => AB5
);
U8 : AND4	PORT MAP(
	I0 => AB7, 
	I1 => AB6, 
	I2 => AB5, 
	I3 => AB4, 
	O => AB47
);
U9 : XNOR2	PORT MAP(
	I1 => N00030, 
	I0 => N00032, 
	O => AB6
);
U10 : XNOR2	PORT MAP(
	I1 => N00033, 
	I0 => N00035, 
	O => AB7
);
U11 : AND4	PORT MAP(
	I0 => ABCF, 
	I1 => AB8B, 
	I2 => AB47, 
	I3 => AB03, 
	O => EQ
);
U12 : XNOR2	PORT MAP(
	I1 => N00040, 
	I0 => N00043, 
	O => AB8
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

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2CLE	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00041 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
U5 : AND4	PORT MAP(
	I0 => N00008, 
	I1 => N00019, 
	I2 => N00030, 
	I3 => N00041, 
	O => TC
);
U3 : CB2CLE	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	L => L, 
	CE => N00017, 
	C => C, 
	CLR => CLR, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00028, 
	TC => N00030
);
U4 : CB2CLE	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	L => L, 
	CE => N00028, 
	C => C, 
	CLR => CLR, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => CEO, 
	TC => N00041
);
U1 : CB2CLE	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	L => L, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2CLE	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	L => L, 
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00017, 
	TC => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU1X2 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END ADSU1X2;



ARCHITECTURE STRUCTURE OF ADSU1X2 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND3B3
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
SIGNAL N00029 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00026 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => A0, 
	O => N00004
);
U2 : AND3	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => CI, 
	O => N00008
);
U3 : OR5	PORT MAP(
	I4 => N00004, 
	I3 => N00008, 
	I2 => N00013, 
	I1 => N00016, 
	I0 => N00022, 
	O => CO
);
U4 : AND3B2	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => A0, 
	O => N00013
);
U5 : AND3B2	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => CI, 
	O => N00016
);
U6 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => N00022
);
U7 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => N00026, 
	O => S0
);
U8 : AND3B3	PORT MAP(
	I0 => CI, 
	I1 => ADD, 
	I2 => B0, 
	O => N00029
);
U9 : AND3B1	PORT MAP(
	I0 => CI, 
	I1 => ADD, 
	I2 => B0, 
	O => N00033
);
U10 : OR4	PORT MAP(
	I3 => N00029, 
	I2 => N00033, 
	I1 => N00037, 
	I0 => N00044, 
	O => N00026
);
U11 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => CI, 
	O => N00037
);
U12 : AND3B1	PORT MAP(
	I0 => ADD, 
	I1 => CI, 
	I2 => B0, 
	O => N00044
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD8X1 IS PORT (
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
	CO : OUT std_logic
); END ADD8X1;



ARCHITECTURE STRUCTURE OF ADD8X1 IS

-- COMPONENTS

COMPONENT ADD4X1	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD4X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ADD4X1	PORT MAP(
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	CO => N00011
);
U2 : ADD4X2	PORT MAP(
	CI => N00011, 
	A0 => A4, 
	A1 => A5, 
	A2 => A6, 
	A3 => A7, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	S0 => S4, 
	S1 => S5, 
	S2 => S6, 
	S3 => S7, 
	CO => CO
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
U3 : OFDT	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2
);
U4 : OFDT	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3
);
U1 : OFDT	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0
);
U2 : OFDT	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1
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
U13 : OBUF	PORT MAP(
	O => O12, 
	I => I12
);
U14 : OBUF	PORT MAP(
	O => O13, 
	I => I13
);
U15 : OBUF	PORT MAP(
	O => O14, 
	I => I14
);
U16 : OBUF	PORT MAP(
	O => O15, 
	I => I15
);
U1 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
U5 : OBUF	PORT MAP(
	O => O4, 
	I => I4
);
U6 : OBUF	PORT MAP(
	O => O5, 
	I => I5
);
U7 : OBUF	PORT MAP(
	O => O6, 
	I => I6
);
U8 : OBUF	PORT MAP(
	O => O7, 
	I => I7
);
U9 : OBUF	PORT MAP(
	O => O8, 
	I => I8
);
U10 : OBUF	PORT MAP(
	O => O9, 
	I => I9
);
U11 : OBUF	PORT MAP(
	O => O10, 
	I => I10
);
U12 : OBUF	PORT MAP(
	O => O11, 
	I => I11
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

-- GATE INSTANCES

BEGIN
U3 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q1
);
U4 : FDRE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q5
);
U5 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
U6 : FDRE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q6
);
U7 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U8 : FDRE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U1 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q0
);
U2 : FDRE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q4
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

COMPONENT AND3
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
U1 : AND3B2	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	O => D0
);
U2 : AND3B1	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => E, 
	O => D1
);
U3 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	O => D2
);
U4 : AND3	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => E, 
	O => D3
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

COMPONENT OR2B1
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00039 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00054 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => N00027
);
U45 : OR2	PORT MAP(
	I1 => N00103, 
	I0 => N00108, 
	O => N00107
);
U14 : AND2	PORT MAP(
	I0 => N00031, 
	I1 => N00025, 
	O => N00030
);
U46 : AND2B1	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00108
);
U15 : OR2B1	PORT MAP(
	I1 => B4, 
	I0 => A4, 
	O => N00031
);
U47 : AND2	PORT MAP(
	I0 => N00112, 
	I1 => N00107, 
	O => N00110
);
U16 : OR2	PORT MAP(
	I1 => N00030, 
	I0 => N00035, 
	O => N00034
);
U48 : OR2B1	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => N00112
);
U17 : AND2B1	PORT MAP(
	I0 => A4, 
	I1 => B4, 
	O => N00035
);
U49 : OR2	PORT MAP(
	I1 => N00110, 
	I0 => N00116, 
	O => N00115
);
U18 : AND2	PORT MAP(
	I0 => N00041, 
	I1 => N00034, 
	O => N00039
);
U19 : OR2B1	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => N00041
);
U1 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => N00003
);
U2 : AND2	PORT MAP(
	I0 => N00007, 
	I1 => N00003, 
	O => N00005
);
U3 : OR2B1	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => N00007
);
U50 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => N00116
);
U4 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00011, 
	O => N00009
);
U51 : AND2	PORT MAP(
	I0 => N00120, 
	I1 => N00115, 
	O => N00119
);
U20 : OR2	PORT MAP(
	I1 => N00039, 
	I0 => N00047, 
	O => N00046
);
U5 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => N00011
);
U52 : OR2B1	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => N00120
);
U6 : AND2	PORT MAP(
	I0 => N00015, 
	I1 => N00009, 
	O => N00013
);
U21 : AND2B1	PORT MAP(
	I0 => A5, 
	I1 => B5, 
	O => N00047
);
U53 : AND2B1	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => N00123
);
U22 : AND2	PORT MAP(
	I0 => N00053, 
	I1 => N00046, 
	O => N00052
);
U7 : OR2B1	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => N00015
);
U54 : OR2	PORT MAP(
	I1 => N00119, 
	I0 => N00123, 
	O => N00124
);
U23 : OR2B1	PORT MAP(
	I1 => B6, 
	I0 => A6, 
	O => N00053
);
U8 : OR2	PORT MAP(
	I1 => N00013, 
	I0 => N00019, 
	O => N00017
);
U55 : AND2	PORT MAP(
	I0 => N00127, 
	I1 => N00124, 
	O => N00204
);
U24 : AND2B1	PORT MAP(
	I0 => A6, 
	I1 => B6, 
	O => N00058
);
U9 : AND2B1	PORT MAP(
	I0 => A2, 
	I1 => B2, 
	O => N00019
);
U56 : OR2B1	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => N00127
);
U25 : OR2	PORT MAP(
	I1 => N00052, 
	I0 => N00058, 
	O => N00059
);
U57 : OR2	PORT MAP(
	I1 => N00204, 
	I0 => N00131, 
	O => GT
);
U26 : AND2	PORT MAP(
	I0 => N00065, 
	I1 => N00059, 
	O => N00064
);
U58 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => N00131
);
U27 : OR2B1	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => N00065
);
U28 : OR2	PORT MAP(
	I1 => N00064, 
	I0 => N00071, 
	O => LT
);
U29 : AND2B1	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => N00071
);
U30 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00076
);
U31 : AND2	PORT MAP(
	I0 => N00080, 
	I1 => N00076, 
	O => N00078
);
U32 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00080
);
U33 : OR2	PORT MAP(
	I1 => N00078, 
	I0 => N00084, 
	O => N00082
);
U34 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00084
);
U35 : AND2	PORT MAP(
	I0 => N00088, 
	I1 => N00082, 
	O => N00086
);
U36 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00088
);
U37 : OR2	PORT MAP(
	I1 => N00086, 
	I0 => N00092, 
	O => N00090
);
U38 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00092
);
U39 : AND2	PORT MAP(
	I0 => N00096, 
	I1 => N00090, 
	O => N00094
);
U40 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00096
);
U41 : OR2	PORT MAP(
	I1 => N00094, 
	I0 => N00100, 
	O => N00098
);
U10 : AND2	PORT MAP(
	I0 => N00023, 
	I1 => N00017, 
	O => N00021
);
U42 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00100
);
U11 : OR2B1	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => N00023
);
U43 : AND2	PORT MAP(
	I0 => N00104, 
	I1 => N00098, 
	O => N00103
);
U12 : OR2	PORT MAP(
	I1 => N00021, 
	I0 => N00027, 
	O => N00025
);
U44 : OR2B1	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => N00104
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD16X1 IS PORT (
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
	CO : OUT std_logic
); END ADD16X1;



ARCHITECTURE STRUCTURE OF ADD16X1 IS

-- COMPONENTS

COMPONENT ADD8X1	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD8X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ADD8X1	PORT MAP(
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	S4 => S4, 
	S5 => S5, 
	S6 => S6, 
	S7 => S7, 
	CO => N00019
);
U2 : ADD8X2	PORT MAP(
	CI => N00019, 
	A0 => A8, 
	A1 => A9, 
	A2 => A10, 
	A3 => A11, 
	A4 => A12, 
	A5 => A13, 
	A6 => A14, 
	A7 => A15, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	S0 => S8, 
	S1 => S9, 
	S2 => S10, 
	S3 => S11, 
	S4 => S12, 
	S5 => S13, 
	S6 => S14, 
	S7 => S15, 
	CO => CO
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC16X1 IS PORT (
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
	R : IN std_logic
); END ACC16X1;



ARCHITECTURE STRUCTURE OF ACC16X1 IS

-- COMPONENTS

COMPONENT ACC8X1	 PORT (
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
	R : IN std_logic
); END COMPONENT;

COMPONENT ACC8X2	 PORT (
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
	R : IN std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACC8X1	PORT MAP(
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7, 
	CO => N00019, 
	R => R
);
U2 : ACC8X2	PORT MAP(
	CI => N00019, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15, 
	CO => CO, 
	R => R
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00044 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00084 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2	PORT MAP(
	I0 => N00029, 
	I1 => N00023, 
	O => N00027
);
U14 : OR2B1	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => N00029
);
U15 : OR2	PORT MAP(
	I1 => N00027, 
	I0 => N00035, 
	O => ALBO
);
U16 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => N00035
);
U17 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00042
);
U18 : AND5B4	PORT MAP(
	I0 => N00064, 
	I1 => N00047, 
	I2 => N00044, 
	I3 => N00042, 
	I4 => AEBI, 
	O => AEBO
);
U19 : XOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00044
);
U1 : AND2	PORT MAP(
	I0 => N00004, 
	I1 => ALBI, 
	O => N00003
);
U2 : OR2B1	PORT MAP(
	I1 => B0, 
	I0 => A0, 
	O => N00004
);
U3 : OR2	PORT MAP(
	I1 => N00003, 
	I0 => N00008, 
	O => N00009
);
U4 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => N00008
);
U20 : AND2	PORT MAP(
	I0 => N00056, 
	I1 => AGBI, 
	O => N00054
);
U5 : AND2	PORT MAP(
	I0 => N00013, 
	I1 => N00009, 
	O => N00011
);
U21 : XOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00047
);
U6 : OR2B1	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => N00013
);
U22 : OR2B1	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00056
);
U7 : OR2	PORT MAP(
	I1 => N00011, 
	I0 => N00017, 
	O => N00015
);
U23 : OR2	PORT MAP(
	I1 => N00054, 
	I0 => N00067, 
	O => N00068
);
U8 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => N00017
);
U24 : XOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00064
);
U9 : AND2	PORT MAP(
	I0 => N00021, 
	I1 => N00015, 
	O => N00019
);
U25 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00067
);
U26 : AND2	PORT MAP(
	I0 => N00074, 
	I1 => N00068, 
	O => N00072
);
U27 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00074
);
U28 : OR2	PORT MAP(
	I1 => N00072, 
	I0 => N00080, 
	O => N00078
);
U29 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00080
);
U30 : AND2	PORT MAP(
	I0 => N00084, 
	I1 => N00078, 
	O => N00082
);
U31 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00084
);
U32 : OR2	PORT MAP(
	I1 => N00082, 
	I0 => N00088, 
	O => N00086
);
U33 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00088
);
U34 : AND2	PORT MAP(
	I0 => N00092, 
	I1 => N00086, 
	O => N00090
);
U35 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00092
);
U36 : OR2	PORT MAP(
	I1 => N00090, 
	I0 => N00096, 
	O => AGBO
);
U37 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00096
);
U10 : OR2B1	PORT MAP(
	I1 => B2, 
	I0 => A2, 
	O => N00021
);
U11 : OR2	PORT MAP(
	I1 => N00019, 
	I0 => N00025, 
	O => N00023
);
U12 : AND2B1	PORT MAP(
	I0 => A2, 
	I1 => B2, 
	O => N00025
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
SIGNAL N00025 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00030;
Q1<=N00045;
Q2<=N00060;
Q3<=N00023;
Q4<=N00025;
Q5<=N00041;
Q6<=N00056;
U13 : FDCE	PORT MAP(
	D => MD6, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00056
);
U14 : FDCE	PORT MAP(
	D => MD7, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U15 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => N00020
);
U17 : FDCE	PORT MAP(
	D => MD0, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00030
);
U4 : FDCE	PORT MAP(
	D => MD1, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00045
);
U5 : FDCE	PORT MAP(
	D => MD2, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U6 : FDCE	PORT MAP(
	D => MD3, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00023
);
U11 : FDCE	PORT MAP(
	D => MD4, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U12 : FDCE	PORT MAP(
	D => MD5, 
	CE => N00020, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U3 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U7 : M2_1	PORT MAP(
	D0 => N00023, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U16 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U8 : M2_1	PORT MAP(
	D0 => N00025, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U9 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U1 : M2_1	PORT MAP(
	D0 => N00030, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U2 : M2_1	PORT MAP(
	D0 => N00045, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U10 : M2_1	PORT MAP(
	D0 => N00056, 
	D1 => D7, 
	S0 => L, 
	O => MD7
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
U1 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U2 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I0B1B, 
	O => O
);
U3 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
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
U1 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
U2 : OR2B1	PORT MAP(
	I1 => I0B1B, 
	I0 => I2, 
	O => O
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00066 : std_logic;
SIGNAL D_IN : std_logic;

-- GATE INSTANCES

BEGIN
U1 : IBUF	PORT MAP(
	O => D_IN, 
	I => D
);
U2 : GND	PORT MAP(
	G => N00066
);
U3 : FDCP	PORT MAP(
	D => D_IN, 
	C => C, 
	PRE => N00066, 
	Q => Q, 
	CLR => N00066
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
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
SIGNAL N00009 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00009
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	I2 => T, 
	O => N00011
);
U5 : OR4	PORT MAP(
	I3 => N00009, 
	I2 => N00011, 
	I1 => S, 
	I0 => N00017, 
	O => N00013
);
U6 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => N00013, 
	O => N00015
);
U8 : AND3B1	PORT MAP(
	I0 => T, 
	I1 => N00003, 
	I2 => N00005, 
	O => N00017
);
U7 : FD	PORT MAP(
	D => N00015, 
	C => C, 
	Q => N00005
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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
SIGNAL N00002 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00010
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	I2 => T, 
	O => N00012
);
U5 : OR3	PORT MAP(
	I2 => N00010, 
	I1 => N00012, 
	I0 => N00016, 
	O => N00013
);
U7 : AND2B1	PORT MAP(
	I0 => T, 
	I1 => N00005, 
	O => N00016
);
U6 : FDP	PORT MAP(
	D => N00013, 
	C => C, 
	PRE => PRE, 
	Q => N00005
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FTCPLE IS PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CLR : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic;
	C : IN std_logic
); END FTCPLE;



ARCHITECTURE STRUCTURE OF FTCPLE IS

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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00018 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00008;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : GND	PORT MAP(
	G => N00007
);
U5 : AND3B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	I2 => N00008, 
	O => N00011
);
U6 : AND4B2	PORT MAP(
	I0 => N00006, 
	I1 => N00008, 
	I2 => N00003, 
	I3 => T, 
	O => N00018
);
U7 : OR4	PORT MAP(
	I3 => N00011, 
	I2 => N00018, 
	I1 => N00021, 
	I0 => N00028, 
	O => N00019
);
U8 : FDCP	PORT MAP(
	D => N00019, 
	C => C, 
	PRE => PRE, 
	Q => N00008, 
	CLR => CLR
);
U9 : AND3B2	PORT MAP(
	I0 => T, 
	I1 => N00006, 
	I2 => N00008, 
	O => N00021
);
U10 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => D, 
	O => N00028
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

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2RE	 PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00016 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
U5 : AND4	PORT MAP(
	I0 => N00032, 
	I1 => N00024, 
	I2 => N00016, 
	I3 => N00008, 
	O => TC
);
U3 : CB2RE	PORT MAP(
	CE => N00014, 
	C => C, 
	R => R, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00022, 
	TC => N00024
);
U4 : CB2RE	PORT MAP(
	CE => N00022, 
	C => C, 
	R => R, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => CEO, 
	TC => N00032
);
U1 : CB2RE	PORT MAP(
	CE => CE, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2RE	PORT MAP(
	CE => N00006, 
	C => C, 
	R => R, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00014, 
	TC => N00016
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
SIGNAL N00047 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00037 : std_logic;

-- GATE INSTANCES

BEGIN
U22 : M2_1	PORT MAP(
	D0 => I7, 
	D1 => I0, 
	S0 => S0, 
	O => N00057
);
U11 : M2_1	PORT MAP(
	D0 => N00017, 
	D1 => N00037, 
	S0 => S1, 
	O => N00034
);
U3 : M2_1	PORT MAP(
	D0 => N00004, 
	D1 => N00008, 
	S0 => S2, 
	O => O0
);
U23 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => N00013, 
	S0 => S1, 
	O => N00038
);
U12 : M2_1	PORT MAP(
	D0 => N00034, 
	D1 => N00038, 
	S0 => S2, 
	O => O3
);
U4 : M2_1	PORT MAP(
	D0 => I1, 
	D1 => I2, 
	S0 => S0, 
	O => N00013
);
U24 : M2_1	PORT MAP(
	D0 => N00038, 
	D1 => N00034, 
	S0 => S2, 
	O => O7
);
U13 : M2_1	PORT MAP(
	D0 => I4, 
	D1 => I5, 
	S0 => S0, 
	O => N00027
);
U5 : M2_1	PORT MAP(
	D0 => N00013, 
	D1 => N00017, 
	S0 => S1, 
	O => N00014
);
U14 : M2_1	PORT MAP(
	D0 => N00027, 
	D1 => N00047, 
	S0 => S1, 
	O => N00008
);
U6 : M2_1	PORT MAP(
	D0 => N00014, 
	D1 => N00018, 
	S0 => S2, 
	O => O1
);
U15 : M2_1	PORT MAP(
	D0 => N00008, 
	D1 => N00004, 
	S0 => S2, 
	O => O4
);
U7 : M2_1	PORT MAP(
	D0 => I2, 
	D1 => I3, 
	S0 => S0, 
	O => N00007
);
U16 : M2_1	PORT MAP(
	D0 => I5, 
	D1 => I6, 
	S0 => S0, 
	O => N00037
);
U8 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => N00027, 
	S0 => S1, 
	O => N00024
);
U17 : M2_1	PORT MAP(
	D0 => N00037, 
	D1 => N00057, 
	S0 => S1, 
	O => N00018
);
U9 : M2_1	PORT MAP(
	D0 => N00024, 
	D1 => N00028, 
	S0 => S2, 
	O => O2
);
U18 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => N00014, 
	S0 => S2, 
	O => O5
);
U19 : M2_1	PORT MAP(
	D0 => I6, 
	D1 => I7, 
	S0 => S0, 
	O => N00047
);
U20 : M2_1	PORT MAP(
	D0 => N00047, 
	D1 => N00003, 
	S0 => S1, 
	O => N00028
);
U1 : M2_1	PORT MAP(
	D0 => I0, 
	D1 => I1, 
	S0 => S0, 
	O => N00003
);
U21 : M2_1	PORT MAP(
	D0 => N00028, 
	D1 => N00024, 
	S0 => S2, 
	O => O6
);
U2 : M2_1	PORT MAP(
	D0 => N00003, 
	D1 => N00007, 
	S0 => S1, 
	O => N00004
);
U10 : M2_1	PORT MAP(
	D0 => I3, 
	D1 => I4, 
	S0 => S0, 
	O => N00017
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU8X2 IS PORT (
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
	CO : OUT std_logic
); END ADSU8X2;



ARCHITECTURE STRUCTURE OF ADSU8X2 IS

-- COMPONENTS

COMPONENT ADSU1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00048 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00027 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : ADSU1X2	PORT MAP(
	CI => N00013, 
	A0 => A2, 
	B0 => B2, 
	ADD => ADD, 
	S0 => S2, 
	CO => N00020
);
U4 : ADSU1X2	PORT MAP(
	CI => N00020, 
	A0 => A3, 
	B0 => B3, 
	ADD => ADD, 
	S0 => S3, 
	CO => N00027
);
U5 : ADSU1X2	PORT MAP(
	CI => N00027, 
	A0 => A4, 
	B0 => B4, 
	ADD => ADD, 
	S0 => S4, 
	CO => N00034
);
U6 : ADSU1X2	PORT MAP(
	CI => N00034, 
	A0 => A5, 
	B0 => B5, 
	ADD => ADD, 
	S0 => S5, 
	CO => N00041
);
U7 : ADSU1X2	PORT MAP(
	CI => N00041, 
	A0 => A6, 
	B0 => B6, 
	ADD => ADD, 
	S0 => S6, 
	CO => N00048
);
U8 : ADSU1X2	PORT MAP(
	CI => N00048, 
	A0 => A7, 
	B0 => B7, 
	ADD => ADD, 
	S0 => S7, 
	CO => CO
);
U1 : ADSU1X2	PORT MAP(
	CI => CI, 
	A0 => A0, 
	B0 => B0, 
	ADD => ADD, 
	S0 => S0, 
	CO => N00006
);
U2 : ADSU1X2	PORT MAP(
	CI => N00006, 
	A0 => A1, 
	B0 => B1, 
	ADD => ADD, 
	S0 => S1, 
	CO => N00013
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

COMPONENT AND4B2
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT ADSU8X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD1X1	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00077 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00049 : std_logic;

-- GATE INSTANCES

BEGIN
S15<=N00049;
U4 : AND4B2	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	I2 => ADD, 
	I3 => N00049, 
	O => N00053
);
U5 : AND4B1	PORT MAP(
	I0 => N00049, 
	I1 => ADD, 
	I2 => B15, 
	I3 => A15, 
	O => N00068
);
U6 : OR4	PORT MAP(
	I3 => N00053, 
	I2 => N00068, 
	I1 => N00075, 
	I0 => N00077, 
	O => OFL
);
U7 : AND4B2	PORT MAP(
	I0 => A15, 
	I1 => ADD, 
	I2 => N00049, 
	I3 => B15, 
	O => N00075
);
U9 : AND4B3	PORT MAP(
	I0 => ADD, 
	I1 => B15, 
	I2 => N00049, 
	I3 => A15, 
	O => N00077
);
U10 : GND	PORT MAP(
	G => N00088
);
U3 : ADSU8X2	PORT MAP(
	CI => N00024, 
	A0 => A8, 
	A1 => A9, 
	A2 => A10, 
	A3 => A11, 
	A4 => A12, 
	A5 => A13, 
	A6 => A14, 
	A7 => A15, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	ADD => ADD, 
	S0 => S8, 
	S1 => S9, 
	S2 => S10, 
	S3 => S11, 
	S4 => S12, 
	S5 => S13, 
	S6 => S14, 
	S7 => N00049, 
	CO => N00055
);
U8 : ADD1X2	PORT MAP(
	CI => N00055, 
	A0 => N00088, 
	B0 => N00088, 
	S0 => CO, 
	CO => OPEN
);
U1 : ADD1X1	PORT MAP(
	A0 => CI, 
	B0 => CI, 
	S0 => OPEN, 
	CO => N00004
);
U2 : ADSU8X2	PORT MAP(
	CI => N00004, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
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
	CO => N00024
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU1 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END ADSU1;



ARCHITECTURE STRUCTURE OF ADSU1 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND3B3
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
SIGNAL N00022 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => A0, 
	O => N00004
);
U2 : AND3	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => CI, 
	O => N00008
);
U3 : OR5	PORT MAP(
	I4 => N00004, 
	I3 => N00008, 
	I2 => N00013, 
	I1 => N00016, 
	I0 => N00022, 
	O => CO
);
U4 : AND3B2	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => A0, 
	O => N00013
);
U5 : AND3B2	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	I2 => CI, 
	O => N00016
);
U6 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => N00022
);
U7 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => N00026, 
	O => S0
);
U8 : AND3B3	PORT MAP(
	I0 => CI, 
	I1 => ADD, 
	I2 => B0, 
	O => N00029
);
U9 : AND3B1	PORT MAP(
	I0 => CI, 
	I1 => ADD, 
	I2 => B0, 
	O => N00033
);
U10 : OR4	PORT MAP(
	I3 => N00029, 
	I2 => N00033, 
	I1 => N00037, 
	I0 => N00044, 
	O => N00026
);
U11 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => CI, 
	O => N00037
);
U12 : AND3B1	PORT MAP(
	I0 => ADD, 
	I1 => CI, 
	I2 => B0, 
	O => N00044
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

COMPONENT XOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I0, 
	I2 => I1, 
	I1 => I2, 
	I0 => I3, 
	O => N00004
);
U2 : XNOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00010, 
	O => O
);
U3 : XOR3	PORT MAP(
	I2 => I4, 
	I1 => I5, 
	I0 => I6, 
	O => N00010
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

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL SLI : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00004;
QB<=N00011;
QC<=N00017;
QD<=N00023;
QE<=N00029;
QF<=N00035;
QG<=N00041;
U1 : VCC	PORT MAP(
	P => N00006
);
U2 : AND2	PORT MAP(
	I0 => B, 
	I1 => A, 
	O => SLI
);
U11 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U3 : FDCE	PORT MAP(
	D => SLI, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00004
);
U4 : FDCE	PORT MAP(
	D => N00004, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00011
);
U5 : FDCE	PORT MAP(
	D => N00011, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00017
);
U6 : FDCE	PORT MAP(
	D => N00017, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00023
);
U7 : FDCE	PORT MAP(
	D => N00023, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00029
);
U8 : FDCE	PORT MAP(
	D => N00029, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00035
);
U9 : FDCE	PORT MAP(
	D => N00035, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => N00041
);
U10 : FDCE	PORT MAP(
	D => N00041, 
	CE => N00006, 
	C => CK, 
	CLR => CLRB, 
	Q => QH
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
SIGNAL E1 : std_logic;
SIGNAL M2_23 : std_logic;
SIGNAL M2_01 : std_logic;
SIGNAL M1_23 : std_logic;
SIGNAL M1_01 : std_logic;
SIGNAL E2 : std_logic;

-- GATE INSTANCES

BEGIN
U4 : INV	PORT MAP(
	O => E1, 
	I => G1
);
U8 : INV	PORT MAP(
	O => E2, 
	I => G2
);
U3 : M2_1	PORT MAP(
	D0 => I1C2, 
	D1 => I1C3, 
	S0 => A, 
	O => M1_23
);
U5 : M2_1	PORT MAP(
	D0 => I2C0, 
	D1 => I2C1, 
	S0 => A, 
	O => M2_01
);
U6 : M2_1E	PORT MAP(
	D0 => M2_01, 
	D1 => M2_23, 
	S0 => B, 
	O => Y2, 
	E => E2
);
U7 : M2_1	PORT MAP(
	D0 => I2C2, 
	D1 => I2C3, 
	S0 => A, 
	O => M2_23
);
U1 : M2_1	PORT MAP(
	D0 => I1C0, 
	D1 => I1C1, 
	S0 => A, 
	O => M1_01
);
U2 : M2_1E	PORT MAP(
	D0 => M1_01, 
	D1 => M1_23, 
	S0 => B, 
	O => Y1, 
	E => E1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB8X2 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
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
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END CB8X2;



ARCHITECTURE STRUCTURE OF CB8X2 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND9
	PORT (
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
	); END COMPONENT;

COMPONENT AND3B2
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00379 : std_logic;
SIGNAL N00294 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00314 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00296 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00381 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00254 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00208 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00303 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00214 : std_logic;
SIGNAL N00375 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00370 : std_logic;
SIGNAL N00301 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00355 : std_logic;
SIGNAL N00352 : std_logic;
SIGNAL N00339 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00173 : std_logic;
SIGNAL N00188 : std_logic;
SIGNAL N00177 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00321 : std_logic;
SIGNAL N00387 : std_logic;
SIGNAL N00342 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00216 : std_logic;
SIGNAL N00171 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00307 : std_logic;
SIGNAL N00262 : std_logic;
SIGNAL N00392 : std_logic;
SIGNAL N00250 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00220 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00390 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00260 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00357 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00396 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00197 : std_logic;
SIGNAL N00351 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00310 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00394 : std_logic;
SIGNAL N00285 : std_logic;
SIGNAL N00349 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00287 : std_logic;
SIGNAL N00266 : std_logic;
SIGNAL N00336 : std_logic;
SIGNAL N00228 : std_logic;
SIGNAL N00183 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00354 : std_logic;
SIGNAL N00332 : std_logic;
SIGNAL N00246 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00363 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00397 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00187 : std_logic;
SIGNAL N00401 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00399 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00270 : std_logic;
SIGNAL N00313 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00276 : std_logic;
SIGNAL N00235 : std_logic;
SIGNAL N00190 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00361 : std_logic;
SIGNAL N00274 : std_logic;
SIGNAL N00242 : std_logic;
SIGNAL N00233 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00403 : std_logic;
SIGNAL N00360 : std_logic;
SIGNAL N00272 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00231 : std_logic;
SIGNAL N00239 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00281 : std_logic;
SIGNAL N00405 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00194 : std_logic;
SIGNAL N00237 : std_logic;
SIGNAL N00385 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00279 : std_logic;
SIGNAL N00192 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00277 : std_logic;
SIGNAL N00265 : std_logic;
SIGNAL N00202 : std_logic;
SIGNAL N00347 : std_logic;
SIGNAL N00369 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00200 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00345 : std_logic;
SIGNAL N00240 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00283 : std_logic;
SIGNAL N00292 : std_logic;
SIGNAL N00185 : std_logic;
SIGNAL N00249 : std_logic;
SIGNAL N00374 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00372 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00383 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00224 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00377 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00079 : std_logic;

-- GATE INSTANCES

BEGIN
TCD<=N00336;
TCU<=N00321;
Q0<=N00019;
Q1<=N00018;
Q2<=N00017;
Q3<=N00016;
Q4<=N00015;
Q5<=N00014;
Q6<=N00013;
Q7<=N00012;
U45 : INV	PORT MAP(
	O => N00113, 
	I => N00018
);
U77 : INV	PORT MAP(
	O => N00183, 
	I => N00010
);
U13 : AND5B4	PORT MAP(
	I0 => N00019, 
	I1 => N00010, 
	I2 => R, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00044
);
U46 : INV	PORT MAP(
	O => N00115, 
	I => N00017
);
U78 : INV	PORT MAP(
	O => N00185, 
	I => N00019
);
U14 : OR2	PORT MAP(
	I1 => N00044, 
	I0 => N00050, 
	O => N00047
);
U47 : OR2	PORT MAP(
	I1 => N00109, 
	I0 => N00122, 
	O => N00116
);
U79 : INV	PORT MAP(
	O => N00187, 
	I => R
);
U15 : AND4	PORT MAP(
	I0 => N00054, 
	I1 => N00052, 
	I2 => N00006, 
	I3 => N00019, 
	O => N00050
);
U16 : INV	PORT MAP(
	O => N00052, 
	I => N00010
);
U48 : INV	PORT MAP(
	O => N00118, 
	I => R
);
U49 : AND6	PORT MAP(
	I0 => N00017, 
	I1 => N00018, 
	I2 => N00019, 
	I3 => N00121, 
	I4 => N00006, 
	I5 => N00118, 
	O => N00122
);
U17 : INV	PORT MAP(
	O => N00054, 
	I => R
);
U18 : XOR2	PORT MAP(
	I1 => N00047, 
	I0 => N00062, 
	O => N00055
);
U150 : INV	PORT MAP(
	O => N00336, 
	I => N00361
);
U151 : AND2B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	O => N00370
);
U152 : INV	PORT MAP(
	O => N00369, 
	I => N00010
);
U120 : INV	PORT MAP(
	O => N00281, 
	I => N00016
);
U153 : AND2	PORT MAP(
	I0 => N00375, 
	I1 => N00370, 
	O => N00363
);
U121 : INV	PORT MAP(
	O => N00283, 
	I => N00015
);
U154 : INV	PORT MAP(
	O => N00372, 
	I => N00019
);
U122 : INV	PORT MAP(
	O => N00285, 
	I => N00014
);
U155 : AND9	PORT MAP(
	I0 => N00387, 
	I1 => N00385, 
	I2 => N00383, 
	I3 => N00381, 
	I4 => N00379, 
	I5 => N00377, 
	I6 => N00374, 
	I7 => N00372, 
	I8 => N00369, 
	O => N00375
);
U123 : AND3B2	PORT MAP(
	I0 => N00013, 
	I1 => R, 
	I2 => N00277, 
	O => N00287
);
U156 : INV	PORT MAP(
	O => N00374, 
	I => N00018
);
U124 : AND9	PORT MAP(
	I0 => N00014, 
	I1 => N00015, 
	I2 => N00016, 
	I3 => N00017, 
	I4 => N00018, 
	I5 => N00019, 
	I6 => N00292, 
	I7 => N00006, 
	I8 => N00013, 
	O => N00296
);
U157 : INV	PORT MAP(
	O => N00377, 
	I => N00017
);
U125 : INV	PORT MAP(
	O => N00292, 
	I => N00010
);
U158 : INV	PORT MAP(
	O => N00379, 
	I => N00016
);
U126 : OR2	PORT MAP(
	I1 => N00287, 
	I0 => N00301, 
	O => N00294
);
U159 : INV	PORT MAP(
	O => N00381, 
	I => N00015
);
U127 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => N00296, 
	O => N00301
);
U128 : XOR2	PORT MAP(
	I1 => N00294, 
	I0 => N00310, 
	O => N00303
);
U1 : OR2	PORT MAP(
	I1 => CED, 
	I0 => N00004, 
	O => N00003
);
U80 : INV	PORT MAP(
	O => N00190, 
	I => N00018
);
U81 : INV	PORT MAP(
	O => N00192, 
	I => N00017
);
U2 : OR2	PORT MAP(
	I1 => CEU, 
	I0 => N00004, 
	O => N00006
);
U50 : INV	PORT MAP(
	O => N00121, 
	I => N00010
);
U82 : INV	PORT MAP(
	O => N00194, 
	I => N00016
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00004, 
	O => N00010
);
U4 : GND	PORT MAP(
	G => N00004
);
U83 : INV	PORT MAP(
	O => N00196, 
	I => N00015
);
U51 : XOR2	PORT MAP(
	I1 => N00116, 
	I0 => N00133, 
	O => N00126
);
U5 : AND4B3	PORT MAP(
	I0 => R, 
	I1 => N00010, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00022
);
U84 : OR2	PORT MAP(
	I1 => N00188, 
	I0 => N00204, 
	O => N00197
);
U20 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00018, 
	O => N00060
);
U21 : OR2	PORT MAP(
	I1 => N00060, 
	I0 => N00066, 
	O => N00062
);
U6 : OR2	PORT MAP(
	I1 => N00022, 
	I0 => N00027, 
	O => N00029
);
U85 : INV	PORT MAP(
	O => N00200, 
	I => R
);
U53 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00016, 
	O => N00131
);
U7 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00006, 
	O => N00027
);
U54 : OR2	PORT MAP(
	I1 => N00131, 
	I0 => N00137, 
	O => N00133
);
U86 : AND8	PORT MAP(
	I0 => N00015, 
	I1 => N00016, 
	I2 => N00017, 
	I3 => N00018, 
	I4 => N00019, 
	I5 => N00202, 
	I6 => N00200, 
	I7 => N00006, 
	O => N00204
);
U22 : AND3	PORT MAP(
	I0 => D1, 
	I1 => N00065, 
	I2 => N00010, 
	O => N00066
);
U87 : INV	PORT MAP(
	O => N00202, 
	I => N00010
);
U8 : XOR2	PORT MAP(
	I1 => N00029, 
	I0 => N00031, 
	O => N00030
);
U55 : AND3	PORT MAP(
	I0 => D3, 
	I1 => N00136, 
	I2 => N00010, 
	O => N00137
);
U23 : INV	PORT MAP(
	O => N00065, 
	I => R
);
U88 : XOR2	PORT MAP(
	I1 => N00197, 
	I0 => N00216, 
	O => N00208
);
U56 : INV	PORT MAP(
	O => N00136, 
	I => R
);
U24 : INV	PORT MAP(
	O => N00070, 
	I => N00006
);
U57 : INV	PORT MAP(
	O => N00141, 
	I => N00019
);
U25 : AND6	PORT MAP(
	I0 => N00079, 
	I1 => N00077, 
	I2 => N00075, 
	I3 => N00072, 
	I4 => N00070, 
	I5 => N00003, 
	O => N00073
);
U58 : AND8	PORT MAP(
	I0 => N00154, 
	I1 => N00152, 
	I2 => N00150, 
	I3 => N00148, 
	I4 => N00145, 
	I5 => N00143, 
	I6 => N00141, 
	I7 => N00003, 
	O => N00146
);
U26 : INV	PORT MAP(
	O => N00072, 
	I => N00010
);
U59 : INV	PORT MAP(
	O => N00143, 
	I => N00006
);
U27 : INV	PORT MAP(
	O => N00075, 
	I => R
);
U28 : INV	PORT MAP(
	O => N00077, 
	I => N00019
);
U29 : INV	PORT MAP(
	O => N00079, 
	I => N00018
);
U160 : INV	PORT MAP(
	O => N00383, 
	I => N00014
);
U161 : INV	PORT MAP(
	O => N00385, 
	I => N00013
);
U162 : INV	PORT MAP(
	O => N00387, 
	I => N00012
);
U130 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00012, 
	O => N00307
);
U163 : INV	PORT MAP(
	O => N00390, 
	I => D0
);
U131 : OR2	PORT MAP(
	I1 => N00307, 
	I0 => N00314, 
	O => N00310
);
U164 : AND9	PORT MAP(
	I0 => N00405, 
	I1 => N00403, 
	I2 => N00401, 
	I3 => N00399, 
	I4 => N00396, 
	I5 => N00394, 
	I6 => N00392, 
	I7 => N00390, 
	I8 => N00010, 
	O => N00397
);
U100 : INV	PORT MAP(
	O => N00235, 
	I => N00016
);
U132 : AND3	PORT MAP(
	I0 => D7, 
	I1 => N00313, 
	I2 => N00010, 
	O => N00314
);
U165 : INV	PORT MAP(
	O => N00392, 
	I => D1
);
U101 : INV	PORT MAP(
	O => N00237, 
	I => N00015
);
U133 : INV	PORT MAP(
	O => N00313, 
	I => R
);
U166 : INV	PORT MAP(
	O => N00394, 
	I => D2
);
U134 : AND8	PORT MAP(
	I0 => N00012, 
	I1 => N00013, 
	I2 => N00014, 
	I3 => N00015, 
	I4 => N00016, 
	I5 => N00017, 
	I6 => N00018, 
	I7 => N00019, 
	O => N00321
);
U102 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => N00231, 
	O => N00240
);
U167 : INV	PORT MAP(
	O => N00396, 
	I => D3
);
U135 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => N00321, 
	O => CEOU
);
U103 : INV	PORT MAP(
	O => N00239, 
	I => N00014
);
U168 : INV	PORT MAP(
	O => N00399, 
	I => D4
);
U136 : AND3B1	PORT MAP(
	I0 => N00010, 
	I1 => N00006, 
	I2 => N00321, 
	O => N00332
);
U104 : OR2	PORT MAP(
	I1 => N00240, 
	I0 => N00250, 
	O => N00242
);
U169 : INV	PORT MAP(
	O => N00401, 
	I => D5
);
U137 : AND3B1	PORT MAP(
	I0 => N00006, 
	I1 => N00336, 
	I2 => N00003, 
	O => CEOD
);
U105 : AND9	PORT MAP(
	I0 => N00014, 
	I1 => N00015, 
	I2 => N00016, 
	I3 => N00017, 
	I4 => N00249, 
	I5 => N00019, 
	I6 => N00246, 
	I7 => N00006, 
	I8 => N00018, 
	O => N00250
);
U138 : INV	PORT MAP(
	O => N00339, 
	I => N00006
);
U106 : INV	PORT MAP(
	O => N00246, 
	I => N00010
);
U139 : AND9	PORT MAP(
	I0 => N00354, 
	I1 => N00351, 
	I2 => N00349, 
	I3 => N00347, 
	I4 => N00345, 
	I5 => N00019, 
	I6 => N00342, 
	I7 => N00339, 
	I8 => N00003, 
	O => N00352
);
U107 : INV	PORT MAP(
	O => N00249, 
	I => R
);
U108 : XOR2	PORT MAP(
	I1 => N00242, 
	I0 => N00262, 
	O => N00254
);
U90 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00014, 
	O => N00214
);
U91 : OR2	PORT MAP(
	I1 => N00214, 
	I0 => N00220, 
	O => N00216
);
U60 : INV	PORT MAP(
	O => N00145, 
	I => N00010
);
U92 : AND3	PORT MAP(
	I0 => D5, 
	I1 => N00219, 
	I2 => N00010, 
	O => N00220
);
U93 : INV	PORT MAP(
	O => N00219, 
	I => R
);
U61 : INV	PORT MAP(
	O => N00148, 
	I => N00018
);
U62 : INV	PORT MAP(
	O => N00150, 
	I => N00017
);
U94 : INV	PORT MAP(
	O => N00224, 
	I => N00006
);
U30 : OR2	PORT MAP(
	I1 => N00073, 
	I0 => N00086, 
	O => N00080
);
U31 : INV	PORT MAP(
	O => N00082, 
	I => N00010
);
U63 : INV	PORT MAP(
	O => N00152, 
	I => N00016
);
U95 : AND9	PORT MAP(
	I0 => N00239, 
	I1 => N00237, 
	I2 => N00235, 
	I3 => N00233, 
	I4 => N00230, 
	I5 => N00228, 
	I6 => N00226, 
	I7 => N00224, 
	I8 => N00003, 
	O => N00231
);
U96 : INV	PORT MAP(
	O => N00226, 
	I => N00010
);
U64 : OR2	PORT MAP(
	I1 => N00146, 
	I0 => N00162, 
	O => N00155
);
U32 : AND5	PORT MAP(
	I0 => N00018, 
	I1 => N00019, 
	I2 => N00085, 
	I3 => N00006, 
	I4 => N00082, 
	O => N00086
);
U97 : INV	PORT MAP(
	O => N00228, 
	I => N00019
);
U65 : INV	PORT MAP(
	O => N00154, 
	I => R
);
U33 : INV	PORT MAP(
	O => N00085, 
	I => R
);
U98 : INV	PORT MAP(
	O => N00230, 
	I => N00018
);
U34 : XOR2	PORT MAP(
	I1 => N00080, 
	I0 => N00096, 
	O => N00089
);
U66 : AND7	PORT MAP(
	I0 => N00016, 
	I1 => N00017, 
	I2 => N00018, 
	I3 => N00161, 
	I4 => N00159, 
	I5 => N00006, 
	I6 => N00019, 
	O => N00162
);
U99 : INV	PORT MAP(
	O => N00233, 
	I => N00017
);
U67 : INV	PORT MAP(
	O => N00159, 
	I => N00010
);
U68 : INV	PORT MAP(
	O => N00161, 
	I => R
);
U36 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00017, 
	O => N00094
);
U37 : OR2	PORT MAP(
	I1 => N00094, 
	I0 => N00100, 
	O => N00096
);
U69 : XOR2	PORT MAP(
	I1 => N00155, 
	I0 => N00173, 
	O => N00166
);
U38 : AND3	PORT MAP(
	I0 => D2, 
	I1 => N00099, 
	I2 => N00010, 
	O => N00100
);
U39 : INV	PORT MAP(
	O => N00099, 
	I => R
);
U170 : INV	PORT MAP(
	O => N00403, 
	I => D6
);
U171 : INV	PORT MAP(
	O => N00405, 
	I => D7
);
U140 : INV	PORT MAP(
	O => N00342, 
	I => N00010
);
U141 : INV	PORT MAP(
	O => N00345, 
	I => N00018
);
U142 : INV	PORT MAP(
	O => N00347, 
	I => N00017
);
U110 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00013, 
	O => N00260
);
U143 : INV	PORT MAP(
	O => N00349, 
	I => N00016
);
U111 : OR2	PORT MAP(
	I1 => N00260, 
	I0 => N00266, 
	O => N00262
);
U144 : INV	PORT MAP(
	O => N00351, 
	I => N00015
);
U112 : AND3	PORT MAP(
	I0 => D6, 
	I1 => N00265, 
	I2 => N00010, 
	O => N00266
);
U145 : AND2	PORT MAP(
	I0 => N00355, 
	I1 => N00352, 
	O => N00357
);
U113 : INV	PORT MAP(
	O => N00265, 
	I => R
);
U146 : INV	PORT MAP(
	O => N00354, 
	I => N00014
);
U114 : INV	PORT MAP(
	O => N00270, 
	I => N00006
);
U147 : AND2B2	PORT MAP(
	I0 => N00012, 
	I1 => N00013, 
	O => N00355
);
U115 : AND9	PORT MAP(
	I0 => N00285, 
	I1 => N00283, 
	I2 => N00281, 
	I3 => N00279, 
	I4 => N00276, 
	I5 => N00274, 
	I6 => N00272, 
	I7 => N00270, 
	I8 => N00003, 
	O => N00277
);
U116 : INV	PORT MAP(
	O => N00272, 
	I => N00010
);
U148 : NOR5	PORT MAP(
	I4 => N00332, 
	I3 => N00357, 
	I2 => R, 
	I1 => N00363, 
	I0 => N00397, 
	O => N00360
);
U117 : INV	PORT MAP(
	O => N00274, 
	I => N00019
);
U118 : INV	PORT MAP(
	O => N00276, 
	I => N00018
);
U119 : INV	PORT MAP(
	O => N00279, 
	I => N00017
);
U71 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00015, 
	O => N00171
);
U40 : INV	PORT MAP(
	O => N00104, 
	I => N00006
);
U72 : OR2	PORT MAP(
	I1 => N00171, 
	I0 => N00177, 
	O => N00173
);
U73 : AND3	PORT MAP(
	I0 => D4, 
	I1 => N00176, 
	I2 => N00010, 
	O => N00177
);
U41 : AND7	PORT MAP(
	I0 => N00115, 
	I1 => N00113, 
	I2 => N00111, 
	I3 => N00108, 
	I4 => N00106, 
	I5 => N00104, 
	I6 => N00003, 
	O => N00109
);
U10 : AND3B2	PORT MAP(
	I0 => N00010, 
	I1 => R, 
	I2 => N00019, 
	O => N00035
);
U42 : INV	PORT MAP(
	O => N00106, 
	I => N00010
);
U74 : INV	PORT MAP(
	O => N00176, 
	I => R
);
U75 : INV	PORT MAP(
	O => N00181, 
	I => N00006
);
U11 : OR2	PORT MAP(
	I1 => N00035, 
	I0 => N00039, 
	O => N00031
);
U43 : INV	PORT MAP(
	O => N00108, 
	I => R
);
U44 : INV	PORT MAP(
	O => N00111, 
	I => N00019
);
U76 : AND9	PORT MAP(
	I0 => N00196, 
	I1 => N00194, 
	I2 => N00192, 
	I3 => N00190, 
	I4 => N00187, 
	I5 => N00185, 
	I6 => N00183, 
	I7 => N00181, 
	I8 => N00003, 
	O => N00188
);
U12 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D0, 
	I2 => N00010, 
	O => N00039
);
U89 : FD	PORT MAP(
	D => N00208, 
	C => C, 
	Q => N00014
);
U35 : FD	PORT MAP(
	D => N00089, 
	C => C, 
	Q => N00017
);
U149 : FD	PORT MAP(
	D => N00360, 
	C => C, 
	Q => N00361
);
U129 : FD	PORT MAP(
	D => N00303, 
	C => C, 
	Q => N00012
);
U9 : FD	PORT MAP(
	D => N00030, 
	C => C, 
	Q => N00019
);
U109 : FD	PORT MAP(
	D => N00254, 
	C => C, 
	Q => N00013
);
U19 : FD	PORT MAP(
	D => N00055, 
	C => C, 
	Q => N00018
);
U70 : FD	PORT MAP(
	D => N00166, 
	C => C, 
	Q => N00015
);
U52 : FD	PORT MAP(
	D => N00126, 
	C => C, 
	Q => N00016
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

COMPONENT XOR2
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00005;
Q1<=N00012;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : XOR2	PORT MAP(
	I1 => N00005, 
	I0 => N00003, 
	O => N00007
);
U5 : XOR2	PORT MAP(
	I1 => N00012, 
	I0 => N00020, 
	O => N00016
);
U6 : AND3	PORT MAP(
	I0 => N00012, 
	I1 => N00005, 
	I2 => N00003, 
	O => CEO
);
U7 : AND2	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00020
);
U9 : AND2	PORT MAP(
	I0 => N00012, 
	I1 => N00005, 
	O => TC
);
U4 : FDC	PORT MAP(
	D => N00007, 
	C => C, 
	CLR => CLR, 
	Q => N00005
);
U8 : FDC	PORT MAP(
	D => N00016, 
	C => C, 
	CLR => CLR, 
	Q => N00012
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

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2CLE	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00072 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00061 : std_logic;

-- GATE INSTANCES

BEGIN
U9 : AND8	PORT MAP(
	I0 => N00085, 
	I1 => N00074, 
	I2 => N00063, 
	I3 => N00052, 
	I4 => N00041, 
	I5 => N00030, 
	I6 => N00019, 
	I7 => N00008, 
	O => TC
);
U3 : CB2CLE	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	L => L, 
	CE => N00017, 
	C => C, 
	CLR => CLR, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00028, 
	TC => N00030
);
U4 : CB2CLE	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	L => L, 
	CE => N00028, 
	C => C, 
	CLR => CLR, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => N00039, 
	TC => N00041
);
U5 : CB2CLE	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	L => L, 
	CE => N00039, 
	C => C, 
	CLR => CLR, 
	Q0 => Q8, 
	Q1 => Q9, 
	CEO => N00050, 
	TC => N00052
);
U6 : CB2CLE	PORT MAP(
	D0 => D10, 
	D1 => D11, 
	L => L, 
	CE => N00050, 
	C => C, 
	CLR => CLR, 
	Q0 => Q10, 
	Q1 => Q11, 
	CEO => N00061, 
	TC => N00063
);
U7 : CB2CLE	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	L => L, 
	CE => N00061, 
	C => C, 
	CLR => CLR, 
	Q0 => Q12, 
	Q1 => Q13, 
	CEO => N00072, 
	TC => N00074
);
U8 : CB2CLE	PORT MAP(
	D0 => D14, 
	D1 => D15, 
	L => L, 
	CE => N00072, 
	C => C, 
	CLR => CLR, 
	Q0 => Q14, 
	Q1 => Q15, 
	CEO => CEO, 
	TC => N00085
);
U1 : CB2CLE	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	L => L, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2CLE	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	L => L, 
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00017, 
	TC => N00019
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
U1 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U2 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U3 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U4 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU1X1 IS PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END ADSU1X1;



ARCHITECTURE STRUCTURE OF ADSU1X1 IS

-- COMPONENTS

COMPONENT XOR2
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

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => S0
);
U2 : AND3	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	I2 => ADD, 
	O => N00007
);
U3 : AND2B1	PORT MAP(
	I0 => ADD, 
	I1 => A0, 
	O => N00010
);
U4 : OR3	PORT MAP(
	I2 => N00007, 
	I1 => N00010, 
	I0 => N00014, 
	O => CO
);
U5 : AND2B2	PORT MAP(
	I0 => ADD, 
	I1 => B0, 
	O => N00014
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

COMPONENT AND3B1
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

COMPONENT ADD8X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD1X1	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00067 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00074 : std_logic;

-- GATE INSTANCES

BEGIN
S15<=N00049;
U4 : AND3B2	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	I2 => N00049, 
	O => N00061
);
U5 : OR2	PORT MAP(
	I1 => N00061, 
	I0 => N00067, 
	O => OFL
);
U6 : AND3B1	PORT MAP(
	I0 => N00049, 
	I1 => A15, 
	I2 => B15, 
	O => N00067
);
U8 : GND	PORT MAP(
	G => N00074
);
U3 : ADD8X2	PORT MAP(
	CI => N00024, 
	A0 => A8, 
	A1 => A9, 
	A2 => A10, 
	A3 => A11, 
	A4 => A12, 
	A5 => A13, 
	A6 => A14, 
	A7 => A15, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	S0 => S8, 
	S1 => S9, 
	S2 => S10, 
	S3 => S11, 
	S4 => S12, 
	S5 => S13, 
	S6 => S14, 
	S7 => N00049, 
	CO => N00051
);
U7 : ADD1X2	PORT MAP(
	CI => N00051, 
	A0 => N00074, 
	B0 => N00074, 
	S0 => CO, 
	CO => OPEN
);
U1 : ADD1X1	PORT MAP(
	A0 => CI, 
	B0 => CI, 
	S0 => OPEN, 
	CO => N00004
);
U2 : ADD8X2	PORT MAP(
	CI => N00004, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	S4 => S4, 
	S5 => S5, 
	S6 => S6, 
	S7 => S7, 
	CO => N00024
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

COMPONENT ACC8X2	 PORT (
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
	R : IN std_logic
); END COMPONENT;

COMPONENT ACC8	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACC8X2	PORT MAP(
	CI => CI, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	B4 => B4, 
	B5 => B5, 
	B6 => B6, 
	B7 => B7, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7, 
	CO => N00020, 
	R => R
);
U2 : ACC8	PORT MAP(
	CI => N00020, 
	B0 => B8, 
	B1 => B9, 
	B2 => B10, 
	B3 => B11, 
	B4 => B12, 
	B5 => B13, 
	B6 => B14, 
	B7 => B15, 
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15, 
	CO => CO, 
	OFL => OFL, 
	R => R
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
U7 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U3 : FDC	PORT MAP(
	D => D3, 
	C => CK, 
	CLR => CLRB, 
	Q => Q3
);
U4 : FDC	PORT MAP(
	D => D4, 
	C => CK, 
	CLR => CLRB, 
	Q => Q4
);
U5 : FDC	PORT MAP(
	D => D5, 
	C => CK, 
	CLR => CLRB, 
	Q => Q5
);
U6 : FDC	PORT MAP(
	D => D6, 
	C => CK, 
	CLR => CLRB, 
	Q => Q6
);
U1 : FDC	PORT MAP(
	D => D1, 
	C => CK, 
	CLR => CLRB, 
	Q => Q1
);
U2 : FDC	PORT MAP(
	D => D2, 
	C => CK, 
	CLR => CLRB, 
	Q => Q2
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

COMPONENT XOR2
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00090 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00073 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00015;
QB<=N00014;
QC<=N00013;
QD<=N00012;
U13 : XOR2	PORT MAP(
	I1 => N00040, 
	I0 => N00050, 
	O => N00043
);
U15 : AND3	PORT MAP(
	I0 => N00014, 
	I1 => R, 
	I2 => N00003, 
	O => N00048
);
U16 : OR2	PORT MAP(
	I1 => N00048, 
	I0 => N00053, 
	O => N00050
);
U17 : AND3B1	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => B, 
	O => N00053
);
U18 : AND6	PORT MAP(
	I0 => R, 
	I1 => N00014, 
	I2 => N00015, 
	I3 => N00006, 
	I4 => N00003, 
	I5 => N00009, 
	O => N00058
);
U19 : XOR2	PORT MAP(
	I1 => N00058, 
	I0 => N00069, 
	O => N00062
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => LOAD, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => N00002, 
	O => N00006
);
U4 : AND2	PORT MAP(
	I0 => ENP, 
	I1 => N00002, 
	O => N00009
);
U5 : AND4	PORT MAP(
	I0 => R, 
	I1 => N00009, 
	I2 => N00003, 
	I3 => N00006, 
	O => N00018
);
U21 : AND3	PORT MAP(
	I0 => N00013, 
	I1 => R, 
	I2 => N00003, 
	O => N00067
);
U6 : AND5	PORT MAP(
	I0 => N00015, 
	I1 => N00014, 
	I2 => N00013, 
	I3 => N00012, 
	I4 => N00006, 
	O => RCO
);
U22 : OR2	PORT MAP(
	I1 => N00067, 
	I0 => N00073, 
	O => N00069
);
U7 : XOR2	PORT MAP(
	I1 => N00018, 
	I0 => N00032, 
	O => N00025
);
U23 : AND3B1	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => C, 
	O => N00073
);
U24 : AND7	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00015, 
	I3 => R, 
	I4 => N00009, 
	I5 => N00006, 
	I6 => N00003, 
	O => N00079
);
U9 : AND3	PORT MAP(
	I0 => N00015, 
	I1 => R, 
	I2 => N00003, 
	O => N00030
);
U25 : XOR2	PORT MAP(
	I1 => N00079, 
	I0 => N00090, 
	O => N00083
);
U27 : AND3	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => N00012, 
	O => N00088
);
U28 : OR2	PORT MAP(
	I1 => N00088, 
	I0 => N00093, 
	O => N00090
);
U29 : AND3B1	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => D, 
	O => N00093
);
U10 : OR2	PORT MAP(
	I1 => N00030, 
	I0 => N00035, 
	O => N00032
);
U11 : AND3B1	PORT MAP(
	I0 => N00003, 
	I1 => R, 
	I2 => A, 
	O => N00035
);
U12 : AND5	PORT MAP(
	I0 => N00015, 
	I1 => N00009, 
	I2 => R, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00040
);
U14 : FD	PORT MAP(
	D => N00043, 
	C => CK, 
	Q => N00014
);
U26 : FD	PORT MAP(
	D => N00083, 
	C => CK, 
	Q => N00012
);
U8 : FD	PORT MAP(
	D => N00025, 
	C => CK, 
	Q => N00015
);
U20 : FD	PORT MAP(
	D => N00062, 
	C => CK, 
	Q => N00013
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
SIGNAL M01 : std_logic;
SIGNAL O : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
U5 : INV	PORT MAP(
	O => W, 
	I => O
);
U3 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => A, 
	O => M23
);
U4 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => O
);
U6 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => A, 
	O => M45
);
U7 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U8 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => A, 
	O => M67
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
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
SIGNAL N00028 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00016;
Q2<=N00028;
Q3<=N00002;
Q4<=N00006;
Q5<=N00018;
Q6<=N00030;
U3 : FDRE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00016
);
U4 : FDRE	PORT MAP(
	D => N00006, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U5 : FDRE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00028
);
U6 : FDRE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00030
);
U7 : FDRE	PORT MAP(
	D => N00028, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00002
);
U8 : FDRE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U1 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00004
);
U2 : FDRE	PORT MAP(
	D => N00002, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00006
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
U3 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U4 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U5 : OBUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U6 : OBUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
U7 : OBUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
U8 : OBUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U1 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U2 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
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
U3 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U11 : OBUFE	PORT MAP(
	E => E, 
	I => I10, 
	O => O10
);
U4 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U12 : OBUFE	PORT MAP(
	E => E, 
	I => I11, 
	O => O11
);
U5 : OBUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U13 : OBUFE	PORT MAP(
	E => E, 
	I => I12, 
	O => O12
);
U6 : OBUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
U14 : OBUFE	PORT MAP(
	E => E, 
	I => I13, 
	O => O13
);
U7 : OBUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
U15 : OBUFE	PORT MAP(
	E => E, 
	I => I14, 
	O => O14
);
U16 : OBUFE	PORT MAP(
	E => E, 
	I => I15, 
	O => O15
);
U8 : OBUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U9 : OBUFE	PORT MAP(
	E => E, 
	I => I8, 
	O => O8
);
U1 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U2 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
U10 : OBUFE	PORT MAP(
	E => E, 
	I => I9, 
	O => O9
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
U1 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : IBUF	PORT MAP(
	O => O3, 
	I => I3
);
U5 : IBUF	PORT MAP(
	O => O4, 
	I => I4
);
U6 : IBUF	PORT MAP(
	O => O5, 
	I => I5
);
U7 : IBUF	PORT MAP(
	O => O6, 
	I => I6
);
U8 : IBUF	PORT MAP(
	O => O7, 
	I => I7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FTCP IS PORT (
	T : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END FTCP;



ARCHITECTURE STRUCTURE OF FTCP IS

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

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => T, 
	O => N00006
);
U2 : OR2	PORT MAP(
	I1 => N00006, 
	I0 => N00009, 
	O => N00007
);
U3 : FDCP	PORT MAP(
	D => N00007, 
	C => C, 
	PRE => PRE, 
	Q => N00002, 
	CLR => CLR
);
U4 : AND2B1	PORT MAP(
	I0 => T, 
	I1 => N00002, 
	O => N00009
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => T, 
	O => N00005
);
U2 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00008, 
	O => N00006
);
U4 : AND2B1	PORT MAP(
	I0 => T, 
	I1 => N00002, 
	O => N00008
);
U3 : FDC	PORT MAP(
	D => N00006, 
	C => C, 
	CLR => CLR, 
	Q => N00002
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FJKCPE IS PORT (
	J : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic;
	K : IN std_logic
); END FJKCPE;



ARCHITECTURE STRUCTURE OF FJKCPE IS

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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00010
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => J, 
	I2 => N00003, 
	O => N00012
);
U5 : OR3	PORT MAP(
	I2 => N00010, 
	I1 => N00012, 
	I0 => N00016, 
	O => N00013
);
U6 : FDCP	PORT MAP(
	D => N00013, 
	C => C, 
	PRE => PRE, 
	Q => N00005, 
	CLR => CLR
);
U7 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => N00005, 
	O => N00016
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
SIGNAL N00017 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U1 : VCC	PORT MAP(
	P => N00017
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00017, 
	O => N00002
);
U3 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => N00004, 
	O => N00006
);
U4 : OR3	PORT MAP(
	I2 => N00006, 
	I1 => S, 
	I0 => N00013, 
	O => N00009
);
U5 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => N00009, 
	O => N00010
);
U7 : AND2	PORT MAP(
	I0 => D, 
	I1 => N00002, 
	O => N00013
);
U6 : FD	PORT MAP(
	D => N00010, 
	C => C, 
	Q => N00004
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

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U1 : VCC	PORT MAP(
	P => N00016
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00016, 
	O => N00002
);
U3 : AND3B2	PORT MAP(
	I0 => R, 
	I1 => N00002, 
	I2 => N00004, 
	O => N00007
);
U4 : OR2	PORT MAP(
	I1 => N00007, 
	I0 => N00013, 
	O => N00009
);
U6 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	I2 => N00002, 
	O => N00013
);
U5 : FD	PORT MAP(
	D => N00009, 
	C => C, 
	Q => N00004
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
SIGNAL N00003 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00019;
Q2<=N00031;
Q3<=N00003;
Q4<=N00004;
Q5<=N00017;
Q6<=N00029;
Q7<=N00002;
U2 : INV	PORT MAP(
	O => Q7B, 
	I => N00002
);
U3 : FDRE	PORT MAP(
	D => Q7B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00007
);
U4 : FDRE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00017
);
U5 : FDRE	PORT MAP(
	D => N00007, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U6 : FDRE	PORT MAP(
	D => N00017, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00029
);
U7 : FDRE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U8 : FDRE	PORT MAP(
	D => N00029, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00002
);
U9 : FDRE	PORT MAP(
	D => N00031, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00003
);
U1 : FDRE	PORT MAP(
	D => N00003, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00004
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

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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
SIGNAL N00042 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00008;
Q1<=N00007;
Q2<=N00006;
Q3<=N00005;
U14 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00007, 
	O => N00050
);
U15 : AND5B2	PORT MAP(
	I0 => N00005, 
	I1 => N00006, 
	I2 => N00007, 
	I3 => N00008, 
	I4 => N00003, 
	O => N00055
);
U16 : AND4B2	PORT MAP(
	I0 => N00005, 
	I1 => N00008, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00060
);
U17 : OR4	PORT MAP(
	I3 => N00055, 
	I2 => N00060, 
	I1 => N00067, 
	I0 => N00075, 
	O => N00064
);
U19 : AND4B2	PORT MAP(
	I0 => N00005, 
	I1 => N00007, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00067
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND3B2	PORT MAP(
	I0 => N00005, 
	I1 => N00008, 
	I2 => N00003, 
	O => N00011
);
U4 : AND5B2	PORT MAP(
	I0 => N00007, 
	I1 => N00006, 
	I2 => N00005, 
	I3 => N00008, 
	I4 => N00003, 
	O => CEO
);
U20 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00006, 
	O => N00075
);
U5 : AND4B3	PORT MAP(
	I0 => N00006, 
	I1 => N00007, 
	I2 => N00008, 
	I3 => N00003, 
	O => N00020
);
U21 : AND5B1	PORT MAP(
	I0 => N00005, 
	I1 => N00006, 
	I2 => N00007, 
	I3 => N00008, 
	I4 => N00003, 
	O => N00080
);
U6 : OR3	PORT MAP(
	I2 => N00011, 
	I1 => N00020, 
	I0 => N00030, 
	O => N00021
);
U22 : AND5B3	PORT MAP(
	I0 => N00006, 
	I1 => N00007, 
	I2 => N00008, 
	I3 => N00005, 
	I4 => N00003, 
	O => N00086
);
U23 : OR3	PORT MAP(
	I2 => N00080, 
	I1 => N00086, 
	I0 => N00094, 
	O => N00087
);
U8 : AND4B2	PORT MAP(
	I0 => N00007, 
	I1 => N00006, 
	I2 => N00005, 
	I3 => N00008, 
	O => TC
);
U9 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00008, 
	O => N00030
);
U25 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00094
);
U10 : AND4B2	PORT MAP(
	I0 => N00005, 
	I1 => N00008, 
	I2 => N00007, 
	I3 => N00003, 
	O => N00037
);
U11 : AND4B2	PORT MAP(
	I0 => N00005, 
	I1 => N00007, 
	I2 => N00008, 
	I3 => N00003, 
	O => N00042
);
U12 : OR3	PORT MAP(
	I2 => N00037, 
	I1 => N00042, 
	I0 => N00050, 
	O => N00043
);
U24 : FDC	PORT MAP(
	D => N00087, 
	C => C, 
	CLR => CLR, 
	Q => N00005
);
U13 : FDC	PORT MAP(
	D => N00043, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U7 : FDC	PORT MAP(
	D => N00021, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U18 : FDC	PORT MAP(
	D => N00064, 
	C => C, 
	CLR => CLR, 
	Q => N00006
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

COMPONENT FDP	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => J, 
	O => N00006
);
U2 : OR2	PORT MAP(
	I1 => N00006, 
	I0 => N00010, 
	O => N00008
);
U4 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => N00002, 
	O => N00010
);
U3 : FDP	PORT MAP(
	D => N00008, 
	C => C, 
	PRE => PRE, 
	Q => N00002
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00002 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00037 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00005;
Q1<=N00012;
Q2<=N00021;
Q3<=N00031;
Q4<=N00042;
Q5<=N00054;
Q6<=N00067;
Q7<=N00081;
U14 : AND5	PORT MAP(
	I0 => N00031, 
	I1 => N00021, 
	I2 => N00012, 
	I3 => N00005, 
	I4 => N00003, 
	O => N00049
);
U15 : XOR2	PORT MAP(
	I1 => N00042, 
	I0 => N00049, 
	O => N00046
);
U17 : AND6	PORT MAP(
	I0 => N00042, 
	I1 => N00031, 
	I2 => N00021, 
	I3 => N00012, 
	I4 => N00005, 
	I5 => N00003, 
	O => N00061
);
U18 : XOR2	PORT MAP(
	I1 => N00054, 
	I0 => N00061, 
	O => N00059
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : XOR2	PORT MAP(
	I1 => N00005, 
	I0 => N00003, 
	O => N00007
);
U20 : AND7	PORT MAP(
	I0 => N00054, 
	I1 => N00042, 
	I2 => N00031, 
	I3 => N00021, 
	I4 => N00012, 
	I5 => N00005, 
	I6 => N00003, 
	O => N00075
);
U5 : XOR2	PORT MAP(
	I1 => N00012, 
	I0 => N00017, 
	O => N00015
);
U6 : AND2	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	O => N00017
);
U21 : XOR2	PORT MAP(
	I1 => N00067, 
	I0 => N00075, 
	O => N00072
);
U23 : AND8	PORT MAP(
	I0 => N00067, 
	I1 => N00054, 
	I2 => N00042, 
	I3 => N00031, 
	I4 => N00021, 
	I5 => N00012, 
	I6 => N00005, 
	I7 => N00003, 
	O => N00089
);
U8 : XOR2	PORT MAP(
	I1 => N00021, 
	I0 => N00027, 
	O => N00024
);
U9 : AND3	PORT MAP(
	I0 => N00012, 
	I1 => N00005, 
	I2 => N00003, 
	O => N00027
);
U24 : XOR2	PORT MAP(
	I1 => N00081, 
	I0 => N00089, 
	O => N00087
);
U26 : INV	PORT MAP(
	O => N00010, 
	I => C
);
U11 : AND4	PORT MAP(
	I0 => N00021, 
	I1 => N00012, 
	I2 => N00005, 
	I3 => N00003, 
	O => N00037
);
U12 : XOR2	PORT MAP(
	I1 => N00031, 
	I0 => N00037, 
	O => N00035
);
U22 : FDC	PORT MAP(
	D => N00072, 
	C => N00010, 
	CLR => CLR, 
	Q => N00067
);
U4 : FDC	PORT MAP(
	D => N00007, 
	C => N00010, 
	CLR => CLR, 
	Q => N00005
);
U13 : FDC	PORT MAP(
	D => N00035, 
	C => N00010, 
	CLR => CLR, 
	Q => N00031
);
U25 : FDC	PORT MAP(
	D => N00087, 
	C => N00010, 
	CLR => CLR, 
	Q => N00081
);
U7 : FDC	PORT MAP(
	D => N00015, 
	C => N00010, 
	CLR => CLR, 
	Q => N00012
);
U16 : FDC	PORT MAP(
	D => N00046, 
	C => N00010, 
	CLR => CLR, 
	Q => N00042
);
U19 : FDC	PORT MAP(
	D => N00059, 
	C => N00010, 
	CLR => CLR, 
	Q => N00054
);
U10 : FDC	PORT MAP(
	D => N00024, 
	C => N00010, 
	CLR => CLR, 
	Q => N00021
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND5B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00092 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00112 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00011;
Q1<=N00010;
Q2<=N00009;
Q3<=N00008;
U13 : OR4	PORT MAP(
	I3 => N00037, 
	I2 => N00045, 
	I1 => N00048, 
	I0 => N00055, 
	O => N00046
);
U15 : AND3B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	I2 => N00010, 
	O => N00048
);
U16 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00006, 
	O => N00055
);
U17 : INV	PORT MAP(
	O => N00059, 
	I => N00006
);
U18 : AND6	PORT MAP(
	I0 => N00066, 
	I1 => N00064, 
	I2 => N00010, 
	I3 => N00011, 
	I4 => N00059, 
	I5 => N00003, 
	O => N00061
);
U19 : INV	PORT MAP(
	O => N00064, 
	I => N00009
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : GND	PORT MAP(
	G => N00007
);
U5 : AND5B4	PORT MAP(
	I0 => N00009, 
	I1 => N00010, 
	I2 => N00011, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00015
);
U20 : INV	PORT MAP(
	O => N00066, 
	I => N00008
);
U6 : AND4B3	PORT MAP(
	I0 => N00008, 
	I1 => N00011, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00022
);
U21 : AND5B3	PORT MAP(
	I0 => N00008, 
	I1 => N00011, 
	I2 => N00006, 
	I3 => N00009, 
	I4 => N00003, 
	O => N00074
);
U7 : OR4	PORT MAP(
	I3 => N00015, 
	I2 => N00022, 
	I1 => N00025, 
	I0 => N00032, 
	O => N00023
);
U22 : AND5B3	PORT MAP(
	I0 => N00008, 
	I1 => N00010, 
	I2 => N00006, 
	I3 => N00009, 
	I4 => N00003, 
	O => N00076
);
U23 : OR5	PORT MAP(
	I4 => N00061, 
	I3 => N00074, 
	I2 => N00076, 
	I1 => N00080, 
	I0 => N00088, 
	O => N00077
);
U9 : AND3B2	PORT MAP(
	I0 => N00003, 
	I1 => N00006, 
	I2 => N00011, 
	O => N00025
);
U25 : AND3B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	I2 => N00009, 
	O => N00080
);
U26 : AND2	PORT MAP(
	I0 => D2, 
	I1 => N00006, 
	O => N00088
);
U27 : INV	PORT MAP(
	O => N00092, 
	I => N00006
);
U28 : AND6	PORT MAP(
	I0 => N00098, 
	I1 => N00009, 
	I2 => N00010, 
	I3 => N00011, 
	I4 => N00092, 
	I5 => N00003, 
	O => N00094
);
U29 : INV	PORT MAP(
	O => N00098, 
	I => N00008
);
U30 : INV	PORT MAP(
	O => N00101, 
	I => N00006
);
U31 : AND6	PORT MAP(
	I0 => N00008, 
	I1 => N00107, 
	I2 => N00105, 
	I3 => N00103, 
	I4 => N00101, 
	I5 => N00003, 
	O => N00109
);
U32 : INV	PORT MAP(
	O => N00103, 
	I => N00011
);
U33 : INV	PORT MAP(
	O => N00105, 
	I => N00010
);
U34 : INV	PORT MAP(
	O => N00107, 
	I => N00009
);
U35 : OR4	PORT MAP(
	I3 => N00094, 
	I2 => N00109, 
	I1 => N00112, 
	I0 => N00119, 
	O => N00110
);
U37 : AND3B2	PORT MAP(
	I0 => N00003, 
	I1 => N00006, 
	I2 => N00008, 
	O => N00112
);
U38 : AND2	PORT MAP(
	I0 => D3, 
	I1 => N00006, 
	O => N00119
);
U39 : AND5B2	PORT MAP(
	I0 => N00009, 
	I1 => N00010, 
	I2 => N00008, 
	I3 => N00011, 
	I4 => N00003, 
	O => CEO
);
U40 : AND4B2	PORT MAP(
	I0 => N00009, 
	I1 => N00010, 
	I2 => N00008, 
	I3 => N00011, 
	O => TC
);
U10 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00006, 
	O => N00032
);
U11 : AND5B3	PORT MAP(
	I0 => N00008, 
	I1 => N00010, 
	I2 => N00006, 
	I3 => N00011, 
	I4 => N00003, 
	O => N00037
);
U12 : AND5B3	PORT MAP(
	I0 => N00008, 
	I1 => N00011, 
	I2 => N00006, 
	I3 => N00010, 
	I4 => N00003, 
	O => N00045
);
U24 : FDC	PORT MAP(
	D => N00077, 
	C => C, 
	CLR => CLR, 
	Q => N00009
);
U14 : FDC	PORT MAP(
	D => N00046, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U36 : FDC	PORT MAP(
	D => N00110, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U8 : FDC	PORT MAP(
	D => N00023, 
	C => C, 
	CLR => CLR, 
	Q => N00011
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

COMPONENT XOR2
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00033 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00026 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00005;
Q1<=N00022;
U13 : XOR2	PORT MAP(
	I1 => N00026, 
	I0 => N00033, 
	O => N00030
);
U14 : AND3B1	PORT MAP(
	I0 => N00008, 
	I1 => N00003, 
	I2 => N00005, 
	O => N00036
);
U16 : OR2	PORT MAP(
	I1 => N00036, 
	I0 => N00039, 
	O => N00033
);
U17 : AND2	PORT MAP(
	I0 => N00022, 
	I1 => N00005, 
	O => TC
);
U18 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00008, 
	O => N00039
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00008, 
	I1 => N00005, 
	O => N00009
);
U4 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00010, 
	O => N00008
);
U5 : XOR2	PORT MAP(
	I1 => N00009, 
	I0 => N00013, 
	O => N00011
);
U7 : AND2B1	PORT MAP(
	I0 => N00008, 
	I1 => N00003, 
	O => N00018
);
U8 : GND	PORT MAP(
	G => N00010
);
U9 : OR2	PORT MAP(
	I1 => N00018, 
	I0 => N00019, 
	O => N00013
);
U10 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00008, 
	O => N00019
);
U11 : AND2B1	PORT MAP(
	I0 => N00008, 
	I1 => N00022, 
	O => N00026
);
U12 : AND3	PORT MAP(
	I0 => N00022, 
	I1 => N00005, 
	I2 => N00003, 
	O => CEO
);
U6 : FDC	PORT MAP(
	D => N00011, 
	C => C, 
	CLR => CLR, 
	Q => N00005
);
U15 : FDC	PORT MAP(
	D => N00030, 
	C => C, 
	CLR => CLR, 
	Q => N00022
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADSU8X1 IS PORT (
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
	CO : OUT std_logic
); END ADSU8X1;



ARCHITECTURE STRUCTURE OF ADSU8X1 IS

-- COMPONENTS

COMPONENT ADSU1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADSU1X1	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	ADD : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00047 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : ADSU1X2	PORT MAP(
	CI => N00012, 
	A0 => A2, 
	B0 => B2, 
	ADD => ADD, 
	S0 => S2, 
	CO => N00019
);
U4 : ADSU1X2	PORT MAP(
	CI => N00019, 
	A0 => A3, 
	B0 => B3, 
	ADD => ADD, 
	S0 => S3, 
	CO => N00026
);
U5 : ADSU1X2	PORT MAP(
	CI => N00026, 
	A0 => A4, 
	B0 => B4, 
	ADD => ADD, 
	S0 => S4, 
	CO => N00033
);
U6 : ADSU1X2	PORT MAP(
	CI => N00033, 
	A0 => A5, 
	B0 => B5, 
	ADD => ADD, 
	S0 => S5, 
	CO => N00040
);
U7 : ADSU1X2	PORT MAP(
	CI => N00040, 
	A0 => A6, 
	B0 => B6, 
	ADD => ADD, 
	S0 => S6, 
	CO => N00047
);
U8 : ADSU1X2	PORT MAP(
	CI => N00047, 
	A0 => A7, 
	B0 => B7, 
	ADD => ADD, 
	S0 => S7, 
	CO => CO
);
U1 : ADSU1X1	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	ADD => ADD, 
	S0 => S0, 
	CO => N00005
);
U2 : ADSU1X2	PORT MAP(
	CI => N00005, 
	A0 => A1, 
	B0 => B1, 
	ADD => ADD, 
	S0 => S1, 
	CO => N00012
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

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I0, 
	I1 => I1, 
	I0 => I2, 
	O => N00004
);
U2 : XNOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00009, 
	O => O
);
U3 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I4, 
	I0 => I5, 
	O => N00009
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
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U9 : INV	PORT MAP(
	O => N00005, 
	I => CLR
);
U3 : FDC	PORT MAP(
	D => D3, 
	C => CK, 
	CLR => N00005, 
	Q => Q3
);
U4 : FDC	PORT MAP(
	D => D4, 
	C => CK, 
	CLR => N00005, 
	Q => Q4
);
U5 : FDC	PORT MAP(
	D => D5, 
	C => CK, 
	CLR => N00005, 
	Q => Q5
);
U6 : FDC	PORT MAP(
	D => D6, 
	C => CK, 
	CLR => N00005, 
	Q => Q6
);
U7 : FDC	PORT MAP(
	D => D7, 
	C => CK, 
	CLR => N00005, 
	Q => Q7
);
U8 : FDC	PORT MAP(
	D => D8, 
	C => CK, 
	CLR => N00005, 
	Q => Q8
);
U1 : FDC	PORT MAP(
	D => D1, 
	C => CK, 
	CLR => N00005, 
	Q => Q1
);
U2 : FDC	PORT MAP(
	D => D2, 
	C => CK, 
	CLR => N00005, 
	Q => Q2
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
U1 : INV	PORT MAP(
	O => T, 
	I => E
);
U2 : BUFT	PORT MAP(
	T => T, 
	I => I, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY BUF4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END BUF4;



ARCHITECTURE STRUCTURE OF BUF4 IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : BUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : BUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : BUF	PORT MAP(
	O => O3, 
	I => I3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD1 IS PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END ADD1;



ARCHITECTURE STRUCTURE OF ADD1 IS

-- COMPONENTS

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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => N00007, 
	O => S0
);
U2 : AND2B1	PORT MAP(
	I0 => CI, 
	I1 => B0, 
	O => N00005
);
U3 : OR2	PORT MAP(
	I1 => N00005, 
	I0 => N00009, 
	O => N00007
);
U4 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => CI, 
	O => N00009
);
U5 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => N00012
);
U6 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00015
);
U7 : OR3	PORT MAP(
	I2 => N00012, 
	I1 => N00015, 
	I0 => N00019, 
	O => CO
);
U8 : AND2	PORT MAP(
	I0 => CI, 
	I1 => B0, 
	O => N00019
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC1 IS PORT (
	CI : IN std_logic;
	B0 : IN std_logic;
	D0 : IN std_logic;
	L : IN std_logic;
	ADD : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	CO : OUT std_logic
); END ACC1;



ARCHITECTURE STRUCTURE OF ACC1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
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

COMPONENT XOR2
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00066 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N001440 : std_logic;
SIGNAL N001450 : std_logic;
SIGNAL N001460 : std_logic;
SIGNAL N001470 : std_logic;
SIGNAL N001480 : std_logic;
SIGNAL N001420 : std_logic;
SIGNAL N001580 : std_logic;
SIGNAL N001430 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N001540 : std_logic;
SIGNAL N001530 : std_logic;
SIGNAL N001520 : std_logic;
SIGNAL N001510 : std_logic;
SIGNAL N001500 : std_logic;
SIGNAL N001490 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00046;
U13 : INV	PORT MAP(
	O => N001470, 
	I => R
);
U14 : INV	PORT MAP(
	O => N001480, 
	I => B0
);
U15 : AND6	PORT MAP(
	I0 => N001490, 
	I1 => N001500, 
	I2 => N001510, 
	I3 => ADD, 
	I4 => CI, 
	I5 => N00003, 
	O => N00028
);
U16 : OR4	PORT MAP(
	I3 => N00013, 
	I2 => N00020, 
	I1 => N00028, 
	I0 => N00037, 
	O => N00029
);
U17 : INV	PORT MAP(
	O => N001510, 
	I => N00008
);
U18 : INV	PORT MAP(
	O => N001500, 
	I => R
);
U19 : INV	PORT MAP(
	O => N001490, 
	I => B0
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00009, 
	O => N00008
);
U4 : INV	PORT MAP(
	O => N001420, 
	I => CI
);
U5 : AND6	PORT MAP(
	I0 => B0, 
	I1 => N001430, 
	I2 => N001580, 
	I3 => ADD, 
	I4 => N001420, 
	I5 => N00003, 
	O => N00013
);
U20 : AND6	PORT MAP(
	I0 => B0, 
	I1 => N001520, 
	I2 => N001530, 
	I3 => N001540, 
	I4 => CI, 
	I5 => N00003, 
	O => N00037
);
U21 : INV	PORT MAP(
	O => N001540, 
	I => ADD
);
U6 : GND	PORT MAP(
	G => N00009
);
U22 : INV	PORT MAP(
	O => N001530, 
	I => N00008
);
U7 : INV	PORT MAP(
	O => N001580, 
	I => N00008
);
U23 : INV	PORT MAP(
	O => N001520, 
	I => R
);
U8 : INV	PORT MAP(
	O => N001430, 
	I => R
);
U24 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => N00008, 
	I2 => D0, 
	O => N00043
);
U9 : INV	PORT MAP(
	O => N001440, 
	I => CI
);
U25 : XOR2	PORT MAP(
	I1 => N00029, 
	I0 => N00051, 
	O => N00047
);
U26 : AND3B2	PORT MAP(
	I0 => R, 
	I1 => N00008, 
	I2 => N00046, 
	O => N00050
);
U27 : OR2	PORT MAP(
	I1 => N00043, 
	I0 => N00050, 
	O => N00051
);
U29 : AND3	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => N00046, 
	O => N00057
);
U30 : AND3	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => CI, 
	O => N00061
);
U31 : OR5	PORT MAP(
	I4 => N00057, 
	I3 => N00061, 
	I2 => N00066, 
	I1 => N00069, 
	I0 => N00075, 
	O => CO
);
U32 : AND3B2	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => N00046, 
	O => N00066
);
U33 : AND3B2	PORT MAP(
	I0 => B0, 
	I1 => ADD, 
	I2 => CI, 
	O => N00069
);
U34 : AND2	PORT MAP(
	I0 => N00046, 
	I1 => CI, 
	O => N00075
);
U10 : AND6	PORT MAP(
	I0 => N001480, 
	I1 => N001470, 
	I2 => N001460, 
	I3 => N001450, 
	I4 => N001440, 
	I5 => N00003, 
	O => N00020
);
U11 : INV	PORT MAP(
	O => N001450, 
	I => ADD
);
U12 : INV	PORT MAP(
	O => N001460, 
	I => N00008
);
U28 : FD	PORT MAP(
	D => N00047, 
	C => C, 
	Q => N00046
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

COMPONENT NAND3B1
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
U1 : NAND3B3	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y0
);
U2 : NAND3B2	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y1
);
U3 : NAND3B2	PORT MAP(
	I0 => G, 
	I1 => A, 
	I2 => B, 
	O => Y2
);
U4 : NAND3B1	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y3
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

COMPONENT FDCE	 PORT (
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
SIGNAL L_OR_CE : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00005;
Q2<=N00018;
Q3<=N00031;
U14 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U3 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U11 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U12 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U4 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U5 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U13 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U6 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00005
);
U7 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U9 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U2 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U10 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
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
SIGNAL I0B1 : std_logic;
SIGNAL I23 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U2 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I0B1, 
	O => O
);
U3 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
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
U1 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U2 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I01, 
	O => O
);
U3 : AND2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I01
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
U3 : OFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U4 : OFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U1 : OFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : OFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
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
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U2 : OBUF	PORT MAP(
	O => Q, 
	I => N00003
);
U1 : FD	PORT MAP(
	D => D, 
	C => C, 
	Q => N00003
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY LD4 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	G : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
); END LD4;



ARCHITECTURE STRUCTURE OF LD4 IS

-- COMPONENTS

COMPONENT LD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : LD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U4 : LD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U1 : LD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : LD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00003 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2	PORT MAP(
	I0 => D, 
	I1 => G, 
	O => N00003
);
U2 : FDCP	PORT MAP(
	D => N00005, 
	C => N00005, 
	PRE => N00003, 
	Q => Q, 
	CLR => N00009
);
U3 : AND2B1	PORT MAP(
	I0 => D, 
	I1 => G, 
	O => N00009
);
U4 : GND	PORT MAP(
	G => N00005
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
U1 : IOPAD	PORT MAP(
	IOPAD => IO0
);
U2 : IOPAD	PORT MAP(
	IOPAD => IO1
);
U3 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U4 : IOPAD	PORT MAP(
	IOPAD => IO3
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
SIGNAL IO18 : std_logic;
SIGNAL IO19 : std_logic;
SIGNAL IO20 : std_logic;
SIGNAL IO21 : std_logic;
SIGNAL IO22 : std_logic;
SIGNAL IO23 : std_logic;
SIGNAL IO24 : std_logic;
SIGNAL IO25 : std_logic;
SIGNAL IO16 : std_logic;
SIGNAL IO17 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : IOPAD	PORT MAP(
	IOPAD => IO12
);
U14 : IOPAD	PORT MAP(
	IOPAD => IO13
);
U15 : IOPAD	PORT MAP(
	IOPAD => IO14
);
U16 : IOPAD	PORT MAP(
	IOPAD => IO15
);
U1 : IOPAD	PORT MAP(
	IOPAD => IO0
);
U2 : IOPAD	PORT MAP(
	IOPAD => IO1
);
U3 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U4 : IOPAD	PORT MAP(
	IOPAD => IO3
);
U5 : IOPAD	PORT MAP(
	IOPAD => IO4
);
U6 : IOPAD	PORT MAP(
	IOPAD => IO5
);
U7 : IOPAD	PORT MAP(
	IOPAD => IO6
);
U8 : IOPAD	PORT MAP(
	IOPAD => IO7
);
U9 : IOPAD	PORT MAP(
	IOPAD => IO8
);
U10 : IOPAD	PORT MAP(
	IOPAD => IO9
);
U11 : IOPAD	PORT MAP(
	IOPAD => IO10
);
U12 : IOPAD	PORT MAP(
	IOPAD => IO11
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
U1 : INV	PORT MAP(
	O => O0, 
	I => I0
);
U2 : INV	PORT MAP(
	O => O1, 
	I => I1
);
U3 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U4 : INV	PORT MAP(
	O => O3, 
	I => I3
);
U5 : INV	PORT MAP(
	O => O4, 
	I => I4
);
U6 : INV	PORT MAP(
	O => O5, 
	I => I5
);
U7 : INV	PORT MAP(
	O => O6, 
	I => I6
);
U8 : INV	PORT MAP(
	O => O7, 
	I => I7
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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
SIGNAL N00002 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00010
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => J, 
	I2 => N00003, 
	O => N00012
);
U5 : OR3	PORT MAP(
	I2 => N00010, 
	I1 => N00012, 
	I0 => N00016, 
	O => N00013
);
U7 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => N00005, 
	O => N00016
);
U6 : FDP	PORT MAP(
	D => N00013, 
	C => C, 
	PRE => PRE, 
	Q => N00005
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
SIGNAL I01 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I01, 
	O => O
);
U2 : AND2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I01
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
U1 : OPAD	PORT MAP(
	OPAD => O0
);
U2 : OPAD	PORT MAP(
	OPAD => O1
);
U3 : OPAD	PORT MAP(
	OPAD => O2
);
U4 : OPAD	PORT MAP(
	OPAD => O3
);
U5 : OPAD	PORT MAP(
	OPAD => O4
);
U6 : OPAD	PORT MAP(
	OPAD => O5
);
U7 : OPAD	PORT MAP(
	OPAD => O6
);
U8 : OPAD	PORT MAP(
	OPAD => O7
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
U13 : INV	PORT MAP(
	O => O12, 
	I => I12
);
U14 : INV	PORT MAP(
	O => O13, 
	I => I13
);
U15 : INV	PORT MAP(
	O => O14, 
	I => I14
);
U16 : INV	PORT MAP(
	O => O15, 
	I => I15
);
U1 : INV	PORT MAP(
	O => O0, 
	I => I0
);
U2 : INV	PORT MAP(
	O => O1, 
	I => I1
);
U3 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U4 : INV	PORT MAP(
	O => O3, 
	I => I3
);
U5 : INV	PORT MAP(
	O => O4, 
	I => I4
);
U6 : INV	PORT MAP(
	O => O5, 
	I => I5
);
U7 : INV	PORT MAP(
	O => O6, 
	I => I6
);
U8 : INV	PORT MAP(
	O => O7, 
	I => I7
);
U9 : INV	PORT MAP(
	O => O8, 
	I => I8
);
U10 : INV	PORT MAP(
	O => O9, 
	I => I9
);
U11 : INV	PORT MAP(
	O => O10, 
	I => I10
);
U12 : INV	PORT MAP(
	O => O11, 
	I => I11
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
SIGNAL N00012 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U1 : VCC	PORT MAP(
	P => N00015
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00015, 
	O => N00002
);
U3 : AND2B1	PORT MAP(
	I0 => N00002, 
	I1 => N00004, 
	O => N00006
);
U4 : OR3	PORT MAP(
	I2 => N00006, 
	I1 => S, 
	I0 => N00012, 
	O => N00009
);
U6 : AND2	PORT MAP(
	I0 => D, 
	I1 => N00002, 
	O => N00012
);
U5 : FD	PORT MAP(
	D => N00009, 
	C => C, 
	Q => N00004
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

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FDCP	PORT MAP(
	D => D, 
	C => C, 
	PRE => N00002, 
	Q => Q, 
	CLR => CLR
);
U2 : GND	PORT MAP(
	G => N00002
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
SIGNAL AB1 : std_logic;
SIGNAL AB0 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
U2 : AND2	PORT MAP(
	I0 => AB1, 
	I1 => AB0, 
	O => EQ
);
U3 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB8X1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
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
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END CB8X1;



ARCHITECTURE STRUCTURE OF CB8X1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND9
	PORT (
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
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00125 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00334 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00207 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00248 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00223 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00332 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00292 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00252 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00336 : std_logic;
SIGNAL N00209 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00250 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00289 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00257 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00338 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00213 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00221 : std_logic;
SIGNAL N00341 : std_logic;
SIGNAL N00203 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00174 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00295 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00321 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00302 : std_logic;
SIGNAL N00308 : std_logic;
SIGNAL N00305 : std_logic;
SIGNAL N00300 : std_logic;
SIGNAL N00266 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00243 : std_logic;
SIGNAL N00298 : std_logic;
SIGNAL N00260 : std_logic;
SIGNAL N00264 : std_logic;
SIGNAL N00343 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00350 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00325 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00345 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00326 : std_logic;
SIGNAL N00285 : std_logic;
SIGNAL N00179 : std_logic;
SIGNAL N00356 : std_logic;
SIGNAL N00227 : std_logic;
SIGNAL N00312 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL N00354 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00310 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00274 : std_logic;
SIGNAL N00183 : std_logic;
SIGNAL N00352 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00307 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00233 : std_logic;
SIGNAL N00191 : std_logic;
SIGNAL N00348 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00231 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00229 : std_logic;
SIGNAL N00315 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00313 : std_logic;
SIGNAL N00187 : std_logic;
SIGNAL N00198 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00236 : std_logic;
SIGNAL N00194 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00234 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00328 : std_logic;
SIGNAL N00304 : std_logic;
SIGNAL N00202 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00200 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00347 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00323 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00242 : std_logic;
SIGNAL N00240 : std_logic;
SIGNAL N00320 : std_logic;
SIGNAL N00330 : std_logic;
SIGNAL N00163 : std_logic;

-- GATE INSTANCES

BEGIN
TCU<=N00274;
TCD<=N00289;
Q0<=N00018;
Q1<=N00017;
Q2<=N00016;
Q3<=N00015;
Q4<=N00014;
Q5<=N00013;
Q6<=N00012;
Q7<=N00011;
U45 : INV	PORT MAP(
	O => N00116, 
	I => N00006
);
U13 : AND4B3	PORT MAP(
	I0 => N00018, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00039
);
U77 : AND9	PORT MAP(
	I0 => N00202, 
	I1 => N00200, 
	I2 => N00198, 
	I3 => N00196, 
	I4 => N00193, 
	I5 => N00191, 
	I6 => N00189, 
	I7 => N00187, 
	I8 => N00003, 
	O => N00194
);
U78 : INV	PORT MAP(
	O => N00189, 
	I => N00009
);
U14 : OR2	PORT MAP(
	I1 => N00039, 
	I0 => N00045, 
	O => N00042
);
U46 : AND7	PORT MAP(
	I0 => N00127, 
	I1 => N00125, 
	I2 => N00123, 
	I3 => N00120, 
	I4 => N00118, 
	I5 => N00116, 
	I6 => N00003, 
	O => N00121
);
U15 : AND3	PORT MAP(
	I0 => N00047, 
	I1 => N00018, 
	I2 => N00006, 
	O => N00045
);
U47 : INV	PORT MAP(
	O => N00118, 
	I => N00009
);
U79 : INV	PORT MAP(
	O => N00191, 
	I => N00018
);
U16 : INV	PORT MAP(
	O => N00047, 
	I => N00009
);
U48 : INV	PORT MAP(
	O => N00120, 
	I => N00018
);
U49 : INV	PORT MAP(
	O => N00123, 
	I => N00017
);
U17 : XOR2	PORT MAP(
	I1 => N00042, 
	I0 => N00055, 
	O => N00048
);
U19 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00017, 
	O => N00052
);
U120 : INV	PORT MAP(
	O => N00302, 
	I => N00015
);
U121 : INV	PORT MAP(
	O => N00304, 
	I => N00014
);
U122 : AND2	PORT MAP(
	I0 => N00308, 
	I1 => N00305, 
	O => N00310
);
U123 : INV	PORT MAP(
	O => N00307, 
	I => N00013
);
U124 : AND2B2	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	O => N00308
);
U125 : NOR4	PORT MAP(
	I3 => N00285, 
	I2 => N00310, 
	I1 => N00315, 
	I0 => N00348, 
	O => N00312
);
U127 : INV	PORT MAP(
	O => N00289, 
	I => N00313
);
U128 : AND2B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	O => N00321
);
U129 : INV	PORT MAP(
	O => N00320, 
	I => N00009
);
U1 : OR2	PORT MAP(
	I1 => CED, 
	I0 => N00004, 
	O => N00003
);
U80 : INV	PORT MAP(
	O => N00193, 
	I => N00017
);
U81 : INV	PORT MAP(
	O => N00196, 
	I => N00016
);
U2 : OR2	PORT MAP(
	I1 => CEU, 
	I0 => N00004, 
	O => N00006
);
U50 : INV	PORT MAP(
	O => N00125, 
	I => N00016
);
U82 : INV	PORT MAP(
	O => N00198, 
	I => N00015
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00004, 
	O => N00009
);
U4 : GND	PORT MAP(
	G => N00004
);
U51 : INV	PORT MAP(
	O => N00127, 
	I => N00015
);
U83 : INV	PORT MAP(
	O => N00200, 
	I => N00014
);
U84 : INV	PORT MAP(
	O => N00202, 
	I => N00013
);
U20 : OR2	PORT MAP(
	I1 => N00052, 
	I0 => N00057, 
	O => N00055
);
U52 : OR2	PORT MAP(
	I1 => N00121, 
	I0 => N00133, 
	O => N00128
);
U5 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00021
);
U53 : AND6	PORT MAP(
	I0 => N00015, 
	I1 => N00016, 
	I2 => N00017, 
	I3 => N00132, 
	I4 => N00006, 
	I5 => N00018, 
	O => N00133
);
U6 : OR2	PORT MAP(
	I1 => N00021, 
	I0 => N00024, 
	O => N00026
);
U85 : OR2	PORT MAP(
	I1 => N00194, 
	I0 => N00209, 
	O => N00203
);
U21 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00009, 
	O => N00057
);
U7 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	O => N00024
);
U86 : AND8	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00015, 
	I3 => N00016, 
	I4 => N00018, 
	I5 => N00207, 
	I6 => N00006, 
	I7 => N00017, 
	O => N00209
);
U54 : INV	PORT MAP(
	O => N00132, 
	I => N00009
);
U22 : AND5B4	PORT MAP(
	I0 => N00017, 
	I1 => N00018, 
	I2 => N00009, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00062
);
U87 : INV	PORT MAP(
	O => N00207, 
	I => N00009
);
U23 : OR2	PORT MAP(
	I1 => N00062, 
	I0 => N00069, 
	O => N00065
);
U8 : XOR2	PORT MAP(
	I1 => N00026, 
	I0 => N00028, 
	O => N00027
);
U55 : XOR2	PORT MAP(
	I1 => N00128, 
	I0 => N00144, 
	O => N00137
);
U24 : INV	PORT MAP(
	O => N00067, 
	I => N00009
);
U88 : XOR2	PORT MAP(
	I1 => N00203, 
	I0 => N00221, 
	O => N00213
);
U25 : AND4	PORT MAP(
	I0 => N00017, 
	I1 => N00018, 
	I2 => N00006, 
	I3 => N00067, 
	O => N00069
);
U57 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00014, 
	O => N00141
);
U26 : XOR2	PORT MAP(
	I1 => N00065, 
	I0 => N00079, 
	O => N00072
);
U58 : OR2	PORT MAP(
	I1 => N00141, 
	I0 => N00146, 
	O => N00144
);
U59 : AND2	PORT MAP(
	I0 => D4, 
	I1 => N00009, 
	O => N00146
);
U28 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00016, 
	O => N00076
);
U29 : OR2	PORT MAP(
	I1 => N00076, 
	I0 => N00081, 
	O => N00079
);
U130 : AND2	PORT MAP(
	I0 => N00326, 
	I1 => N00321, 
	O => N00315
);
U131 : INV	PORT MAP(
	O => N00323, 
	I => N00018
);
U132 : AND9	PORT MAP(
	I0 => N00338, 
	I1 => N00336, 
	I2 => N00334, 
	I3 => N00332, 
	I4 => N00330, 
	I5 => N00328, 
	I6 => N00325, 
	I7 => N00323, 
	I8 => N00320, 
	O => N00326
);
U100 : INV	PORT MAP(
	O => N00240, 
	I => N00014
);
U133 : INV	PORT MAP(
	O => N00325, 
	I => N00017
);
U101 : AND2B1	PORT MAP(
	I0 => N00012, 
	I1 => N00234, 
	O => N00243
);
U134 : INV	PORT MAP(
	O => N00328, 
	I => N00016
);
U102 : INV	PORT MAP(
	O => N00242, 
	I => N00013
);
U135 : INV	PORT MAP(
	O => N00330, 
	I => N00015
);
U103 : AND9	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00015, 
	I3 => N00016, 
	I4 => N00017, 
	I5 => N00018, 
	I6 => N00248, 
	I7 => N00006, 
	I8 => N00012, 
	O => N00252
);
U136 : INV	PORT MAP(
	O => N00332, 
	I => N00014
);
U104 : INV	PORT MAP(
	O => N00248, 
	I => N00009
);
U137 : INV	PORT MAP(
	O => N00334, 
	I => N00013
);
U105 : OR2	PORT MAP(
	I1 => N00243, 
	I0 => N00252, 
	O => N00250
);
U138 : INV	PORT MAP(
	O => N00336, 
	I => N00012
);
U106 : XOR2	PORT MAP(
	I1 => N00250, 
	I0 => N00264, 
	O => N00257
);
U139 : INV	PORT MAP(
	O => N00338, 
	I => N00011
);
U108 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00011, 
	O => N00260
);
U90 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00012, 
	O => N00219
);
U109 : OR2	PORT MAP(
	I1 => N00260, 
	I0 => N00266, 
	O => N00264
);
U91 : OR2	PORT MAP(
	I1 => N00219, 
	I0 => N00223, 
	O => N00221
);
U60 : INV	PORT MAP(
	O => N00150, 
	I => N00006
);
U92 : AND2	PORT MAP(
	I0 => D6, 
	I1 => N00009, 
	O => N00223
);
U93 : INV	PORT MAP(
	O => N00227, 
	I => N00006
);
U61 : AND8	PORT MAP(
	I0 => N00163, 
	I1 => N00161, 
	I2 => N00159, 
	I3 => N00157, 
	I4 => N00154, 
	I5 => N00152, 
	I6 => N00150, 
	I7 => N00003, 
	O => N00155
);
U62 : INV	PORT MAP(
	O => N00152, 
	I => N00009
);
U94 : AND9	PORT MAP(
	I0 => N00242, 
	I1 => N00240, 
	I2 => N00238, 
	I3 => N00236, 
	I4 => N00233, 
	I5 => N00231, 
	I6 => N00229, 
	I7 => N00227, 
	I8 => N00003, 
	O => N00234
);
U30 : AND2	PORT MAP(
	I0 => D2, 
	I1 => N00009, 
	O => N00081
);
U31 : INV	PORT MAP(
	O => N00085, 
	I => N00006
);
U63 : INV	PORT MAP(
	O => N00154, 
	I => N00018
);
U95 : INV	PORT MAP(
	O => N00229, 
	I => N00009
);
U64 : INV	PORT MAP(
	O => N00157, 
	I => N00017
);
U96 : INV	PORT MAP(
	O => N00231, 
	I => N00018
);
U32 : AND6	PORT MAP(
	I0 => N00094, 
	I1 => N00092, 
	I2 => N00090, 
	I3 => N00087, 
	I4 => N00085, 
	I5 => N00003, 
	O => N00088
);
U33 : INV	PORT MAP(
	O => N00087, 
	I => N00009
);
U65 : INV	PORT MAP(
	O => N00159, 
	I => N00016
);
U97 : INV	PORT MAP(
	O => N00233, 
	I => N00017
);
U34 : INV	PORT MAP(
	O => N00090, 
	I => N00018
);
U66 : INV	PORT MAP(
	O => N00161, 
	I => N00015
);
U98 : INV	PORT MAP(
	O => N00236, 
	I => N00016
);
U35 : INV	PORT MAP(
	O => N00092, 
	I => N00017
);
U67 : INV	PORT MAP(
	O => N00163, 
	I => N00014
);
U99 : INV	PORT MAP(
	O => N00238, 
	I => N00015
);
U36 : INV	PORT MAP(
	O => N00094, 
	I => N00016
);
U68 : OR2	PORT MAP(
	I1 => N00155, 
	I0 => N00170, 
	O => N00164
);
U69 : INV	PORT MAP(
	O => N00167, 
	I => N00009
);
U37 : OR2	PORT MAP(
	I1 => N00088, 
	I0 => N00100, 
	O => N00095
);
U38 : AND5	PORT MAP(
	I0 => N00017, 
	I1 => N00018, 
	I2 => N00016, 
	I3 => N00098, 
	I4 => N00006, 
	O => N00100
);
U39 : INV	PORT MAP(
	O => N00098, 
	I => N00009
);
U140 : INV	PORT MAP(
	O => N00341, 
	I => D0
);
U141 : AND9	PORT MAP(
	I0 => N00356, 
	I1 => N00354, 
	I2 => N00352, 
	I3 => N00350, 
	I4 => N00347, 
	I5 => N00345, 
	I6 => N00343, 
	I7 => N00341, 
	I8 => N00009, 
	O => N00348
);
U142 : INV	PORT MAP(
	O => N00343, 
	I => D1
);
U110 : AND2	PORT MAP(
	I0 => D7, 
	I1 => N00009, 
	O => N00266
);
U143 : INV	PORT MAP(
	O => N00345, 
	I => D2
);
U111 : AND8	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00013, 
	I3 => N00014, 
	I4 => N00015, 
	I5 => N00016, 
	I6 => N00017, 
	I7 => N00018, 
	O => N00274
);
U144 : INV	PORT MAP(
	O => N00347, 
	I => D3
);
U112 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => N00274, 
	O => CEOU
);
U145 : INV	PORT MAP(
	O => N00350, 
	I => D4
);
U113 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00274, 
	O => N00285
);
U146 : INV	PORT MAP(
	O => N00352, 
	I => D5
);
U114 : AND3B1	PORT MAP(
	I0 => N00006, 
	I1 => N00289, 
	I2 => N00003, 
	O => CEOD
);
U147 : INV	PORT MAP(
	O => N00354, 
	I => D6
);
U115 : INV	PORT MAP(
	O => N00292, 
	I => N00006
);
U148 : INV	PORT MAP(
	O => N00356, 
	I => D7
);
U116 : AND9	PORT MAP(
	I0 => N00307, 
	I1 => N00304, 
	I2 => N00302, 
	I3 => N00300, 
	I4 => N00298, 
	I5 => N00018, 
	I6 => N00295, 
	I7 => N00292, 
	I8 => N00003, 
	O => N00305
);
U117 : INV	PORT MAP(
	O => N00295, 
	I => N00009
);
U118 : INV	PORT MAP(
	O => N00298, 
	I => N00017
);
U119 : INV	PORT MAP(
	O => N00300, 
	I => N00016
);
U70 : AND7	PORT MAP(
	I0 => N00015, 
	I1 => N00016, 
	I2 => N00017, 
	I3 => N00014, 
	I4 => N00018, 
	I5 => N00167, 
	I6 => N00006, 
	O => N00170
);
U71 : XOR2	PORT MAP(
	I1 => N00164, 
	I0 => N00181, 
	O => N00174
);
U40 : XOR2	PORT MAP(
	I1 => N00095, 
	I0 => N00110, 
	O => N00103
);
U73 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00013, 
	O => N00179
);
U74 : OR2	PORT MAP(
	I1 => N00179, 
	I0 => N00183, 
	O => N00181
);
U42 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00015, 
	O => N00107
);
U10 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00018, 
	O => N00031
);
U11 : OR2	PORT MAP(
	I1 => N00031, 
	I0 => N00035, 
	O => N00028
);
U43 : OR2	PORT MAP(
	I1 => N00107, 
	I0 => N00112, 
	O => N00110
);
U75 : AND2	PORT MAP(
	I0 => D5, 
	I1 => N00009, 
	O => N00183
);
U76 : INV	PORT MAP(
	O => N00187, 
	I => N00006
);
U44 : AND2	PORT MAP(
	I0 => D3, 
	I1 => N00009, 
	O => N00112
);
U12 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00009, 
	O => N00035
);
U56 : FDC	PORT MAP(
	D => N00137, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U89 : FDC	PORT MAP(
	D => N00213, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U126 : FDC	PORT MAP(
	D => N00312, 
	C => C, 
	CLR => CLR, 
	Q => N00313
);
U107 : FDC	PORT MAP(
	D => N00257, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U27 : FDC	PORT MAP(
	D => N00072, 
	C => C, 
	CLR => CLR, 
	Q => N00016
);
U9 : FDC	PORT MAP(
	D => N00027, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U18 : FDC	PORT MAP(
	D => N00048, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U72 : FDC	PORT MAP(
	D => N00174, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
U41 : FDC	PORT MAP(
	D => N00103, 
	C => C, 
	CLR => CLR, 
	Q => N00015
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB8RLE IS PORT (
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
	Q7 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB8RLE;



ARCHITECTURE STRUCTURE OF CB8RLE IS

-- COMPONENTS

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2RLE	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00017 : std_logic;

-- GATE INSTANCES

BEGIN
U5 : AND4	PORT MAP(
	I0 => N00008, 
	I1 => N00019, 
	I2 => N00030, 
	I3 => N00041, 
	O => TC
);
U3 : CB2RLE	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	L => L, 
	CE => N00017, 
	C => C, 
	R => R, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00028, 
	TC => N00030
);
U4 : CB2RLE	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	L => L, 
	CE => N00028, 
	C => C, 
	R => R, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => CEO, 
	TC => N00041
);
U1 : CB2RLE	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	L => L, 
	CE => CE, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2RLE	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	L => L, 
	CE => N00006, 
	C => C, 
	R => R, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00017, 
	TC => N00019
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

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I0, 
	I1 => I1, 
	I0 => I2, 
	O => N00004
);
U2 : XNOR2	PORT MAP(
	I1 => N00004, 
	I0 => N00008, 
	O => O
);
U3 : XOR2	PORT MAP(
	I1 => I3, 
	I0 => I4, 
	O => N00008
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

COMPONENT ADD1	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : ADD1	PORT MAP(
	CI => N00012, 
	A0 => A3, 
	B0 => B3, 
	S0 => S3, 
	CO => N00018
);
U4 : ADD1	PORT MAP(
	CI => N00018, 
	A0 => A4, 
	B0 => B4, 
	S0 => S4, 
	CO => C4
);
U1 : ADD1	PORT MAP(
	CI => C0, 
	A0 => A1, 
	B0 => B1, 
	S0 => S1, 
	CO => N00006
);
U2 : ADD1	PORT MAP(
	CI => N00006, 
	A0 => A2, 
	B0 => B2, 
	S0 => S2, 
	CO => N00012
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

COMPONENT NAND2
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CLRB : std_logic;
SIGNAL JK : std_logic;
SIGNAL OJK : std_logic;
SIGNAL MD : std_logic;
SIGNAL MC : std_logic;
SIGNAL MA : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL NJ : std_logic;
SIGNAL NK : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL MB : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00034 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00002;
QB<=N00026;
QC<=N00034;
QD<=N00042;
U13 : INV	PORT MAP(
	O => QDB, 
	I => N00042
);
U14 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U1 : NAND3B1	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00002, 
	O => NJ
);
U2 : OR3B1	PORT MAP(
	I2 => K, 
	I1 => N00002, 
	I0 => J, 
	O => OJK
);
U3 : NAND3	PORT MAP(
	I0 => NK, 
	I1 => OJK, 
	I2 => NJ, 
	O => JK
);
U4 : NAND2	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => NK
);
U11 : M2_1	PORT MAP(
	D0 => D, 
	D1 => N00034, 
	S0 => S_L, 
	O => MD
);
U12 : FDC	PORT MAP(
	D => MD, 
	C => CK, 
	CLR => CLRB, 
	Q => N00042
);
U5 : M2_1	PORT MAP(
	D0 => A, 
	D1 => JK, 
	S0 => S_L, 
	O => MA
);
U6 : FDC	PORT MAP(
	D => MA, 
	C => CK, 
	CLR => CLRB, 
	Q => N00002
);
U7 : M2_1	PORT MAP(
	D0 => B, 
	D1 => N00002, 
	S0 => S_L, 
	O => MB
);
U8 : FDC	PORT MAP(
	D => MB, 
	C => CK, 
	CLR => CLRB, 
	Q => N00026
);
U9 : M2_1	PORT MAP(
	D0 => C, 
	D1 => N00026, 
	S0 => S_L, 
	O => MC
);
U10 : FDC	PORT MAP(
	D => MC, 
	C => CK, 
	CLR => CLRB, 
	Q => N00034
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
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

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00065 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00020 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00007;
QB<=N00011;
QC<=N00013;
QD<=N00009;
U45 : OR4	PORT MAP(
	I3 => N00122, 
	I2 => N00137, 
	I1 => N00141, 
	I0 => N00148, 
	O => N00138
);
U14 : AND4B1	PORT MAP(
	I0 => N00020, 
	I1 => N00007, 
	I2 => R, 
	I3 => N00014, 
	O => N00039
);
U47 : AND4B1	PORT MAP(
	I0 => N00020, 
	I1 => N00009, 
	I2 => R, 
	I3 => N00014, 
	O => N00141
);
U15 : AND3B1	PORT MAP(
	I0 => N00014, 
	I1 => A, 
	I2 => R, 
	O => N00046
);
U48 : AND3B1	PORT MAP(
	I0 => N00014, 
	I1 => D, 
	I2 => R, 
	O => N00148
);
U16 : AND6	PORT MAP(
	I0 => N00056, 
	I1 => N00054, 
	I2 => N00007, 
	I3 => R, 
	I4 => N00014, 
	I5 => N00020, 
	O => N00051
);
U17 : INV	PORT MAP(
	O => N00054, 
	I => N00011
);
U18 : INV	PORT MAP(
	O => N00056, 
	I => N00009
);
U19 : AND6	PORT MAP(
	I0 => N00064, 
	I1 => N00011, 
	I2 => N00061, 
	I3 => R, 
	I4 => N00014, 
	I5 => N00020, 
	O => N00065
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => N00002, 
	O => N00004
);
U3 : AND2	PORT MAP(
	I0 => N00153, 
	I1 => N00004, 
	O => N00020
);
U4 : AND2	PORT MAP(
	I0 => N00002, 
	I1 => ENP, 
	O => N00153
);
U20 : INV	PORT MAP(
	O => N00061, 
	I => N00007
);
U5 : AND5B2	PORT MAP(
	I0 => N00013, 
	I1 => N00011, 
	I2 => N00009, 
	I3 => N00007, 
	I4 => N00004, 
	O => RCO
);
U6 : AND2	PORT MAP(
	I0 => N00002, 
	I1 => LOAD, 
	O => N00014
);
U21 : OR4	PORT MAP(
	I3 => N00051, 
	I2 => N00065, 
	I1 => N00069, 
	I0 => N00076, 
	O => N00066
);
U22 : INV	PORT MAP(
	O => N00064, 
	I => N00009
);
U7 : AND6	PORT MAP(
	I0 => N00029, 
	I1 => N00027, 
	I2 => N00025, 
	I3 => R, 
	I4 => N00014, 
	I5 => N00020, 
	O => N00023
);
U8 : INV	PORT MAP(
	O => N00025, 
	I => N00007
);
U9 : INV	PORT MAP(
	O => N00027, 
	I => N00011
);
U24 : AND4B1	PORT MAP(
	I0 => N00020, 
	I1 => N00011, 
	I2 => R, 
	I3 => N00014, 
	O => N00069
);
U25 : AND3B1	PORT MAP(
	I0 => N00014, 
	I1 => B, 
	I2 => R, 
	O => N00076
);
U26 : AND7	PORT MAP(
	I0 => N00087, 
	I1 => N00085, 
	I2 => N00011, 
	I3 => N00007, 
	I4 => R, 
	I5 => N00014, 
	I6 => N00020, 
	O => N00082
);
U27 : INV	PORT MAP(
	O => N00085, 
	I => N00013
);
U28 : INV	PORT MAP(
	O => N00087, 
	I => N00009
);
U29 : AND6	PORT MAP(
	I0 => N00095, 
	I1 => N00013, 
	I2 => N00092, 
	I3 => R, 
	I4 => N00014, 
	I5 => N00020, 
	O => N00099
);
U30 : INV	PORT MAP(
	O => N00092, 
	I => N00007
);
U31 : INV	PORT MAP(
	O => N00095, 
	I => N00009
);
U32 : AND6	PORT MAP(
	I0 => N00109, 
	I1 => N00013, 
	I2 => N00104, 
	I3 => R, 
	I4 => N00014, 
	I5 => N00020, 
	O => N00100
);
U33 : OR5	PORT MAP(
	I4 => N00082, 
	I3 => N00099, 
	I2 => N00100, 
	I1 => N00105, 
	I0 => N00116, 
	O => N00101
);
U35 : INV	PORT MAP(
	O => N00104, 
	I => N00011
);
U36 : INV	PORT MAP(
	O => N00109, 
	I => N00009
);
U37 : AND4B1	PORT MAP(
	I0 => N00020, 
	I1 => N00013, 
	I2 => R, 
	I3 => N00014, 
	O => N00105
);
U38 : AND3B1	PORT MAP(
	I0 => N00014, 
	I1 => C, 
	I2 => R, 
	O => N00116
);
U39 : AND7	PORT MAP(
	I0 => N00126, 
	I1 => N00013, 
	I2 => N00011, 
	I3 => N00007, 
	I4 => R, 
	I5 => N00014, 
	I6 => N00020, 
	O => N00122
);
U40 : INV	PORT MAP(
	O => N00126, 
	I => N00009
);
U41 : AND7	PORT MAP(
	I0 => N00009, 
	I1 => N00135, 
	I2 => N00133, 
	I3 => N00131, 
	I4 => R, 
	I5 => N00014, 
	I6 => N00020, 
	O => N00137
);
U42 : INV	PORT MAP(
	O => N00131, 
	I => N00007
);
U10 : INV	PORT MAP(
	O => N00029, 
	I => N00013
);
U43 : INV	PORT MAP(
	O => N00133, 
	I => N00011
);
U11 : AND5B2	PORT MAP(
	I0 => N00009, 
	I1 => N00007, 
	I2 => R, 
	I3 => N00014, 
	I4 => N00020, 
	O => N00035
);
U44 : INV	PORT MAP(
	O => N00135, 
	I => N00013
);
U12 : OR4	PORT MAP(
	I3 => N00023, 
	I2 => N00035, 
	I1 => N00039, 
	I0 => N00046, 
	O => N00036
);
U23 : FD	PORT MAP(
	D => N00066, 
	C => CK, 
	Q => N00011
);
U34 : FD	PORT MAP(
	D => N00101, 
	C => CK, 
	Q => N00013
);
U13 : FD	PORT MAP(
	D => N00036, 
	C => CK, 
	Q => N00007
);
U46 : FD	PORT MAP(
	D => N00138, 
	C => CK, 
	Q => N00009
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
SIGNAL M03 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL O : std_logic;
SIGNAL M23 : std_logic;
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
Y<=O;
U5 : INV	PORT MAP(
	O => W, 
	I => O
);
U9 : INV	PORT MAP(
	O => E, 
	I => G
);
U3 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => A, 
	O => M23
);
U4 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => O, 
	E => E
);
U6 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => A, 
	O => M45
);
U7 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U8 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => A, 
	O => M67
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
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
U13 : OPAD	PORT MAP(
	OPAD => O12
);
U14 : OPAD	PORT MAP(
	OPAD => O13
);
U15 : OPAD	PORT MAP(
	OPAD => O14
);
U16 : OPAD	PORT MAP(
	OPAD => O15
);
U1 : OPAD	PORT MAP(
	OPAD => O0
);
U2 : OPAD	PORT MAP(
	OPAD => O1
);
U3 : OPAD	PORT MAP(
	OPAD => O2
);
U4 : OPAD	PORT MAP(
	OPAD => O3
);
U5 : OPAD	PORT MAP(
	OPAD => O4
);
U6 : OPAD	PORT MAP(
	OPAD => O5
);
U7 : OPAD	PORT MAP(
	OPAD => O6
);
U8 : OPAD	PORT MAP(
	OPAD => O7
);
U9 : OPAD	PORT MAP(
	OPAD => O8
);
U10 : OPAD	PORT MAP(
	OPAD => O9
);
U11 : OPAD	PORT MAP(
	OPAD => O10
);
U12 : OPAD	PORT MAP(
	OPAD => O11
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
U3 : OFDE	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2
);
U4 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U1 : OFDE	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0
);
U2 : OFDE	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1
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
SIGNAL N00005 : std_logic;
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => N00003, 
	I => E
);
U2 : OBUFT	PORT MAP(
	T => N00003, 
	I => N00005, 
	O => O
);
U3 : FD	PORT MAP(
	D => D, 
	C => C, 
	Q => N00005
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB16X2 IS PORT (
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
	CEU : IN std_logic;
	CED : IN std_logic;
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
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END CB16X2;



ARCHITECTURE STRUCTURE OF CB16X2 IS

-- COMPONENTS

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB8X2	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CEU : IN std_logic;
	CED : IN std_logic;
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
	TCU : OUT std_logic;
	L : IN std_logic;
	TCD : OUT std_logic;
	CEOU : OUT std_logic;
	CEOD : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00047 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : AND2	PORT MAP(
	I0 => N00045, 
	I1 => N00018, 
	O => TCU
);
U4 : AND2	PORT MAP(
	I0 => N00047, 
	I1 => N00020, 
	O => TCD
);
U1 : CB8X2	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	D4 => D4, 
	D5 => D5, 
	D6 => D6, 
	D7 => D7, 
	CEU => CEU, 
	CED => CED, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	Q4 => Q4, 
	Q5 => Q5, 
	Q6 => Q6, 
	Q7 => Q7, 
	TCU => N00018, 
	L => L, 
	TCD => N00020, 
	CEOU => N00022, 
	CEOD => N00024
);
U2 : CB8X2	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	D2 => D10, 
	D3 => D11, 
	D4 => D12, 
	D5 => D13, 
	D6 => D14, 
	D7 => D15, 
	CEU => N00022, 
	CED => N00024, 
	C => C, 
	R => R, 
	Q0 => Q8, 
	Q1 => Q9, 
	Q2 => Q10, 
	Q3 => Q11, 
	Q4 => Q12, 
	Q5 => Q13, 
	Q6 => Q14, 
	Q7 => Q15, 
	TCU => N00045, 
	L => L, 
	TCD => N00047, 
	CEOU => CEOU, 
	CEOD => CEOD
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY CB16RLE IS PORT (
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
	Q15 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END CB16RLE;



ARCHITECTURE STRUCTURE OF CB16RLE IS

-- COMPONENTS

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2RLE	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	L : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00085 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00061 : std_logic;

-- GATE INSTANCES

BEGIN
U9 : AND8	PORT MAP(
	I0 => N00085, 
	I1 => N00074, 
	I2 => N00063, 
	I3 => N00052, 
	I4 => N00041, 
	I5 => N00030, 
	I6 => N00019, 
	I7 => N00008, 
	O => TC
);
U3 : CB2RLE	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	L => L, 
	CE => N00017, 
	C => C, 
	R => R, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00028, 
	TC => N00030
);
U4 : CB2RLE	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	L => L, 
	CE => N00028, 
	C => C, 
	R => R, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => N00039, 
	TC => N00041
);
U5 : CB2RLE	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	L => L, 
	CE => N00039, 
	C => C, 
	R => R, 
	Q0 => Q8, 
	Q1 => Q9, 
	CEO => N00050, 
	TC => N00052
);
U6 : CB2RLE	PORT MAP(
	D0 => D10, 
	D1 => D11, 
	L => L, 
	CE => N00050, 
	C => C, 
	R => R, 
	Q0 => Q10, 
	Q1 => Q11, 
	CEO => N00061, 
	TC => N00063
);
U7 : CB2RLE	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	L => L, 
	CE => N00061, 
	C => C, 
	R => R, 
	Q0 => Q12, 
	Q1 => Q13, 
	CEO => N00072, 
	TC => N00074
);
U8 : CB2RLE	PORT MAP(
	D0 => D14, 
	D1 => D15, 
	L => L, 
	CE => N00072, 
	C => C, 
	R => R, 
	Q0 => Q14, 
	Q1 => Q15, 
	CEO => CEO, 
	TC => N00085
);
U1 : CB2RLE	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	L => L, 
	CE => CE, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2RLE	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	L => L, 
	CE => N00006, 
	C => C, 
	R => R, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00017, 
	TC => N00019
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

COMPONENT BUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : BUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U4 : BUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U1 : BUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U2 : BUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
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

COMPONENT AND4B1
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

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT ADD1X2	 PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD1X1	 PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADSU8X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00004 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00022 : std_logic;

-- GATE INSTANCES

BEGIN
S7<=N00022;
U4 : GND	PORT MAP(
	G => N00035
);
U5 : AND4B2	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	I2 => ADD, 
	I3 => N00022, 
	O => N00040
);
U6 : AND4B1	PORT MAP(
	I0 => N00022, 
	I1 => ADD, 
	I2 => B7, 
	I3 => A7, 
	O => N00045
);
U7 : OR4	PORT MAP(
	I3 => N00040, 
	I2 => N00045, 
	I1 => N00051, 
	I0 => N00058, 
	O => OFL
);
U8 : AND4B2	PORT MAP(
	I0 => A7, 
	I1 => ADD, 
	I2 => N00022, 
	I3 => B7, 
	O => N00051
);
U9 : AND4B3	PORT MAP(
	I0 => ADD, 
	I1 => B7, 
	I2 => N00022, 
	I3 => A7, 
	O => N00058
);
U3 : ADD1X2	PORT MAP(
	CI => N00024, 
	A0 => N00035, 
	B0 => N00035, 
	S0 => CO, 
	CO => OPEN
);
U1 : ADD1X1	PORT MAP(
	A0 => CI, 
	B0 => CI, 
	S0 => OPEN, 
	CO => N00004
);
U2 : ADSU8X2	PORT MAP(
	CI => N00004, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	A5 => A5, 
	A6 => A6, 
	A7 => A7, 
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
	S7 => N00022, 
	CO => N00024
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ADD4X2 IS PORT (
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
	CO : OUT std_logic
); END ADD4X2;



ARCHITECTURE STRUCTURE OF ADD4X2 IS

-- COMPONENTS

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00024 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND3	PORT MAP(
	I0 => N00024, 
	I1 => N00012, 
	I2 => N00009, 
	O => N00036
);
U14 : XOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00046
);
U15 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00049
);
U16 : AND3	PORT MAP(
	I0 => N00039, 
	I1 => B1, 
	I2 => A1, 
	O => N00054
);
U17 : OR4	PORT MAP(
	I3 => N00049, 
	I2 => N00054, 
	I1 => N00057, 
	I0 => N00065, 
	O => N00055
);
U18 : AND4	PORT MAP(
	I0 => N00024, 
	I1 => N00039, 
	I2 => B0, 
	I3 => A0, 
	O => N00057
);
U19 : XOR2	PORT MAP(
	I1 => N00055, 
	I0 => N00046, 
	O => S3
);
U1 : XOR2	PORT MAP(
	I1 => N00009, 
	I0 => N00012, 
	O => S0
);
U2 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00015
);
U3 : OR2	PORT MAP(
	I1 => N00015, 
	I0 => N00018, 
	O => N00016
);
U4 : AND2	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	O => N00018
);
U20 : AND4	PORT MAP(
	I0 => N00039, 
	I1 => N00024, 
	I2 => N00012, 
	I3 => N00009, 
	O => N00065
);
U5 : XOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00012
);
U21 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00069
);
U6 : XOR2	PORT MAP(
	I1 => N00016, 
	I0 => N00024, 
	O => S1
);
U7 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00031
);
U22 : AND3	PORT MAP(
	I0 => N00046, 
	I1 => A2, 
	I2 => B2, 
	O => N00073
);
U23 : AND4	PORT MAP(
	I0 => N00046, 
	I1 => N00039, 
	I2 => B1, 
	I3 => A1, 
	O => N00078
);
U8 : XOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00024
);
U9 : AND3	PORT MAP(
	I0 => N00024, 
	I1 => B0, 
	I2 => A0, 
	O => N00033
);
U24 : OR5	PORT MAP(
	I4 => N00069, 
	I3 => N00073, 
	I2 => N00078, 
	I1 => N00081, 
	I0 => N00095, 
	O => CO
);
U25 : AND5	PORT MAP(
	I0 => N00046, 
	I1 => N00039, 
	I2 => N00024, 
	I3 => B0, 
	I4 => A0, 
	O => N00081
);
U26 : OR2	PORT MAP(
	I1 => CI, 
	I0 => N00091, 
	O => N00009
);
U27 : AND5	PORT MAP(
	I0 => N00046, 
	I1 => N00039, 
	I2 => N00024, 
	I3 => N00012, 
	I4 => N00009, 
	O => N00095
);
U28 : GND	PORT MAP(
	G => N00091
);
U10 : OR3	PORT MAP(
	I2 => N00031, 
	I1 => N00033, 
	I0 => N00036, 
	O => N00034
);
U11 : XOR2	PORT MAP(
	I1 => N00034, 
	I0 => N00039, 
	O => S2
);
U12 : XOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00039
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY ACC4X2 IS PORT (
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
	R : IN std_logic
); END ACC4X2;



ARCHITECTURE STRUCTURE OF ACC4X2 IS

-- COMPONENTS

COMPONENT XNOR2
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
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

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00024 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00177 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00197 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00156 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00099 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00024;
Q1<=N00023;
Q2<=N00022;
Q3<=N00021;
U45 : XNOR2	PORT MAP(
	I1 => B2, 
	I0 => N00006, 
	O => N00099
);
U13 : OR2	PORT MAP(
	I1 => N00034, 
	I0 => N00044, 
	O => N00030
);
U46 : AND3	PORT MAP(
	I0 => N00148, 
	I1 => N00021, 
	I2 => N00019, 
	O => N00147
);
U14 : XOR2	PORT MAP(
	I1 => N00029, 
	I0 => N00035, 
	O => N00040
);
U47 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00021, 
	O => N00151
);
U15 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00042, 
	I3 => N00003, 
	O => N00044
);
U48 : AND4	PORT MAP(
	I0 => N00099, 
	I1 => N00022, 
	I2 => N00154, 
	I3 => N00019, 
	O => N00156
);
U49 : XOR2	PORT MAP(
	I1 => N00151, 
	I0 => N00157, 
	O => N00154
);
U17 : AND3	PORT MAP(
	I0 => N00042, 
	I1 => N00024, 
	I2 => N00019, 
	O => N00046
);
U18 : OR2	PORT MAP(
	I1 => N00046, 
	I0 => N00055, 
	O => N00051
);
U19 : AND3	PORT MAP(
	I0 => N00029, 
	I1 => N00019, 
	I2 => N00009, 
	O => N00055
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U50 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D3, 
	O => N00162
);
U3 : AND2	PORT MAP(
	I0 => ADD, 
	I1 => N00002, 
	O => N00006
);
U4 : OR2	PORT MAP(
	I1 => CI, 
	I0 => N00010, 
	O => N00009
);
U51 : XOR2	PORT MAP(
	I1 => N00154, 
	I0 => N00117, 
	O => N00166
);
U52 : OR2	PORT MAP(
	I1 => N00162, 
	I0 => N00178, 
	O => N00157
);
U20 : XNOR2	PORT MAP(
	I1 => B0, 
	I0 => N00006, 
	O => N00042
);
U5 : OR2	PORT MAP(
	I1 => R, 
	I0 => N00010, 
	O => N00012
);
U21 : AND3	PORT MAP(
	I0 => N00064, 
	I1 => N00023, 
	I2 => N00019, 
	O => N00063
);
U53 : AND5	PORT MAP(
	I0 => N00064, 
	I1 => N00023, 
	I2 => N00154, 
	I3 => N00101, 
	I4 => N00019, 
	O => N00172
);
U6 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00010, 
	O => N00015
);
U7 : AND3B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00003, 
	O => N00019
);
U22 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00023, 
	O => N00067
);
U54 : OR5	PORT MAP(
	I4 => N00147, 
	I3 => N00156, 
	I2 => N00172, 
	I1 => N00177, 
	I0 => N00197, 
	O => CO
);
U8 : GND	PORT MAP(
	G => N00010
);
U23 : XOR2	PORT MAP(
	I1 => N00068, 
	I0 => N00051, 
	O => N00071
);
U56 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00148, 
	I3 => N00003, 
	O => N00178
);
U24 : XOR2	PORT MAP(
	I1 => N00067, 
	I0 => N00074, 
	O => N00068
);
U9 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00024, 
	O => N00027
);
U57 : AND6	PORT MAP(
	I0 => N00042, 
	I1 => N00024, 
	I2 => N00154, 
	I3 => N00101, 
	I4 => N00068, 
	I5 => N00019, 
	O => N00177
);
U25 : AND4	PORT MAP(
	I0 => N00042, 
	I1 => N00024, 
	I2 => N00068, 
	I3 => N00019, 
	O => N00075
);
U58 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => N00006, 
	O => N00148
);
U59 : AND6	PORT MAP(
	I0 => N00009, 
	I1 => N00154, 
	I2 => N00101, 
	I3 => N00068, 
	I4 => N00029, 
	I5 => N00019, 
	O => N00197
);
U27 : OR3	PORT MAP(
	I2 => N00063, 
	I1 => N00075, 
	I0 => N00080, 
	O => N00076
);
U28 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D1, 
	O => N00082
);
U29 : OR2	PORT MAP(
	I1 => N00082, 
	I0 => N00089, 
	O => N00074
);
U30 : AND4	PORT MAP(
	I0 => N00068, 
	I1 => N00029, 
	I2 => N00019, 
	I3 => N00009, 
	O => N00080
);
U31 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00064, 
	I3 => N00003, 
	O => N00089
);
U32 : AND3	PORT MAP(
	I0 => N00099, 
	I1 => N00022, 
	I2 => N00019, 
	O => N00098
);
U33 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => N00006, 
	O => N00064
);
U34 : XOR2	PORT MAP(
	I1 => N00101, 
	I0 => N00076, 
	O => N00104
);
U35 : AND4	PORT MAP(
	I0 => N00064, 
	I1 => N00023, 
	I2 => N00101, 
	I3 => N00019, 
	O => N00108
);
U37 : AND3B2	PORT MAP(
	I0 => N00015, 
	I1 => N00012, 
	I2 => N00022, 
	O => N00111
);
U38 : OR4	PORT MAP(
	I3 => N00098, 
	I2 => N00108, 
	I1 => N00119, 
	I0 => N00138, 
	O => N00117
);
U39 : XOR2	PORT MAP(
	I1 => N00111, 
	I0 => N00118, 
	O => N00101
);
U40 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D2, 
	O => N00123
);
U41 : AND5	PORT MAP(
	I0 => N00042, 
	I1 => N00024, 
	I2 => N00101, 
	I3 => N00068, 
	I4 => N00019, 
	O => N00119
);
U10 : XOR2	PORT MAP(
	I1 => N00027, 
	I0 => N00030, 
	O => N00029
);
U42 : OR2	PORT MAP(
	I1 => N00123, 
	I0 => N00132, 
	O => N00118
);
U43 : AND4B2	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => N00099, 
	I3 => N00003, 
	O => N00132
);
U11 : AND3B1	PORT MAP(
	I0 => N00012, 
	I1 => N00015, 
	I2 => D0, 
	O => N00034
);
U12 : AND2	PORT MAP(
	I0 => N00019, 
	I1 => N00009, 
	O => N00035
);
U44 : AND5	PORT MAP(
	I0 => N00101, 
	I1 => N00068, 
	I2 => N00029, 
	I3 => N00019, 
	I4 => N00009, 
	O => N00138
);
U55 : FD	PORT MAP(
	D => N00166, 
	C => C, 
	Q => N00021
);
U36 : FD	PORT MAP(
	D => N00104, 
	C => C, 
	Q => N00022
);
U26 : FD	PORT MAP(
	D => N00071, 
	C => C, 
	Q => N00023
);
U16 : FD	PORT MAP(
	D => N00040, 
	C => C, 
	Q => N00024
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
U1 : AND3B2	PORT MAP(
	I0 => G2B, 
	I1 => G2A, 
	I2 => G1, 
	O => E
);
U2 : NAND4B3	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y0
);
U3 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y1
);
U4 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => E, 
	O => Y2
);
U5 : NAND4B1	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => E, 
	O => Y3
);
U6 : NAND4B2	PORT MAP(
	I0 => B, 
	I1 => A, 
	I2 => C, 
	I3 => E, 
	O => Y4
);
U7 : NAND4B1	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => A, 
	I3 => E, 
	O => Y5
);
U8 : NAND4B1	PORT MAP(
	I0 => A, 
	I1 => C, 
	I2 => B, 
	I3 => E, 
	O => Y6
);
U9 : NAND4	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y7
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
SIGNAL N00033 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL MD3 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00027;
Q2<=N00045;
Q4<=N00012;
Q5<=N00030;
Q6<=N00048;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => N00003
);
U11 : FDRE	PORT MAP(
	D => MD2, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00045
);
U3 : FDRE	PORT MAP(
	D => MD0, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00009
);
U4 : M2_1	PORT MAP(
	D0 => N00006, 
	D1 => N00015, 
	S0 => L, 
	O => MD4
);
U12 : M2_1	PORT MAP(
	D0 => N00030, 
	D1 => N00051, 
	S0 => L, 
	O => MD6
);
U5 : FDRE	PORT MAP(
	D => MD4, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00012
);
U13 : FDRE	PORT MAP(
	D => MD6, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00048
);
U6 : M2_1	PORT MAP(
	D0 => N00009, 
	D1 => N00031, 
	S0 => L, 
	O => MD1
);
U14 : M2_1	PORT MAP(
	D0 => N00045, 
	D1 => N00067, 
	S0 => L, 
	O => MD3
);
U7 : FDRE	PORT MAP(
	D => MD1, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00027
);
U15 : FDRE	PORT MAP(
	D => MD3, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => Q3
);
U8 : M2_1	PORT MAP(
	D0 => N00012, 
	D1 => N00033, 
	S0 => L, 
	O => MD5
);
U16 : M2_1	PORT MAP(
	D0 => N00048, 
	D1 => N00069, 
	S0 => L, 
	O => MD7
);
U9 : FDRE	PORT MAP(
	D => MD5, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => N00030
);
U17 : FDRE	PORT MAP(
	D => MD7, 
	CE => N00003, 
	C => C, 
	R => R, 
	Q => Q7
);
U2 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => N00013, 
	S0 => L, 
	O => MD0
);
U10 : M2_1	PORT MAP(
	D0 => N00027, 
	D1 => N00049, 
	S0 => L, 
	O => MD2
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
	C : IN std_logic;
	PRE : IN std_logic
); END FTRSLE;



ARCHITECTURE STRUCTURE OF FTRSLE IS

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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL N00029 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00008;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : GND	PORT MAP(
	G => N00007
);
U5 : AND3B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	I2 => N00008, 
	O => N00011
);
U6 : AND4B2	PORT MAP(
	I0 => T, 
	I1 => N00006, 
	I2 => N00003, 
	I3 => N00008, 
	O => N00017
);
U7 : OR5	PORT MAP(
	I4 => N00011, 
	I3 => N00017, 
	I2 => S, 
	I1 => N00022, 
	I0 => N00029, 
	O => N00020
);
U8 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => N00020, 
	O => N00023
);
U10 : AND4B2	PORT MAP(
	I0 => N00006, 
	I1 => N00008, 
	I2 => T, 
	I3 => N00003, 
	O => N00022
);
U11 : AND2	PORT MAP(
	I0 => D, 
	I1 => N00006, 
	O => N00029
);
U9 : FDP	PORT MAP(
	D => N00023, 
	C => C, 
	PRE => PRE, 
	Q => N00008
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
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
SIGNAL N00007 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00008;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00006
);
U4 : GND	PORT MAP(
	G => N00007
);
U5 : AND3B2	PORT MAP(
	I0 => N00006, 
	I1 => N00003, 
	I2 => N00008, 
	O => N00011
);
U6 : AND4B2	PORT MAP(
	I0 => N00006, 
	I1 => N00008, 
	I2 => N00003, 
	I3 => T, 
	O => N00018
);
U7 : OR4	PORT MAP(
	I3 => N00011, 
	I2 => N00018, 
	I1 => N00021, 
	I0 => N00027, 
	O => N00019
);
U9 : AND3B2	PORT MAP(
	I0 => T, 
	I1 => N00006, 
	I2 => N00008, 
	O => N00021
);
U10 : AND2	PORT MAP(
	I0 => N00006, 
	I1 => D, 
	O => N00027
);
U8 : FDP	PORT MAP(
	D => N00019, 
	C => C, 
	PRE => PRE, 
	Q => N00008
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FTCPE IS PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
); END FTCPE;



ARCHITECTURE STRUCTURE OF FTCPE IS

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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00016 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00005;
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : AND2B1	PORT MAP(
	I0 => N00003, 
	I1 => N00005, 
	O => N00010
);
U4 : AND3B1	PORT MAP(
	I0 => N00005, 
	I1 => N00003, 
	I2 => T, 
	O => N00012
);
U5 : OR3	PORT MAP(
	I2 => N00010, 
	I1 => N00012, 
	I0 => N00016, 
	O => N00013
);
U6 : FDCP	PORT MAP(
	D => N00013, 
	C => C, 
	PRE => PRE, 
	Q => N00005, 
	CLR => CLR
);
U7 : AND2B1	PORT MAP(
	I0 => T, 
	I1 => N00005, 
	O => N00016
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

COMPONENT CB2CE	 PORT (
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00016 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
U5 : AND4	PORT MAP(
	I0 => N00032, 
	I1 => N00024, 
	I2 => N00016, 
	I3 => N00008, 
	O => TC
);
U3 : CB2CE	PORT MAP(
	CE => N00014, 
	C => C, 
	CLR => CLR, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00022, 
	TC => N00024
);
U4 : CB2CE	PORT MAP(
	CE => N00022, 
	C => C, 
	CLR => CLR, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => CEO, 
	TC => N00032
);
U1 : CB2CE	PORT MAP(
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2CE	PORT MAP(
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00014, 
	TC => N00016
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

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CB2RE	 PORT (
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CEO : OUT std_logic;
	TC : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00014 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00032 : std_logic;

-- GATE INSTANCES

BEGIN
U9 : AND8	PORT MAP(
	I0 => N00064, 
	I1 => N00056, 
	I2 => N00048, 
	I3 => N00040, 
	I4 => N00032, 
	I5 => N00024, 
	I6 => N00016, 
	I7 => N00008, 
	O => TC
);
U3 : CB2RE	PORT MAP(
	CE => N00014, 
	C => C, 
	R => R, 
	Q0 => Q4, 
	Q1 => Q5, 
	CEO => N00022, 
	TC => N00024
);
U4 : CB2RE	PORT MAP(
	CE => N00022, 
	C => C, 
	R => R, 
	Q0 => Q6, 
	Q1 => Q7, 
	CEO => N00030, 
	TC => N00032
);
U5 : CB2RE	PORT MAP(
	CE => N00030, 
	C => C, 
	R => R, 
	Q0 => Q8, 
	Q1 => Q9, 
	CEO => N00038, 
	TC => N00040
);
U6 : CB2RE	PORT MAP(
	CE => N00038, 
	C => C, 
	R => R, 
	Q0 => Q10, 
	Q1 => Q11, 
	CEO => N00046, 
	TC => N00048
);
U7 : CB2RE	PORT MAP(
	CE => N00046, 
	C => C, 
	R => R, 
	Q0 => Q12, 
	Q1 => Q13, 
	CEO => N00054, 
	TC => N00056
);
U8 : CB2RE	PORT MAP(
	CE => N00054, 
	C => C, 
	R => R, 
	Q0 => Q14, 
	Q1 => Q15, 
	CEO => CEO, 
	TC => N00064
);
U1 : CB2RE	PORT MAP(
	CE => CE, 
	C => C, 
	R => R, 
	Q0 => Q0, 
	Q1 => Q1, 
	CEO => N00006, 
	TC => N00008
);
U2 : CB2RE	PORT MAP(
	CE => N00006, 
	C => C, 
	R => R, 
	Q0 => Q2, 
	Q1 => Q3, 
	CEO => N00014, 
	TC => N00016
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

COMPONENT ADD4X2	 PORT (
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
	CO : OUT std_logic
); END COMPONENT;

COMPONENT ADD4	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ADD4X2	PORT MAP(
	CI => CI, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	S0 => S0, 
	S1 => S1, 
	S2 => S2, 
	S3 => S3, 
	CO => N00012
);
U2 : ADD4	PORT MAP(
	CI => N00012, 
	A0 => A4, 
	A1 => A5, 
	A2 => A6, 
	A3 => A7, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	S0 => S4, 
	S1 => S5, 
	S2 => S6, 
	S3 => S7, 
	CO => CO, 
	OFL => OFL
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

COMPONENT ACC4X2	 PORT (
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
	R : IN std_logic
); END COMPONENT;

COMPONENT ACC4	 PORT (
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
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACC4X2	PORT MAP(
	CI => CI, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	D0 => D0, 
	D1 => D1, 
	D2 => D2, 
	D3 => D3, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q0, 
	Q1 => Q1, 
	Q2 => Q2, 
	Q3 => Q3, 
	CO => N00012, 
	R => R
);
U2 : ACC4	PORT MAP(
	CI => N00012, 
	B0 => B4, 
	B1 => B5, 
	B2 => B6, 
	B3 => B7, 
	D0 => D4, 
	D1 => D5, 
	D2 => D6, 
	D3 => D7, 
	L => L, 
	ADD => ADD, 
	CE => CE, 
	C => C, 
	Q0 => Q4, 
	Q1 => Q5, 
	Q2 => Q6, 
	Q3 => Q7, 
	CO => CO, 
	OFL => OFL, 
	R => R
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

COMPONENT XOR3
	PORT (
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00010 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I0, 
	I1 => I1, 
	I0 => I2, 
	O => N00005
);
U2 : XOR2	PORT MAP(
	I1 => N00005, 
	I0 => N00006, 
	O => N00010
);
U3 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I4, 
	I0 => I5, 
	O => N00006
);
U4 : XOR2	PORT MAP(
	I1 => N00010, 
	I0 => N00014, 
	O => O
);
U5 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I7, 
	I0 => I8, 
	O => N00014
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

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT AND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND2B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00005 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL D11 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D10 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D9 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D6 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
EO<=N00009;
U13 : NOR2	PORT MAP(
	I1 => I6, 
	I0 => EI, 
	O => D6
);
U14 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D7
);
U15 : NOR2	PORT MAP(
	I1 => I4, 
	I0 => EI, 
	O => D8
);
U16 : NOR2	PORT MAP(
	I1 => I5, 
	I0 => EI, 
	O => D9
);
U17 : NOR4	PORT MAP(
	I3 => D8, 
	I2 => D9, 
	I1 => D10, 
	I0 => D11, 
	O => A2
);
U18 : NOR2	PORT MAP(
	I1 => I6, 
	I0 => EI, 
	O => D10
);
U19 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D11
);
U1 : AND5B1	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I2, 
	I3 => I1, 
	I4 => I0, 
	O => N00005
);
U2 : NAND2	PORT MAP(
	I0 => N00010, 
	I1 => N00005, 
	O => N00009
);
U3 : AND5B1	PORT MAP(
	I0 => EI, 
	I1 => I7, 
	I2 => I6, 
	I3 => I5, 
	I4 => I4, 
	O => N00010
);
U4 : NAND2B1	PORT MAP(
	I0 => EI, 
	I1 => N00009, 
	O => GS
);
U5 : AND5B2	PORT MAP(
	I0 => EI, 
	I1 => I1, 
	I2 => I6, 
	I3 => I4, 
	I4 => I2, 
	O => D0
);
U6 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I6, 
	I3 => I4, 
	O => D1
);
U7 : NOR4	PORT MAP(
	I3 => D0, 
	I2 => D1, 
	I1 => D2, 
	I0 => D3, 
	O => A0
);
U8 : AND3B2	PORT MAP(
	I0 => EI, 
	I1 => I5, 
	I2 => I6, 
	O => D2
);
U9 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D3
);
U10 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I2, 
	I2 => I5, 
	I3 => I4, 
	O => N00045
);
U11 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I5, 
	I3 => I4, 
	O => D5
);
U12 : NOR4	PORT MAP(
	I3 => N00045, 
	I2 => D5, 
	I1 => D6, 
	I0 => D7, 
	O => A1
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
SIGNAL M45 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M01 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U4 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => S2, 
	O => O, 
	E => E
);
U5 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => S0, 
	O => M45
);
U6 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => M47
);
U7 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => S0, 
	O => M67
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
U13 : IBUF	PORT MAP(
	O => O12, 
	I => I12
);
U14 : IBUF	PORT MAP(
	O => O13, 
	I => I13
);
U15 : IBUF	PORT MAP(
	O => O14, 
	I => I14
);
U16 : IBUF	PORT MAP(
	O => O15, 
	I => I15
);
U1 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
U2 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U3 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U4 : IBUF	PORT MAP(
	O => O3, 
	I => I3
);
U5 : IBUF	PORT MAP(
	O => O4, 
	I => I4
);
U6 : IBUF	PORT MAP(
	O => O5, 
	I => I5
);
U7 : IBUF	PORT MAP(
	O => O6, 
	I => I6
);
U8 : IBUF	PORT MAP(
	O => O7, 
	I => I7
);
U9 : IBUF	PORT MAP(
	O => O8, 
	I => I8
);
U10 : IBUF	PORT MAP(
	O => O9, 
	I => I9
);
U11 : IBUF	PORT MAP(
	O => O10, 
	I => I10
);
U12 : IBUF	PORT MAP(
	O => O11, 
	I => I11
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
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => N00003
);
U2 : FD	PORT MAP(
	D => N00003, 
	C => C, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FDCE IS PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END FDCE;



ARCHITECTURE STRUCTURE OF FDCE IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
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

COMPONENT OR2
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
SIGNAL N00004 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : VCC	PORT MAP(
	P => N00004
);
U2 : AND2B1	PORT MAP(
	I0 => N00005, 
	I1 => N00002, 
	O => N00007
);
U3 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00004, 
	O => N00005
);
U4 : OR2	PORT MAP(
	I1 => N00007, 
	I0 => N00010, 
	O => N00008
);
U6 : AND2	PORT MAP(
	I0 => D, 
	I1 => N00005, 
	O => N00010
);
U5 : FDC	PORT MAP(
	D => N00008, 
	C => C, 
	CLR => CLR, 
	Q => N00002
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00019;
Q2<=N00031;
Q3<=N00003;
Q4<=N00004;
Q5<=N00017;
Q6<=N00029;
Q7<=N00002;
U2 : INV	PORT MAP(
	O => Q7B, 
	I => N00002
);
U3 : FDCE	PORT MAP(
	D => Q7B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U4 : FDCE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U5 : FDCE	PORT MAP(
	D => N00007, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
U6 : FDCE	PORT MAP(
	D => N00017, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00029
);
U7 : FDCE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U8 : FDCE	PORT MAP(
	D => N00029, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00002
);
U9 : FDCE	PORT MAP(
	D => N00031, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00003
);
U1 : FDCE	PORT MAP(
	D => N00003, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
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

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
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
SIGNAL M03 : std_logic;
SIGNAL M8B : std_logic;
SIGNAL M89 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL MEF : std_logic;
SIGNAL M45 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL M8F : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL M07 : std_logic;
SIGNAL MCF : std_logic;
SIGNAL MCD : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL MAB : std_logic;

-- GATE INSTANCES

BEGIN
U7 : AND3B2	PORT MAP(
	I0 => D, 
	I1 => G, 
	I2 => M07, 
	O => N00028
);
U9 : XNOR2	PORT MAP(
	I1 => N00028, 
	I0 => N00036, 
	O => W
);
U10 : AND3B1	PORT MAP(
	I0 => G, 
	I1 => M8F, 
	I2 => D, 
	O => N00036
);
U11 : M2_1	PORT MAP(
	D0 => E8, 
	D1 => E9, 
	S0 => A, 
	O => M89
);
U3 : M2_1	PORT MAP(
	D0 => E2, 
	D1 => E3, 
	S0 => A, 
	O => M23
);
U12 : M2_1	PORT MAP(
	D0 => M89, 
	D1 => MAB, 
	S0 => B, 
	O => M8B
);
U4 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => M07
);
U13 : M2_1	PORT MAP(
	D0 => E10, 
	D1 => E11, 
	S0 => A, 
	O => MAB
);
U5 : M2_1	PORT MAP(
	D0 => E4, 
	D1 => E5, 
	S0 => A, 
	O => M45
);
U6 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U14 : M2_1	PORT MAP(
	D0 => M8B, 
	D1 => MCF, 
	S0 => C, 
	O => M8F
);
U15 : M2_1	PORT MAP(
	D0 => E12, 
	D1 => E13, 
	S0 => A, 
	O => MCD
);
U16 : M2_1	PORT MAP(
	D0 => MCD, 
	D1 => MEF, 
	S0 => B, 
	O => MCF
);
U8 : M2_1	PORT MAP(
	D0 => E6, 
	D1 => E7, 
	S0 => A, 
	O => M67
);
U17 : M2_1	PORT MAP(
	D0 => E14, 
	D1 => E15, 
	S0 => A, 
	O => MEF
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
SIGNAL N00031 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR4 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00005;
Q2<=N00018;
Q3<=N00031;
Q4<=N00044;
Q5<=N00057;
Q6<=N00070;
Q7<=N00083;
U1 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U26 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U22 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U3 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00007
);
U11 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U23 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U4 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U12 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U13 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U24 : FDRE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00083
);
U5 : M2_1	PORT MAP(
	D0 => N00018, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U14 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U25 : M2_1	PORT MAP(
	D0 => N00070, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U6 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00005
);
U7 : M2_1	PORT MAP(
	D0 => N00007, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U15 : FDRE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00044
);
U16 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U17 : M2_1	PORT MAP(
	D0 => N00070, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U9 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U18 : FDRE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00057
);
U19 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U20 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U10 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U21 : FDRE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00070
);
U2 : M2_1	PORT MAP(
	D0 => N00005, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
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

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00030 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00016;
Q2<=N00028;
Q3<=N00002;
Q4<=N00006;
Q5<=N00018;
Q6<=N00030;
U3 : FDCE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00016
);
U4 : FDCE	PORT MAP(
	D => N00006, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U5 : FDCE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00028
);
U6 : FDCE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00030
);
U7 : FDCE	PORT MAP(
	D => N00028, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00002
);
U8 : FDCE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
);
U2 : FDCE	PORT MAP(
	D => N00002, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00006
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
SIGNAL N00030 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00004 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00042 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00004;
Q1<=N00016;
Q2<=N00028;
Q3<=N00040;
Q4<=N00052;
Q5<=N00064;
Q6<=N00076;
Q7<=N00002;
Q8<=N00006;
Q9<=N00018;
Q10<=N00030;
Q11<=N00042;
Q12<=N00054;
Q13<=N00066;
Q14<=N00078;
U3 : FDRE	PORT MAP(
	D => N00004, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00016
);
U11 : FDRE	PORT MAP(
	D => N00052, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00064
);
U12 : FDRE	PORT MAP(
	D => N00054, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00066
);
U4 : FDRE	PORT MAP(
	D => N00006, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U5 : FDRE	PORT MAP(
	D => N00016, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00028
);
U13 : FDRE	PORT MAP(
	D => N00064, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00076
);
U6 : FDRE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00030
);
U14 : FDRE	PORT MAP(
	D => N00066, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00078
);
U7 : FDRE	PORT MAP(
	D => N00028, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00040
);
U15 : FDRE	PORT MAP(
	D => N00076, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00002
);
U8 : FDRE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00042
);
U16 : FDRE	PORT MAP(
	D => N00078, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U9 : FDRE	PORT MAP(
	D => N00040, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00052
);
U1 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00004
);
U10 : FDRE	PORT MAP(
	D => N00042, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00054
);
U2 : FDRE	PORT MAP(
	D => N00002, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00006
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
U1 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U2 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U3 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U4 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
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
U13 : OBUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
U14 : OBUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
U15 : OBUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
U16 : OBUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
);
U1 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U2 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U3 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U4 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U5 : OBUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
U6 : OBUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U7 : OBUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U8 : OBUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U9 : OBUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
U10 : OBUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
U11 : OBUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
U12 : OBUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
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

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00056 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
);
U4 : FDCE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q5
);
U5 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U6 : FDCE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q6
);
U7 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U8 : FDCE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U1 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U2 : FDCE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q4
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDCP
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00005 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00002;
U1 : VCC	PORT MAP(
	P => N00004
);
U2 : AND2B1	PORT MAP(
	I0 => N00005, 
	I1 => N00002, 
	O => N00008
);
U3 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00004, 
	O => N00005
);
U4 : OR2	PORT MAP(
	I1 => N00008, 
	I0 => N00011, 
	O => N00009
);
U5 : FDCP	PORT MAP(
	D => N00009, 
	C => C, 
	PRE => PRE, 
	Q => N00002, 
	CLR => N00070
);
U6 : AND2	PORT MAP(
	I0 => D, 
	I1 => N00005, 
	O => N00011
);
U7 : GND	PORT MAP(
	G => N00070
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FD8 IS PORT (
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
); END FD8;



ARCHITECTURE STRUCTURE OF FD8 IS

-- COMPONENTS

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00034 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : FD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U4 : FD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U5 : FD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U6 : FD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U7 : FD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U8 : FD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U1 : FD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : FD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
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

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U3 : IFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U4 : IFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U5 : IFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U6 : IFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U7 : IFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U8 : IFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U1 : IFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : IFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
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

COMPONENT ILD
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : ILD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : ILD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U3 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U4 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U5 : ILD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U6 : ILD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U7 : ILD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U8 : ILD	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY LD8 IS PORT (
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
); END LD8;



ARCHITECTURE STRUCTURE OF LD8 IS

-- COMPONENTS

COMPONENT LD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00031 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : LD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U4 : LD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U5 : LD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U6 : LD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U7 : LD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U8 : LD	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
U1 : LD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : LD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY LD16 IS PORT (
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
); END LD16;



ARCHITECTURE STRUCTURE OF LD16 IS

-- COMPONENTS

COMPONENT LD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00056 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : LD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U11 : LD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U4 : LD	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9
);
U12 : LD	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13
);
U13 : LD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U5 : LD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U6 : LD	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10
);
U14 : LD	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14
);
U15 : LD	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
U7 : LD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U8 : LD	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11
);
U16 : LD	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15
);
U9 : LD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U1 : LD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : LD	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8
);
U10 : LD	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12
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

COMPONENT ILD
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U13 : ILD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U14 : ILD	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14
);
U15 : ILD	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
U16 : ILD	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15
);
U1 : ILD	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : ILD	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8
);
U3 : ILD	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U4 : ILD	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9
);
U5 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U6 : ILD	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10
);
U7 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U8 : ILD	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11
);
U9 : ILD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U10 : ILD	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12
);
U11 : ILD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U12 : ILD	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13
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

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U11 : IFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U3 : IFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U4 : IFD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
U12 : IFD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U13 : IFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U5 : IFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U6 : IFD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U14 : IFD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U15 : IFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U7 : IFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U8 : IFD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
);
U16 : IFD	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15
);
U9 : IFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U1 : IFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : IFD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
U10 : IFD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FD16 IS PORT (
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
); END FD16;



ARCHITECTURE STRUCTURE OF FD16 IS

-- COMPONENTS

COMPONENT FD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00056 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : FD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U11 : FD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U4 : FD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
U12 : FD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U13 : FD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U5 : FD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U6 : FD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U14 : FD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U15 : FD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U7 : FD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U8 : FD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
);
U16 : FD	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15
);
U9 : FD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U1 : FD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : FD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
U10 : FD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
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

COMPONENT FDCE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00094 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
);
U11 : FDCE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q5
);
U4 : FDCE	PORT MAP(
	D => D9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q9
);
U12 : FDCE	PORT MAP(
	D => D13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q13
);
U5 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U13 : FDCE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q6
);
U6 : FDCE	PORT MAP(
	D => D10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q10
);
U14 : FDCE	PORT MAP(
	D => D14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q14
);
U7 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U15 : FDCE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U8 : FDCE	PORT MAP(
	D => D11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q11
);
U16 : FDCE	PORT MAP(
	D => D15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U9 : FDCE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q4
);
U1 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U2 : FDCE	PORT MAP(
	D => D8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q8
);
U10 : FDCE	PORT MAP(
	D => D12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q12
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

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U3 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q1
);
U11 : FDRE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q5
);
U4 : FDRE	PORT MAP(
	D => D9, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q9
);
U12 : FDRE	PORT MAP(
	D => D13, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q13
);
U5 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
U13 : FDRE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q6
);
U6 : FDRE	PORT MAP(
	D => D10, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q10
);
U14 : FDRE	PORT MAP(
	D => D14, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q14
);
U7 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U15 : FDRE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U8 : FDRE	PORT MAP(
	D => D11, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q11
);
U16 : FDRE	PORT MAP(
	D => D15, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U9 : FDRE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q4
);
U1 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q0
);
U2 : FDRE	PORT MAP(
	D => D8, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q8
);
U10 : FDRE	PORT MAP(
	D => D12, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q12
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

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U11 : OFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U3 : OFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
);
U4 : OFD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
U12 : OFD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U13 : OFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U5 : OFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U6 : OFD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U14 : OFD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U15 : OFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U7 : OFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U8 : OFD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
);
U16 : OFD	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15
);
U9 : OFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U1 : OFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : OFD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
U10 : OFD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
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

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U3 : OFD	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2
);
U4 : OFD	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3
);
U5 : OFD	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4
);
U6 : OFD	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5
);
U7 : OFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
);
U8 : OFD	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7
);
U1 : OFD	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0
);
U2 : OFD	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1
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

COMPONENT AND2B1
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT AND3
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

COMPONENT AND4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00340 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00051 : std_logic;
-- GATE INSTANCES

BEGIN
Q0<=N00012;
Q1<=N00011;
U13 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00012, 
	O => N00030
);
U14 : AND4B1	PORT MAP(
	I0 => N00009, 
	I1 => N00012, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00037
);
U15 : OR2	PORT MAP(
	I1 => N00037, 
	I0 => N00038, 
	O => N00043
);
U16 : AND4B3	PORT MAP(
	I0 => N00012, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00038
);
U17 : XOR2	PORT MAP(
	I1 => N00043, 
	I0 => N00046, 
	O => N00044
);
U19 : AND3B3	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00006, 
	O => N00051
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => UP, 
	I0 => N00007, 
	O => N00006
);
U4 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00009
);
U5 : GND	PORT MAP(
	G => N00007
);
U20 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00009, 
	O => N00055
);
U21 : OR2	PORT MAP(
	I1 => N00051, 
	I0 => N00061, 
	O => N00340
);
U6 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00016
);
U7 : OR2	PORT MAP(
	I1 => N00016, 
	I0 => N00017, 
	O => N00021
);
U22 : OR2	PORT MAP(
	I1 => N00055, 
	I0 => N00057, 
	O => N00046
);
U23 : AND3	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00006, 
	O => N00061
);
U8 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00017
);
U9 : XOR2	PORT MAP(
	I1 => N00021, 
	I0 => N00024, 
	O => N00022
);
U24 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00011, 
	O => N00057
);
U25 : AND4	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00067
);
U26 : OR2	PORT MAP(
	I1 => N00067, 
	I0 => N00074, 
	O => N00108
);
U27 : AND4B3	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00074
);
U28 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00340, 
	O => TC
);
U29 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00108, 
	O => CEO
);
U11 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00009, 
	O => N00029
);
U12 : OR2	PORT MAP(
	I1 => N00029, 
	I0 => N00030, 
	O => N00024
);
U18 : FDC	PORT MAP(
	D => N00044, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U10 : FDC	PORT MAP(
	D => N00022, 
	C => C, 
	CLR => CLR, 
	Q => N00012
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

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00614 : std_logic;
SIGNAL N00611 : std_logic;
SIGNAL N00062 : std_logic;
-- GATE INSTANCES

BEGIN
Q0<=N00014;
Q1<=N00013;
Q2<=N00012;
Q3<=N00011;
U13 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00009, 
	O => N00033
);
U45 : OR2	PORT MAP(
	I1 => N00118, 
	I0 => N00121, 
	O => N00611
);
U14 : AND4B3	PORT MAP(
	I0 => N00014, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00039
);
U46 : AND5B5	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00013, 
	I3 => N00014, 
	I4 => N00006, 
	O => N00121
);
U47 : INV	PORT MAP(
	O => N00128, 
	I => N00006
);
U15 : OR2	PORT MAP(
	I1 => N00039, 
	I0 => N00041, 
	O => N00045
);
U16 : AND4B1	PORT MAP(
	I0 => N00009, 
	I1 => N00014, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00041
);
U48 : AND6	PORT MAP(
	I0 => N00136, 
	I1 => N00134, 
	I2 => N00132, 
	I3 => N00130, 
	I4 => N00128, 
	I5 => N00003, 
	O => N00137
);
U49 : INV	PORT MAP(
	O => N00130, 
	I => N00014
);
U17 : XOR2	PORT MAP(
	I1 => N00045, 
	I0 => N00048, 
	O => N00046
);
U19 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00013, 
	O => N00053
);
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U3 : OR2	PORT MAP(
	I1 => UP, 
	I0 => N00007, 
	O => N00006
);
U50 : INV	PORT MAP(
	O => N00132, 
	I => N00013
);
U4 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00009
);
U51 : INV	PORT MAP(
	O => N00134, 
	I => N00012
);
U52 : INV	PORT MAP(
	O => N00136, 
	I => N00011
);
U20 : OR2	PORT MAP(
	I1 => N00053, 
	I0 => N00055, 
	O => N00048
);
U5 : GND	PORT MAP(
	G => N00007
);
U6 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00018
);
U53 : OR2	PORT MAP(
	I1 => N00137, 
	I0 => N00141, 
	O => N00614
);
U21 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00009, 
	O => N00055
);
U7 : OR2	PORT MAP(
	I1 => N00018, 
	I0 => N00020, 
	O => N00023
);
U22 : AND5B4	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00009, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00062
);
U54 : AND6	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00013, 
	I3 => N00014, 
	I4 => N00006, 
	I5 => N00003, 
	O => N00141
);
U8 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00020
);
U55 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00611, 
	O => TC
);
U23 : OR2	PORT MAP(
	I1 => N00062, 
	I0 => N00064, 
	O => N00069
);
U56 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00614, 
	O => CEO
);
U9 : XOR2	PORT MAP(
	I1 => N00023, 
	I0 => N00027, 
	O => N00024
);
U24 : AND5B1	PORT MAP(
	I0 => N00009, 
	I1 => N00013, 
	I2 => N00014, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00064
);
U25 : XOR2	PORT MAP(
	I1 => N00069, 
	I0 => N00073, 
	O => N00070
);
U27 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00012, 
	O => N00076
);
U28 : OR2	PORT MAP(
	I1 => N00076, 
	I0 => N00079, 
	O => N00073
);
U29 : AND2	PORT MAP(
	I0 => D2, 
	I1 => N00009, 
	O => N00079
);
U30 : INV	PORT MAP(
	O => N00083, 
	I => N00006
);
U31 : AND6	PORT MAP(
	I0 => N00091, 
	I1 => N00089, 
	I2 => N00087, 
	I3 => N00085, 
	I4 => N00083, 
	I5 => N00003, 
	O => N00092
);
U32 : INV	PORT MAP(
	O => N00085, 
	I => N00009
);
U33 : INV	PORT MAP(
	O => N00087, 
	I => N00014
);
U34 : INV	PORT MAP(
	O => N00089, 
	I => N00013
);
U35 : INV	PORT MAP(
	O => N00091, 
	I => N00012
);
U36 : OR2	PORT MAP(
	I1 => N00092, 
	I0 => N00095, 
	O => N00100
);
U37 : AND6	PORT MAP(
	I0 => N00012, 
	I1 => N00013, 
	I2 => N00014, 
	I3 => N00097, 
	I4 => N00006, 
	I5 => N00003, 
	O => N00095
);
U38 : INV	PORT MAP(
	O => N00097, 
	I => N00009
);
U39 : XOR2	PORT MAP(
	I1 => N00100, 
	I0 => N00104, 
	O => N00102
);
U41 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00011, 
	O => N00109
);
U42 : OR2	PORT MAP(
	I1 => N00109, 
	I0 => N00111, 
	O => N00104
);
U11 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00014, 
	O => N00030
);
U43 : AND2	PORT MAP(
	I0 => D3, 
	I1 => N00009, 
	O => N00111
);
U12 : OR2	PORT MAP(
	I1 => N00030, 
	I0 => N00033, 
	O => N00027
);
U44 : AND5	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00013, 
	I3 => N00014, 
	I4 => N00006, 
	O => N00118
);
U26 : FDC	PORT MAP(
	D => N00070, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U18 : FDC	PORT MAP(
	D => N00046, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
U40 : FDC	PORT MAP(
	D => N00102, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U10 : FDC	PORT MAP(
	D => N00024, 
	C => C, 
	CLR => CLR, 
	Q => N00014
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

COMPONENT AND9
	PORT (
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
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT AND5B4
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND8
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00187 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00206 : std_logic;
SIGNAL N00245 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00306 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00273 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL N00003 : std_logic;
SIGNAL N00228 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL N00269 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00185 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00234 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00275 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00197 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00195 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00236 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00264 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00243 : std_logic;
SIGNAL N00200 : std_logic;
SIGNAL N00282 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00199 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00241 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00240 : std_logic;
SIGNAL N00216 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00209 : std_logic;
SIGNAL N00289 : std_logic;
SIGNAL N00250 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00249 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00304 : std_logic;
SIGNAL N00247 : std_logic;
SIGNAL N00202 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00266 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00297 : std_logic;
SIGNAL N00298 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00295 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00293 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL N00208 : std_logic;
SIGNAL N00168 : std_logic;
SIGNAL N00291 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00259 : std_logic;
SIGNAL N00302 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00257 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00300 : std_logic;
SIGNAL N00173 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00255 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00213 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N01268 : std_logic;
SIGNAL N01249 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00179 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00220 : std_logic;
-- GATE INSTANCES

BEGIN
TC<=N01249;
Q0<=N00018;
Q1<=N00017;
Q2<=N00016;
Q3<=N00015;
Q4<=N00014;
Q5<=N00013;
Q6<=N00012;
Q7<=N00011;
U77 : INV	PORT MAP(
	O => N00193, 
	I => N00006
);
U45 : AND2	PORT MAP(
	I0 => D3, 
	I1 => N00009, 
	O => N00116
);
U13 : AND2	PORT MAP(
	I0 => D0, 
	I1 => N00009, 
	O => N00036
);
U46 : INV	PORT MAP(
	O => N00120, 
	I => N00006
);
U78 : AND9	PORT MAP(
	I0 => N00208, 
	I1 => N00206, 
	I2 => N00204, 
	I3 => N00202, 
	I4 => N00199, 
	I5 => N00197, 
	I6 => N00195, 
	I7 => N00193, 
	I8 => N00003, 
	O => N00200
);
U14 : AND4B3	PORT MAP(
	I0 => N00018, 
	I1 => N00009, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00040
);
U79 : INV	PORT MAP(
	O => N00195, 
	I => N00009
);
U15 : OR2	PORT MAP(
	I1 => N00040, 
	I0 => N00046, 
	O => N00043
);
U47 : AND7	PORT MAP(
	I0 => N00131, 
	I1 => N00129, 
	I2 => N00127, 
	I3 => N00124, 
	I4 => N00122, 
	I5 => N00120, 
	I6 => N00003, 
	O => N00125
);
U48 : INV	PORT MAP(
	O => N00122, 
	I => N00009
);
U16 : AND4	PORT MAP(
	I0 => N00018, 
	I1 => N00048, 
	I2 => N00006, 
	I3 => N00003, 
	O => N00046
);
U17 : INV	PORT MAP(
	O => N00048, 
	I => N00009
);
U49 : INV	PORT MAP(
	O => N00124, 
	I => N00018
);
U18 : XOR2	PORT MAP(
	I1 => N00043, 
	I0 => N00057, 
	O => N00050
);
U120 : INV	PORT MAP(
	O => N00297, 
	I => N00015
);
U121 : INV	PORT MAP(
	O => N00300, 
	I => N00014
);
U122 : INV	PORT MAP(
	O => N00302, 
	I => N00013
);
U123 : INV	PORT MAP(
	O => N00304, 
	I => N00012
);
U124 : INV	PORT MAP(
	O => N00306, 
	I => N00011
);
U125 : AND2	PORT MAP(
	I0 => N00003, 
	I1 => N01249, 
	O => CEO
);
U126 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N01268, 
	O => N01249
);
U1 : VCC	PORT MAP(
	P => N00002
);
U80 : INV	PORT MAP(
	O => N00197, 
	I => N00018
);
U81 : INV	PORT MAP(
	O => N00199, 
	I => N00017
);
U2 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00002, 
	O => N00003
);
U50 : INV	PORT MAP(
	O => N00127, 
	I => N00017
);
U82 : INV	PORT MAP(
	O => N00202, 
	I => N00016
);
U3 : OR2	PORT MAP(
	I1 => UP, 
	I0 => N00007, 
	O => N00006
);
U51 : INV	PORT MAP(
	O => N00129, 
	I => N00016
);
U83 : INV	PORT MAP(
	O => N00204, 
	I => N00015
);
U4 : OR2	PORT MAP(
	I1 => L, 
	I0 => N00007, 
	O => N00009
);
U5 : GND	PORT MAP(
	G => N00007
);
U52 : INV	PORT MAP(
	O => N00131, 
	I => N00015
);
U84 : INV	PORT MAP(
	O => N00206, 
	I => N00014
);
U20 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00017, 
	O => N00054
);
U85 : INV	PORT MAP(
	O => N00208, 
	I => N00013
);
U21 : OR2	PORT MAP(
	I1 => N00054, 
	I0 => N00059, 
	O => N00057
);
U53 : OR2	PORT MAP(
	I1 => N00125, 
	I0 => N00138, 
	O => N00132
);
U6 : AND3B2	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00021
);
U7 : OR2	PORT MAP(
	I1 => N00021, 
	I0 => N00025, 
	O => N00027
);
U86 : OR2	PORT MAP(
	I1 => N00200, 
	I0 => N00216, 
	O => N00209
);
U54 : AND7	PORT MAP(
	I0 => N00015, 
	I1 => N00016, 
	I2 => N00017, 
	I3 => N00018, 
	I4 => N00136, 
	I5 => N00006, 
	I6 => N00003, 
	O => N00138
);
U22 : AND2	PORT MAP(
	I0 => D1, 
	I1 => N00009, 
	O => N00059
);
U55 : INV	PORT MAP(
	O => N00136, 
	I => N00009
);
U8 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => N00006, 
	I2 => N00003, 
	O => N00025
);
U87 : AND9	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00015, 
	I3 => N00016, 
	I4 => N00017, 
	I5 => N00018, 
	I6 => N00213, 
	I7 => N00006, 
	I8 => N00003, 
	O => N00216
);
U23 : AND5B4	PORT MAP(
	I0 => N00017, 
	I1 => N00018, 
	I2 => N00009, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00064
);
U88 : INV	PORT MAP(
	O => N00213, 
	I => N00009
);
U24 : OR2	PORT MAP(
	I1 => N00064, 
	I0 => N00072, 
	O => N00067
);
U9 : XOR2	PORT MAP(
	I1 => N00027, 
	I0 => N00029, 
	O => N00028
);
U56 : XOR2	PORT MAP(
	I1 => N00132, 
	I0 => N00149, 
	O => N00142
);
U25 : AND5	PORT MAP(
	I0 => N00017, 
	I1 => N00018, 
	I2 => N00071, 
	I3 => N00006, 
	I4 => N00003, 
	O => N00072
);
U89 : XOR2	PORT MAP(
	I1 => N00209, 
	I0 => N00228, 
	O => N00220
);
U26 : INV	PORT MAP(
	O => N00071, 
	I => N00009
);
U58 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00014, 
	O => N00146
);
U27 : XOR2	PORT MAP(
	I1 => N00067, 
	I0 => N00082, 
	O => N00075
);
U59 : OR2	PORT MAP(
	I1 => N00146, 
	I0 => N00151, 
	O => N00149
);
U29 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00016, 
	O => N00079
);
U100 : INV	PORT MAP(
	O => N00245, 
	I => N00015
);
U101 : INV	PORT MAP(
	O => N00247, 
	I => N00014
);
U102 : AND2B1	PORT MAP(
	I0 => N00012, 
	I1 => N00241, 
	O => N00250
);
U103 : INV	PORT MAP(
	O => N00249, 
	I => N00013
);
U104 : AND9	PORT MAP(
	I0 => N00013, 
	I1 => N00014, 
	I2 => N00015, 
	I3 => N00016, 
	I4 => N00017, 
	I5 => N00018, 
	I6 => N00255, 
	I7 => N00006, 
	I8 => N00003, 
	O => N00259
);
U105 : INV	PORT MAP(
	O => N00255, 
	I => N00009
);
U106 : OR2	PORT MAP(
	I1 => N00250, 
	I0 => N00264, 
	O => N00257
);
U107 : AND2	PORT MAP(
	I0 => N00012, 
	I1 => N00259, 
	O => N00264
);
U108 : XOR2	PORT MAP(
	I1 => N00257, 
	I0 => N00273, 
	O => N00266
);
U91 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00012, 
	O => N00226
);
U92 : OR2	PORT MAP(
	I1 => N00226, 
	I0 => N00230, 
	O => N00228
);
U60 : AND2	PORT MAP(
	I0 => D4, 
	I1 => N00009, 
	O => N00151
);
U61 : INV	PORT MAP(
	O => N00155, 
	I => N00006
);
U93 : AND2	PORT MAP(
	I0 => D6, 
	I1 => N00009, 
	O => N00230
);
U94 : INV	PORT MAP(
	O => N00234, 
	I => N00006
);
U30 : OR2	PORT MAP(
	I1 => N00079, 
	I0 => N00084, 
	O => N00082
);
U62 : AND8	PORT MAP(
	I0 => N00168, 
	I1 => N00166, 
	I2 => N00164, 
	I3 => N00162, 
	I4 => N00159, 
	I5 => N00157, 
	I6 => N00155, 
	I7 => N00003, 
	O => N00160
);
U63 : INV	PORT MAP(
	O => N00157, 
	I => N00009
);
U95 : AND9	PORT MAP(
	I0 => N00249, 
	I1 => N00247, 
	I2 => N00245, 
	I3 => N00243, 
	I4 => N00240, 
	I5 => N00238, 
	I6 => N00236, 
	I7 => N00234, 
	I8 => N00003, 
	O => N00241
);
U31 : AND2	PORT MAP(
	I0 => D2, 
	I1 => N00009, 
	O => N00084
);
U32 : INV	PORT MAP(
	O => N00088, 
	I => N00006
);
U64 : INV	PORT MAP(
	O => N00159, 
	I => N00018
);
U96 : INV	PORT MAP(
	O => N00236, 
	I => N00009
);
U65 : INV	PORT MAP(
	O => N00162, 
	I => N00017
);
U97 : INV	PORT MAP(
	O => N00238, 
	I => N00018
);
U33 : AND6	PORT MAP(
	I0 => N00097, 
	I1 => N00095, 
	I2 => N00093, 
	I3 => N00090, 
	I4 => N00088, 
	I5 => N00003, 
	O => N00091
);
U34 : INV	PORT MAP(
	O => N00090, 
	I => N00009
);
U66 : INV	PORT MAP(
	O => N00164, 
	I => N00016
);
U98 : INV	PORT MAP(
	O => N00240, 
	I => N00017
);
U35 : INV	PORT MAP(
	O => N00093, 
	I => N00018
);
U67 : INV	PORT MAP(
	O => N00166, 
	I => N00015
);
U99 : INV	PORT MAP(
	O => N00243, 
	I => N00016
);
U36 : INV	PORT MAP(
	O => N00095, 
	I => N00017
);
U68 : INV	PORT MAP(
	O => N00168, 
	I => N00014
);
U37 : INV	PORT MAP(
	O => N00097, 
	I => N00016
);
U69 : OR2	PORT MAP(
	I1 => N00160, 
	I0 => N00175, 
	O => N00169
);
U38 : OR2	PORT MAP(
	I1 => N00091, 
	I0 => N00103, 
	O => N00098
);
U39 : AND6	PORT MAP(
	I0 => N00016, 
	I1 => N00017, 
	I2 => N00018, 
	I3 => N00102, 
	I4 => N00006, 
	I5 => N00003, 
	O => N00103
);
U110 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00011, 
	O => N00269
);
U111 : OR2	PORT MAP(
	I1 => N00269, 
	I0 => N00275, 
	O => N00273
);
U112 : AND2	PORT MAP(
	I0 => D7, 
	I1 => N00009, 
	O => N00275
);
U113 : AND9	PORT MAP(
	I0 => N00011, 
	I1 => N00012, 
	I2 => N00013, 
	I3 => N00014, 
	I4 => N00015, 
	I5 => N00016, 
	I6 => N00017, 
	I7 => N00018, 
	I8 => N00006, 
	O => N00282
);
U114 : OR2	PORT MAP(
	I1 => N00282, 
	I0 => N00298, 
	O => N01268
);
U115 : INV	PORT MAP(
	O => N00289, 
	I => N00006
);
U116 : INV	PORT MAP(
	O => N00291, 
	I => N00018
);
U117 : AND9	PORT MAP(
	I0 => N00306, 
	I1 => N00304, 
	I2 => N00302, 
	I3 => N00300, 
	I4 => N00297, 
	I5 => N00295, 
	I6 => N00293, 
	I7 => N00291, 
	I8 => N00289, 
	O => N00298
);
U118 : INV	PORT MAP(
	O => N00293, 
	I => N00017
);
U119 : INV	PORT MAP(
	O => N00295, 
	I => N00016
);
U70 : AND8	PORT MAP(
	I0 => N00014, 
	I1 => N00015, 
	I2 => N00016, 
	I3 => N00017, 
	I4 => N00018, 
	I5 => N00173, 
	I6 => N00006, 
	I7 => N00003, 
	O => N00175
);
U71 : INV	PORT MAP(
	O => N00173, 
	I => N00009
);
U40 : INV	PORT MAP(
	O => N00102, 
	I => N00009
);
U72 : XOR2	PORT MAP(
	I1 => N00169, 
	I0 => N00187, 
	O => N00179
);
U41 : XOR2	PORT MAP(
	I1 => N00098, 
	I0 => N00114, 
	O => N00107
);
U74 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00013, 
	O => N00185
);
U75 : OR2	PORT MAP(
	I1 => N00185, 
	I0 => N00189, 
	O => N00187
);
U43 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00015, 
	O => N00111
);
U11 : AND2B1	PORT MAP(
	I0 => N00009, 
	I1 => N00018, 
	O => N00032
);
U12 : OR2	PORT MAP(
	I1 => N00032, 
	I0 => N00036, 
	O => N00029
);
U44 : OR2	PORT MAP(
	I1 => N00111, 
	I0 => N00116, 
	O => N00114
);
U76 : AND2	PORT MAP(
	I0 => D5, 
	I1 => N00009, 
	O => N00189
);
U57 : FDC	PORT MAP(
	D => N00142, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U28 : FDC	PORT MAP(
	D => N00075, 
	C => C, 
	CLR => CLR, 
	Q => N00016
);
U109 : FDC	PORT MAP(
	D => N00266, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U19 : FDC	PORT MAP(
	D => N00050, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U90 : FDC	PORT MAP(
	D => N00220, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U73 : FDC	PORT MAP(
	D => N00179, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
U42 : FDC	PORT MAP(
	D => N00107, 
	C => C, 
	CLR => CLR, 
	Q => N00015
);
U10 : FDC	PORT MAP(
	D => N00028, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFCE IS PORT (
	O : OUT std_logic;
	I : IN std_logic
); END BUFCE;



ARCHITECTURE STRUCTURE OF BUFCE IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	O => O, 
	I => I
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY BUFFOE IS PORT (
	O : OUT std_logic;
	I : IN std_logic
); END BUFFOE;



ARCHITECTURE STRUCTURE OF BUFFOE IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	O => O, 
	I => I
);
END STRUCTURE;


