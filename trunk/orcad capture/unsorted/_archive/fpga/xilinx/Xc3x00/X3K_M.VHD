--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--					VHDL Macro Simulation Library for Xilinx XC3000 LCAs
-- File:			X3K_M.VHD
-- Date:			March 20, 1997
-- Version:		v7.00
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96


--***************************************************************************
-- XILINX XC3000 MACRO SIMULATION MODELS

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
U4 : NAND4B3	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => A, 
	I3 => C, 
	O => Y4
);
U5 : NAND4B2	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	O => Y3
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
U9 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => D, 
	O => Y9
);
U10 : NAND4B3	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => D, 
	O => Y8
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
SIGNAL N00009 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00022 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00022;
Q0<=N00010;
Q1<=N00017;
U1 : AND2	PORT MAP(
	I0 => N00017, 
	I1 => N00010, 
	O => N00022
);
U2 : VCC	PORT MAP(
	P => N00009
);
U5 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00022, 
	O => CEO
);
U3 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00009, 
	CE => CE, 
	C => C, 
	Q => N00010, 
	CLR => CLR
);
U4 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00010, 
	CE => CE, 
	C => C, 
	Q => N00017, 
	CLR => CLR
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
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
SIGNAL N00025 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00036 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00057;
Q0<=N00017;
Q1<=N00025;
Q2<=N00036;
Q3<=N00030;
U5 : OR2	PORT MAP(
	I1 => N00047, 
	I0 => N00052, 
	O => N00043
);
U6 : AND2	PORT MAP(
	I0 => N00035, 
	I1 => N00036, 
	O => N00047
);
U7 : AND3	PORT MAP(
	I0 => N00017, 
	I1 => CE, 
	I2 => N00025, 
	O => N00035
);
U8 : AND3B1	PORT MAP(
	I0 => N00030, 
	I1 => N00017, 
	I2 => CE, 
	O => N00024
);
U9 : VCC	PORT MAP(
	P => N00018
);
U10 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00057, 
	O => CEO
);
U11 : AND4B2	PORT MAP(
	I0 => N00025, 
	I1 => N00036, 
	I2 => N00017, 
	I3 => N00030, 
	O => N00057
);
U12 : AND2	PORT MAP(
	I0 => N00017, 
	I1 => N00030, 
	O => N00052
);
U3 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => N00035, 
	CE => N00018, 
	C => C, 
	Q => N00036, 
	CLR => CLR
);
U4 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => N00043, 
	CE => N00018, 
	C => C, 
	Q => N00030, 
	CLR => CLR
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => CE, 
	CE => N00018, 
	C => C, 
	Q => N00017, 
	CLR => CLR
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00024, 
	CE => N00018, 
	C => C, 
	Q => N00025, 
	CLR => CLR
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
SIGNAL TQ0 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL TQ7 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00018;
Q1<=N00030;
Q2<=N00040;
Q3<=N00027;
Q4<=N00019;
Q5<=N00031;
Q6<=N00041;
Q7<=N00051;
U13 : INV	PORT MAP(
	O => TQ0, 
	I => N00018
);
U14 : INV	PORT MAP(
	O => TQ1, 
	I => N00030
);
U15 : INV	PORT MAP(
	O => TQ2, 
	I => N00040
);
U16 : INV	PORT MAP(
	O => TQ3, 
	I => N00027
);
U9 : INV	PORT MAP(
	O => TQ4, 
	I => N00019
);
U10 : INV	PORT MAP(
	O => TQ5, 
	I => N00031
);
U11 : INV	PORT MAP(
	O => TQ6, 
	I => N00041
);
U12 : INV	PORT MAP(
	O => TQ7, 
	I => N00051
);
U3 : FDCE_1	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => N00031, 
	CLR => CLR, 
	Q => N00041
);
U4 : FDCE_1	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => N00041, 
	CLR => CLR, 
	Q => N00051
);
U5 : FDCE_1	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U6 : FDCE_1	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => N00018, 
	CLR => CLR, 
	Q => N00030
);
U7 : FDCE_1	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => N00030, 
	CLR => CLR, 
	Q => N00040
);
U8 : FDCE_1	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => N00040, 
	CLR => CLR, 
	Q => N00027
);
U1 : FDCE_1	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => N00027, 
	CLR => CLR, 
	Q => N00019
);
U2 : FDCE_1	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => N00019, 
	CLR => CLR, 
	Q => N00031
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
U5 : FDCE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q4
);
U6 : FDCE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q5
);
U7 : FDCE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q6
);
U8 : FDCE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY GXTL IS PORT (
	O : OUT std_logic
); END GXTL;



ARCHITECTURE STRUCTURE OF GXTL IS

-- COMPONENTS

COMPONENT ACLK
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OSC
	PORT (
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL OSC_OUT : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ACLK	PORT MAP(
	O => O, 
	I => OSC_OUT
);
IO1 : OSC	PORT MAP(
	O => OSC_OUT
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
	O => O7, 
	I => I7
);
U2 : INV	PORT MAP(
	O => O6, 
	I => I6
);
U3 : INV	PORT MAP(
	O => O5, 
	I => I5
);
U4 : INV	PORT MAP(
	O => O4, 
	I => I4
);
U5 : INV	PORT MAP(
	O => O3, 
	I => I3
);
U6 : INV	PORT MAP(
	O => O2, 
	I => I2
);
U7 : INV	PORT MAP(
	O => O1, 
	I => I1
);
U8 : INV	PORT MAP(
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
U13 : IOPAD	PORT MAP(
	IOPAD => IO13
);
U14 : IOPAD	PORT MAP(
	IOPAD => IO14
);
U15 : IOPAD	PORT MAP(
	IOPAD => IO15
);
U16 : IOPAD	PORT MAP(
	IOPAD => IO0
);
U1 : IOPAD	PORT MAP(
	IOPAD => IO1
);
U2 : IOPAD	PORT MAP(
	IOPAD => IO2
);
U3 : IOPAD	PORT MAP(
	IOPAD => IO3
);
U4 : IOPAD	PORT MAP(
	IOPAD => IO4
);
U5 : IOPAD	PORT MAP(
	IOPAD => IO5
);
U6 : IOPAD	PORT MAP(
	IOPAD => IO6
);
U7 : IOPAD	PORT MAP(
	IOPAD => IO7
);
U8 : IOPAD	PORT MAP(
	IOPAD => IO8
);
U9 : IOPAD	PORT MAP(
	IOPAD => IO9
);
U10 : IOPAD	PORT MAP(
	IOPAD => IO10
);
U11 : IOPAD	PORT MAP(
	IOPAD => IO11
);
U12 : IOPAD	PORT MAP(
	IOPAD => IO12
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic;
	O8 : OUT   std_logic;
	O9 : OUT   std_logic;
	O10 : OUT   std_logic;
	O11 : OUT   std_logic;
	O12 : OUT   std_logic;
	O13 : OUT   std_logic;
	O14 : OUT   std_logic;
	O15 : OUT   std_logic
); END OBUFT16;



ARCHITECTURE STRUCTURE OF OBUFT16 IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U14 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U15 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U16 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
U1 : OBUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
);
U2 : OBUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
U3 : OBUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
U4 : OBUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
U5 : OBUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
);
U6 : OBUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
U7 : OBUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
U8 : OBUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
U9 : OBUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U10 : OBUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U11 : OBUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U12 : OBUFT	PORT MAP(
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic
); END OBUFT4;



ARCHITECTURE STRUCTURE OF OBUFT4 IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
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
SIGNAL N00071 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00070 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00020;
Q1<=N00030;
Q2<=N00040;
Q3<=N00050;
Q4<=N00060;
Q5<=N00070;
Q6<=N00080;
Q7<=N00018;
Q8<=N00021;
Q9<=N00031;
Q10<=N00041;
Q11<=N00051;
Q12<=N00061;
Q13<=N00071;
Q14<=N00081;
U3 : FDRE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00040
);
U11 : FDRE	PORT MAP(
	D => N00031, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00041
);
U4 : FDRE	PORT MAP(
	D => N00040, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00050
);
U12 : FDRE	PORT MAP(
	D => N00041, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00051
);
U5 : FDRE	PORT MAP(
	D => N00050, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00060
);
U13 : FDRE	PORT MAP(
	D => N00051, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00061
);
U6 : FDRE	PORT MAP(
	D => N00060, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00070
);
U14 : FDRE	PORT MAP(
	D => N00061, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00071
);
U15 : FDRE	PORT MAP(
	D => N00071, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00081
);
U7 : FDRE	PORT MAP(
	D => N00070, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00080
);
U16 : FDRE	PORT MAP(
	D => N00081, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U8 : FDRE	PORT MAP(
	D => N00080, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00018
);
U9 : FDRE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00021
);
U1 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00020
);
U2 : FDRE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00030
);
U10 : FDRE	PORT MAP(
	D => N00021, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00031
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
SIGNAL N00032 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00022 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00012;
Q1<=N00022;
Q2<=N00032;
Q3<=N00010;
Q4<=N00013;
Q5<=N00023;
Q6<=N00033;
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U2 : FDCE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00022
);
U3 : FDCE	PORT MAP(
	D => N00022, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00032
);
U4 : FDCE	PORT MAP(
	D => N00032, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U5 : FDCE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
U6 : FDCE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00023
);
U7 : FDCE	PORT MAP(
	D => N00023, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00033
);
U8 : FDCE	PORT MAP(
	D => N00033, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
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
SIGNAL MDL6 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00840 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00033;
Q1<=N00031;
Q2<=N00043;
Q3<=N00053;
Q4<=N00063;
Q5<=N00073;
Q6<=N00083;
Q7<=N00093;
U25 : OR2	PORT MAP(
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
	D0 => N00073, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U3 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00043
);
U11 : M2_1	PORT MAP(
	D0 => N00053, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U23 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U4 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00053
);
U12 : M2_1	PORT MAP(
	D0 => N00063, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U24 : M2_1	PORT MAP(
	D0 => N00033, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U5 : FDRE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00063
);
U13 : M2_1	PORT MAP(
	D0 => N00073, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U6 : FDRE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00073
);
U14 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U15 : M2_1	PORT MAP(
	D0 => N00093, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U7 : FDRE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00083
);
U16 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U8 : FDRE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00093
);
U17 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U9 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U18 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U19 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U20 : M2_1	PORT MAP(
	D0 => N00053, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U1 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00033
);
U21 : M2_1	PORT MAP(
	D0 => N00063, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U2 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U10 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL M89 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL MEF : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL MAB : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M8B : std_logic;
SIGNAL MCF : std_logic;
SIGNAL M8F : std_logic;
SIGNAL M07 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL MCD : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M01 : std_logic;

-- GATE INSTANCES

BEGIN
U15 : AND3B2	PORT MAP(
	I0 => D, 
	I1 => G, 
	I2 => M07, 
	O => N00039
);
U16 : AND3B1	PORT MAP(
	I0 => G, 
	I1 => M8F, 
	I2 => D, 
	O => N00045
);
U17 : XNOR2	PORT MAP(
	I1 => N00039, 
	I0 => N00045, 
	O => W
);
U3 : M2_1	PORT MAP(
	D0 => E4, 
	D1 => E5, 
	S0 => A, 
	O => M45
);
U11 : M2_1	PORT MAP(
	D0 => M89, 
	D1 => MAB, 
	S0 => B, 
	O => M8B
);
U4 : M2_1	PORT MAP(
	D0 => E6, 
	D1 => E7, 
	S0 => A, 
	O => M67
);
U12 : M2_1	PORT MAP(
	D0 => MCD, 
	D1 => MEF, 
	S0 => B, 
	O => MCF
);
U5 : M2_1	PORT MAP(
	D0 => E8, 
	D1 => E9, 
	S0 => A, 
	O => M89
);
U13 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => M07
);
U6 : M2_1	PORT MAP(
	D0 => E10, 
	D1 => E11, 
	S0 => A, 
	O => MAB
);
U14 : M2_1	PORT MAP(
	D0 => M8B, 
	D1 => MCF, 
	S0 => C, 
	O => M8F
);
U7 : M2_1	PORT MAP(
	D0 => E12, 
	D1 => E13, 
	S0 => A, 
	O => MCD
);
U8 : M2_1	PORT MAP(
	D0 => E14, 
	D1 => E15, 
	S0 => A, 
	O => MEF
);
U9 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => B, 
	O => M03
);
U1 : M2_1	PORT MAP(
	D0 => E0, 
	D1 => E1, 
	S0 => A, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => E2, 
	D1 => E3, 
	S0 => A, 
	O => M23
);
U10 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T2 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL LB : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL T3 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00016;
QB<=N00023;
QC<=N00032;
QD<=N00043;
U1 : AND3	PORT MAP(
	I0 => N00032, 
	I1 => N00023, 
	I2 => N00016, 
	O => T3
);
U2 : AND2	PORT MAP(
	I0 => N00023, 
	I1 => N00016, 
	O => T2
);
U3 : AND5	PORT MAP(
	I0 => ENT, 
	I1 => N00016, 
	I2 => N00023, 
	I3 => N00032, 
	I4 => N00043, 
	O => RCO
);
U4 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U5 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U6 : VCC	PORT MAP(
	P => N00015
);
U11 : INV	PORT MAP(
	O => LB, 
	I => LOAD
);
U7 : FTCLE	PORT MAP(
	D => A, 
	L => LB, 
	T => N00015, 
	CE => CE, 
	C => CK, 
	Q => N00016, 
	CLR => CLRB
);
U8 : FTCLE	PORT MAP(
	D => B, 
	L => LB, 
	T => N00016, 
	CE => CE, 
	C => CK, 
	Q => N00023, 
	CLR => CLRB
);
U9 : FTCLE	PORT MAP(
	D => C, 
	L => LB, 
	T => T2, 
	CE => CE, 
	C => CK, 
	Q => N00032, 
	CLR => CLRB
);
U10 : FTCLE	PORT MAP(
	D => D, 
	L => LB, 
	T => T3, 
	CE => CE, 
	C => CK, 
	Q => N00043, 
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
SIGNAL MA : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL MBI : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MB : std_logic;
SIGNAL MQB : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL MQC : std_logic;
SIGNAL MQA : std_logic;
SIGNAL MCI : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL MQD : std_logic;
SIGNAL MC : std_logic;
SIGNAL MD : std_logic;
SIGNAL MAR : std_logic;
SIGNAL MDI : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00019;
QB<=N00022;
QC<=N00036;
QD<=N00049;
U14 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U3 : M2_1	PORT MAP(
	D0 => MBI, 
	D1 => MQB, 
	S0 => S0, 
	O => MB
);
U11 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => A, 
	S0 => S1, 
	O => MQA
);
U4 : M2_1	PORT MAP(
	D0 => MAR, 
	D1 => MQA, 
	S0 => S0, 
	O => MA
);
U12 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => N00022, 
	S0 => S1, 
	O => MAR
);
U13 : FDC	PORT MAP(
	D => MA, 
	C => CK, 
	CLR => CLRB, 
	Q => N00019
);
U5 : M2_1	PORT MAP(
	D0 => N00049, 
	D1 => SLI, 
	S0 => S1, 
	O => MDI
);
U6 : M2_1	PORT MAP(
	D0 => N00036, 
	D1 => D, 
	S0 => S1, 
	O => MQD
);
U15 : FDC	PORT MAP(
	D => MB, 
	C => CK, 
	CLR => CLRB, 
	Q => N00022
);
U7 : M2_1	PORT MAP(
	D0 => N00022, 
	D1 => C, 
	S0 => S1, 
	O => MQC
);
U16 : FDC	PORT MAP(
	D => MC, 
	C => CK, 
	CLR => CLRB, 
	Q => N00036
);
U8 : M2_1	PORT MAP(
	D0 => N00036, 
	D1 => N00049, 
	S0 => S1, 
	O => MCI
);
U17 : FDC	PORT MAP(
	D => MD, 
	C => CK, 
	CLR => CLRB, 
	Q => N00049
);
U9 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => B, 
	S0 => S1, 
	O => MQB
);
U1 : M2_1	PORT MAP(
	D0 => MDI, 
	D1 => MQD, 
	S0 => S0, 
	O => MD
);
U2 : M2_1	PORT MAP(
	D0 => MCI, 
	D1 => MQC, 
	S0 => S0, 
	O => MC
);
U10 : M2_1	PORT MAP(
	D0 => N00022, 
	D1 => N00036, 
	S0 => S1, 
	O => MBI
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
SIGNAL N00113 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL N00167 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00167;
TC<=N00180;
Q0<=N00041;
Q1<=N00056;
Q2<=N00073;
Q3<=N00092;
Q4<=N00112;
Q5<=N00128;
Q6<=N00146;
Q7<=N00166;
Q8<=N00043;
Q9<=N00057;
Q10<=N00074;
Q11<=N00093;
Q12<=N00113;
Q13<=N00129;
Q14<=N00147;
U13 : GND	PORT MAP(
	G => N00038
);
U14 : AND2	PORT MAP(
	I0 => N00112, 
	I1 => T4, 
	O => T5
);
U15 : AND3	PORT MAP(
	I0 => N00128, 
	I1 => N00112, 
	I2 => T4, 
	O => T6
);
U16 : AND4	PORT MAP(
	I0 => N00146, 
	I1 => N00128, 
	I2 => N00112, 
	I3 => T4, 
	O => T7
);
U17 : AND5	PORT MAP(
	I0 => N00166, 
	I1 => N00146, 
	I2 => N00128, 
	I3 => N00112, 
	I4 => T4, 
	O => T8
);
U1 : VCC	PORT MAP(
	P => N00040
);
U2 : AND2	PORT MAP(
	I0 => N00056, 
	I1 => N00041, 
	O => T2
);
U3 : AND3	PORT MAP(
	I0 => N00073, 
	I1 => N00056, 
	I2 => N00041, 
	O => T3
);
U4 : AND4	PORT MAP(
	I0 => N00092, 
	I1 => N00073, 
	I2 => N00056, 
	I3 => N00041, 
	O => T4
);
U26 : AND2	PORT MAP(
	I0 => N00113, 
	I1 => T12, 
	O => T13
);
U27 : AND3	PORT MAP(
	I0 => N00129, 
	I1 => N00113, 
	I2 => T12, 
	O => T14
);
U28 : AND4	PORT MAP(
	I0 => N00147, 
	I1 => N00129, 
	I2 => N00113, 
	I3 => T12, 
	O => T15
);
U29 : AND5	PORT MAP(
	I0 => N00167, 
	I1 => N00147, 
	I2 => N00129, 
	I3 => N00113, 
	I4 => T12, 
	O => N00180
);
U30 : AND5	PORT MAP(
	I0 => N00093, 
	I1 => N00074, 
	I2 => N00057, 
	I3 => N00043, 
	I4 => T8, 
	O => T12
);
U31 : AND4	PORT MAP(
	I0 => N00074, 
	I1 => N00057, 
	I2 => N00043, 
	I3 => T8, 
	O => T11
);
U32 : AND3	PORT MAP(
	I0 => N00057, 
	I1 => N00043, 
	I2 => T8, 
	O => T10
);
U33 : AND2	PORT MAP(
	I0 => N00043, 
	I1 => T8, 
	O => T9
);
U34 : GND	PORT MAP(
	G => N00039
);
U35 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00180, 
	O => CEO
);
U22 : FTRSE	PORT MAP(
	T => T12, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00113, 
	R => R
);
U11 : FTRSE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00146, 
	R => R
);
U23 : FTRSE	PORT MAP(
	T => T13, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00129, 
	R => R
);
U12 : FTRSE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00166, 
	R => R
);
U24 : FTRSE	PORT MAP(
	T => T14, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00147, 
	R => R
);
U5 : FTRSE	PORT MAP(
	T => N00040, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00041, 
	R => R
);
U25 : FTRSE	PORT MAP(
	T => T15, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00167, 
	R => R
);
U6 : FTRSE	PORT MAP(
	T => N00041, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00056, 
	R => R
);
U7 : FTRSE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00073, 
	R => R
);
U8 : FTRSE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00092, 
	R => R
);
U9 : FTRSE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00112, 
	R => R
);
U18 : FTRSE	PORT MAP(
	T => T8, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00043, 
	R => R
);
U19 : FTRSE	PORT MAP(
	T => T9, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00057, 
	R => R
);
U20 : FTRSE	PORT MAP(
	T => T10, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00074, 
	R => R
);
U21 : FTRSE	PORT MAP(
	T => T11, 
	CE => CE, 
	C => C, 
	S => N00039, 
	Q => N00093, 
	R => R
);
U10 : FTRSE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	S => N00038, 
	Q => N00128, 
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

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00040 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL T3 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00080;
Q0<=N00020;
Q1<=N00025;
Q2<=N00032;
Q3<=N00040;
Q4<=N00049;
Q5<=N00056;
Q6<=N00064;
Q7<=N00073;
U13 : AND2	PORT MAP(
	I0 => N00049, 
	I1 => T4, 
	O => T5
);
U14 : AND3	PORT MAP(
	I0 => N00056, 
	I1 => N00049, 
	I2 => T4, 
	O => T6
);
U15 : AND4	PORT MAP(
	I0 => N00064, 
	I1 => N00056, 
	I2 => N00049, 
	I3 => T4, 
	O => T7
);
U16 : AND5	PORT MAP(
	I0 => N00073, 
	I1 => N00064, 
	I2 => N00056, 
	I3 => N00049, 
	I4 => T4, 
	O => N00080
);
U17 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00080, 
	O => CEO
);
U5 : VCC	PORT MAP(
	P => N00019
);
U6 : AND2	PORT MAP(
	I0 => N00025, 
	I1 => N00020, 
	O => T2
);
U7 : AND3	PORT MAP(
	I0 => N00032, 
	I1 => N00025, 
	I2 => N00020, 
	O => T3
);
U8 : AND4	PORT MAP(
	I0 => N00040, 
	I1 => N00032, 
	I2 => N00025, 
	I3 => N00020, 
	O => T4
);
U3 : FTCE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00032
);
U11 : FTCE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00064
);
U4 : FTCE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00040
);
U12 : FTCE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00073
);
U9 : FTCE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00049
);
U1 : FTCE	PORT MAP(
	T => N00019, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00020
);
U2 : FTCE	PORT MAP(
	T => N00020, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U10 : FTCE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00056
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
SIGNAL N00007 : std_logic;
SIGNAL TQ : std_logic;
SIGNAL CE_S_L : std_logic;
SIGNAL MD : std_logic;
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U2 : XOR2	PORT MAP(
	I1 => N00007, 
	I0 => T, 
	O => TQ
);
U3 : OR2	PORT MAP(
	I1 => MD, 
	I0 => S, 
	O => N00012
);
U4 : OR3	PORT MAP(
	I2 => S, 
	I1 => L, 
	I0 => CE, 
	O => CE_S_L
);
U5 : FDRE	PORT MAP(
	D => N00012, 
	CE => CE_S_L, 
	C => C, 
	R => R, 
	Q => N00007
);
U1 : M2_1	PORT MAP(
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

COMPONENT IFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : IFD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
);
U14 : IFD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U15 : IFD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U16 : IFD	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15
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
U9 : IFD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
U10 : IFD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
U11 : IFD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U12 : IFD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
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

COMPONENT IFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
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
U1 : IFD	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
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

COMPONENT NOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => N00006
);
U2 : NOR5	PORT MAP(
	I4 => N00006, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
U3 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
U11 : FDRE	PORT MAP(
	D => D10, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q10
);
U4 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U12 : FDRE	PORT MAP(
	D => D11, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q11
);
U5 : FDRE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q4
);
U13 : FDRE	PORT MAP(
	D => D12, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q12
);
U6 : FDRE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q5
);
U14 : FDRE	PORT MAP(
	D => D13, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q13
);
U15 : FDRE	PORT MAP(
	D => D14, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q14
);
U7 : FDRE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q6
);
U16 : FDRE	PORT MAP(
	D => D15, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q15
);
U8 : FDRE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U9 : FDRE	PORT MAP(
	D => D8, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q8
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
U10 : FDRE	PORT MAP(
	D => D9, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q9
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U2 : NOR4	PORT MAP(
	I3 => I35, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL MD2 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00033 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00017;
Q1<=N00025;
Q2<=N00033;
U1 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U2 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U3 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00033
);
U4 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U9 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U5 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U6 : M2_1	PORT MAP(
	D0 => N00017, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U7 : M2_1	PORT MAP(
	D0 => N00025, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U8 : M2_1	PORT MAP(
	D0 => N00033, 
	D1 => D3, 
	S0 => L, 
	O => MD3
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00040 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL CE : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL LB : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00029 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00020;
QB<=N00029;
QC<=N00040;
QD<=N00034;
U13 : AND5B2	PORT MAP(
	I0 => N00029, 
	I1 => N00040, 
	I2 => ENT, 
	I3 => N00020, 
	I4 => N00034, 
	O => RCO
);
U14 : AND3	PORT MAP(
	I0 => N00020, 
	I1 => ENT, 
	I2 => N00034, 
	O => N00059
);
U1 : OR2	PORT MAP(
	I1 => TQ2, 
	I0 => N00059, 
	O => T4
);
U2 : AND2	PORT MAP(
	I0 => T2, 
	I1 => N00040, 
	O => TQ2
);
U3 : AND3	PORT MAP(
	I0 => N00020, 
	I1 => CE, 
	I2 => N00029, 
	O => T2
);
U4 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U5 : AND3B1	PORT MAP(
	I0 => N00034, 
	I1 => N00020, 
	I2 => CE, 
	O => T1
);
U6 : INV	PORT MAP(
	O => LB, 
	I => LOAD
);
U7 : VCC	PORT MAP(
	P => N00021
);
U8 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U11 : FTCLE	PORT MAP(
	D => C, 
	L => LB, 
	T => T2, 
	CE => N00021, 
	C => CK, 
	Q => N00040, 
	CLR => CLRB
);
U12 : FTCLE	PORT MAP(
	D => D, 
	L => LB, 
	T => T4, 
	CE => N00021, 
	C => CK, 
	Q => N00034, 
	CLR => CLRB
);
U9 : FTCLE	PORT MAP(
	D => A, 
	L => LB, 
	T => CE, 
	CE => N00021, 
	C => CK, 
	Q => N00020, 
	CLR => CLRB
);
U10 : FTCLE	PORT MAP(
	D => B, 
	L => LB, 
	T => T1, 
	CE => N00021, 
	C => CK, 
	Q => N00029, 
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
SIGNAL E6_7 : std_logic;
SIGNAL E4_5 : std_logic;
SIGNAL E2_3 : std_logic;
SIGNAL E0_1 : std_logic;
SIGNAL X1 : std_logic;
SIGNAL X5 : std_logic;
SIGNAL X0 : std_logic;
SIGNAL X2 : std_logic;
SIGNAL X7 : std_logic;
SIGNAL X4 : std_logic;
SIGNAL GB : std_logic;
SIGNAL X6 : std_logic;
SIGNAL X3 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : INV	PORT MAP(
	O => GB, 
	I => G
);
U14 : AND5	PORT MAP(
	I0 => E6_7, 
	I1 => E4_5, 
	I2 => GB, 
	I3 => E2_3, 
	I4 => E0_1, 
	O => PEQ
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
SIGNAL N00953 : std_logic;
SIGNAL N00954 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL R_SD7 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL R_SD6 : std_logic;
SIGNAL R_SD5 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL R_SD4 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL SD4 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL SD7 : std_logic;
SIGNAL SD5 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL SD6 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00030;
Q1<=N00032;
Q2<=N00034;
Q3<=N00036;
Q4<=N00038;
Q5<=N00040;
Q6<=N00042;
Q7<=N00044;
U13 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD5, 
	O => R_SD5
);
U15 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD6, 
	O => R_SD6
);
U17 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD7, 
	O => R_SD7
);
U18 : GND	PORT MAP(
	G => N00064
);
U19 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => N00060
);
U3 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD0, 
	O => R_SD0
);
U20 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00030
);
U5 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD1, 
	O => R_SD1
);
U21 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00032
);
U22 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00034
);
U7 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U23 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00036
);
U24 : FDCE	PORT MAP(
	D => R_SD4, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00038
);
U9 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U25 : FDCE	PORT MAP(
	D => R_SD5, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00040
);
U26 : FDCE	PORT MAP(
	D => R_SD6, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00042
);
U27 : FDCE	PORT MAP(
	D => R_SD7, 
	CE => N00060, 
	C => C, 
	CLR => N00064, 
	Q => N00044
);
U11 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD4, 
	O => R_SD4
);
U4 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U12 : M2_1	PORT MAP(
	D0 => S5, 
	D1 => D5, 
	S0 => L, 
	O => SD5
);
U6 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U14 : M2_1	PORT MAP(
	D0 => S6, 
	D1 => D6, 
	S0 => L, 
	O => SD6
);
U16 : M2_1	PORT MAP(
	D0 => S7, 
	D1 => D7, 
	S0 => L, 
	O => SD7
);
U8 : M2_1	PORT MAP(
	D0 => S3, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U1 : ADSU8	PORT MAP(
	CI => CI, 
	A0 => N00030, 
	A1 => N00032, 
	A2 => N00034, 
	A3 => N00036, 
	A4 => N00038, 
	A5 => N00040, 
	A6 => N00042, 
	A7 => N00044, 
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
U2 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U10 : M2_1	PORT MAP(
	D0 => S4, 
	D1 => D4, 
	S0 => L, 
	O => SD4
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
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
SIGNAL N00084 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N01430 : std_logic;
SIGNAL N01427 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL AABXS : std_logic;
SIGNAL AAB : std_logic;
SIGNAL AXB : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C2 : std_logic;

-- GATE INSTANCES

BEGIN
S7<=N00125;
U13 : AND2	PORT MAP(
	I0 => B2, 
	I1 => C1, 
	O => N00113
);
U14 : XOR3	PORT MAP(
	I2 => B2, 
	I1 => A2, 
	I0 => C1, 
	O => S2
);
U15 : OR3	PORT MAP(
	I2 => AB2, 
	I1 => N00108, 
	I0 => N00113, 
	O => C2
);
U16 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => AB3
);
U17 : AND2	PORT MAP(
	I0 => C2, 
	I1 => A3, 
	O => N00133
);
U18 : AND2	PORT MAP(
	I0 => B3, 
	I1 => C2, 
	O => N00136
);
U19 : XOR3	PORT MAP(
	I2 => B3, 
	I1 => A3, 
	I0 => C2, 
	O => S3
);
U1 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => AB0
);
U2 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => N00055
);
U3 : AND2	PORT MAP(
	I0 => B0, 
	I1 => CI, 
	O => N00060
);
U4 : XOR3	PORT MAP(
	I2 => B0, 
	I1 => A0, 
	I0 => CI, 
	O => S0
);
U20 : OR3	PORT MAP(
	I2 => AB3, 
	I1 => N00133, 
	I0 => N00136, 
	O => C3
);
U5 : OR3	PORT MAP(
	I2 => AB0, 
	I1 => N00055, 
	I0 => N00060, 
	O => C0
);
U21 : AND2	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => AB4
);
U6 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => AB1
);
U22 : AND2	PORT MAP(
	I0 => C3, 
	I1 => A4, 
	O => N00151
);
U7 : AND2	PORT MAP(
	I0 => C0, 
	I1 => A1, 
	O => N00082
);
U23 : AND2	PORT MAP(
	I0 => B4, 
	I1 => C3, 
	O => N00153
);
U8 : AND2	PORT MAP(
	I0 => B1, 
	I1 => C0, 
	O => N00087
);
U24 : XOR3	PORT MAP(
	I2 => B4, 
	I1 => A4, 
	I0 => C3, 
	O => S4
);
U9 : XOR3	PORT MAP(
	I2 => B1, 
	I1 => A1, 
	I0 => C0, 
	O => S1
);
U25 : OR3	PORT MAP(
	I2 => AB4, 
	I1 => N00151, 
	I0 => N00153, 
	O => C4
);
U26 : AND2	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => AB5
);
U27 : AND2	PORT MAP(
	I0 => C4, 
	I1 => A5, 
	O => N00057
);
U28 : AND2	PORT MAP(
	I0 => B5, 
	I1 => C4, 
	O => N00062
);
U29 : XOR3	PORT MAP(
	I2 => B5, 
	I1 => A5, 
	I0 => C4, 
	O => S5
);
U30 : OR3	PORT MAP(
	I2 => AB5, 
	I1 => N00057, 
	I0 => N00062, 
	O => C5
);
U31 : AND2	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => AB6
);
U32 : AND2	PORT MAP(
	I0 => C5, 
	I1 => A6, 
	O => N00084
);
U33 : AND2	PORT MAP(
	I0 => B6, 
	I1 => C5, 
	O => N00089
);
U34 : XOR3	PORT MAP(
	I2 => B6, 
	I1 => A6, 
	I0 => C5, 
	O => S6
);
U35 : OR3	PORT MAP(
	I2 => AB6, 
	I1 => N00084, 
	I0 => N00089, 
	O => C6
);
U36 : AND2	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => AB7
);
U37 : AND2	PORT MAP(
	I0 => C6, 
	I1 => A7, 
	O => N00110
);
U38 : AND2	PORT MAP(
	I0 => B7, 
	I1 => C6, 
	O => N00115
);
U39 : XOR3	PORT MAP(
	I2 => B7, 
	I1 => A7, 
	I0 => C6, 
	O => N00125
);
U40 : OR3	PORT MAP(
	I2 => AB7, 
	I1 => N00110, 
	I0 => N00115, 
	O => CO
);
U41 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => AXB
);
U42 : AND2	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => AAB
);
U10 : OR3	PORT MAP(
	I2 => AB1, 
	I1 => N00082, 
	I0 => N00087, 
	O => C1
);
U43 : XOR2	PORT MAP(
	I1 => N00125, 
	I0 => AAB, 
	O => AABXS
);
U11 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => AB2
);
U44 : AND2	PORT MAP(
	I0 => AABXS, 
	I1 => AXB, 
	O => OFL
);
U12 : AND2	PORT MAP(
	I0 => C1, 
	I1 => A2, 
	O => N00108
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

COMPONENT XOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
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
SIGNAL X5 : std_logic;
SIGNAL X4 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR5	PORT MAP(
	I4 => A, 
	I3 => B, 
	I2 => C, 
	I1 => D, 
	I0 => E, 
	O => X5
);
U2 : XOR4	PORT MAP(
	I3 => F, 
	I2 => G, 
	I1 => H, 
	I0 => I, 
	O => X4
);
U3 : XOR2	PORT MAP(
	I1 => X5, 
	I0 => X4, 
	O => ODD
);
U4 : XNOR2	PORT MAP(
	I1 => X5, 
	I0 => X4, 
	O => EVEN
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
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

COMPONENT FDCE_1	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00015 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00014;
QB<=N00022;
QC<=N00032;
QD<=N00020;
U1 : INV	PORT MAP(
	O => N00015, 
	I => N00014
);
U2 : VCC	PORT MAP(
	P => N00017
);
U3 : NOR2	PORT MAP(
	I1 => N00020, 
	I0 => N00022, 
	O => N00021
);
U4 : XOR2	PORT MAP(
	I1 => N00029, 
	I0 => N00032, 
	O => N00031
);
U5 : XOR2	PORT MAP(
	I1 => N00039, 
	I0 => N00020, 
	O => N00041
);
U6 : AND2B1	PORT MAP(
	I0 => N00020, 
	I1 => N00022, 
	O => N00029
);
U7 : OR2	PORT MAP(
	I1 => N00038, 
	I0 => N00020, 
	O => N00039
);
U8 : AND2	PORT MAP(
	I0 => N00022, 
	I1 => N00032, 
	O => N00038
);
U11 : FDCE_1	PORT MAP(
	D => N00031, 
	CE => N00017, 
	C => CKB, 
	CLR => CLR, 
	Q => N00032
);
U12 : FDCE_1	PORT MAP(
	D => N00041, 
	CE => N00017, 
	C => CKB, 
	CLR => CLR, 
	Q => N00020
);
U9 : FDCE_1	PORT MAP(
	D => N00015, 
	CE => N00017, 
	C => CKA, 
	CLR => CLR, 
	Q => N00014
);
U10 : FDCE_1	PORT MAP(
	D => N00021, 
	CE => N00017, 
	C => CKB, 
	CLR => CLR, 
	Q => N00022
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00046 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00040 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00046;
Q0<=N00014;
Q1<=N00021;
Q2<=N00030;
Q3<=N00040;
U1 : AND2	PORT MAP(
	I0 => N00021, 
	I1 => N00014, 
	O => T2
);
U2 : AND3	PORT MAP(
	I0 => N00030, 
	I1 => N00021, 
	I2 => N00014, 
	O => T3
);
U3 : AND4	PORT MAP(
	I0 => N00014, 
	I1 => N00021, 
	I2 => N00030, 
	I3 => N00040, 
	O => N00046
);
U8 : VCC	PORT MAP(
	P => N00013
);
U9 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00046, 
	O => CEO
);
U4 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00040, 
	CLR => CLR
);
U5 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00030, 
	CLR => CLR
);
U6 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00014, 
	CE => CE, 
	C => C, 
	Q => N00021, 
	CLR => CLR
);
U7 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00013, 
	CE => CE, 
	C => C, 
	Q => N00014, 
	CLR => CLR
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
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

