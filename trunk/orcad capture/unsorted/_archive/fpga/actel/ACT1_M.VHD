--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--		  			VHDL Macro Simulation Library for Actel ACT1 Family
-- File:	  		ACT1_M.VHD
-- Date:	  		December 31, 1996
-- Version:		v7.00
-- Resource:	Actel Macro Library Guide, 1995


--***************************************************************************
-- ACTEL ACT1 MACRO SIMULATION MODELS

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

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00013 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00013;
QB<=N00014;
QC<=N00015;
QD<=N00016;
QE<=N00017;
QF<=N00018;
QG<=N00020;
U1 : DFMB	PORT MAP(
	A => N00019, 
	B => A, 
	Q => N00013, 
	CLK => CLK, 
	S => B, 
	CLR => N00031
);
U2 : DFC1B	PORT MAP(
	D => N00013, 
	Q => N00014, 
	CLK => CLK, 
	CLR => N00031
);
U3 : DFC1B	PORT MAP(
	D => N00014, 
	Q => N00015, 
	CLK => CLK, 
	CLR => N00031
);
U4 : DFC1B	PORT MAP(
	D => N00015, 
	Q => N00016, 
	CLK => CLK, 
	CLR => N00031
);
U5 : DFC1B	PORT MAP(
	D => N00016, 
	Q => N00017, 
	CLK => CLK, 
	CLR => N00032
);
U6 : DFC1B	PORT MAP(
	D => N00017, 
	Q => N00018, 
	CLK => CLK, 
	CLR => N00032
);
U7 : DFC1B	PORT MAP(
	D => N00018, 
	Q => N00020, 
	CLK => CLK, 
	CLR => N00032
);
U8 : DFC1B	PORT MAP(
	D => N00020, 
	Q => QH, 
	CLK => CLK, 
	CLR => N00032
);
U9 : GND	PORT MAP(
	Y => N00019
);
U10 : BUF	PORT MAP(
	A => CLR, 
	Y => N00031
);
U11 : BUF	PORT MAP(
	A => CLR, 
	Y => N00032
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
SIGNAL N00019 : std_logic;
SIGNAL N00037 : std_logic;
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
SIGNAL N00010 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00008 : std_logic;

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
	Y : OUT std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	S3 : IN std_logic;
	D15 : IN std_logic;
	D14 : IN std_logic
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
SIGNAL N00027 : std_logic;
SIGNAL N00025 : std_logic;
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
SIGNAL N00014 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00025 : std_logic;

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

COMPONENT AND2A
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT AO1
	PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00012 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00022 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00012;
QB<=N00013;
QC<=N00015;
QD<=N00022;
U1 : AND2A	PORT MAP(
	A => N00012, 
	B => J, 
	Y => N00023
);
U2 : AO1	PORT MAP(
	Y => N00018, 
	A => K, 
	B => N00012, 
	C => N00023
);
U3 : INV	PORT MAP(
	A => N00022, 
	Y => QDN
);
U4 : DFMB	PORT MAP(
	A => A, 
	B => N00018, 
	Q => N00012, 
	CLK => SHLD, 
	S => CLK, 
	CLR => CLR
);
U5 : DFMB	PORT MAP(
	A => B, 
	B => N00012, 
	Q => N00013, 
	CLK => SHLD, 
	S => CLK, 
	CLR => CLR
);
U6 : DFMB	PORT MAP(
	A => C, 
	B => N00013, 
	Q => N00015, 
	CLK => SHLD, 
	S => CLK, 
	CLR => CLR
);
U7 : DFMB	PORT MAP(
	A => D, 
	B => N00015, 
	Q => N00022, 
	CLK => SHLD, 
	S => CLK, 
	CLR => CLR
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY FADD24 IS PORT (
	CO : OUT std_logic;
	A22 : IN std_logic;
	A21 : IN std_logic;
	A20 : IN std_logic;
	A19 : IN std_logic;
	A18 : IN std_logic;
	A17 : IN std_logic;
	A16 : IN std_logic;
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
	B22 : IN std_logic;
	B21 : IN std_logic;
	B20 : IN std_logic;
	B19 : IN std_logic;
	B18 : IN std_logic;
	B17 : IN std_logic;
	B16 : IN std_logic;
	B15 : IN std_logic;
	B14 : IN std_logic;
	B13 : IN std_logic;
	B12 : IN std_logic;
	B11 : IN std_logic;
	B10 : IN std_logic;
	B9 : IN std_logic;
	B8 : IN std_logic;
	B7 : IN std_logic;
	B5 : IN std_logic;
	S23 : OUT std_logic;
	S22 : OUT std_logic;
	S21 : OUT std_logic;
	S20 : OUT std_logic;
	S19 : OUT std_logic;
	S18 : OUT std_logic;
	S17 : OUT std_logic;
	S16 : OUT std_logic;
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
	B6 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic;
	A23 : IN std_logic;
	B23 : IN std_logic;
	CI : IN std_logic
); END FADD24;



ARCHITECTURE STRUCTURE OF FADD24 IS

-- COMPONENTS

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
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

COMPONENT FA1B
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
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

COMPONENT CSA2	 PORT (
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

COMPONENT CSA4	 PORT (
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
	S12 : OUT std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic;
	S03 : OUT std_logic;
	S13 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00126 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00187 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00205 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00184 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00177 : std_logic;
SIGNAL N00174 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00168 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00190 : std_logic;
SIGNAL N00198 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00192 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00050 : std_logic;

-- INSTANCE ATTRIBUTES




-- GATE INSTANCES

BEGIN
U13 : MX2	PORT MAP(
	A => N00039, 
	B => N00040, 
	S => N00045, 
	Y => N00170
);
U14 : MX2	PORT MAP(
	A => N00175, 
	B => N00178, 
	S => N00170, 
	Y => S15
);
U15 : MX2	PORT MAP(
	A => N00184, 
	B => N00190, 
	S => N00170, 
	Y => S14
);
U16 : MX2	PORT MAP(
	A => N00198, 
	B => N00204, 
	S => N00170, 
	Y => S13
);
U17 : MX2	PORT MAP(
	A => N00047, 
	B => N00050, 
	S => N00045, 
	Y => S12
);
U19 : MX2	PORT MAP(
	A => N00055, 
	B => N00060, 
	S => N00045, 
	Y => S11
);
U1 : MXC1	PORT MAP(
	A => N00082, 
	B => N00085, 
	D => N00079, 
	C => N00077, 
	Y => N00045, 
	S => N00088
);
U2 : MXC1	PORT MAP(
	A => N00039, 
	B => N00040, 
	D => N00160, 
	C => N00157, 
	Y => N00048, 
	S => N00045
);
U3 : MXC1	PORT MAP(
	A => N00044, 
	B => N00046, 
	D => N00102, 
	C => N00097, 
	Y => S20, 
	S => N00048
);
U4 : MXC1	PORT MAP(
	A => N00044, 
	B => N00046, 
	D => N00084, 
	C => N00080, 
	Y => S21, 
	S => N00048
);
U20 : MX2	PORT MAP(
	A => N00067, 
	B => N00073, 
	S => N00045, 
	Y => S10
);
U5 : MXC1	PORT MAP(
	A => N00044, 
	B => N00046, 
	D => N00070, 
	C => N00065, 
	Y => S22, 
	S => N00048
);
U21 : MX2	PORT MAP(
	A => N00098, 
	B => N00104, 
	S => N00093, 
	Y => S9
);
U6 : MXC1	PORT MAP(
	A => N00044, 
	B => N00046, 
	D => N00054, 
	C => N00051, 
	Y => S23, 
	S => N00048
);
U22 : MX2	PORT MAP(
	A => N00108, 
	B => N00112, 
	S => N00093, 
	Y => S8
);
U7 : MXC1	PORT MAP(
	A => N00044, 
	B => N00046, 
	D => N00043, 
	C => N00041, 
	Y => CO, 
	S => N00048
);
U23 : MX2	PORT MAP(
	A => N00120, 
	B => N00125, 
	S => N00093, 
	Y => S7
);
U8 : MX2	PORT MAP(
	A => N00162, 
	B => N00168, 
	S => N00088, 
	Y => S4
);
U24 : MX2	PORT MAP(
	A => N00082, 
	B => N00085, 
	S => N00088, 
	Y => N00093
);
U9 : MX2	PORT MAP(
	A => N00113, 
	B => N00118, 
	S => N00048, 
	Y => S19
);
U25 : MX2	PORT MAP(
	A => N00139, 
	B => N00144, 
	S => N00088, 
	Y => S6
);
U26 : MX2	PORT MAP(
	A => N00152, 
	B => N00155, 
	S => N00088, 
	Y => S5
);
U27 : MX2	PORT MAP(
	A => N00174, 
	B => N00177, 
	S => N00172, 
	Y => N00088
);
U28 : MX2	PORT MAP(
	A => N00181, 
	B => N00187, 
	S => N00172, 
	Y => S3
);
U29 : MX2	PORT MAP(
	A => N00189, 
	B => N00192, 
	S => N00172, 
	Y => S2
);
U36 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00205, 
	CO => N00172, 
	S => S1
);
U37 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => CI, 
	CO => N00205, 
	S => S0
);
U10 : MX2	PORT MAP(
	A => N00126, 
	B => N00128, 
	S => N00048, 
	Y => S18
);
U11 : MX2	PORT MAP(
	A => N00131, 
	B => N00136, 
	S => N00048, 
	Y => S17
);
U12 : MX2	PORT MAP(
	A => N00146, 
	B => N00151, 
	S => N00048, 
	Y => S16
);
U33 : CSA3	PORT MAP(
	A1 => A8, 
	A0 => A7, 
	S00 => N00125, 
	S10 => N00120, 
	C0 => N00079, 
	C1 => N00077, 
	B1 => B8, 
	B0 => B7, 
	S01 => N00112, 
	S11 => N00108, 
	A2 => A9, 
	B2 => B9, 
	S02 => N00104, 
	S12 => N00098
);
U34 : CSA3	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	S00 => N00168, 
	S10 => N00162, 
	C0 => N00085, 
	C1 => N00082, 
	B1 => B5, 
	B0 => B4, 
	S01 => N00155, 
	S11 => N00152, 
	A2 => A6, 
	B2 => B6, 
	S02 => N00144, 
	S12 => N00139
);
U35 : CSA2	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	S00 => N00192, 
	S10 => N00189, 
	C0 => N00177, 
	C1 => N00174, 
	B1 => B3, 
	B0 => B2, 
	S01 => N00187, 
	S11 => N00181
);
U18 : CSA3	PORT MAP(
	A1 => A11, 
	A0 => A10, 
	S00 => N00073, 
	S10 => N00067, 
	C0 => N00040, 
	C1 => N00039, 
	B1 => B11, 
	B0 => B10, 
	S01 => N00060, 
	S11 => N00055, 
	A2 => A12, 
	B2 => B12, 
	S02 => N00050, 
	S12 => N00047
);
U30 : CSA4	PORT MAP(
	A1 => A21, 
	A0 => A20, 
	S00 => N00102, 
	S10 => N00097, 
	C0 => N00043, 
	C1 => N00041, 
	B1 => B21, 
	B0 => B20, 
	S01 => N00084, 
	S11 => N00080, 
	A2 => A22, 
	B2 => B22, 
	S02 => N00070, 
	S12 => N00065, 
	B3 => B23, 
	A3 => A23, 
	S03 => N00054, 
	S13 => N00051
);
U31 : CSA4	PORT MAP(
	A1 => A17, 
	A0 => A16, 
	S00 => N00151, 
	S10 => N00146, 
	C0 => N00046, 
	C1 => N00044, 
	B1 => B17, 
	B0 => B16, 
	S01 => N00136, 
	S11 => N00131, 
	A2 => A18, 
	B2 => B18, 
	S02 => N00128, 
	S12 => N00126, 
	B3 => B19, 
	A3 => A19, 
	S03 => N00118, 
	S13 => N00113
);
U32 : CSA3	PORT MAP(
	A1 => A14, 
	A0 => A13, 
	S00 => N00204, 
	S10 => N00198, 
	C0 => N00160, 
	C1 => N00157, 
	B1 => B14, 
	B0 => B13, 
	S01 => N00190, 
	S11 => N00184, 
	A2 => A15, 
	B2 => B15, 
	S02 => N00178, 
	S12 => N00175
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
SIGNAL N00098 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL XN3 : std_logic;
SIGNAL N00049 : std_logic;

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

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00030 : std_logic;
SIGNAL N00031 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : DFC1B	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => CLK, 
	CLR => N00030
);
U2 : DFC1B	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => CLK, 
	CLR => N00030
);
U3 : DFC1B	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => CLK, 
	CLR => N00030
);
U4 : DFC1B	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => CLK, 
	CLR => N00030
);
U5 : DFC1B	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => CLK, 
	CLR => N00031
);
U6 : DFC1B	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => CLK, 
	CLR => N00031
);
U7 : DFC1B	PORT MAP(
	D => D7, 
	Q => Q7, 
	CLK => CLK, 
	CLR => N00031
);
U8 : DFC1B	PORT MAP(
	D => D8, 
	Q => Q8, 
	CLK => CLK, 
	CLR => N00031
);
U9 : BUF	PORT MAP(
	A => CLR, 
	Y => N00030
);
U10 : BUF	PORT MAP(
	A => CLR, 
	Y => N00031
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
SIGNAL N00060 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00026 : std_logic;

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
SIGNAL N00029 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00022 : std_logic;

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
SIGNAL N00009 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00007 : std_logic;

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

ENTITY REGE8B IS PORT (
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CLR : IN std_logic;
	PRE : IN std_logic;
	E : IN std_logic;
	CLK : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic
); END REGE8B;



ARCHITECTURE STRUCTURE OF REGE8B IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFEC
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	E : IN std_logic;
	PRE : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00053 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	A => CLR, 
	Y => N00052
);
U2 : BUF	PORT MAP(
	A => CLR, 
	Y => N00053
);
U3 : BUF	PORT MAP(
	A => PRE, 
	Y => N00015
);
U4 : BUF	PORT MAP(
	A => PRE, 
	Y => N00017
);
U5 : DFEC	PORT MAP(
	D => D0, 
	Q => Q0, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U6 : DFEC	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U7 : DFEC	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U8 : DFEC	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U9 : DFEC	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
);
U10 : DFEC	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
);
U11 : DFEC	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
);
U12 : DFEC	PORT MAP(
	D => D7, 
	Q => Q7, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
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

COMPONENT AND2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
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

COMPONENT NAND4
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00029 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00018;
QB<=N00029;
QC<=N00040;
QD<=N00052;
U13 : BUF	PORT MAP(
	A => CLR, 
	Y => N00028
);
U14 : AND3	PORT MAP(
	A => N00018, 
	B => N00029, 
	C => N00024, 
	Y => N00047
);
U15 : AND2	PORT MAP(
	A => N00018, 
	B => N00024, 
	Y => N00035
);
U16 : AND4	PORT MAP(
	A => N00018, 
	B => N00029, 
	C => N00040, 
	D => N00024, 
	Y => N00059
);
U1 : DFMB	PORT MAP(
	A => A, 
	B => N00022, 
	Q => N00018, 
	CLK => CLK, 
	S => N00027, 
	CLR => N00028
);
U2 : DFMB	PORT MAP(
	A => B, 
	B => N00033, 
	Q => N00029, 
	CLK => CLK, 
	S => N00027, 
	CLR => N00028
);
U3 : DFMB	PORT MAP(
	A => C, 
	B => N00045, 
	Q => N00040, 
	CLK => CLK, 
	S => N00027, 
	CLR => N00028
);
U4 : DFMB	PORT MAP(
	A => D, 
	B => N00057, 
	Q => N00052, 
	CLK => CLK, 
	S => N00027, 
	CLR => N00028
);
U5 : XOR2	PORT MAP(
	A => N00029, 
	B => N00035, 
	Y => N00033
);
U6 : XOR2	PORT MAP(
	A => N00040, 
	B => N00047, 
	Y => N00045
);
U7 : XOR2	PORT MAP(
	A => N00052, 
	B => N00059, 
	Y => N00057
);
U8 : XOR2	PORT MAP(
	A => N00018, 
	B => N00024, 
	Y => N00022
);
U9 : AND2	PORT MAP(
	A => ENP, 
	B => ENT, 
	Y => N00024
);
U10 : NAND4	PORT MAP(
	A => N00018, 
	B => N00029, 
	C => N00040, 
	D => N00052, 
	Y => N00065
);
U11 : AND2A	PORT MAP(
	A => N00065, 
	B => ENT, 
	Y => RCO
);
U12 : BUF	PORT MAP(
	A => LD, 
	Y => N00027
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

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00029 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00026 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00015;
QB<=N00014;
QC<=N00013;
QD<=N00012;
U1 : MX4	PORT MAP(
	D0 => N00015, 
	D1 => N00014, 
	D2 => SRSI, 
	D3 => A, 
	S0 => N00017, 
	S1 => N00019, 
	Y => N00022
);
U2 : MX4	PORT MAP(
	D0 => N00014, 
	D1 => N00013, 
	D2 => N00015, 
	D3 => B, 
	S0 => N00017, 
	S1 => N00019, 
	Y => N00024
);
U3 : MX4	PORT MAP(
	D0 => N00013, 
	D1 => N00012, 
	D2 => N00014, 
	D3 => C, 
	S0 => N00017, 
	S1 => N00019, 
	Y => N00026
);
U4 : DFC1B	PORT MAP(
	D => N00026, 
	Q => N00013, 
	CLK => CLK, 
	CLR => CLR
);
U5 : MX4	PORT MAP(
	D0 => N00012, 
	D1 => SLSI, 
	D2 => N00013, 
	D3 => D, 
	S0 => N00017, 
	S1 => N00019, 
	Y => N00029
);
U6 : DFC1B	PORT MAP(
	D => N00029, 
	Q => N00012, 
	CLK => CLK, 
	CLR => CLR
);
U7 : DFC1B	PORT MAP(
	D => N00022, 
	Q => N00015, 
	CLK => CLK, 
	CLR => CLR
);
U8 : DFC1B	PORT MAP(
	D => N00024, 
	Q => N00014, 
	CLK => CLK, 
	CLR => CLR
);
U9 : BUF	PORT MAP(
	A => S0, 
	Y => N00017
);
U10 : BUF	PORT MAP(
	A => S1, 
	Y => N00019
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
SIGNAL N00009 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00007 : std_logic;

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
SIGNAL N00020 : std_logic;
SIGNAL N00011 : std_logic;
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
SIGNAL N00017 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00034 : std_logic;

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
SIGNAL N00012 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00026 : std_logic;

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
SIGNAL N00024 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00045 : std_logic;

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

ENTITY FADD32 IS PORT (
	A2 : IN std_logic;
	B3 : IN std_logic;
	A1 : IN std_logic;
	S17 : OUT std_logic;
	CO : OUT std_logic;
	A31 : IN std_logic;
	A30 : IN std_logic;
	A29 : IN std_logic;
	A28 : IN std_logic;
	A27 : IN std_logic;
	A26 : IN std_logic;
	A25 : IN std_logic;
	A24 : IN std_logic;
	A23 : IN std_logic;
	A22 : IN std_logic;
	A21 : IN std_logic;
	A20 : IN std_logic;
	A19 : IN std_logic;
	A18 : IN std_logic;
	A17 : IN std_logic;
	A16 : IN std_logic;
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
	A0 : IN std_logic;
	B29 : IN std_logic;
	B28 : IN std_logic;
	B27 : IN std_logic;
	B26 : IN std_logic;
	B25 : IN std_logic;
	B24 : IN std_logic;
	B23 : IN std_logic;
	B22 : IN std_logic;
	B21 : IN std_logic;
	B20 : IN std_logic;
	B19 : IN std_logic;
	B18 : IN std_logic;
	B17 : IN std_logic;
	B16 : IN std_logic;
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
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S31 : OUT std_logic;
	S30 : OUT std_logic;
	S29 : OUT std_logic;
	S28 : OUT std_logic;
	S27 : OUT std_logic;
	S26 : OUT std_logic;
	S25 : OUT std_logic;
	S24 : OUT std_logic;
	S23 : OUT std_logic;
	S22 : OUT std_logic;
	S21 : OUT std_logic;
	S20 : OUT std_logic;
	S19 : OUT std_logic;
	S18 : OUT std_logic;
	S16 : OUT std_logic;
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
	S0 : OUT std_logic;
	B31 : IN std_logic;
	B30 : IN std_logic;
	CI : IN std_logic
); END FADD32;



ARCHITECTURE STRUCTURE OF FADD32 IS

-- COMPONENTS

COMPONENT MXC1
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	Y : OUT std_logic;
	S : IN std_logic
	); END COMPONENT;

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
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

COMPONENT CSA2	 PORT (
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

COMPONENT CSA4	 PORT (
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
	S12 : OUT std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic;
	S03 : OUT std_logic;
	S13 : OUT std_logic
); END COMPONENT;

COMPONENT CSA5	 PORT (
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
	S12 : OUT std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic;
	S03 : OUT std_logic;
	S13 : OUT std_logic;
	B4 : IN std_logic;
	A4 : IN std_logic;
	S04 : OUT std_logic;
	S14 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00099 : std_logic;
SIGNAL N00175 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00191 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL N00227 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00242 : std_logic;
SIGNAL N00224 : std_logic;
SIGNAL N00223 : std_logic;
SIGNAL N00215 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00217 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00231 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00210 : std_logic;
SIGNAL N00169 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00219 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00220 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00261 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00203 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00204 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00266 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00254 : std_logic;
SIGNAL N00198 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00257 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00189 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00184 : std_logic;
SIGNAL N00236 : std_logic;
SIGNAL N00237 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00243 : std_logic;
SIGNAL N00249 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL N00240 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00108 : std_logic;

-- GATE INSTANCES

BEGIN
U45 : MXC1	PORT MAP(
	A => N00050, 
	B => N00052, 
	D => N00049, 
	C => N00047, 
	Y => CO, 
	S => N00054
);
U13 : MX2	PORT MAP(
	A => N00142, 
	B => N00148, 
	S => N00128, 
	Y => S9
);
U1 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => CI, 
	CO => N00257, 
	S => S0
);
U2 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00257, 
	CO => N00219, 
	S => S1
);
U4 : MX2	PORT MAP(
	A => N00240, 
	B => N00242, 
	S => N00219, 
	Y => S2
);
U20 : MX2	PORT MAP(
	A => N00136, 
	B => N00138, 
	S => N00128, 
	Y => S10
);
U5 : MX2	PORT MAP(
	A => N00231, 
	B => N00236, 
	S => N00219, 
	Y => S3
);
U21 : MX2	PORT MAP(
	A => N00131, 
	B => N00134, 
	S => N00128, 
	Y => S11
);
U6 : MX2	PORT MAP(
	A => N00223, 
	B => N00226, 
	S => N00219, 
	Y => N00127
);
U22 : MX2	PORT MAP(
	A => N00099, 
	B => N00108, 
	S => N00055, 
	Y => S12
);
U7 : MX2	PORT MAP(
	A => N00210, 
	B => N00215, 
	S => N00127, 
	Y => S4
);
U23 : MX2	PORT MAP(
	A => N00086, 
	B => N00092, 
	S => N00055, 
	Y => S13
);
U8 : MX2	PORT MAP(
	A => N00198, 
	B => N00203, 
	S => N00127, 
	Y => S5
);
U24 : MX2	PORT MAP(
	A => N00075, 
	B => N00078, 
	S => N00055, 
	Y => S14
);
U9 : MX2	PORT MAP(
	A => N00184, 
	B => N00189, 
	S => N00127, 
	Y => S6
);
U25 : MX2	PORT MAP(
	A => N00066, 
	B => N00070, 
	S => N00055, 
	Y => S15
);
U26 : MX2	PORT MAP(
	A => N00058, 
	B => N00062, 
	S => N00055, 
	Y => S16
);
U27 : MX2	PORT MAP(
	A => N00261, 
	B => N00266, 
	S => N00217, 
	Y => S17
);
U28 : MX2	PORT MAP(
	A => N00249, 
	B => N00254, 
	S => N00217, 
	Y => S18
);
U29 : MX2	PORT MAP(
	A => N00237, 
	B => N00243, 
	S => N00217, 
	Y => S19
);
U30 : MX2	PORT MAP(
	A => N00227, 
	B => N00230, 
	S => N00217, 
	Y => S20
);
U31 : MX2	PORT MAP(
	A => N00220, 
	B => N00224, 
	S => N00217, 
	Y => S21
);
U32 : MX2	PORT MAP(
	A => N00051, 
	B => N00053, 
	S => N00055, 
	Y => N00217
);
U33 : MX2	PORT MAP(
	A => N00191, 
	B => N00196, 
	S => N00054, 
	Y => S22
);
U34 : MX2	PORT MAP(
	A => N00175, 
	B => N00181, 
	S => N00054, 
	Y => S23
);
U35 : MX2	PORT MAP(
	A => N00166, 
	B => N00169, 
	S => N00054, 
	Y => S24
);
U36 : MX2	PORT MAP(
	A => N00157, 
	B => N00162, 
	S => N00054, 
	Y => S25
);
U37 : MX2	PORT MAP(
	A => N00144, 
	B => N00149, 
	S => N00054, 
	Y => S26
);
U38 : MXC1	PORT MAP(
	A => N00120, 
	B => N00123, 
	D => N00117, 
	C => N00113, 
	Y => N00055, 
	S => N00127
);
U39 : MXC1	PORT MAP(
	A => N00051, 
	B => N00053, 
	D => N00204, 
	C => N00201, 
	Y => N00054, 
	S => N00055
);
U40 : MXC1	PORT MAP(
	A => N00050, 
	B => N00052, 
	D => N00126, 
	C => N00122, 
	Y => S27, 
	S => N00054
);
U41 : MXC1	PORT MAP(
	A => N00050, 
	B => N00052, 
	D => N00106, 
	C => N00101, 
	Y => S28, 
	S => N00054
);
U42 : MXC1	PORT MAP(
	A => N00050, 
	B => N00052, 
	D => N00084, 
	C => N00080, 
	Y => S29, 
	S => N00054
);
U10 : MX2	PORT MAP(
	A => N00172, 
	B => N00176, 
	S => N00127, 
	Y => S7
);
U43 : MXC1	PORT MAP(
	A => N00050, 
	B => N00052, 
	D => N00071, 
	C => N00068, 
	Y => S30, 
	S => N00054
);
U11 : MX2	PORT MAP(
	A => N00120, 
	B => N00123, 
	S => N00127, 
	Y => N00128
);
U44 : MXC1	PORT MAP(
	A => N00050, 
	B => N00052, 
	D => N00059, 
	C => N00056, 
	Y => S31, 
	S => N00054
);
U12 : MX2	PORT MAP(
	A => N00155, 
	B => N00161, 
	S => N00128, 
	Y => S8
);
U3 : CSA2	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	S00 => N00242, 
	S10 => N00240, 
	C0 => N00226, 
	C1 => N00223, 
	B1 => B3, 
	B0 => B2, 
	S01 => N00236, 
	S11 => N00231
);
U14 : CSA4	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	S00 => N00215, 
	S10 => N00210, 
	C0 => N00123, 
	C1 => N00120, 
	B1 => B5, 
	B0 => B4, 
	S01 => N00203, 
	S11 => N00198, 
	A2 => A6, 
	B2 => B6, 
	S02 => N00189, 
	S12 => N00184, 
	B3 => B7, 
	A3 => A7, 
	S03 => N00176, 
	S13 => N00172
);
U15 : CSA4	PORT MAP(
	A1 => A9, 
	A0 => A8, 
	S00 => N00161, 
	S10 => N00155, 
	C0 => N00117, 
	C1 => N00113, 
	B1 => B9, 
	B0 => B8, 
	S01 => N00148, 
	S11 => N00142, 
	A2 => A10, 
	B2 => B10, 
	S02 => N00138, 
	S12 => N00136, 
	B3 => B11, 
	A3 => A11, 
	S03 => N00134, 
	S13 => N00131
);
U16 : CSA5	PORT MAP(
	A1 => A13, 
	A0 => A12, 
	S00 => N00108, 
	S10 => N00099, 
	C0 => N00053, 
	C1 => N00051, 
	B1 => B13, 
	B0 => B12, 
	S01 => N00092, 
	S11 => N00086, 
	A2 => A14, 
	B2 => B14, 
	S02 => N00078, 
	S12 => N00075, 
	B3 => B15, 
	A3 => A15, 
	S03 => N00070, 
	S13 => N00066, 
	B4 => B16, 
	A4 => A16, 
	S04 => N00062, 
	S14 => N00058
);
U17 : CSA5	PORT MAP(
	A1 => A18, 
	A0 => A17, 
	S00 => N00266, 
	S10 => N00261, 
	C0 => N00204, 
	C1 => N00201, 
	B1 => B18, 
	B0 => B17, 
	S01 => N00254, 
	S11 => N00249, 
	A2 => A19, 
	B2 => B19, 
	S02 => N00243, 
	S12 => N00237, 
	B3 => B20, 
	A3 => A20, 
	S03 => N00230, 
	S13 => N00227, 
	B4 => B21, 
	A4 => A21, 
	S04 => N00224, 
	S14 => N00220
);
U18 : CSA5	PORT MAP(
	A1 => A23, 
	A0 => A22, 
	S00 => N00196, 
	S10 => N00191, 
	C0 => N00052, 
	C1 => N00050, 
	B1 => B23, 
	B0 => B22, 
	S01 => N00181, 
	S11 => N00175, 
	A2 => A24, 
	B2 => B24, 
	S02 => N00169, 
	S12 => N00166, 
	B3 => B25, 
	A3 => A25, 
	S03 => N00162, 
	S13 => N00157, 
	B4 => B26, 
	A4 => A26, 
	S04 => N00149, 
	S14 => N00144
);
U19 : CSA5	PORT MAP(
	A1 => A28, 
	A0 => A27, 
	S00 => N00126, 
	S10 => N00122, 
	C0 => N00049, 
	C1 => N00047, 
	B1 => B28, 
	B0 => B27, 
	S01 => N00106, 
	S11 => N00101, 
	A2 => A29, 
	B2 => B29, 
	S02 => N00084, 
	S12 => N00080, 
	B3 => B30, 
	A3 => A30, 
	S03 => N00071, 
	S13 => N00068, 
	B4 => B31, 
	A4 => A31, 
	S04 => N00059, 
	S14 => N00056
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
U3 : MX2	PORT MAP(
	A => N00010, 
	B => N00015, 
	S => S2, 
	Y => Y
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY REGE8A IS PORT (
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	CLR : IN std_logic;
	PRE : IN std_logic;
	E : IN std_logic;
	CLK : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic
); END REGE8A;



ARCHITECTURE STRUCTURE OF REGE8A IS

-- COMPONENTS

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT DFEB
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	E : IN std_logic;
	PRE : IN std_logic;
	CLR : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00053 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : BUF	PORT MAP(
	A => CLR, 
	Y => N00052
);
U2 : BUF	PORT MAP(
	A => CLR, 
	Y => N00053
);
U3 : BUF	PORT MAP(
	A => PRE, 
	Y => N00015
);
U4 : BUF	PORT MAP(
	A => PRE, 
	Y => N00017
);
U5 : DFEB	PORT MAP(
	D => D0, 
	Q => Q0, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U6 : DFEB	PORT MAP(
	D => D1, 
	Q => Q1, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U7 : DFEB	PORT MAP(
	D => D2, 
	Q => Q2, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U8 : DFEB	PORT MAP(
	D => D3, 
	Q => Q3, 
	CLK => CLK, 
	E => E, 
	PRE => N00017, 
	CLR => N00052
);
U9 : DFEB	PORT MAP(
	D => D4, 
	Q => Q4, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
);
U10 : DFEB	PORT MAP(
	D => D5, 
	Q => Q5, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
);
U11 : DFEB	PORT MAP(
	D => D6, 
	Q => Q6, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
);
U12 : DFEB	PORT MAP(
	D => D7, 
	Q => Q7, 
	CLK => CLK, 
	E => E, 
	PRE => N00015, 
	CLR => N00053
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
SIGNAL N00037 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00019 : std_logic;

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
SIGNAL N00008 : std_logic;
SIGNAL N00012 : std_logic;

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
SIGNAL N00029 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00027 : std_logic;

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
	CI : IN std_logic;
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

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
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

COMPONENT CSA2	 PORT (
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00046 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00117 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00009 : std_logic;

-- INSTANCE ATTRIBUTES




-- GATE INSTANCES

BEGIN
U13 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00124, 
	CO => N00057, 
	S => S1
);
U14 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => CI, 
	CO => N00124, 
	S => S0
);
U1 : MX2	PORT MAP(
	A => N00009, 
	B => N00014, 
	S => N00002, 
	Y => CO
);
U2 : MX2	PORT MAP(
	A => N00021, 
	B => N00026, 
	S => N00002, 
	Y => S7
);
U4 : MX2	PORT MAP(
	A => N00035, 
	B => N00041, 
	S => N00002, 
	Y => S6
);
U5 : MXC1	PORT MAP(
	A => N00049, 
	B => N00053, 
	D => N00046, 
	C => N00043, 
	Y => N00002, 
	S => N00057
);
U6 : MX2	PORT MAP(
	A => N00068, 
	B => N00072, 
	S => N00061, 
	Y => S5
);
U8 : MX2	PORT MAP(
	A => N00081, 
	B => N00087, 
	S => N00061, 
	Y => S4
);
U9 : MX2	PORT MAP(
	A => N00049, 
	B => N00053, 
	S => N00057, 
	Y => N00061
);
U11 : MX2	PORT MAP(
	A => N00103, 
	B => N00107, 
	S => N00057, 
	Y => S3
);
U12 : MX2	PORT MAP(
	A => N00113, 
	B => N00117, 
	S => N00057, 
	Y => S2
);
U3 : CSA2	PORT MAP(
	A1 => A7, 
	A0 => A6, 
	S00 => N00041, 
	S10 => N00035, 
	C0 => N00014, 
	C1 => N00009, 
	B1 => B7, 
	B0 => B6, 
	S01 => N00026, 
	S11 => N00021
);
U7 : CSA2	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	S00 => N00087, 
	S10 => N00081, 
	C0 => N00046, 
	C1 => N00043, 
	B1 => B5, 
	B0 => B4, 
	S01 => N00072, 
	S11 => N00068
);
U10 : CSA2	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	S00 => N00117, 
	S10 => N00113, 
	C0 => N00053, 
	C1 => N00049, 
	B1 => B3, 
	B0 => B2, 
	S01 => N00107, 
	S11 => N00103
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
SIGNAL N00033 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00016 : std_logic;

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
SIGNAL XN2 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL XN3 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00051 : std_logic;

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
SIGNAL YN2 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL XN3 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00063 : std_logic;

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

COMPONENT BUF
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

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
SIGNAL N00007 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00015 : std_logic;

-- GATE INSTANCES

BEGIN
U3 : BUF	PORT MAP(
	A => CLR, 
	Y => N00011
);
U4 : BUF	PORT MAP(
	A => CLR, 
	Y => N00007
);
U1 : SREG4A	PORT MAP(
	CLR => N00011, 
	SHLD => SHLD, 
	CLK => CLK, 
	SI => SI, 
	P0 => P0, 
	P1 => P1, 
	P2 => P2, 
	P3 => P3, 
	SO => N00015
);
U2 : SREG4A	PORT MAP(
	CLR => N00007, 
	SHLD => SHLD, 
	CLK => CLK, 
	SI => N00015, 
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
SIGNAL N00106 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00053 : std_logic;

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
SIGNAL N00022 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00020 : std_logic;

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
SIGNAL VDD : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL XN1 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL XN2 : std_logic;
SIGNAL YN1 : std_logic;
SIGNAL XN0 : std_logic;
SIGNAL YN3 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL YN2 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00075 : std_logic;

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
SIGNAL N00026 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00033 : std_logic;

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

ENTITY SMULT8 IS PORT (
	A6 : IN std_logic;
	A2 : IN std_logic;
	A7 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
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
	P15 : OUT std_logic;
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
	P14 : OUT std_logic
); END SMULT8;



ARCHITECTURE STRUCTURE OF SMULT8 IS

-- COMPONENTS

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

COMPONENT NMMLH	 PORT (
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

COMPONENT NMM	 PORT (
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

COMPONENT NMMHH	 PORT (
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

COMPONENT NMMHL	 PORT (
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

COMPONENT FADD11A	 PORT (
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

COMPONENT WTREE5	 PORT (
	B : IN std_logic;
	C : IN std_logic;
	DN : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	CON : OUT std_logic;
	A : IN std_logic;
	EN : IN std_logic
); END COMPONENT;

COMPONENT CPROPB	 PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	CN : IN std_logic;
	S : OUT std_logic;
	CO1 : OUT std_logic;
	CO2 : OUT std_logic
); END COMPONENT;

COMPONENT CPROPA	 PORT (
	A : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	CN : IN std_logic;
	S : OUT std_logic;
	CO1 : OUT std_logic;
	CO2 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00065 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00098 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00076 : std_logic;

-- GATE INSTANCES

BEGIN
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

COMPONENT AND3A
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

COMPONENT AND3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
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

COMPONENT NAND2B
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00058 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00047 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00022;
Q1<=N00030;
Q2<=N00041;
Q3<=N00058;
U13 : AND3A	PORT MAP(
	A => CI, 
	B => N00058, 
	C => N00062, 
	Y => N00074
);
U14 : OR2	PORT MAP(
	A => N00046, 
	B => N00049, 
	Y => N00047
);
U15 : AND3	PORT MAP(
	A => N00022, 
	B => N00030, 
	C => UD, 
	Y => N00046
);
U16 : OR2	PORT MAP(
	A => N00062, 
	B => N00066, 
	Y => N00064
);
U17 : AND4D	PORT MAP(
	A => N00022, 
	B => N00030, 
	C => UD, 
	D => N00041, 
	Y => N00066
);
U18 : NAND2B	PORT MAP(
	A => N00058, 
	B => CI, 
	Y => N00076
);
U1 : DFM	PORT MAP(
	A => P0, 
	B => N00025, 
	Q => N00022, 
	CLK => CLK, 
	S => LD
);
U2 : DFM	PORT MAP(
	A => P1, 
	B => N00036, 
	Q => N00030, 
	CLK => CLK, 
	S => LD
);
U3 : DFM	PORT MAP(
	A => P2, 
	B => N00050, 
	Q => N00041, 
	CLK => CLK, 
	S => LD
);
U4 : DFM	PORT MAP(
	A => P3, 
	B => N00067, 
	Q => N00058, 
	CLK => CLK, 
	S => LD
);
U5 : XNOR2	PORT MAP(
	A => CI, 
	B => N00022, 
	Y => N00025
);
U6 : AX1	PORT MAP(
	Y => N00036, 
	A => CI, 
	B => N00034, 
	C => N00030
);
U7 : AX1	PORT MAP(
	Y => N00050, 
	A => CI, 
	B => N00047, 
	C => N00041
);
U8 : AX1	PORT MAP(
	Y => N00067, 
	A => CI, 
	B => N00064, 
	C => N00058
);
U9 : AOI1A	PORT MAP(
	Y => CO, 
	A => N00076, 
	B => N00066, 
	C => N00074
);
U10 : XNOR2	PORT MAP(
	A => UD, 
	B => N00022, 
	Y => N00034
);
U11 : AND3C	PORT MAP(
	A => N00022, 
	B => N00030, 
	C => UD, 
	Y => N00049
);
U12 : AND4	PORT MAP(
	A => N00022, 
	B => N00030, 
	C => UD, 
	D => N00041, 
	Y => N00062
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA5 IS PORT (
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
	S12 : OUT std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic;
	S03 : OUT std_logic;
	S13 : OUT std_logic;
	B4 : IN std_logic;
	A4 : IN std_logic;
	S04 : OUT std_logic;
	S14 : OUT std_logic
); END CSA5;



ARCHITECTURE STRUCTURE OF CSA5 IS

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
SIGNAL N00017 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL GND : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00046 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => A4, 
	B => B4, 
	CI => N00017, 
	CO => C0, 
	S => S04
);
U2 : FA1B	PORT MAP(
	A => A3, 
	B => B3, 
	CI => N00021, 
	CO => N00017, 
	S => S03
);
U3 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00025, 
	CO => N00021, 
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
	CI => VDD, 
	CO => N00029, 
	S => S00
);
U6 : FA1B	PORT MAP(
	A => A4, 
	B => B4, 
	CI => N00038, 
	CO => C1, 
	S => S14
);
U7 : FA1B	PORT MAP(
	A => A3, 
	B => B3, 
	CI => N00042, 
	CO => N00038, 
	S => S13
);
U8 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00046, 
	CO => N00042, 
	S => S12
);
U9 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00050, 
	CO => N00046, 
	S => S11
);
U10 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => GND, 
	CO => N00050, 
	S => S10
);
U11 : VCC	PORT MAP(
	Y => VDD
);
U12 : GND	PORT MAP(
	Y => GND
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
SIGNAL N00016 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL N00014 : std_logic;

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
	RC0 : OUT std_logic
); END TA269;



ARCHITECTURE STRUCTURE OF TA269 IS

-- COMPONENTS

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

COMPONENT UDCNT4A	 PORT (
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00008 : std_logic;
SIGNAL N00005 : std_logic;

-- GATE INSTANCES

BEGIN
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
	CO => RC0
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
SIGNAL N00013 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;

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
SIGNAL N00074 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00028 : std_logic;

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

ENTITY CSA4 IS PORT (
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
	S12 : OUT std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic;
	S03 : OUT std_logic;
	S13 : OUT std_logic
); END CSA4;



ARCHITECTURE STRUCTURE OF CSA4 IS

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
SIGNAL GND : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL VDD : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00036 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => A3, 
	B => B3, 
	CI => N00015, 
	CO => C0, 
	S => S03
);
U2 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00019, 
	CO => N00015, 
	S => S02
);
U3 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00023, 
	CO => N00019, 
	S => S01
);
U4 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => VDD, 
	CO => N00023, 
	S => S00
);
U5 : FA1B	PORT MAP(
	A => A3, 
	B => B3, 
	CI => N00032, 
	CO => C1, 
	S => S13
);
U6 : FA1B	PORT MAP(
	A => A2, 
	B => B2, 
	CI => N00036, 
	CO => N00032, 
	S => S12
);
U7 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00040, 
	CO => N00036, 
	S => S11
);
U8 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => GND, 
	CO => N00040, 
	S => S10
);
U9 : VCC	PORT MAP(
	Y => VDD
);
U10 : GND	PORT MAP(
	Y => GND
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FA1 IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	S : OUT std_logic
); END FA1;



ARCHITECTURE STRUCTURE OF FA1 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT MXT
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0A : IN std_logic;
	S0B : IN std_logic;
	Y : OUT std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S1 : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GND : std_logic;
SIGNAL VDD : std_logic;
SIGNAL N00018 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	Y => VDD
);
U2 : GND	PORT MAP(
	Y => GND
);
U3 : INV	PORT MAP(
	A => CI, 
	Y => N00018
);
U4 : MXT	PORT MAP(
	D0 => CI, 
	D1 => N00018, 
	S0A => B, 
	S0B => B, 
	Y => S, 
	D2 => N00018, 
	D3 => CI, 
	S1 => A
);
U5 : MXT	PORT MAP(
	D0 => GND, 
	D1 => CI, 
	S0A => B, 
	S0B => B, 
	Y => CO, 
	D2 => CI, 
	D3 => VDD, 
	S1 => A
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
U3 : MX2C	PORT MAP(
	A => N00010, 
	B => N00015, 
	Y => Y, 
	S => S2
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

COMPONENT OR2
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

COMPONENT AND4D
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00065 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00080 : std_logic;

-- GATE INSTANCES

BEGIN
QA<=N00023;
QB<=N00033;
QC<=N00044;
QD<=N00061;
U13 : AND3C	PORT MAP(
	A => N00023, 
	B => N00033, 
	C => UD, 
	Y => N00052
);
U14 : AND4	PORT MAP(
	A => N00023, 
	B => N00033, 
	C => UD, 
	D => N00044, 
	Y => N00065
);
U15 : OR2	PORT MAP(
	A => N00049, 
	B => N00052, 
	Y => N00050
);
U16 : AND3	PORT MAP(
	A => N00023, 
	B => N00033, 
	C => UD, 
	Y => N00049
);
U17 : OR2	PORT MAP(
	A => N00065, 
	B => N00069, 
	Y => N00067
);
U18 : AND4D	PORT MAP(
	A => N00023, 
	B => N00033, 
	C => UD, 
	D => N00044, 
	Y => N00069
);
U19 : OR3	PORT MAP(
	A => N00061, 
	B => ENP, 
	C => ENT, 
	Y => N00080
);
U1 : DFM	PORT MAP(
	A => A, 
	B => N00028, 
	Q => N00023, 
	CLK => CLK, 
	S => LD
);
U2 : DFM	PORT MAP(
	A => B, 
	B => N00039, 
	Q => N00033, 
	CLK => CLK, 
	S => LD
);
U3 : DFM	PORT MAP(
	A => C, 
	B => N00053, 
	Q => N00044, 
	CLK => CLK, 
	S => LD
);
U4 : DFM	PORT MAP(
	A => D, 
	B => N00070, 
	Q => N00061, 
	CLK => CLK, 
	S => LD
);
U5 : XNOR2	PORT MAP(
	A => N00026, 
	B => N00023, 
	Y => N00028
);
U6 : AX1	PORT MAP(
	Y => N00039, 
	A => N00026, 
	B => N00037, 
	C => N00033
);
U7 : AX1	PORT MAP(
	Y => N00053, 
	A => N00026, 
	B => N00050, 
	C => N00044
);
U8 : AX1	PORT MAP(
	Y => N00070, 
	A => N00026, 
	B => N00067, 
	C => N00061
);
U9 : AND4B	PORT MAP(
	A => ENP, 
	B => ENT, 
	C => N00061, 
	D => N00065, 
	Y => N00077
);
U10 : AOI1A	PORT MAP(
	Y => RCO, 
	A => N00080, 
	B => N00069, 
	C => N00077
);
U11 : OR2	PORT MAP(
	A => ENP, 
	B => ENT, 
	Y => N00026
);
U12 : XNOR2	PORT MAP(
	A => UD, 
	B => N00023, 
	Y => N00037
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
	CI : IN std_logic;
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

COMPONENT MX2
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	); END COMPONENT;

COMPONENT CSA3
	PORT (
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

COMPONENT CSA2
	PORT (
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

COMPONENT FA1B
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00163 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00245 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00235 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00191 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL N00266 : std_logic;
SIGNAL N00002 : std_logic;
SIGNAL N00223 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00158 : std_logic;
SIGNAL N00201 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00195 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00206 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00172 : std_logic;
SIGNAL N00215 : std_logic;
SIGNAL N00251 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL N00221 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00259 : std_logic;
SIGNAL N00255 : std_logic;

-- INSTANCE ATTRIBUTES




-- GATE INSTANCES

BEGIN
U13 : MX2	PORT MAP(
	A => N00095, 
	B => N00099, 
	S => N00104, 
	Y => N00141
);
U14 : MX2	PORT MAP(
	A => N00172, 
	B => N00178, 
	S => N00141, 
	Y => S7
);
U15 : MX2	PORT MAP(
	A => N00158, 
	B => N00163, 
	S => N00141, 
	Y => S8
);
U16 : MX2	PORT MAP(
	A => N00147, 
	B => N00152, 
	S => N00141, 
	Y => S9
);
U17 : MX2	PORT MAP(
	A => N00071, 
	B => N00077, 
	S => N00031, 
	Y => S10
);
U18 : MX2	PORT MAP(
	A => N00056, 
	B => N00062, 
	S => N00031, 
	Y => S11
);
U19 : MX2	PORT MAP(
	A => N00037, 
	B => N00045, 
	S => N00031, 
	Y => S12
);
U1 : CSA3	PORT MAP(
	A1 => A8, 
	A0 => A7, 
	S00 => N00178, 
	S10 => N00172, 
	C0 => N00090, 
	C1 => N00083, 
	B1 => B8, 
	B0 => B7, 
	S01 => N00163, 
	S11 => N00158, 
	A2 => A9, 
	B2 => B9, 
	S02 => N00152, 
	S12 => N00147
);
U2 : CSA3	PORT MAP(
	A1 => A5, 
	A0 => A4, 
	S00 => N00221, 
	S10 => N00215, 
	C0 => N00099, 
	C1 => N00095, 
	B1 => B5, 
	B0 => B4, 
	S01 => N00206, 
	S11 => N00201, 
	A2 => A6, 
	B2 => B6, 
	S02 => N00195, 
	S12 => N00191
);
U3 : CSA3	PORT MAP(
	A1 => A11, 
	A0 => A10, 
	S00 => N00077, 
	S10 => N00071, 
	C0 => N00018, 
	C1 => N00009, 
	B1 => B11, 
	B0 => B10, 
	S01 => N00062, 
	S11 => N00056, 
	A2 => A12, 
	B2 => B12, 
	S02 => N00045, 
	S12 => N00037
);
U4 : CSA2	PORT MAP(
	A1 => A3, 
	A0 => A2, 
	S00 => N00259, 
	S10 => N00255, 
	C0 => N00238, 
	C1 => N00235, 
	B1 => B3, 
	B0 => B2, 
	S01 => N00251, 
	S11 => N00245
);
U20 : CSA3	PORT MAP(
	A1 => A14, 
	A0 => A13, 
	S00 => N00140, 
	S10 => N00131, 
	C0 => N00006, 
	C1 => N00002, 
	B1 => B14, 
	B0 => B13, 
	S01 => N00087, 
	S11 => N00079, 
	A2 => A15, 
	B2 => B15, 
	S02 => N00049, 
	S12 => N00041
);
U5 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => CI, 
	CO => N00266, 
	S => S0
);
U21 : MXC1	PORT MAP(
	A => N00009, 
	B => N00018, 
	D => N00006, 
	C => N00002, 
	Y => CO, 
	S => N00027
);
U6 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00266, 
	CO => N00223, 
	S => S1
);
U22 : MXC1	PORT MAP(
	A => N00009, 
	B => N00018, 
	D => N00049, 
	C => N00041, 
	Y => S15, 
	S => N00027
);
U7 : MX2	PORT MAP(
	A => N00255, 
	B => N00259, 
	S => N00223, 
	Y => S2
);
U23 : MXC1	PORT MAP(
	A => N00009, 
	B => N00018, 
	D => N00087, 
	C => N00079, 
	Y => S14, 
	S => N00027
);
U8 : MX2	PORT MAP(
	A => N00245, 
	B => N00251, 
	S => N00223, 
	Y => S3
);
U24 : MXC1	PORT MAP(
	A => N00009, 
	B => N00018, 
	D => N00140, 
	C => N00131, 
	Y => S13, 
	S => N00027
);
U9 : MX2	PORT MAP(
	A => N00235, 
	B => N00238, 
	S => N00223, 
	Y => N00104
);
U25 : MXC1	PORT MAP(
	A => N00095, 
	B => N00099, 
	D => N00090, 
	C => N00083, 
	Y => N00027, 
	S => N00104
);
U26 : MXC1	PORT MAP(
	A => N00095, 
	B => N00099, 
	D => N00090, 
	C => N00083, 
	Y => N00031, 
	S => N00104
);
U10 : MX2	PORT MAP(
	A => N00215, 
	B => N00221, 
	S => N00104, 
	Y => S4
);
U11 : MX2	PORT MAP(
	A => N00201, 
	B => N00206, 
	S => N00104, 
	Y => S5
);
U12 : MX2	PORT MAP(
	A => N00191, 
	B => N00195, 
	S => N00104, 
	Y => S6
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

COMPONENT INV
	PORT (
	A : IN std_logic;
	Y : OUT std_logic
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00017 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00058 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00015;
Q1<=N00026;
Q2<=N00038;
Q3<=N00051;
U13 : INV	PORT MAP(
	A => N00015, 
	Y => N00023
);
U1 : DFMB	PORT MAP(
	A => N00017, 
	B => P0, 
	Q => N00015, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U2 : DFMB	PORT MAP(
	A => N00028, 
	B => P1, 
	Q => N00026, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U3 : DFMB	PORT MAP(
	A => N00040, 
	B => P2, 
	Q => N00038, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U4 : DFMB	PORT MAP(
	A => N00053, 
	B => P3, 
	Q => N00051, 
	CLK => CLK, 
	S => LD, 
	CLR => CLR
);
U5 : XOR2	PORT MAP(
	A => CI, 
	B => N00015, 
	Y => N00017
);
U6 : AX1	PORT MAP(
	Y => N00040, 
	A => N00037, 
	B => CI, 
	C => N00038
);
U7 : AX1	PORT MAP(
	Y => N00053, 
	A => N00047, 
	B => CI, 
	C => N00051
);
U8 : NAND2	PORT MAP(
	A => N00026, 
	B => N00015, 
	Y => N00037
);
U9 : NAND3	PORT MAP(
	A => N00038, 
	B => N00026, 
	C => N00015, 
	Y => N00047
);
U10 : AND3	PORT MAP(
	A => N00038, 
	B => N00026, 
	C => N00015, 
	Y => N00058
);
U11 : AND3	PORT MAP(
	A => N00058, 
	B => N00051, 
	C => CI, 
	Y => CO
);
U12 : AX1	PORT MAP(
	Y => N00028, 
	A => N00023, 
	B => CI, 
	C => N00026
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CSA2 IS PORT (
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
); END CSA2;



ARCHITECTURE STRUCTURE OF CSA2 IS

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
SIGNAL N00020 : std_logic;
SIGNAL GND : std_logic;
SIGNAL VDD : std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00011, 
	CO => C0, 
	S => S01
);
U2 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => VDD, 
	CO => N00011, 
	S => S00
);
U3 : FA1B	PORT MAP(
	A => A1, 
	B => B1, 
	CI => N00020, 
	CO => C1, 
	S => S11
);
U4 : FA1B	PORT MAP(
	A => A0, 
	B => B0, 
	CI => GND, 
	CO => N00020, 
	S => S10
);
U5 : VCC	PORT MAP(
	Y => VDD
);
U6 : GND	PORT MAP(
	Y => GND
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
SIGNAL N00014 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00021 : std_logic;

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
SIGNAL N00030 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00017 : std_logic;

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