COMPONENT FTSRLE	 PORT (
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
SIGNAL N00033 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00062;
Q0<=N00019;
Q1<=N00028;
Q2<=N00040;
Q3<=N00033;
U13 : AND2	PORT MAP(
	I0 => N00019, 
	I1 => N00033, 
	O => N00058
);
U1 : OR2	PORT MAP(
	I1 => TQ2, 
	I0 => N00058, 
	O => T3
);
U2 : AND2	PORT MAP(
	I0 => T2, 
	I1 => N00040, 
	O => TQ2
);
U3 : AND3	PORT MAP(
	I0 => N00019, 
	I1 => CE, 
	I2 => N00028, 
	O => T2
);
U4 : AND3B1	PORT MAP(
	I0 => N00033, 
	I1 => N00019, 
	I2 => CE, 
	O => T1
);
U5 : VCC	PORT MAP(
	P => N00020
);
U10 : GND	PORT MAP(
	G => N00015
);
U11 : AND4B2	PORT MAP(
	I0 => N00040, 
	I1 => N00028, 
	I2 => N00019, 
	I3 => N00033, 
	O => N00062
);
U12 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00062, 
	O => CEO
);
U6 : FTSRLE	PORT MAP(
	D => D0, 
	L => L, 
	T => CE, 
	R => R, 
	S => N00015, 
	Q => N00019, 
	CE => N00020, 
	C => C
);
U7 : FTSRLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	R => R, 
	S => N00015, 
	Q => N00028, 
	CE => N00020, 
	C => C
);
U8 : FTSRLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	R => R, 
	S => N00015, 
	Q => N00040, 
	CE => N00020, 
	C => C
);
U9 : FTSRLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	R => R, 
	S => N00015, 
	Q => N00033, 
	CE => N00020, 
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

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB47 : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB7 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2	PORT MAP(
	I0 => AB47, 
	I1 => AB03, 
	O => EQ
);
U2 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => AB03
);
U3 : AND4	PORT MAP(
	I0 => AB7, 
	I1 => AB6, 
	I2 => AB5, 
	I3 => AB4, 
	O => AB47
);
U4 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U5 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
);
U6 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U7 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U8 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => AB4
);
U9 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => AB5
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

COMPONENT NOR2
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
SIGNAL LTB : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL GTB : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL GTA : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL LTA : std_logic;
SIGNAL GT_3 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U14 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U15 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U16 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT0_1
);
U17 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT0_1
);
U18 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U19 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U1 : NOR2	PORT MAP(
	I1 => LTB, 
	I0 => GTB, 
	O => EQ2_3
);
U2 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => EQ_3, 
	I2 => B2, 
	O => LE2_3
);
U3 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => EQ_3, 
	I2 => A2, 
	O => GE2_3
);
U4 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => GT_3
);
U5 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => LT_3
);
U6 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => EQ_3
);
U7 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LTB
);
U8 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GTB
);
U9 : AND2	PORT MAP(
	I0 => EQ2_3, 
	I1 => LT0_1, 
	O => LTA
);
U10 : AND2	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	O => GTA
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
SIGNAL \CE-R_L\ : std_logic;
SIGNAL MD : std_logic;
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U2 : XOR2	PORT MAP(
	I1 => N00007, 
	I0 => T, 
	O => TQ
);
U3 : OR3	PORT MAP(
	I2 => R, 
	I1 => L, 
	I0 => CE, 
	O => \CE-R_L\
);
U4 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => MD, 
	O => N00012
);
U5 : FDSE	PORT MAP(
	D => N00012, 
	CE => \CE-R_L\, 
	C => C, 
	S => S, 
	Q => N00007
);
U1 : M2_1	PORT MAP(
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
U2 : AND3	PORT MAP(
	I0 => D1, 
	I1 => E, 
	I2 => S0, 
	O => M1
);
U3 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic
); END OBUFE4;



ARCHITECTURE STRUCTURE OF OBUFE4 IS

-- COMPONENTS

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
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
ENTITY SOP3B1B IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic
); END SOP3B1B;



ARCHITECTURE STRUCTURE OF SOP3B1B IS

-- COMPONENTS

COMPONENT OR2B1
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
U1 : OR2B1	PORT MAP(
	I1 => I01, 
	I0 => I2, 
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
SIGNAL N00041 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00030 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00020;
Q1<=N00030;
Q2<=N00040;
Q3<=N00050;
Q4<=N00060;
Q5<=N00070;
Q6<=N00080;
Q7<=N00018;
Q8<=N00021;
Q9<=N00031;
Q10<=N00041;
Q11<=N00051;
Q12<=N00061;
Q13<=N00071;
Q14<=N00081;
U13 : FDCE	PORT MAP(
	D => N00051, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00061
);
U14 : FDCE	PORT MAP(
	D => N00061, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00071
);
U15 : FDCE	PORT MAP(
	D => N00071, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00081
);
U16 : FDCE	PORT MAP(
	D => N00081, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00020
);
U2 : FDCE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00030
);
U3 : FDCE	PORT MAP(
	D => N00030, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00040
);
U4 : FDCE	PORT MAP(
	D => N00040, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00050
);
U5 : FDCE	PORT MAP(
	D => N00050, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U6 : FDCE	PORT MAP(
	D => N00060, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00070
);
U7 : FDCE	PORT MAP(
	D => N00070, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00080
);
U8 : FDCE	PORT MAP(
	D => N00080, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00018
);
U9 : FDCE	PORT MAP(
	D => N00018, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00021
);
U10 : FDCE	PORT MAP(
	D => N00021, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U11 : FDCE	PORT MAP(
	D => N00031, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U12 : FDCE	PORT MAP(
	D => N00041, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00051
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
SIGNAL N00007 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00012;
Q2<=N00017;
U3 : FDRE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00017
);
U4 : FDRE	PORT MAP(
	D => N00017, 
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
	Q => N00007
);
U2 : FDRE	PORT MAP(
	D => N00007, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00012
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
SIGNAL N00073 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL N00840 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL MDR7 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00033;
Q1<=N00031;
Q2<=N00043;
Q3<=N00053;
Q4<=N00063;
Q5<=N00073;
Q6<=N00083;
Q7<=N00093;
U17 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U18 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U19 : FDCE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00093
);
U20 : FDCE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00083
);
U21 : FDCE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00073
);
U22 : FDCE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00063
);
U23 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00053
);
U24 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00043
);
U25 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U26 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00033
);
U3 : M2_1	PORT MAP(
	D0 => N00053, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U11 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U4 : M2_1	PORT MAP(
	D0 => N00063, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U12 : M2_1	PORT MAP(
	D0 => N00053, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U5 : M2_1	PORT MAP(
	D0 => N00073, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U13 : M2_1	PORT MAP(
	D0 => N00063, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U6 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U14 : M2_1	PORT MAP(
	D0 => N00073, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U15 : M2_1	PORT MAP(
	D0 => N00083, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U7 : M2_1	PORT MAP(
	D0 => N00093, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U16 : M2_1	PORT MAP(
	D0 => N00033, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U8 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U9 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U1 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U2 : M2_1	PORT MAP(
	D0 => N00043, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U10 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
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

COMPONENT NOR5B1
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

COMPONENT NOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D6 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL D11 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D4 : std_logic;
SIGNAL D10 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D9 : std_logic;

-- GATE INSTANCES

BEGIN
D<=N00022;
U13 : NOR5B1	PORT MAP(
	I4 => D0, 
	I3 => D1, 
	I2 => D2, 
	I1 => D3, 
	I0 => I9, 
	O => A
);
U14 : AND2B1	PORT MAP(
	I0 => I6, 
	I1 => N00022, 
	O => D6
);
U15 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00022, 
	O => D7
);
U16 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00022, 
	O => D3
);
U1 : AND5B1	PORT MAP(
	I0 => I1, 
	I1 => N00022, 
	I2 => I6, 
	I3 => I4, 
	I4 => I2, 
	O => D0
);
U2 : AND4B1	PORT MAP(
	I0 => I3, 
	I1 => N00022, 
	I2 => I6, 
	I3 => I4, 
	O => D1
);
U3 : AND3B1	PORT MAP(
	I0 => I5, 
	I1 => N00022, 
	I2 => I6, 
	O => D2
);
U4 : AND4B1	PORT MAP(
	I0 => I2, 
	I1 => N00022, 
	I2 => I5, 
	I3 => I4, 
	O => D4
);
U5 : AND4B1	PORT MAP(
	I0 => I3, 
	I1 => N00022, 
	I2 => I5, 
	I3 => I4, 
	O => D5
);
U6 : AND2B1	PORT MAP(
	I0 => I4, 
	I1 => N00022, 
	O => D8
);
U7 : AND2B1	PORT MAP(
	I0 => I5, 
	I1 => N00022, 
	O => D9
);
U8 : AND2B1	PORT MAP(
	I0 => I6, 
	I1 => N00022, 
	O => D10
);
U9 : AND2B1	PORT MAP(
	I0 => I7, 
	I1 => N00022, 
	O => D11
);
U10 : AND2	PORT MAP(
	I0 => I9, 
	I1 => I8, 
	O => N00022
);
U11 : NOR4	PORT MAP(
	I3 => D4, 
	I2 => D5, 
	I1 => D6, 
	I0 => D7, 
	O => B
);
U12 : NOR4	PORT MAP(
	I3 => D8, 
	I2 => D9, 
	I1 => D10, 
	I0 => D11, 
	O => C
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
SIGNAL O4 : std_logic;
SIGNAL O3 : std_logic;
SIGNAL O1 : std_logic;
SIGNAL O2 : std_logic;
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
U5 : INV	PORT MAP(
	O => E, 
	I => G
);
U6 : INV	PORT MAP(
	O => Y1, 
	I => O1
);
U7 : INV	PORT MAP(
	O => Y2, 
	I => O2
);
U8 : INV	PORT MAP(
	O => Y3, 
	I => O3
);
U9 : INV	PORT MAP(
	O => Y4, 
	I => O4
);
U3 : M2_1E	PORT MAP(
	D0 => A3, 
	D1 => B3, 
	S0 => S, 
	O => O3, 
	E => E
);
U4 : M2_1E	PORT MAP(
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
U2 : M2_1E	PORT MAP(
	D0 => A2, 
	D1 => B2, 
	S0 => S, 
	O => O2, 
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
SIGNAL E6_7 : std_logic;
SIGNAL E2_3 : std_logic;
SIGNAL E0_1 : std_logic;
SIGNAL X1 : std_logic;
SIGNAL X2 : std_logic;
SIGNAL X0 : std_logic;
SIGNAL X7 : std_logic;
SIGNAL X5 : std_logic;
SIGNAL X4 : std_logic;
SIGNAL E4_5 : std_logic;
SIGNAL GB : std_logic;
SIGNAL X3 : std_logic;
SIGNAL X6 : std_logic;

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

COMPONENT XOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
U2 : XOR5	PORT MAP(
	I4 => I47, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

COMPONENT OR2B1
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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MDH : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL MDB : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL MDA : std_logic;
SIGNAL MDF : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL MDE : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL MDD : std_logic;
SIGNAL MDC : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDG : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00026;
QB<=N00035;
QC<=N00043;
QD<=N00051;
QE<=N00059;
QF<=N00067;
QG<=N00075;
U17 : OR2B1	PORT MAP(
	I1 => CE, 
	I0 => S_L, 
	O => L_OR_CE
);
U18 : GND	PORT MAP(
	G => N00031
);
U1 : FDCE	PORT MAP(
	D => MDB, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00035
);
U2 : FDCE	PORT MAP(
	D => MDC, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00043
);
U3 : FDCE	PORT MAP(
	D => MDD, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00051
);
U4 : FDCE	PORT MAP(
	D => MDE, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00059
);
U5 : FDCE	PORT MAP(
	D => MDA, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00026
);
U6 : FDCE	PORT MAP(
	D => MDG, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00075
);
U7 : FDCE	PORT MAP(
	D => MDH, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => QH
);
U8 : FDCE	PORT MAP(
	D => MDF, 
	CE => L_OR_CE, 
	C => CK, 
	CLR => N00031, 
	Q => N00067
);
U11 : M2_1	PORT MAP(
	D0 => C, 
	D1 => N00035, 
	S0 => S_L, 
	O => MDC
);
U12 : M2_1	PORT MAP(
	D0 => D, 
	D1 => N00043, 
	S0 => S_L, 
	O => MDD
);
U13 : M2_1	PORT MAP(
	D0 => E, 
	D1 => N00051, 
	S0 => S_L, 
	O => MDE
);
U14 : M2_1	PORT MAP(
	D0 => F, 
	D1 => N00059, 
	S0 => S_L, 
	O => MDF
);
U15 : M2_1	PORT MAP(
	D0 => G, 
	D1 => N00067, 
	S0 => S_L, 
	O => MDG
);
U16 : M2_1	PORT MAP(
	D0 => H, 
	D1 => N00075, 
	S0 => S_L, 
	O => MDH
);
U9 : M2_1	PORT MAP(
	D0 => A, 
	D1 => SI, 
	S0 => S_L, 
	O => MDA
);
U10 : M2_1	PORT MAP(
	D0 => B, 
	D1 => N00026, 
	S0 => S_L, 
	O => MDB
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
SIGNAL M01 : std_logic;
SIGNAL M12 : std_logic;
SIGNAL M30 : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => M23, 
	D1 => M01, 
	S0 => S1, 
	O => O2
);
U4 : M2_1	PORT MAP(
	D0 => M30, 
	D1 => M12, 
	S0 => S1, 
	O => O3
);
U5 : M2_1	PORT MAP(
	D0 => I0, 
	D1 => I1, 
	S0 => S0, 
	O => M01
);
U6 : M2_1	PORT MAP(
	D0 => I1, 
	D1 => I2, 
	S0 => S0, 
	O => M12
);
U7 : M2_1	PORT MAP(
	D0 => I2, 
	D1 => I3, 
	S0 => S0, 
	O => M23
);
U8 : M2_1	PORT MAP(
	D0 => I3, 
	D1 => I0, 
	S0 => S0, 
	O => M30
);
U1 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => O0
);
U2 : M2_1	PORT MAP(
	D0 => M12, 
	D1 => M30, 
	S0 => S1, 
	O => O1
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic;
	O8 : OUT   std_logic;
	O9 : OUT   std_logic;
	O10 : OUT   std_logic;
	O11 : OUT   std_logic;
	O12 : OUT   std_logic;
	O13 : OUT   std_logic;
	O14 : OUT   std_logic;
	O15 : OUT   std_logic
); END BUFE16;



ARCHITECTURE STRUCTURE OF BUFE16 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
XU1 : BUFT	PORT MAP(
	T => N00019, 
	I => I0, 
	O => O0
);
XU2 : BUFT	PORT MAP(
	T => N00019, 
	I => I1, 
	O => O1
);
XU3 : BUFT	PORT MAP(
	T => N00019, 
	I => I2, 
	O => O2
);
XU4 : BUFT	PORT MAP(
	T => N00019, 
	I => I3, 
	O => O3
);
XU5 : BUFT	PORT MAP(
	T => N00019, 
	I => I4, 
	O => O4
);
XU6 : BUFT	PORT MAP(
	T => N00019, 
	I => I5, 
	O => O5
);
XU7 : BUFT	PORT MAP(
	T => N00019, 
	I => I6, 
	O => O6
);
XU8 : BUFT	PORT MAP(
	T => N00019, 
	I => I7, 
	O => O7
);
XU9 : BUFT	PORT MAP(
	T => N00019, 
	I => I8, 
	O => O8
);
U1 : INV	PORT MAP(
	O => N00019, 
	I => E
);
XU10 : BUFT	PORT MAP(
	T => N00019, 
	I => I9, 
	O => O9
);
XU11 : BUFT	PORT MAP(
	T => N00019, 
	I => I10, 
	O => O10
);
XU12 : BUFT	PORT MAP(
	T => N00019, 
	I => I11, 
	O => O11
);
XU13 : BUFT	PORT MAP(
	T => N00019, 
	I => I12, 
	O => O12
);
XU14 : BUFT	PORT MAP(
	T => N00019, 
	I => I13, 
	O => O13
);
XU15 : BUFT	PORT MAP(
	T => N00019, 
	I => I14, 
	O => O14
);
XU16 : BUFT	PORT MAP(
	T => N00019, 
	I => I15, 
	O => O15
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic
); END BUFT8;



ARCHITECTURE STRUCTURE OF BUFT8 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
XU1 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
XU2 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
XU3 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
XU4 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
XU5 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
XU6 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
XU7 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
XU8 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
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

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T3 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00131 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00162;
Q15<=N00149;
Q0<=N00037;
Q1<=N00050;
Q2<=N00065;
Q3<=N00082;
Q4<=N00100;
Q5<=N00114;
Q6<=N00130;
Q7<=N00148;
Q8<=N00039;
Q9<=N00051;
Q10<=N00066;
Q11<=N00083;
Q12<=N00101;
Q13<=N00115;
Q14<=N00131;
U13 : AND2	PORT MAP(
	I0 => N00100, 
	I1 => T4, 
	O => T5
);
U14 : AND3	PORT MAP(
	I0 => N00114, 
	I1 => N00100, 
	I2 => T4, 
	O => T6
);
U15 : AND4	PORT MAP(
	I0 => N00130, 
	I1 => N00114, 
	I2 => N00100, 
	I3 => T4, 
	O => T7
);
U16 : AND5	PORT MAP(
	I0 => N00148, 
	I1 => N00130, 
	I2 => N00114, 
	I3 => N00100, 
	I4 => T4, 
	O => T8
);
U5 : VCC	PORT MAP(
	P => N00036
);
U6 : AND2	PORT MAP(
	I0 => N00050, 
	I1 => N00037, 
	O => T2
);
U7 : AND3	PORT MAP(
	I0 => N00065, 
	I1 => N00050, 
	I2 => N00037, 
	O => T3
);
U8 : AND4	PORT MAP(
	I0 => N00082, 
	I1 => N00065, 
	I2 => N00050, 
	I3 => N00037, 
	O => T4
);
U25 : AND2	PORT MAP(
	I0 => N00101, 
	I1 => T12, 
	O => T13
);
U26 : AND3	PORT MAP(
	I0 => N00115, 
	I1 => N00101, 
	I2 => T12, 
	O => T14
);
U27 : AND4	PORT MAP(
	I0 => N00131, 
	I1 => N00115, 
	I2 => N00101, 
	I3 => T12, 
	O => T15
);
U28 : AND5	PORT MAP(
	I0 => N00149, 
	I1 => N00131, 
	I2 => N00115, 
	I3 => N00101, 
	I4 => T12, 
	O => N00162
);
U29 : AND2	PORT MAP(
	I0 => N00039, 
	I1 => T8, 
	O => T9
);
U30 : AND3	PORT MAP(
	I0 => N00051, 
	I1 => N00039, 
	I2 => T8, 
	O => T10
);
U31 : AND4	PORT MAP(
	I0 => N00066, 
	I1 => N00051, 
	I2 => N00039, 
	I3 => T8, 
	O => T11
);
U32 : AND5	PORT MAP(
	I0 => N00083, 
	I1 => N00066, 
	I2 => N00051, 
	I3 => N00039, 
	I4 => T8, 
	O => T12
);
U33 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00162, 
	O => CEO
);
U22 : FTCE	PORT MAP(
	T => T13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00115
);
U3 : FTCE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00065
);
U11 : FTCE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00130
);
U23 : FTCE	PORT MAP(
	T => T14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00131
);
U4 : FTCE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00082
);
U12 : FTCE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00148
);
U24 : FTCE	PORT MAP(
	T => T15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00149
);
U17 : FTCE	PORT MAP(
	T => T8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00039
);
U9 : FTCE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00100
);
U18 : FTCE	PORT MAP(
	T => T9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00051
);
U19 : FTCE	PORT MAP(
	T => T10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00066
);
U20 : FTCE	PORT MAP(
	T => T11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00083
);
U1 : FTCE	PORT MAP(
	T => N00036, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00037
);
U21 : FTCE	PORT MAP(
	T => T12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00101
);
U2 : FTCE	PORT MAP(
	T => N00037, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00050
);
U10 : FTCE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00114
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

COMPONENT GND
	PORT (
	G : OUT std_logic
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
SIGNAL N00013 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00043 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00043;
Q0<=N00014;
Q1<=N00020;
Q2<=N00028;
Q3<=N00037;
U1 : VCC	PORT MAP(
	P => N00013
);
U2 : AND2	PORT MAP(
	I0 => N00020, 
	I1 => N00014, 
	O => T2
);
U3 : AND3	PORT MAP(
	I0 => N00028, 
	I1 => N00020, 
	I2 => N00014, 
	O => T3
);
U4 : AND4	PORT MAP(
	I0 => N00037, 
	I1 => N00028, 
	I2 => N00020, 
	I3 => N00014, 
	O => N00043
);
U9 : GND	PORT MAP(
	G => N00012
);
U10 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00043, 
	O => CEO
);
U5 : FTRSE	PORT MAP(
	T => N00013, 
	CE => CE, 
	C => C, 
	S => N00012, 
	Q => N00014, 
	R => R
);
U6 : FTRSE	PORT MAP(
	T => N00014, 
	CE => CE, 
	C => C, 
	S => N00012, 
	Q => N00020, 
	R => R
);
U7 : FTRSE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	S => N00012, 
	Q => N00028, 
	R => R
);
U8 : FTRSE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	S => N00012, 
	Q => N00037, 
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
U1 : AND4	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D7
);
U2 : AND4B1	PORT MAP(
	I0 => A0, 
	I1 => A2, 
	I2 => A1, 
	I3 => E, 
	O => D6
);
U3 : AND4B1	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => A0, 
	I3 => E, 
	O => D5
);
U4 : AND4B2	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => A2, 
	I3 => E, 
	O => D4
);
U5 : AND4B2	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => E, 
	O => D2
);
U6 : AND4B2	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D1
);
U7 : AND4B1	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => E, 
	O => D3
);
U8 : AND4B3	PORT MAP(
	I0 => A2, 
	I1 => A1, 
	I2 => A0, 
	I3 => E, 
	O => D0
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

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
SIGNAL N00007 : std_logic;
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00007
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
);
U3 : FDCE	PORT MAP(
	D => D, 
	CE => N00007, 
	C => CB, 
	CLR => CLR, 
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
SIGNAL N00015 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL Q4B : std_logic;
SIGNAL N00025 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00010;
Q1<=N00015;
Q2<=N00020;
Q3<=N00025;
Q4<=N00008;
U1 : INV	PORT MAP(
	O => Q4B, 
	I => N00008
);
U3 : FDRE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00020
);
U4 : FDRE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00015
);
U5 : FDRE	PORT MAP(
	D => Q4B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00010
);
U6 : FDRE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00008
);
U2 : FDRE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00025
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
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => N00005
);
U2 : FD	PORT MAP(
	D => N00005, 
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
U1 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => D_S
);
U2 : FDR	PORT MAP(
	D => D_S, 
	C => C, 
	R => R, 
	Q => Q
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

COMPONENT OR3
	PORT (
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

COMPONENT FDSE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00009 : std_logic;
SIGNAL AD_R : std_logic;
SIGNAL A1 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A2 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL R_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00009;
U2 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => AD, 
	O => AD_R
);
U3 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U4 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00009, 
	O => A0
);
U5 : AND3B1	PORT MAP(
	I0 => N00009, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U6 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U7 : OR2	PORT MAP(
	I1 => R, 
	I0 => CE, 
	O => R_CE
);
U1 : FDSE	PORT MAP(
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
U1 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U2 : FDCE	PORT MAP(
	D => TQ, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00004
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
SIGNAL M8B : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL MCD : std_logic;
SIGNAL MCF : std_logic;
SIGNAL M23 : std_logic;
SIGNAL MAB : std_logic;
SIGNAL M47 : std_logic;
SIGNAL MEF : std_logic;
SIGNAL M8F : std_logic;
SIGNAL M07 : std_logic;
SIGNAL M89 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M45 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => M03
);
U11 : M2_1	PORT MAP(
	D0 => D14, 
	D1 => D15, 
	S0 => S0, 
	O => MEF
);
U4 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => S0, 
	O => M45
);
U12 : M2_1	PORT MAP(
	D0 => MCD, 
	D1 => MEF, 
	S0 => S1, 
	O => MCF
);
U5 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => S0, 
	O => M67
);
U13 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => S2, 
	O => M07
);
U6 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => M47
);
U14 : M2_1	PORT MAP(
	D0 => M8B, 
	D1 => MCF, 
	S0 => S2, 
	O => M8F
);
U15 : M2_1E	PORT MAP(
	D0 => M07, 
	D1 => M8F, 
	S0 => S3, 
	O => O, 
	E => E
);
U7 : M2_1	PORT MAP(
	D0 => D8, 
	D1 => D9, 
	S0 => S0, 
	O => M89
);
U8 : M2_1	PORT MAP(
	D0 => D10, 
	D1 => D11, 
	S0 => S0, 
	O => MAB
);
U9 : M2_1	PORT MAP(
	D0 => M89, 
	D1 => MAB, 
	S0 => S1, 
	O => M8B
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U10 : M2_1	PORT MAP(
	D0 => D12, 
	D1 => D13, 
	S0 => S0, 
	O => MCD
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
	O => O4, 
	I => I4
);
U2 : OBUF	PORT MAP(
	O => O5, 
	I => I5
);
U3 : OBUF	PORT MAP(
	O => O6, 
	I => I6
);
U4 : OBUF	PORT MAP(
	O => O7, 
	I => I7
);
U5 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U6 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U7 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U8 : OBUF	PORT MAP(
	O => O3, 
	I => I3
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
SIGNAL MDL8 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL9 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00182;
Q0<=N00057;
Q1<=N00055;
Q2<=N00079;
Q3<=N00099;
Q4<=N00119;
Q5<=N00139;
Q6<=N00159;
Q7<=N00064;
Q8<=N00060;
Q9<=N00058;
Q10<=N00082;
Q11<=N00102;
Q12<=N00122;
Q13<=N00142;
Q14<=N00162;
U25 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U26 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U33 : FDRE	PORT MAP(
	D => MDR15, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00182
);
U44 : M2_1	PORT MAP(
	D0 => N00082, 
	D1 => D11, 
	S0 => L, 
	O => MDL11
);
U22 : M2_1	PORT MAP(
	D0 => N00139, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U3 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00079
);
U11 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U34 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => MDL8, 
	S0 => L_LEFT, 
	O => MDR8
);
U45 : M2_1	PORT MAP(
	D0 => N00102, 
	D1 => D12, 
	S0 => L, 
	O => MDL12
);
U23 : M2_1	PORT MAP(
	D0 => N00159, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U4 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00099
);
U12 : M2_1	PORT MAP(
	D0 => N00119, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U35 : M2_1	PORT MAP(
	D0 => N00082, 
	D1 => MDL9, 
	S0 => L_LEFT, 
	O => MDR9
);
U46 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => D13, 
	S0 => L, 
	O => MDL13
);
U24 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U5 : FDRE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00119
);
U13 : M2_1	PORT MAP(
	D0 => N00139, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U47 : M2_1	PORT MAP(
	D0 => N00142, 
	D1 => D14, 
	S0 => L, 
	O => MDL14
);
U36 : M2_1	PORT MAP(
	D0 => N00102, 
	D1 => MDL10, 
	S0 => L_LEFT, 
	O => MDR10
);
U6 : FDRE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00139
);
U14 : M2_1	PORT MAP(
	D0 => N00159, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U48 : M2_1	PORT MAP(
	D0 => N00162, 
	D1 => D15, 
	S0 => L, 
	O => MDL15
);
U37 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => MDL11, 
	S0 => L_LEFT, 
	O => MDR11
);
U15 : M2_1	PORT MAP(
	D0 => N00064, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U7 : FDRE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00159
);
U49 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D9, 
	S0 => L, 
	O => MDL9
);
U38 : M2_1	PORT MAP(
	D0 => N00142, 
	D1 => MDL12, 
	S0 => L_LEFT, 
	O => MDR12
);
U27 : FDRE	PORT MAP(
	D => MDR8, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00060
);
U16 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U8 : FDRE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00064
);
U39 : M2_1	PORT MAP(
	D0 => N00162, 
	D1 => MDL13, 
	S0 => L_LEFT, 
	O => MDR13
);
U28 : FDRE	PORT MAP(
	D => MDR9, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00058
);
U17 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U9 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U29 : FDRE	PORT MAP(
	D => MDR10, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00082
);
U18 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U19 : M2_1	PORT MAP(
	D0 => N00079, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U50 : FDRE	PORT MAP(
	D => MDR12, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00122
);
U40 : M2_1	PORT MAP(
	D0 => N00182, 
	D1 => MDL14, 
	S0 => L_LEFT, 
	O => MDR14
);
U41 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL15, 
	S0 => L_LEFT, 
	O => MDR15
);
U30 : FDRE	PORT MAP(
	D => MDR11, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00102
);
U31 : FDRE	PORT MAP(
	D => MDR13, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00142
);
U42 : M2_1	PORT MAP(
	D0 => N00064, 
	D1 => D8, 
	S0 => L, 
	O => MDL8
);
U20 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U1 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00057
);
U32 : FDRE	PORT MAP(
	D => MDR14, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00162
);
U43 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D10, 
	S0 => L, 
	O => MDL10
);
U21 : M2_1	PORT MAP(
	D0 => N00119, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U2 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00055
);
U10 : M2_1	PORT MAP(
	D0 => N00079, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
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
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => CB, 
	I => C
);
U2 : FDCE	PORT MAP(
	D => D, 
	CE => CE, 
	C => CB, 
	CLR => CLR, 
	Q => Q
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
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
SIGNAL A1 : std_logic;
SIGNAL A2 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL AD : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U1 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => A0
);
U2 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U3 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U4 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U5 : FDCE	PORT MAP(
	D => AD, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
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
U1 : OR2	PORT MAP(
	I1 => R, 
	I0 => CE, 
	O => CE_R
);
U2 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U3 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => TQ, 
	O => D_R
);
U4 : FDSE	PORT MAP(
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
ENTITY SOP4B4 IS PORT (
	O : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic
); END SOP4B4;



ARCHITECTURE STRUCTURE OF SOP4B4 IS

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
SIGNAL I2B3B : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I2B3B, 
	I0 => I0B1B, 
	O => O
);
U2 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
U3 : AND2B2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3B
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
SIGNAL MD0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD2 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00017;
Q1<=N00025;
Q2<=N00033;
U5 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U3 : M2_1	PORT MAP(
	D0 => N00025, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U4 : M2_1	PORT MAP(
	D0 => N00033, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U6 : FDRE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => Q3
);
U7 : FDRE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00033
);
U8 : FDRE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00025
);
U9 : FDRE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00017
);
U1 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U2 : M2_1	PORT MAP(
	D0 => N00017, 
	D1 => D1, 
	S0 => L, 
	O => MD1
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

COMPONENT IFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic
); END OFDT8;



ARCHITECTURE STRUCTURE OF OFDT8 IS

-- COMPONENTS

COMPONENT OFDT
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
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

COMPONENT NAND4B2
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

COMPONENT OR2B2
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
SIGNAL RC : std_logic;
SIGNAL URC : std_logic;
SIGNAL DC : std_logic;
SIGNAL DD : std_logic;
SIGNAL DB : std_logic;
SIGNAL UDB : std_logic;
SIGNAL UDA : std_logic;
SIGNAL DA : std_logic;
SIGNAL UDD : std_logic;
SIGNAL UDC : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL DC2 : std_logic;
SIGNAL UPB : std_logic;
SIGNAL DC1 : std_logic;
SIGNAL UB2 : std_logic;
SIGNAL UB1 : std_logic;
SIGNAL UB4 : std_logic;
SIGNAL DC3 : std_logic;
SIGNAL ENT_P : std_logic;
SIGNAL CE : std_logic;
SIGNAL UD2 : std_logic;
SIGNAL UD1 : std_logic;
SIGNAL UPD : std_logic;
SIGNAL UC1 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL DB2 : std_logic;
SIGNAL DNB : std_logic;
SIGNAL DD3 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL DD1 : std_logic;
SIGNAL DB4 : std_logic;
SIGNAL DD2 : std_logic;
SIGNAL DB1 : std_logic;
SIGNAL DB3 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL DND : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL DD4 : std_logic;
SIGNAL DRC : std_logic;
SIGNAL CC : std_logic;
SIGNAL DNC : std_logic;
SIGNAL UPC : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00047;
QB<=N00055;
QC<=N00076;
QD<=N00067;
U13 : AND2	PORT MAP(
	I0 => N00055, 
	I1 => N00067, 
	O => UB2
);
U14 : AND3B2	PORT MAP(
	I0 => N00055, 
	I1 => N00067, 
	I2 => N00047, 
	O => UB4
);
U15 : OR3	PORT MAP(
	I2 => UB1, 
	I1 => UB2, 
	I0 => UB4, 
	O => UPB
);
U16 : FDCE	PORT MAP(
	D => DC, 
	CE => CE, 
	C => CK, 
	CLR => N00053, 
	Q => N00076
);
U18 : AND3	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	I2 => N00067, 
	O => DC1
);
U19 : AND4B3	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	I2 => N00067, 
	I3 => N00076, 
	O => DC2
);
U1 : INV	PORT MAP(
	O => UDA, 
	I => N00047
);
U3 : FDCE	PORT MAP(
	D => DA, 
	CE => CE, 
	C => CK, 
	CLR => N00053, 
	Q => N00047
);
U4 : FDCE	PORT MAP(
	D => DB, 
	CE => CE, 
	C => CK, 
	CLR => N00053, 
	Q => N00055
);
U20 : AND4B3	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	I2 => N00076, 
	I3 => N00067, 
	O => DC3
);
U21 : OR3	PORT MAP(
	I2 => DC1, 
	I1 => DC2, 
	I0 => DC3, 
	O => CC
);
U22 : XOR2	PORT MAP(
	I1 => CC, 
	I0 => N00076, 
	O => DNC
);
U7 : AND2	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	O => DB1
);
U8 : AND2	PORT MAP(
	I0 => N00055, 
	I1 => N00067, 
	O => DB2
);
U24 : AND2	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	O => UC1
);
U9 : AND3B2	PORT MAP(
	I0 => N00047, 
	I1 => N00076, 
	I2 => N00067, 
	O => DB3
);
U25 : XOR2	PORT MAP(
	I1 => UC1, 
	I0 => N00076, 
	O => UPC
);
U26 : FDCE	PORT MAP(
	D => DD, 
	CE => CE, 
	C => CK, 
	CLR => N00053, 
	Q => N00067
);
U28 : AND3B1	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	I2 => N00067, 
	O => DD1
);
U29 : AND3B1	PORT MAP(
	I0 => N00047, 
	I1 => N00076, 
	I2 => N00067, 
	O => DD2
);
U30 : AND4B2	PORT MAP(
	I0 => N00055, 
	I1 => N00076, 
	I2 => N00047, 
	I3 => N00067, 
	O => DD3
);
U31 : AND4B4	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	I2 => N00076, 
	I3 => N00067, 
	O => DD4
);
U32 : OR4	PORT MAP(
	I3 => DD1, 
	I2 => DD2, 
	I1 => DD3, 
	I0 => DD4, 
	O => DND
);
U34 : AND2B1	PORT MAP(
	I0 => N00047, 
	I1 => N00067, 
	O => UD1
);
U35 : AND4B1	PORT MAP(
	I0 => N00067, 
	I1 => N00047, 
	I2 => N00055, 
	I3 => N00076, 
	O => UD2
);
U36 : OR2	PORT MAP(
	I1 => UD1, 
	I0 => UD2, 
	O => UPD
);
U37 : OR4	PORT MAP(
	I3 => N00067, 
	I2 => N00076, 
	I1 => N00055, 
	I0 => N00047, 
	O => DRC
);
U38 : NAND4B2	PORT MAP(
	I0 => N00076, 
	I1 => N00055, 
	I2 => N00067, 
	I3 => N00047, 
	O => URC
);
U40 : OR2	PORT MAP(
	I1 => RC, 
	I0 => ENT, 
	O => RCO
);
U41 : GND	PORT MAP(
	G => N00053
);
U42 : OR2	PORT MAP(
	I1 => ENP, 
	I0 => ENT, 
	O => ENT_P
);
U10 : AND4B3	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	I2 => N00067, 
	I3 => N00076, 
	O => DB4
);
U43 : OR2B2	PORT MAP(
	I1 => LOAD, 
	I0 => ENT_P, 
	O => CE
);
U11 : OR4	PORT MAP(
	I3 => DB1, 
	I2 => DB2, 
	I1 => DB3, 
	I0 => DB4, 
	O => DNB
);
U12 : AND2B1	PORT MAP(
	I0 => N00047, 
	I1 => N00055, 
	O => UB1
);
U33 : M2_1	PORT MAP(
	D0 => DND, 
	D1 => UPD, 
	S0 => U_D, 
	O => UDD
);
U23 : M2_1	PORT MAP(
	D0 => DNC, 
	D1 => UPC, 
	S0 => U_D, 
	O => UDC
);
U5 : M2_1	PORT MAP(
	D0 => B, 
	D1 => UDB, 
	S0 => LOAD, 
	O => DB
);
U6 : M2_1	PORT MAP(
	D0 => DNB, 
	D1 => UPB, 
	S0 => U_D, 
	O => UDB
);
U27 : M2_1	PORT MAP(
	D0 => D, 
	D1 => UDD, 
	S0 => LOAD, 
	O => DD
);
U39 : M2_1	PORT MAP(
	D0 => DRC, 
	D1 => URC, 
	S0 => U_D, 
	O => RC
);
U17 : M2_1	PORT MAP(
	D0 => C, 
	D1 => UDC, 
	S0 => LOAD, 
	O => DC
);
U2 : M2_1	PORT MAP(
	D0 => A, 
	D1 => UDA, 
	S0 => LOAD, 
	O => DA
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

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FDCE	PORT MAP(
	D => D1, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q1
);
U2 : FDCE	PORT MAP(
	D => D2, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q2
);
U3 : FDCE	PORT MAP(
	D => D3, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q3
);
U4 : FDCE	PORT MAP(
	D => D4, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q4
);
U5 : FDCE	PORT MAP(
	D => D5, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q5
);
U6 : FDCE	PORT MAP(
	D => D6, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q6
);
U7 : FDCE	PORT MAP(
	D => D7, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q7
);
U8 : FDCE	PORT MAP(
	D => D8, 
	CE => GB, 
	C => CK, 
	CLR => N00016, 
	Q => Q8
);
U9 : GND	PORT MAP(
	G => N00016
);
U10 : INV	PORT MAP(
	O => GB, 
	I => G
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

COMPONENT XOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => N00006
);
U2 : XOR5	PORT MAP(
	I4 => N00006, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => I3, 
	I1 => I4, 
	I2 => I5, 
	O => I35
);
U2 : AND4	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I35, 
	O => O
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
U1 : OR2	PORT MAP(
	I1 => I2B3, 
	I0 => I0B1B, 
	O => O
);
U2 : AND2B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3
);
U3 : AND2B2	PORT MAP(
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
SIGNAL N00017 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00012 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00007;
Q1<=N00012;
Q2<=N00017;
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U2 : FDCE	PORT MAP(
	D => N00007, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U3 : FDCE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U4 : FDCE	PORT MAP(
	D => N00017, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
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
SIGNAL MDL1 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL L_LEFT : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00021;
Q1<=N00019;
Q2<=N00031;
Q3<=N00041;
U9 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U10 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U11 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00041
);
U3 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U12 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U4 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U13 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U5 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U14 : FDRE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00021
);
U6 : M2_1	PORT MAP(
	D0 => N00021, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U7 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U8 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U1 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U2 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
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

COMPONENT AND2B1
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL EQ_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL LT_1 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT
);
U2 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT
);
U3 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U4 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U5 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U6 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U7 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
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
SIGNAL TQ2 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL TQ3 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00107;
Q0<=N00034;
Q1<=N00046;
Q2<=N00056;
Q3<=N00066;
Q4<=N00076;
Q5<=N00086;
Q6<=N00096;
Q7<=N00043;
Q8<=N00035;
Q9<=N00047;
Q10<=N00057;
Q11<=N00067;
Q12<=N00077;
Q13<=N00087;
Q14<=N00097;
U13 : INV	PORT MAP(
	O => TQ0, 
	I => N00034
);
U14 : INV	PORT MAP(
	O => TQ1, 
	I => N00046
);
U15 : INV	PORT MAP(
	O => TQ2, 
	I => N00056
);
U16 : INV	PORT MAP(
	O => TQ3, 
	I => N00066
);
U9 : INV	PORT MAP(
	O => TQ8, 
	I => N00035
);
U25 : INV	PORT MAP(
	O => TQ12, 
	I => N00077
);
U26 : INV	PORT MAP(
	O => TQ13, 
	I => N00087
);
U27 : INV	PORT MAP(
	O => TQ14, 
	I => N00097
);
U28 : INV	PORT MAP(
	O => TQ15, 
	I => N00107
);
U29 : INV	PORT MAP(
	O => TQ4, 
	I => N00076
);
U30 : INV	PORT MAP(
	O => TQ5, 
	I => N00086
);
U31 : INV	PORT MAP(
	O => TQ6, 
	I => N00096
);
U32 : INV	PORT MAP(
	O => TQ7, 
	I => N00043
);
U10 : INV	PORT MAP(
	O => TQ9, 
	I => N00047
);
U11 : INV	PORT MAP(
	O => TQ10, 
	I => N00057
);
U12 : INV	PORT MAP(
	O => TQ11, 
	I => N00067
);
U22 : FDCE_1	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => N00076, 
	CLR => CLR, 
	Q => N00086
);
U3 : FDCE_1	PORT MAP(
	D => TQ10, 
	CE => CE, 
	C => N00047, 
	CLR => CLR, 
	Q => N00057
);
U23 : FDCE_1	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => N00086, 
	CLR => CLR, 
	Q => N00096
);
U4 : FDCE_1	PORT MAP(
	D => TQ11, 
	CE => CE, 
	C => N00057, 
	CLR => CLR, 
	Q => N00067
);
U24 : FDCE_1	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => N00096, 
	CLR => CLR, 
	Q => N00043
);
U5 : FDCE_1	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00034
);
U6 : FDCE_1	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => N00034, 
	CLR => CLR, 
	Q => N00046
);
U7 : FDCE_1	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => N00046, 
	CLR => CLR, 
	Q => N00056
);
U8 : FDCE_1	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => N00056, 
	CLR => CLR, 
	Q => N00066
);
U17 : FDCE_1	PORT MAP(
	D => TQ12, 
	CE => CE, 
	C => N00067, 
	CLR => CLR, 
	Q => N00077
);
U18 : FDCE_1	PORT MAP(
	D => TQ13, 
	CE => CE, 
	C => N00077, 
	CLR => CLR, 
	Q => N00087
);
U19 : FDCE_1	PORT MAP(
	D => TQ14, 
	CE => CE, 
	C => N00087, 
	CLR => CLR, 
	Q => N00097
);
U20 : FDCE_1	PORT MAP(
	D => TQ15, 
	CE => CE, 
	C => N00097, 
	CLR => CLR, 
	Q => N00107
);
U1 : FDCE_1	PORT MAP(
	D => TQ8, 
	CE => CE, 
	C => N00043, 
	CLR => CLR, 
	Q => N00035
);
U21 : FDCE_1	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => N00066, 
	CLR => CLR, 
	Q => N00076
);
U2 : FDCE_1	PORT MAP(
	D => TQ9, 
	CE => CE, 
	C => N00035, 
	CLR => CLR, 
	Q => N00047
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
U13 : FDCE	PORT MAP(
	D => D12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q12
);
U14 : FDCE	PORT MAP(
	D => D13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q13
);
U15 : FDCE	PORT MAP(
	D => D14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q14
);
U16 : FDCE	PORT MAP(
	D => D15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U1 : FDCE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q6
);
U2 : FDCE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q7
);
U3 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q0
);
U4 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q1
);
U5 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q2
);
U6 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q3
);
U7 : FDCE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q4
);
U8 : FDCE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q5
);
U9 : FDCE	PORT MAP(
	D => D8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q8
);
U10 : FDCE	PORT MAP(
	D => D9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q9
);
U11 : FDCE	PORT MAP(
	D => D10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q10
);
U12 : FDCE	PORT MAP(
	D => D11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => Q11
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
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY OFDE_1 IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDE_1;



ARCHITECTURE STRUCTURE OF OFDE_1 IS

-- COMPONENTS

COMPONENT OFDT
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL T : std_logic;
SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OFDT	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O
);
U2 : INV	PORT MAP(
	O => T, 
	I => E
);
U3 : INV	PORT MAP(
	O => CB, 
	I => C
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

COMPONENT OFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
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
U1 : OFD	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
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
SIGNAL N00106 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL MD7 : std_logic;

-- GATE INSTANCES

BEGIN
MD12<=L_OR_CE;
Q0<=N00044;
Q1<=N00060;
Q2<=N00076;
Q3<=N00092;
Q4<=N00108;
Q5<=N00124;
Q6<=N00140;
Q7<=N00039;
Q8<=N00041;
Q9<=N00058;
Q10<=N00074;
Q11<=N00090;
Q12<=N00106;
Q13<=N00122;
Q14<=N00138;
U13 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00039
);
U18 : FDCE	PORT MAP(
	D => MD8, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U19 : FDCE	PORT MAP(
	D => MD9, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00058
);
U1 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00044
);
U2 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U3 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00076
);
U4 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00092
);
U20 : FDCE	PORT MAP(
	D => MD10, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00074
);
U21 : FDCE	PORT MAP(
	D => MD11, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00090
);
U9 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U26 : FDCE	PORT MAP(
	D => N00105, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00106
);
U27 : FDCE	PORT MAP(
	D => MD13, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00122
);
U28 : FDCE	PORT MAP(
	D => MD14, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00138
);
U29 : FDCE	PORT MAP(
	D => MD15, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => Q15
);
U10 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00108
);
U11 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00124
);
U12 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00140
);
U33 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => D15, 
	S0 => L, 
	O => MD15
);
U22 : M2_1	PORT MAP(
	D0 => N00039, 
	D1 => D8, 
	S0 => L, 
	O => MD8
);
U23 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => D9, 
	S0 => L, 
	O => MD9
);
U24 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D10, 
	S0 => L, 
	O => MD10
);
U5 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U25 : M2_1	PORT MAP(
	D0 => N00074, 
	D1 => D11, 
	S0 => L, 
	O => MD11
);
U6 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U14 : M2_1	PORT MAP(
	D0 => N00092, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U15 : M2_1	PORT MAP(
	D0 => N00108, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U7 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U16 : M2_1	PORT MAP(
	D0 => N00124, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U8 : M2_1	PORT MAP(
	D0 => N00076, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U17 : M2_1	PORT MAP(
	D0 => N00140, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U30 : M2_1	PORT MAP(
	D0 => N00090, 
	D1 => D12, 
	S0 => L, 
	O => N00105
);
U31 : M2_1	PORT MAP(
	D0 => N00106, 
	D1 => D13, 
	S0 => L, 
	O => MD13
);
U32 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => D14, 
	S0 => L, 
	O => MD14
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
SIGNAL N00139 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDL14 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00182;
Q0<=N00057;
Q1<=N00055;
Q2<=N00079;
Q3<=N00099;
Q4<=N00119;
Q5<=N00139;
Q6<=N00159;
Q7<=N00064;
Q8<=N00060;
Q9<=N00058;
Q10<=N00082;
Q11<=N00102;
Q12<=N00122;
Q13<=N00142;
Q14<=N00162;
U45 : FDCE	PORT MAP(
	D => MDR5, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00139
);
U46 : FDCE	PORT MAP(
	D => MDR4, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00119
);
U47 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00099
);
U48 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00079
);
U49 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00055
);
U17 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U18 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U50 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U35 : FDCE	PORT MAP(
	D => MDR8, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00060
);
U36 : FDCE	PORT MAP(
	D => MDR9, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00058
);
U37 : FDCE	PORT MAP(
	D => MDR10, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00082
);
U38 : FDCE	PORT MAP(
	D => MDR11, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00102
);
U39 : FDCE	PORT MAP(
	D => MDR12, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00122
);
U40 : FDCE	PORT MAP(
	D => MDR13, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00142
);
U41 : FDCE	PORT MAP(
	D => MDR15, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00182
);
U42 : FDCE	PORT MAP(
	D => MDR14, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00162
);
U43 : FDCE	PORT MAP(
	D => MDR7, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00064
);
U44 : FDCE	PORT MAP(
	D => MDR6, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00159
);
U33 : M2_1	PORT MAP(
	D0 => N00162, 
	D1 => D15, 
	S0 => L, 
	O => MDL15
);
U22 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => MDL11, 
	S0 => L_LEFT, 
	O => MDR11
);
U3 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U11 : M2_1	PORT MAP(
	D0 => N00079, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U34 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D9, 
	S0 => L, 
	O => MDL9
);
U23 : M2_1	PORT MAP(
	D0 => N00142, 
	D1 => MDL12, 
	S0 => L_LEFT, 
	O => MDR12
);
U4 : M2_1	PORT MAP(
	D0 => N00119, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U12 : M2_1	PORT MAP(
	D0 => N00099, 
	D1 => D4, 
	S0 => L, 
	O => MDL4
);
U24 : M2_1	PORT MAP(
	D0 => N00162, 
	D1 => MDL13, 
	S0 => L_LEFT, 
	O => MDR13
);
U5 : M2_1	PORT MAP(
	D0 => N00139, 
	D1 => MDL4, 
	S0 => L_LEFT, 
	O => MDR4
);
U13 : M2_1	PORT MAP(
	D0 => N00119, 
	D1 => D5, 
	S0 => L, 
	O => MDL5
);
U25 : M2_1	PORT MAP(
	D0 => N00182, 
	D1 => MDL14, 
	S0 => L_LEFT, 
	O => MDR14
);
U6 : M2_1	PORT MAP(
	D0 => N00159, 
	D1 => MDL5, 
	S0 => L_LEFT, 
	O => MDR5
);
U14 : M2_1	PORT MAP(
	D0 => N00139, 
	D1 => D6, 
	S0 => L, 
	O => MDL6
);
U15 : M2_1	PORT MAP(
	D0 => N00159, 
	D1 => D7, 
	S0 => L, 
	O => MDL7
);
U26 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL15, 
	S0 => L_LEFT, 
	O => MDR15
);
U7 : M2_1	PORT MAP(
	D0 => N00064, 
	D1 => MDL6, 
	S0 => L_LEFT, 
	O => MDR6
);
U16 : M2_1	PORT MAP(
	D0 => N00057, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
);
U27 : M2_1	PORT MAP(
	D0 => N00064, 
	D1 => D8, 
	S0 => L, 
	O => MDL8
);
U8 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => MDL7, 
	S0 => L_LEFT, 
	O => MDR7
);
U28 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D10, 
	S0 => L, 
	O => MDL10
);
U9 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U29 : M2_1	PORT MAP(
	D0 => N00082, 
	D1 => D11, 
	S0 => L, 
	O => MDL11
);
U19 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => MDL8, 
	S0 => L_LEFT, 
	O => MDR8
);
U30 : M2_1	PORT MAP(
	D0 => N00102, 
	D1 => D12, 
	S0 => L, 
	O => MDL12
);
U31 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => D13, 
	S0 => L, 
	O => MDL13
);
U20 : M2_1	PORT MAP(
	D0 => N00082, 
	D1 => MDL9, 
	S0 => L_LEFT, 
	O => MDR9
);
U1 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U32 : M2_1	PORT MAP(
	D0 => N00142, 
	D1 => D14, 
	S0 => L, 
	O => MDL14
);
U21 : M2_1	PORT MAP(
	D0 => N00102, 
	D1 => MDL10, 
	S0 => L_LEFT, 
	O => MDR10
);
U2 : M2_1	PORT MAP(
	D0 => N00079, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U10 : M2_1	PORT MAP(
	D0 => N00055, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
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
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U2 : XOR4	PORT MAP(
	I3 => I35, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL N00009 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL Q3B : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00014;
Q2<=N00019;
Q3<=N00007;
U1 : INV	PORT MAP(
	O => Q3B, 
	I => N00007
);
U3 : FDRE	PORT MAP(
	D => N00009, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00014
);
U4 : FDRE	PORT MAP(
	D => N00014, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U5 : FDRE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00007
);
U2 : FDRE	PORT MAP(
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00007
);
U2 : GND	PORT MAP(
	G => N00009
);
U3 : FDCE	PORT MAP(
	D => D, 
	CE => N00007, 
	C => C, 
	CLR => N00009, 
	Q => Q
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

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00038 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00038;
Q0<=N00012;
Q1<=N00017;
Q2<=N00024;
Q3<=N00032;
U5 : VCC	PORT MAP(
	P => N00011
);
U6 : AND2	PORT MAP(
	I0 => N00017, 
	I1 => N00012, 
	O => T2
);
U7 : AND3	PORT MAP(
	I0 => N00024, 
	I1 => N00017, 
	I2 => N00012, 
	O => T3
);
U8 : AND4	PORT MAP(
	I0 => N00032, 
	I1 => N00024, 
	I2 => N00017, 
	I3 => N00012, 
	O => N00038
);
U9 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00038, 
	O => CEO
);
U3 : FTCE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00024
);
U4 : FTCE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00032
);
U1 : FTCE	PORT MAP(
	T => N00011, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U2 : FTCE	PORT MAP(
	T => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
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

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
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

COMPONENT FDRE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00040 : std_logic;
SIGNAL OX3 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL AX1 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D3 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00058;
Q0<=N00017;
Q1<=N00028;
Q2<=N00040;
Q3<=N00026;
U13 : AND3	PORT MAP(
	I0 => N00040, 
	I1 => N00017, 
	I2 => N00028, 
	O => N00037
);
U14 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00058, 
	O => CEO
);
U15 : AND4B2	PORT MAP(
	I0 => N00028, 
	I1 => N00040, 
	I2 => N00017, 
	I3 => N00026, 
	O => N00058
);
U5 : INV	PORT MAP(
	O => D0, 
	I => N00017
);
U6 : XOR2	PORT MAP(
	I1 => AX1, 
	I0 => N00028, 
	O => D1
);
U7 : XOR2	PORT MAP(
	I1 => AX2, 
	I0 => N00040, 
	O => D2
);
U8 : XOR2	PORT MAP(
	I1 => OX3, 
	I0 => N00026, 
	O => D3
);
U9 : AND2	PORT MAP(
	I0 => N00028, 
	I1 => N00017, 
	O => AX2
);
U10 : AND2B1	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => AX1
);
U11 : OR2	PORT MAP(
	I1 => N00037, 
	I0 => N00047, 
	O => OX3
);
U12 : AND2	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => N00047
);
U3 : FDRE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00040
);
U4 : FDRE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00026
);
U1 : FDRE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00017
);
U2 : FDRE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00028
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

COMPONENT AND5B3
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

COMPONENT AND5
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : AND5B2	PORT MAP(
	I0 => A2, 
	I1 => A3, 
	I2 => E, 
	I3 => A0, 
	I4 => A1, 
	O => D3
);
U14 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A3, 
	I2 => A2, 
	I3 => A1, 
	I4 => E, 
	O => D2
);
U15 : AND5B3	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => A3, 
	I3 => A0, 
	I4 => E, 
	O => D1
);
U16 : AND5B4	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D0
);
U1 : AND5	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D15
);
U2 : AND5B1	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D14
);
U3 : AND5B1	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D13
);
U4 : AND5B2	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	I3 => A3, 
	I4 => A2, 
	O => D12
);
U5 : AND5B1	PORT MAP(
	I0 => A2, 
	I1 => A0, 
	I2 => A1, 
	I3 => A3, 
	I4 => E, 
	O => D11
);
U6 : AND5B2	PORT MAP(
	I0 => A0, 
	I1 => A2, 
	I2 => E, 
	I3 => A3, 
	I4 => A1, 
	O => D10
);
U7 : AND5B2	PORT MAP(
	I0 => A1, 
	I1 => A2, 
	I2 => E, 
	I3 => A3, 
	I4 => A0, 
	O => D9
);
U8 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A2, 
	I3 => A3, 
	I4 => E, 
	O => D8
);
U9 : AND5B1	PORT MAP(
	I0 => A3, 
	I1 => A2, 
	I2 => A1, 
	I3 => A0, 
	I4 => E, 
	O => D7
);
U10 : AND5B2	PORT MAP(
	I0 => A3, 
	I1 => A0, 
	I2 => E, 
	I3 => A2, 
	I4 => A1, 
	O => D6
);
U11 : AND5B2	PORT MAP(
	I0 => A3, 
	I1 => A1, 
	I2 => E, 
	I3 => A2, 
	I4 => A0, 
	O => D5
);
U12 : AND5B3	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => A3, 
	I3 => A2, 
	I4 => E, 
	O => D4
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

COMPONENT FDSE	 PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D_R : std_logic;
SIGNAL CE_R : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => D_R
);
U2 : OR2	PORT MAP(
	I1 => R, 
	I0 => CE, 
	O => CE_R
);
U3 : FDSE	PORT MAP(
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
U3 : M2_1E	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => O, 
	E => E
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
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
U1 : AND2B2	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1B
);
U2 : OR2	PORT MAP(
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
SIGNAL I2B3 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I2B3, 
	I0 => I0B1, 
	O => O
);
U2 : AND2B1	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I2B3
);
U3 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic
); END OFDE8;



ARCHITECTURE STRUCTURE OF OFDE8 IS

-- COMPONENTS

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
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
SIGNAL MA : std_logic;
SIGNAL MC : std_logic;
SIGNAL MB : std_logic;
SIGNAL MD : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1	PORT MAP(
	D0 => C1, 
	D1 => C2, 
	S0 => WS, 
	O => MC
);
U4 : M2_1	PORT MAP(
	D0 => D1, 
	D1 => D2, 
	S0 => WS, 
	O => MD
);
U5 : FD_1	PORT MAP(
	D => MD, 
	C => CK, 
	Q => QD
);
U6 : FD_1	PORT MAP(
	D => MC, 
	C => CK, 
	Q => QC
);
U7 : FD_1	PORT MAP(
	D => MB, 
	C => CK, 
	Q => QB
);
U8 : FD_1	PORT MAP(
	D => MA, 
	C => CK, 
	Q => QA
);
U1 : M2_1	PORT MAP(
	D0 => A1, 
	D1 => A2, 
	S0 => WS, 
	O => MA
);
U2 : M2_1	PORT MAP(
	D0 => B1, 
	D1 => B2, 
	S0 => WS, 
	O => MB
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

COMPONENT XOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I48 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR5	PORT MAP(
	I4 => I8, 
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I48
);
U2 : XNOR5	PORT MAP(
	I4 => I48, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL N00020 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL Q4B : std_logic;
SIGNAL N00025 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00010;
Q1<=N00015;
Q2<=N00020;
Q3<=N00025;
Q4<=N00008;
U1 : FDCE	PORT MAP(
	D => Q4B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00010
);
U2 : FDCE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00015
);
U3 : FDCE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00020
);
U4 : FDCE	PORT MAP(
	D => N00020, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U5 : FDCE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U6 : INV	PORT MAP(
	O => Q4B, 
	I => N00008
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
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	O => N00006
);
U2 : FDS	PORT MAP(
	D => N00006, 
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
SIGNAL N00008 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL S_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00008;
U1 : OR4	PORT MAP(
	I3 => N00011, 
	I2 => N00015, 
	I1 => N00017, 
	I0 => S, 
	O => N00016
);
U2 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00008, 
	O => N00011
);
U3 : AND3B1	PORT MAP(
	I0 => N00008, 
	I1 => K, 
	I2 => J, 
	O => N00015
);
U4 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => N00017
);
U6 : OR2	PORT MAP(
	I1 => S, 
	I0 => CE, 
	O => S_CE
);
U5 : FDRE	PORT MAP(
	D => N00016, 
	CE => S_CE, 
	C => C, 
	R => R, 
	Q => N00008
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

COMPONENT OFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : OFD	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13
);
U14 : OFD	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14
);
U15 : OFD	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15
);
U16 : OFD	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6
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
	D => D7, 
	C => C, 
	Q => Q7
);
U8 : OFD	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8
);
U9 : OFD	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9
);
U10 : OFD	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10
);
U11 : OFD	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11
);
U12 : OFD	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic;
	O8 : OUT   std_logic;
	O9 : OUT   std_logic;
	O10 : OUT   std_logic;
	O11 : OUT   std_logic;
	O12 : OUT   std_logic;
	O13 : OUT   std_logic;
	O14 : OUT   std_logic;
	O15 : OUT   std_logic
); END OFDE16;



ARCHITECTURE STRUCTURE OF OFDE16 IS

-- COMPONENTS

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
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
U11 : OFDE	PORT MAP(
	E => E, 
	D => D10, 
	C => C, 
	O => O10
);
U4 : OFDE	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3
);
U12 : OFDE	PORT MAP(
	E => E, 
	D => D11, 
	C => C, 
	O => O11
);
U5 : OFDE	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4
);
U13 : OFDE	PORT MAP(
	E => E, 
	D => D12, 
	C => C, 
	O => O12
);
U6 : OFDE	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5
);
U14 : OFDE	PORT MAP(
	E => E, 
	D => D13, 
	C => C, 
	O => O13
);
U15 : OFDE	PORT MAP(
	E => E, 
	D => D14, 
	C => C, 
	O => O14
);
U7 : OFDE	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6
);
U16 : OFDE	PORT MAP(
	E => E, 
	D => D15, 
	C => C, 
	O => O15
);
U8 : OFDE	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7
);
U9 : OFDE	PORT MAP(
	E => E, 
	D => D8, 
	C => C, 
	O => O8
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
U10 : OFDE	PORT MAP(
	E => E, 
	D => D9, 
	C => C, 
	O => O9
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
U1 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I0B1B, 
	O => O
);
U2 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U3 : AND2B2	PORT MAP(
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
SIGNAL MD1 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD5 : std_logic;

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

COMPONENT NOR2
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

COMPONENT AND5B1
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

COMPONENT AND4B1
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL AB7 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL NA_B3 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL NA_B7 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL NA_B5 : std_logic;
SIGNAL NA_B1 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AL_7 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AG_7 : std_logic;
SIGNAL AB6 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => N00071
);
U14 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00073
);
U15 : NOR2	PORT MAP(
	I1 => N00085, 
	I0 => N00087, 
	O => NA_B5
);
U16 : AND2B1	PORT MAP(
	I0 => A2, 
	I1 => B2, 
	O => N00085
);
U17 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00087
);
U18 : NOR2	PORT MAP(
	I1 => N00094, 
	I0 => N00096, 
	O => NA_B7
);
U19 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => N00094
);
U1 : AND5	PORT MAP(
	I0 => NA_B7, 
	I1 => NA_B5, 
	I2 => NA_B3, 
	I3 => NA_B1, 
	I4 => AEBI, 
	O => AEBO
);
U2 : AND5	PORT MAP(
	I0 => NA_B7, 
	I1 => NA_B5, 
	I2 => NA_B3, 
	I3 => NA_B1, 
	I4 => ALBI, 
	O => AL_7
);
U3 : AND5	PORT MAP(
	I0 => NA_B7, 
	I1 => NA_B5, 
	I2 => NA_B3, 
	I3 => NA_B1, 
	I4 => AGBI, 
	O => AG_7
);
U4 : AND5B1	PORT MAP(
	I0 => B0, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => NA_B3, 
	I4 => A0, 
	O => AB0
);
U20 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00096
);
U5 : AND5B1	PORT MAP(
	I0 => A0, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => NA_B3, 
	I4 => B0, 
	O => AB1
);
U21 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => NA_B7, 
	I2 => B2, 
	O => AB5
);
U6 : AND4B1	PORT MAP(
	I0 => B1, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => A1, 
	O => AB2
);
U22 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => AB6
);
U7 : NOR2	PORT MAP(
	I1 => N00052, 
	I0 => N00054, 
	O => NA_B1
);
U23 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => AB7
);
U8 : AND2B1	PORT MAP(
	I0 => A0, 
	I1 => B0, 
	O => N00052
);
U24 : OR5	PORT MAP(
	I4 => AL_7, 
	I3 => AB3, 
	I2 => AB1, 
	I1 => AB5, 
	I0 => AB7, 
	O => ALBO
);
U9 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00054
);
U25 : OR5	PORT MAP(
	I4 => AG_7, 
	I3 => AB0, 
	I2 => AB2, 
	I1 => AB4, 
	I0 => AB6, 
	O => AGBO
);
U10 : AND4B1	PORT MAP(
	I0 => A1, 
	I1 => NA_B7, 
	I2 => NA_B5, 
	I3 => B1, 
	O => AB3
);
U11 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => NA_B7, 
	I2 => A2, 
	O => AB4
);
U12 : NOR2	PORT MAP(
	I1 => N00071, 
	I0 => N00073, 
	O => NA_B3
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
SIGNAL N00019 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL SD2 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00020;
Q1<=N00019;
Q2<=N00018;
Q3<=N00017;
U13 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => N00039, 
	C => C, 
	CLR => N00041, 
	Q => N00020
);
U14 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => N00039, 
	C => C, 
	CLR => N00041, 
	Q => N00018
);
U15 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => N00039, 
	C => C, 
	CLR => N00041, 
	Q => N00017
);
U6 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD0, 
	O => R_SD0
);
U7 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD1, 
	O => R_SD1
);
U8 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U9 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U10 : GND	PORT MAP(
	G => N00041
);
U11 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => N00039
);
U12 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => N00039, 
	C => C, 
	CLR => N00041, 
	Q => N00019
);
U3 : M2_1	PORT MAP(
	D0 => N00023, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U4 : M2_1	PORT MAP(
	D0 => N00024, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U5 : M2_1	PORT MAP(
	D0 => N00025, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U1 : ADSU4	PORT MAP(
	CI => CI, 
	A0 => N00020, 
	A1 => N00019, 
	A2 => N00018, 
	A3 => N00017, 
	B0 => B0, 
	B1 => B1, 
	B2 => B2, 
	B3 => B3, 
	ADD => ADD, 
	S0 => N00022, 
	S1 => N00023, 
	S2 => N00024, 
	S3 => N00025, 
	CO => CO, 
	OFL => OFL
);
U2 : M2_1	PORT MAP(
	D0 => N00022, 
	D1 => D0, 
	S0 => L, 
	O => SD0
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
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
SIGNAL B2C1 : std_logic;
SIGNAL A0CI : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL A3C2 : std_logic;
SIGNAL A2C1 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL AAB : std_logic;
SIGNAL AABXS : std_logic;
SIGNAL AXB : std_logic;
SIGNAL B3C2 : std_logic;
SIGNAL A1C0 : std_logic;
SIGNAL B0CI : std_logic;
SIGNAL B1C0 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL C0 : std_logic;

-- GATE INSTANCES

BEGIN
S3<=N00052;
U13 : AND2	PORT MAP(
	I0 => B2, 
	I1 => C1, 
	O => B2C1
);
U14 : XOR3	PORT MAP(
	I2 => B2, 
	I1 => A2, 
	I0 => C1, 
	O => S2
);
U15 : OR3	PORT MAP(
	I2 => AB2, 
	I1 => A2C1, 
	I0 => B2C1, 
	O => C2
);
U16 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => AB3
);
U17 : AND2	PORT MAP(
	I0 => C2, 
	I1 => A3, 
	O => A3C2
);
U18 : AND2	PORT MAP(
	I0 => B3, 
	I1 => C2, 
	O => B3C2
);
U19 : XOR3	PORT MAP(
	I2 => B3, 
	I1 => A3, 
	I0 => C2, 
	O => N00052
);
U1 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => AB0
);
U2 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => A0CI
);
U3 : AND2	PORT MAP(
	I0 => B0, 
	I1 => CI, 
	O => B0CI
);
U4 : XOR3	PORT MAP(
	I2 => B0, 
	I1 => A0, 
	I0 => CI, 
	O => S0
);
U20 : OR3	PORT MAP(
	I2 => AB3, 
	I1 => A3C2, 
	I0 => B3C2, 
	O => CO
);
U5 : OR3	PORT MAP(
	I2 => AB0, 
	I1 => A0CI, 
	I0 => B0CI, 
	O => C0
);
U21 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => AXB
);
U6 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => AB1
);
U22 : AND2	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => AAB
);
U7 : AND2	PORT MAP(
	I0 => C0, 
	I1 => A1, 
	O => A1C0
);
U23 : XOR2	PORT MAP(
	I1 => N00052, 
	I0 => AAB, 
	O => AABXS
);
U8 : AND2	PORT MAP(
	I0 => B1, 
	I1 => C0, 
	O => B1C0
);
U24 : AND2	PORT MAP(
	I0 => AABXS, 
	I1 => AXB, 
	O => OFL
);
U9 : XOR3	PORT MAP(
	I2 => B1, 
	I1 => A1, 
	I0 => C0, 
	O => S1
);
U10 : OR3	PORT MAP(
	I2 => AB1, 
	I1 => A1C0, 
	I0 => B1C0, 
	O => C1
);
U11 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => AB2
);
U12 : AND2	PORT MAP(
	I0 => C1, 
	I1 => A2, 
	O => A2C1
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic
); END BUFE8;



ARCHITECTURE STRUCTURE OF BUFE8 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
XU1 : BUFT	PORT MAP(
	T => N00011, 
	I => I0, 
	O => O0
);
XU2 : BUFT	PORT MAP(
	T => N00011, 
	I => I1, 
	O => O1
);
XU3 : BUFT	PORT MAP(
	T => N00011, 
	I => I2, 
	O => O2
);
XU4 : BUFT	PORT MAP(
	T => N00011, 
	I => I3, 
	O => O3
);
XU5 : BUFT	PORT MAP(
	T => N00011, 
	I => I4, 
	O => O4
);
XU6 : BUFT	PORT MAP(
	T => N00011, 
	I => I5, 
	O => O5
);
XU7 : BUFT	PORT MAP(
	T => N00011, 
	I => I6, 
	O => O6
);
XU8 : BUFT	PORT MAP(
	T => N00011, 
	I => I7, 
	O => O7
);
U1 : INV	PORT MAP(
	O => N00011, 
	I => E
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic;
	O8 : OUT   std_logic;
	O9 : OUT   std_logic;
	O10 : OUT   std_logic;
	O11 : OUT   std_logic;
	O12 : OUT   std_logic;
	O13 : OUT   std_logic;
	O14 : OUT   std_logic;
	O15 : OUT   std_logic
); END BUFT16;



ARCHITECTURE STRUCTURE OF BUFT16 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
XU1 : BUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
);
XU2 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
XU3 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
XU4 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
XU5 : BUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
XU6 : BUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
XU7 : BUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
XU8 : BUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
XU9 : BUFT	PORT MAP(
	T => T, 
	I => I8, 
	O => O8
);
XU10 : BUFT	PORT MAP(
	T => T, 
	I => I9, 
	O => O9
);
XU11 : BUFT	PORT MAP(
	T => T, 
	I => I10, 
	O => O10
);
XU12 : BUFT	PORT MAP(
	T => T, 
	I => I11, 
	O => O11
);
XU13 : BUFT	PORT MAP(
	T => T, 
	I => I12, 
	O => O12
);
XU14 : BUFT	PORT MAP(
	T => T, 
	I => I13, 
	O => O13
);
XU15 : BUFT	PORT MAP(
	T => T, 
	I => I14, 
	O => O14
);
XU16 : BUFT	PORT MAP(
	T => T, 
	I => I15, 
	O => O15
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

COMPONENT GND
	PORT (
	G : OUT std_logic
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
SIGNAL N00009 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00021 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00021;
Q0<=N00010;
Q1<=N00016;
U1 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00010, 
	O => N00021
);
U2 : VCC	PORT MAP(
	P => N00009
);
U5 : GND	PORT MAP(
	G => N00008
);
U6 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00021, 
	O => CEO
);
U3 : FTRSE	PORT MAP(
	T => N00010, 
	CE => CE, 
	C => C, 
	S => N00008, 
	Q => N00016, 
	R => R
);
U4 : FTRSE	PORT MAP(
	T => N00009, 
	CE => CE, 
	C => C, 
	S => N00008, 
	Q => N00010, 
	R => R
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

COMPONENT XNOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
U2 : XNOR5	PORT MAP(
	I4 => I47, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

COMPONENT OR2B1
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

COMPONENT XNOR4
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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL ADD_C0 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL SUB_C1 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL ADD_C1 : std_logic;
SIGNAL ADD_C2 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL SUB_C0 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL ADD_CO : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL B_M : std_logic;
SIGNAL AXB : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00110 : std_logic;
SIGNAL SUB_CO : std_logic;
SIGNAL SUB_C2 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL AABXS : std_logic;
SIGNAL AAB : std_logic;

-- GATE INSTANCES

BEGIN
S3<=N00116;
U45 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00123
);
U13 : AND2	PORT MAP(
	I0 => C0, 
	I1 => N00088, 
	O => N00090
);
U14 : AND2	PORT MAP(
	I0 => C0, 
	I1 => N00079, 
	O => N00083
);
U15 : OR2	PORT MAP(
	I1 => N00076, 
	I0 => N00083, 
	O => SUB_C1
);
U16 : OR2	PORT MAP(
	I1 => N00090, 
	I0 => N00091, 
	O => ADD_C1
);
U18 : XNOR4	PORT MAP(
	I3 => C0, 
	I2 => B1, 
	I1 => A1, 
	I0 => ADD, 
	O => S1
);
U19 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00098
);
U1 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00053
);
U2 : OR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00065
);
U3 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00069
);
U4 : AND2	PORT MAP(
	I0 => CI, 
	I1 => N00065, 
	O => N00067
);
U20 : OR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00110
);
U5 : AND2	PORT MAP(
	I0 => CI, 
	I1 => N00056, 
	O => N00060
);
U21 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00113
);
U6 : OR2	PORT MAP(
	I1 => N00053, 
	I0 => N00060, 
	O => SUB_C0
);
U22 : AND2	PORT MAP(
	I0 => C1, 
	I1 => N00110, 
	O => N00112
);
U7 : OR2	PORT MAP(
	I1 => N00067, 
	I0 => N00069, 
	O => ADD_C0
);
U23 : AND2	PORT MAP(
	I0 => C1, 
	I1 => N00101, 
	O => N00105
);
U24 : OR2	PORT MAP(
	I1 => N00098, 
	I0 => N00105, 
	O => SUB_C2
);
U9 : XNOR4	PORT MAP(
	I3 => CI, 
	I2 => B0, 
	I1 => A0, 
	I0 => ADD, 
	O => S0
);
U25 : OR2	PORT MAP(
	I1 => N00112, 
	I0 => N00113, 
	O => ADD_C2
);
U27 : XNOR4	PORT MAP(
	I3 => C1, 
	I2 => B2, 
	I1 => A2, 
	I0 => ADD, 
	O => S2
);
U28 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00120
);
U29 : OR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00132
);
U30 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00135
);
U31 : AND2	PORT MAP(
	I0 => C2, 
	I1 => N00132, 
	O => N00134
);
U32 : AND2	PORT MAP(
	I0 => C2, 
	I1 => N00123, 
	O => N00127
);
U33 : OR2	PORT MAP(
	I1 => N00120, 
	I0 => N00127, 
	O => SUB_CO
);
U34 : OR2	PORT MAP(
	I1 => N00134, 
	I0 => N00135, 
	O => ADD_CO
);
U36 : XNOR4	PORT MAP(
	I3 => C2, 
	I2 => B3, 
	I1 => A3, 
	I0 => ADD, 
	O => N00116
);
U37 : XNOR2	PORT MAP(
	I1 => ADD, 
	I0 => B3, 
	O => B_M
);
U38 : XNOR2	PORT MAP(
	I1 => B_M, 
	I0 => A3, 
	O => AXB
);
U39 : AND2	PORT MAP(
	I0 => A3, 
	I1 => B_M, 
	O => AAB
);
U40 : XOR2	PORT MAP(
	I1 => N00116, 
	I0 => AAB, 
	O => AABXS
);
U41 : AND2	PORT MAP(
	I0 => AABXS, 
	I1 => AXB, 
	O => OFL
);
U42 : OR2B1	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00056
);
U10 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00076
);
U43 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00079
);
U11 : OR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00088
);
U44 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00101
);
U12 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00091
);
U35 : M2_1	PORT MAP(
	D0 => SUB_CO, 
	D1 => ADD_CO, 
	S0 => ADD, 
	O => CO
);
U26 : M2_1	PORT MAP(
	D0 => SUB_C2, 
	D1 => ADD_C2, 
	S0 => ADD, 
	O => C2
);
U8 : M2_1	PORT MAP(
	D0 => SUB_C0, 
	D1 => ADD_C0, 
	S0 => ADD, 
	O => C0
);
U17 : M2_1	PORT MAP(
	D0 => SUB_C1, 
	D1 => ADD_C1, 
	S0 => ADD, 
	O => C1
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
SIGNAL N00014 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL Q3B : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00009;
Q1<=N00014;
Q2<=N00019;
Q3<=N00007;
U1 : FDCE	PORT MAP(
	D => Q3B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00009
);
U2 : FDCE	PORT MAP(
	D => N00009, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00014
);
U3 : FDCE	PORT MAP(
	D => N00014, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
U4 : FDCE	PORT MAP(
	D => N00019, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00007
);
U5 : INV	PORT MAP(
	O => Q3B, 
	I => N00007
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

COMPONENT XNOR2
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

COMPONENT AND5
	PORT (
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
SIGNAL EQ14_15 : std_logic;
SIGNAL GE6_7 : std_logic;
SIGNAL GT6_7 : std_logic;
SIGNAL LT8_9 : std_logic;
SIGNAL GT_15 : std_logic;
SIGNAL GE14_15 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL LT12_13 : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL GT8_9 : std_logic;
SIGNAL LT6_7 : std_logic;
SIGNAL GE4_5 : std_logic;
SIGNAL LT_5 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL EQ10_11 : std_logic;
SIGNAL EQ4_5 : std_logic;
SIGNAL EQ12_13 : std_logic;
SIGNAL GE10_11 : std_logic;
SIGNAL GT_3 : std_logic;
SIGNAL EQ8_9 : std_logic;
SIGNAL GT_11 : std_logic;
SIGNAL LE10_11 : std_logic;
SIGNAL LT_9 : std_logic;
SIGNAL LE6_7 : std_logic;
SIGNAL LT4_5 : std_logic;
SIGNAL GT_5 : std_logic;
SIGNAL GT12_13 : std_logic;
SIGNAL LT_13 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL GT_13 : std_logic;
SIGNAL GT4_5 : std_logic;
SIGNAL LT_15 : std_logic;
SIGNAL LE14_15 : std_logic;
SIGNAL LE12_13 : std_logic;
SIGNAL LT_11 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LT_7 : std_logic;
SIGNAL LE4_5 : std_logic;
SIGNAL GT10_11 : std_logic;
SIGNAL LT10_11 : std_logic;
SIGNAL GT2_3 : std_logic;
SIGNAL GT_9 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL GE12_13 : std_logic;
SIGNAL GE8_9 : std_logic;
SIGNAL LT2_3 : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL LTA : std_logic;
SIGNAL GTB : std_logic;
SIGNAL LTF : std_logic;
SIGNAL LTH : std_logic;
SIGNAL GTG : std_logic;
SIGNAL GTH : std_logic;
SIGNAL GTC : std_logic;
SIGNAL LTC : std_logic;
SIGNAL GTD : std_logic;
SIGNAL LTG : std_logic;
SIGNAL GTF : std_logic;
SIGNAL GTA : std_logic;
SIGNAL GTE : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL GT_7 : std_logic;
SIGNAL LE8_9 : std_logic;
SIGNAL EQ_2 : std_logic;
SIGNAL EQ_15 : std_logic;
SIGNAL LTE : std_logic;
SIGNAL LTD : std_logic;
SIGNAL LTB : std_logic;
SIGNAL EQ_4 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL EQ_13 : std_logic;
SIGNAL EQ8_15 : std_logic;
SIGNAL EQ6_7 : std_logic;
SIGNAL EQ_9 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL EQ_11 : std_logic;

-- GATE INSTANCES

BEGIN
U77 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LT2_3
);
U45 : AND2B1	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	O => LT_15
);
U13 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => EQ_2
);
U78 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GT2_3
);
U46 : XNOR2	PORT MAP(
	I1 => B15, 
	I0 => A15, 
	O => EQ_15
);
U14 : NOR2	PORT MAP(
	I1 => LT6_7, 
	I0 => GT6_7, 
	O => EQ6_7
);
U79 : OR2	PORT MAP(
	I1 => LE4_5, 
	I0 => LT_5, 
	O => LT4_5
);
U47 : OR2	PORT MAP(
	I1 => LE14_15, 
	I0 => LT_15, 
	O => LTH
);
U15 : AND3B1	PORT MAP(
	I0 => A6, 
	I1 => EQ_4, 
	I2 => B6, 
	O => LE6_7
);
U48 : OR2	PORT MAP(
	I1 => GE14_15, 
	I0 => GT_15, 
	O => GTH
);
U16 : AND3B1	PORT MAP(
	I0 => B6, 
	I1 => EQ_4, 
	I2 => A6, 
	O => GE6_7
);
U49 : NOR2	PORT MAP(
	I1 => LT12_13, 
	I0 => GT12_13, 
	O => EQ12_13
);
U17 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => GT_7
);
U18 : AND2B1	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => LT_7
);
U19 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => EQ_4
);
U80 : OR2	PORT MAP(
	I1 => GE4_5, 
	I0 => GT_5, 
	O => GT4_5
);
U1 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U2 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U50 : AND3B1	PORT MAP(
	I0 => A12, 
	I1 => EQ_13, 
	I2 => B12, 
	O => LE12_13
);
U3 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U51 : AND3B1	PORT MAP(
	I0 => B12, 
	I1 => EQ_13, 
	I2 => A12, 
	O => GE12_13
);
U4 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U52 : AND2B1	PORT MAP(
	I0 => B13, 
	I1 => A13, 
	O => GT_13
);
U20 : OR2	PORT MAP(
	I1 => LE6_7, 
	I0 => LT_7, 
	O => LT6_7
);
U5 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U53 : AND2B1	PORT MAP(
	I0 => A13, 
	I1 => B13, 
	O => LT_13
);
U21 : OR2	PORT MAP(
	I1 => GE6_7, 
	I0 => GT_7, 
	O => GT6_7
);
U6 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT0_1
);
U54 : XNOR2	PORT MAP(
	I1 => B13, 
	I0 => A13, 
	O => EQ_13
);
U22 : NOR2	PORT MAP(
	I1 => LT4_5, 
	I0 => GT4_5, 
	O => EQ4_5
);
U7 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT0_1
);
U55 : AND4	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => EQ10_11, 
	I3 => LT8_9, 
	O => LTE
);
U23 : AND3B1	PORT MAP(
	I0 => A4, 
	I1 => EQ_3, 
	I2 => B4, 
	O => LE4_5
);
U8 : NOR2	PORT MAP(
	I1 => LT2_3, 
	I0 => GT2_3, 
	O => EQ2_3
);
U56 : AND4	PORT MAP(
	I0 => GT8_9, 
	I1 => EQ10_11, 
	I2 => EQ12_13, 
	I3 => EQ14_15, 
	O => GTE
);
U24 : AND3B1	PORT MAP(
	I0 => B4, 
	I1 => EQ_3, 
	I2 => A4, 
	O => GE4_5
);
U9 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => EQ_2, 
	I2 => B2, 
	O => LE2_3
);
U57 : AND3	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => LT10_11, 
	O => LTF
);
U25 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => GT_5
);
U58 : AND3	PORT MAP(
	I0 => GT10_11, 
	I1 => EQ12_13, 
	I2 => EQ14_15, 
	O => GTF
);
U26 : AND2B1	PORT MAP(
	I0 => A5, 
	I1 => B5, 
	O => LT_5
);
U59 : AND2	PORT MAP(
	I0 => EQ14_15, 
	I1 => LT12_13, 
	O => LTG
);
U27 : XNOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => EQ_3
);
U28 : AND3B1	PORT MAP(
	I0 => A8, 
	I1 => EQ_9, 
	I2 => B8, 
	O => LE8_9
);
U29 : AND3B1	PORT MAP(
	I0 => B8, 
	I1 => EQ_9, 
	I2 => A8, 
	O => GE8_9
);
U60 : AND2	PORT MAP(
	I0 => GT12_13, 
	I1 => EQ14_15, 
	O => GTG
);
U61 : NOR2	PORT MAP(
	I1 => LT8_9, 
	I0 => GT8_9, 
	O => EQ8_9
);
U62 : AND4	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => EQ10_11, 
	I3 => EQ8_9, 
	O => EQ8_15
);
U30 : AND2B1	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => GT_9
);
U63 : AND2	PORT MAP(
	I0 => GT6_7, 
	I1 => EQ8_15, 
	O => GTD
);
U31 : AND2B1	PORT MAP(
	I0 => A9, 
	I1 => B9, 
	O => LT_9
);
U64 : AND2	PORT MAP(
	I0 => EQ8_15, 
	I1 => LT6_7, 
	O => LTD
);
U32 : XNOR2	PORT MAP(
	I1 => B9, 
	I0 => A9, 
	O => EQ_9
);
U65 : AND5	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => EQ4_5, 
	I3 => EQ2_3, 
	I4 => LT0_1, 
	O => LTA
);
U33 : OR2	PORT MAP(
	I1 => LE8_9, 
	I0 => LT_9, 
	O => LT8_9
);
U66 : AND5	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	I2 => EQ4_5, 
	I3 => EQ6_7, 
	I4 => EQ8_15, 
	O => GTA
);
U34 : OR2	PORT MAP(
	I1 => GE8_9, 
	I0 => GT_9, 
	O => GT8_9
);
U67 : AND4	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => EQ4_5, 
	I3 => LT2_3, 
	O => LTB
);
U35 : NOR2	PORT MAP(
	I1 => LT10_11, 
	I0 => GT10_11, 
	O => EQ10_11
);
U68 : AND4	PORT MAP(
	I0 => GT2_3, 
	I1 => EQ4_5, 
	I2 => EQ6_7, 
	I3 => EQ8_15, 
	O => GTB
);
U36 : AND3B1	PORT MAP(
	I0 => A10, 
	I1 => EQ_11, 
	I2 => B10, 
	O => LE10_11
);
U69 : AND3	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => LT4_5, 
	O => LTC
);
U37 : AND3B1	PORT MAP(
	I0 => B10, 
	I1 => EQ_11, 
	I2 => A10, 
	O => GE10_11
);
U38 : AND2B1	PORT MAP(
	I0 => B11, 
	I1 => A11, 
	O => GT_11
);
U39 : AND2B1	PORT MAP(
	I0 => A11, 
	I1 => B11, 
	O => LT_11
);
U70 : AND3	PORT MAP(
	I0 => GT4_5, 
	I1 => EQ6_7, 
	I2 => EQ8_15, 
	O => GTC
);
U40 : XNOR2	PORT MAP(
	I1 => B11, 
	I0 => A11, 
	O => EQ_11
);
U73 : OR2	PORT MAP(
	I1 => LE10_11, 
	I0 => LT_11, 
	O => LT10_11
);
U41 : NOR2	PORT MAP(
	I1 => LTH, 
	I0 => GTH, 
	O => EQ14_15
);
U74 : OR2	PORT MAP(
	I1 => GE10_11, 
	I0 => GT_11, 
	O => GT10_11
);
U42 : AND3B1	PORT MAP(
	I0 => A14, 
	I1 => EQ_15, 
	I2 => B14, 
	O => LE14_15
);
U10 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => EQ_2, 
	I2 => A2, 
	O => GE2_3
);
U75 : OR2	PORT MAP(
	I1 => LE12_13, 
	I0 => LT_13, 
	O => LT12_13
);
U43 : AND3B1	PORT MAP(
	I0 => B14, 
	I1 => EQ_15, 
	I2 => A14, 
	O => GE14_15
);
U11 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => GT_3
);
U76 : OR2	PORT MAP(
	I1 => GE12_13, 
	I0 => GT_13, 
	O => GT12_13
);
U44 : AND2B1	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	O => GT_15
);
U12 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => LT_3
);
U71 : OR8	PORT MAP(
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
U72 : OR8	PORT MAP(
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
SIGNAL N00007 : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A2 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A0 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U1 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => A0
);
U2 : OR3	PORT MAP(
	I2 => A0, 
	I1 => A1, 
	I0 => A2, 
	O => AD
);
U3 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => A1
);
U4 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => A2
);
U5 : FDC	PORT MAP(
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
ENTITY M2_1B2 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END M2_1B2;



ARCHITECTURE STRUCTURE OF M2_1B2 IS

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

COMPONENT AND2B2
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
U1 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U2 : AND2B1	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
);
U3 : AND2B2	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
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

COMPONENT OFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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

COMPONENT NAND3B2
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
U1 : NAND3B2	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y1
);
U2 : NAND3B2	PORT MAP(
	I0 => G, 
	I1 => A, 
	I2 => B, 
	O => Y2
);
U3 : NAND3B3	PORT MAP(
	I0 => G, 
	I1 => B, 
	I2 => A, 
	O => Y0
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
SIGNAL N00038 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL T6 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00096;
Q0<=N00022;
Q1<=N00029;
Q2<=N00038;
Q3<=N00048;
Q4<=N00059;
Q5<=N00068;
Q6<=N00078;
Q7<=N00089;
U13 : AND2	PORT MAP(
	I0 => N00059, 
	I1 => T4, 
	O => T5
);
U14 : AND3	PORT MAP(
	I0 => N00068, 
	I1 => N00059, 
	I2 => T4, 
	O => T6
);
U15 : AND4	PORT MAP(
	I0 => N00078, 
	I1 => N00068, 
	I2 => N00059, 
	I3 => T4, 
	O => T7
);
U16 : AND5	PORT MAP(
	I0 => N00089, 
	I1 => N00078, 
	I2 => N00068, 
	I3 => N00059, 
	I4 => T4, 
	O => N00096
);
U17 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00096, 
	O => CEO
);
U1 : AND2	PORT MAP(
	I0 => N00029, 
	I1 => N00022, 
	O => T2
);
U2 : AND3	PORT MAP(
	I0 => N00038, 
	I1 => N00029, 
	I2 => N00022, 
	O => T3
);
U3 : AND4	PORT MAP(
	I0 => N00022, 
	I1 => N00029, 
	I2 => N00038, 
	I3 => N00048, 
	O => T4
);
U8 : VCC	PORT MAP(
	P => N00021
);
U11 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00068, 
	CLR => CLR
);
U4 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00048, 
	CLR => CLR
);
U12 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00059, 
	CLR => CLR
);
U5 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00038, 
	CLR => CLR
);
U6 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00022, 
	CE => CE, 
	C => C, 
	Q => N00029, 
	CLR => CLR
);
U7 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00021, 
	CE => CE, 
	C => C, 
	Q => N00022, 
	CLR => CLR
);
U9 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00089, 
	CLR => CLR
);
U10 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00078, 
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
SIGNAL AB4 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB8B : std_logic;
SIGNAL ABCF : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB15 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB11 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB9 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB12 : std_logic;
SIGNAL AB10 : std_logic;
SIGNAL AB14 : std_logic;
SIGNAL AB13 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB8 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : XNOR2	PORT MAP(
	I1 => A12, 
	I0 => B12, 
	O => AB12
);
U14 : XNOR2	PORT MAP(
	I1 => A13, 
	I0 => B13, 
	O => AB13
);
U15 : XNOR2	PORT MAP(
	I1 => A14, 
	I0 => B14, 
	O => AB14
);
U16 : XNOR2	PORT MAP(
	I1 => A15, 
	I0 => B15, 
	O => AB15
);
U17 : AND4	PORT MAP(
	I0 => AB15, 
	I1 => AB14, 
	I2 => AB13, 
	I3 => AB12, 
	O => ABCF
);
U18 : AND4	PORT MAP(
	I0 => AB11, 
	I1 => AB10, 
	I2 => AB9, 
	I3 => AB8, 
	O => AB8B
);
U19 : AND4	PORT MAP(
	I0 => AB7, 
	I1 => AB6, 
	I2 => AB5, 
	I3 => AB4, 
	O => AB47
);
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
U3 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U4 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U20 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => AB03
);
U5 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => AB4
);
U21 : AND4	PORT MAP(
	I0 => ABCF, 
	I1 => AB8B, 
	I2 => AB47, 
	I3 => AB03, 
	O => EQ
);
U6 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => AB5
);
U7 : XNOR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => AB6
);
U8 : XNOR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => AB7
);
U9 : XNOR2	PORT MAP(
	I1 => A8, 
	I0 => B8, 
	O => AB8
);
U10 : XNOR2	PORT MAP(
	I1 => A9, 
	I0 => B9, 
	O => AB9
);
U11 : XNOR2	PORT MAP(
	I1 => A10, 
	I0 => B10, 
	O => AB10
);
U12 : XNOR2	PORT MAP(
	I1 => A11, 
	I0 => B11, 
	O => AB11
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
SIGNAL AB3 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB2 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND4	PORT MAP(
	I0 => AB3, 
	I1 => AB2, 
	I2 => AB1, 
	I3 => AB0, 
	O => EQ
);
U2 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => AB1
);
U3 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => AB2
);
U4 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => AB3
);
U5 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => AB0
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
SIGNAL N00008 : std_logic;
SIGNAL CB : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00008
);
U2 : GND	PORT MAP(
	G => N00011
);
U3 : INV	PORT MAP(
	O => CB, 
	I => C
);
U4 : FDCE	PORT MAP(
	D => D, 
	CE => N00008, 
	C => CB, 
	CLR => N00011, 
	Q => Q
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
SIGNAL TQ : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL CE_S : std_logic;
SIGNAL D_S : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U1 : OR2	PORT MAP(
	I1 => S, 
	I0 => CE, 
	O => CE_S
);
U2 : OR2	PORT MAP(
	I1 => TQ, 
	I0 => S, 
	O => D_S
);
U3 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U4 : FDRE	PORT MAP(
	D => D_S, 
	CE => CE_S, 
	C => C, 
	R => R, 
	Q => N00006
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

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I48 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR5	PORT MAP(
	I4 => I8, 
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I48
);
U2 : OR5	PORT MAP(
	I4 => I48, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

COMPONENT OR2B1
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
U1 : OR2B1	PORT MAP(
	I1 => I0B1B, 
	I0 => I2, 
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
	O => O3, 
	I => I3
);
U2 : OBUF	PORT MAP(
	O => O2, 
	I => I2
);
U3 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U4 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY OBUFE IS PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
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
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => N00005, 
	I => E
);
U2 : OBUFT	PORT MAP(
	T => N00005, 
	I => I, 
	O => O
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic
); END OBUFT8;



ARCHITECTURE STRUCTURE OF OBUFT8 IS

-- COMPONENTS

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OBUFT	PORT MAP(
	T => T, 
	I => I7, 
	O => O7
);
U2 : OBUFT	PORT MAP(
	T => T, 
	I => I6, 
	O => O6
);
U3 : OBUFT	PORT MAP(
	T => T, 
	I => I5, 
	O => O5
);
U4 : OBUFT	PORT MAP(
	T => T, 
	I => I4, 
	O => O4
);
U5 : OBUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
U6 : OBUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
U7 : OBUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
U8 : OBUFT	PORT MAP(
	T => T, 
	I => I0, 
	O => O0
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic;
	O8 : OUT   std_logic;
	O9 : OUT   std_logic;
	O10 : OUT   std_logic;
	O11 : OUT   std_logic;
	O12 : OUT   std_logic;
	O13 : OUT   std_logic;
	O14 : OUT   std_logic;
	O15 : OUT   std_logic
); END OFDT16;



ARCHITECTURE STRUCTURE OF OFDT16 IS

-- COMPONENTS

COMPONENT OFDT
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : OFDT	PORT MAP(
	T => T, 
	D => D11, 
	C => C, 
	O => O11
);
U14 : OFDT	PORT MAP(
	T => T, 
	D => D10, 
	C => C, 
	O => O10
);
U15 : OFDT	PORT MAP(
	T => T, 
	D => D9, 
	C => C, 
	O => O9
);
U16 : OFDT	PORT MAP(
	T => T, 
	D => D8, 
	C => C, 
	O => O8
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
U9 : OFDT	PORT MAP(
	T => T, 
	D => D15, 
	C => C, 
	O => O15
);
U10 : OFDT	PORT MAP(
	T => T, 
	D => D14, 
	C => C, 
	O => O14
);
U11 : OFDT	PORT MAP(
	T => T, 
	D => D13, 
	C => C, 
	O => O13
);
U12 : OFDT	PORT MAP(
	T => T, 
	D => D12, 
	C => C, 
	O => O12
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY OFDT_1 IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDT_1;



ARCHITECTURE STRUCTURE OF OFDT_1 IS

-- COMPONENTS

COMPONENT OFDT
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
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
U1 : OFDT	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
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
SIGNAL N00044 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD15 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00042;
Q1<=N00058;
Q2<=N00074;
Q3<=N00090;
Q4<=N00106;
Q5<=N00122;
Q6<=N00138;
Q7<=N00039;
Q8<=N00044;
Q9<=N00060;
Q10<=N00076;
Q11<=N00092;
Q12<=N00108;
Q13<=N00124;
Q14<=N00140;
U33 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => N00036
);
U22 : FDRE	PORT MAP(
	D => MD10, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00076
);
U3 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U11 : M2_1	PORT MAP(
	D0 => N00122, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U23 : FDRE	PORT MAP(
	D => MD9, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00060
);
U4 : M2_1	PORT MAP(
	D0 => N00074, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U12 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U24 : FDRE	PORT MAP(
	D => MD8, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00044
);
U5 : FDRE	PORT MAP(
	D => MD3, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00090
);
U13 : FDRE	PORT MAP(
	D => MD7, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00039
);
U25 : M2_1	PORT MAP(
	D0 => N00092, 
	D1 => D12, 
	S0 => L, 
	O => MD12
);
U6 : FDRE	PORT MAP(
	D => MD2, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00074
);
U14 : FDRE	PORT MAP(
	D => MD6, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00138
);
U15 : FDRE	PORT MAP(
	D => MD5, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00122
);
U26 : M2_1	PORT MAP(
	D0 => N00108, 
	D1 => D13, 
	S0 => L, 
	O => MD13
);
U7 : FDRE	PORT MAP(
	D => MD1, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00058
);
U16 : FDRE	PORT MAP(
	D => MD4, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00106
);
U27 : M2_1	PORT MAP(
	D0 => N00124, 
	D1 => D14, 
	S0 => L, 
	O => MD14
);
U8 : FDRE	PORT MAP(
	D => MD0, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00042
);
U17 : M2_1	PORT MAP(
	D0 => N00039, 
	D1 => D8, 
	S0 => L, 
	O => MD8
);
U28 : M2_1	PORT MAP(
	D0 => N00140, 
	D1 => D15, 
	S0 => L, 
	O => MD15
);
U9 : M2_1	PORT MAP(
	D0 => N00090, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U29 : FDRE	PORT MAP(
	D => MD15, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => Q15
);
U18 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D9, 
	S0 => L, 
	O => MD9
);
U19 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D10, 
	S0 => L, 
	O => MD10
);
U30 : FDRE	PORT MAP(
	D => MD14, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00140
);
U31 : FDRE	PORT MAP(
	D => MD13, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00124
);
U20 : M2_1	PORT MAP(
	D0 => N00076, 
	D1 => D11, 
	S0 => L, 
	O => MD11
);
U1 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U32 : FDRE	PORT MAP(
	D => MD12, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00108
);
U21 : FDRE	PORT MAP(
	D => MD11, 
	CE => N00036, 
	C => C, 
	R => R, 
	Q => N00092
);
U2 : M2_1	PORT MAP(
	D0 => N00042, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U10 : M2_1	PORT MAP(
	D0 => N00106, 
	D1 => D5, 
	S0 => L, 
	O => MD5
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

COMPONENT NAND5B1
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT NAND5B2
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
SIGNAL N00019 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : NAND5B1	PORT MAP(
	I0 => B, 
	I1 => A, 
	I2 => C, 
	I3 => D, 
	I4 => N00019, 
	O => Y13
);
U14 : NAND5B1	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => C, 
	I3 => D, 
	I4 => N00019, 
	O => Y14
);
U15 : NAND5	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00019, 
	O => Y15
);
U16 : NOR2	PORT MAP(
	I1 => G1, 
	I0 => G2, 
	O => N00019
);
U17 : NAND5B2	PORT MAP(
	I0 => D, 
	I1 => B, 
	I2 => N00019, 
	I3 => C, 
	I4 => A, 
	O => Y5
);
U1 : NAND5B4	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00019, 
	O => Y0
);
U2 : NAND5B3	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => D, 
	I3 => A, 
	I4 => N00019, 
	O => Y1
);
U3 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => D, 
	I2 => C, 
	I3 => B, 
	I4 => N00019, 
	O => Y2
);
U4 : NAND5B2	PORT MAP(
	I0 => C, 
	I1 => D, 
	I2 => N00019, 
	I3 => A, 
	I4 => B, 
	O => Y3
);
U5 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => D, 
	I3 => C, 
	I4 => N00019, 
	O => Y4
);
U6 : NAND5B2	PORT MAP(
	I0 => D, 
	I1 => A, 
	I2 => N00019, 
	I3 => C, 
	I4 => B, 
	O => Y6
);
U7 : NAND5B1	PORT MAP(
	I0 => D, 
	I1 => C, 
	I2 => B, 
	I3 => A, 
	I4 => N00019, 
	O => Y7
);
U8 : NAND5B3	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => C, 
	I3 => D, 
	I4 => N00019, 
	O => Y8
);
U9 : NAND5B2	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => N00019, 
	I3 => D, 
	I4 => A, 
	O => Y9
);
U10 : NAND5B2	PORT MAP(
	I0 => A, 
	I1 => C, 
	I2 => N00019, 
	I3 => D, 
	I4 => B, 
	O => Y10
);
U11 : NAND5B1	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => D, 
	I4 => N00019, 
	O => Y11
);
U12 : NAND5B2	PORT MAP(
	I0 => A, 
	I1 => B, 
	I2 => N00019, 
	I3 => D, 
	I4 => C, 
	O => Y12
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
SIGNAL Y1B : std_logic;
SIGNAL M2C23 : std_logic;
SIGNAL M1C01 : std_logic;
SIGNAL Y2B : std_logic;
SIGNAL M1C23 : std_logic;
SIGNAL G1B : std_logic;
SIGNAL G2B : std_logic;
SIGNAL M2C01 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : INV	PORT MAP(
	O => G2B, 
	I => G2
);
U8 : INV	PORT MAP(
	O => G1B, 
	I => G1
);
U9 : INV	PORT MAP(
	O => Y1, 
	I => Y1B
);
U10 : INV	PORT MAP(
	O => Y2, 
	I => Y2B
);
U3 : M2_1	PORT MAP(
	D0 => I2C0, 
	D1 => I2C1, 
	S0 => A, 
	O => M2C01
);
U4 : M2_1	PORT MAP(
	D0 => I2C2, 
	D1 => I2C3, 
	S0 => A, 
	O => M2C23
);
U5 : M2_1E	PORT MAP(
	D0 => M1C01, 
	D1 => M1C23, 
	S0 => B, 
	O => Y1B, 
	E => G1B
);
U6 : M2_1E	PORT MAP(
	D0 => M2C01, 
	D1 => M2C23, 
	S0 => B, 
	O => Y2B, 
	E => G2B
);
U1 : M2_1	PORT MAP(
	D0 => I1C0, 
	D1 => I1C1, 
	S0 => A, 
	O => M1C01
);
U2 : M2_1	PORT MAP(
	D0 => I1C2, 
	D1 => I1C3, 
	S0 => A, 
	O => M1C23
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
SIGNAL N00005 : std_logic;
SIGNAL N00004 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00004;
U1 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => N00005
);
U2 : FDC	PORT MAP(
	D => N00005, 
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

COMPONENT IFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : ILD	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12
);
U14 : ILD	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13
);
U15 : ILD	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14
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
U9 : ILD	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8
);
U10 : ILD	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9
);
U11 : ILD	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10
);
U12 : ILD	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11
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

COMPONENT ILD
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ILD	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q
);
U2 : INV	PORT MAP(
	O => GB, 
	I => G
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
U2 : OR5	PORT MAP(
	I4 => I47, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL I23 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I01, 
	O => O
);
U2 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
);
U3 : AND2	PORT MAP(
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I0B1 : std_logic;
SIGNAL I23 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => I23, 
	I0 => I0B1, 
	O => O
);
U2 : AND2B1	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	O => I0B1
);
U3 : AND2	PORT MAP(
	I0 => I2, 
	I1 => I3, 
	O => I23
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
SIGNAL N00041 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL L_LEFT : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00021;
Q1<=N00019;
Q2<=N00031;
Q3<=N00041;
U13 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => L_OR_CE
);
U14 : OR2	PORT MAP(
	I1 => L, 
	I0 => LEFT, 
	O => L_LEFT
);
U1 : FDCE	PORT MAP(
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00021
);
U2 : FDCE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00019
);
U3 : FDCE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00031
);
U4 : FDCE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U11 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => D2, 
	S0 => L, 
	O => MDL2
);
U12 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => D3, 
	S0 => L, 
	O => MDL3
);
U5 : M2_1	PORT MAP(
	D0 => N00019, 
	D1 => MDL0, 
	S0 => L_LEFT, 
	O => MDR0
);
U6 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => MDL1, 
	S0 => L_LEFT, 
	O => MDR1
);
U7 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U8 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U9 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U10 : M2_1	PORT MAP(
	D0 => N00021, 
	D1 => D1, 
	S0 => L, 
	O => MDL1
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
SIGNAL M1_01 : std_logic;
SIGNAL M2_01 : std_logic;
SIGNAL E1 : std_logic;
SIGNAL M2_23 : std_logic;
SIGNAL E2 : std_logic;
SIGNAL M1_23 : std_logic;

-- GATE INSTANCES

BEGIN
U7 : INV	PORT MAP(
	O => E1, 
	I => G1
);
U8 : INV	PORT MAP(
	O => E2, 
	I => G2
);
U3 : M2_1	PORT MAP(
	D0 => I2C0, 
	D1 => I2C1, 
	S0 => A, 
	O => M2_01
);
U4 : M2_1	PORT MAP(
	D0 => I2C2, 
	D1 => I2C3, 
	S0 => A, 
	O => M2_23
);
U5 : M2_1E	PORT MAP(
	D0 => M1_01, 
	D1 => M1_23, 
	S0 => B, 
	O => Y1, 
	E => E1
);
U6 : M2_1E	PORT MAP(
	D0 => M2_01, 
	D1 => M2_23, 
	S0 => B, 
	O => Y2, 
	E => E2
);
U1 : M2_1	PORT MAP(
	D0 => I1C0, 
	D1 => I1C1, 
	S0 => A, 
	O => M1_01
);
U2 : M2_1	PORT MAP(
	D0 => I1C2, 
	D1 => I1C3, 
	S0 => A, 
	O => M1_23
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00046 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL SLI : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00015;
QB<=N00021;
QC<=N00026;
QD<=N00031;
QE<=N00036;
QF<=N00041;
QG<=N00046;
U1 : FDCE	PORT MAP(
	D => SLI, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00015
);
U2 : FDCE	PORT MAP(
	D => N00021, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00026
);
U3 : FDCE	PORT MAP(
	D => N00026, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00031
);
U4 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U5 : VCC	PORT MAP(
	P => N00017
);
U6 : AND2	PORT MAP(
	I0 => B, 
	I1 => A, 
	O => SLI
);
U7 : FDCE	PORT MAP(
	D => N00031, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00036
);
U8 : FDCE	PORT MAP(
	D => N00036, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00041
);
U9 : FDCE	PORT MAP(
	D => N00041, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00046
);
U10 : FDCE	PORT MAP(
	D => N00046, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => QH
);
U11 : FDCE	PORT MAP(
	D => N00015, 
	CE => N00017, 
	C => CK, 
	CLR => CLRB, 
	Q => N00021
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

COMPONENT XNOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => N00006
);
U2 : XNOR5	PORT MAP(
	I4 => N00006, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL TQ : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL MD : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U1 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U3 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => L_CE
);
U4 : FDCE	PORT MAP(
	D => MD, 
	CE => L_CE, 
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
ENTITY M2_1 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END M2_1;



ARCHITECTURE STRUCTURE OF M2_1 IS

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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => N00006, 
	I0 => N00010, 
	O => O
);
U2 : AND2B1	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => N00006
);
U3 : AND2	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => N00010
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
SIGNAL M0 : std_logic;
SIGNAL M1 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND2	PORT MAP(
	I0 => D1, 
	I1 => S0, 
	O => M1
);
U2 : OR2	PORT MAP(
	I1 => M0, 
	I0 => M1, 
	O => O
);
U3 : AND2B2	PORT MAP(
	I0 => S0, 
	I1 => D0, 
	O => M0
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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I48 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND5	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	I4 => I8, 
	O => I48
);
U2 : NAND5	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	I4 => I48, 
	O => O
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

COMPONENT AND5
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
SIGNAL I48 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND5	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	I4 => I8, 
	O => I48
);
U2 : AND5	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	I4 => I48, 
	O => O
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic
); END BUFT4;



ARCHITECTURE STRUCTURE OF BUFT4 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
XU1 : BUFT	PORT MAP(
	T => T, 
	I => I3, 
	O => O3
);
XU2 : BUFT	PORT MAP(
	T => T, 
	I => I2, 
	O => O2
);
XU3 : BUFT	PORT MAP(
	T => T, 
	I => I1, 
	O => O1
);
XU4 : BUFT	PORT MAP(
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
SIGNAL N00178 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00183 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00156 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL T12 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00183;
TC<=N00196;
Q0<=N00039;
Q1<=N00056;
Q2<=N00075;
Q3<=N00096;
Q4<=N00118;
Q5<=N00136;
Q6<=N00156;
Q7<=N00178;
Q8<=N00045;
Q9<=N00061;
Q10<=N00080;
Q11<=N00101;
Q12<=N00123;
Q13<=N00141;
Q14<=N00162;
U13 : AND2	PORT MAP(
	I0 => N00118, 
	I1 => T4, 
	O => T5
);
U14 : AND3	PORT MAP(
	I0 => N00136, 
	I1 => N00118, 
	I2 => T4, 
	O => T6
);
U15 : AND4	PORT MAP(
	I0 => N00156, 
	I1 => N00136, 
	I2 => N00118, 
	I3 => T4, 
	O => T7
);
U16 : AND5	PORT MAP(
	I0 => N00178, 
	I1 => N00156, 
	I2 => N00136, 
	I3 => N00118, 
	I4 => T4, 
	O => T8
);
U1 : AND2	PORT MAP(
	I0 => N00056, 
	I1 => N00039, 
	O => T2
);
U2 : AND3	PORT MAP(
	I0 => N00075, 
	I1 => N00056, 
	I2 => N00039, 
	O => T3
);
U3 : AND4	PORT MAP(
	I0 => N00039, 
	I1 => N00056, 
	I2 => N00075, 
	I3 => N00096, 
	O => T4
);
U8 : VCC	PORT MAP(
	P => N00038
);
U25 : AND2	PORT MAP(
	I0 => N00123, 
	I1 => T12, 
	O => T13
);
U26 : AND3	PORT MAP(
	I0 => N00141, 
	I1 => N00123, 
	I2 => T12, 
	O => T14
);
U27 : AND4	PORT MAP(
	I0 => N00162, 
	I1 => N00141, 
	I2 => N00123, 
	I3 => T12, 
	O => T15
);
U28 : AND5	PORT MAP(
	I0 => N00183, 
	I1 => N00162, 
	I2 => N00141, 
	I3 => N00123, 
	I4 => T12, 
	O => N00196
);
U29 : AND2	PORT MAP(
	I0 => N00045, 
	I1 => T8, 
	O => T9
);
U30 : AND3	PORT MAP(
	I0 => N00061, 
	I1 => N00045, 
	I2 => T8, 
	O => T10
);
U31 : AND4	PORT MAP(
	I0 => N00080, 
	I1 => N00061, 
	I2 => N00045, 
	I3 => T8, 
	O => T11
);
U32 : AND5	PORT MAP(
	I0 => N00101, 
	I1 => N00080, 
	I2 => N00061, 
	I3 => N00045, 
	I4 => T8, 
	O => T12
);
U33 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00196, 
	O => CEO
);
U22 : FTCLE	PORT MAP(
	D => D14, 
	L => L, 
	T => T14, 
	CE => CE, 
	C => C, 
	Q => N00162, 
	CLR => CLR
);
U11 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00136, 
	CLR => CLR
);
U23 : FTCLE	PORT MAP(
	D => D13, 
	L => L, 
	T => T13, 
	CE => CE, 
	C => C, 
	Q => N00141, 
	CLR => CLR
);
U4 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00096, 
	CLR => CLR
);
U12 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00118, 
	CLR => CLR
);
U24 : FTCLE	PORT MAP(
	D => D12, 
	L => L, 
	T => T12, 
	CE => CE, 
	C => C, 
	Q => N00123, 
	CLR => CLR
);
U5 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00075, 
	CLR => CLR
);
U6 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00039, 
	CE => CE, 
	C => C, 
	Q => N00056, 
	CLR => CLR
);
U7 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00038, 
	CE => CE, 
	C => C, 
	Q => N00039, 
	CLR => CLR
);
U17 : FTCLE	PORT MAP(
	D => D11, 
	L => L, 
	T => T11, 
	CE => CE, 
	C => C, 
	Q => N00101, 
	CLR => CLR
);
U9 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00178, 
	CLR => CLR
);
U18 : FTCLE	PORT MAP(
	D => D10, 
	L => L, 
	T => T10, 
	CE => CE, 
	C => C, 
	Q => N00080, 
	CLR => CLR
);
U19 : FTCLE	PORT MAP(
	D => D9, 
	L => L, 
	T => T9, 
	CE => CE, 
	C => C, 
	Q => N00061, 
	CLR => CLR
);
U20 : FTCLE	PORT MAP(
	D => D8, 
	L => L, 
	T => T8, 
	CE => CE, 
	C => C, 
	Q => N00045, 
	CLR => CLR
);
U21 : FTCLE	PORT MAP(
	D => D15, 
	L => L, 
	T => T15, 
	CE => CE, 
	C => C, 
	Q => N00183, 
	CLR => CLR
);
U10 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00156, 
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

COMPONENT FTCE	 PORT (
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00018 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00018;
Q0<=N00008;
Q1<=N00013;
U3 : AND2	PORT MAP(
	I0 => N00013, 
	I1 => N00008, 
	O => N00018
);
U4 : VCC	PORT MAP(
	P => N00007
);
U5 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00018, 
	O => CEO
);
U1 : FTCE	PORT MAP(
	T => N00007, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00008
);
U2 : FTCE	PORT MAP(
	T => N00008, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00013
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

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D0 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL OX3 : std_logic;
SIGNAL AX1 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL A03B : std_logic;
SIGNAL A03A : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00058;
Q0<=N00017;
Q1<=N00028;
Q2<=N00040;
Q3<=N00026;
U13 : FDCE	PORT MAP(
	D => D3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00026
);
U14 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00058, 
	O => CEO
);
U15 : AND4B2	PORT MAP(
	I0 => N00040, 
	I1 => N00028, 
	I2 => N00017, 
	I3 => N00026, 
	O => N00058
);
U1 : INV	PORT MAP(
	O => D0, 
	I => N00017
);
U2 : XOR2	PORT MAP(
	I1 => AX1, 
	I0 => N00028, 
	O => D1
);
U3 : XOR2	PORT MAP(
	I1 => AX2, 
	I0 => N00040, 
	O => D2
);
U4 : XOR2	PORT MAP(
	I1 => OX3, 
	I0 => N00026, 
	O => D3
);
U5 : AND2	PORT MAP(
	I0 => N00028, 
	I1 => N00017, 
	O => AX2
);
U6 : AND2B1	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => AX1
);
U7 : OR2	PORT MAP(
	I1 => A03B, 
	I0 => A03A, 
	O => OX3
);
U8 : AND2	PORT MAP(
	I0 => N00026, 
	I1 => N00017, 
	O => A03A
);
U9 : AND3	PORT MAP(
	I0 => N00040, 
	I1 => N00017, 
	I2 => N00028, 
	O => A03B
);
U10 : FDCE	PORT MAP(
	D => D0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00017
);
U11 : FDCE	PORT MAP(
	D => D1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00028
);
U12 : FDCE	PORT MAP(
	D => D2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00040
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
SIGNAL N00013 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00035 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00015;
Q1<=N00025;
Q2<=N00035;
Q3<=N00012;
Q4<=N00013;
Q5<=N00024;
Q6<=N00034;
Q7<=N00011;
U1 : INV	PORT MAP(
	O => Q7B, 
	I => N00011
);
U3 : FDRE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00024
);
U4 : FDRE	PORT MAP(
	D => N00024, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00034
);
U5 : FDRE	PORT MAP(
	D => N00034, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00011
);
U6 : FDRE	PORT MAP(
	D => N00035, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00012
);
U7 : FDRE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00035
);
U8 : FDRE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00025
);
U9 : FDRE	PORT MAP(
	D => Q7B, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00015
);
U2 : FDRE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00013
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
SIGNAL QD : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A0 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U1 : AND3B2	PORT MAP(
	I0 => CE, 
	I1 => R, 
	I2 => N00006, 
	O => A0
);
U2 : OR2	PORT MAP(
	I1 => A0, 
	I0 => A1, 
	O => QD
);
U3 : AND3B1	PORT MAP(
	I0 => R, 
	I1 => D, 
	I2 => CE, 
	O => A1
);
U4 : FD	PORT MAP(
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
SIGNAL CE_S : std_logic;
SIGNAL D_S : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => S, 
	I0 => CE, 
	O => CE_S
);
U2 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => D_S
);
U3 : FDRE	PORT MAP(
	D => D_S, 
	CE => CE_S, 
	C => C, 
	R => R, 
	Q => Q
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

COMPONENT XNOR4
	PORT (
	I3 : IN std_logic;
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
U1 : XOR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U2 : XNOR4	PORT MAP(
	I3 => I35, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL LE2_3 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL EQ6_7 : std_logic;
SIGNAL EQ4_5 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL N01218 : std_logic;
SIGNAL N01219 : std_logic;
SIGNAL GT_5 : std_logic;
SIGNAL LE6_7 : std_logic;
SIGNAL GT2_3 : std_logic;
SIGNAL GT_7 : std_logic;
SIGNAL LT_5 : std_logic;
SIGNAL GE4_5 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL GT_3 : std_logic;
SIGNAL LT2_3 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL GE6_7 : std_logic;
SIGNAL LT4_5 : std_logic;
SIGNAL LT_7 : std_logic;
SIGNAL GT4_5 : std_logic;
SIGNAL GTC : std_logic;
SIGNAL GTB : std_logic;
SIGNAL LTA : std_logic;
SIGNAL GTD : std_logic;
SIGNAL LTD : std_logic;
SIGNAL LTB : std_logic;
SIGNAL GTA : std_logic;
SIGNAL LTC : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL LE4_5 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL EQ_7 : std_logic;
SIGNAL EQ_5 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL EQ_1 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LT2_3
);
U14 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GT2_3
);
U15 : NOR2	PORT MAP(
	I1 => LTD, 
	I0 => GTD, 
	O => EQ6_7
);
U16 : AND3B1	PORT MAP(
	I0 => A6, 
	I1 => EQ_7, 
	I2 => B6, 
	O => LE6_7
);
U17 : AND3B1	PORT MAP(
	I0 => B6, 
	I1 => EQ_7, 
	I2 => A6, 
	O => GE6_7
);
U18 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => GT_7
);
U19 : AND2B1	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => LT_7
);
U1 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => EQ_1, 
	I2 => B0, 
	O => LE0_1
);
U2 : AND3B1	PORT MAP(
	I0 => B0, 
	I1 => EQ_1, 
	I2 => A0, 
	O => GE0_1
);
U3 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => GT_1
);
U4 : AND2B1	PORT MAP(
	I0 => A1, 
	I1 => B1, 
	O => LT_1
);
U20 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => A7, 
	O => EQ_7
);
U5 : XNOR2	PORT MAP(
	I1 => B1, 
	I0 => A1, 
	O => EQ_1
);
U21 : OR2	PORT MAP(
	I1 => LE6_7, 
	I0 => LT_7, 
	O => LTD
);
U6 : OR2	PORT MAP(
	I1 => LE0_1, 
	I0 => LT_1, 
	O => LT0_1
);
U22 : OR2	PORT MAP(
	I1 => GE6_7, 
	I0 => GT_7, 
	O => GTD
);
U7 : OR2	PORT MAP(
	I1 => GE0_1, 
	I0 => GT_1, 
	O => GT0_1
);
U23 : NOR2	PORT MAP(
	I1 => LT4_5, 
	I0 => GT4_5, 
	O => EQ4_5
);
U8 : AND3B1	PORT MAP(
	I0 => A2, 
	I1 => EQ_3, 
	I2 => B2, 
	O => LE2_3
);
U24 : AND3B1	PORT MAP(
	I0 => A4, 
	I1 => EQ_5, 
	I2 => B4, 
	O => LE4_5
);
U9 : AND3B1	PORT MAP(
	I0 => B2, 
	I1 => EQ_3, 
	I2 => A2, 
	O => GE2_3
);
U25 : AND3B1	PORT MAP(
	I0 => B4, 
	I1 => EQ_5, 
	I2 => A4, 
	O => GE4_5
);
U26 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => GT_5
);
U27 : AND2B1	PORT MAP(
	I0 => A5, 
	I1 => B5, 
	O => LT_5
);
U28 : XNOR2	PORT MAP(
	I1 => B5, 
	I0 => A5, 
	O => EQ_5
);
U29 : OR2	PORT MAP(
	I1 => LE4_5, 
	I0 => LT_5, 
	O => LT4_5
);
U30 : OR2	PORT MAP(
	I1 => GE4_5, 
	I0 => GT_5, 
	O => GT4_5
);
U31 : AND4	PORT MAP(
	I0 => EQ6_7, 
	I1 => EQ4_5, 
	I2 => EQ2_3, 
	I3 => LT0_1, 
	O => LTA
);
U32 : AND4	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	I2 => EQ4_5, 
	I3 => EQ6_7, 
	O => GTA
);
U33 : AND3	PORT MAP(
	I0 => EQ6_7, 
	I1 => EQ4_5, 
	I2 => LT2_3, 
	O => LTB
);
U34 : AND3	PORT MAP(
	I0 => GT2_3, 
	I1 => EQ4_5, 
	I2 => EQ6_7, 
	O => GTB
);
U35 : AND2	PORT MAP(
	I0 => EQ6_7, 
	I1 => LT4_5, 
	O => LTC
);
U36 : AND2	PORT MAP(
	I0 => GT4_5, 
	I1 => EQ6_7, 
	O => GTC
);
U37 : OR4	PORT MAP(
	I3 => LTA, 
	I2 => LTB, 
	I1 => LTC, 
	I0 => LTD, 
	O => LT
);
U38 : OR4	PORT MAP(
	I3 => GTA, 
	I2 => GTB, 
	I1 => GTC, 
	I0 => GTD, 
	O => GT
);
U39 : NOR2	PORT MAP(
	I1 => LT2_3, 
	I0 => GT2_3, 
	O => EQ2_3
);
U10 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => GT_3
);
U11 : AND2B1	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => LT_3
);
U12 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => A3, 
	O => EQ_3
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
U1 : AND3B1	PORT MAP(
	I0 => A1, 
	I1 => A0, 
	I2 => E, 
	O => D1
);
U2 : AND3B1	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	O => D2
);
U3 : AND3B2	PORT MAP(
	I0 => A0, 
	I1 => A1, 
	I2 => E, 
	O => D0
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
	D => D2, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q2
);
U4 : FDRE	PORT MAP(
	D => D7, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U5 : FDRE	PORT MAP(
	D => D6, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q6
);
U6 : FDRE	PORT MAP(
	D => D5, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q5
);
U7 : FDRE	PORT MAP(
	D => D4, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q4
);
U8 : FDRE	PORT MAP(
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

COMPONENT NAND5
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
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => I47
);
U2 : NAND5	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	I4 => I47, 
	O => O
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
ENTITY OFDT4 IS PORT (
	T : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic
); END OFDT4;



ARCHITECTURE STRUCTURE OF OFDT4 IS

-- COMPONENTS

COMPONENT OFDT
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => N00006
);
U2 : OR5	PORT MAP(
	I4 => N00006, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
SIGNAL N00042 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD2 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00026;
Q1<=N00042;
Q2<=N00058;
Q3<=N00023;
Q4<=N00028;
Q5<=N00044;
Q6<=N00060;
U9 : OR2	PORT MAP(
	I1 => CE, 
	I0 => L, 
	O => N00020
);
U3 : FDRE	PORT MAP(
	D => MD2, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00058
);
U11 : FDRE	PORT MAP(
	D => MD5, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00044
);
U4 : FDRE	PORT MAP(
	D => MD3, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00023
);
U12 : FDRE	PORT MAP(
	D => MD6, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00060
);
U13 : FDRE	PORT MAP(
	D => MD7, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => Q7
);
U5 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U6 : M2_1	PORT MAP(
	D0 => N00026, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U14 : M2_1	PORT MAP(
	D0 => N00023, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U15 : M2_1	PORT MAP(
	D0 => N00028, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U7 : M2_1	PORT MAP(
	D0 => N00042, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U16 : M2_1	PORT MAP(
	D0 => N00044, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U8 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U17 : M2_1	PORT MAP(
	D0 => N00060, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U1 : FDRE	PORT MAP(
	D => MD0, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00026
);
U2 : FDRE	PORT MAP(
	D => MD1, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00042
);
U10 : FDRE	PORT MAP(
	D => MD4, 
	CE => N00020, 
	C => C, 
	R => R, 
	Q => N00028
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

COMPONENT AND3B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL E : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NAND4B3	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y0
);
U2 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y1
);
U3 : NAND4B2	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => E, 
	O => Y2
);
U4 : NAND4B2	PORT MAP(
	I0 => B, 
	I1 => A, 
	I2 => C, 
	I3 => E, 
	O => Y4
);
U5 : NAND4B1	PORT MAP(
	I0 => C, 
	I1 => A, 
	I2 => B, 
	I3 => E, 
	O => Y3
);
U6 : NAND4B1	PORT MAP(
	I0 => B, 
	I1 => C, 
	I2 => A, 
	I3 => E, 
	O => Y5
);
U7 : NAND4B1	PORT MAP(
	I0 => A, 
	I1 => C, 
	I2 => B, 
	I3 => E, 
	O => Y6
);
U8 : NAND4	PORT MAP(
	I0 => C, 
	I1 => B, 
	I2 => A, 
	I3 => E, 
	O => Y7
);
U9 : AND3B2	PORT MAP(
	I0 => G2B, 
	I1 => G2A, 
	I2 => G1, 
	O => E
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

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N01840 : std_logic;
SIGNAL R_SD11 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL R_SD14 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL R_SD12 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL R_SD5 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL R_SD4 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL R_SD13 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL R_SD6 : std_logic;
SIGNAL R_SD10 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL R_SD7 : std_logic;
SIGNAL R_SD8 : std_logic;
SIGNAL R_SD9 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL R_SD15 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL S15 : std_logic;
SIGNAL SD5 : std_logic;
SIGNAL S11 : std_logic;
SIGNAL S12 : std_logic;
SIGNAL S14 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL SD14 : std_logic;
SIGNAL S8 : std_logic;
SIGNAL S9 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL SD13 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL SD8 : std_logic;
SIGNAL S13 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL SD9 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL SD7 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL SD15 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL SD6 : std_logic;
SIGNAL SD11 : std_logic;
SIGNAL SD10 : std_logic;
SIGNAL SD12 : std_logic;
SIGNAL SD4 : std_logic;
SIGNAL S10 : std_logic;
SIGNAL N00106 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00085;
Q0<=N00055;
Q1<=N00057;
Q2<=N00059;
Q3<=N00061;
Q4<=N00063;
Q5<=N00065;
Q6<=N00067;
Q7<=N00069;
Q8<=N00071;
Q9<=N00073;
Q10<=N00075;
Q11<=N00077;
Q12<=N00079;
Q13<=N00081;
Q14<=N00083;
U45 : FDCE	PORT MAP(
	D => R_SD8, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00071
);
U46 : FDCE	PORT MAP(
	D => R_SD9, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00073
);
U14 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD6, 
	O => R_SD6
);
U47 : FDCE	PORT MAP(
	D => R_SD10, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00075
);
U48 : FDCE	PORT MAP(
	D => R_SD11, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00077
);
U16 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD7, 
	O => R_SD7
);
U49 : FDCE	PORT MAP(
	D => R_SD12, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00079
);
U17 : GND	PORT MAP(
	G => N00123
);
U18 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => N00106
);
U2 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD0, 
	O => R_SD0
);
U50 : FDCE	PORT MAP(
	D => R_SD13, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00081
);
U51 : FDCE	PORT MAP(
	D => R_SD14, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00083
);
U4 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD1, 
	O => R_SD1
);
U52 : FDCE	PORT MAP(
	D => R_SD15, 
	CE => N00106, 
	C => C, 
	CLR => N00124, 
	Q => N00085
);
U6 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U23 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD11, 
	O => R_SD11
);
U8 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U25 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD12, 
	O => R_SD12
);
U27 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD13, 
	O => R_SD13
);
U29 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD14, 
	O => R_SD14
);
U31 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD15, 
	O => R_SD15
);
U32 : GND	PORT MAP(
	G => N00124
);
U34 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD8, 
	O => R_SD8
);
U35 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD9, 
	O => R_SD9
);
U36 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD10, 
	O => R_SD10
);
U37 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00055
);
U38 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00059
);
U39 : FDCE	PORT MAP(
	D => R_SD4, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00063
);
U40 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00061
);
U41 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00057
);
U42 : FDCE	PORT MAP(
	D => R_SD5, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00065
);
U10 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD4, 
	O => R_SD4
);
U43 : FDCE	PORT MAP(
	D => R_SD7, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00069
);
U44 : FDCE	PORT MAP(
	D => R_SD6, 
	CE => N00106, 
	C => C, 
	CLR => N00123, 
	Q => N00067
);
U12 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD5, 
	O => R_SD5
);
U33 : ADSU16	PORT MAP(
	CI => CI, 
	A0 => N00055, 
	A1 => N00057, 
	A2 => N00059, 
	A3 => N00061, 
	A4 => N00063, 
	A5 => N00065, 
	A6 => N00067, 
	A7 => N00069, 
	A8 => N00071, 
	A9 => N00073, 
	A10 => N00075, 
	A11 => N00077, 
	A12 => N00079, 
	A13 => N00081, 
	A14 => N00083, 
	A15 => N00085, 
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
U22 : M2_1	PORT MAP(
	D0 => S11, 
	D1 => D11, 
	S0 => L, 
	O => SD11
);
U3 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U11 : M2_1	PORT MAP(
	D0 => S5, 
	D1 => D5, 
	S0 => L, 
	O => SD5
);
U24 : M2_1	PORT MAP(
	D0 => S12, 
	D1 => D12, 
	S0 => L, 
	O => SD12
);
U5 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U13 : M2_1	PORT MAP(
	D0 => S6, 
	D1 => D6, 
	S0 => L, 
	O => SD6
);
U15 : M2_1	PORT MAP(
	D0 => S7, 
	D1 => D7, 
	S0 => L, 
	O => SD7
);
U26 : M2_1	PORT MAP(
	D0 => S13, 
	D1 => D13, 
	S0 => L, 
	O => SD13
);
U7 : M2_1	PORT MAP(
	D0 => S3, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U28 : M2_1	PORT MAP(
	D0 => S14, 
	D1 => D14, 
	S0 => L, 
	O => SD14
);
U9 : M2_1	PORT MAP(
	D0 => S4, 
	D1 => D4, 
	S0 => L, 
	O => SD4
);
U19 : M2_1	PORT MAP(
	D0 => S8, 
	D1 => D8, 
	S0 => L, 
	O => SD8
);
U30 : M2_1	PORT MAP(
	D0 => S15, 
	D1 => D15, 
	S0 => L, 
	O => SD15
);
U20 : M2_1	PORT MAP(
	D0 => S9, 
	D1 => D9, 
	S0 => L, 
	O => SD9
);
U1 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U21 : M2_1	PORT MAP(
	D0 => S10, 
	D1 => D10, 
	S0 => L, 
	O => SD10
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
SIGNAL N02729 : std_logic;
SIGNAL N02726 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00228 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL AB11 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL N00284 : std_logic;
SIGNAL N00259 : std_logic;
SIGNAL N00207 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00254 : std_logic;
SIGNAL N00251 : std_logic;
SIGNAL N00225 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL N00277 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL AB12 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL N00202 : std_logic;
SIGNAL N00233 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL AB10 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL N00173 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB15 : std_logic;
SIGNAL N00199 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00279 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL AB14 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL AB13 : std_logic;
SIGNAL AB9 : std_logic;
SIGNAL N00256 : std_logic;
SIGNAL AB8 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL AABXS : std_logic;
SIGNAL AAB : std_logic;
SIGNAL AXB : std_logic;
SIGNAL N00281 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00294 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C5 : std_logic;

-- GATE INSTANCES

BEGIN
S15<=N00294;
U77 : AND2	PORT MAP(
	I0 => C14, 
	I1 => A15, 
	O => N00281
);
U45 : OR3	PORT MAP(
	I2 => AB8, 
	I1 => N00099, 
	I0 => N00102, 
	O => C8
);
U13 : AND2	PORT MAP(
	I0 => B2, 
	I1 => C1, 
	O => N00150
);
U78 : AND2	PORT MAP(
	I0 => B15, 
	I1 => C14, 
	O => N00284
);
U46 : AND2	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => AB9
);
U14 : XOR3	PORT MAP(
	I2 => B2, 
	I1 => A2, 
	I0 => C1, 
	O => S2
);
U79 : XOR3	PORT MAP(
	I2 => B15, 
	I1 => A15, 
	I0 => C14, 
	O => N00294
);
U47 : AND2	PORT MAP(
	I0 => C8, 
	I1 => A9, 
	O => N00126
);
U15 : OR3	PORT MAP(
	I2 => AB2, 
	I1 => N00147, 
	I0 => N00150, 
	O => C2
);
U48 : AND2	PORT MAP(
	I0 => B9, 
	I1 => C8, 
	O => N00129
);
U16 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => AB3
);
U49 : XOR3	PORT MAP(
	I2 => B9, 
	I1 => A9, 
	I0 => C8, 
	O => S9
);
U17 : AND2	PORT MAP(
	I0 => C2, 
	I1 => A3, 
	O => N00173
);
U18 : AND2	PORT MAP(
	I0 => B3, 
	I1 => C2, 
	O => N00176
);
U19 : XOR3	PORT MAP(
	I2 => B3, 
	I1 => A3, 
	I0 => C2, 
	O => S3
);
U80 : OR3	PORT MAP(
	I2 => AB15, 
	I1 => N00281, 
	I0 => N00284, 
	O => CO
);
U1 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => AB0
);
U81 : XNOR2	PORT MAP(
	I1 => B15, 
	I0 => A15, 
	O => AXB
);
U2 : AND2	PORT MAP(
	I0 => CI, 
	I1 => A0, 
	O => N00094
);
U82 : AND2	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	O => AAB
);
U50 : OR3	PORT MAP(
	I2 => AB9, 
	I1 => N00126, 
	I0 => N00129, 
	O => C9
);
U3 : AND2	PORT MAP(
	I0 => B0, 
	I1 => CI, 
	O => N00097
);
U83 : XOR2	PORT MAP(
	I1 => N00294, 
	I0 => AAB, 
	O => AABXS
);
U51 : AND2	PORT MAP(
	I0 => B10, 
	I1 => A10, 
	O => AB10
);
U4 : XOR3	PORT MAP(
	I2 => B0, 
	I1 => A0, 
	I0 => CI, 
	O => S0
);
U84 : AND2	PORT MAP(
	I0 => AABXS, 
	I1 => AXB, 
	O => OFL
);
U52 : AND2	PORT MAP(
	I0 => C9, 
	I1 => A10, 
	O => N00152
);
U20 : OR3	PORT MAP(
	I2 => AB3, 
	I1 => N00173, 
	I0 => N00176, 
	O => C3
);
U5 : OR3	PORT MAP(
	I2 => AB0, 
	I1 => N00094, 
	I0 => N00097, 
	O => C0
);
U53 : AND2	PORT MAP(
	I0 => B10, 
	I1 => C9, 
	O => N00155
);
U21 : AND2	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => AB4
);
U6 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => AB1
);
U54 : XOR3	PORT MAP(
	I2 => B10, 
	I1 => A10, 
	I0 => C9, 
	O => S10
);
U22 : AND2	PORT MAP(
	I0 => C3, 
	I1 => A4, 
	O => N00199
);
U7 : AND2	PORT MAP(
	I0 => C0, 
	I1 => A1, 
	O => N00121
);
U55 : OR3	PORT MAP(
	I2 => AB10, 
	I1 => N00152, 
	I0 => N00155, 
	O => C10
);
U23 : AND2	PORT MAP(
	I0 => B4, 
	I1 => C3, 
	O => N00202
);
U8 : AND2	PORT MAP(
	I0 => B1, 
	I1 => C0, 
	O => N00124
);
U56 : AND2	PORT MAP(
	I0 => B11, 
	I1 => A11, 
	O => AB11
);
U24 : XOR3	PORT MAP(
	I2 => B4, 
	I1 => A4, 
	I0 => C3, 
	O => S4
);
U9 : XOR3	PORT MAP(
	I2 => B1, 
	I1 => A1, 
	I0 => C0, 
	O => S1
);
U57 : AND2	PORT MAP(
	I0 => C10, 
	I1 => A11, 
	O => N00178
);
U25 : OR3	PORT MAP(
	I2 => AB4, 
	I1 => N00199, 
	I0 => N00202, 
	O => C4
);
U58 : AND2	PORT MAP(
	I0 => B11, 
	I1 => C10, 
	O => N00181
);
U26 : AND2	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => AB5
);
U59 : XOR3	PORT MAP(
	I2 => B11, 
	I1 => A11, 
	I0 => C10, 
	O => S11
);
U27 : AND2	PORT MAP(
	I0 => C4, 
	I1 => A5, 
	O => N00225
);
U28 : AND2	PORT MAP(
	I0 => B5, 
	I1 => C4, 
	O => N00228
);
U29 : XOR3	PORT MAP(
	I2 => B5, 
	I1 => A5, 
	I0 => C4, 
	O => S5
);
U60 : OR3	PORT MAP(
	I2 => AB11, 
	I1 => N00178, 
	I0 => N00181, 
	O => C11
);
U61 : AND2	PORT MAP(
	I0 => B12, 
	I1 => A12, 
	O => AB12
);
U62 : AND2	PORT MAP(
	I0 => C11, 
	I1 => A12, 
	O => N00204
);
U30 : OR3	PORT MAP(
	I2 => AB5, 
	I1 => N00225, 
	I0 => N00228, 
	O => C5
);
U63 : AND2	PORT MAP(
	I0 => B12, 
	I1 => C11, 
	O => N00207
);
U31 : AND2	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => AB6
);
U64 : XOR3	PORT MAP(
	I2 => B12, 
	I1 => A12, 
	I0 => C11, 
	O => S12
);
U32 : AND2	PORT MAP(
	I0 => C5, 
	I1 => A6, 
	O => N00251
);
U65 : OR3	PORT MAP(
	I2 => AB12, 
	I1 => N00204, 
	I0 => N00207, 
	O => C12
);
U33 : AND2	PORT MAP(
	I0 => B6, 
	I1 => C5, 
	O => N00254
);
U66 : AND2	PORT MAP(
	I0 => B13, 
	I1 => A13, 
	O => AB13
);
U34 : XOR3	PORT MAP(
	I2 => B6, 
	I1 => A6, 
	I0 => C5, 
	O => S6
);
U67 : AND2	PORT MAP(
	I0 => C12, 
	I1 => A13, 
	O => N00230
);
U35 : OR3	PORT MAP(
	I2 => AB6, 
	I1 => N00251, 
	I0 => N00254, 
	O => C6
);
U68 : AND2	PORT MAP(
	I0 => B13, 
	I1 => C12, 
	O => N00233
);
U36 : AND2	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => AB7
);
U69 : XOR3	PORT MAP(
	I2 => B13, 
	I1 => A13, 
	I0 => C12, 
	O => S13
);
U37 : AND2	PORT MAP(
	I0 => C6, 
	I1 => A7, 
	O => N00277
);
U38 : AND2	PORT MAP(
	I0 => B7, 
	I1 => C6, 
	O => N00279
);
U39 : XOR3	PORT MAP(
	I2 => B7, 
	I1 => A7, 
	I0 => C6, 
	O => S7
);
U70 : OR3	PORT MAP(
	I2 => AB13, 
	I1 => N00230, 
	I0 => N00233, 
	O => C13
);
U71 : AND2	PORT MAP(
	I0 => B14, 
	I1 => A14, 
	O => AB14
);
U72 : AND2	PORT MAP(
	I0 => C13, 
	I1 => A14, 
	O => N00256
);
U40 : OR3	PORT MAP(
	I2 => AB7, 
	I1 => N00277, 
	I0 => N00279, 
	O => C7
);
U73 : AND2	PORT MAP(
	I0 => B14, 
	I1 => C13, 
	O => N00259
);
U41 : AND2	PORT MAP(
	I0 => B8, 
	I1 => A8, 
	O => AB8
);
U74 : XOR3	PORT MAP(
	I2 => B14, 
	I1 => A14, 
	I0 => C13, 
	O => S14
);
U42 : AND2	PORT MAP(
	I0 => C7, 
	I1 => A8, 
	O => N00099
);
U10 : OR3	PORT MAP(
	I2 => AB1, 
	I1 => N00121, 
	I0 => N00124, 
	O => C1
);
U75 : OR3	PORT MAP(
	I2 => AB14, 
	I1 => N00256, 
	I0 => N00259, 
	O => C14
);
U43 : AND2	PORT MAP(
	I0 => B8, 
	I1 => C7, 
	O => N00102
);
U11 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => AB2
);
U76 : AND2	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	O => AB15
);
U44 : XOR3	PORT MAP(
	I2 => B8, 
	I1 => A8, 
	I0 => C7, 
	O => S8
);
U12 : AND2	PORT MAP(
	I0 => C1, 
	I1 => A2, 
	O => N00147
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

COMPONENT OR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I48 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR5	PORT MAP(
	I4 => I8, 
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I48
);
U2 : NOR5	PORT MAP(
	I4 => I48, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic;
	O8 : OUT   std_logic;
	O9 : OUT   std_logic;
	O10 : OUT   std_logic;
	O11 : OUT   std_logic;
	O12 : OUT   std_logic;
	O13 : OUT   std_logic;
	O14 : OUT   std_logic;
	O15 : OUT   std_logic
); END OBUFE16;



ARCHITECTURE STRUCTURE OF OBUFE16 IS

-- COMPONENTS

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : OBUFE	PORT MAP(
	E => E, 
	I => I13, 
	O => O13
);
U11 : OBUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
U4 : OBUFE	PORT MAP(
	E => E, 
	I => I12, 
	O => O12
);
U12 : OBUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U5 : OBUFE	PORT MAP(
	E => E, 
	I => I11, 
	O => O11
);
U13 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U6 : OBUFE	PORT MAP(
	E => E, 
	I => I10, 
	O => O10
);
U14 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U15 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
U7 : OBUFE	PORT MAP(
	E => E, 
	I => I9, 
	O => O9
);
U16 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U8 : OBUFE	PORT MAP(
	E => E, 
	I => I8, 
	O => O8
);
U9 : OBUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U1 : OBUFE	PORT MAP(
	E => E, 
	I => I15, 
	O => O15
);
U2 : OBUFE	PORT MAP(
	E => E, 
	I => I14, 
	O => O14
);
U10 : OBUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	O4 : OUT   std_logic;
	O5 : OUT   std_logic;
	O6 : OUT   std_logic;
	O7 : OUT   std_logic
); END OBUFE8;



ARCHITECTURE STRUCTURE OF OBUFE8 IS

-- COMPONENTS

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : OBUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
U4 : OBUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
U5 : OBUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
U6 : OBUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
U7 : OBUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
U8 : OBUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
U1 : OBUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
);
U2 : OBUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
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
SIGNAL N00012 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00010 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00012;
Q1<=N00022;
Q2<=N00032;
Q3<=N00010;
Q4<=N00013;
Q5<=N00023;
Q6<=N00033;
U3 : FDRE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00023
);
U4 : FDRE	PORT MAP(
	D => N00010, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00013
);
U5 : FDRE	PORT MAP(
	D => N00032, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00010
);
U6 : FDRE	PORT MAP(
	D => N00022, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00032
);
U7 : FDRE	PORT MAP(
	D => SLI, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00012
);
U8 : FDRE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00022
);
U1 : FDRE	PORT MAP(
	D => N00033, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => Q7
);
U2 : FDRE	PORT MAP(
	D => N00023, 
	CE => CE, 
	C => C, 
	R => R, 
	Q => N00033
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
SIGNAL M47 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL O : std_logic;

-- GATE INSTANCES

BEGIN
U7 : INV	PORT MAP(
	O => W, 
	I => O
);
U3 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => A, 
	O => M45
);
U4 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => A, 
	O => M67
);
U5 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => B, 
	O => M03
);
U6 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U8 : M2_1	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => O
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => A, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => A, 
	O => M23
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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
SIGNAL RB : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL LB : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00018;
QB<=N00026;
QC<=N00036;
QD<=N00048;
U1 : AND3	PORT MAP(
	I0 => N00036, 
	I1 => N00026, 
	I2 => N00018, 
	O => T3
);
U2 : AND2	PORT MAP(
	I0 => N00026, 
	I1 => N00018, 
	O => T2
);
U3 : AND5	PORT MAP(
	I0 => ENT, 
	I1 => N00018, 
	I2 => N00026, 
	I3 => N00036, 
	I4 => N00048, 
	O => RCO
);
U4 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U5 : INV	PORT MAP(
	O => RB, 
	I => R
);
U6 : VCC	PORT MAP(
	P => N00017
);
U11 : GND	PORT MAP(
	G => N00014
);
U12 : INV	PORT MAP(
	O => LB, 
	I => LOAD
);
U7 : FTRSLE	PORT MAP(
	D => D, 
	L => LB, 
	T => T3, 
	R => RB, 
	S => N00014, 
	Q => N00048, 
	CE => CE, 
	C => CK
);
U8 : FTRSLE	PORT MAP(
	D => C, 
	L => LB, 
	T => T2, 
	R => RB, 
	S => N00014, 
	Q => N00036, 
	CE => CE, 
	C => CK
);
U9 : FTRSLE	PORT MAP(
	D => B, 
	L => LB, 
	T => N00018, 
	R => RB, 
	S => N00014, 
	Q => N00026, 
	CE => CE, 
	C => CK
);
U10 : FTRSLE	PORT MAP(
	D => A, 
	L => LB, 
	T => N00017, 
	R => RB, 
	S => N00014, 
	Q => N00018, 
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
U1 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U3 : FDC	PORT MAP(
	D => D4, 
	C => CK, 
	CLR => CLRB, 
	Q => Q4
);
U4 : FDC	PORT MAP(
	D => D3, 
	C => CK, 
	CLR => CLRB, 
	Q => Q3
);
U5 : FDC	PORT MAP(
	D => D2, 
	C => CK, 
	CLR => CLRB, 
	Q => Q2
);
U6 : FDC	PORT MAP(
	D => D1, 
	C => CK, 
	CLR => CLRB, 
	Q => Q1
);
U7 : FDC	PORT MAP(
	D => D6, 
	C => CK, 
	CLR => CLRB, 
	Q => Q6
);
U2 : FDC	PORT MAP(
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
SIGNAL N00014 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => N00014, 
	I => CLR
);
U3 : FDC	PORT MAP(
	D => D7, 
	C => CK, 
	CLR => N00014, 
	Q => Q7
);
U4 : FDC	PORT MAP(
	D => D6, 
	C => CK, 
	CLR => N00014, 
	Q => Q6
);
U5 : FDC	PORT MAP(
	D => D5, 
	C => CK, 
	CLR => N00014, 
	Q => Q5
);
U6 : FDC	PORT MAP(
	D => D4, 
	C => CK, 
	CLR => N00014, 
	Q => Q4
);
U7 : FDC	PORT MAP(
	D => D3, 
	C => CK, 
	CLR => N00014, 
	Q => Q3
);
U8 : FDC	PORT MAP(
	D => D2, 
	C => CK, 
	CLR => N00014, 
	Q => Q2
);
U9 : FDC	PORT MAP(
	D => D1, 
	C => CK, 
	CLR => N00014, 
	Q => Q1
);
U2 : FDC	PORT MAP(
	D => D8, 
	C => CK, 
	CLR => N00014, 
	Q => Q8
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
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U2 : OR4	PORT MAP(
	I3 => I35, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

COMPONENT NOR4
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL D2 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D10 : std_logic;
SIGNAL D6 : std_logic;
SIGNAL D9 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL D11 : std_logic;

-- GATE INSTANCES

BEGIN
EO<=N00027;
U13 : NOR2	PORT MAP(
	I1 => I4, 
	I0 => EI, 
	O => D8
);
U14 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D7
);
U15 : NOR2	PORT MAP(
	I1 => I6, 
	I0 => EI, 
	O => D6
);
U16 : AND5B1	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I2, 
	I3 => I1, 
	I4 => I0, 
	O => N00024
);
U17 : AND5B1	PORT MAP(
	I0 => EI, 
	I1 => I7, 
	I2 => I6, 
	I3 => I5, 
	I4 => I4, 
	O => N00028
);
U18 : NAND2	PORT MAP(
	I0 => N00028, 
	I1 => N00024, 
	O => N00027
);
U19 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D3
);
U1 : NAND2B1	PORT MAP(
	I0 => EI, 
	I1 => N00027, 
	O => GS
);
U2 : NOR4	PORT MAP(
	I3 => D8, 
	I2 => D9, 
	I1 => D10, 
	I0 => D11, 
	O => A2
);
U3 : NOR4	PORT MAP(
	I3 => N00058, 
	I2 => D5, 
	I1 => D6, 
	I0 => D7, 
	O => A1
);
U4 : NOR4	PORT MAP(
	I3 => D0, 
	I2 => D1, 
	I1 => D2, 
	I0 => D3, 
	O => A0
);
U5 : AND3B2	PORT MAP(
	I0 => EI, 
	I1 => I5, 
	I2 => I6, 
	O => D2
);
U6 : AND5B2	PORT MAP(
	I0 => EI, 
	I1 => I1, 
	I2 => I6, 
	I3 => I4, 
	I4 => I2, 
	O => D0
);
U7 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I2, 
	I2 => I5, 
	I3 => I4, 
	O => N00058
);
U8 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I6, 
	I3 => I4, 
	O => D1
);
U9 : AND4B2	PORT MAP(
	I0 => EI, 
	I1 => I3, 
	I2 => I5, 
	I3 => I4, 
	O => D5
);
U10 : NOR2	PORT MAP(
	I1 => I7, 
	I0 => EI, 
	O => D11
);
U11 : NOR2	PORT MAP(
	I1 => I6, 
	I0 => EI, 
	O => D10
);
U12 : NOR2	PORT MAP(
	I1 => I5, 
	I0 => EI, 
	O => D9
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

COMPONENT XOR5
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I48 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR5	PORT MAP(
	I4 => I8, 
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I48
);
U2 : XOR5	PORT MAP(
	I4 => I48, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

COMPONENT AND5
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
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => I47
);
U2 : AND5	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	I4 => I47, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY BUFE IS PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
); END BUFE;



ARCHITECTURE STRUCTURE OF BUFE IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
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
XU1 : BUFT	PORT MAP(
	T => T, 
	I => I, 
	O => O
);
U1 : INV	PORT MAP(
	O => T, 
	I => E
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
U3 : AND2	PORT MAP(
	I0 => AB1, 
	I1 => AB0, 
	O => EQ
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00006
);
U2 : FDCE	PORT MAP(
	D => D, 
	CE => N00006, 
	C => C, 
	CLR => CLR, 
	Q => Q
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

COMPONENT AND2
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
SIGNAL N00010 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U1 : OR3	PORT MAP(
	I2 => N00007, 
	I1 => S, 
	I0 => N00011, 
	O => N00010
);
U2 : AND2B1	PORT MAP(
	I0 => CE, 
	I1 => N00006, 
	O => N00007
);
U3 : AND2	PORT MAP(
	I0 => D, 
	I1 => CE, 
	O => N00011
);
U4 : FD	PORT MAP(
	D => N00010, 
	C => C, 
	Q => N00006
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT AND3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
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
SIGNAL T1 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL RB : std_logic;
SIGNAL LB : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL T3 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00021;
QB<=N00031;
QC<=N00043;
QD<=N00035;
U13 : AND2	PORT MAP(
	I0 => N00021, 
	I1 => N00031, 
	O => T2
);
U14 : AND2B1	PORT MAP(
	I0 => N00035, 
	I1 => N00021, 
	O => T1
);
U1 : OR2	PORT MAP(
	I1 => TQ2, 
	I0 => N00060, 
	O => T3
);
U2 : AND2	PORT MAP(
	I0 => T2, 
	I1 => N00043, 
	O => TQ2
);
U3 : AND2	PORT MAP(
	I0 => ENT, 
	I1 => ENP, 
	O => CE
);
U4 : INV	PORT MAP(
	O => LB, 
	I => LOAD
);
U5 : INV	PORT MAP(
	O => RB, 
	I => R
);
U10 : GND	PORT MAP(
	G => N00016
);
U11 : AND5B2	PORT MAP(
	I0 => N00031, 
	I1 => N00043, 
	I2 => ENT, 
	I3 => N00021, 
	I4 => N00035, 
	O => RCO
);
U12 : AND3	PORT MAP(
	I0 => ENT, 
	I1 => N00021, 
	I2 => N00035, 
	O => N00060
);
U6 : FTRSLE	PORT MAP(
	D => D, 
	L => LB, 
	T => T3, 
	R => RB, 
	S => N00016, 
	Q => N00035, 
	CE => CE, 
	C => CK
);
U7 : FTRSLE	PORT MAP(
	D => C, 
	L => LB, 
	T => T2, 
	R => RB, 
	S => N00016, 
	Q => N00043, 
	CE => CE, 
	C => CK
);
U8 : FTRSLE	PORT MAP(
	D => B, 
	L => LB, 
	T => T1, 
	R => RB, 
	S => N00016, 
	Q => N00031, 
	CE => CE, 
	C => CK
);
U9 : FTRSLE	PORT MAP(
	D => A, 
	L => LB, 
	T => CE, 
	R => RB, 
	S => N00016, 
	Q => N00021, 
	CE => CE, 
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

COMPONENT OR3B1
	PORT (
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

COMPONENT NAND3B1
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

COMPONENT FDC	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MD : std_logic;
SIGNAL MC : std_logic;
SIGNAL MB : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL OJK : std_logic;
SIGNAL NJ : std_logic;
SIGNAL JK : std_logic;
SIGNAL NK : std_logic;
SIGNAL MA : std_logic;
SIGNAL N00044 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00016;
QB<=N00037;
QC<=N00044;
QD<=N00051;
U13 : OR3B1	PORT MAP(
	I2 => K, 
	I1 => N00016, 
	I0 => J, 
	O => OJK
);
U14 : INV	PORT MAP(
	O => CLRB, 
	I => CLR
);
U9 : NAND3	PORT MAP(
	I0 => NK, 
	I1 => OJK, 
	I2 => NJ, 
	O => JK
);
U10 : NAND2	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => NK
);
U11 : INV	PORT MAP(
	O => QDB, 
	I => N00051
);
U12 : NAND3B1	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00016, 
	O => NJ
);
U3 : M2_1	PORT MAP(
	D0 => C, 
	D1 => N00037, 
	S0 => S_L, 
	O => MC
);
U4 : M2_1	PORT MAP(
	D0 => D, 
	D1 => N00044, 
	S0 => S_L, 
	O => MD
);
U5 : FDC	PORT MAP(
	D => MA, 
	C => CK, 
	CLR => CLRB, 
	Q => N00016
);
U6 : FDC	PORT MAP(
	D => MB, 
	C => CK, 
	CLR => CLRB, 
	Q => N00037
);
U7 : FDC	PORT MAP(
	D => MC, 
	C => CK, 
	CLR => CLRB, 
	Q => N00044
);
U8 : FDC	PORT MAP(
	D => MD, 
	C => CK, 
	CLR => CLRB, 
	Q => N00051
);
U1 : M2_1	PORT MAP(
	D0 => A, 
	D1 => JK, 
	S0 => S_L, 
	O => MA
);
U2 : M2_1	PORT MAP(
	D0 => B, 
	D1 => N00016, 
	S0 => S_L, 
	O => MB
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

COMPONENT XOR3
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
SIGNAL AB2 : std_logic;
SIGNAL AB : std_logic;
SIGNAL A31 : std_logic;
SIGNAL A21 : std_logic;
SIGNAL A20 : std_logic;
SIGNAL A41 : std_logic;
SIGNAL A40 : std_logic;
SIGNAL A32 : std_logic;
SIGNAL A42 : std_logic;
SIGNAL A12 : std_logic;
SIGNAL A10 : std_logic;
SIGNAL A30 : std_logic;
SIGNAL A13 : std_logic;
SIGNAL A23 : std_logic;
SIGNAL AB3 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : AND2	PORT MAP(
	I0 => B3, 
	I1 => AB2, 
	O => A32
);
U14 : XOR3	PORT MAP(
	I2 => B3, 
	I1 => A3, 
	I0 => AB2, 
	O => S3
);
U15 : OR3	PORT MAP(
	I2 => A30, 
	I1 => A31, 
	I0 => A32, 
	O => AB3
);
U16 : AND2	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => A40
);
U17 : AND2	PORT MAP(
	I0 => AB3, 
	I1 => A4, 
	O => A41
);
U18 : AND2	PORT MAP(
	I0 => B4, 
	I1 => AB3, 
	O => A42
);
U19 : XOR3	PORT MAP(
	I2 => B4, 
	I1 => A4, 
	I0 => AB3, 
	O => S4
);
U1 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => A10
);
U2 : AND2	PORT MAP(
	I0 => C0, 
	I1 => A1, 
	O => A12
);
U3 : AND2	PORT MAP(
	I0 => B1, 
	I1 => C0, 
	O => A13
);
U4 : XOR3	PORT MAP(
	I2 => B1, 
	I1 => A1, 
	I0 => C0, 
	O => S1
);
U20 : OR3	PORT MAP(
	I2 => A40, 
	I1 => A41, 
	I0 => A42, 
	O => C4
);
U5 : OR3	PORT MAP(
	I2 => A10, 
	I1 => A12, 
	I0 => A13, 
	O => AB
);
U6 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => A20
);
U7 : AND2	PORT MAP(
	I0 => AB, 
	I1 => A2, 
	O => A21
);
U8 : AND2	PORT MAP(
	I0 => B2, 
	I1 => AB, 
	O => A23
);
U9 : XOR3	PORT MAP(
	I2 => B2, 
	I1 => A2, 
	I0 => AB, 
	O => S2
);
U10 : OR3	PORT MAP(
	I2 => A20, 
	I1 => A21, 
	I0 => A23, 
	O => AB2
);
U11 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => A30
);
U12 : AND2	PORT MAP(
	I0 => AB2, 
	I1 => A3, 
	O => A31
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR4
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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00403 : std_logic;
SIGNAL N00446 : std_logic;
SIGNAL N00470 : std_logic;
SIGNAL N00432 : std_logic;
SIGNAL N00371 : std_logic;
SIGNAL ADD_C0 : std_logic;
SIGNAL N00270 : std_logic;
SIGNAL ADD_C4 : std_logic;
SIGNAL N00389 : std_logic;
SIGNAL ADD_CO : std_logic;
SIGNAL SUB_C11 : std_logic;
SIGNAL SUB_C10 : std_logic;
SIGNAL N00295 : std_logic;
SIGNAL SUB_C2 : std_logic;
SIGNAL N00315 : std_logic;
SIGNAL ADD_C12 : std_logic;
SIGNAL N00491 : std_logic;
SIGNAL N00433 : std_logic;
SIGNAL N00330 : std_logic;
SIGNAL SUB_C9 : std_logic;
SIGNAL ADD_C5 : std_logic;
SIGNAL N00213 : std_logic;
SIGNAL ADD_C14 : std_logic;
SIGNAL N00477 : std_logic;
SIGNAL N00286 : std_logic;
SIGNAL N00257 : std_logic;
SIGNAL SUB_C0 : std_logic;
SIGNAL SUB_C14 : std_logic;
SIGNAL SUB_C13 : std_logic;
SIGNAL N00427 : std_logic;
SIGNAL N00385 : std_logic;
SIGNAL N00341 : std_logic;
SIGNAL N00193 : std_logic;
SIGNAL ADD_C10 : std_logic;
SIGNAL ADD_C8 : std_logic;
SIGNAL N00476 : std_logic;
SIGNAL N00473 : std_logic;
SIGNAL SUB_C6 : std_logic;
SIGNAL N00300 : std_logic;
SIGNAL N00256 : std_logic;
SIGNAL N00518 : std_logic;
SIGNAL SUB_C4 : std_logic;
SIGNAL N00294 : std_logic;
SIGNAL N00253 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL N00505 : std_logic;
SIGNAL ADD_C13 : std_logic;
SIGNAL N00251 : std_logic;
SIGNAL N00515 : std_logic;
SIGNAL ADD_C3 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL N00358 : std_logic;
SIGNAL N00344 : std_logic;
SIGNAL ADD_C7 : std_logic;
SIGNAL N00339 : std_logic;
SIGNAL N00301 : std_logic;
SIGNAL N00327 : std_logic;
SIGNAL N00283 : std_logic;
SIGNAL ADD_C1 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00374 : std_logic;
SIGNAL N00343 : std_logic;
SIGNAL ADD_C9 : std_logic;
SIGNAL N00209 : std_logic;
SIGNAL N00382 : std_logic;
SIGNAL SUB_C3 : std_logic;
SIGNAL N00250 : std_logic;
SIGNAL N00314 : std_logic;
SIGNAL N00490 : std_logic;
SIGNAL N00462 : std_logic;
SIGNAL N00431 : std_logic;
SIGNAL N00205 : std_logic;
SIGNAL N00502 : std_logic;
SIGNAL ADD_C2 : std_logic;
SIGNAL N00239 : std_logic;
SIGNAL N00447 : std_logic;
SIGNAL N00271 : std_logic;
SIGNAL N00345 : std_logic;
SIGNAL N00255 : std_logic;
SIGNAL N00242 : std_logic;
SIGNAL SUB_C8 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00388 : std_logic;
SIGNAL SUB_C1 : std_logic;
SIGNAL N00513 : std_logic;
SIGNAL N00471 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00426 : std_logic;
SIGNAL SUB_CO : std_logic;
SIGNAL N00338 : std_logic;
SIGNAL N00519 : std_logic;
SIGNAL ADD_C6 : std_logic;
SIGNAL N00402 : std_logic;
SIGNAL N00475 : std_logic;
SIGNAL N00387 : std_logic;
SIGNAL N00359 : std_logic;
SIGNAL N00383 : std_logic;
SIGNAL N00227 : std_logic;
SIGNAL SUB_C5 : std_logic;
SIGNAL N00212 : std_logic;
SIGNAL ADD_C11 : std_logic;
SIGNAL N00418 : std_logic;
SIGNAL N00299 : std_logic;
SIGNAL SUB_C7 : std_logic;
SIGNAL N00186 : std_logic;
SIGNAL N00235 : std_logic;
SIGNAL N00452 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00367 : std_logic;
SIGNAL N00276 : std_logic;
SIGNAL N00279 : std_logic;
SIGNAL N00498 : std_logic;
SIGNAL N00512 : std_logic;
SIGNAL N00517 : std_logic;
SIGNAL SUB_C12 : std_logic;
SIGNAL N00459 : std_logic;
SIGNAL N00429 : std_logic;
SIGNAL N00415 : std_logic;
SIGNAL N00297 : std_logic;
SIGNAL N00207 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL AXB : std_logic;
SIGNAL B_M : std_logic;
SIGNAL N00408 : std_logic;
SIGNAL N00496 : std_logic;
SIGNAL N00364 : std_logic;
SIGNAL N00320 : std_logic;
SIGNAL N00232 : std_logic;
SIGNAL N00411 : std_logic;
SIGNAL N00323 : std_logic;
SIGNAL N00455 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL AAB : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL AABXS : std_logic;
SIGNAL N00483 : std_logic;

-- GATE INSTANCES

BEGIN
S15<=N00483;
U77 : AND2	PORT MAP(
	I0 => C7, 
	I1 => N00189, 
	O => N00196
);
U45 : XNOR4	PORT MAP(
	I3 => C3, 
	I2 => B4, 
	I1 => A4, 
	I0 => ADD, 
	O => S4
);
U13 : AND2	PORT MAP(
	I0 => C0, 
	I1 => N00250, 
	O => N00253
);
U78 : OR2	PORT MAP(
	I1 => N00181, 
	I0 => N00196, 
	O => SUB_C8
);
U46 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => N00402
);
U14 : AND2	PORT MAP(
	I0 => C0, 
	I1 => N00232, 
	O => N00239
);
U79 : OR2	PORT MAP(
	I1 => N00209, 
	I0 => N00213, 
	O => ADD_C8
);
U47 : OR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => N00426
);
U15 : OR2	PORT MAP(
	I1 => N00226, 
	I0 => N00239, 
	O => SUB_C1
);
U48 : AND2	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => N00432
);
U16 : OR2	PORT MAP(
	I1 => N00253, 
	I0 => N00256, 
	O => ADD_C1
);
U49 : AND2	PORT MAP(
	I0 => C4, 
	I1 => N00426, 
	O => N00429
);
U18 : XNOR4	PORT MAP(
	I3 => C0, 
	I2 => B1, 
	I1 => A1, 
	I0 => ADD, 
	O => S1
);
U19 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00270
);
U150 : OR2B1	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00186
);
U151 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00232
);
U152 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00276
);
U120 : AND2	PORT MAP(
	I0 => B13, 
	I1 => A13, 
	O => N00433
);
U153 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00320
);
U121 : AND2	PORT MAP(
	I0 => C12, 
	I1 => N00427, 
	O => N00431
);
U154 : OR2B1	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => N00364
);
U122 : AND2	PORT MAP(
	I0 => C12, 
	I1 => N00411, 
	O => N00418
);
U155 : OR2B1	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => N00408
);
U123 : OR2	PORT MAP(
	I1 => N00403, 
	I0 => N00418, 
	O => SUB_C13
);
U156 : OR2B1	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => N00452
);
U124 : OR2	PORT MAP(
	I1 => N00431, 
	I0 => N00433, 
	O => ADD_C13
);
U157 : OR2B1	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => N00496
);
U158 : OR2B1	PORT MAP(
	I1 => A15, 
	I0 => B15, 
	O => N00498
);
U126 : XNOR4	PORT MAP(
	I3 => C12, 
	I2 => B13, 
	I1 => A13, 
	I0 => ADD, 
	O => S13
);
U159 : OR2B1	PORT MAP(
	I1 => A14, 
	I0 => B14, 
	O => N00455
);
U127 : AND2B1	PORT MAP(
	I0 => B14, 
	I1 => A14, 
	O => N00447
);
U128 : OR2	PORT MAP(
	I1 => A14, 
	I0 => B14, 
	O => N00471
);
U129 : AND2	PORT MAP(
	I0 => B14, 
	I1 => A14, 
	O => N00477
);
U1 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00180
);
U81 : XNOR4	PORT MAP(
	I3 => C7, 
	I2 => B8, 
	I1 => A8, 
	I0 => ADD, 
	O => S8
);
U2 : OR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00204
);
U82 : AND2B1	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => N00227
);
U50 : AND2	PORT MAP(
	I0 => C4, 
	I1 => N00408, 
	O => N00415
);
U3 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00212
);
U83 : OR2	PORT MAP(
	I1 => A9, 
	I0 => B9, 
	O => N00251
);
U51 : OR2	PORT MAP(
	I1 => N00402, 
	I0 => N00415, 
	O => SUB_C5
);
U4 : AND2	PORT MAP(
	I0 => CI, 
	I1 => N00204, 
	O => N00207
);
U84 : AND2	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => N00257
);
U52 : OR2	PORT MAP(
	I1 => N00429, 
	I0 => N00432, 
	O => ADD_C5
);
U20 : OR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00294
);
U5 : AND2	PORT MAP(
	I0 => CI, 
	I1 => N00186, 
	O => N00193
);
U85 : AND2	PORT MAP(
	I0 => C8, 
	I1 => N00251, 
	O => N00255
);
U21 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00300
);
U6 : OR2	PORT MAP(
	I1 => N00180, 
	I0 => N00193, 
	O => SUB_C0
);
U86 : AND2	PORT MAP(
	I0 => C8, 
	I1 => N00235, 
	O => N00242
);
U54 : XNOR4	PORT MAP(
	I3 => C4, 
	I2 => B5, 
	I1 => A5, 
	I0 => ADD, 
	O => S5
);
U22 : AND2	PORT MAP(
	I0 => C1, 
	I1 => N00294, 
	O => N00297
);
U7 : OR2	PORT MAP(
	I1 => N00207, 
	I0 => N00212, 
	O => ADD_C0
);
U87 : OR2	PORT MAP(
	I1 => N00227, 
	I0 => N00242, 
	O => SUB_C9
);
U55 : AND2B1	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => N00446
);
U23 : AND2	PORT MAP(
	I0 => C1, 
	I1 => N00276, 
	O => N00283
);
U88 : OR2	PORT MAP(
	I1 => N00255, 
	I0 => N00257, 
	O => ADD_C9
);
U56 : OR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => N00470
);
U24 : OR2	PORT MAP(
	I1 => N00270, 
	I0 => N00283, 
	O => SUB_C2
);
U9 : XNOR4	PORT MAP(
	I3 => CI, 
	I2 => B0, 
	I1 => A0, 
	I0 => ADD, 
	O => S0
);
U57 : AND2	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => N00476
);
U25 : OR2	PORT MAP(
	I1 => N00297, 
	I0 => N00300, 
	O => ADD_C2
);
U58 : AND2	PORT MAP(
	I0 => C5, 
	I1 => N00470, 
	O => N00473
);
U59 : AND2	PORT MAP(
	I0 => C5, 
	I1 => N00452, 
	O => N00459
);
U27 : XNOR4	PORT MAP(
	I3 => C1, 
	I2 => B2, 
	I1 => A2, 
	I0 => ADD, 
	O => S2
);
U28 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00314
);
U29 : OR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00338
);
U160 : OR2B1	PORT MAP(
	I1 => A13, 
	I0 => B13, 
	O => N00411
);
U161 : OR2B1	PORT MAP(
	I1 => A12, 
	I0 => B12, 
	O => N00367
);
U162 : OR2B1	PORT MAP(
	I1 => A11, 
	I0 => B11, 
	O => N00323
);
U130 : AND2	PORT MAP(
	I0 => C13, 
	I1 => N00471, 
	O => N00475
);
U163 : OR2B1	PORT MAP(
	I1 => A10, 
	I0 => B10, 
	O => N00279
);
U131 : AND2	PORT MAP(
	I0 => C13, 
	I1 => N00455, 
	O => N00462
);
U164 : OR2B1	PORT MAP(
	I1 => A9, 
	I0 => B9, 
	O => N00235
);
U132 : OR2	PORT MAP(
	I1 => N00447, 
	I0 => N00462, 
	O => SUB_C14
);
U100 : AND2B1	PORT MAP(
	I0 => B11, 
	I1 => A11, 
	O => N00315
);
U165 : OR2B1	PORT MAP(
	I1 => A8, 
	I0 => B8, 
	O => N00189
);
U133 : OR2	PORT MAP(
	I1 => N00475, 
	I0 => N00477, 
	O => ADD_C14
);
U101 : OR2	PORT MAP(
	I1 => A11, 
	I0 => B11, 
	O => N00339
);
U102 : AND2	PORT MAP(
	I0 => B11, 
	I1 => A11, 
	O => N00345
);
U135 : XNOR4	PORT MAP(
	I3 => C13, 
	I2 => B14, 
	I1 => A14, 
	I0 => ADD, 
	O => S14
);
U103 : AND2	PORT MAP(
	I0 => C10, 
	I1 => N00339, 
	O => N00343
);
U136 : AND2B1	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	O => N00491
);
U104 : AND2	PORT MAP(
	I0 => C10, 
	I1 => N00323, 
	O => N00330
);
U137 : OR2	PORT MAP(
	I1 => A15, 
	I0 => B15, 
	O => N00513
);
U105 : OR2	PORT MAP(
	I1 => N00315, 
	I0 => N00330, 
	O => SUB_C11
);
U138 : AND2	PORT MAP(
	I0 => B15, 
	I1 => A15, 
	O => N00519
);
U106 : OR2	PORT MAP(
	I1 => N00343, 
	I0 => N00345, 
	O => ADD_C11
);
U139 : AND2	PORT MAP(
	I0 => C14, 
	I1 => N00513, 
	O => N00517
);
U108 : XNOR4	PORT MAP(
	I3 => C10, 
	I2 => B11, 
	I1 => A11, 
	I0 => ADD, 
	O => S11
);
U109 : AND2B1	PORT MAP(
	I0 => B12, 
	I1 => A12, 
	O => N00359
);
U90 : XNOR4	PORT MAP(
	I3 => C8, 
	I2 => B9, 
	I1 => A9, 
	I0 => ADD, 
	O => S9
);
U91 : AND2B1	PORT MAP(
	I0 => B10, 
	I1 => A10, 
	O => N00271
);
U92 : OR2	PORT MAP(
	I1 => A10, 
	I0 => B10, 
	O => N00295
);
U60 : OR2	PORT MAP(
	I1 => N00446, 
	I0 => N00459, 
	O => SUB_C6
);
U93 : AND2	PORT MAP(
	I0 => B10, 
	I1 => A10, 
	O => N00301
);
U61 : OR2	PORT MAP(
	I1 => N00473, 
	I0 => N00476, 
	O => ADD_C6
);
U94 : AND2	PORT MAP(
	I0 => C9, 
	I1 => N00295, 
	O => N00299
);
U30 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00344
);
U95 : AND2	PORT MAP(
	I0 => C9, 
	I1 => N00279, 
	O => N00286
);
U63 : XNOR4	PORT MAP(
	I3 => C5, 
	I2 => B6, 
	I1 => A6, 
	I0 => ADD, 
	O => S6
);
U31 : AND2	PORT MAP(
	I0 => C2, 
	I1 => N00338, 
	O => N00341
);
U96 : OR2	PORT MAP(
	I1 => N00271, 
	I0 => N00286, 
	O => SUB_C10
);
U64 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => N00490
);
U32 : AND2	PORT MAP(
	I0 => C2, 
	I1 => N00320, 
	O => N00327
);
U97 : OR2	PORT MAP(
	I1 => N00299, 
	I0 => N00301, 
	O => ADD_C10
);
U65 : OR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => N00512
);
U33 : OR2	PORT MAP(
	I1 => N00314, 
	I0 => N00327, 
	O => SUB_C3
);
U66 : AND2	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => N00518
);
U34 : OR2	PORT MAP(
	I1 => N00341, 
	I0 => N00344, 
	O => ADD_C3
);
U99 : XNOR4	PORT MAP(
	I3 => C9, 
	I2 => B10, 
	I1 => A10, 
	I0 => ADD, 
	O => S10
);
U67 : AND2	PORT MAP(
	I0 => C6, 
	I1 => N00512, 
	O => N00515
);
U68 : AND2	PORT MAP(
	I0 => C6, 
	I1 => N00496, 
	O => N00502
);
U36 : XNOR4	PORT MAP(
	I3 => C2, 
	I2 => B3, 
	I1 => A3, 
	I0 => ADD, 
	O => S3
);
U69 : OR2	PORT MAP(
	I1 => N00490, 
	I0 => N00502, 
	O => SUB_C7
);
U37 : AND2B1	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00358
);
U38 : OR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => N00382
);
U39 : AND2	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00388
);
U140 : AND2	PORT MAP(
	I0 => C14, 
	I1 => N00498, 
	O => N00505
);
U141 : OR2	PORT MAP(
	I1 => N00491, 
	I0 => N00505, 
	O => SUB_CO
);
U142 : OR2	PORT MAP(
	I1 => N00517, 
	I0 => N00519, 
	O => ADD_CO
);
U110 : OR2	PORT MAP(
	I1 => A12, 
	I0 => B12, 
	O => N00383
);
U111 : AND2	PORT MAP(
	I0 => B12, 
	I1 => A12, 
	O => N00389
);
U144 : XNOR4	PORT MAP(
	I3 => C14, 
	I2 => B15, 
	I1 => A15, 
	I0 => ADD, 
	O => N00483
);
U112 : AND2	PORT MAP(
	I0 => C11, 
	I1 => N00383, 
	O => N00387
);
U145 : XNOR2	PORT MAP(
	I1 => ADD, 
	I0 => B15, 
	O => B_M
);
U113 : AND2	PORT MAP(
	I0 => C11, 
	I1 => N00367, 
	O => N00374
);
U146 : XNOR2	PORT MAP(
	I1 => B_M, 
	I0 => A15, 
	O => AXB
);
U114 : OR2	PORT MAP(
	I1 => N00359, 
	I0 => N00374, 
	O => SUB_C12
);
U147 : AND2	PORT MAP(
	I0 => A15, 
	I1 => B_M, 
	O => AAB
);
U115 : OR2	PORT MAP(
	I1 => N00387, 
	I0 => N00389, 
	O => ADD_C12
);
U148 : XOR2	PORT MAP(
	I1 => N00483, 
	I0 => AAB, 
	O => AABXS
);
U149 : AND2	PORT MAP(
	I0 => AABXS, 
	I1 => AXB, 
	O => OFL
);
U117 : XNOR4	PORT MAP(
	I3 => C11, 
	I2 => B12, 
	I1 => A12, 
	I0 => ADD, 
	O => S12
);
U118 : AND2B1	PORT MAP(
	I0 => B13, 
	I1 => A13, 
	O => N00403
);
U119 : OR2	PORT MAP(
	I1 => A13, 
	I0 => B13, 
	O => N00427
);
U70 : OR2	PORT MAP(
	I1 => N00515, 
	I0 => N00518, 
	O => ADD_C7
);
U72 : XNOR4	PORT MAP(
	I3 => C6, 
	I2 => B7, 
	I1 => A7, 
	I0 => ADD, 
	O => S7
);
U40 : AND2	PORT MAP(
	I0 => C3, 
	I1 => N00382, 
	O => N00385
);
U73 : AND2B1	PORT MAP(
	I0 => B8, 
	I1 => A8, 
	O => N00181
);
U41 : AND2	PORT MAP(
	I0 => C3, 
	I1 => N00364, 
	O => N00371
);
U74 : OR2	PORT MAP(
	I1 => A8, 
	I0 => B8, 
	O => N00205
);
U42 : OR2	PORT MAP(
	I1 => N00358, 
	I0 => N00371, 
	O => SUB_C4
);
U10 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00226
);
U75 : AND2	PORT MAP(
	I0 => B8, 
	I1 => A8, 
	O => N00213
);
U43 : OR2	PORT MAP(
	I1 => N00385, 
	I0 => N00388, 
	O => ADD_C4
);
U11 : OR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00250
);
U76 : AND2	PORT MAP(
	I0 => C7, 
	I1 => N00205, 
	O => N00209
);
U12 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00256
);
U44 : M2_1	PORT MAP(
	D0 => SUB_C4, 
	D1 => ADD_C4, 
	S0 => ADD, 
	O => C4
);
U125 : M2_1	PORT MAP(
	D0 => SUB_C13, 
	D1 => ADD_C13, 
	S0 => ADD, 
	O => C13
);
U89 : M2_1	PORT MAP(
	D0 => SUB_C9, 
	D1 => ADD_C9, 
	S0 => ADD, 
	O => C9
);
U35 : M2_1	PORT MAP(
	D0 => SUB_C3, 
	D1 => ADD_C3, 
	S0 => ADD, 
	O => C3
);
U116 : M2_1	PORT MAP(
	D0 => SUB_C12, 
	D1 => ADD_C12, 
	S0 => ADD, 
	O => C12
);
U26 : M2_1	PORT MAP(
	D0 => SUB_C2, 
	D1 => ADD_C2, 
	S0 => ADD, 
	O => C2
);
U107 : M2_1	PORT MAP(
	D0 => SUB_C11, 
	D1 => ADD_C11, 
	S0 => ADD, 
	O => C11
);
U8 : M2_1	PORT MAP(
	D0 => SUB_C0, 
	D1 => ADD_C0, 
	S0 => ADD, 
	O => C0
);
U17 : M2_1	PORT MAP(
	D0 => SUB_C1, 
	D1 => ADD_C1, 
	S0 => ADD, 
	O => C1
);
U80 : M2_1	PORT MAP(
	D0 => SUB_C8, 
	D1 => ADD_C8, 
	S0 => ADD, 
	O => C8
);
U71 : M2_1	PORT MAP(
	D0 => SUB_C7, 
	D1 => ADD_C7, 
	S0 => ADD, 
	O => C7
);
U62 : M2_1	PORT MAP(
	D0 => SUB_C6, 
	D1 => ADD_C6, 
	S0 => ADD, 
	O => C6
);
U143 : M2_1	PORT MAP(
	D0 => SUB_CO, 
	D1 => ADD_CO, 
	S0 => ADD, 
	O => CO
);
U53 : M2_1	PORT MAP(
	D0 => SUB_C5, 
	D1 => ADD_C5, 
	S0 => ADD, 
	O => C5
);
U134 : M2_1	PORT MAP(
	D0 => SUB_C14, 
	D1 => ADD_C14, 
	S0 => ADD, 
	O => C14
);
U98 : M2_1	PORT MAP(
	D0 => SUB_C10, 
	D1 => ADD_C10, 
	S0 => ADD, 
	O => C10
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
SIGNAL N00061 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00051 : std_logic;

-- GATE INSTANCES

BEGIN
U22 : M2_1	PORT MAP(
	D0 => N00042, 
	D1 => N00038, 
	S0 => S2, 
	O => O5
);
U3 : M2_1	PORT MAP(
	D0 => I2, 
	D1 => I3, 
	S0 => S0, 
	O => N00031
);
U11 : M2_1	PORT MAP(
	D0 => N00031, 
	D1 => N00051, 
	S0 => S1, 
	O => N00048
);
U23 : M2_1	PORT MAP(
	D0 => N00052, 
	D1 => N00048, 
	S0 => S2, 
	O => O6
);
U4 : M2_1	PORT MAP(
	D0 => I3, 
	D1 => I4, 
	S0 => S0, 
	O => N00041
);
U12 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => N00061, 
	S0 => S1, 
	O => N00058
);
U24 : M2_1	PORT MAP(
	D0 => N00062, 
	D1 => N00058, 
	S0 => S2, 
	O => O7
);
U5 : M2_1	PORT MAP(
	D0 => I4, 
	D1 => I5, 
	S0 => S0, 
	O => N00051
);
U13 : M2_1	PORT MAP(
	D0 => N00051, 
	D1 => N00071, 
	S0 => S1, 
	O => N00032
);
U6 : M2_1	PORT MAP(
	D0 => I5, 
	D1 => I6, 
	S0 => S0, 
	O => N00061
);
U14 : M2_1	PORT MAP(
	D0 => N00061, 
	D1 => N00081, 
	S0 => S1, 
	O => N00042
);
U15 : M2_1	PORT MAP(
	D0 => N00071, 
	D1 => N00027, 
	S0 => S1, 
	O => N00052
);
U7 : M2_1	PORT MAP(
	D0 => I6, 
	D1 => I7, 
	S0 => S0, 
	O => N00071
);
U16 : M2_1	PORT MAP(
	D0 => N00081, 
	D1 => N00037, 
	S0 => S1, 
	O => N00062
);
U8 : M2_1	PORT MAP(
	D0 => I7, 
	D1 => I0, 
	S0 => S0, 
	O => N00081
);
U17 : M2_1	PORT MAP(
	D0 => N00028, 
	D1 => N00032, 
	S0 => S2, 
	O => O0
);
U9 : M2_1	PORT MAP(
	D0 => N00027, 
	D1 => N00031, 
	S0 => S1, 
	O => N00028
);
U18 : M2_1	PORT MAP(
	D0 => N00038, 
	D1 => N00042, 
	S0 => S2, 
	O => O1
);
U19 : M2_1	PORT MAP(
	D0 => N00048, 
	D1 => N00052, 
	S0 => S2, 
	O => O2
);
U20 : M2_1	PORT MAP(
	D0 => N00058, 
	D1 => N00062, 
	S0 => S2, 
	O => O3
);
U1 : M2_1	PORT MAP(
	D0 => I0, 
	D1 => I1, 
	S0 => S0, 
	O => N00027
);
U21 : M2_1	PORT MAP(
	D0 => N00032, 
	D1 => N00028, 
	S0 => S2, 
	O => O4
);
U2 : M2_1	PORT MAP(
	D0 => I1, 
	D1 => I2, 
	S0 => S0, 
	O => N00037
);
U10 : M2_1	PORT MAP(
	D0 => N00037, 
	D1 => N00041, 
	S0 => S1, 
	O => N00038
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
SIGNAL T3 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00055 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00089;
Q0<=N00022;
Q1<=N00028;
Q2<=N00036;
Q3<=N00045;
Q4<=N00055;
Q5<=N00063;
Q6<=N00072;
Q7<=N00082;
U13 : GND	PORT MAP(
	G => N00020
);
U14 : AND2	PORT MAP(
	I0 => N00055, 
	I1 => T4, 
	O => T5
);
U15 : AND3	PORT MAP(
	I0 => N00063, 
	I1 => N00055, 
	I2 => T4, 
	O => T6
);
U16 : AND4	PORT MAP(
	I0 => N00072, 
	I1 => N00063, 
	I2 => N00055, 
	I3 => T4, 
	O => T7
);
U17 : AND5	PORT MAP(
	I0 => N00082, 
	I1 => N00072, 
	I2 => N00063, 
	I3 => N00055, 
	I4 => T4, 
	O => N00089
);
U18 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00089, 
	O => CEO
);
U1 : VCC	PORT MAP(
	P => N00021
);
U2 : AND2	PORT MAP(
	I0 => N00028, 
	I1 => N00022, 
	O => T2
);
U3 : AND3	PORT MAP(
	I0 => N00036, 
	I1 => N00028, 
	I2 => N00022, 
	O => T3
);
U4 : AND4	PORT MAP(
	I0 => N00045, 
	I1 => N00036, 
	I2 => N00028, 
	I3 => N00022, 
	O => T4
);
U11 : FTRSE	PORT MAP(
	T => T6, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00072, 
	R => R
);
U12 : FTRSE	PORT MAP(
	T => T7, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00082, 
	R => R
);
U5 : FTRSE	PORT MAP(
	T => N00021, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00022, 
	R => R
);
U6 : FTRSE	PORT MAP(
	T => N00022, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00028, 
	R => R
);
U7 : FTRSE	PORT MAP(
	T => T2, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00036, 
	R => R
);
U8 : FTRSE	PORT MAP(
	T => T3, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00045, 
	R => R
);
U9 : FTRSE	PORT MAP(
	T => T4, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00055, 
	R => R
);
U10 : FTRSE	PORT MAP(
	T => T5, 
	CE => CE, 
	C => C, 
	S => N00020, 
	Q => N00063, 
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
U1 : IBUF	PORT MAP(
	O => O7, 
	I => I7
);
U2 : IBUF	PORT MAP(
	O => O6, 
	I => I6
);
U3 : IBUF	PORT MAP(
	O => O5, 
	I => I5
);
U4 : IBUF	PORT MAP(
	O => O4, 
	I => I4
);
U5 : IBUF	PORT MAP(
	O => O3, 
	I => I3
);
U6 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U7 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U8 : IBUF	PORT MAP(
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

COMPONENT NAND5
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
SIGNAL N00006 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	O => N00006
);
U2 : NAND5	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	I4 => N00006, 
	O => O
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL ADD_C0 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL ADD_C1 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00248 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL ADD_CO : std_logic;
SIGNAL N00240 : std_logic;
SIGNAL SUB_C6 : std_logic;
SIGNAL ADD_C5 : std_logic;
SIGNAL SUB_C5 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00241 : std_logic;
SIGNAL ADD_C3 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL SUB_C2 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL SUB_C0 : std_logic;
SIGNAL ADD_C4 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00263 : std_logic;
SIGNAL SUB_C3 : std_logic;
SIGNAL ADD_C2 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00218 : std_logic;
SIGNAL SUB_C4 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00260 : std_logic;
SIGNAL N00233 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00262 : std_logic;
SIGNAL ADD_C6 : std_logic;
SIGNAL N00216 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL N00197 : std_logic;
SIGNAL N00194 : std_logic;
SIGNAL N00163 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00185 : std_logic;
SIGNAL N00229 : std_logic;
SIGNAL N00207 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00251 : std_logic;
SIGNAL N00211 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL SUB_CO : std_logic;
SIGNAL N00255 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL SUB_C1 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00174 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL AXB : std_logic;
SIGNAL B_M : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00244 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL AAB : std_logic;
SIGNAL AABXS : std_logic;

-- GATE INSTANCES

BEGIN
S7<=N00244;
U77 : AND2	PORT MAP(
	I0 => AABXS, 
	I1 => AXB, 
	O => OFL
);
U45 : XNOR4	PORT MAP(
	I3 => C3, 
	I2 => B4, 
	I1 => A4, 
	I0 => ADD, 
	O => S4
);
U13 : AND2	PORT MAP(
	I0 => C0, 
	I1 => N00128, 
	O => N00130
);
U78 : OR2B1	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00096
);
U46 : AND2B1	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => N00204
);
U14 : AND2	PORT MAP(
	I0 => C0, 
	I1 => N00119, 
	O => N00123
);
U79 : OR2B1	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00119
);
U47 : OR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => N00216
);
U15 : OR2	PORT MAP(
	I1 => N00116, 
	I0 => N00123, 
	O => SUB_C1
);
U48 : AND2	PORT MAP(
	I0 => B5, 
	I1 => A5, 
	O => N00219
);
U16 : OR2	PORT MAP(
	I1 => N00130, 
	I0 => N00131, 
	O => ADD_C1
);
U49 : AND2	PORT MAP(
	I0 => C4, 
	I1 => N00216, 
	O => N00218
);
U18 : XNOR4	PORT MAP(
	I3 => C0, 
	I2 => B1, 
	I1 => A1, 
	I0 => ADD, 
	O => S1
);
U19 : AND2B1	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00138
);
U80 : OR2B1	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00141
);
U1 : AND2B1	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00093
);
U81 : OR2B1	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00163
);
U2 : OR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => N00105
);
U82 : OR2B1	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => N00185
);
U50 : AND2	PORT MAP(
	I0 => C4, 
	I1 => N00207, 
	O => N00211
);
U3 : AND2	PORT MAP(
	I0 => B0, 
	I1 => A0, 
	O => N00109
);
U83 : OR2B1	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => N00207
);
U51 : OR2	PORT MAP(
	I1 => N00204, 
	I0 => N00211, 
	O => SUB_C5
);
U4 : AND2	PORT MAP(
	I0 => CI, 
	I1 => N00105, 
	O => N00107
);
U84 : OR2B1	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => N00229
);
U52 : OR2	PORT MAP(
	I1 => N00218, 
	I0 => N00219, 
	O => ADD_C5
);
U20 : OR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => N00150
);
U5 : AND2	PORT MAP(
	I0 => CI, 
	I1 => N00096, 
	O => N00100
);
U85 : OR2B1	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => N00251
);
U21 : AND2	PORT MAP(
	I0 => B2, 
	I1 => A2, 
	O => N00153
);
U6 : OR2	PORT MAP(
	I1 => N00093, 
	I0 => N00100, 
	O => SUB_C0
);
U54 : XNOR4	PORT MAP(
	I3 => C4, 
	I2 => B5, 
	I1 => A5, 
	I0 => ADD, 
	O => S5
);
U22 : AND2	PORT MAP(
	I0 => C1, 
	I1 => N00150, 
	O => N00152
);
U7 : OR2	PORT MAP(
	I1 => N00107, 
	I0 => N00109, 
	O => ADD_C0
);
U55 : AND2B1	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => N00226
);
U23 : AND2	PORT MAP(
	I0 => C1, 
	I1 => N00141, 
	O => N00145
);
U56 : OR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => N00238
);
U24 : OR2	PORT MAP(
	I1 => N00138, 
	I0 => N00145, 
	O => SUB_C2
);
U9 : XNOR4	PORT MAP(
	I3 => CI, 
	I2 => B0, 
	I1 => A0, 
	I0 => ADD, 
	O => S0
);
U57 : AND2	PORT MAP(
	I0 => B6, 
	I1 => A6, 
	O => N00241
);
U25 : OR2	PORT MAP(
	I1 => N00152, 
	I0 => N00153, 
	O => ADD_C2
);
U58 : AND2	PORT MAP(
	I0 => C5, 
	I1 => N00238, 
	O => N00240
);
U59 : AND2	PORT MAP(
	I0 => C5, 
	I1 => N00229, 
	O => N00233
);
U27 : XNOR4	PORT MAP(
	I3 => C1, 
	I2 => B2, 
	I1 => A2, 
	I0 => ADD, 
	O => S2
);
U28 : AND2B1	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00160
);
U29 : OR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => N00172
);
U60 : OR2	PORT MAP(
	I1 => N00226, 
	I0 => N00233, 
	O => SUB_C6
);
U61 : OR2	PORT MAP(
	I1 => N00240, 
	I0 => N00241, 
	O => ADD_C6
);
U30 : AND2	PORT MAP(
	I0 => B3, 
	I1 => A3, 
	O => N00175
);
U63 : XNOR4	PORT MAP(
	I3 => C5, 
	I2 => B6, 
	I1 => A6, 
	I0 => ADD, 
	O => S6
);
U31 : AND2	PORT MAP(
	I0 => C2, 
	I1 => N00172, 
	O => N00174
);
U64 : AND2B1	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => N00248
);
U32 : AND2	PORT MAP(
	I0 => C2, 
	I1 => N00163, 
	O => N00167
);
U65 : OR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => N00260
);
U33 : OR2	PORT MAP(
	I1 => N00160, 
	I0 => N00167, 
	O => SUB_C3
);
U66 : AND2	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => N00263
);
U34 : OR2	PORT MAP(
	I1 => N00174, 
	I0 => N00175, 
	O => ADD_C3
);
U67 : AND2	PORT MAP(
	I0 => C6, 
	I1 => N00260, 
	O => N00262
);
U68 : AND2	PORT MAP(
	I0 => C6, 
	I1 => N00251, 
	O => N00255
);
U36 : XNOR4	PORT MAP(
	I3 => C2, 
	I2 => B3, 
	I1 => A3, 
	I0 => ADD, 
	O => S3
);
U69 : OR2	PORT MAP(
	I1 => N00248, 
	I0 => N00255, 
	O => SUB_CO
);
U37 : AND2B1	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00182
);
U38 : OR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => N00194
);
U39 : AND2	PORT MAP(
	I0 => B4, 
	I1 => A4, 
	O => N00197
);
U70 : OR2	PORT MAP(
	I1 => N00262, 
	I0 => N00263, 
	O => ADD_CO
);
U72 : XNOR4	PORT MAP(
	I3 => C6, 
	I2 => B7, 
	I1 => A7, 
	I0 => ADD, 
	O => N00244
);
U40 : AND2	PORT MAP(
	I0 => C3, 
	I1 => N00194, 
	O => N00196
);
U73 : XNOR2	PORT MAP(
	I1 => ADD, 
	I0 => B7, 
	O => B_M
);
U41 : AND2	PORT MAP(
	I0 => C3, 
	I1 => N00185, 
	O => N00189
);
U74 : XNOR2	PORT MAP(
	I1 => B_M, 
	I0 => A7, 
	O => AXB
);
U42 : OR2	PORT MAP(
	I1 => N00182, 
	I0 => N00189, 
	O => SUB_C4
);
U10 : AND2B1	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00116
);
U75 : AND2	PORT MAP(
	I0 => A7, 
	I1 => B_M, 
	O => AAB
);
U43 : OR2	PORT MAP(
	I1 => N00196, 
	I0 => N00197, 
	O => ADD_C4
);
U11 : OR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => N00128
);
U76 : XOR2	PORT MAP(
	I1 => N00244, 
	I0 => AAB, 
	O => AABXS
);
U12 : AND2	PORT MAP(
	I0 => B1, 
	I1 => A1, 
	O => N00131
);
U44 : M2_1	PORT MAP(
	D0 => SUB_C4, 
	D1 => ADD_C4, 
	S0 => ADD, 
	O => C4
);
U35 : M2_1	PORT MAP(
	D0 => SUB_C3, 
	D1 => ADD_C3, 
	S0 => ADD, 
	O => C3
);
U26 : M2_1	PORT MAP(
	D0 => SUB_C2, 
	D1 => ADD_C2, 
	S0 => ADD, 
	O => C2
);
U8 : M2_1	PORT MAP(
	D0 => SUB_C0, 
	D1 => ADD_C0, 
	S0 => ADD, 
	O => C0
);
U17 : M2_1	PORT MAP(
	D0 => SUB_C1, 
	D1 => ADD_C1, 
	S0 => ADD, 
	O => C1
);
U71 : M2_1	PORT MAP(
	D0 => SUB_CO, 
	D1 => ADD_CO, 
	S0 => ADD, 
	O => CO
);
U62 : M2_1	PORT MAP(
	D0 => SUB_C6, 
	D1 => ADD_C6, 
	S0 => ADD, 
	O => C6
);
U53 : M2_1	PORT MAP(
	D0 => SUB_C5, 
	D1 => ADD_C5, 
	S0 => ADD, 
	O => C5
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

COMPONENT AND5
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
SIGNAL I46 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	O => I46
);
U2 : AND5	PORT MAP(
	I0 => I0, 
	I1 => I1, 
	I2 => I2, 
	I3 => I3, 
	I4 => I46, 
	O => O
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic
); END BUFE4;



ARCHITECTURE STRUCTURE OF BUFE4 IS

-- COMPONENTS

COMPONENT BUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;

-- GATE INSTANCES

BEGIN
XU1 : BUFT	PORT MAP(
	T => N00008, 
	I => I0, 
	O => O0
);
XU2 : BUFT	PORT MAP(
	T => N00008, 
	I => I1, 
	O => O1
);
XU3 : BUFT	PORT MAP(
	T => N00008, 
	I => I2, 
	O => O2
);
XU4 : BUFT	PORT MAP(
	T => N00008, 
	I => I3, 
	O => O3
);
U1 : INV	PORT MAP(
	O => N00008, 
	I => E
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
SIGNAL N00011 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00015;
Q1<=N00025;
Q2<=N00035;
Q3<=N00012;
Q4<=N00013;
Q5<=N00024;
Q6<=N00034;
Q7<=N00011;
U1 : FDCE	PORT MAP(
	D => N00012, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00013
);
U2 : FDCE	PORT MAP(
	D => N00013, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00024
);
U3 : FDCE	PORT MAP(
	D => N00024, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00034
);
U4 : FDCE	PORT MAP(
	D => N00034, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00011
);
U5 : FDCE	PORT MAP(
	D => Q7B, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00015
);
U6 : FDCE	PORT MAP(
	D => N00015, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00025
);
U7 : FDCE	PORT MAP(
	D => N00025, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00035
);
U8 : FDCE	PORT MAP(
	D => N00035, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00012
);
U9 : INV	PORT MAP(
	O => Q7B, 
	I => N00011
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
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR2	PORT MAP(
	I1 => D, 
	I0 => S, 
	O => N00005
);
U2 : FD	PORT MAP(
	D => N00005, 
	C => C, 
	Q => Q
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
	O => O3, 
	I => I3
);
U14 : IBUF	PORT MAP(
	O => O2, 
	I => I2
);
U15 : IBUF	PORT MAP(
	O => O1, 
	I => I1
);
U16 : IBUF	PORT MAP(
	O => O0, 
	I => I0
);
U1 : IBUF	PORT MAP(
	O => O15, 
	I => I15
);
U2 : IBUF	PORT MAP(
	O => O14, 
	I => I14
);
U3 : IBUF	PORT MAP(
	O => O13, 
	I => I13
);
U4 : IBUF	PORT MAP(
	O => O12, 
	I => I12
);
U5 : IBUF	PORT MAP(
	O => O11, 
	I => I11
);
U6 : IBUF	PORT MAP(
	O => O10, 
	I => I10
);
U7 : IBUF	PORT MAP(
	O => O9, 
	I => I9
);
U8 : IBUF	PORT MAP(
	O => O8, 
	I => I8
);
U9 : IBUF	PORT MAP(
	O => O7, 
	I => I7
);
U10 : IBUF	PORT MAP(
	O => O6, 
	I => I6
);
U11 : IBUF	PORT MAP(
	O => O5, 
	I => I5
);
U12 : IBUF	PORT MAP(
	O => O4, 
	I => I4
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
SIGNAL M45 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => S2, 
	O => O, 
	E => E
);
U4 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => S0, 
	O => M01
);
U5 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => S0, 
	O => M23
);
U6 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => S0, 
	O => M45
);
U7 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => S0, 
	O => M67
);
U1 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => S1, 
	O => M03
);
U2 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => S1, 
	O => M47
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

COMPONENT NAND3
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
U1 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I12, 
	I2 => I35, 
	O => O
);
U2 : AND2	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	O => I12
);
U3 : AND3	PORT MAP(
	I0 => I3, 
	I1 => I4, 
	I2 => I5, 
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

COMPONENT OR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
U2 : NOR5	PORT MAP(
	I4 => I47, 
	I3 => I3, 
	I2 => I2, 
	I1 => I1, 
	I0 => I0, 
	O => O
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

COMPONENT OFD
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY OFDE IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDE;



ARCHITECTURE STRUCTURE OF OFDE IS

-- COMPONENTS

COMPONENT OFDT
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OFDT	PORT MAP(
	T => N00005, 
	D => D, 
	C => C, 
	O => O
);
U2 : INV	PORT MAP(
	O => N00005, 
	I => E
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
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic
); END OFDE4;



ARCHITECTURE STRUCTURE OF OFDE4 IS

-- COMPONENTS

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
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
	OPAD => O4
);
U14 : OPAD	PORT MAP(
	OPAD => O5
);
U15 : OPAD	PORT MAP(
	OPAD => O6
);
U16 : OPAD	PORT MAP(
	OPAD => O7
);
U1 : OPAD	PORT MAP(
	OPAD => O8
);
U2 : OPAD	PORT MAP(
	OPAD => O9
);
U3 : OPAD	PORT MAP(
	OPAD => O10
);
U4 : OPAD	PORT MAP(
	OPAD => O11
);
U5 : OPAD	PORT MAP(
	OPAD => O12
);
U6 : OPAD	PORT MAP(
	OPAD => O13
);
U7 : OPAD	PORT MAP(
	OPAD => O14
);
U8 : OPAD	PORT MAP(
	OPAD => O15
);
U9 : OPAD	PORT MAP(
	OPAD => O0
);
U10 : OPAD	PORT MAP(
	OPAD => O1
);
U11 : OPAD	PORT MAP(
	OPAD => O2
);
U12 : OPAD	PORT MAP(
	OPAD => O3
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
SIGNAL M45 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL O : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL E : std_logic;
SIGNAL M23 : std_logic;

-- GATE INSTANCES

BEGIN
Y<=O;
U7 : INV	PORT MAP(
	O => W, 
	I => O
);
U8 : INV	PORT MAP(
	O => E, 
	I => G
);
U3 : M2_1	PORT MAP(
	D0 => D4, 
	D1 => D5, 
	S0 => A, 
	O => M45
);
U4 : M2_1	PORT MAP(
	D0 => D6, 
	D1 => D7, 
	S0 => A, 
	O => M67
);
U5 : M2_1	PORT MAP(
	D0 => M01, 
	D1 => M23, 
	S0 => B, 
	O => M03
);
U6 : M2_1	PORT MAP(
	D0 => M45, 
	D1 => M67, 
	S0 => B, 
	O => M47
);
U9 : M2_1E	PORT MAP(
	D0 => M03, 
	D1 => M47, 
	S0 => C, 
	O => O, 
	E => E
);
U1 : M2_1	PORT MAP(
	D0 => D0, 
	D1 => D1, 
	S0 => A, 
	O => M01
);
U2 : M2_1	PORT MAP(
	D0 => D2, 
	D1 => D3, 
	S0 => A, 
	O => M23
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

COMPONENT AND4B3
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

COMPONENT M2_1	 PORT (
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

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00296 : std_logic;
SIGNAL N00263 : std_logic;
SIGNAL N00232 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00220 : std_logic;
SIGNAL N00190 : std_logic;
SIGNAL N00158 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL T8_DN : std_logic;
SIGNAL T6_UP : std_logic;
SIGNAL T5_UP : std_logic;
SIGNAL T4 : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T12_UP : std_logic;
SIGNAL T11_DN : std_logic;
SIGNAL T9_UP : std_logic;
SIGNAL T7_DN : std_logic;
SIGNAL T12_DN : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T5_DN : std_logic;
SIGNAL T9 : std_logic;
SIGNAL T10_DN : std_logic;
SIGNAL T9_DN : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL T14_DN : std_logic;
SIGNAL T10_UP : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T6_DN : std_logic;
SIGNAL T8_UP : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T13_DN : std_logic;
SIGNAL T11 : std_logic;
SIGNAL T7_UP : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T15_UP : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T15_DN : std_logic;
SIGNAL T4_UP : std_logic;
SIGNAL T13_UP : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T14_UP : std_logic;
SIGNAL T11_UP : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T4_DN : std_logic;
SIGNAL N11965 : std_logic;
SIGNAL N00313 : std_logic;
SIGNAL T3_DN : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00313;
Q15<=N00296;
Q0<=N00081;
Q1<=N00098;
Q2<=N00126;
Q3<=N00158;
Q4<=N00190;
Q5<=N00220;
Q6<=N00067;
Q7<=N00066;
Q8<=N00072;
Q9<=N00106;
Q10<=N00135;
Q11<=N00167;
Q12<=N00201;
Q13<=N00232;
Q14<=N00263;
U45 : AND2	PORT MAP(
	I0 => N00067, 
	I1 => T6, 
	O => T7_UP
);
U46 : AND3B2	PORT MAP(
	I0 => N00066, 
	I1 => N00067, 
	I2 => T6, 
	O => T8_DN
);
U47 : AND3	PORT MAP(
	I0 => N00066, 
	I1 => N00067, 
	I2 => T6, 
	O => T8_UP
);
U48 : AND2B1	PORT MAP(
	I0 => N00296, 
	I1 => T15, 
	O => TC_DN
);
U49 : AND2	PORT MAP(
	I0 => N00296, 
	I1 => T15, 
	O => TC_UP
);
U50 : AND4	PORT MAP(
	I0 => N00263, 
	I1 => N00232, 
	I2 => N00201, 
	I3 => T12, 
	O => T15_UP
);
U3 : VCC	PORT MAP(
	P => N00080
);
U51 : AND3B2	PORT MAP(
	I0 => N00232, 
	I1 => N00201, 
	I2 => T12, 
	O => T14_DN
);
U52 : AND3	PORT MAP(
	I0 => N00232, 
	I1 => N00201, 
	I2 => T12, 
	O => T14_UP
);
U5 : AND2B2	PORT MAP(
	I0 => N00098, 
	I1 => N00081, 
	O => T2_DN
);
U53 : AND2B1	PORT MAP(
	I0 => N00201, 
	I1 => T12, 
	O => T13_DN
);
U6 : AND2	PORT MAP(
	I0 => N00098, 
	I1 => N00081, 
	O => T2_UP
);
U54 : AND2	PORT MAP(
	I0 => N00201, 
	I1 => T12, 
	O => T13_UP
);
U55 : AND4B3	PORT MAP(
	I0 => N00167, 
	I1 => N00135, 
	I2 => N00106, 
	I3 => T9, 
	O => T12_DN
);
U56 : AND4	PORT MAP(
	I0 => N00167, 
	I1 => N00135, 
	I2 => N00106, 
	I3 => T9, 
	O => T12_UP
);
U57 : AND3B2	PORT MAP(
	I0 => N00135, 
	I1 => N00106, 
	I2 => T9, 
	O => T11_DN
);
U58 : AND3	PORT MAP(
	I0 => N00135, 
	I1 => N00106, 
	I2 => T9, 
	O => T11_UP
);
U59 : AND2B1	PORT MAP(
	I0 => N00106, 
	I1 => T9, 
	O => T10_DN
);
U60 : AND2	PORT MAP(
	I0 => N00106, 
	I1 => T9, 
	O => T10_UP
);
U61 : AND4B3	PORT MAP(
	I0 => N00072, 
	I1 => N00066, 
	I2 => N00067, 
	I3 => T6, 
	O => T9_DN
);
U62 : AND4	PORT MAP(
	I0 => N00072, 
	I1 => N00066, 
	I2 => N00067, 
	I3 => T6, 
	O => T9_UP
);
U63 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00313, 
	O => CEO
);
U64 : AND4B3	PORT MAP(
	I0 => N00263, 
	I1 => N00232, 
	I2 => N00201, 
	I3 => T12, 
	O => T15_DN
);
U65 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N11965, 
	O => N00313
);
U38 : AND2	PORT MAP(
	I0 => N00158, 
	I1 => T3, 
	O => T4_UP
);
U39 : AND2B1	PORT MAP(
	I0 => N00158, 
	I1 => T3, 
	O => T4_DN
);
U40 : AND3B2	PORT MAP(
	I0 => N00190, 
	I1 => N00158, 
	I2 => T3, 
	O => T5_DN
);
U41 : AND3	PORT MAP(
	I0 => N00190, 
	I1 => N00158, 
	I2 => T3, 
	O => T5_UP
);
U42 : AND4	PORT MAP(
	I0 => N00220, 
	I1 => N00190, 
	I2 => N00158, 
	I3 => T3, 
	O => T6_UP
);
U11 : AND3B3	PORT MAP(
	I0 => N00126, 
	I1 => N00098, 
	I2 => N00081, 
	O => T3_DN
);
U43 : AND4B3	PORT MAP(
	I0 => N00220, 
	I1 => N00190, 
	I2 => N00158, 
	I3 => T3, 
	O => T6_DN
);
U44 : AND2B1	PORT MAP(
	I0 => N00067, 
	I1 => T6, 
	O => T7_DN
);
U12 : AND3	PORT MAP(
	I0 => N00126, 
	I1 => N00098, 
	I2 => N00081, 
	O => T3_UP
);
U33 : M2_1	PORT MAP(
	D0 => T14_DN, 
	D1 => T14_UP, 
	S0 => UP, 
	O => T14
);
U22 : FTCLE	PORT MAP(
	D => D8, 
	L => L, 
	T => T8, 
	CE => CE, 
	C => C, 
	Q => N00072, 
	CLR => CLR
);
U34 : FTCLE	PORT MAP(
	D => D15, 
	L => L, 
	T => T15, 
	CE => CE, 
	C => C, 
	Q => N00296, 
	CLR => CLR
);
U23 : FTCLE	PORT MAP(
	D => D9, 
	L => L, 
	T => T9, 
	CE => CE, 
	C => C, 
	Q => N00106, 
	CLR => CLR
);
U4 : M2_1B1	PORT MAP(
	D0 => N00081, 
	D1 => N00081, 
	S0 => UP, 
	O => T1
);
U35 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N11965
);
U24 : FTCLE	PORT MAP(
	D => D10, 
	L => L, 
	T => T10, 
	CE => CE, 
	C => C, 
	Q => N00135, 
	CLR => CLR
);
U13 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
U36 : FTCLE	PORT MAP(
	D => D11, 
	L => L, 
	T => T11, 
	CE => CE, 
	C => C, 
	Q => N00167, 
	CLR => CLR
);
U25 : M2_1	PORT MAP(
	D0 => T11_DN, 
	D1 => T11_UP, 
	S0 => UP, 
	O => T11
);
U14 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00190, 
	CLR => CLR
);
U37 : M2_1	PORT MAP(
	D0 => T12_DN, 
	D1 => T12_UP, 
	S0 => UP, 
	O => T12
);
U15 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00220, 
	CLR => CLR
);
U26 : M2_1	PORT MAP(
	D0 => T9_DN, 
	D1 => T9_UP, 
	S0 => UP, 
	O => T9
);
U7 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00126, 
	CLR => CLR
);
U16 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00067, 
	CLR => CLR
);
U27 : M2_1	PORT MAP(
	D0 => T10_DN, 
	D1 => T10_UP, 
	S0 => UP, 
	O => T10
);
U8 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00158, 
	CLR => CLR
);
U28 : FTCLE	PORT MAP(
	D => D12, 
	L => L, 
	T => T12, 
	CE => CE, 
	C => C, 
	Q => N00201, 
	CLR => CLR
);
U17 : M2_1	PORT MAP(
	D0 => T7_DN, 
	D1 => T7_UP, 
	S0 => UP, 
	O => T7
);
U9 : M2_1	PORT MAP(
	D0 => T4_DN, 
	D1 => T4_UP, 
	S0 => UP, 
	O => T4
);
U29 : FTCLE	PORT MAP(
	D => D13, 
	L => L, 
	T => T13, 
	CE => CE, 
	C => C, 
	Q => N00232, 
	CLR => CLR
);
U18 : M2_1	PORT MAP(
	D0 => T5_DN, 
	D1 => T5_UP, 
	S0 => UP, 
	O => T5
);
U19 : M2_1	PORT MAP(
	D0 => T6_DN, 
	D1 => T6_UP, 
	S0 => UP, 
	O => T6
);
U30 : FTCLE	PORT MAP(
	D => D14, 
	L => L, 
	T => T14, 
	CE => CE, 
	C => C, 
	Q => N00263, 
	CLR => CLR
);
U31 : M2_1	PORT MAP(
	D0 => T15_DN, 
	D1 => T15_UP, 
	S0 => UP, 
	O => T15
);
U20 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00066, 
	CLR => CLR
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00080, 
	CE => CE, 
	C => C, 
	Q => N00081, 
	CLR => CLR
);
U32 : M2_1	PORT MAP(
	D0 => T13_DN, 
	D1 => T13_UP, 
	S0 => UP, 
	O => T13
);
U21 : M2_1	PORT MAP(
	D0 => T8_DN, 
	D1 => T8_UP, 
	S0 => UP, 
	O => T8
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00098, 
	CLR => CLR
);
U10 : M2_1	PORT MAP(
	D0 => T2_DN, 
	D1 => T2_UP, 
	S0 => UP, 
	O => T2
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

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
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
SIGNAL N00296 : std_logic;
SIGNAL N00684 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00023 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00296;
Q0<=N00013;
Q1<=N00023;
U3 : VCC	PORT MAP(
	P => N00012
);
U6 : AND2B2	PORT MAP(
	I0 => N00023, 
	I1 => N00013, 
	O => N00028
);
U7 : AND2	PORT MAP(
	I0 => N00023, 
	I1 => N00013, 
	O => N00031
);
U8 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00296, 
	O => CEO
);
U9 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00684, 
	O => N00296
);
U4 : M2_1B1	PORT MAP(
	D0 => N00013, 
	D1 => N00013, 
	S0 => UP, 
	O => T1
);
U5 : M2_1	PORT MAP(
	D0 => N00028, 
	D1 => N00031, 
	S0 => UP, 
	O => N00684
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00012, 
	CE => CE, 
	C => C, 
	Q => N00013, 
	CLR => CLR
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00023, 
	CLR => CLR
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

COMPONENT AND2B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B3
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

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
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
SIGNAL N00061 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N02009 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N02006 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N02006;
Q0<=N00021;
Q1<=N00031;
Q2<=N00045;
Q3<=N00061;
U14 : AND4B4	PORT MAP(
	I0 => N00061, 
	I1 => N00045, 
	I2 => N00031, 
	I3 => N00021, 
	O => TC_DN
);
U15 : AND4	PORT MAP(
	I0 => N00061, 
	I1 => N00045, 
	I2 => N00031, 
	I3 => N00021, 
	O => TC_UP
);
U16 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N02006, 
	O => CEO
);
U17 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N02009, 
	O => N02006
);
U3 : VCC	PORT MAP(
	P => N00020
);
U5 : AND2B2	PORT MAP(
	I0 => N00031, 
	I1 => N00021, 
	O => T2_DN
);
U6 : AND2	PORT MAP(
	I0 => N00031, 
	I1 => N00021, 
	O => T2_UP
);
U11 : AND3B3	PORT MAP(
	I0 => N00045, 
	I1 => N00031, 
	I2 => N00021, 
	O => T3_DN
);
U12 : AND3	PORT MAP(
	I0 => N00045, 
	I1 => N00031, 
	I2 => N00021, 
	O => T3_UP
);
U4 : M2_1B1	PORT MAP(
	D0 => N00021, 
	D1 => N00021, 
	S0 => UP, 
	O => T1
);
U13 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
U7 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00045, 
	CLR => CLR
);
U8 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00061, 
	CLR => CLR
);
U9 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N02009
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00020, 
	CE => CE, 
	C => C, 
	Q => N00021, 
	CLR => CLR
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00031, 
	CLR => CLR
);
U10 : M2_1	PORT MAP(
	D0 => T2_DN, 
	D1 => T2_UP, 
	S0 => UP, 
	O => T2
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

COMPONENT AND3B3
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1B1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

COMPONENT M2_1	 PORT (
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
SIGNAL N00139 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T6_DN : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL T6_UP : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL T7_UP : std_logic;
SIGNAL T5_DN : std_logic;
SIGNAL T7_DN : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T4_UP : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T4_DN : std_logic;
SIGNAL T7 : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T5_UP : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N02009 : std_logic;
SIGNAL N05309 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T1 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N02009;
Q0<=N00037;
Q1<=N00047;
Q2<=N00061;
Q3<=N00077;
Q4<=N00091;
Q5<=N00107;
Q6<=N00125;
Q7<=N00139;
U3 : VCC	PORT MAP(
	P => N00036
);
U5 : AND2B2	PORT MAP(
	I0 => N00047, 
	I1 => N00037, 
	O => T2_DN
);
U6 : AND2	PORT MAP(
	I0 => N00047, 
	I1 => N00037, 
	O => T2_UP
);
U22 : AND2	PORT MAP(
	I0 => N00077, 
	I1 => T3, 
	O => T4_UP
);
U23 : AND2B1	PORT MAP(
	I0 => N00077, 
	I1 => T3, 
	O => T4_DN
);
U24 : AND3B2	PORT MAP(
	I0 => N00091, 
	I1 => N00077, 
	I2 => T3, 
	O => T5_DN
);
U25 : AND3	PORT MAP(
	I0 => N00091, 
	I1 => N00077, 
	I2 => T3, 
	O => T5_UP
);
U26 : AND4	PORT MAP(
	I0 => N00107, 
	I1 => N00091, 
	I2 => N00077, 
	I3 => T3, 
	O => T6_UP
);
U27 : AND4B3	PORT MAP(
	I0 => N00107, 
	I1 => N00091, 
	I2 => N00077, 
	I3 => T3, 
	O => T6_DN
);
U28 : AND2B1	PORT MAP(
	I0 => N00125, 
	I1 => T6, 
	O => T7_DN
);
U29 : AND2	PORT MAP(
	I0 => N00125, 
	I1 => T6, 
	O => T7_UP
);
U30 : AND3B2	PORT MAP(
	I0 => N00139, 
	I1 => N00125, 
	I2 => T6, 
	O => TC_DN
);
U31 : AND3	PORT MAP(
	I0 => N00139, 
	I1 => N00125, 
	I2 => T6, 
	O => TC_UP
);
U32 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N02009, 
	O => CEO
);
U33 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N05309, 
	O => N02009
);
U11 : AND3B3	PORT MAP(
	I0 => N00061, 
	I1 => N00047, 
	I2 => N00037, 
	O => T3_DN
);
U12 : AND3	PORT MAP(
	I0 => N00061, 
	I1 => N00047, 
	I2 => N00037, 
	O => T3_UP
);
U4 : M2_1B1	PORT MAP(
	D0 => N00037, 
	D1 => N00037, 
	S0 => UP, 
	O => T1
);
U13 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
U14 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00091, 
	CLR => CLR
);
U15 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00107, 
	CLR => CLR
);
U7 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00061, 
	CLR => CLR
);
U16 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00125, 
	CLR => CLR
);
U8 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00077, 
	CLR => CLR
);
U17 : M2_1	PORT MAP(
	D0 => T7_DN, 
	D1 => T7_UP, 
	S0 => UP, 
	O => T7
);
U9 : M2_1	PORT MAP(
	D0 => T4_DN, 
	D1 => T4_UP, 
	S0 => UP, 
	O => T4
);
U18 : M2_1	PORT MAP(
	D0 => T5_DN, 
	D1 => T5_UP, 
	S0 => UP, 
	O => T5
);
U19 : M2_1	PORT MAP(
	D0 => T6_DN, 
	D1 => T6_UP, 
	S0 => UP, 
	O => T6
);
U20 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00139, 
	CLR => CLR
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00036, 
	CE => CE, 
	C => C, 
	Q => N00037, 
	CLR => CLR
);
U21 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N05309
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00047, 
	CLR => CLR
);
U10 : M2_1	PORT MAP(
	D0 => T2_DN, 
	D1 => T2_UP, 
	S0 => UP, 
	O => T2
);
END STRUCTURE;


