--***************************************************************************
--*                                                                        							*
--*                         Copyright (C) 1987-1995
--*                              by OrCAD, INC.
--*                                                                         							*
--*                           All rights reserved.
--*                                                                         							*
--***************************************************************************
   

-- Purpose:	OrCAD Simulate for Windows
--				VHDL Macro Simulation Library for Xilinx XC4000E LCAs
-- File:			X4KX_M.VHD
-- Date:		January 16, 1998
-- Version:		v7.20
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96
--				Xilinx EDIF schematics, Xilinx Inc., Alliance Developer's
--					Toolkit vM1.1 - 5/97

-- Author History	|Last Touched	|Reason:
--	Jim Davis	|11-18-98	| Fixed OFDX_1 and OFDXI_1 to hook-up signals
--					| between the Entity ports and the primitives
--					| internal to the Macro. The ORCAD_UNUSED
--					| Signal was also removed (un-needed).  
--	Jim Davis	|11-16-98	|Fixed the IFDX_1 and IFDXI_1 to hook-up the 
--					|inverted clock input to the Flip-flop.   
-- 	Kathy Horvath	|07/30/98	| Modified the CC8CLED to make work according 
--					| to specs.
--	Kathy Horvath	|07/06/98	| Modified the CC16CLED to make work according
--					| to specs.
--	Kathy Horvath	|05/12/98	| Added the FTCLEX, IFDX_1, IFDXI_1, OFDX16, 
--					| OFDX4, OFDX8.
--	Jim Davis	|03/03/98	| Modified the IFDX8, IFDX16, ILDX8, and ILDX16
--					| to fix some disconnects between the component
--					| calls and port interface.
--	Jim Davis  	|01/30/98	| Modified The IFDX4 to correct some disconnects
--					| between the port interface and the internal
--					| component calls to the IFDX primitives.
--***************************************************************************
-- XILINX XC4000E MACRO SIMULATION MODELS


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld16ce IS PORT (
	Q15 : OUT std_logic;
	D3 : IN std_logic;
	D11 : IN std_logic;
	Q0 : OUT std_logic;
	D4 : IN std_logic;
	D12 : IN std_logic;
	Q1 : OUT std_logic;
	D5 : IN std_logic;
	D13 : IN std_logic;
	Q2 : OUT std_logic;
	G : IN std_logic;
	D6 : IN std_logic;
	D14 : IN std_logic;
	Q3 : OUT std_logic;
	D7 : IN std_logic;
	D15 : IN std_logic;
	Q4 : OUT std_logic;
	CLR : IN std_logic;
	D8 : IN std_logic;
	Q5 : OUT std_logic;
	D9 : IN std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	D0 : IN std_logic;
	Q13 : OUT std_logic;
	GE : IN std_logic;
	D1 : IN std_logic;
	Q14 : OUT std_logic;
	D2 : IN std_logic;
	D10 : IN std_logic
); END ld16ce;



ARCHITECTURE STRUCTURE OF ld16ce IS

-- COMPONENTS

COMPONENT ldce
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U13 : ldce	PORT MAP(
	CLR => CLR, 
	D => D6, 
	G => G, 
	GE => GE, 
	Q => Q6
);
U14 : ldce	PORT MAP(
	CLR => CLR, 
	D => D14, 
	G => G, 
	GE => GE, 
	Q => Q14
);
U15 : ldce	PORT MAP(
	CLR => CLR, 
	D => D7, 
	G => G, 
	GE => GE, 
	Q => Q7
);
U16 : ldce	PORT MAP(
	CLR => CLR, 
	D => D15, 
	G => G, 
	GE => GE, 
	Q => Q15
);
U1 : ldce	PORT MAP(
	CLR => CLR, 
	D => D0, 
	G => G, 
	GE => GE, 
	Q => Q0
);
U2 : ldce	PORT MAP(
	CLR => CLR, 
	D => D8, 
	G => G, 
	GE => GE, 
	Q => Q8
);
U3 : ldce	PORT MAP(
	CLR => CLR, 
	D => D1, 
	G => G, 
	GE => GE, 
	Q => Q1
);
U4 : ldce	PORT MAP(
	CLR => CLR, 
	D => D9, 
	G => G, 
	GE => GE, 
	Q => Q9
);
U5 : ldce	PORT MAP(
	CLR => CLR, 
	D => D2, 
	G => G, 
	GE => GE, 
	Q => Q2
);
U6 : ldce	PORT MAP(
	CLR => CLR, 
	D => D10, 
	G => G, 
	GE => GE, 
	Q => Q10
);
U7 : ldce	PORT MAP(
	CLR => CLR, 
	D => D3, 
	G => G, 
	GE => GE, 
	Q => Q3
);
U8 : ldce	PORT MAP(
	CLR => CLR, 
	D => D11, 
	G => G, 
	GE => GE, 
	Q => Q11
);
U9 : ldce	PORT MAP(
	CLR => CLR, 
	D => D4, 
	G => G, 
	GE => GE, 
	Q => Q4
);
U10 : ldce	PORT MAP(
	CLR => CLR, 
	D => D12, 
	G => G, 
	GE => GE, 
	Q => Q12
);
U11 : ldce	PORT MAP(
	CLR => CLR, 
	D => D5, 
	G => G, 
	GE => GE, 
	Q => Q5
);
U12 : ldce	PORT MAP(
	CLR => CLR, 
	D => D13, 
	G => G, 
	GE => GE, 
	Q => Q13
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld8ce IS PORT (
	D3 : IN std_logic;
	D4 : IN std_logic;
	Q0 : OUT std_logic;
	D5 : IN std_logic;
	Q1 : OUT std_logic;
	G : IN std_logic;
	D6 : IN std_logic;
	Q2 : OUT std_logic;
	D7 : IN std_logic;
	Q3 : OUT std_logic;
	CLR : IN std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	D0 : IN std_logic;
	GE : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic
); END ld8ce;



ARCHITECTURE STRUCTURE OF ld8ce IS

-- COMPONENTS

COMPONENT ldce
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : ldce	PORT MAP(
	CLR => CLR, 
	D => D0, 
	G => G, 
	GE => GE, 
	Q => Q0
);
U2 : ldce	PORT MAP(
	CLR => CLR, 
	D => D4, 
	G => G, 
	GE => GE, 
	Q => Q4
);
U3 : ldce	PORT MAP(
	CLR => CLR, 
	D => D1, 
	G => G, 
	GE => GE, 
	Q => Q1
);
U4 : ldce	PORT MAP(
	CLR => CLR, 
	D => D5, 
	G => G, 
	GE => GE, 
	Q => Q5
);
U5 : ldce	PORT MAP(
	CLR => CLR, 
	D => D2, 
	G => G, 
	GE => GE, 
	Q => Q2
);
U6 : ldce	PORT MAP(
	CLR => CLR, 
	D => D6, 
	G => G, 
	GE => GE, 
	Q => Q6
);
U7 : ldce	PORT MAP(
	CLR => CLR, 
	D => D3, 
	G => G, 
	GE => GE, 
	Q => Q3
);
U8 : ldce	PORT MAP(
	CLR => CLR, 
	D => D7, 
	G => G, 
	GE => GE, 
	Q => Q7
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld4ce IS PORT (
	D3 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	G : IN std_logic;
	Q3 : OUT std_logic;
	CLR : IN std_logic;
	D0 : IN std_logic;
	GE : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic
); END ld4ce;



ARCHITECTURE STRUCTURE OF ld4ce IS

-- COMPONENTS

COMPONENT ldce
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : ldce	PORT MAP(
	CLR => CLR, 
	D => D0, 
	G => G, 
	GE => GE, 
	Q => Q0
);
U2 : ldce	PORT MAP(
	CLR => CLR, 
	D => D1, 
	G => G, 
	GE => GE, 
	Q => Q1
);
U3 : ldce	PORT MAP(
	CLR => CLR, 
	D => D2, 
	G => G, 
	GE => GE, 
	Q => Q2
);
U4 : ldce	PORT MAP(
	CLR => CLR, 
	D => D3, 
	G => G, 
	GE => GE, 
	Q => Q3
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ldc_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END ldc_1;



ARCHITECTURE STRUCTURE OF ldc_1 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT ldce_1
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00362 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00362
);
U2 : ldce_1	PORT MAP(
	CLR => CLR, 
	D => D, 
	G => G, 
	GE => N00362, 
	Q => Q
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ldc IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
); END ldc;



ARCHITECTURE STRUCTURE OF ldc IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT ldce_1
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT inv
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00355 : std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00355
);
U2 : ldce_1	PORT MAP(
	CLR => CLR, 
	D => D, 
	G => GB, 
	GE => N00355, 
	Q => Q
);
U3 : inv	PORT MAP(
	I => G, 
	O => GB
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ld_1;



ARCHITECTURE STRUCTURE OF ld_1 IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT ldce_1
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00353 : std_logic;
SIGNAL N00364 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00353
);
U2 : ldce_1	PORT MAP(
	CLR => N00364, 
	D => D, 
	G => G, 
	GE => N00353, 
	Q => Q
);
U3 : GND	PORT MAP(
	G => N00364
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld16 IS PORT (
	Q15 : OUT std_logic;
	D3 : IN std_logic;
	D11 : IN std_logic;
	Q0 : OUT std_logic;
	D4 : IN std_logic;
	D12 : IN std_logic;
	Q1 : OUT std_logic;
	D5 : IN std_logic;
	D13 : IN std_logic;
	Q2 : OUT std_logic;
	G : IN std_logic;
	D6 : IN std_logic;
	D14 : IN std_logic;
	Q3 : OUT std_logic;
	D7 : IN std_logic;
	D15 : IN std_logic;
	Q4 : OUT std_logic;
	D8 : IN std_logic;
	Q5 : OUT std_logic;
	D9 : IN std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	D0 : IN std_logic;
	Q13 : OUT std_logic;
	D1 : IN std_logic;
	Q14 : OUT std_logic;
	D2 : IN std_logic;
	D10 : IN std_logic
); END ld16;



ARCHITECTURE STRUCTURE OF ld16 IS

-- COMPONENTS

COMPONENT ld
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U13 : ld	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U14 : ld	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14
);
U15 : ld	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
U16 : ld	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15
);
U1 : ld	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : ld	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8
);
U3 : ld	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U4 : ld	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9
);
U5 : ld	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U6 : ld	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10
);
U7 : ld	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U8 : ld	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11
);
U9 : ld	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U10 : ld	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12
);
U11 : ld	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U12 : ld	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld8 IS PORT (
	D3 : IN std_logic;
	D4 : IN std_logic;
	Q0 : OUT std_logic;
	D5 : IN std_logic;
	Q1 : OUT std_logic;
	G : IN std_logic;
	D6 : IN std_logic;
	Q2 : OUT std_logic;
	D7 : IN std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic
); END ld8;



ARCHITECTURE STRUCTURE OF ld8 IS

-- COMPONENTS

COMPONENT ld
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : ld	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : ld	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U3 : ld	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U4 : ld	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
);
U5 : ld	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U6 : ld	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U7 : ld	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U8 : ld	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld4 IS PORT (
	D3 : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	G : IN std_logic;
	Q3 : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic
); END ld4;



ARCHITECTURE STRUCTURE OF ld4 IS

-- COMPONENTS

COMPONENT ld
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : ld	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0
);
U2 : ld	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1
);
U3 : ld	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U4 : ld	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ld IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ld;

ARCHITECTURE STRUCTURE OF ld IS

-- COMPONENTS

COMPONENT ldce_1
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT inv
	PORT (
	I : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00361 : std_logic;
SIGNAL N00369 : std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ldce_1	PORT MAP(
	CLR => N00369, 
	D => D, 
	G => GB, 
	GE => N00361, 
	Q => Q
);
U2 : inv	PORT MAP(
	I => G, 
	O => GB
);
U3 : VCC	PORT MAP(
	P => N00361
);
U4 : GND	PORT MAP(
	G => N00369
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ldpe IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic;
	PRE : IN std_logic
); END ldpe;



ARCHITECTURE STRUCTURE OF ldpe IS

-- COMPONENTS

COMPONENT ldpe_1
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT inv
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ldpe_1	PORT MAP(
	D => D, 
	G => GB, 
	GE => GE, 
	PRE => PRE, 
	Q => Q
);
U2 : inv	PORT MAP(
	I => G, 
	O => GB
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ldce IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
); END ldce;



ARCHITECTURE STRUCTURE OF ldce IS

-- COMPONENTS

COMPONENT ldce_1
	PORT (
	CLR : IN std_logic;
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT inv
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ldce_1	PORT MAP(
	CLR => CLR, 
	D => D, 
	G => GB, 
	GE => GE, 
	Q => Q
);
U2 : inv	PORT MAP(
	I => G, 
	O => GB
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ilflx IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic;
	GF : IN std_logic
); END ilflx;



ARCHITECTURE STRUCTURE OF ilflx IS

-- COMPONENTS

COMPONENT ilflx_1
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	GE : IN std_logic;
	GF : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT inv
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : ilflx_1	PORT MAP(
	D => D, 
	G => GB, 
	GE => GE, 
	GF => GF, 
	Q => Q
);
U2 : inv	PORT MAP(
	I => G, 
	O => GB
);
END STRUCTURE;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDI IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END OFDI;



ARCHITECTURE STRUCTURE OF OFDI IS

-- COMPONENTS

COMPONENT OFDXI
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00011 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OFDXI	PORT MAP(
	D => D, 
	C => C, 
	Q => Q, 
	CE => N00011
);
U2 : VCC	PORT MAP(
	P => N00011
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM16X2D IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	SPO0 : OUT std_logic;
	SPO1 : OUT std_logic;
	WCLK : IN std_logic;
	DPRA0 : IN std_logic;
	DPRA1 : IN std_logic;
	DPRA2 : IN std_logic;
	DPRA3 : IN std_logic;
	DPO0 : OUT std_logic;
	DPO1 : OUT std_logic
); END RAM16X2D;



ARCHITECTURE STRUCTURE OF RAM16X2D IS

-- COMPONENTS

COMPONENT RAM16X1D
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	SPO : OUT std_logic;
	WCLK : IN std_logic;
	DPO : OUT std_logic;
	DPRA0 : IN std_logic;
	DPRA1 : IN std_logic;
	DPRA2 : IN std_logic;
	DPRA3 : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO0, 
	WCLK => WCLK, 
	DPO => DPO0, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U2 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO1, 
	WCLK => WCLK, 
	DPO => DPO1, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM16X4D IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	SPO0 : OUT std_logic;
	SPO1 : OUT std_logic;
	SPO2 : OUT std_logic;
	SPO3 : OUT std_logic;
	WCLK : IN std_logic;
	DPRA0 : IN std_logic;
	DPRA1 : IN std_logic;
	DPRA2 : IN std_logic;
	DPRA3 : IN std_logic;
	DPO0 : OUT std_logic;
	DPO1 : OUT std_logic;
	DPO2 : OUT std_logic;
	DPO3 : OUT std_logic
); END RAM16X4D;



ARCHITECTURE STRUCTURE OF RAM16X4D IS

-- COMPONENTS

COMPONENT RAM16X1D
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	SPO : OUT std_logic;
	WCLK : IN std_logic;
	DPO : OUT std_logic;
	DPRA0 : IN std_logic;
	DPRA1 : IN std_logic;
	DPRA2 : IN std_logic;
	DPRA3 : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO0, 
	WCLK => WCLK, 
	DPO => DPO0, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U2 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO1, 
	WCLK => WCLK, 
	DPO => DPO1, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U3 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO2, 
	WCLK => WCLK, 
	DPO => DPO2, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U4 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO3, 
	WCLK => WCLK, 
	DPO => DPO3, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM16X8D IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	SPO0 : OUT std_logic;
	SPO1 : OUT std_logic;
	SPO2 : OUT std_logic;
	SPO3 : OUT std_logic;
	SPO4 : OUT std_logic;
	SPO5 : OUT std_logic;
	SPO6 : OUT std_logic;
	SPO7 : OUT std_logic;
	WCLK : IN std_logic;
	DPRA0 : IN std_logic;
	DPRA1 : IN std_logic;
	DPRA2 : IN std_logic;
	DPRA3 : IN std_logic;
	DPO0 : OUT std_logic;
	DPO1 : OUT std_logic;
	DPO2 : OUT std_logic;
	DPO3 : OUT std_logic;
	DPO4 : OUT std_logic;
	DPO5 : OUT std_logic;
	DPO6 : OUT std_logic;
	DPO7 : OUT std_logic
); END RAM16X8D;



ARCHITECTURE STRUCTURE OF RAM16X8D IS

-- COMPONENTS

COMPONENT RAM16X1D
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	SPO : OUT std_logic;
	WCLK : IN std_logic;
	DPO : OUT std_logic;
	DPRA0 : IN std_logic;
	DPRA1 : IN std_logic;
	DPRA2 : IN std_logic;
	DPRA3 : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL N00144 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO3, 
	WCLK => WCLK, 
	DPO => DPO3, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U2 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO2, 
	WCLK => WCLK, 
	DPO => DPO2, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U3 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO1, 
	WCLK => WCLK, 
	DPO => DPO1, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U4 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO0, 
	WCLK => WCLK, 
	DPO => DPO0, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U5 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D4, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO4, 
	WCLK => WCLK, 
	DPO => DPO4, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U6 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D5, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO5, 
	WCLK => WCLK, 
	DPO => DPO5, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U7 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D6, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO6, 
	WCLK => WCLK, 
	DPO => DPO6, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
);
U8 : RAM16X1D	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D7, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	SPO => SPO7, 
	WCLK => WCLK, 
	DPO => DPO7, 
	DPRA0 => DPRA0, 
	DPRA1 => DPRA1, 
	DPRA2 => DPRA2, 
	DPRA3 => DPRA3
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

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_18
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY4_19
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C3 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL CO : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00224 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00214 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000095 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00212 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL N000081 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000087 : std_logic;
SIGNAL N000100 : std_logic;
SIGNAL N000103 : std_logic;
SIGNAL N000101 : std_logic;
SIGNAL N000085 : std_logic;
SIGNAL N000073 : std_logic;
SIGNAL N000096 : std_logic;
SIGNAL N000105 : std_logic;
SIGNAL N000091 : std_logic;
SIGNAL N000077 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000082 : std_logic;
SIGNAL N000070 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000102 : std_logic;
SIGNAL N000074 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000086 : std_logic;
SIGNAL N000104 : std_logic;
SIGNAL N000106 : std_logic;
SIGNAL N000092 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000072 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000080 : std_logic;
SIGNAL N000094 : std_logic;
SIGNAL N000083 : std_logic;
SIGNAL N000071 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N000075 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000093 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000107 : std_logic;
SIGNAL N000097 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000053 : std_logic;
SIGNAL N000055 : std_logic;
SIGNAL N000050 : std_logic;
SIGNAL N000051 : std_logic;
SIGNAL N000528 : std_logic;
SIGNAL N0005211 : std_logic;
SIGNAL N0005212 : std_logic;
SIGNAL N000526 : std_logic;
SIGNAL N000527 : std_logic;
SIGNAL N0005210 : std_logic;
SIGNAL N000525 : std_logic;
SIGNAL N000529 : std_logic;
SIGNAL N000084 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000090 : std_logic;
SIGNAL N000076 : std_logic;
SIGNAL N000052 : std_logic;
SIGNAL N000057 : std_logic;
SIGNAL N000056 : std_logic;
SIGNAL N000054 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00079;
TC<=N00073;
Q0<=N00224;
Q1<=N00212;
Q2<=N00180;
Q3<=N00166;
Q4<=N00131;
Q5<=N00122;
Q6<=N00088;
Q7<=N00078;
Q8<=N00226;
Q9<=N00214;
Q10<=N00182;
Q11<=N00167;
Q12<=N00133;
Q13<=N00123;
Q14<=N00090;
U45 : FDCE	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00122
);
U13 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00180, 
	O => TQ2, 
	I1 => C1
);
U46 : FDCE	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00088
);
U14 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00166, 
	O => TQ3, 
	I1 => C2
);
U47 : FDCE	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00078
);
U15 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00131, 
	O => TQ4, 
	I1 => C3
);
U48 : CY4	PORT MAP(
	A0 => N00088, 
	B0 => orcad_unused, 
	A1 => N00078, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U16 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00122, 
	O => TQ5, 
	I1 => C4
);
U49 : CY4	PORT MAP(
	A0 => N00131, 
	B0 => orcad_unused, 
	A1 => N00122, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U17 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00088, 
	O => TQ6, 
	I1 => C5
);
U18 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00078, 
	O => TQ7, 
	I1 => C6
);
U19 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => CE, 
	O => N00073, 
	I1 => CO
);
U1 : CY4_18	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : CY4_18	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U50 : CY4	PORT MAP(
	A0 => N00180, 
	B0 => orcad_unused, 
	A1 => N00166, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U3 : CY4_18	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U51 : CY4	PORT MAP(
	A0 => N00224, 
	B0 => orcad_unused, 
	A1 => N00212, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000525, 
	C6 => N000526, 
	C5 => N000527, 
	C4 => N000528, 
	C3 => N000529, 
	C2 => N0005210, 
	C1 => N0005211, 
	C0 => N0005212, 
	CIN => orcad_unused, 
	COUT0 => C0, 
	COUT => C1
);
U4 : CY4_42	PORT MAP(
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057
);
U52 : XOR2	PORT MAP(
	I1 => N00078, 
	I0 => C6, 
	O => TQ7
);
U20 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00079, 
	O => TQ15, 
	I1 => C14
);
U5 : AND2	PORT MAP(
	I0 => CE, 
	I1 => CO, 
	O => N00073
);
U53 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00088, 
	O => TQ6
);
U21 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00090, 
	O => TQ14, 
	I1 => C13
);
U6 : CY4_18	PORT MAP(
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077
);
U54 : XOR2	PORT MAP(
	I1 => N00122, 
	I0 => C4, 
	O => TQ5
);
U22 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00123, 
	O => TQ13, 
	I1 => C12
);
U7 : CY4_18	PORT MAP(
	C7 => N000080, 
	C6 => N000081, 
	C5 => N000082, 
	C4 => N000083, 
	C3 => N000084, 
	C2 => N000085, 
	C1 => N000086, 
	C0 => N000087
);
U55 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00131, 
	O => TQ4
);
U23 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00133, 
	O => TQ12, 
	I1 => C11
);
U8 : CY4_18	PORT MAP(
	C7 => N000090, 
	C6 => N000091, 
	C5 => N000092, 
	C4 => N000093, 
	C3 => N000094, 
	C2 => N000095, 
	C1 => N000096, 
	C0 => N000097
);
U56 : XOR2	PORT MAP(
	I1 => N00166, 
	I0 => C2, 
	O => TQ3
);
U24 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00167, 
	O => TQ11, 
	I1 => C10
);
U9 : CY4_18	PORT MAP(
	C7 => N000100, 
	C6 => N000101, 
	C5 => N000102, 
	C4 => N000103, 
	C3 => N000104, 
	C2 => N000105, 
	C1 => N000106, 
	C0 => N000107
);
U57 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00180, 
	O => TQ2
);
U25 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00182, 
	O => TQ10, 
	I1 => C9
);
U58 : XOR2	PORT MAP(
	I1 => N00212, 
	I0 => C0, 
	O => TQ1
);
U26 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00214, 
	O => TQ9, 
	I1 => C8
);
U59 : XOR2	PORT MAP(
	I1 => N00079, 
	I0 => C14, 
	O => TQ15
);
U27 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00226, 
	O => TQ8, 
	I1 => C7
);
U28 : FDCE	PORT MAP(
	D => TQ8, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00226
);
U29 : FDCE	PORT MAP(
	D => TQ9, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00214
);
U60 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => N00090, 
	O => TQ14
);
U61 : XOR2	PORT MAP(
	I1 => N00123, 
	I0 => C12, 
	O => TQ13
);
U62 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => N00133, 
	O => TQ12
);
U30 : FDCE	PORT MAP(
	D => TQ10, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00182
);
U63 : XOR2	PORT MAP(
	I1 => N00167, 
	I0 => C10, 
	O => TQ11
);
U31 : FDCE	PORT MAP(
	D => TQ11, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00167
);
U64 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => N00182, 
	O => TQ10
);
U32 : FDCE	PORT MAP(
	D => TQ12, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00133
);
U65 : XOR2	PORT MAP(
	I1 => N00214, 
	I0 => C8, 
	O => TQ9
);
U33 : FDCE	PORT MAP(
	D => TQ13, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00123
);
U66 : XOR2	PORT MAP(
	I1 => N00226, 
	I0 => C7, 
	O => TQ8
);
U34 : FDCE	PORT MAP(
	D => TQ14, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00090
);
U67 : AND2	PORT MAP(
	I0 => N00073, 
	I1 => CE, 
	O => CEO
);
U35 : FDCE	PORT MAP(
	D => TQ15, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00079
);
U68 : INV	PORT MAP(
	O => TQ0, 
	I => N00224
);
U36 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U69 : CY4_19	PORT MAP(
	C7 => N000525, 
	C6 => N000526, 
	C5 => N000527, 
	C4 => N000528, 
	C3 => N000529, 
	C2 => N0005210, 
	C1 => N0005211, 
	C0 => N0005212
);
U37 : CY4	PORT MAP(
	A0 => N00090, 
	B0 => orcad_unused, 
	A1 => N00079, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000080, 
	C6 => N000081, 
	C5 => N000082, 
	C4 => N000083, 
	C3 => N000084, 
	C2 => N000085, 
	C1 => N000086, 
	C0 => N000087, 
	CIN => C13, 
	COUT0 => C14, 
	COUT => CO
);
U38 : CY4	PORT MAP(
	A0 => N00133, 
	B0 => orcad_unused, 
	A1 => N00123, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000100, 
	C6 => N000101, 
	C5 => N000102, 
	C4 => N000103, 
	C3 => N000104, 
	C2 => N000105, 
	C1 => N000106, 
	C0 => N000107, 
	CIN => C11, 
	COUT0 => C12, 
	COUT => C13
);
U39 : CY4	PORT MAP(
	A0 => N00182, 
	B0 => orcad_unused, 
	A1 => N00167, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000090, 
	C6 => N000091, 
	C5 => N000092, 
	C4 => N000093, 
	C3 => N000094, 
	C2 => N000095, 
	C1 => N000096, 
	C0 => N000097, 
	CIN => C9, 
	COUT0 => C10, 
	COUT => C11
);
U40 : CY4	PORT MAP(
	A0 => N00226, 
	B0 => orcad_unused, 
	A1 => N00214, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077, 
	CIN => C7, 
	COUT0 => C8, 
	COUT => C9
);
U41 : FDCE	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00224
);
U42 : FDCE	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00212
);
U10 : FDCE	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00131
);
U43 : FDCE	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00180
);
U11 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00224, 
	O => TQ0, 
	I1 => orcad_unused
);
U44 : FDCE	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00166
);
U12 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00212, 
	O => TQ1, 
	I1 => C0
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

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_18
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT CY4_19
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CO : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000051 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000054 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000050 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N000189 : std_logic;
SIGNAL N000057 : std_logic;
SIGNAL N000053 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N000052 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000056 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000055 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N0001812 : std_logic;
SIGNAL N0001811 : std_logic;
SIGNAL N000186 : std_logic;
SIGNAL N000187 : std_logic;
SIGNAL N000188 : std_logic;
SIGNAL N0001810 : std_logic;
SIGNAL N000185 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=CO;
Q0<=N00108;
Q1<=N00102;
Q2<=N00086;
Q3<=N00079;
Q4<=N00061;
Q5<=N00057;
Q6<=N00045;
Q7<=N00041;
U13 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U14 : CY4	PORT MAP(
	A0 => N00045, 
	B0 => orcad_unused, 
	A1 => N00041, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => CO
);
U15 : CY4	PORT MAP(
	A0 => N00061, 
	B0 => orcad_unused, 
	A1 => N00057, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U16 : CY4	PORT MAP(
	A0 => N00086, 
	B0 => orcad_unused, 
	A1 => N00079, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U17 : CY4	PORT MAP(
	A0 => N00108, 
	B0 => orcad_unused, 
	A1 => N00102, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000185, 
	C6 => N000186, 
	C5 => N000187, 
	C4 => N000188, 
	C3 => N000189, 
	C2 => N0001810, 
	C1 => N0001811, 
	C0 => N0001812, 
	CIN => orcad_unused, 
	COUT0 => C0, 
	COUT => C1
);
U18 : FDCE	PORT MAP(
	D => TQ7, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00041
);
U19 : FDCE	PORT MAP(
	D => TQ5, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00057
);
U1 : CY4_42	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : CY4_18	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U3 : CY4_18	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U4 : CY4_18	PORT MAP(
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057
);
U20 : FDCE	PORT MAP(
	D => TQ6, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00045
);
U5 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00108, 
	O => TQ0, 
	I1 => orcad_unused
);
U21 : FDCE	PORT MAP(
	D => TQ4, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00061
);
U6 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00102, 
	O => TQ1, 
	I1 => C0
);
U22 : FDCE	PORT MAP(
	D => TQ3, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00079
);
U7 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00086, 
	O => TQ2, 
	I1 => C1
);
U23 : FDCE	PORT MAP(
	D => TQ2, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00086
);
U8 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00079, 
	O => TQ3, 
	I1 => C2
);
U24 : FDCE	PORT MAP(
	D => TQ1, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00102
);
U9 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00061, 
	O => TQ4, 
	I1 => C3
);
U25 : FDCE	PORT MAP(
	D => TQ0, 
	CE => CE, 
	C => C, 
	CLR => CLR, 
	Q => N00108
);
U26 : XOR2	PORT MAP(
	I1 => N00102, 
	I0 => C0, 
	O => TQ1
);
U27 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00086, 
	O => TQ2
);
U28 : XOR2	PORT MAP(
	I1 => N00079, 
	I0 => C2, 
	O => TQ3
);
U29 : XOR2	PORT MAP(
	I1 => N00057, 
	I0 => C4, 
	O => TQ5
);
U30 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00045, 
	O => TQ6
);
U31 : XOR2	PORT MAP(
	I1 => N00041, 
	I0 => C6, 
	O => TQ7
);
U32 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00061, 
	O => TQ4
);
U33 : AND2	PORT MAP(
	I0 => CO, 
	I1 => CE, 
	O => CEO
);
U34 : INV	PORT MAP(
	O => TQ0, 
	I => N00108
);
U35 : CY4_19	PORT MAP(
	C7 => N000185, 
	C6 => N000186, 
	C5 => N000187, 
	C4 => N000188, 
	C3 => N000189, 
	C2 => N0001810, 
	C1 => N0001811, 
	C0 => N0001812
);
U10 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00057, 
	O => TQ5, 
	I1 => C4
);
U11 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00045, 
	O => TQ6, 
	I1 => C5
);
U12 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => N00041, 
	O => TQ7, 
	I1 => C6
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
SIGNAL T2 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00033 : std_logic;

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
SIGNAL AB3 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB4 : std_logic;

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
SIGNAL GTB : std_logic;
SIGNAL GTA : std_logic;
SIGNAL LTB : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL EQ_1 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL LT_3 : std_logic;
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

ENTITY IFDI_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END IFDI_1;



ARCHITECTURE STRUCTURE OF IFDI_1 IS

-- COMPONENTS

COMPONENT IFDI
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
U1 : IFDI	PORT MAP(
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
SIGNAL CB : std_logic;
SIGNAL T : std_logic;

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
SIGNAL N00108 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00106 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL N00105 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD6 : std_logic;

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
SIGNAL MDR6 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL MDR15 : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;

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

COMPONENT XOR2
	PORT (
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
U1 : XOR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U2 : XOR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
U3 : XOR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
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
SIGNAL Q3B : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00019 : std_logic;
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
SIGNAL MDL7 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL N00696 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR1 : std_logic;

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
SIGNAL N00039 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00031 : std_logic;

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

ENTITY OFDEX4 IS PORT (
	E : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	CE : IN std_logic
); END OFDEX4;



ARCHITECTURE STRUCTURE OF OFDEX4 IS

-- COMPONENTS

COMPONENT OFDEX
	PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDEX	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0, 
	CE => CE
);
U2 : OFDEX	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1, 
	CE => CE
);
U3 : OFDEX	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2, 
	CE => CE
);
U4 : OFDEX	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3, 
	CE => CE
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
SIGNAL N00040 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00021 : std_logic;

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
SIGNAL I58 : std_logic;
SIGNAL I14 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XNOR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
	I0 => I0, 
	O => O
);
U2 : XOR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
);
U3 : XOR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
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
SIGNAL N00025 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL Q4B : std_logic;

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

COMPONENT CY4_07
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT NOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_38
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
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

COMPONENT HMAP
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	O : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL S23 : std_logic;
SIGNAL S45 : std_logic;
SIGNAL S01 : std_logic;
SIGNAL S67 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL EQ : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL CO : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00160 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL N00158 : std_logic;
SIGNAL N00152 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL N00137 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00165 : std_logic;
SIGNAL N00163 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL N00151 : std_logic;
SIGNAL N00133 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00157 : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00144 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL N00156 : std_logic;
SIGNAL N00126 : std_logic;
SIGNAL N00120 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00131 : std_logic;

-- GATE INSTANCES

BEGIN
LT<=N00041;
U13 : CY4_07	PORT MAP(
	C7 => N00123, 
	C6 => N00129, 
	C5 => N00135, 
	C4 => N00141, 
	C3 => N00147, 
	C2 => N00153, 
	C1 => N00159, 
	C0 => N00165
);
U14 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => S2
);
U15 : AND4	PORT MAP(
	I0 => S01, 
	I1 => S23, 
	I2 => S45, 
	I3 => S67, 
	O => EQ
);
U16 : NOR2	PORT MAP(
	I1 => N00041, 
	I0 => EQ, 
	O => GT
);
U17 : XNOR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => S6
);
U18 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => S5
);
U19 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => S4
);
U1 : CY4_42	PORT MAP(
	C7 => N00120, 
	C6 => N00126, 
	C5 => N00132, 
	C4 => N00138, 
	C3 => N00144, 
	C2 => N00150, 
	C1 => N00156, 
	C0 => N00162
);
U2 : CY4_07	PORT MAP(
	C7 => N00121, 
	C6 => N00127, 
	C5 => N00133, 
	C4 => N00139, 
	C3 => N00145, 
	C2 => N00151, 
	C1 => N00157, 
	C0 => N00163
);
U3 : CY4_07	PORT MAP(
	C7 => N00122, 
	C6 => N00128, 
	C5 => N00134, 
	C4 => N00140, 
	C3 => N00146, 
	C2 => N00152, 
	C1 => N00158, 
	C0 => N00164
);
U4 : CY4_07	PORT MAP(
	C7 => N00124, 
	C6 => N00130, 
	C5 => N00136, 
	C4 => N00142, 
	C3 => N00148, 
	C2 => N00154, 
	C1 => N00160, 
	C0 => N00166
);
U20 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => S3
);
U5 : INV	PORT MAP(
	O => N00041, 
	I => CO
);
U21 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => S1
);
U6 : XNOR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => S7
);
U22 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N00120, 
	C6 => N00126, 
	C5 => N00132, 
	C4 => N00138, 
	C3 => N00144, 
	C2 => N00150, 
	C1 => N00156, 
	C0 => N00162, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U7 : CY4_38	PORT MAP(
	C7 => N00125, 
	C6 => N00131, 
	C5 => N00137, 
	C4 => N00143, 
	C3 => N00149, 
	C2 => N00155, 
	C1 => N00161, 
	C0 => N00167
);
U23 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N00125, 
	C6 => N00131, 
	C5 => N00137, 
	C4 => N00143, 
	C3 => N00149, 
	C2 => N00155, 
	C1 => N00161, 
	C0 => N00167, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U8 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => S0
);
U24 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => orcad_unused, 
	C7 => N00124, 
	C6 => N00130, 
	C5 => N00136, 
	C4 => N00142, 
	C3 => N00148, 
	C2 => N00154, 
	C1 => N00160, 
	C0 => N00166, 
	CIN => C_IN, 
	COUT0 => OPEN, 
	COUT => C2
);
U9 : AND2	PORT MAP(
	I0 => S6, 
	I1 => S7, 
	O => S67
);
U25 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => A3, 
	B1 => B3, 
	ADD => orcad_unused, 
	C7 => N00123, 
	C6 => N00129, 
	C5 => N00135, 
	C4 => N00141, 
	C3 => N00147, 
	C2 => N00153, 
	C1 => N00159, 
	C0 => N00165, 
	CIN => C2, 
	COUT0 => OPEN, 
	COUT => C4
);
U26 : CY4	PORT MAP(
	A0 => A4, 
	B0 => B4, 
	A1 => A5, 
	B1 => B5, 
	ADD => orcad_unused, 
	C7 => N00122, 
	C6 => N00128, 
	C5 => N00134, 
	C4 => N00140, 
	C3 => N00146, 
	C2 => N00152, 
	C1 => N00158, 
	C0 => N00164, 
	CIN => C4, 
	COUT0 => OPEN, 
	COUT => C6
);
U27 : CY4	PORT MAP(
	A0 => A6, 
	B0 => B6, 
	A1 => A7, 
	B1 => B7, 
	ADD => orcad_unused, 
	C7 => N00121, 
	C6 => N00127, 
	C5 => N00133, 
	C4 => N00139, 
	C3 => N00145, 
	C2 => N00151, 
	C1 => N00157, 
	C0 => N00163, 
	CIN => C6, 
	COUT0 => OPEN, 
	COUT => CO
);
U28 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B7, 
	O => S7, 
	I1 => A7
);
U29 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B6, 
	O => S6, 
	I1 => A6
);
U30 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B5, 
	O => S5, 
	I1 => A5
);
U31 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B4, 
	O => S4, 
	I1 => A4
);
U32 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => S3, 
	I1 => A3
);
U33 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => S2, 
	I1 => A2
);
U34 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => S1, 
	I1 => A1
);
U35 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => S0, 
	I1 => A0
);
U36 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S7, 
	I1 => S6, 
	O => S67
);
U37 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S5, 
	I1 => S4, 
	O => S45
);
U38 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S3, 
	I1 => S2, 
	O => S23
);
U39 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S1, 
	I1 => S0, 
	O => S01
);
U10 : AND2	PORT MAP(
	I0 => S4, 
	I1 => S5, 
	O => S45
);
U11 : AND2	PORT MAP(
	I0 => S2, 
	I1 => S3, 
	O => S23
);
U12 : AND2	PORT MAP(
	I0 => S0, 
	I1 => S1, 
	O => S01
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

COMPONENT FDPE
	PORT (
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
U1 : VCC	PORT MAP(
	P => N00007
);
U2 : FDPE	PORT MAP(
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
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL S_CE : std_logic;
SIGNAL N00008 : std_logic;

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

ENTITY ILD IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ILD;



ARCHITECTURE STRUCTURE OF ILD IS

-- COMPONENTS

COMPONENT ILD_1
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
U1 : ILD_1	PORT MAP(
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
SIGNAL MD : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL TQ : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL \CE-R_L\ : std_logic;

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
SIGNAL N00060 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00080 : std_logic;

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
SIGNAL N00012 : std_logic;
SIGNAL N00007 : std_logic;
SIGNAL N00017 : std_logic;

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
SIGNAL M0 : std_logic;
SIGNAL M1 : std_logic;

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

ENTITY OFDEI IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDEI;



ARCHITECTURE STRUCTURE OF OFDEI IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTI
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
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
U2 : OFDTI	PORT MAP(
	T => T, 
	D => D, 
	C => C, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDTI_1 IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDTI_1;



ARCHITECTURE STRUCTURE OF OFDTI_1 IS

-- COMPONENTS

COMPONENT OFDTI
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
U1 : OFDTI	PORT MAP(
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

ENTITY RAM32X2 IS 
GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
PORT (
	D1 : IN std_logic;
	D0 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic
); END RAM32X2;



ARCHITECTURE STRUCTURE OF RAM32X2 IS

-- COMPONENTS

COMPONENT RAM32X1
	GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O0
);
U2 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
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
SIGNAL MC : std_logic;
SIGNAL MB : std_logic;
SIGNAL MD : std_logic;
SIGNAL MA : std_logic;

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

ENTITY ILDX IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
); END ILDX;



ARCHITECTURE STRUCTURE OF ILDX IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT ILDX_1
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => GB, 
	I => G
);
U2 : ILDX_1	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q, 
	GE => GE
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
SIGNAL M23 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M12 : std_logic;

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

ENTITY BUFOD IS PORT (
	O : OUT std_logic;
	I : IN std_logic
); END BUFOD;



ARCHITECTURE STRUCTURE OF BUFOD IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : WAND1	PORT MAP(
	I => I, 
	O => O
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
SIGNAL N00148 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00130 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00065 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00131 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00149;
TC<=N00162;
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
SIGNAL N00037 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T3 : std_logic;
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
SIGNAL N00106 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL N00124 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL N00140 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL N00090 : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00036 : std_logic;

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
SIGNAL G2B : std_logic;
SIGNAL M1C01 : std_logic;
SIGNAL M2C23 : std_logic;
SIGNAL Y2B : std_logic;
SIGNAL M1C23 : std_logic;
SIGNAL G1B : std_logic;
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
U1 : XNOR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U2 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U3 : XOR4	PORT MAP(
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

COMPONENT XNOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_39
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_13
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_12
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL COR3 : std_logic;
SIGNAL OOR1 : std_logic;
SIGNAL COR2 : std_logic;
SIGNAL COR1 : std_logic;
SIGNAL N00116 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL B3_M1 : std_logic;
SIGNAL B3_M2 : std_logic;
SIGNAL OOR2 : std_logic;
SIGNAL OOR3 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N000108 : std_logic;
SIGNAL N000105 : std_logic;
SIGNAL N000107 : std_logic;
SIGNAL N0001011 : std_logic;
SIGNAL N0001012 : std_logic;
SIGNAL N000106 : std_logic;
SIGNAL N0001010 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N000065 : std_logic;
SIGNAL N000061 : std_logic;
SIGNAL N000064 : std_logic;
SIGNAL N000060 : std_logic;
SIGNAL N000062 : std_logic;
SIGNAL N000063 : std_logic;
SIGNAL N000067 : std_logic;
SIGNAL N000072 : std_logic;
SIGNAL N000071 : std_logic;
SIGNAL N000075 : std_logic;
SIGNAL N000070 : std_logic;
SIGNAL N000076 : std_logic;
SIGNAL N000073 : std_logic;
SIGNAL N000077 : std_logic;
SIGNAL N000074 : std_logic;
SIGNAL N000109 : std_logic;
SIGNAL N000084 : std_logic;
SIGNAL N000080 : std_logic;
SIGNAL N000083 : std_logic;
SIGNAL N000087 : std_logic;
SIGNAL N000082 : std_logic;
SIGNAL N000086 : std_logic;
SIGNAL N000081 : std_logic;
SIGNAL N000085 : std_logic;
SIGNAL N000066 : std_logic;

-- GATE INSTANCES

BEGIN
OFL<=N00035;
S1<=N00092;
S2<=N00083;
S3<=N00069;
CO<=N00052;
S0<=N00107;
U13 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B0, 
	I2 => A0, 
	O => N00107, 
	I1 => C_IN
);
U14 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => ADD, 
	O => B3_M2
);
U15 : XNOR2	PORT MAP(
	I1 => B3, 
	I0 => ADD, 
	O => B3_M1
);
U16 : AND2	PORT MAP(
	I0 => A3, 
	I1 => C3, 
	O => COR3
);
U17 : AND2	PORT MAP(
	I0 => C3, 
	I1 => B3_M2, 
	O => COR2
);
U18 : AND2	PORT MAP(
	I0 => A3, 
	I1 => B3_M2, 
	O => COR1
);
U19 : AND2	PORT MAP(
	I0 => A3, 
	I1 => C3, 
	O => OOR3
);
U1 : XNOR4	PORT MAP(
	I3 => B3, 
	I2 => A3, 
	I1 => ADD, 
	I0 => C2, 
	O => N00069
);
U2 : XNOR4	PORT MAP(
	I3 => A2, 
	I2 => B2, 
	I1 => ADD, 
	I0 => C1, 
	O => N00083
);
U3 : XNOR4	PORT MAP(
	I3 => A1, 
	I2 => B1, 
	I1 => ADD, 
	I0 => C0, 
	O => N00092
);
U4 : XNOR4	PORT MAP(
	I3 => A0, 
	I2 => B0, 
	I1 => ADD, 
	I0 => C_IN, 
	O => N00107
);
U20 : AND2	PORT MAP(
	I0 => C3, 
	I1 => B3_M1, 
	O => OOR2
);
U5 : CY4_39	PORT MAP(
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067
);
U21 : AND2	PORT MAP(
	I0 => A3, 
	I1 => B3_M1, 
	O => OOR1
);
U6 : CY4_13	PORT MAP(
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077
);
U22 : OR3	PORT MAP(
	I2 => OOR1, 
	I1 => OOR2, 
	I0 => OOR3, 
	O => N00043
);
U7 : CY4_42	PORT MAP(
	C7 => N000080, 
	C6 => N000081, 
	C5 => N000082, 
	C4 => N000083, 
	C3 => N000084, 
	C2 => N000085, 
	C1 => N000086, 
	C0 => N000087
);
U23 : OR3	PORT MAP(
	I2 => COR1, 
	I1 => COR2, 
	I0 => COR3, 
	O => N00052
);
U8 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000080, 
	C6 => N000081, 
	C5 => N000082, 
	C4 => N000083, 
	C3 => N000084, 
	C2 => N000085, 
	C1 => N000086, 
	C0 => N000087, 
	CIN => C3, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U24 : CY4_12	PORT MAP(
	C7 => N000105, 
	C6 => N000106, 
	C5 => N000107, 
	C4 => N000108, 
	C3 => N000109, 
	C2 => N0001010, 
	C1 => N0001011, 
	C0 => N0001012
);
U9 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => ADD, 
	C7 => N000105, 
	C6 => N000106, 
	C5 => N000107, 
	C4 => N000108, 
	C3 => N000109, 
	C2 => N0001010, 
	C1 => N0001011, 
	C0 => N0001012, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U25 : XOR2	PORT MAP(
	I1 => N00043, 
	I0 => C3, 
	O => N00035
);
U26 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => ADD, 
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077, 
	CIN => C_IN, 
	COUT0 => C0, 
	COUT => C1
);
U27 : CY4	PORT MAP(
	A0 => CI, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U28 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B3, 
	I2 => A3, 
	O => N00035, 
	I1 => C3
);
U29 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B3, 
	I2 => A3, 
	O => N00052, 
	I1 => C3
);
U10 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B3, 
	I2 => A3, 
	O => N00069, 
	I1 => C2
);
U11 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B2, 
	I2 => A2, 
	O => N00083, 
	I1 => C1
);
U12 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B1, 
	I2 => A1, 
	O => N00092, 
	I1 => C0
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
SIGNAL EQ8_9 : std_logic;
SIGNAL EQ10_11 : std_logic;
SIGNAL EQ4_5 : std_logic;
SIGNAL LT_5 : std_logic;
SIGNAL GT12_13 : std_logic;
SIGNAL GT_5 : std_logic;
SIGNAL LT_9 : std_logic;
SIGNAL GE14_15 : std_logic;
SIGNAL LT8_9 : std_logic;
SIGNAL GT6_7 : std_logic;
SIGNAL LT_13 : std_logic;
SIGNAL GT8_9 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL GT_13 : std_logic;
SIGNAL LT12_13 : std_logic;
SIGNAL GT4_5 : std_logic;
SIGNAL EQ14_15 : std_logic;
SIGNAL EQ12_13 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL GT_9 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL GT10_11 : std_logic;
SIGNAL GE12_13 : std_logic;
SIGNAL GT2_3 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL LT2_3 : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL GE8_9 : std_logic;
SIGNAL GE10_11 : std_logic;
SIGNAL LT4_5 : std_logic;
SIGNAL GT_11 : std_logic;
SIGNAL LE10_11 : std_logic;
SIGNAL GT_3 : std_logic;
SIGNAL LE6_7 : std_logic;
SIGNAL LT_15 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL GT_15 : std_logic;
SIGNAL GT_7 : std_logic;
SIGNAL LE12_13 : std_logic;
SIGNAL LE8_9 : std_logic;
SIGNAL LT_11 : std_logic;
SIGNAL LE4_5 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LT_7 : std_logic;
SIGNAL LT6_7 : std_logic;
SIGNAL LT10_11 : std_logic;
SIGNAL GE6_7 : std_logic;
SIGNAL GE4_5 : std_logic;
SIGNAL GTA : std_logic;
SIGNAL LTE : std_logic;
SIGNAL LTD : std_logic;
SIGNAL LTB : std_logic;
SIGNAL LTA : std_logic;
SIGNAL GTF : std_logic;
SIGNAL GTG : std_logic;
SIGNAL LTF : std_logic;
SIGNAL GTB : std_logic;
SIGNAL LTH : std_logic;
SIGNAL GTC : std_logic;
SIGNAL GTH : std_logic;
SIGNAL LTC : std_logic;
SIGNAL LTG : std_logic;
SIGNAL LE14_15 : std_logic;
SIGNAL EQ_13 : std_logic;
SIGNAL GTD : std_logic;
SIGNAL GTE : std_logic;
SIGNAL EQ_11 : std_logic;
SIGNAL EQ_4 : std_logic;
SIGNAL EQ_3 : std_logic;
SIGNAL EQ8_15 : std_logic;
SIGNAL EQ6_7 : std_logic;
SIGNAL EQ_2 : std_logic;
SIGNAL EQ_15 : std_logic;
SIGNAL EQ_9 : std_logic;
SIGNAL EQ_1 : std_logic;

-- GATE INSTANCES

BEGIN
U77 : OR2	PORT MAP(
	I1 => GE10_11, 
	I0 => GT_11, 
	O => GT10_11
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
	I1 => LE12_13, 
	I0 => LT_13, 
	O => LT12_13
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
	I1 => GE12_13, 
	I0 => GT_13, 
	O => GT12_13
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
U80 : NOR2	PORT MAP(
	I1 => LT8_9, 
	I0 => GT8_9, 
	O => EQ8_9
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
U61 : AND4	PORT MAP(
	I0 => EQ14_15, 
	I1 => EQ12_13, 
	I2 => EQ10_11, 
	I3 => EQ8_9, 
	O => EQ8_15
);
U62 : AND2	PORT MAP(
	I0 => GT6_7, 
	I1 => EQ8_15, 
	O => GTD
);
U30 : AND2B1	PORT MAP(
	I0 => B9, 
	I1 => A9, 
	O => GT_9
);
U63 : AND2	PORT MAP(
	I0 => EQ8_15, 
	I1 => LT6_7, 
	O => LTD
);
U31 : AND2B1	PORT MAP(
	I0 => A9, 
	I1 => B9, 
	O => LT_9
);
U64 : AND5	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => EQ4_5, 
	I3 => EQ2_3, 
	I4 => LT0_1, 
	O => LTA
);
U32 : XNOR2	PORT MAP(
	I1 => B9, 
	I0 => A9, 
	O => EQ_9
);
U65 : AND5	PORT MAP(
	I0 => GT0_1, 
	I1 => EQ2_3, 
	I2 => EQ4_5, 
	I3 => EQ6_7, 
	I4 => EQ8_15, 
	O => GTA
);
U33 : OR2	PORT MAP(
	I1 => LE8_9, 
	I0 => LT_9, 
	O => LT8_9
);
U66 : AND4	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => EQ4_5, 
	I3 => LT2_3, 
	O => LTB
);
U34 : OR2	PORT MAP(
	I1 => GE8_9, 
	I0 => GT_9, 
	O => GT8_9
);
U67 : AND4	PORT MAP(
	I0 => GT2_3, 
	I1 => EQ4_5, 
	I2 => EQ6_7, 
	I3 => EQ8_15, 
	O => GTB
);
U35 : NOR2	PORT MAP(
	I1 => LT10_11, 
	I0 => GT10_11, 
	O => EQ10_11
);
U68 : AND3	PORT MAP(
	I0 => EQ8_15, 
	I1 => EQ6_7, 
	I2 => LT4_5, 
	O => LTC
);
U36 : AND3B1	PORT MAP(
	I0 => A10, 
	I1 => EQ_11, 
	I2 => B10, 
	O => LE10_11
);
U69 : AND3	PORT MAP(
	I0 => GT4_5, 
	I1 => EQ6_7, 
	I2 => EQ8_15, 
	O => GTC
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
U72 : OR2	PORT MAP(
	I1 => LE2_3, 
	I0 => LT_3, 
	O => LT2_3
);
U40 : XNOR2	PORT MAP(
	I1 => B11, 
	I0 => A11, 
	O => EQ_11
);
U73 : OR2	PORT MAP(
	I1 => GE2_3, 
	I0 => GT_3, 
	O => GT2_3
);
U41 : NOR2	PORT MAP(
	I1 => LTH, 
	I0 => GTH, 
	O => EQ14_15
);
U74 : OR2	PORT MAP(
	I1 => LE4_5, 
	I0 => LT_5, 
	O => LT4_5
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
	I1 => GE4_5, 
	I0 => GT_5, 
	O => GT4_5
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
	I1 => LE10_11, 
	I0 => LT_11, 
	O => LT10_11
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
U70 : OR8	PORT MAP(
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
U71 : OR8	PORT MAP(
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
SIGNAL A1 : std_logic;
SIGNAL A2 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A0 : std_logic;
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
SIGNAL A0 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A1 : std_logic;
SIGNAL A2 : std_logic;
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
SIGNAL N00017 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00025 : std_logic;

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
SIGNAL N00067 : std_logic;
SIGNAL MDG : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDA : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL MDF : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL MDE : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL MDC : std_logic;
SIGNAL MDH : std_logic;
SIGNAL MDD : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL MDB : std_logic;

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

COMPONENT NAND3
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
SIGNAL I58 : std_logic;
SIGNAL I14 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I14, 
	I2 => I58, 
	O => O
);
U2 : AND4	PORT MAP(
	I0 => I5, 
	I1 => I6, 
	I2 => I7, 
	I3 => I8, 
	O => I58
);
U3 : AND4	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	I3 => I4, 
	O => I14
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

ENTITY READBACK IS PORT (
	CLK : IN std_logic;
	TRIG : IN std_logic;
	DATA : OUT std_logic;
	RIP : OUT std_logic
); END READBACK;



ARCHITECTURE STRUCTURE OF READBACK IS

-- COMPONENTS

COMPONENT RDCLK
	PORT (
	I : IN std_logic
	); END COMPONENT;

COMPONENT RDBK
	PORT (
	DATA : OUT std_logic;
	RIP : OUT std_logic;
	TRIG : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RDCLK	PORT MAP(
	I => CLK
);
U2 : RDBK	PORT MAP(
	DATA => DATA, 
	RIP => RIP, 
	TRIG => TRIG
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFDX8 IS PORT (
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
); END IFDX8;



ARCHITECTURE STRUCTURE OF IFDX8 IS

-- COMPONENTS

COMPONENT IFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : IFDX	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0, 
	CE => CE
);
U2 : IFDX	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);
U3 : IFDX	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2, 
	CE => CE
);
U4 : IFDX	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3, 
	CE => CE
);
U5 : IFDX	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4, 
	CE => CE
);
U6 : IFDX	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5, 
	CE => CE
);
U7 : IFDX	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6, 
	CE => CE
);
U8 : IFDX	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFDX16 IS PORT (
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
); END IFDX16;



ARCHITECTURE STRUCTURE OF IFDX16 IS

-- COMPONENTS

COMPONENT IFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : IFDX	PORT MAP(
	D => D12, 
	C => C, 
	Q => Q12, 
	CE => CE
);
U14 : IFDX	PORT MAP(
	D => D13, 
	C => C, 
	Q => Q13, 
	CE => CE
);
U15 : IFDX	PORT MAP(
	D => D14, 
	C => C, 
	Q => Q14, 
	CE => CE
);
U16 : IFDX	PORT MAP(
	D => D15, 
	C => C, 
	Q => Q15, 
	CE => CE
);
U1 : IFDX	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0, 
	CE => CE
);
U2 : IFDX	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);
U3 : IFDX	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2, 
	CE => CE
);
U4 : IFDX	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3, 
	CE => CE
);
U5 : IFDX	PORT MAP(
	D => D4, 
	C => C, 
	Q => Q4, 
	CE => CE
);
U6 : IFDX	PORT MAP(
	D => D5, 
	C => C, 
	Q => Q5, 
	CE => CE
);
U7 : IFDX	PORT MAP(
	D => D6, 
	C => C, 
	Q => Q6, 
	CE => CE
);
U8 : IFDX	PORT MAP(
	D => D7, 
	C => C, 
	Q => Q7, 
	CE => CE
);
U9 : IFDX	PORT MAP(
	D => D8, 
	C => C, 
	Q => Q8, 
	CE => CE
);
U10 : IFDX	PORT MAP(
	D => D9, 
	C => C, 
	Q => Q9, 
	CE => CE
);
U11 : IFDX	PORT MAP(
	D => D10, 
	C => C, 
	Q => Q10, 
	CE => CE
);
U12 : IFDX	PORT MAP(
	D => D11, 
	C => C, 
	Q => Q11, 
	CE => CE
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
SIGNAL GT_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL EQ_1 : std_logic;

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
SIGNAL N00046 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL N00107 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL N00097 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00066 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL TQ2 : std_logic;

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
SIGNAL E2 : std_logic;
SIGNAL M2_23 : std_logic;
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
SIGNAL N00015 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL SLI : std_logic;

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
SIGNAL I46 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XNOR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U2 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
U3 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILDX4 IS PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	G : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	GE : IN std_logic
); END ILDX4;



ARCHITECTURE STRUCTURE OF ILDX4 IS

-- COMPONENTS

COMPONENT ILDX
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : ILDX	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0, 
	GE => GE
);
U2 : ILDX	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1, 
	GE => GE
);
U3 : ILDX	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2, 
	GE => GE
);
U4 : ILDX	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3, 
	GE => GE
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
SIGNAL N00007 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00017 : std_logic;

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
SIGNAL N00031 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDR0 : std_logic;

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
	D => MDR0, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00021
);
U3 : M2_1	PORT MAP(
	D0 => N00041, 
	D1 => MDL2, 
	S0 => L_LEFT, 
	O => MDR2
);
U12 : FDRE	PORT MAP(
	D => MDR1, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00019
);
U4 : M2_1	PORT MAP(
	D0 => SRI, 
	D1 => MDL3, 
	S0 => L_LEFT, 
	O => MDR3
);
U13 : FDRE	PORT MAP(
	D => MDR2, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00031
);
U5 : M2_1	PORT MAP(
	D0 => SLI, 
	D1 => D0, 
	S0 => L, 
	O => MDL0
);
U14 : FDRE	PORT MAP(
	D => MDR3, 
	CE => L_OR_CE, 
	C => C, 
	R => R, 
	Q => N00041
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

ENTITY RAM32X8S IS 
GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
PORT (
	WE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	WCLK : IN std_logic
); END RAM32X8S;



ARCHITECTURE STRUCTURE OF RAM32X8S IS

-- COMPONENTS

COMPONENT RAM32X1S
	GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O : OUT std_logic;
	WCLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00097 : std_logic;
SIGNAL N00098 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O0, 
	WCLK => WCLK
);
U2 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O1, 
	WCLK => WCLK
);
U3 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O2, 
	WCLK => WCLK
);
U4 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O3, 
	WCLK => WCLK
);
U5 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D7, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O7, 
	WCLK => WCLK
);
U6 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D6, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O6, 
	WCLK => WCLK
);
U7 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D5, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O5, 
	WCLK => WCLK
);
U8 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D4, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O4, 
	WCLK => WCLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM16X2S IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	WE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	WCLK : IN std_logic
); END RAM16X2S;



ARCHITECTURE STRUCTURE OF RAM16X2S IS

-- COMPONENTS

COMPONENT RAM16X1S
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic;
	WCLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O0, 
	WCLK => WCLK
);
U2 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O1, 
	WCLK => WCLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDTX4 IS PORT (
	T : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	C : IN std_logic;
	O0 : OUT   std_logic;
	O1 : OUT   std_logic;
	O2 : OUT   std_logic;
	O3 : OUT   std_logic;
	CE : IN std_logic
); END OFDTX4;



ARCHITECTURE STRUCTURE OF OFDTX4 IS

-- COMPONENTS

COMPONENT OFDTX
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDTX	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0, 
	CE => CE
);
U2 : OFDTX	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1, 
	CE => CE
);
U3 : OFDTX	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2, 
	CE => CE
);
U4 : OFDTX	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILDX16 IS PORT (
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
	Q15 : OUT std_logic;
	GE : IN std_logic
); END ILDX16;



ARCHITECTURE STRUCTURE OF ILDX16 IS

-- COMPONENTS

COMPONENT ILDX
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : ILDX	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12, 
	GE => GE
);
U14 : ILDX	PORT MAP(
	D => D13, 
	G => G, 
	Q => Q13, 
	GE => GE
);
U15 : ILDX	PORT MAP(
	D => D14, 
	G => G, 
	Q => Q14, 
	GE => GE
);
U16 : ILDX	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15, 
	GE => GE
);
U1 : ILDX	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0, 
	GE => GE
);
U2 : ILDX	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1, 
	GE => GE
);
U3 : ILDX	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2, 
	GE => GE
);
U4 : ILDX	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3, 
	GE => GE
);
U5 : ILDX	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4, 
	GE => GE
);
U6 : ILDX	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5, 
	GE => GE
);
U7 : ILDX	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6, 
	GE => GE
);
U8 : ILDX	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7, 
	GE => GE
);
U9 : ILDX	PORT MAP(
	D => D8, 
	G => G, 
	Q => Q8, 
	GE => GE
);
U10 : ILDX	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9, 
	GE => GE
);
U11 : ILDX	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10, 
	GE => GE
);
U12 : ILDX	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11, 
	GE => GE
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
SIGNAL EQ4_5 : std_logic;
SIGNAL EQ2_3 : std_logic;
SIGNAL N01046 : std_logic;
SIGNAL N01047 : std_logic;
SIGNAL GT_7 : std_logic;
SIGNAL LT_1 : std_logic;
SIGNAL GE6_7 : std_logic;
SIGNAL GE4_5 : std_logic;
SIGNAL LT2_3 : std_logic;
SIGNAL GT0_1 : std_logic;
SIGNAL GE0_1 : std_logic;
SIGNAL LT_3 : std_logic;
SIGNAL GT_3 : std_logic;
SIGNAL LE2_3 : std_logic;
SIGNAL LT0_1 : std_logic;
SIGNAL LE0_1 : std_logic;
SIGNAL GT4_5 : std_logic;
SIGNAL LT4_5 : std_logic;
SIGNAL LT_7 : std_logic;
SIGNAL EQ6_7 : std_logic;
SIGNAL GTC : std_logic;
SIGNAL GTB : std_logic;
SIGNAL LTA : std_logic;
SIGNAL GTD : std_logic;
SIGNAL LTD : std_logic;
SIGNAL LTB : std_logic;
SIGNAL GTA : std_logic;
SIGNAL LTC : std_logic;
SIGNAL GE2_3 : std_logic;
SIGNAL GT_5 : std_logic;
SIGNAL LE4_5 : std_logic;
SIGNAL GT_1 : std_logic;
SIGNAL GT2_3 : std_logic;
SIGNAL LE6_7 : std_logic;
SIGNAL LT_5 : std_logic;
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
SIGNAL I13 : std_logic;
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I13, 
	I2 => I47, 
	O => O
);
U2 : AND3	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	O => I13
);
U3 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => I47
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
	O => O2, 
	I => I2
);
U14 : OBUF	PORT MAP(
	O => O1, 
	I => I1
);
U15 : OBUF	PORT MAP(
	O => O0, 
	I => I0
);
U16 : OBUF	PORT MAP(
	O => O3, 
	I => I3
);
U1 : OBUF	PORT MAP(
	O => O15, 
	I => I15
);
U2 : OBUF	PORT MAP(
	O => O14, 
	I => I14
);
U3 : OBUF	PORT MAP(
	O => O13, 
	I => I13
);
U4 : OBUF	PORT MAP(
	O => O12, 
	I => I12
);
U5 : OBUF	PORT MAP(
	O => O11, 
	I => I11
);
U6 : OBUF	PORT MAP(
	O => O10, 
	I => I10
);
U7 : OBUF	PORT MAP(
	O => O9, 
	I => I9
);
U8 : OBUF	PORT MAP(
	O => O8, 
	I => I8
);
U9 : OBUF	PORT MAP(
	O => O7, 
	I => I7
);
U10 : OBUF	PORT MAP(
	O => O6, 
	I => I6
);
U11 : OBUF	PORT MAP(
	O => O5, 
	I => I5
);
U12 : OBUF	PORT MAP(
	O => O4, 
	I => I4
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDEI_1 IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDEI_1;



ARCHITECTURE STRUCTURE OF OFDEI_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTI
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => T, 
	I => E
);
U2 : OFDTI	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O
);
U3 : INV	PORT MAP(
	O => CB, 
	I => C
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
SIGNAL N00028 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL AX1 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL OX3 : std_logic;

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

ENTITY DECODE8 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	O : OUT   std_logic
); END DECODE8;



ARCHITECTURE STRUCTURE OF DECODE8 IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : WAND1	PORT MAP(
	I => A0, 
	O => O
);
U2 : WAND1	PORT MAP(
	I => A1, 
	O => O
);
U3 : WAND1	PORT MAP(
	I => A2, 
	O => O
);
U4 : WAND1	PORT MAP(
	I => A3, 
	O => O
);
U5 : WAND1	PORT MAP(
	I => A4, 
	O => O
);
U6 : WAND1	PORT MAP(
	I => A5, 
	O => O
);
U7 : WAND1	PORT MAP(
	I => A6, 
	O => O
);
U8 : WAND1	PORT MAP(
	I => A7, 
	O => O
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

COMPONENT ILD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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

ENTITY RAM16X4 IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END RAM16X4;



ARCHITECTURE STRUCTURE OF RAM16X4 IS

-- COMPONENTS

COMPONENT RAM16X1
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O2
);
U2 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O3
);
U3 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O1
);
U4 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O0
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

COMPONENT XOR2
	PORT (
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
U1 : XNOR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U2 : XOR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U3 : XOR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM32X2S IS 
GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
PORT (
	WE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	WCLK : IN std_logic
); END RAM32X2S;



ARCHITECTURE STRUCTURE OF RAM32X2S IS

-- COMPONENTS

COMPONENT RAM32X1S
	GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O : OUT std_logic;
	WCLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O0, 
	WCLK => WCLK
);
U2 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O1, 
	WCLK => WCLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDTX_1 IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
); END OFDTX_1;



ARCHITECTURE STRUCTURE OF OFDTX_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTX
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
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
U2 : OFDTX	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDTX16 IS PORT (
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
	O15 : OUT   std_logic;
	CE : IN std_logic
); END OFDTX16;



ARCHITECTURE STRUCTURE OF OFDTX16 IS

-- COMPONENTS

COMPONENT OFDTX
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00093 : std_logic;
SIGNAL N00096 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : OFDTX	PORT MAP(
	T => T, 
	D => D12, 
	C => C, 
	O => O12, 
	CE => CE
);
U14 : OFDTX	PORT MAP(
	T => T, 
	D => D13, 
	C => C, 
	O => O13, 
	CE => CE
);
U15 : OFDTX	PORT MAP(
	T => T, 
	D => D14, 
	C => C, 
	O => O14, 
	CE => CE
);
U16 : OFDTX	PORT MAP(
	T => T, 
	D => D15, 
	C => C, 
	O => O15, 
	CE => CE
);
U1 : OFDTX	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0, 
	CE => CE
);
U2 : OFDTX	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1, 
	CE => CE
);
U3 : OFDTX	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2, 
	CE => CE
);
U4 : OFDTX	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3, 
	CE => CE
);
U5 : OFDTX	PORT MAP(
	T => T, 
	D => D4, 
	C => C, 
	O => O4, 
	CE => CE
);
U6 : OFDTX	PORT MAP(
	T => T, 
	D => D5, 
	C => C, 
	O => O5, 
	CE => CE
);
U7 : OFDTX	PORT MAP(
	T => T, 
	D => D6, 
	C => C, 
	O => O6, 
	CE => CE
);
U8 : OFDTX	PORT MAP(
	T => T, 
	D => D7, 
	C => C, 
	O => O7, 
	CE => CE
);
U9 : OFDTX	PORT MAP(
	T => T, 
	D => D8, 
	C => C, 
	O => O8, 
	CE => CE
);
U10 : OFDTX	PORT MAP(
	T => T, 
	D => D9, 
	C => C, 
	O => O9, 
	CE => CE
);
U11 : OFDTX	PORT MAP(
	T => T, 
	D => D10, 
	C => C, 
	O => O10, 
	CE => CE
);
U12 : OFDTX	PORT MAP(
	T => T, 
	D => D11, 
	C => C, 
	O => O11, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDEXI IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
); END OFDEXI;



ARCHITECTURE STRUCTURE OF OFDEXI IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTXI
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
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
U2 : OFDTXI	PORT MAP(
	T => T, 
	D => D, 
	C => C, 
	O => O, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDEX8 IS PORT (
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
	O7 : OUT   std_logic;
	CE : IN std_logic
); END OFDEX8;



ARCHITECTURE STRUCTURE OF OFDEX8 IS

-- COMPONENTS

COMPONENT OFDEX
	PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDEX	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0, 
	CE => CE
);
U2 : OFDEX	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1, 
	CE => CE
);
U3 : OFDEX	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2, 
	CE => CE
);
U4 : OFDEX	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3, 
	CE => CE
);
U5 : OFDEX	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4, 
	CE => CE
);
U6 : OFDEX	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5, 
	CE => CE
);
U7 : OFDEX	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6, 
	CE => CE
);
U8 : OFDEX	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDEX IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
); END OFDEX;



ARCHITECTURE STRUCTURE OF OFDEX IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTX
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
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
U2 : OFDTX	PORT MAP(
	T => N00003, 
	D => D, 
	C => C, 
	O => O, 
	CE => CE
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
SIGNAL N00096 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL NA_B1 : std_logic;
SIGNAL NA_B7 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00094 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL NA_B3 : std_logic;
SIGNAL AB1 : std_logic;
SIGNAL AG_7 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AL_7 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL NA_B5 : std_logic;
SIGNAL N00085 : std_logic;
SIGNAL N00087 : std_logic;
SIGNAL N00073 : std_logic;

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
SIGNAL SD0 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL R_L_CE : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S3 : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00024;
Q1<=N00023;
Q2<=N00022;
Q3<=N00021;
U13 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00050, 
	Q => N00023
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
	CLR => N00050, 
	Q => N00024
);
U18 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00050, 
	Q => N00022
);
U19 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00050, 
	Q => N00021
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
	G => N00050
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
	A0 => N00024, 
	A1 => N00023, 
	A2 => N00022, 
	A3 => N00021, 
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

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
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

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_02
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_39
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_01
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL OOR2 : std_logic;
SIGNAL COR1 : std_logic;
SIGNAL N00046 : std_logic;
SIGNAL OOR1 : std_logic;
SIGNAL N0001411 : std_logic;
SIGNAL N000147 : std_logic;
SIGNAL N000149 : std_logic;
SIGNAL N0001410 : std_logic;
SIGNAL N0001412 : std_logic;
SIGNAL N000148 : std_logic;
SIGNAL N000145 : std_logic;
SIGNAL N000146 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL C3_M : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL COR2 : std_logic;
SIGNAL COR3 : std_logic;
SIGNAL OOR3 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000045 : std_logic;

-- GATE INSTANCES

BEGIN
OFL<=N00039;
S1<=N00079;
S2<=N00069;
S3<=N00061;
CO<=N00046;
S0<=N00089;
U13 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000145, 
	C6 => N000146, 
	C5 => N000147, 
	C4 => N000148, 
	C3 => N000149, 
	C2 => N0001410, 
	C1 => N0001411, 
	C0 => N0001412, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U14 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C_IN, 
	COUT0 => C0, 
	COUT => C1
);
U15 : CY4	PORT MAP(
	A0 => CI, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U16 : OR3	PORT MAP(
	I2 => OOR1, 
	I1 => OOR2, 
	I0 => OOR3, 
	O => N00035
);
U17 : OR3	PORT MAP(
	I2 => COR1, 
	I1 => COR2, 
	I0 => COR3, 
	O => N00046
);
U18 : AND2	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => OOR1
);
U19 : AND2	PORT MAP(
	I0 => C3_M, 
	I1 => B3, 
	O => OOR2
);
U1 : CY4_42	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : CY4_02	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U3 : CY4_39	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U4 : XOR3	PORT MAP(
	I2 => B3, 
	I1 => A3, 
	I0 => C2, 
	O => N00061
);
U20 : AND2	PORT MAP(
	I0 => A3, 
	I1 => C3_M, 
	O => OOR3
);
U5 : XOR3	PORT MAP(
	I2 => A2, 
	I1 => B2, 
	I0 => C1, 
	O => N00069
);
U21 : AND2	PORT MAP(
	I0 => A3, 
	I1 => B3, 
	O => COR1
);
U6 : XOR3	PORT MAP(
	I2 => A1, 
	I1 => B1, 
	I0 => C0, 
	O => N00079
);
U22 : AND2	PORT MAP(
	I0 => C3_M, 
	I1 => B3, 
	O => COR2
);
U7 : XOR3	PORT MAP(
	I2 => A0, 
	I1 => B0, 
	I0 => C_IN, 
	O => N00089
);
U23 : AND2	PORT MAP(
	I0 => A3, 
	I1 => C3_M, 
	O => COR3
);
U8 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B3, 
	I2 => A3, 
	O => N00061, 
	I1 => C2
);
U24 : XOR2	PORT MAP(
	I1 => N00035, 
	I0 => C3_M, 
	O => N00039
);
U9 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B1, 
	I2 => A1, 
	O => N00079, 
	I1 => C0
);
U25 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B3, 
	I2 => A3, 
	O => N00046, 
	I1 => C3_M
);
U26 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B3, 
	I2 => A3, 
	O => N00039, 
	I1 => C3_M
);
U27 : CY4_01	PORT MAP(
	C7 => N000145, 
	C6 => N000146, 
	C5 => N000147, 
	C4 => N000148, 
	C3 => N000149, 
	C2 => N0001410, 
	C1 => N0001411, 
	C0 => N0001412
);
U10 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B2, 
	I2 => A2, 
	O => N00069, 
	I1 => C1
);
U11 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B0, 
	I2 => A0, 
	O => N00089, 
	I1 => C_IN
);
U12 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => C3, 
	COUT0 => C3_M, 
	COUT => OPEN
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

COMPONENT BUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
XU1 : BUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
XU2 : BUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
XU3 : BUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
XU4 : BUFE	PORT MAP(
	E => E, 
	I => I0, 
	O => O0
);
XU5 : BUFE	PORT MAP(
	E => E, 
	I => I7, 
	O => O7
);
XU6 : BUFE	PORT MAP(
	E => E, 
	I => I6, 
	O => O6
);
XU7 : BUFE	PORT MAP(
	E => E, 
	I => I5, 
	O => O5
);
XU8 : BUFE	PORT MAP(
	E => E, 
	I => I4, 
	O => O4
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
SIGNAL N00021 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00016 : std_logic;

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
SIGNAL N00024 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00032 : std_logic;
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

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT FDCE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_18
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT CY4_19
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL MD6 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL CO : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00148 : std_logic;
SIGNAL N00114 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000051 : std_logic;
SIGNAL N000055 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000050 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000054 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N0001912 : std_logic;
SIGNAL N000199 : std_logic;
SIGNAL N000198 : std_logic;
SIGNAL N0001911 : std_logic;
SIGNAL N000197 : std_logic;
SIGNAL N000196 : std_logic;
SIGNAL N0001910 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000057 : std_logic;
SIGNAL N000053 : std_logic;
SIGNAL N000052 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000056 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000195 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=CO;
Q0<=N00155;
Q1<=N00148;
Q2<=N00118;
Q3<=N00114;
Q4<=N00086;
Q5<=N00077;
Q6<=N00054;
Q7<=N00050;
U13 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => L_CE
);
U14 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U15 : CY4	PORT MAP(
	A0 => N00054, 
	B0 => orcad_unused, 
	A1 => N00050, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => CO
);
U16 : CY4	PORT MAP(
	A0 => N00086, 
	B0 => orcad_unused, 
	A1 => N00077, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U17 : CY4	PORT MAP(
	A0 => N00118, 
	B0 => orcad_unused, 
	A1 => N00114, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U18 : CY4	PORT MAP(
	A0 => N00155, 
	B0 => orcad_unused, 
	A1 => N00148, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000195, 
	C6 => N000196, 
	C5 => N000197, 
	C4 => N000198, 
	C3 => N000199, 
	C2 => N0001910, 
	C1 => N0001911, 
	C0 => N0001912, 
	CIN => orcad_unused, 
	COUT0 => C0, 
	COUT => C1
);
U19 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00148
);
U1 : CY4_42	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : CY4_18	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U3 : CY4_18	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U4 : CY4_18	PORT MAP(
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057
);
U20 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00155
);
U21 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00118
);
U22 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00114
);
U23 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00086
);
U24 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00077
);
U25 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00054
);
U26 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00050
);
U27 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00050, 
	I2 => D7, 
	O => MD7, 
	I1 => C6
);
U28 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00054, 
	I2 => D6, 
	O => MD6, 
	I1 => C5
);
U29 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00077, 
	I2 => D5, 
	O => MD5, 
	I1 => C4
);
U30 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00086, 
	I2 => D4, 
	O => MD4, 
	I1 => C3
);
U31 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00114, 
	I2 => D3, 
	O => MD3, 
	I1 => C2
);
U32 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00118, 
	I2 => D2, 
	O => MD2, 
	I1 => C1
);
U33 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00148, 
	I2 => D1, 
	O => MD1, 
	I1 => C0
);
U34 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00155, 
	I2 => D0, 
	O => MD0, 
	I1 => orcad_unused
);
U35 : XOR2	PORT MAP(
	I1 => N00148, 
	I0 => C0, 
	O => TQ1
);
U36 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00118, 
	O => TQ2
);
U37 : XOR2	PORT MAP(
	I1 => N00114, 
	I0 => C2, 
	O => TQ3
);
U38 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00086, 
	O => TQ4
);
U39 : XOR2	PORT MAP(
	I1 => N00077, 
	I0 => C4, 
	O => TQ5
);
U40 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00054, 
	O => TQ6
);
U41 : XOR2	PORT MAP(
	I1 => N00050, 
	I0 => C6, 
	O => TQ7
);
U42 : AND2	PORT MAP(
	I0 => CO, 
	I1 => CE, 
	O => CEO
);
U43 : INV	PORT MAP(
	O => TQ0, 
	I => N00155
);
U44 : CY4_19	PORT MAP(
	C7 => N000195, 
	C6 => N000196, 
	C5 => N000197, 
	C4 => N000198, 
	C3 => N000199, 
	C2 => N0001910, 
	C1 => N0001911, 
	C0 => N0001912
);
U11 : M2_1	PORT MAP(
	D0 => TQ1, 
	D1 => D1, 
	S0 => L, 
	O => MD1
);
U12 : M2_1	PORT MAP(
	D0 => TQ0, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U5 : M2_1	PORT MAP(
	D0 => TQ7, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U6 : M2_1	PORT MAP(
	D0 => TQ6, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U7 : M2_1	PORT MAP(
	D0 => TQ5, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U8 : M2_1	PORT MAP(
	D0 => TQ4, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U9 : M2_1	PORT MAP(
	D0 => TQ3, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U10 : M2_1	PORT MAP(
	D0 => TQ2, 
	D1 => D2, 
	S0 => L, 
	O => MD2
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
SIGNAL I13 : std_logic;
SIGNAL I46 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NAND3	PORT MAP(
	I0 => I0, 
	I1 => I13, 
	I2 => I46, 
	O => O
);
U2 : AND3	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	O => I46
);
U3 : AND3	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	O => I13
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

COMPONENT NOR3
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
SIGNAL I14 : std_logic;
SIGNAL I58 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NOR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
	I0 => I0, 
	O => O
);
U2 : OR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
);
U3 : OR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
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
SIGNAL N00032 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00033 : std_logic;

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
SIGNAL M45 : std_logic;
SIGNAL O : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M03 : std_logic;

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
SIGNAL T2 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL LB : std_logic;
SIGNAL RB : std_logic;
SIGNAL N00014 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00048 : std_logic;

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

COMPONENT FDPE
	PORT (
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
U1 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U2 : FDPE	PORT MAP(
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
SIGNAL TQ : std_logic;
SIGNAL N00006 : std_logic;
SIGNAL D_S : std_logic;
SIGNAL CE_S : std_logic;

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

ENTITY IFD IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END IFD;



ARCHITECTURE STRUCTURE OF IFD IS

-- COMPONENTS

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT IFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : IFDX	PORT MAP(
	D => D, 
	C => C, 
	Q => Q, 
	CE => N00002
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
U1 : OR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
);
U2 : OR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
);
U3 : OR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
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
SIGNAL N00045 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL MD6 : std_logic;

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

ENTITY WAND8 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	O : OUT std_logic
); END WAND8;



ARCHITECTURE STRUCTURE OF WAND8 IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : WAND1	PORT MAP(
	I => I0, 
	O => O
);
U2 : WAND1	PORT MAP(
	I => I1, 
	O => O
);
U3 : WAND1	PORT MAP(
	I => I2, 
	O => O
);
U4 : WAND1	PORT MAP(
	I => I3, 
	O => O
);
U5 : WAND1	PORT MAP(
	I => I4, 
	O => O
);
U6 : WAND1	PORT MAP(
	I => I5, 
	O => O
);
U7 : WAND1	PORT MAP(
	I => I6, 
	O => O
);
U8 : WAND1	PORT MAP(
	I => I7, 
	O => O
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
SIGNAL N00051 : std_logic;
SIGNAL NK : std_logic;
SIGNAL JK : std_logic;
SIGNAL MD : std_logic;
SIGNAL MC : std_logic;
SIGNAL MB : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL MA : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL OJK : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL NJ : std_logic;

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
SIGNAL A20 : std_logic;
SIGNAL A13 : std_logic;
SIGNAL A32 : std_logic;
SIGNAL A12 : std_logic;
SIGNAL A10 : std_logic;
SIGNAL A42 : std_logic;
SIGNAL A30 : std_logic;
SIGNAL A23 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL A31 : std_logic;
SIGNAL A41 : std_logic;
SIGNAL A40 : std_logic;
SIGNAL A21 : std_logic;

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

ENTITY OFDEXI_1 IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
); END OFDEXI_1;



ARCHITECTURE STRUCTURE OF OFDEXI_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTXI
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => T, 
	I => E
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
);
U3 : OFDTXI	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O, 
	CE => CE
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

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR4
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_13
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_12
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

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

COMPONENT AND2
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

COMPONENT XNOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_39
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL OOR3 : std_logic;
SIGNAL COR1 : std_logic;
SIGNAL COR3 : std_logic;
SIGNAL C15 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00267 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL B15_M1 : std_logic;
SIGNAL B15_M2 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL COR2 : std_logic;
SIGNAL OOR1 : std_logic;
SIGNAL OOR2 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N00198 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL N00214 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL N00252 : std_logic;
SIGNAL N00132 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL N00145 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00292 : std_logic;
SIGNAL N00164 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL N00153 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL N00248 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N0004410 : std_logic;
SIGNAL N000445 : std_logic;
SIGNAL N000449 : std_logic;
SIGNAL N000447 : std_logic;
SIGNAL N000448 : std_logic;
SIGNAL N0004412 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL C15_M : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N00202 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N000077 : std_logic;
SIGNAL N000251 : std_logic;
SIGNAL N000256 : std_logic;
SIGNAL N000245 : std_logic;
SIGNAL N000187 : std_logic;
SIGNAL N000126 : std_logic;
SIGNAL N000060 : std_logic;
SIGNAL N000063 : std_logic;
SIGNAL N000220 : std_logic;
SIGNAL N000225 : std_logic;
SIGNAL N000070 : std_logic;
SIGNAL N000075 : std_logic;
SIGNAL N000250 : std_logic;
SIGNAL N000064 : std_logic;
SIGNAL N0004411 : std_logic;
SIGNAL N000446 : std_logic;
SIGNAL N000127 : std_logic;
SIGNAL N000061 : std_logic;
SIGNAL N000247 : std_logic;
SIGNAL N000182 : std_logic;
SIGNAL N000065 : std_logic;
SIGNAL N000242 : std_logic;
SIGNAL N000226 : std_logic;
SIGNAL N000071 : std_logic;
SIGNAL N000076 : std_logic;
SIGNAL N000255 : std_logic;
SIGNAL N000073 : std_logic;
SIGNAL N000123 : std_logic;
SIGNAL N000241 : std_logic;
SIGNAL N000221 : std_logic;
SIGNAL N000183 : std_logic;
SIGNAL N000122 : std_logic;
SIGNAL N000227 : std_logic;
SIGNAL N000062 : std_logic;
SIGNAL N000120 : std_logic;
SIGNAL N000125 : std_logic;
SIGNAL N000257 : std_logic;
SIGNAL N000072 : std_logic;
SIGNAL N000066 : std_logic;
SIGNAL N000180 : std_logic;
SIGNAL N000074 : std_logic;
SIGNAL N000243 : std_logic;
SIGNAL N000252 : std_logic;
SIGNAL N000222 : std_logic;
SIGNAL N000184 : std_logic;
SIGNAL N000124 : std_logic;
SIGNAL N000067 : std_logic;
SIGNAL N000246 : std_logic;
SIGNAL N000112 : std_logic;
SIGNAL N000110 : std_logic;
SIGNAL N000114 : std_logic;
SIGNAL N000111 : std_logic;
SIGNAL N000116 : std_logic;
SIGNAL N000117 : std_logic;
SIGNAL N000224 : std_logic;
SIGNAL N000186 : std_logic;
SIGNAL N000240 : std_logic;
SIGNAL N000254 : std_logic;
SIGNAL N000121 : std_logic;
SIGNAL N000181 : std_logic;
SIGNAL N000223 : std_logic;
SIGNAL N000185 : std_logic;
SIGNAL N000244 : std_logic;
SIGNAL N000253 : std_logic;
SIGNAL N000194 : std_logic;
SIGNAL N000193 : std_logic;
SIGNAL N000192 : std_logic;
SIGNAL N000196 : std_logic;
SIGNAL N000191 : std_logic;
SIGNAL N000197 : std_logic;
SIGNAL N000195 : std_logic;
SIGNAL N000190 : std_logic;
SIGNAL N000113 : std_logic;
SIGNAL N000115 : std_logic;

-- GATE INSTANCES

BEGIN
OFL<=N00073;
S13<=N00164;
S1<=N00226;
S14<=N00153;
S2<=N00198;
S15<=N00121;
S3<=N00176;
S4<=N00145;
S5<=N00132;
S6<=N00111;
S7<=N00102;
S8<=N00292;
S9<=N00267;
CO<=N00071;
S10<=N00252;
S11<=N00214;
S12<=N00202;
S0<=N00248;
U45 : CY4	PORT MAP(
	A0 => A10, 
	B0 => B10, 
	A1 => A11, 
	B1 => B11, 
	ADD => ADD, 
	C7 => N000250, 
	C6 => N000251, 
	C5 => N000252, 
	C4 => N000253, 
	C3 => N000254, 
	C2 => N000255, 
	C1 => N000256, 
	C0 => N000257, 
	CIN => C9, 
	COUT0 => C10, 
	COUT => C11
);
U13 : XNOR4	PORT MAP(
	I3 => B15, 
	I2 => A15, 
	I1 => ADD, 
	I0 => C14, 
	O => N00121
);
U46 : CY4	PORT MAP(
	A0 => A8, 
	B0 => B8, 
	A1 => A9, 
	B1 => B9, 
	ADD => ADD, 
	C7 => N000220, 
	C6 => N000221, 
	C5 => N000222, 
	C4 => N000223, 
	C3 => N000224, 
	C2 => N000225, 
	C1 => N000226, 
	C0 => N000227, 
	CIN => C7, 
	COUT0 => C8, 
	COUT => C9
);
U14 : XNOR4	PORT MAP(
	I3 => A14, 
	I2 => B14, 
	I1 => ADD, 
	I0 => C13, 
	O => N00153
);
U47 : CY4	PORT MAP(
	A0 => A6, 
	B0 => B6, 
	A1 => A7, 
	B1 => B7, 
	ADD => ADD, 
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U15 : XNOR4	PORT MAP(
	I3 => A13, 
	I2 => B13, 
	I1 => ADD, 
	I0 => C12, 
	O => N00164
);
U48 : CY4	PORT MAP(
	A0 => A4, 
	B0 => B4, 
	A1 => A5, 
	B1 => B5, 
	ADD => ADD, 
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U16 : XNOR4	PORT MAP(
	I3 => A11, 
	I2 => B11, 
	I1 => ADD, 
	I0 => C10, 
	O => N00214
);
U49 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => A3, 
	B1 => B3, 
	ADD => ADD, 
	C7 => N000120, 
	C6 => N000121, 
	C5 => N000122, 
	C4 => N000123, 
	C3 => N000124, 
	C2 => N000125, 
	C1 => N000126, 
	C0 => N000127, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U17 : CY4_13	PORT MAP(
	C7 => N000180, 
	C6 => N000181, 
	C5 => N000182, 
	C4 => N000183, 
	C3 => N000184, 
	C2 => N000185, 
	C1 => N000186, 
	C0 => N000187
);
U18 : CY4_42	PORT MAP(
	C7 => N000190, 
	C6 => N000191, 
	C5 => N000192, 
	C4 => N000193, 
	C3 => N000194, 
	C2 => N000195, 
	C1 => N000196, 
	C0 => N000197
);
U19 : XNOR4	PORT MAP(
	I3 => A10, 
	I2 => B10, 
	I1 => ADD, 
	I0 => C9, 
	O => N00252
);
U1 : XNOR4	PORT MAP(
	I3 => A7, 
	I2 => B7, 
	I1 => ADD, 
	I0 => C6, 
	O => N00102
);
U2 : XNOR4	PORT MAP(
	I3 => A6, 
	I2 => B6, 
	I1 => ADD, 
	I0 => C5, 
	O => N00111
);
U50 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => ADD, 
	C7 => N000240, 
	C6 => N000241, 
	C5 => N000242, 
	C4 => N000243, 
	C3 => N000244, 
	C2 => N000245, 
	C1 => N000246, 
	C0 => N000247, 
	CIN => C_IN, 
	COUT0 => C0, 
	COUT => C1
);
U3 : XNOR4	PORT MAP(
	I3 => A5, 
	I2 => B5, 
	I1 => ADD, 
	I0 => C4, 
	O => N00132
);
U51 : CY4	PORT MAP(
	A0 => CI, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000110, 
	C6 => N000111, 
	C5 => N000112, 
	C4 => N000113, 
	C3 => N000114, 
	C2 => N000115, 
	C1 => N000116, 
	C0 => N000117, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U4 : XNOR4	PORT MAP(
	I3 => A3, 
	I2 => B3, 
	I1 => ADD, 
	I0 => C2, 
	O => N00176
);
U52 : CY4_12	PORT MAP(
	C7 => N000445, 
	C6 => N000446, 
	C5 => N000447, 
	C4 => N000448, 
	C3 => N000449, 
	C2 => N0004410, 
	C1 => N0004411, 
	C0 => N0004412
);
U20 : XNOR4	PORT MAP(
	I3 => A9, 
	I2 => B9, 
	I1 => ADD, 
	I0 => C8, 
	O => N00267
);
U5 : CY4_13	PORT MAP(
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067
);
U53 : XOR2	PORT MAP(
	I1 => N00079, 
	I0 => C15_M, 
	O => N00073
);
U21 : CY4_13	PORT MAP(
	C7 => N000220, 
	C6 => N000221, 
	C5 => N000222, 
	C4 => N000223, 
	C3 => N000224, 
	C2 => N000225, 
	C1 => N000226, 
	C0 => N000227
);
U6 : CY4_13	PORT MAP(
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077
);
U54 : OR3	PORT MAP(
	I2 => OOR1, 
	I1 => OOR2, 
	I0 => OOR3, 
	O => N00079
);
U22 : XNOR4	PORT MAP(
	I3 => A12, 
	I2 => B12, 
	I1 => ADD, 
	I0 => C11, 
	O => N00202
);
U7 : XNOR4	PORT MAP(
	I3 => A2, 
	I2 => B2, 
	I1 => ADD, 
	I0 => C1, 
	O => N00198
);
U55 : OR3	PORT MAP(
	I2 => COR1, 
	I1 => COR2, 
	I0 => COR3, 
	O => N00071
);
U23 : CY4_13	PORT MAP(
	C7 => N000240, 
	C6 => N000241, 
	C5 => N000242, 
	C4 => N000243, 
	C3 => N000244, 
	C2 => N000245, 
	C1 => N000246, 
	C0 => N000247
);
U8 : XNOR4	PORT MAP(
	I3 => A1, 
	I2 => B1, 
	I1 => ADD, 
	I0 => C0, 
	O => N00226
);
U56 : AND2	PORT MAP(
	I0 => A15, 
	I1 => B15_M1, 
	O => OOR1
);
U24 : CY4_13	PORT MAP(
	C7 => N000250, 
	C6 => N000251, 
	C5 => N000252, 
	C4 => N000253, 
	C3 => N000254, 
	C2 => N000255, 
	C1 => N000256, 
	C0 => N000257
);
U9 : XNOR4	PORT MAP(
	I3 => A0, 
	I2 => B0, 
	I1 => ADD, 
	I0 => C_IN, 
	O => N00248
);
U57 : AND2	PORT MAP(
	I0 => C15_M, 
	I1 => B15_M1, 
	O => OOR2
);
U25 : XNOR4	PORT MAP(
	I3 => A8, 
	I2 => B8, 
	I1 => ADD, 
	I0 => C7, 
	O => N00292
);
U58 : AND2	PORT MAP(
	I0 => A15, 
	I1 => C15_M, 
	O => OOR3
);
U26 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B15, 
	I2 => A15, 
	O => N00121, 
	I1 => C14
);
U59 : AND2	PORT MAP(
	I0 => A15, 
	I1 => B15_M2, 
	O => COR1
);
U27 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B14, 
	I2 => A14, 
	O => N00153, 
	I1 => C13
);
U28 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B13, 
	I2 => A13, 
	O => N00164, 
	I1 => C12
);
U29 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B12, 
	I2 => A12, 
	O => N00202, 
	I1 => C11
);
U60 : AND2	PORT MAP(
	I0 => C15_M, 
	I1 => B15_M2, 
	O => COR2
);
U61 : AND2	PORT MAP(
	I0 => C15_M, 
	I1 => A15, 
	O => COR3
);
U62 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B15, 
	I2 => A15, 
	O => N00073, 
	I1 => C15_M
);
U30 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B11, 
	I2 => A11, 
	O => N00214, 
	I1 => C10
);
U63 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B15, 
	I2 => A15, 
	O => N00071, 
	I1 => C15_M
);
U31 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B10, 
	I2 => A10, 
	O => N00252, 
	I1 => C9
);
U64 : XNOR2	PORT MAP(
	I1 => B15, 
	I0 => ADD, 
	O => B15_M1
);
U32 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B9, 
	I2 => A9, 
	O => N00267, 
	I1 => C8
);
U65 : XNOR2	PORT MAP(
	I1 => B15, 
	I0 => ADD, 
	O => B15_M2
);
U33 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B8, 
	I2 => A8, 
	O => N00292, 
	I1 => C7
);
U34 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B7, 
	I2 => A7, 
	O => N00102, 
	I1 => C6
);
U35 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B6, 
	I2 => A6, 
	O => N00111, 
	I1 => C5
);
U36 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B5, 
	I2 => A5, 
	O => N00132, 
	I1 => C4
);
U37 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B4, 
	I2 => A4, 
	O => N00145, 
	I1 => C3
);
U38 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B3, 
	I2 => A3, 
	O => N00176, 
	I1 => C2
);
U39 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B2, 
	I2 => A2, 
	O => N00198, 
	I1 => C1
);
U40 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B1, 
	I2 => A1, 
	O => N00226, 
	I1 => C0
);
U41 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B0, 
	I2 => A0, 
	O => N00248, 
	I1 => C_IN
);
U42 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000190, 
	C6 => N000191, 
	C5 => N000192, 
	C4 => N000193, 
	C3 => N000194, 
	C2 => N000195, 
	C1 => N000196, 
	C0 => N000197, 
	CIN => C15, 
	COUT0 => C15_M, 
	COUT => OPEN
);
U10 : CY4_39	PORT MAP(
	C7 => N000110, 
	C6 => N000111, 
	C5 => N000112, 
	C4 => N000113, 
	C3 => N000114, 
	C2 => N000115, 
	C1 => N000116, 
	C0 => N000117
);
U43 : CY4	PORT MAP(
	A0 => A14, 
	B0 => B14, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => ADD, 
	C7 => N000445, 
	C6 => N000446, 
	C5 => N000447, 
	C4 => N000448, 
	C3 => N000449, 
	C2 => N0004410, 
	C1 => N0004411, 
	C0 => N0004412, 
	CIN => C13, 
	COUT0 => C14, 
	COUT => C15
);
U11 : CY4_13	PORT MAP(
	C7 => N000120, 
	C6 => N000121, 
	C5 => N000122, 
	C4 => N000123, 
	C3 => N000124, 
	C2 => N000125, 
	C1 => N000126, 
	C0 => N000127
);
U44 : CY4	PORT MAP(
	A0 => A12, 
	B0 => B12, 
	A1 => A13, 
	B1 => B13, 
	ADD => ADD, 
	C7 => N000180, 
	C6 => N000181, 
	C5 => N000182, 
	C4 => N000183, 
	C3 => N000184, 
	C2 => N000185, 
	C1 => N000186, 
	C0 => N000187, 
	CIN => C11, 
	COUT0 => C12, 
	COUT => C13
);
U12 : XNOR4	PORT MAP(
	I3 => A4, 
	I2 => B4, 
	I1 => ADD, 
	I0 => C3, 
	O => N00145
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
SIGNAL N00038 : std_logic;
SIGNAL N00052 : std_logic;
SIGNAL N00062 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00032 : std_logic;

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
SIGNAL T7 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T3 : std_logic;

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
SIGNAL MDR3 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL MDL0 : std_logic;

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

ENTITY RAM16X4S IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	WE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	WCLK : IN std_logic
); END RAM16X4S;



ARCHITECTURE STRUCTURE OF RAM16X4S IS

-- COMPONENTS

COMPONENT RAM16X1S
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic;
	WCLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O0, 
	WCLK => WCLK
);
U2 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O1, 
	WCLK => WCLK
);
U3 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O2, 
	WCLK => WCLK
);
U4 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O3, 
	WCLK => WCLK
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
SIGNAL N00059 : std_logic;
SIGNAL N00089 : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL N00048 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00021 : std_logic;

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
SIGNAL AB1 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB0 : std_logic;
SIGNAL AB14 : std_logic;
SIGNAL AB8 : std_logic;
SIGNAL ABCF : std_logic;
SIGNAL AB03 : std_logic;
SIGNAL AB47 : std_logic;
SIGNAL AB8B : std_logic;
SIGNAL AB6 : std_logic;
SIGNAL AB5 : std_logic;
SIGNAL AB11 : std_logic;
SIGNAL AB15 : std_logic;
SIGNAL AB9 : std_logic;
SIGNAL AB10 : std_logic;
SIGNAL AB13 : std_logic;
SIGNAL AB7 : std_logic;
SIGNAL AB4 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB12 : std_logic;

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
SIGNAL AB1 : std_logic;
SIGNAL AB2 : std_logic;
SIGNAL AB3 : std_logic;
SIGNAL AB0 : std_logic;

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
	O : OUT   std_logic
); END DECODE16;



ARCHITECTURE STRUCTURE OF DECODE16 IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : WAND1	PORT MAP(
	I => A12, 
	O => O
);
U14 : WAND1	PORT MAP(
	I => A13, 
	O => O
);
U15 : WAND1	PORT MAP(
	I => A14, 
	O => O
);
U16 : WAND1	PORT MAP(
	I => A15, 
	O => O
);
U1 : WAND1	PORT MAP(
	I => A0, 
	O => O
);
U2 : WAND1	PORT MAP(
	I => A1, 
	O => O
);
U3 : WAND1	PORT MAP(
	I => A2, 
	O => O
);
U4 : WAND1	PORT MAP(
	I => A3, 
	O => O
);
U5 : WAND1	PORT MAP(
	I => A4, 
	O => O
);
U6 : WAND1	PORT MAP(
	I => A5, 
	O => O
);
U7 : WAND1	PORT MAP(
	I => A6, 
	O => O
);
U8 : WAND1	PORT MAP(
	I => A7, 
	O => O
);
U9 : WAND1	PORT MAP(
	I => A8, 
	O => O
);
U10 : WAND1	PORT MAP(
	I => A9, 
	O => O
);
U11 : WAND1	PORT MAP(
	I => A10, 
	O => O
);
U12 : WAND1	PORT MAP(
	I => A11, 
	O => O
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
U1 : NOR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U2 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U3 : OR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT OFDX
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00002 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00002
);
U2 : OFDX	PORT MAP(
	D => D, 
	CE => N00002, 
	C => C, 
	Q => Q
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
SIGNAL M67 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL O : std_logic;
SIGNAL E : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M45 : std_logic;

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
SIGNAL LB : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL RB : std_logic;

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

COMPONENT ILD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U3 : ILD	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2
);
U11 : ILD	PORT MAP(
	D => D10, 
	G => G, 
	Q => Q10
);
U4 : ILD	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3
);
U12 : ILD	PORT MAP(
	D => D11, 
	G => G, 
	Q => Q11
);
U5 : ILD	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4
);
U13 : ILD	PORT MAP(
	D => D12, 
	G => G, 
	Q => Q12
);
U6 : ILD	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5
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
U7 : ILD	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6
);
U16 : ILD	PORT MAP(
	D => D15, 
	G => G, 
	Q => Q15
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
U10 : ILD	PORT MAP(
	D => D9, 
	G => G, 
	Q => Q9
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

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT ILDX_1
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00003 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : VCC	PORT MAP(
	P => N00003
);
U2 : ILDX_1	PORT MAP(
	D => D, 
	G => G, 
	Q => Q, 
	GE => N00003
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
SIGNAL I13 : std_logic;
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U2 : OR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
U3 : OR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM16X2 IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	D1 : IN std_logic;
	D0 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic
); END RAM16X2;



ARCHITECTURE STRUCTURE OF RAM16X2 IS

-- COMPONENTS

COMPONENT RAM16X1
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O0
);
U2 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O1
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM32X8 IS 
GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END RAM32X8;



ARCHITECTURE STRUCTURE OF RAM32X8 IS

-- COMPONENTS

COMPONENT RAM32X1
	GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00077 : std_logic;
SIGNAL N00078 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D4, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O4
);
U2 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D5, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O5
);
U3 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D6, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O6
);
U4 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D7, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O7
);
U5 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O3
);
U6 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O2
);
U7 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O1
);
U8 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O0
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

COMPONENT FDPE
	PORT (
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
U1 : INV	PORT MAP(
	O => CB, 
	I => C
);
U2 : FDPE	PORT MAP(
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

COMPONENT FDP	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00014 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U1 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => N00010
);
U2 : OR3	PORT MAP(
	I2 => N00010, 
	I1 => N00014, 
	I0 => N00016, 
	O => N00015
);
U3 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => N00014
);
U4 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => N00016
);
U5 : FDP	PORT MAP(
	D => N00015, 
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

COMPONENT FDPE
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00014 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00007 : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00007;
U1 : AND3B2	PORT MAP(
	I0 => J, 
	I1 => K, 
	I2 => N00007, 
	O => N00010
);
U2 : OR3	PORT MAP(
	I2 => N00010, 
	I1 => N00014, 
	I0 => N00016, 
	O => N00015
);
U3 : AND3B1	PORT MAP(
	I0 => N00007, 
	I1 => K, 
	I2 => J, 
	O => N00014
);
U4 : AND2B1	PORT MAP(
	I0 => K, 
	I1 => J, 
	O => N00016
);
U5 : FDPE	PORT MAP(
	D => N00015, 
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
SIGNAL IO21 : std_logic;
SIGNAL IO22 : std_logic;
SIGNAL IO23 : std_logic;
SIGNAL IO24 : std_logic;
SIGNAL IO25 : std_logic;
SIGNAL IO16 : std_logic;
SIGNAL IO17 : std_logic;
SIGNAL IO18 : std_logic;
SIGNAL IO19 : std_logic;
SIGNAL IO20 : std_logic;

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
SIGNAL N00045 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL T11 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00183 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00156 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00123 : std_logic;

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
SIGNAL N00007 : std_logic;
SIGNAL N00008 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00018 : std_logic;

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
SIGNAL A03A : std_logic;
SIGNAL A03B : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL N00026 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL AX2 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL OX3 : std_logic;
SIGNAL AX1 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D2 : std_logic;

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
SIGNAL N00011 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00035 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00034 : std_logic;

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

COMPONENT FDPE
	PORT (
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
U1 : VCC	PORT MAP(
	P => N00008
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
);
U3 : FDPE	PORT MAP(
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

ENTITY OFDEX_1 IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
); END OFDEX_1;



ARCHITECTURE STRUCTURE OF OFDEX_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTX
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB : std_logic;
SIGNAL T : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => T, 
	I => E
);
U2 : INV	PORT MAP(
	O => CB, 
	I => C
);
U3 : OFDTX	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O, 
	CE => CE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDEX16 IS PORT (
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
	O15 : OUT   std_logic;
	CE : IN std_logic
); END OFDEX16;



ARCHITECTURE STRUCTURE OF OFDEX16 IS

-- COMPONENTS

COMPONENT OFDEX
	PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00096 : std_logic;
SIGNAL N00093 : std_logic;

-- GATE INSTANCES

BEGIN
U13 : OFDEX	PORT MAP(
	E => E, 
	D => D12, 
	C => C, 
	O => O12, 
	CE => CE
);
U14 : OFDEX	PORT MAP(
	E => E, 
	D => D13, 
	C => C, 
	O => O13, 
	CE => CE
);
U15 : OFDEX	PORT MAP(
	E => E, 
	D => D14, 
	C => C, 
	O => O14, 
	CE => CE
);
U16 : OFDEX	PORT MAP(
	E => E, 
	D => D15, 
	C => C, 
	O => O15, 
	CE => CE
);
U1 : OFDEX	PORT MAP(
	E => E, 
	D => D0, 
	C => C, 
	O => O0, 
	CE => CE
);
U2 : OFDEX	PORT MAP(
	E => E, 
	D => D1, 
	C => C, 
	O => O1, 
	CE => CE
);
U3 : OFDEX	PORT MAP(
	E => E, 
	D => D2, 
	C => C, 
	O => O2, 
	CE => CE
);
U4 : OFDEX	PORT MAP(
	E => E, 
	D => D3, 
	C => C, 
	O => O3, 
	CE => CE
);
U5 : OFDEX	PORT MAP(
	E => E, 
	D => D4, 
	C => C, 
	O => O4, 
	CE => CE
);
U6 : OFDEX	PORT MAP(
	E => E, 
	D => D5, 
	C => C, 
	O => O5, 
	CE => CE
);
U7 : OFDEX	PORT MAP(
	E => E, 
	D => D6, 
	C => C, 
	O => O6, 
	CE => CE
);
U8 : OFDEX	PORT MAP(
	E => E, 
	D => D7, 
	C => C, 
	O => O7, 
	CE => CE
);
U9 : OFDEX	PORT MAP(
	E => E, 
	D => D8, 
	C => C, 
	O => O8, 
	CE => CE
);
U10 : OFDEX	PORT MAP(
	E => E, 
	D => D9, 
	C => C, 
	O => O9, 
	CE => CE
);
U11 : OFDEX	PORT MAP(
	E => E, 
	D => D10, 
	C => C, 
	O => O10, 
	CE => CE
);
U12 : OFDEX	PORT MAP(
	E => E, 
	D => D11, 
	C => C, 
	O => O11, 
	CE => CE
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
SIGNAL N00022 : std_logic;
SIGNAL N00009 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00017 : std_logic;

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

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT CY4_18
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT CY4_19
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CO : std_logic;
SIGNAL N00108 : std_logic;
SIGNAL R_TQ9 : std_logic;
SIGNAL R_TQ15 : std_logic;
SIGNAL R_TQ4 : std_logic;
SIGNAL R_TQ10 : std_logic;
SIGNAL R_TQ6 : std_logic;
SIGNAL R_TQ12 : std_logic;
SIGNAL R_TQ11 : std_logic;
SIGNAL R_TQ2 : std_logic;
SIGNAL R_TQ8 : std_logic;
SIGNAL R_TQ0 : std_logic;
SIGNAL R_TQ7 : std_logic;
SIGNAL R_TQ5 : std_logic;
SIGNAL R_TQ14 : std_logic;
SIGNAL R_TQ1 : std_logic;
SIGNAL R_TQ3 : std_logic;
SIGNAL CE_M14 : std_logic;
SIGNAL CE_M15 : std_logic;
SIGNAL CE_M9 : std_logic;
SIGNAL CE_M3 : std_logic;
SIGNAL CE_M4 : std_logic;
SIGNAL CE_M5 : std_logic;
SIGNAL CE_M7 : std_logic;
SIGNAL CE_M2 : std_logic;
SIGNAL CE_M8 : std_logic;
SIGNAL CE_M10 : std_logic;
SIGNAL CE_M13 : std_logic;
SIGNAL CE_M1 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00135 : std_logic;
SIGNAL R_TQ13 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00282 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL CE_M11 : std_logic;
SIGNAL CE_M12 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL CE_M6 : std_logic;
SIGNAL CE_M0 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL N00362 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00181 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL N00203 : std_logic;
SIGNAL N00348 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL N00335 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL N00190 : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL N00123 : std_logic;
SIGNAL N00256 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL N00272 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00331 : std_logic;
SIGNAL N00252 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL N000236 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000240 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000267 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000242 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL N000231 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000243 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000252 : std_logic;
SIGNAL N000247 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N000263 : std_logic;
SIGNAL N000254 : std_logic;
SIGNAL N000256 : std_logic;
SIGNAL N000232 : std_logic;
SIGNAL N000251 : std_logic;
SIGNAL N000260 : std_logic;
SIGNAL N000244 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000253 : std_logic;
SIGNAL N000235 : std_logic;
SIGNAL N000257 : std_logic;
SIGNAL N000233 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000264 : std_logic;
SIGNAL N000250 : std_logic;
SIGNAL N000255 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000237 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000718 : std_logic;
SIGNAL N0007111 : std_logic;
SIGNAL N000262 : std_logic;
SIGNAL N000246 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000241 : std_logic;
SIGNAL N000245 : std_logic;
SIGNAL N000261 : std_logic;
SIGNAL N000266 : std_logic;
SIGNAL N000230 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000234 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000265 : std_logic;
SIGNAL N000217 : std_logic;
SIGNAL N000213 : std_logic;
SIGNAL N000212 : std_logic;
SIGNAL N000211 : std_logic;
SIGNAL N000215 : std_logic;
SIGNAL N000216 : std_logic;
SIGNAL N000210 : std_logic;
SIGNAL N000214 : std_logic;
SIGNAL N000716 : std_logic;
SIGNAL N000717 : std_logic;
SIGNAL N000715 : std_logic;
SIGNAL N0007110 : std_logic;
SIGNAL N0007112 : std_logic;
SIGNAL N000719 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00119;
TC<=N00108;
Q0<=N00348;
Q1<=N00331;
Q2<=N00272;
Q3<=N00252;
Q4<=N00190;
Q5<=N00170;
Q6<=N00123;
Q7<=N00113;
Q8<=N00362;
Q9<=N00335;
Q10<=N00282;
Q11<=N00256;
Q12<=N00203;
Q13<=N00181;
Q14<=N00136;
U77 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00123, 
	O => R_TQ6, 
	I1 => C5
);
U45 : GND	PORT MAP(
	G => N00143
);
U78 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00113, 
	O => R_TQ7, 
	I1 => C6
);
U46 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00119, 
	O => R_TQ15, 
	I1 => C14
);
U14 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M5, 
	O => R_TQ5
);
U79 : XOR2	PORT MAP(
	I1 => N00113, 
	I0 => C6, 
	O => TQ7
);
U47 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00136, 
	O => R_TQ14, 
	I1 => C13
);
U15 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M4, 
	O => R_TQ4
);
U48 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00181, 
	O => R_TQ13, 
	I1 => C12
);
U16 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M3, 
	O => R_TQ3
);
U49 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00203, 
	O => R_TQ12, 
	I1 => C11
);
U17 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M2, 
	O => R_TQ2
);
U18 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M1, 
	O => R_TQ1
);
U19 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M0, 
	O => R_TQ0
);
U80 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00123, 
	O => TQ6
);
U1 : CY4_18	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U81 : XOR2	PORT MAP(
	I1 => N00170, 
	I0 => C4, 
	O => TQ5
);
U2 : CY4_18	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U82 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00190, 
	O => TQ4
);
U50 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00256, 
	O => R_TQ11, 
	I1 => C10
);
U3 : CY4_18	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U83 : XOR2	PORT MAP(
	I1 => N00252, 
	I0 => C2, 
	O => TQ3
);
U51 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00282, 
	O => R_TQ10, 
	I1 => C9
);
U84 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00272, 
	O => TQ2
);
U52 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00335, 
	O => R_TQ9, 
	I1 => C8
);
U20 : CY4_42	PORT MAP(
	C7 => N000210, 
	C6 => N000211, 
	C5 => N000212, 
	C4 => N000213, 
	C3 => N000214, 
	C2 => N000215, 
	C1 => N000216, 
	C0 => N000217
);
U85 : XOR2	PORT MAP(
	I1 => N00331, 
	I0 => C0, 
	O => TQ1
);
U53 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00362, 
	O => R_TQ8, 
	I1 => C7
);
U21 : AND2	PORT MAP(
	I0 => R_TQ15, 
	I1 => CO, 
	O => N00108
);
U6 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M7, 
	O => R_TQ7
);
U86 : XOR2	PORT MAP(
	I1 => N00362, 
	I0 => C7, 
	O => TQ8
);
U54 : FDCE	PORT MAP(
	D => R_TQ8, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00362
);
U22 : CY4_18	PORT MAP(
	C7 => N000230, 
	C6 => N000231, 
	C5 => N000232, 
	C4 => N000233, 
	C3 => N000234, 
	C2 => N000235, 
	C1 => N000236, 
	C0 => N000237
);
U7 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M6, 
	O => R_TQ6
);
U87 : XOR2	PORT MAP(
	I1 => N00335, 
	I0 => C8, 
	O => TQ9
);
U55 : FDCE	PORT MAP(
	D => R_TQ9, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00335
);
U23 : CY4_18	PORT MAP(
	C7 => N000240, 
	C6 => N000241, 
	C5 => N000242, 
	C4 => N000243, 
	C3 => N000244, 
	C2 => N000245, 
	C1 => N000246, 
	C0 => N000247
);
U88 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => N00282, 
	O => TQ10
);
U56 : FDCE	PORT MAP(
	D => R_TQ10, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00282
);
U24 : CY4_18	PORT MAP(
	C7 => N000250, 
	C6 => N000251, 
	C5 => N000252, 
	C4 => N000253, 
	C3 => N000254, 
	C2 => N000255, 
	C1 => N000256, 
	C0 => N000257
);
U89 : XOR2	PORT MAP(
	I1 => N00256, 
	I0 => C10, 
	O => TQ11
);
U57 : FDCE	PORT MAP(
	D => R_TQ11, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00256
);
U25 : CY4_18	PORT MAP(
	C7 => N000260, 
	C6 => N000261, 
	C5 => N000262, 
	C4 => N000263, 
	C3 => N000264, 
	C2 => N000265, 
	C1 => N000266, 
	C0 => N000267
);
U58 : FDCE	PORT MAP(
	D => R_TQ12, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00203
);
U59 : FDCE	PORT MAP(
	D => R_TQ13, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00181
);
U28 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M15, 
	O => R_TQ15
);
U29 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M14, 
	O => R_TQ14
);
U100 : FDCE	PORT MAP(
	D => R_TQ1, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00331
);
U101 : FDCE	PORT MAP(
	D => R_TQ0, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00348
);
U102 : AND2	PORT MAP(
	I0 => N00108, 
	I1 => CE, 
	O => CEO
);
U103 : CY4_19	PORT MAP(
	C7 => N000715, 
	C6 => N000716, 
	C5 => N000717, 
	C4 => N000718, 
	C3 => N000719, 
	C2 => N0007110, 
	C1 => N0007111, 
	C0 => N0007112
);
U104 : INV	PORT MAP(
	O => TQ0, 
	I => N00348
);
U90 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => N00203, 
	O => TQ12
);
U91 : XOR2	PORT MAP(
	I1 => N00181, 
	I0 => C12, 
	O => TQ13
);
U92 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => N00136, 
	O => TQ14
);
U60 : FDCE	PORT MAP(
	D => R_TQ14, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00136
);
U93 : XOR2	PORT MAP(
	I1 => N00119, 
	I0 => C14, 
	O => TQ15
);
U61 : FDCE	PORT MAP(
	D => R_TQ15, 
	CE => N00138, 
	C => C, 
	CLR => N00143, 
	Q => N00119
);
U94 : FDCE	PORT MAP(
	D => R_TQ7, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00113
);
U62 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000210, 
	C6 => N000211, 
	C5 => N000212, 
	C4 => N000213, 
	C3 => N000214, 
	C2 => N000215, 
	C1 => N000216, 
	C0 => N000217, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U95 : FDCE	PORT MAP(
	D => R_TQ6, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00123
);
U63 : CY4	PORT MAP(
	A0 => N00136, 
	B0 => orcad_unused, 
	A1 => N00119, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000240, 
	C6 => N000241, 
	C5 => N000242, 
	C4 => N000243, 
	C3 => N000244, 
	C2 => N000245, 
	C1 => N000246, 
	C0 => N000247, 
	CIN => C13, 
	COUT0 => C14, 
	COUT => CO
);
U96 : FDCE	PORT MAP(
	D => R_TQ5, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00170
);
U64 : CY4	PORT MAP(
	A0 => N00203, 
	B0 => orcad_unused, 
	A1 => N00181, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000260, 
	C6 => N000261, 
	C5 => N000262, 
	C4 => N000263, 
	C3 => N000264, 
	C2 => N000265, 
	C1 => N000266, 
	C0 => N000267, 
	CIN => C11, 
	COUT0 => C12, 
	COUT => C13
);
U97 : FDCE	PORT MAP(
	D => R_TQ4, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00190
);
U65 : CY4	PORT MAP(
	A0 => N00282, 
	B0 => orcad_unused, 
	A1 => N00256, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000250, 
	C6 => N000251, 
	C5 => N000252, 
	C4 => N000253, 
	C3 => N000254, 
	C2 => N000255, 
	C1 => N000256, 
	C0 => N000257, 
	CIN => C9, 
	COUT0 => C10, 
	COUT => C11
);
U98 : FDCE	PORT MAP(
	D => R_TQ3, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00252
);
U66 : CY4	PORT MAP(
	A0 => N00362, 
	B0 => orcad_unused, 
	A1 => N00335, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000230, 
	C6 => N000231, 
	C5 => N000232, 
	C4 => N000233, 
	C3 => N000234, 
	C2 => N000235, 
	C1 => N000236, 
	C0 => N000237, 
	CIN => C7, 
	COUT0 => C8, 
	COUT => C9
);
U99 : FDCE	PORT MAP(
	D => R_TQ2, 
	CE => N00128, 
	C => C, 
	CLR => N00135, 
	Q => N00272
);
U67 : CY4	PORT MAP(
	A0 => N00123, 
	B0 => orcad_unused, 
	A1 => N00113, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U68 : CY4	PORT MAP(
	A0 => N00190, 
	B0 => orcad_unused, 
	A1 => N00170, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U36 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M13, 
	O => R_TQ13
);
U69 : CY4	PORT MAP(
	A0 => N00272, 
	B0 => orcad_unused, 
	A1 => N00252, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U37 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M12, 
	O => R_TQ12
);
U38 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M11, 
	O => R_TQ11
);
U39 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M10, 
	O => R_TQ10
);
U70 : CY4	PORT MAP(
	A0 => N00348, 
	B0 => orcad_unused, 
	A1 => N00331, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000715, 
	C6 => N000716, 
	C5 => N000717, 
	C4 => N000718, 
	C3 => N000719, 
	C2 => N0007110, 
	C1 => N0007111, 
	C0 => N0007112, 
	CIN => orcad_unused, 
	COUT0 => C0, 
	COUT => C1
);
U71 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00348, 
	O => R_TQ0, 
	I1 => orcad_unused
);
U72 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00331, 
	O => R_TQ1, 
	I1 => C0
);
U40 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M9, 
	O => R_TQ9
);
U73 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00272, 
	O => R_TQ2, 
	I1 => C1
);
U41 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M8, 
	O => R_TQ8
);
U74 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00252, 
	O => R_TQ3, 
	I1 => C2
);
U42 : VCC	PORT MAP(
	P => N00138
);
U75 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00190, 
	O => R_TQ4, 
	I1 => C3
);
U43 : GND	PORT MAP(
	G => N00135
);
U76 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00170, 
	O => R_TQ5, 
	I1 => C4
);
U44 : VCC	PORT MAP(
	P => N00128
);
U33 : M2_1	PORT MAP(
	D0 => N00282, 
	D1 => TQ10, 
	S0 => CE, 
	O => CE_M10
);
U11 : M2_1	PORT MAP(
	D0 => N00272, 
	D1 => TQ2, 
	S0 => CE, 
	O => CE_M2
);
U34 : M2_1	PORT MAP(
	D0 => N00335, 
	D1 => TQ9, 
	S0 => CE, 
	O => CE_M9
);
U4 : M2_1	PORT MAP(
	D0 => N00113, 
	D1 => TQ7, 
	S0 => CE, 
	O => CE_M7
);
U12 : M2_1	PORT MAP(
	D0 => N00331, 
	D1 => TQ1, 
	S0 => CE, 
	O => CE_M1
);
U35 : M2_1	PORT MAP(
	D0 => N00362, 
	D1 => TQ8, 
	S0 => CE, 
	O => CE_M8
);
U5 : M2_1	PORT MAP(
	D0 => N00123, 
	D1 => TQ6, 
	S0 => CE, 
	O => CE_M6
);
U13 : M2_1	PORT MAP(
	D0 => N00348, 
	D1 => TQ0, 
	S0 => CE, 
	O => CE_M0
);
U26 : M2_1	PORT MAP(
	D0 => N00119, 
	D1 => TQ15, 
	S0 => CE, 
	O => CE_M15
);
U27 : M2_1	PORT MAP(
	D0 => N00136, 
	D1 => TQ14, 
	S0 => CE, 
	O => CE_M14
);
U8 : M2_1	PORT MAP(
	D0 => N00170, 
	D1 => TQ5, 
	S0 => CE, 
	O => CE_M5
);
U9 : M2_1	PORT MAP(
	D0 => N00190, 
	D1 => TQ4, 
	S0 => CE, 
	O => CE_M4
);
U30 : M2_1	PORT MAP(
	D0 => N00181, 
	D1 => TQ13, 
	S0 => CE, 
	O => CE_M13
);
U31 : M2_1	PORT MAP(
	D0 => N00203, 
	D1 => TQ12, 
	S0 => CE, 
	O => CE_M12
);
U32 : M2_1	PORT MAP(
	D0 => N00256, 
	D1 => TQ11, 
	S0 => CE, 
	O => CE_M11
);
U10 : M2_1	PORT MAP(
	D0 => N00252, 
	D1 => TQ3, 
	S0 => CE, 
	O => CE_M3
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

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_18
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT CY4_19
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT VCC
	PORT (
	P : OUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	G : OUT std_logic
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

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CE_M0 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL R_TQ0 : std_logic;
SIGNAL R_TQ7 : std_logic;
SIGNAL R_TQ5 : std_logic;
SIGNAL R_TQ1 : std_logic;
SIGNAL R_TQ3 : std_logic;
SIGNAL R_TQ4 : std_logic;
SIGNAL R_TQ6 : std_logic;
SIGNAL R_TQ2 : std_logic;
SIGNAL CO : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00088 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL CE_M7 : std_logic;
SIGNAL CE_M1 : std_logic;
SIGNAL CE_M2 : std_logic;
SIGNAL CE_M3 : std_logic;
SIGNAL CE_M4 : std_logic;
SIGNAL CE_M6 : std_logic;
SIGNAL CE_M5 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL N00138 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00100 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL N00165 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00127 : std_logic;
SIGNAL N00179 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL N000057 : std_logic;
SIGNAL N000053 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000067 : std_logic;
SIGNAL N000063 : std_logic;
SIGNAL N000056 : std_logic;
SIGNAL N000062 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000052 : std_logic;
SIGNAL N000066 : std_logic;
SIGNAL N000051 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000061 : std_logic;
SIGNAL N000055 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000458 : std_logic;
SIGNAL N0004511 : std_logic;
SIGNAL N0004510 : std_logic;
SIGNAL N0004512 : std_logic;
SIGNAL N000455 : std_logic;
SIGNAL N000456 : std_logic;
SIGNAL N000459 : std_logic;
SIGNAL N000457 : std_logic;
SIGNAL N000065 : std_logic;
SIGNAL N000050 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000054 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000060 : std_logic;
SIGNAL N000064 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000027 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00058;
Q0<=N00179;
Q1<=N00165;
Q2<=N00138;
Q3<=N00127;
Q4<=N00100;
Q5<=N00088;
Q6<=N00071;
Q7<=N00061;
U45 : XOR2	PORT MAP(
	I1 => N00165, 
	I0 => C0, 
	O => TQ1
);
U46 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00138, 
	O => TQ2
);
U47 : XOR2	PORT MAP(
	I1 => N00127, 
	I0 => C2, 
	O => TQ3
);
U48 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00100, 
	O => TQ4
);
U16 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M5, 
	O => R_TQ5
);
U49 : XOR2	PORT MAP(
	I1 => N00088, 
	I0 => C4, 
	O => TQ5
);
U17 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M4, 
	O => R_TQ4
);
U18 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M3, 
	O => R_TQ3
);
U19 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M2, 
	O => R_TQ2
);
U1 : CY4_42	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : AND2	PORT MAP(
	I0 => N00061, 
	I1 => CO, 
	O => N00058
);
U50 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00071, 
	O => TQ6
);
U3 : CY4_18	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U51 : XOR2	PORT MAP(
	I1 => N00061, 
	I0 => C6, 
	O => TQ7
);
U4 : CY4_18	PORT MAP(
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057
);
U52 : AND2	PORT MAP(
	I0 => N00058, 
	I1 => CE, 
	O => CEO
);
U20 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M1, 
	O => R_TQ1
);
U5 : CY4_18	PORT MAP(
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067
);
U53 : INV	PORT MAP(
	O => TQ0, 
	I => N00179
);
U21 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M0, 
	O => R_TQ0
);
U54 : CY4_19	PORT MAP(
	C7 => N000455, 
	C6 => N000456, 
	C5 => N000457, 
	C4 => N000458, 
	C3 => N000459, 
	C2 => N0004510, 
	C1 => N0004511, 
	C0 => N0004512
);
U22 : VCC	PORT MAP(
	P => N00073
);
U23 : GND	PORT MAP(
	G => N00075
);
U8 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M7, 
	O => R_TQ7
);
U24 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00179, 
	O => R_TQ0, 
	I1 => orcad_unused
);
U9 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => CE_M6, 
	O => R_TQ6
);
U25 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00165, 
	O => R_TQ1, 
	I1 => C0
);
U26 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00138, 
	O => R_TQ2, 
	I1 => C1
);
U27 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00127, 
	O => R_TQ3, 
	I1 => C2
);
U28 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00088, 
	O => R_TQ5, 
	I1 => C4
);
U29 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00100, 
	O => R_TQ4, 
	I1 => C3
);
U30 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00071, 
	O => R_TQ6, 
	I1 => C5
);
U31 : FMAP	PORT MAP(
	I4 => CE, 
	I3 => R, 
	I2 => N00061, 
	O => R_TQ7, 
	I1 => C6
);
U32 : FDCE	PORT MAP(
	D => R_TQ0, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00179
);
U33 : FDCE	PORT MAP(
	D => R_TQ1, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00165
);
U34 : FDCE	PORT MAP(
	D => R_TQ2, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00138
);
U35 : FDCE	PORT MAP(
	D => R_TQ3, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00127
);
U36 : FDCE	PORT MAP(
	D => R_TQ4, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00100
);
U37 : FDCE	PORT MAP(
	D => R_TQ5, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00088
);
U38 : FDCE	PORT MAP(
	D => R_TQ6, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00071
);
U39 : FDCE	PORT MAP(
	D => R_TQ7, 
	CE => N00073, 
	C => C, 
	CLR => N00075, 
	Q => N00061
);
U40 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U41 : CY4	PORT MAP(
	A0 => N00071, 
	B0 => orcad_unused, 
	A1 => N00061, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => CO
);
U42 : CY4	PORT MAP(
	A0 => N00100, 
	B0 => orcad_unused, 
	A1 => N00088, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U43 : CY4	PORT MAP(
	A0 => N00138, 
	B0 => orcad_unused, 
	A1 => N00127, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U44 : CY4	PORT MAP(
	A0 => N00179, 
	B0 => orcad_unused, 
	A1 => N00165, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000455, 
	C6 => N000456, 
	C5 => N000457, 
	C4 => N000458, 
	C3 => N000459, 
	C2 => N0004510, 
	C1 => N0004511, 
	C0 => N0004512, 
	CIN => orcad_unused, 
	COUT0 => C0, 
	COUT => C1
);
U11 : M2_1	PORT MAP(
	D0 => N00100, 
	D1 => TQ4, 
	S0 => CE, 
	O => CE_M4
);
U12 : M2_1	PORT MAP(
	D0 => N00127, 
	D1 => TQ3, 
	S0 => CE, 
	O => CE_M3
);
U13 : M2_1	PORT MAP(
	D0 => N00138, 
	D1 => TQ2, 
	S0 => CE, 
	O => CE_M2
);
U6 : M2_1	PORT MAP(
	D0 => N00061, 
	D1 => TQ7, 
	S0 => CE, 
	O => CE_M7
);
U14 : M2_1	PORT MAP(
	D0 => N00165, 
	D1 => TQ1, 
	S0 => CE, 
	O => CE_M1
);
U15 : M2_1	PORT MAP(
	D0 => N00179, 
	D1 => TQ0, 
	S0 => CE, 
	O => CE_M0
);
U7 : M2_1	PORT MAP(
	D0 => N00071, 
	D1 => TQ6, 
	S0 => CE, 
	O => CE_M6
);
U10 : M2_1	PORT MAP(
	D0 => N00088, 
	D1 => TQ5, 
	S0 => CE, 
	O => CE_M5
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

COMPONENT AND4B2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00024 : std_logic;
SIGNAL N00054 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00033 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00054;
Q0<=N00016;
Q1<=N00024;
Q2<=N00034;
Q3<=N00028;
U5 : OR2	PORT MAP(
	I1 => N00045, 
	I0 => N00049, 
	O => N00041
);
U6 : AND2	PORT MAP(
	I0 => N00033, 
	I1 => N00034, 
	O => N00045
);
U7 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00054, 
	O => CEO
);
U8 : AND4B2	PORT MAP(
	I0 => N00024, 
	I1 => N00034, 
	I2 => N00016, 
	I3 => N00028, 
	O => N00054
);
U9 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00028, 
	O => N00049
);
U10 : AND2B1	PORT MAP(
	I0 => N00028, 
	I1 => N00016, 
	O => N00023
);
U11 : AND2	PORT MAP(
	I0 => N00016, 
	I1 => N00024, 
	O => N00033
);
U3 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => N00033, 
	CE => CE, 
	C => C, 
	Q => N00034, 
	CLR => CLR
);
U4 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => N00041, 
	CE => CE, 
	C => C, 
	Q => N00028, 
	CLR => CLR
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => CE, 
	CE => CE, 
	C => C, 
	Q => N00016, 
	CLR => CLR
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => N00023, 
	CE => CE, 
	C => C, 
	Q => N00024, 
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
SIGNAL TQ5 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL N00030 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00027 : std_logic;

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
SIGNAL I13 : std_logic;
SIGNAL I46 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : OR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
U2 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U3 : OR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
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
SIGNAL N00026 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL N00020 : std_logic;

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

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
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
SIGNAL N00073 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL R_SD4 : std_logic;
SIGNAL R_SD7 : std_logic;
SIGNAL N00078 : std_logic;
SIGNAL N00069 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00075 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00072 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL N00084 : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL N00161 : std_logic;
SIGNAL R_SD12 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL R_SD15 : std_logic;
SIGNAL R_SD10 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL R_SD5 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL R_SD1 : std_logic;
SIGNAL R_SD11 : std_logic;
SIGNAL R_SD6 : std_logic;
SIGNAL R_SD9 : std_logic;
SIGNAL R_SD8 : std_logic;
SIGNAL R_SD13 : std_logic;
SIGNAL R_SD14 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL S14 : std_logic;
SIGNAL SD7 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S13 : std_logic;
SIGNAL S15 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL S9 : std_logic;
SIGNAL SD9 : std_logic;
SIGNAL S11 : std_logic;
SIGNAL SD12 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL SD11 : std_logic;
SIGNAL S12 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S8 : std_logic;
SIGNAL S10 : std_logic;
SIGNAL SD13 : std_logic;
SIGNAL SD8 : std_logic;
SIGNAL SD5 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL SD4 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL SD15 : std_logic;
SIGNAL SD14 : std_logic;
SIGNAL SD6 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL SD10 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL R_L_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00069;
Q0<=N00084;
Q1<=N00083;
Q2<=N00082;
Q3<=N00081;
Q4<=N00080;
Q5<=N00079;
Q6<=N00078;
Q7<=N00077;
Q8<=N00076;
Q9<=N00075;
Q10<=N00074;
Q11<=N00073;
Q12<=N00072;
Q13<=N00071;
Q14<=N00070;
U45 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S7, 
	I2 => D7, 
	O => R_SD7, 
	I1 => L
);
U46 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S6, 
	I2 => D6, 
	O => R_SD6, 
	I1 => L
);
U47 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S5, 
	I2 => D5, 
	O => R_SD5, 
	I1 => L
);
U48 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S4, 
	I2 => D4, 
	O => R_SD4, 
	I1 => L
);
U49 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S3, 
	I2 => D3, 
	O => R_SD3, 
	I1 => L
);
U18 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => R_L_CE
);
U19 : GND	PORT MAP(
	G => N00161
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
U50 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S2, 
	I2 => D2, 
	O => R_SD2, 
	I1 => L
);
U3 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD2, 
	O => R_SD2
);
U51 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S1, 
	I2 => D1, 
	O => R_SD1, 
	I1 => L
);
U4 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD3, 
	O => R_SD3
);
U52 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S0, 
	I2 => D0, 
	O => R_SD0, 
	I1 => L
);
U20 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD8, 
	O => R_SD8
);
U53 : FDCE	PORT MAP(
	D => R_SD15, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00069
);
U21 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD9, 
	O => R_SD9
);
U54 : FDCE	PORT MAP(
	D => R_SD14, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00070
);
U22 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD10, 
	O => R_SD10
);
U55 : FDCE	PORT MAP(
	D => R_SD11, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00073
);
U23 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD11, 
	O => R_SD11
);
U56 : FDCE	PORT MAP(
	D => R_SD10, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00074
);
U9 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD4, 
	O => R_SD4
);
U57 : FDCE	PORT MAP(
	D => R_SD9, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00075
);
U58 : FDCE	PORT MAP(
	D => R_SD8, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00076
);
U59 : FDCE	PORT MAP(
	D => R_SD7, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00077
);
U28 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD12, 
	O => R_SD12
);
U29 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD13, 
	O => R_SD13
);
U60 : FDCE	PORT MAP(
	D => R_SD6, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00078
);
U61 : FDCE	PORT MAP(
	D => R_SD5, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00079
);
U62 : FDCE	PORT MAP(
	D => R_SD4, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00080
);
U30 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD14, 
	O => R_SD14
);
U63 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00081
);
U31 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD15, 
	O => R_SD15
);
U64 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00082
);
U65 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00083
);
U66 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00084
);
U67 : FDCE	PORT MAP(
	D => R_SD12, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00072
);
U36 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S13, 
	I2 => D13, 
	O => R_SD13, 
	I1 => L
);
U37 : FDCE	PORT MAP(
	D => R_SD13, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00161, 
	Q => N00071
);
U38 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S15, 
	I2 => D15, 
	O => R_SD15, 
	I1 => L
);
U39 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S14, 
	I2 => D14, 
	O => R_SD14, 
	I1 => L
);
U40 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S12, 
	I2 => D12, 
	O => R_SD12, 
	I1 => L
);
U41 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S11, 
	I2 => D11, 
	O => R_SD11, 
	I1 => L
);
U42 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S10, 
	I2 => D10, 
	O => R_SD10, 
	I1 => L
);
U10 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD5, 
	O => R_SD5
);
U43 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S9, 
	I2 => D9, 
	O => R_SD9, 
	I1 => L
);
U11 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD6, 
	O => R_SD6
);
U44 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S8, 
	I2 => D8, 
	O => R_SD8, 
	I1 => L
);
U12 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD7, 
	O => R_SD7
);
U33 : M2_1	PORT MAP(
	D0 => S13, 
	D1 => D13, 
	S0 => L, 
	O => SD13
);
U34 : M2_1	PORT MAP(
	D0 => S14, 
	D1 => D14, 
	S0 => L, 
	O => SD14
);
U35 : M2_1	PORT MAP(
	D0 => S15, 
	D1 => D15, 
	S0 => L, 
	O => SD15
);
U24 : M2_1	PORT MAP(
	D0 => S8, 
	D1 => D8, 
	S0 => L, 
	O => SD8
);
U5 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U13 : M2_1	PORT MAP(
	D0 => S4, 
	D1 => D4, 
	S0 => L, 
	O => SD4
);
U25 : M2_1	PORT MAP(
	D0 => S9, 
	D1 => D9, 
	S0 => L, 
	O => SD9
);
U6 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U14 : M2_1	PORT MAP(
	D0 => S5, 
	D1 => D5, 
	S0 => L, 
	O => SD5
);
U15 : M2_1	PORT MAP(
	D0 => S6, 
	D1 => D6, 
	S0 => L, 
	O => SD6
);
U26 : M2_1	PORT MAP(
	D0 => S10, 
	D1 => D10, 
	S0 => L, 
	O => SD10
);
U7 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
);
U16 : M2_1	PORT MAP(
	D0 => S7, 
	D1 => D7, 
	S0 => L, 
	O => SD7
);
U27 : M2_1	PORT MAP(
	D0 => S11, 
	D1 => D11, 
	S0 => L, 
	O => SD11
);
U8 : M2_1	PORT MAP(
	D0 => S3, 
	D1 => D3, 
	S0 => L, 
	O => SD3
);
U17 : ADSU16	PORT MAP(
	CI => CI, 
	A0 => N00084, 
	A1 => N00083, 
	A2 => N00082, 
	A3 => N00081, 
	A4 => N00080, 
	A5 => N00079, 
	A6 => N00078, 
	A7 => N00077, 
	A8 => N00076, 
	A9 => N00075, 
	A10 => N00074, 
	A11 => N00073, 
	A12 => N00072, 
	A13 => N00071, 
	A14 => N00070, 
	A15 => N00069, 
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
U32 : M2_1	PORT MAP(
	D0 => S12, 
	D1 => D12, 
	S0 => L, 
	O => SD12
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

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT CY4_39
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT XOR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_02
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_01
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL COR1 : std_logic;
SIGNAL OOR1 : std_logic;
SIGNAL OOR3 : std_logic;
SIGNAL COR3 : std_logic;
SIGNAL COR2 : std_logic;
SIGNAL N000418 : std_logic;
SIGNAL N000417 : std_logic;
SIGNAL N0004112 : std_logic;
SIGNAL N0004111 : std_logic;
SIGNAL N000416 : std_logic;
SIGNAL N000415 : std_logic;
SIGNAL N0004110 : std_logic;
SIGNAL N000419 : std_logic;
SIGNAL C15 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL N00214 : std_logic;
SIGNAL N00155 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00068 : std_logic;
SIGNAL C15_M : std_logic;
SIGNAL OOR2 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N00150 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N00086 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00191 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00176 : std_logic;
SIGNAL N00115 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL N00174 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N000224 : std_logic;
SIGNAL N000134 : std_logic;
SIGNAL N000264 : std_logic;
SIGNAL N000222 : std_logic;
SIGNAL N000105 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000267 : std_logic;
SIGNAL N000107 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000226 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL N00136 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N000225 : std_logic;
SIGNAL N000130 : std_logic;
SIGNAL N000227 : std_logic;
SIGNAL N000122 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000131 : std_logic;
SIGNAL N000121 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000263 : std_logic;
SIGNAL N000260 : std_logic;
SIGNAL N000135 : std_logic;
SIGNAL N000125 : std_logic;
SIGNAL N000101 : std_logic;
SIGNAL N000103 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N000221 : std_logic;
SIGNAL N000132 : std_logic;
SIGNAL N000123 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000261 : std_logic;
SIGNAL N000136 : std_logic;
SIGNAL N000126 : std_logic;
SIGNAL N000102 : std_logic;
SIGNAL N000127 : std_logic;
SIGNAL N000265 : std_logic;
SIGNAL N000223 : std_logic;
SIGNAL N000106 : std_logic;
SIGNAL N000104 : std_logic;
SIGNAL N000220 : std_logic;
SIGNAL N000145 : std_logic;
SIGNAL N000140 : std_logic;
SIGNAL N000144 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000120 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000133 : std_logic;
SIGNAL N000262 : std_logic;
SIGNAL N000137 : std_logic;
SIGNAL N000124 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000266 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000100 : std_logic;
SIGNAL N000255 : std_logic;
SIGNAL N000250 : std_logic;
SIGNAL N000254 : std_logic;
SIGNAL N000253 : std_logic;
SIGNAL N000252 : std_logic;
SIGNAL N000257 : std_logic;
SIGNAL N000256 : std_logic;
SIGNAL N000251 : std_logic;
SIGNAL N000143 : std_logic;
SIGNAL N000147 : std_logic;
SIGNAL N000142 : std_logic;
SIGNAL N000141 : std_logic;
SIGNAL N000146 : std_logic;

-- GATE INSTANCES

BEGIN
S13<=N00136;
S1<=N00174;
OFL<=N00068;
S14<=N00118;
S2<=N00150;
S15<=N00104;
S3<=N00134;
S4<=N00115;
S5<=N00102;
S6<=N00086;
S7<=N00074;
S8<=N00230;
S9<=N00214;
CO<=N00082;
S10<=N00196;
S11<=N00176;
S0<=N00191;
S12<=N00155;
U45 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B9, 
	I2 => A9, 
	O => N00214, 
	I1 => C8
);
U13 : CY4_39	PORT MAP(
	C7 => N000140, 
	C6 => N000141, 
	C5 => N000142, 
	C4 => N000143, 
	C3 => N000144, 
	C2 => N000145, 
	C1 => N000146, 
	C0 => N000147
);
U46 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B10, 
	I2 => A10, 
	O => N00196, 
	I1 => C9
);
U14 : XOR3	PORT MAP(
	I2 => A3, 
	I1 => B3, 
	I0 => C2, 
	O => N00134
);
U47 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B11, 
	I2 => A11, 
	O => N00176, 
	I1 => C10
);
U15 : XOR3	PORT MAP(
	I2 => A2, 
	I1 => B2, 
	I0 => C1, 
	O => N00150
);
U48 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B12, 
	I2 => A12, 
	O => N00155, 
	I1 => C11
);
U16 : XOR3	PORT MAP(
	I2 => A1, 
	I1 => B1, 
	I0 => C0, 
	O => N00174
);
U49 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B13, 
	I2 => A13, 
	O => N00136, 
	I1 => C12
);
U17 : XOR3	PORT MAP(
	I2 => A0, 
	I1 => B0, 
	I0 => C_IN, 
	O => N00191
);
U18 : XOR3	PORT MAP(
	I2 => A4, 
	I1 => B4, 
	I0 => C3, 
	O => N00115
);
U19 : XOR3	PORT MAP(
	I2 => A5, 
	I1 => B5, 
	I0 => C4, 
	O => N00102
);
U1 : CY4_02	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : CY4_02	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U50 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B14, 
	I2 => A14, 
	O => N00118, 
	I1 => C13
);
U3 : XOR3	PORT MAP(
	I2 => A13, 
	I1 => B13, 
	I0 => C12, 
	O => N00136
);
U51 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B15, 
	I2 => A15, 
	O => N00104, 
	I1 => C14
);
U4 : XOR3	PORT MAP(
	I2 => A12, 
	I1 => B12, 
	I0 => C11, 
	O => N00155
);
U52 : CY4_01	PORT MAP(
	C7 => N000415, 
	C6 => N000416, 
	C5 => N000417, 
	C4 => N000418, 
	C3 => N000419, 
	C2 => N0004110, 
	C1 => N0004111, 
	C0 => N0004112
);
U20 : XOR3	PORT MAP(
	I2 => A6, 
	I1 => B6, 
	I0 => C5, 
	O => N00086
);
U5 : XOR3	PORT MAP(
	I2 => A11, 
	I1 => B11, 
	I0 => C10, 
	O => N00176
);
U53 : XOR2	PORT MAP(
	I1 => N00077, 
	I0 => C15_M, 
	O => N00068
);
U21 : CY4_02	PORT MAP(
	C7 => N000220, 
	C6 => N000221, 
	C5 => N000222, 
	C4 => N000223, 
	C3 => N000224, 
	C2 => N000225, 
	C1 => N000226, 
	C0 => N000227
);
U6 : XOR3	PORT MAP(
	I2 => A10, 
	I1 => B10, 
	I0 => C9, 
	O => N00196
);
U54 : AND2	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	O => OOR1
);
U22 : XOR3	PORT MAP(
	I2 => A9, 
	I1 => B9, 
	I0 => C8, 
	O => N00214
);
U7 : XOR3	PORT MAP(
	I2 => A14, 
	I1 => B14, 
	I0 => C13, 
	O => N00118
);
U55 : AND2	PORT MAP(
	I0 => C15_M, 
	I1 => A15, 
	O => OOR2
);
U23 : XOR3	PORT MAP(
	I2 => A8, 
	I1 => B8, 
	I0 => C7, 
	O => N00230
);
U8 : XOR3	PORT MAP(
	I2 => B15, 
	I1 => A15, 
	I0 => C14, 
	O => N00104
);
U56 : AND2	PORT MAP(
	I0 => B15, 
	I1 => C15_M, 
	O => OOR3
);
U24 : CY4_42	PORT MAP(
	C7 => N000250, 
	C6 => N000251, 
	C5 => N000252, 
	C4 => N000253, 
	C3 => N000254, 
	C2 => N000255, 
	C1 => N000256, 
	C0 => N000257
);
U9 : CY4_02	PORT MAP(
	C7 => N000100, 
	C6 => N000101, 
	C5 => N000102, 
	C4 => N000103, 
	C3 => N000104, 
	C2 => N000105, 
	C1 => N000106, 
	C0 => N000107
);
U57 : AND2	PORT MAP(
	I0 => A15, 
	I1 => B15, 
	O => COR1
);
U25 : CY4_02	PORT MAP(
	C7 => N000260, 
	C6 => N000261, 
	C5 => N000262, 
	C4 => N000263, 
	C3 => N000264, 
	C2 => N000265, 
	C1 => N000266, 
	C0 => N000267
);
U58 : AND2	PORT MAP(
	I0 => C15_M, 
	I1 => B15, 
	O => COR2
);
U26 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B7, 
	I2 => A7, 
	O => N00074, 
	I1 => C6
);
U59 : AND2	PORT MAP(
	I0 => A15, 
	I1 => C15_M, 
	O => COR3
);
U27 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B6, 
	I2 => A6, 
	O => N00086, 
	I1 => C5
);
U28 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B5, 
	I2 => A5, 
	O => N00102, 
	I1 => C4
);
U29 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B4, 
	I2 => A4, 
	O => N00115, 
	I1 => C3
);
U60 : OR3	PORT MAP(
	I2 => OOR1, 
	I1 => OOR2, 
	I0 => OOR3, 
	O => N00077
);
U61 : OR3	PORT MAP(
	I2 => COR1, 
	I1 => COR2, 
	I0 => COR3, 
	O => N00082
);
U62 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B15, 
	I2 => A15, 
	O => N00068, 
	I1 => C15_M
);
U30 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B3, 
	I2 => A3, 
	O => N00134, 
	I1 => C2
);
U63 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B15, 
	I2 => A15, 
	O => N00082, 
	I1 => C15_M
);
U31 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B2, 
	I2 => A2, 
	O => N00150, 
	I1 => C1
);
U32 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B1, 
	I2 => A1, 
	O => N00174, 
	I1 => C0
);
U33 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B0, 
	I2 => A0, 
	O => N00191, 
	I1 => C_IN
);
U34 : CY4	PORT MAP(
	A0 => CI, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000140, 
	C6 => N000141, 
	C5 => N000142, 
	C4 => N000143, 
	C3 => N000144, 
	C2 => N000145, 
	C1 => N000146, 
	C0 => N000147, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U35 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => orcad_unused, 
	C7 => N000120, 
	C6 => N000121, 
	C5 => N000122, 
	C4 => N000123, 
	C3 => N000124, 
	C2 => N000125, 
	C1 => N000126, 
	C0 => N000127, 
	CIN => C_IN, 
	COUT0 => C0, 
	COUT => C1
);
U36 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => A3, 
	B1 => B3, 
	ADD => orcad_unused, 
	C7 => N000130, 
	C6 => N000131, 
	C5 => N000132, 
	C4 => N000133, 
	C3 => N000134, 
	C2 => N000135, 
	C1 => N000136, 
	C0 => N000137, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U37 : CY4	PORT MAP(
	A0 => A4, 
	B0 => B4, 
	A1 => A5, 
	B1 => B5, 
	ADD => orcad_unused, 
	C7 => N000100, 
	C6 => N000101, 
	C5 => N000102, 
	C4 => N000103, 
	C3 => N000104, 
	C2 => N000105, 
	C1 => N000106, 
	C0 => N000107, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U38 : CY4	PORT MAP(
	A0 => A6, 
	B0 => B6, 
	A1 => A7, 
	B1 => B7, 
	ADD => orcad_unused, 
	C7 => N000220, 
	C6 => N000221, 
	C5 => N000222, 
	C4 => N000223, 
	C3 => N000224, 
	C2 => N000225, 
	C1 => N000226, 
	C0 => N000227, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U39 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000250, 
	C6 => N000251, 
	C5 => N000252, 
	C4 => N000253, 
	C3 => N000254, 
	C2 => N000255, 
	C1 => N000256, 
	C0 => N000257, 
	CIN => C15, 
	COUT0 => C15_M, 
	COUT => OPEN
);
U40 : CY4	PORT MAP(
	A0 => A14, 
	B0 => B14, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000415, 
	C6 => N000416, 
	C5 => N000417, 
	C4 => N000418, 
	C3 => N000419, 
	C2 => N0004110, 
	C1 => N0004111, 
	C0 => N0004112, 
	CIN => C13, 
	COUT0 => C14, 
	COUT => C15
);
U41 : CY4	PORT MAP(
	A0 => A12, 
	B0 => B12, 
	A1 => A13, 
	B1 => B13, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C11, 
	COUT0 => C12, 
	COUT => C13
);
U42 : CY4	PORT MAP(
	A0 => A10, 
	B0 => B10, 
	A1 => A11, 
	B1 => B11, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => C9, 
	COUT0 => C10, 
	COUT => C11
);
U10 : XOR3	PORT MAP(
	I2 => A7, 
	I1 => B7, 
	I0 => C6, 
	O => N00074
);
U43 : CY4	PORT MAP(
	A0 => A8, 
	B0 => B8, 
	A1 => A9, 
	B1 => B9, 
	ADD => orcad_unused, 
	C7 => N000260, 
	C6 => N000261, 
	C5 => N000262, 
	C4 => N000263, 
	C3 => N000264, 
	C2 => N000265, 
	C1 => N000266, 
	C0 => N000267, 
	CIN => C7, 
	COUT0 => C8, 
	COUT => C9
);
U11 : CY4_02	PORT MAP(
	C7 => N000120, 
	C6 => N000121, 
	C5 => N000122, 
	C4 => N000123, 
	C3 => N000124, 
	C2 => N000125, 
	C1 => N000126, 
	C0 => N000127
);
U44 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B8, 
	I2 => A8, 
	O => N00230, 
	I1 => C7
);
U12 : CY4_02	PORT MAP(
	C7 => N000130, 
	C6 => N000131, 
	C5 => N000132, 
	C4 => N000133, 
	C3 => N000134, 
	C2 => N000135, 
	C1 => N000136, 
	C0 => N000137
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
SIGNAL I58 : std_logic;
SIGNAL I14 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I14, 
	I2 => I58, 
	O => O
);
U2 : AND4	PORT MAP(
	I0 => I5, 
	I1 => I6, 
	I2 => I7, 
	I3 => I8, 
	O => I58
);
U3 : AND4	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	I3 => I4, 
	O => I14
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
SIGNAL MDL4 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00696 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDR2 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL N00083 : std_logic;

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
SIGNAL MCD : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL MAB : std_logic;
SIGNAL M8B : std_logic;
SIGNAL M8F : std_logic;
SIGNAL M07 : std_logic;
SIGNAL M89 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL MEF : std_logic;
SIGNAL MCF : std_logic;
SIGNAL N00045 : std_logic;
SIGNAL N00039 : std_logic;

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
SIGNAL LB : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL N00016 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL N00015 : std_logic;

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
SIGNAL MQC : std_logic;
SIGNAL MCI : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL MQD : std_logic;
SIGNAL MA : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL MD : std_logic;
SIGNAL MC : std_logic;
SIGNAL MAR : std_logic;
SIGNAL MDI : std_logic;
SIGNAL MBI : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL MB : std_logic;
SIGNAL MQA : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL MQB : std_logic;
SIGNAL N00036 : std_logic;

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

ENTITY RAM32X4S IS 
GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
PORT (
	WE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	WCLK : IN std_logic
); END RAM32X4S;



ARCHITECTURE STRUCTURE OF RAM32X4S IS

-- COMPONENTS

COMPONENT RAM32X1S
	GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O : OUT std_logic;
	WCLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O0, 
	WCLK => WCLK
);
U2 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O1, 
	WCLK => WCLK
);
U3 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O2, 
	WCLK => WCLK
);
U4 : RAM32X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O3, 
	WCLK => WCLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDXI_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END OFDXI_1;



ARCHITECTURE STRUCTURE OF OFDXI_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDXI
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => CB, 
	I => C
);
U2 : OFDXI	PORT MAP(
	D => D, 
	CE => CE, 
	C => CB, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDTX8 IS PORT (
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
	O7 : OUT   std_logic;
	CE : IN std_logic
); END OFDTX8;



ARCHITECTURE STRUCTURE OF OFDTX8 IS

-- COMPONENTS

COMPONENT OFDTX
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDTX	PORT MAP(
	T => T, 
	D => D7, 
	C => C, 
	O => O7, 
	CE => CE
);
U2 : OFDTX	PORT MAP(
	T => T, 
	D => D6, 
	C => C, 
	O => O6, 
	CE => CE
);
U3 : OFDTX	PORT MAP(
	T => T, 
	D => D5, 
	C => C, 
	O => O5, 
	CE => CE
);
U4 : OFDTX	PORT MAP(
	T => T, 
	D => D4, 
	C => C, 
	O => O4, 
	CE => CE
);
U5 : OFDTX	PORT MAP(
	T => T, 
	D => D3, 
	C => C, 
	O => O3, 
	CE => CE
);
U6 : OFDTX	PORT MAP(
	T => T, 
	D => D2, 
	C => C, 
	O => O2, 
	CE => CE
);
U7 : OFDTX	PORT MAP(
	T => T, 
	D => D1, 
	C => C, 
	O => O1, 
	CE => CE
);
U8 : OFDTX	PORT MAP(
	T => T, 
	D => D0, 
	C => C, 
	O => O0, 
	CE => CE
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
SIGNAL D9 : std_logic;
SIGNAL D6 : std_logic;
SIGNAL D10 : std_logic;
SIGNAL D5 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D11 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D4 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D3 : std_logic;

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
SIGNAL E : std_logic;
SIGNAL O3 : std_logic;
SIGNAL O1 : std_logic;
SIGNAL O2 : std_logic;
SIGNAL O4 : std_logic;

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
SIGNAL X7 : std_logic;
SIGNAL X4 : std_logic;
SIGNAL X3 : std_logic;
SIGNAL X0 : std_logic;
SIGNAL X1 : std_logic;
SIGNAL X2 : std_logic;
SIGNAL X6 : std_logic;
SIGNAL E0_1 : std_logic;
SIGNAL E4_5 : std_logic;
SIGNAL GB : std_logic;
SIGNAL X5 : std_logic;

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
U1 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U2 : XOR4	PORT MAP(
	I3 => I7, 
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I47
);
U3 : XOR3	PORT MAP(
	I2 => I47, 
	I1 => I13, 
	I0 => I0, 
	O => O
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

COMPONENT CY4_18
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_19
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT FMAP
	PORT (
	I4 : IN std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	O : IN std_logic;
	I1 : IN std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT M2_1	 PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	S0 : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CO : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL TQ0 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL MD4 : std_logic;
SIGNAL MD7 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD8 : std_logic;
SIGNAL MD5 : std_logic;
SIGNAL MD3 : std_logic;
SIGNAL MD11 : std_logic;
SIGNAL MD6 : std_logic;
SIGNAL MD10 : std_logic;
SIGNAL MD9 : std_logic;
SIGNAL MD15 : std_logic;
SIGNAL MD14 : std_logic;
SIGNAL MD12 : std_logic;
SIGNAL MD13 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C9 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL TQ6 : std_logic;
SIGNAL N00268 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL TQ5 : std_logic;
SIGNAL TQ1 : std_logic;
SIGNAL TQ11 : std_logic;
SIGNAL N00244 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL TQ9 : std_logic;
SIGNAL L_CE : std_logic;
SIGNAL TQ13 : std_logic;
SIGNAL TQ12 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL N00291 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL N00295 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL TQ14 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL TQ7 : std_logic;
SIGNAL C11 : std_logic;
SIGNAL TQ2 : std_logic;
SIGNAL TQ8 : std_logic;
SIGNAL N00229 : std_logic;
SIGNAL TQ10 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00215 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL TQ15 : std_logic;
SIGNAL N00221 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00308 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL N00096 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL C13 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00149 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N000156 : std_logic;
SIGNAL N000170 : std_logic;
SIGNAL N000171 : std_logic;
SIGNAL N000167 : std_logic;
SIGNAL N000155 : std_logic;
SIGNAL N000140 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000143 : std_logic;
SIGNAL N000033 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000163 : std_logic;
SIGNAL N000175 : std_logic;
SIGNAL N000144 : std_logic;
SIGNAL N000030 : std_logic;
SIGNAL TQ3 : std_logic;
SIGNAL TQ4 : std_logic;
SIGNAL N000172 : std_logic;
SIGNAL N000141 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000176 : std_logic;
SIGNAL N000145 : std_logic;
SIGNAL N000031 : std_logic;
SIGNAL N000034 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000164 : std_logic;
SIGNAL N000035 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000037 : std_logic;
SIGNAL N000151 : std_logic;
SIGNAL N000173 : std_logic;
SIGNAL N000142 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000177 : std_logic;
SIGNAL N000146 : std_logic;
SIGNAL N000032 : std_logic;
SIGNAL N000157 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000036 : std_logic;
SIGNAL N000160 : std_logic;
SIGNAL N000165 : std_logic;
SIGNAL N000152 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000385 : std_logic;
SIGNAL N000388 : std_logic;
SIGNAL N0003812 : std_logic;
SIGNAL N000387 : std_logic;
SIGNAL N000389 : std_logic;
SIGNAL N0003811 : std_logic;
SIGNAL N000150 : std_logic;
SIGNAL N000162 : std_logic;
SIGNAL N000174 : std_logic;
SIGNAL N000154 : std_logic;
SIGNAL N000147 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000153 : std_logic;
SIGNAL N000161 : std_logic;
SIGNAL N000166 : std_logic;
SIGNAL N000133 : std_logic;
SIGNAL N000137 : std_logic;
SIGNAL N000132 : std_logic;
SIGNAL N000136 : std_logic;
SIGNAL N000130 : std_logic;
SIGNAL N000135 : std_logic;
SIGNAL N000134 : std_logic;
SIGNAL N000131 : std_logic;
SIGNAL N000386 : std_logic;
SIGNAL N0003810 : std_logic;

-- GATE INSTANCES

BEGIN
Q15<=N00095;
TC<=CO;
Q0<=N00291;
Q1<=N00268;
Q2<=N00229;
Q3<=N00215;
Q4<=N00159;
Q5<=N00143;
Q6<=N00096;
Q7<=N00091;
Q8<=N00308;
Q9<=N00295;
Q10<=N00244;
Q11<=N00221;
Q12<=N00170;
Q13<=N00149;
Q14<=N00103;
U77 : XOR2	PORT MAP(
	I1 => N00221, 
	I0 => C10, 
	O => TQ11
);
U45 : FDCE	PORT MAP(
	D => MD7, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00091
);
U13 : CY4_18	PORT MAP(
	C7 => N000140, 
	C6 => N000141, 
	C5 => N000142, 
	C4 => N000143, 
	C3 => N000144, 
	C2 => N000145, 
	C1 => N000146, 
	C0 => N000147
);
U78 : XOR2	PORT MAP(
	I1 => C11, 
	I0 => N00170, 
	O => TQ12
);
U46 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000130, 
	C6 => N000131, 
	C5 => N000132, 
	C4 => N000133, 
	C3 => N000134, 
	C2 => N000135, 
	C1 => N000136, 
	C0 => N000137, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U14 : CY4_18	PORT MAP(
	C7 => N000150, 
	C6 => N000151, 
	C5 => N000152, 
	C4 => N000153, 
	C3 => N000154, 
	C2 => N000155, 
	C1 => N000156, 
	C0 => N000157
);
U79 : XOR2	PORT MAP(
	I1 => N00149, 
	I0 => C12, 
	O => TQ13
);
U47 : CY4	PORT MAP(
	A0 => N00103, 
	B0 => orcad_unused, 
	A1 => N00095, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000150, 
	C6 => N000151, 
	C5 => N000152, 
	C4 => N000153, 
	C3 => N000154, 
	C2 => N000155, 
	C1 => N000156, 
	C0 => N000157, 
	CIN => C13, 
	COUT0 => C14, 
	COUT => CO
);
U15 : CY4_18	PORT MAP(
	C7 => N000160, 
	C6 => N000161, 
	C5 => N000162, 
	C4 => N000163, 
	C3 => N000164, 
	C2 => N000165, 
	C1 => N000166, 
	C0 => N000167
);
U48 : CY4	PORT MAP(
	A0 => N00170, 
	B0 => orcad_unused, 
	A1 => N00149, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000170, 
	C6 => N000171, 
	C5 => N000172, 
	C4 => N000173, 
	C3 => N000174, 
	C2 => N000175, 
	C1 => N000176, 
	C0 => N000177, 
	CIN => C11, 
	COUT0 => C12, 
	COUT => C13
);
U16 : CY4_18	PORT MAP(
	C7 => N000170, 
	C6 => N000171, 
	C5 => N000172, 
	C4 => N000173, 
	C3 => N000174, 
	C2 => N000175, 
	C1 => N000176, 
	C0 => N000177
);
U49 : CY4	PORT MAP(
	A0 => N00244, 
	B0 => orcad_unused, 
	A1 => N00221, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000160, 
	C6 => N000161, 
	C5 => N000162, 
	C4 => N000163, 
	C3 => N000164, 
	C2 => N000165, 
	C1 => N000166, 
	C0 => N000167, 
	CIN => C9, 
	COUT0 => C10, 
	COUT => C11
);
U80 : XOR2	PORT MAP(
	I1 => C13, 
	I0 => N00103, 
	O => TQ14
);
U1 : CY4_18	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U81 : XOR2	PORT MAP(
	I1 => N00095, 
	I0 => C14, 
	O => TQ15
);
U2 : CY4_18	PORT MAP(
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037
);
U82 : AND2	PORT MAP(
	I0 => CO, 
	I1 => CE, 
	O => CEO
);
U50 : CY4	PORT MAP(
	A0 => N00308, 
	B0 => orcad_unused, 
	A1 => N00295, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000140, 
	C6 => N000141, 
	C5 => N000142, 
	C4 => N000143, 
	C3 => N000144, 
	C2 => N000145, 
	C1 => N000146, 
	C0 => N000147, 
	CIN => C7, 
	COUT0 => C8, 
	COUT => C9
);
U3 : CY4_18	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U83 : CY4_19	PORT MAP(
	C7 => N000385, 
	C6 => N000386, 
	C5 => N000387, 
	C4 => N000388, 
	C3 => N000389, 
	C2 => N0003810, 
	C1 => N0003811, 
	C0 => N0003812
);
U51 : FDCE	PORT MAP(
	D => MD9, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00295
);
U84 : INV	PORT MAP(
	O => TQ0, 
	I => N00291
);
U52 : FDCE	PORT MAP(
	D => MD10, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00244
);
U53 : FDCE	PORT MAP(
	D => MD11, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00221
);
U54 : FDCE	PORT MAP(
	D => MD12, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00170
);
U55 : FDCE	PORT MAP(
	D => MD13, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00149
);
U56 : FDCE	PORT MAP(
	D => MD14, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00103
);
U57 : FDCE	PORT MAP(
	D => MD15, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00095
);
U25 : FDCE	PORT MAP(
	D => MD8, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00308
);
U58 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00095, 
	I2 => D15, 
	O => MD15, 
	I1 => C14
);
U26 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00291, 
	I2 => D0, 
	O => MD0, 
	I1 => orcad_unused
);
U59 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00103, 
	I2 => D14, 
	O => MD14, 
	I1 => C13
);
U27 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00268, 
	I2 => D1, 
	O => MD1, 
	I1 => C0
);
U28 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00229, 
	I2 => D2, 
	O => MD2, 
	I1 => C1
);
U29 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00215, 
	I2 => D3, 
	O => MD3, 
	I1 => C2
);
U60 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00149, 
	I2 => D13, 
	O => MD13, 
	I1 => C12
);
U61 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00170, 
	I2 => D12, 
	O => MD12, 
	I1 => C11
);
U62 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00221, 
	I2 => D11, 
	O => MD11, 
	I1 => C10
);
U30 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00159, 
	I2 => D4, 
	O => MD4, 
	I1 => C3
);
U63 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00244, 
	I2 => D10, 
	O => MD10, 
	I1 => C9
);
U31 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00143, 
	I2 => D5, 
	O => MD5, 
	I1 => C4
);
U64 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00295, 
	I2 => D9, 
	O => MD9, 
	I1 => C8
);
U32 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00096, 
	I2 => D6, 
	O => MD6, 
	I1 => C5
);
U65 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00308, 
	I2 => D8, 
	O => MD8, 
	I1 => C7
);
U33 : FMAP	PORT MAP(
	I4 => L, 
	I3 => N00091, 
	I2 => D7, 
	O => MD7, 
	I1 => C6
);
U66 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => L_CE
);
U34 : CY4	PORT MAP(
	A0 => N00096, 
	B0 => orcad_unused, 
	A1 => N00091, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U67 : XOR2	PORT MAP(
	I1 => N00091, 
	I0 => C6, 
	O => TQ7
);
U35 : CY4	PORT MAP(
	A0 => N00159, 
	B0 => orcad_unused, 
	A1 => N00143, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U68 : XOR2	PORT MAP(
	I1 => C5, 
	I0 => N00096, 
	O => TQ6
);
U36 : CY4	PORT MAP(
	A0 => N00229, 
	B0 => orcad_unused, 
	A1 => N00215, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000030, 
	C6 => N000031, 
	C5 => N000032, 
	C4 => N000033, 
	C3 => N000034, 
	C2 => N000035, 
	C1 => N000036, 
	C0 => N000037, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U69 : XOR2	PORT MAP(
	I1 => N00143, 
	I0 => C4, 
	O => TQ5
);
U37 : CY4	PORT MAP(
	A0 => N00291, 
	B0 => orcad_unused, 
	A1 => N00268, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000385, 
	C6 => N000386, 
	C5 => N000387, 
	C4 => N000388, 
	C3 => N000389, 
	C2 => N0003810, 
	C1 => N0003811, 
	C0 => N0003812, 
	CIN => orcad_unused, 
	COUT0 => C0, 
	COUT => C1
);
U38 : FDCE	PORT MAP(
	D => MD0, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00291
);
U39 : FDCE	PORT MAP(
	D => MD1, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00268
);
U70 : XOR2	PORT MAP(
	I1 => C3, 
	I0 => N00159, 
	O => TQ4
);
U71 : XOR2	PORT MAP(
	I1 => N00215, 
	I0 => C2, 
	O => TQ3
);
U72 : XOR2	PORT MAP(
	I1 => C1, 
	I0 => N00229, 
	O => TQ2
);
U40 : FDCE	PORT MAP(
	D => MD2, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00229
);
U73 : XOR2	PORT MAP(
	I1 => N00268, 
	I0 => C0, 
	O => TQ1
);
U41 : FDCE	PORT MAP(
	D => MD3, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00215
);
U74 : XOR2	PORT MAP(
	I1 => N00308, 
	I0 => C7, 
	O => TQ8
);
U42 : FDCE	PORT MAP(
	D => MD4, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00159
);
U75 : XOR2	PORT MAP(
	I1 => N00295, 
	I0 => C8, 
	O => TQ9
);
U43 : FDCE	PORT MAP(
	D => MD5, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00143
);
U76 : XOR2	PORT MAP(
	I1 => C9, 
	I0 => N00244, 
	O => TQ10
);
U44 : FDCE	PORT MAP(
	D => MD6, 
	CE => L_CE, 
	C => C, 
	CLR => CLR, 
	Q => N00096
);
U12 : CY4_42	PORT MAP(
	C7 => N000130, 
	C6 => N000131, 
	C5 => N000132, 
	C4 => N000133, 
	C3 => N000134, 
	C2 => N000135, 
	C1 => N000136, 
	C0 => N000137
);
U22 : M2_1	PORT MAP(
	D0 => TQ10, 
	D1 => D10, 
	S0 => L, 
	O => MD10
);
U11 : M2_1	PORT MAP(
	D0 => TQ0, 
	D1 => D0, 
	S0 => L, 
	O => MD0
);
U23 : M2_1	PORT MAP(
	D0 => TQ9, 
	D1 => D9, 
	S0 => L, 
	O => MD9
);
U4 : M2_1	PORT MAP(
	D0 => TQ7, 
	D1 => D7, 
	S0 => L, 
	O => MD7
);
U24 : M2_1	PORT MAP(
	D0 => TQ8, 
	D1 => D8, 
	S0 => L, 
	O => MD8
);
U5 : M2_1	PORT MAP(
	D0 => TQ6, 
	D1 => D6, 
	S0 => L, 
	O => MD6
);
U6 : M2_1	PORT MAP(
	D0 => TQ5, 
	D1 => D5, 
	S0 => L, 
	O => MD5
);
U7 : M2_1	PORT MAP(
	D0 => TQ4, 
	D1 => D4, 
	S0 => L, 
	O => MD4
);
U8 : M2_1	PORT MAP(
	D0 => TQ3, 
	D1 => D3, 
	S0 => L, 
	O => MD3
);
U17 : M2_1	PORT MAP(
	D0 => TQ15, 
	D1 => D15, 
	S0 => L, 
	O => MD15
);
U9 : M2_1	PORT MAP(
	D0 => TQ2, 
	D1 => D2, 
	S0 => L, 
	O => MD2
);
U18 : M2_1	PORT MAP(
	D0 => TQ14, 
	D1 => D14, 
	S0 => L, 
	O => MD14
);
U19 : M2_1	PORT MAP(
	D0 => TQ13, 
	D1 => D13, 
	S0 => L, 
	O => MD13
);
U20 : M2_1	PORT MAP(
	D0 => TQ12, 
	D1 => D12, 
	S0 => L, 
	O => MD12
);
U21 : M2_1	PORT MAP(
	D0 => TQ11, 
	D1 => D11, 
	S0 => L, 
	O => MD11
);
U10 : M2_1	PORT MAP(
	D0 => TQ1, 
	D1 => D1, 
	S0 => L, 
	O => MD1
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

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
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

COMPONENT NOR2
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

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_07
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

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

COMPONENT CY4_38
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT HMAP
	PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	O : IN std_logic
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
SIGNAL C6 : std_logic;
SIGNAL C14 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL C2 : std_logic;
SIGNAL S8F : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL EQB : std_logic;
SIGNAL CO : std_logic;
SIGNAL S45 : std_logic;
SIGNAL SAB : std_logic;
SIGNAL SCD : std_logic;
SIGNAL S89 : std_logic;
SIGNAL S01 : std_logic;
SIGNAL S23 : std_logic;
SIGNAL SEF : std_logic;
SIGNAL S67 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C10 : std_logic;
SIGNAL C8 : std_logic;
SIGNAL C12 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL S15 : std_logic;
SIGNAL S8 : std_logic;
SIGNAL S13 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL S12 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL S9 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S10 : std_logic;
SIGNAL S14 : std_logic;
SIGNAL S11 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL N00298 : std_logic;
SIGNAL N00238 : std_logic;
SIGNAL N00228 : std_logic;
SIGNAL N00239 : std_logic;
SIGNAL N00229 : std_logic;
SIGNAL N00278 : std_logic;
SIGNAL N00244 : std_logic;
SIGNAL N00291 : std_logic;
SIGNAL N00299 : std_logic;
SIGNAL N00302 : std_logic;
SIGNAL N00279 : std_logic;
SIGNAL N00230 : std_logic;
SIGNAL N00287 : std_logic;
SIGNAL N00253 : std_logic;
SIGNAL N00292 : std_logic;
SIGNAL N00300 : std_logic;
SIGNAL N00234 : std_logic;
SIGNAL N00252 : std_logic;
SIGNAL N00242 : std_logic;
SIGNAL N00297 : std_logic;
SIGNAL N00237 : std_logic;
SIGNAL N00227 : std_logic;
SIGNAL N00262 : std_logic;
SIGNAL N00250 : std_logic;
SIGNAL N00257 : std_logic;
SIGNAL N00284 : std_logic;
SIGNAL N00268 : std_logic;
SIGNAL N00277 : std_logic;
SIGNAL N00267 : std_logic;
SIGNAL N00263 : std_logic;
SIGNAL N00243 : std_logic;
SIGNAL N00290 : std_logic;
SIGNAL N00294 : std_logic;
SIGNAL N00271 : std_logic;
SIGNAL N00270 : std_logic;
SIGNAL N00248 : std_logic;
SIGNAL N00233 : std_logic;
SIGNAL N00282 : std_logic;
SIGNAL N00272 : std_logic;
SIGNAL N00303 : std_logic;
SIGNAL N00273 : std_logic;
SIGNAL N00261 : std_logic;
SIGNAL N00241 : std_logic;
SIGNAL N00274 : std_logic;
SIGNAL N00301 : std_logic;
SIGNAL N00249 : std_logic;
SIGNAL N00283 : std_logic;
SIGNAL N00304 : std_logic;
SIGNAL N00251 : std_logic;
SIGNAL N00231 : std_logic;
SIGNAL N00280 : std_logic;
SIGNAL N00258 : std_logic;
SIGNAL N00293 : std_logic;
SIGNAL N00264 : std_logic;
SIGNAL N00254 : std_logic;
SIGNAL N00289 : std_logic;
SIGNAL N00269 : std_logic;
SIGNAL N00288 : std_logic;
SIGNAL N00247 : std_logic;
SIGNAL N00232 : std_logic;
SIGNAL N00281 : std_logic;
SIGNAL N00259 : std_logic;
SIGNAL N00260 : std_logic;
SIGNAL N00240 : std_logic;
SIGNAL N00276 : std_logic;
SIGNAL N00296 : std_logic;
SIGNAL N00266 : std_logic;
SIGNAL N00256 : std_logic;
SIGNAL N00236 : std_logic;
SIGNAL N00226 : std_logic;
SIGNAL N00286 : std_logic;
SIGNAL N00246 : std_logic;
SIGNAL N00295 : std_logic;
SIGNAL N00255 : std_logic;
SIGNAL N00265 : std_logic;
SIGNAL N00235 : std_logic;
SIGNAL N00305 : std_logic;
SIGNAL N00285 : std_logic;
SIGNAL N00245 : std_logic;
SIGNAL N00275 : std_logic;

-- GATE INSTANCES

BEGIN
LT<=N00074;
U45 : CY4	PORT MAP(
	A0 => A6, 
	B0 => B6, 
	A1 => A7, 
	B1 => B7, 
	ADD => orcad_unused, 
	C7 => N00231, 
	C6 => N00241, 
	C5 => N00251, 
	C4 => N00261, 
	C3 => N00271, 
	C2 => N00281, 
	C1 => N00291, 
	C0 => N00301, 
	CIN => C6, 
	COUT0 => OPEN, 
	COUT => C8
);
U13 : XNOR2	PORT MAP(
	I1 => A10, 
	I0 => B10, 
	O => S10
);
U46 : CY4	PORT MAP(
	A0 => A10, 
	B0 => B10, 
	A1 => A11, 
	B1 => B11, 
	ADD => orcad_unused, 
	C7 => N00229, 
	C6 => N00239, 
	C5 => N00249, 
	C4 => N00259, 
	C3 => N00269, 
	C2 => N00279, 
	C1 => N00289, 
	C0 => N00299, 
	CIN => C10, 
	COUT0 => OPEN, 
	COUT => C12
);
U14 : AND4	PORT MAP(
	I0 => S89, 
	I1 => SAB, 
	I2 => SCD, 
	I3 => SEF, 
	O => S8F
);
U47 : CY4	PORT MAP(
	A0 => A12, 
	B0 => B12, 
	A1 => A13, 
	B1 => B13, 
	ADD => orcad_unused, 
	C7 => N00228, 
	C6 => N00238, 
	C5 => N00248, 
	C4 => N00258, 
	C3 => N00268, 
	C2 => N00278, 
	C1 => N00288, 
	C0 => N00298, 
	CIN => C12, 
	COUT0 => OPEN, 
	COUT => C14
);
U15 : NOR2	PORT MAP(
	I1 => N00074, 
	I0 => EQB, 
	O => GT
);
U48 : CY4	PORT MAP(
	A0 => A14, 
	B0 => B14, 
	A1 => A15, 
	B1 => B15, 
	ADD => orcad_unused, 
	C7 => N00227, 
	C6 => N00237, 
	C5 => N00247, 
	C4 => N00257, 
	C3 => N00267, 
	C2 => N00277, 
	C1 => N00287, 
	C0 => N00297, 
	CIN => C14, 
	COUT0 => OPEN, 
	COUT => CO
);
U16 : XNOR2	PORT MAP(
	I1 => A14, 
	I0 => B14, 
	O => S14
);
U49 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B15, 
	O => S15, 
	I1 => A15
);
U17 : XNOR2	PORT MAP(
	I1 => A13, 
	I0 => B13, 
	O => S13
);
U18 : XNOR2	PORT MAP(
	I1 => A12, 
	I0 => B12, 
	O => S12
);
U19 : XNOR2	PORT MAP(
	I1 => A11, 
	I0 => B11, 
	O => S11
);
U1 : CY4_42	PORT MAP(
	C7 => N00226, 
	C6 => N00236, 
	C5 => N00246, 
	C4 => N00256, 
	C3 => N00266, 
	C2 => N00276, 
	C1 => N00286, 
	C0 => N00296
);
U2 : CY4_07	PORT MAP(
	C7 => N00227, 
	C6 => N00237, 
	C5 => N00247, 
	C4 => N00257, 
	C3 => N00267, 
	C2 => N00277, 
	C1 => N00287, 
	C0 => N00297
);
U50 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B14, 
	O => S14, 
	I1 => A14
);
U3 : CY4_07	PORT MAP(
	C7 => N00228, 
	C6 => N00238, 
	C5 => N00248, 
	C4 => N00258, 
	C3 => N00268, 
	C2 => N00278, 
	C1 => N00288, 
	C0 => N00298
);
U51 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B13, 
	O => S13, 
	I1 => A13
);
U4 : CY4_07	PORT MAP(
	C7 => N00230, 
	C6 => N00240, 
	C5 => N00250, 
	C4 => N00260, 
	C3 => N00270, 
	C2 => N00280, 
	C1 => N00290, 
	C0 => N00300
);
U52 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B12, 
	O => S12, 
	I1 => A12
);
U20 : XNOR2	PORT MAP(
	I1 => A9, 
	I0 => B9, 
	O => S9
);
U5 : INV	PORT MAP(
	O => N00074, 
	I => CO
);
U53 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B11, 
	O => S11, 
	I1 => A11
);
U21 : CY4_07	PORT MAP(
	C7 => N00231, 
	C6 => N00241, 
	C5 => N00251, 
	C4 => N00261, 
	C3 => N00271, 
	C2 => N00281, 
	C1 => N00291, 
	C0 => N00301
);
U6 : XNOR2	PORT MAP(
	I1 => A15, 
	I0 => B15, 
	O => S15
);
U54 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B10, 
	O => S10, 
	I1 => A10
);
U22 : CY4_07	PORT MAP(
	C7 => N00232, 
	C6 => N00242, 
	C5 => N00252, 
	C4 => N00262, 
	C3 => N00272, 
	C2 => N00282, 
	C1 => N00292, 
	C0 => N00302
);
U7 : XNOR2	PORT MAP(
	I1 => A8, 
	I0 => B8, 
	O => S8
);
U55 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B9, 
	O => S9, 
	I1 => A9
);
U23 : CY4_07	PORT MAP(
	C7 => N00234, 
	C6 => N00244, 
	C5 => N00254, 
	C4 => N00264, 
	C3 => N00274, 
	C2 => N00284, 
	C1 => N00294, 
	C0 => N00304
);
U8 : AND2	PORT MAP(
	I0 => S14, 
	I1 => S15, 
	O => SEF
);
U56 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B8, 
	O => S8, 
	I1 => A8
);
U24 : XNOR2	PORT MAP(
	I1 => A7, 
	I0 => B7, 
	O => S7
);
U9 : AND2	PORT MAP(
	I0 => S12, 
	I1 => S13, 
	O => SCD
);
U57 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B7, 
	O => S7, 
	I1 => A7
);
U25 : CY4_38	PORT MAP(
	C7 => N00235, 
	C6 => N00245, 
	C5 => N00255, 
	C4 => N00265, 
	C3 => N00275, 
	C2 => N00285, 
	C1 => N00295, 
	C0 => N00305
);
U58 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B6, 
	O => S6, 
	I1 => A6
);
U26 : XNOR2	PORT MAP(
	I1 => A0, 
	I0 => B0, 
	O => S0
);
U59 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B5, 
	O => S5, 
	I1 => A5
);
U27 : AND2	PORT MAP(
	I0 => S6, 
	I1 => S7, 
	O => S67
);
U28 : AND2	PORT MAP(
	I0 => S4, 
	I1 => S5, 
	O => S45
);
U29 : AND2	PORT MAP(
	I0 => S2, 
	I1 => S3, 
	O => S23
);
U60 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B4, 
	O => S4, 
	I1 => A4
);
U61 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B3, 
	O => S3, 
	I1 => A3
);
U62 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B2, 
	O => S2, 
	I1 => A2
);
U30 : AND2	PORT MAP(
	I0 => S0, 
	I1 => S1, 
	O => S01
);
U63 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B1, 
	O => S1, 
	I1 => A1
);
U31 : CY4_07	PORT MAP(
	C7 => N00233, 
	C6 => N00243, 
	C5 => N00253, 
	C4 => N00263, 
	C3 => N00273, 
	C2 => N00283, 
	C1 => N00293, 
	C0 => N00303
);
U64 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => orcad_unused, 
	I2 => B0, 
	O => S0, 
	I1 => A0
);
U32 : XNOR2	PORT MAP(
	I1 => A2, 
	I0 => B2, 
	O => S2
);
U65 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S15, 
	I1 => S14, 
	O => SEF
);
U33 : XNOR2	PORT MAP(
	I1 => A6, 
	I0 => B6, 
	O => S6
);
U66 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S13, 
	I1 => S12, 
	O => SCD
);
U34 : XNOR2	PORT MAP(
	I1 => A5, 
	I0 => B5, 
	O => S5
);
U67 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S11, 
	I1 => S10, 
	O => SAB
);
U35 : XNOR2	PORT MAP(
	I1 => A4, 
	I0 => B4, 
	O => S4
);
U68 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S9, 
	I1 => S8, 
	O => S89
);
U36 : XNOR2	PORT MAP(
	I1 => A3, 
	I0 => B3, 
	O => S3
);
U69 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S7, 
	I1 => S6, 
	O => S67
);
U37 : XNOR2	PORT MAP(
	I1 => A1, 
	I0 => B1, 
	O => S1
);
U38 : AND5	PORT MAP(
	I0 => S01, 
	I1 => S23, 
	I2 => S45, 
	I3 => S67, 
	I4 => S8F, 
	O => EQB
);
U39 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N00226, 
	C6 => N00236, 
	C5 => N00246, 
	C4 => N00256, 
	C3 => N00266, 
	C2 => N00276, 
	C1 => N00286, 
	C0 => N00296, 
	CIN => CO, 
	COUT0 => OPEN, 
	COUT => OPEN
);
U70 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S5, 
	I1 => S4, 
	O => S45
);
U71 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S3, 
	I1 => S2, 
	O => S23
);
U72 : HMAP	PORT MAP(
	I3 => orcad_unused, 
	I2 => S1, 
	I1 => S0, 
	O => S01
);
U40 : CY4	PORT MAP(
	A0 => A8, 
	B0 => B8, 
	A1 => A9, 
	B1 => B9, 
	ADD => orcad_unused, 
	C7 => N00230, 
	C6 => N00240, 
	C5 => N00250, 
	C4 => N00260, 
	C3 => N00270, 
	C2 => N00280, 
	C1 => N00290, 
	C0 => N00300, 
	CIN => C8, 
	COUT0 => OPEN, 
	COUT => C10
);
U41 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N00235, 
	C6 => N00245, 
	C5 => N00255, 
	C4 => N00265, 
	C3 => N00275, 
	C2 => N00285, 
	C1 => N00295, 
	C0 => N00305, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U42 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => orcad_unused, 
	C7 => N00234, 
	C6 => N00244, 
	C5 => N00254, 
	C4 => N00264, 
	C3 => N00274, 
	C2 => N00284, 
	C1 => N00294, 
	C0 => N00304, 
	CIN => C_IN, 
	COUT0 => OPEN, 
	COUT => C2
);
U10 : AND2	PORT MAP(
	I0 => S10, 
	I1 => S11, 
	O => SAB
);
U43 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => A3, 
	B1 => B3, 
	ADD => orcad_unused, 
	C7 => N00233, 
	C6 => N00243, 
	C5 => N00253, 
	C4 => N00263, 
	C3 => N00273, 
	C2 => N00283, 
	C1 => N00293, 
	C0 => N00303, 
	CIN => C2, 
	COUT0 => OPEN, 
	COUT => C4
);
U11 : AND2	PORT MAP(
	I0 => S8, 
	I1 => S9, 
	O => S89
);
U44 : CY4	PORT MAP(
	A0 => A4, 
	B0 => B4, 
	A1 => A5, 
	B1 => B5, 
	ADD => orcad_unused, 
	C7 => N00232, 
	C6 => N00242, 
	C5 => N00252, 
	C4 => N00262, 
	C3 => N00272, 
	C2 => N00282, 
	C1 => N00292, 
	C0 => N00302, 
	CIN => C4, 
	COUT0 => OPEN, 
	COUT => C6
);
U12 : CY4_07	PORT MAP(
	C7 => N00229, 
	C6 => N00239, 
	C5 => N00249, 
	C4 => N00259, 
	C3 => N00269, 
	C2 => N00279, 
	C1 => N00289, 
	C0 => N00299
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
SIGNAL N00011 : std_logic;
SIGNAL N00007 : std_logic;
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

ENTITY OFDI_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END OFDI_1;



ARCHITECTURE STRUCTURE OF OFDI_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDI
	PORT (
	D : IN std_logic;
	C : IN std_logic;
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
U2 : OFDI	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q
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

ENTITY ILDI IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ILDI;



ARCHITECTURE STRUCTURE OF ILDI IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT ILDI_1
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => GB, 
	I => G
);
U2 : ILDI_1	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q
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
SIGNAL I46 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : NOR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
U2 : OR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
U3 : OR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
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

ENTITY RAM16X8 IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
); END RAM16X8;



ARCHITECTURE STRUCTURE OF RAM16X8 IS

-- COMPONENTS

COMPONENT RAM16X1
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00069 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O2
);
U2 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O3
);
U3 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O1
);
U4 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O0
);
U5 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D6, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O6
);
U6 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D7, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O7
);
U7 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D5, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O5
);
U8 : RAM16X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D4, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O4
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
SIGNAL N00041 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00050 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL N00071 : std_logic;
SIGNAL N00018 : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00040 : std_logic;

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
SIGNAL N00012 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00013 : std_logic;
SIGNAL N00022 : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00032 : std_logic;

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
SIGNAL AD_R : std_logic;
SIGNAL A2 : std_logic;
SIGNAL A1 : std_logic;
SIGNAL AD : std_logic;
SIGNAL A0 : std_logic;
SIGNAL R_CE : std_logic;
SIGNAL N00009 : std_logic;

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
SIGNAL M23 : std_logic;
SIGNAL M03 : std_logic;
SIGNAL M8B : std_logic;
SIGNAL M47 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M89 : std_logic;
SIGNAL MCD : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M8F : std_logic;
SIGNAL M45 : std_logic;
SIGNAL MCF : std_logic;
SIGNAL MEF : std_logic;
SIGNAL MAB : std_logic;
SIGNAL M07 : std_logic;

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
SIGNAL MDR2 : std_logic;
SIGNAL MDR7 : std_logic;
SIGNAL N00079 : std_logic;
SIGNAL N00162 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL MDR12 : std_logic;
SIGNAL MDL5 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00119 : std_logic;
SIGNAL N00060 : std_logic;
SIGNAL N00058 : std_logic;
SIGNAL MDR10 : std_logic;
SIGNAL MDL4 : std_logic;
SIGNAL MDR0 : std_logic;
SIGNAL MDL0 : std_logic;
SIGNAL MDR9 : std_logic;
SIGNAL MDR8 : std_logic;
SIGNAL MDL6 : std_logic;
SIGNAL MDR4 : std_logic;
SIGNAL N00082 : std_logic;
SIGNAL MDL8 : std_logic;
SIGNAL MDL7 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL MDR5 : std_logic;
SIGNAL N00182 : std_logic;
SIGNAL N00122 : std_logic;
SIGNAL N00099 : std_logic;
SIGNAL MDL13 : std_logic;
SIGNAL MDL12 : std_logic;
SIGNAL MDR3 : std_logic;
SIGNAL MDL14 : std_logic;
SIGNAL MDR11 : std_logic;
SIGNAL MDR6 : std_logic;
SIGNAL MDL11 : std_logic;
SIGNAL MDL10 : std_logic;
SIGNAL MDL3 : std_logic;
SIGNAL MDL15 : std_logic;
SIGNAL MDL2 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL N00142 : std_logic;
SIGNAL MDR13 : std_logic;
SIGNAL N00102 : std_logic;
SIGNAL N00139 : std_logic;
SIGNAL MDR1 : std_logic;
SIGNAL MDL1 : std_logic;
SIGNAL L_LEFT : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL MDR14 : std_logic;
SIGNAL MDL9 : std_logic;
SIGNAL MDR15 : std_logic;

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

ENTITY WAND4 IS PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	O : OUT std_logic
); END WAND4;



ARCHITECTURE STRUCTURE OF WAND4 IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : WAND1	PORT MAP(
	I => I0, 
	O => O
);
U2 : WAND1	PORT MAP(
	I => I1, 
	O => O
);
U3 : WAND1	PORT MAP(
	I => I2, 
	O => O
);
U4 : WAND1	PORT MAP(
	I => I3, 
	O => O
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
SIGNAL M03 : std_logic;
SIGNAL M01 : std_logic;
SIGNAL M45 : std_logic;
SIGNAL M23 : std_logic;
SIGNAL M67 : std_logic;
SIGNAL M47 : std_logic;

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

COMPONENT OR2
	PORT (
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
U1 : OR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U2 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
);
U3 : OR3	PORT MAP(
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
SIGNAL N00058 : std_logic;
SIGNAL D10 : std_logic;
SIGNAL D2 : std_logic;
SIGNAL D11 : std_logic;
SIGNAL N00027 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL D6 : std_logic;
SIGNAL D9 : std_logic;
SIGNAL D0 : std_logic;
SIGNAL D8 : std_logic;
SIGNAL D1 : std_logic;
SIGNAL D7 : std_logic;
SIGNAL D3 : std_logic;
SIGNAL D5 : std_logic;

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
SIGNAL I14 : std_logic;
SIGNAL I58 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR4	PORT MAP(
	I3 => I8, 
	I2 => I7, 
	I1 => I6, 
	I0 => I5, 
	O => I58
);
U2 : XOR4	PORT MAP(
	I3 => I4, 
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I14
);
U3 : XOR3	PORT MAP(
	I2 => I58, 
	I1 => I14, 
	I0 => I0, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFDX4 IS PORT (
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
); END IFDX4;



ARCHITECTURE STRUCTURE OF IFDX4 IS

-- COMPONENTS

COMPONENT IFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : IFDX	PORT MAP(
	D => D0, 
	C => C, 
	Q => Q0, 
	CE => CE
);
U2 : IFDX	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);
U3 : IFDX	PORT MAP(
	D => D2, 
	C => C, 
	Q => Q2, 
	CE => CE
);
U4 : IFDX	PORT MAP(
	D => D3, 
	C => C, 
	Q => Q3, 
	CE => CE
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
SIGNAL I13 : std_logic;
SIGNAL I47 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I13, 
	I2 => I47, 
	O => O
);
U2 : AND3	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	O => I13
);
U3 : AND4	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	I3 => I7, 
	O => I47
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
SIGNAL N00073 : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00147 : std_logic;
SIGNAL N00166 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00074 : std_logic;
SIGNAL N00180 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00112 : std_logic;
SIGNAL T14 : std_logic;
SIGNAL N00092 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00167 : std_logic;
SIGNAL N00057 : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL T15 : std_logic;
SIGNAL N00128 : std_logic;
SIGNAL T8 : std_logic;
SIGNAL N00146 : std_logic;
SIGNAL T9 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL T11 : std_logic;

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
SIGNAL N00073 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL N00032 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T5 : std_logic;
SIGNAL N00080 : std_logic;
SIGNAL N00019 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL T7 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00049 : std_logic;
SIGNAL N00056 : std_logic;
SIGNAL T4 : std_logic;

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

COMPONENT FDPE
	PORT (
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
SIGNAL N00015 : std_logic;
SIGNAL MD : std_logic;

-- GATE INSTANCES

BEGIN
Q<=N00006;
U2 : OR2	PORT MAP(
	I1 => L, 
	I0 => CE, 
	O => N00015
);
U3 : XOR2	PORT MAP(
	I1 => N00006, 
	I0 => T, 
	O => TQ
);
U4 : FDPE	PORT MAP(
	D => MD, 
	CE => N00015, 
	C => C, 
	PRE => PRE, 
	Q => N00006
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
SIGNAL TQ : std_logic;
SIGNAL N00007 : std_logic;
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

COMPONENT ILD	 PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
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

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I46 : std_logic;
SIGNAL I13 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : XOR3	PORT MAP(
	I2 => I6, 
	I1 => I5, 
	I0 => I4, 
	O => I46
);
U2 : XOR3	PORT MAP(
	I2 => I3, 
	I1 => I2, 
	I0 => I1, 
	O => I13
);
U3 : XOR3	PORT MAP(
	I2 => I46, 
	I1 => I13, 
	I0 => I0, 
	O => O
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RAM16X8S IS 
GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
PORT (
	WE : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	WCLK : IN std_logic
); END RAM16X8S;



ARCHITECTURE STRUCTURE OF RAM16X8S IS

-- COMPONENTS

COMPONENT RAM16X1S
	GENERIC (
	INIT    : std_logic_vector(15 DOWNTO 0) := x"0000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT std_logic;
	WCLK : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL N00086 : std_logic;
SIGNAL N00087 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O3, 
	WCLK => WCLK
);
U2 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O2, 
	WCLK => WCLK
);
U3 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O1, 
	WCLK => WCLK
);
U4 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O0, 
	WCLK => WCLK
);
U5 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D4, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O4, 
	WCLK => WCLK
);
U6 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D5, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O5, 
	WCLK => WCLK
);
U7 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D6, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O6, 
	WCLK => WCLK
);
U8 : RAM16X1S	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D7, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	O => O7, 
	WCLK => WCLK
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDX_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END OFDX_1;



ARCHITECTURE STRUCTURE OF OFDX_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDX
	PORT (
	D : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL CB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => CB, 
	I => C
);
U2 : OFDX	PORT MAP(
	D => D, 
	CE => CE, 
	C => CB, 
	Q => Q
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILDXI IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
); END ILDXI;



ARCHITECTURE STRUCTURE OF ILDXI IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT ILDXI_1
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL GB : std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV	PORT MAP(
	O => GB, 
	I => G
);
U2 : ILDXI_1	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q, 
	GE => GE
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILDX8 IS PORT (
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
	Q7 : OUT std_logic;
	GE : IN std_logic
); END ILDX8;



ARCHITECTURE STRUCTURE OF ILDX8 IS

-- COMPONENTS

COMPONENT ILDX
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic;
	GE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : ILDX	PORT MAP(
	D => D0, 
	G => G, 
	Q => Q0, 
	GE => GE
);
U2 : ILDX	PORT MAP(
	D => D1, 
	G => G, 
	Q => Q1, 
	GE => GE
);
U3 : ILDX	PORT MAP(
	D => D2, 
	G => G, 
	Q => Q2, 
	GE => GE
);
U4 : ILDX	PORT MAP(
	D => D3, 
	G => G, 
	Q => Q3, 
	GE => GE
);
U5 : ILDX	PORT MAP(
	D => D4, 
	G => G, 
	Q => Q4, 
	GE => GE
);
U6 : ILDX	PORT MAP(
	D => D5, 
	G => G, 
	Q => Q5, 
	GE => GE
);
U7 : ILDX	PORT MAP(
	D => D6, 
	G => G, 
	Q => Q6, 
	GE => GE
);
U8 : ILDX	PORT MAP(
	D => D7, 
	G => G, 
	Q => Q7, 
	GE => GE
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

COMPONENT AND2
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL I12 : std_logic;
SIGNAL I35 : std_logic;

-- GATE INSTANCES

BEGIN
U1 : AND3	PORT MAP(
	I0 => I3, 
	I1 => I4, 
	I2 => I5, 
	O => I35
);
U2 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I12, 
	I2 => I35, 
	O => O
);
U3 : AND2	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	O => I12
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
SIGNAL N00015 : std_logic;
SIGNAL N00025 : std_logic;
SIGNAL N00010 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL Q4B : std_logic;

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

COMPONENT CY4_13
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
	); END COMPONENT;

COMPONENT XNOR4
	PORT (
	I3 : IN std_logic;
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

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
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

COMPONENT OR3
	PORT (
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_12
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_39
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL COR3 : std_logic;
SIGNAL OOR3 : std_logic;
SIGNAL N00064 : std_logic;
SIGNAL OOR1 : std_logic;
SIGNAL C7 : std_logic;
SIGNAL N00178 : std_logic;
SIGNAL N00154 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL B7_M2 : std_logic;
SIGNAL B7_M1 : std_logic;
SIGNAL COR2 : std_logic;
SIGNAL COR1 : std_logic;
SIGNAL OOR2 : std_logic;
SIGNAL N00129 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00093 : std_logic;
SIGNAL N00104 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL N00168 : std_logic;
SIGNAL N00143 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N0001612 : std_logic;
SIGNAL N000168 : std_logic;
SIGNAL N0001611 : std_logic;
SIGNAL N000167 : std_logic;
SIGNAL N000166 : std_logic;
SIGNAL N0001610 : std_logic;
SIGNAL N000165 : std_logic;
SIGNAL C7_M : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00118 : std_logic;
SIGNAL N000066 : std_logic;
SIGNAL N000060 : std_logic;
SIGNAL N000067 : std_logic;
SIGNAL N000120 : std_logic;
SIGNAL N000125 : std_logic;
SIGNAL N000140 : std_logic;
SIGNAL N000062 : std_logic;
SIGNAL N000144 : std_logic;
SIGNAL N000123 : std_logic;
SIGNAL N000127 : std_logic;
SIGNAL N000065 : std_logic;
SIGNAL N000124 : std_logic;
SIGNAL N000143 : std_logic;
SIGNAL N000061 : std_logic;
SIGNAL N000147 : std_logic;
SIGNAL N000169 : std_logic;
SIGNAL N000110 : std_logic;
SIGNAL N000115 : std_logic;
SIGNAL N000114 : std_logic;
SIGNAL N000117 : std_logic;
SIGNAL N000113 : std_logic;
SIGNAL N000112 : std_logic;
SIGNAL N000116 : std_logic;
SIGNAL N000122 : std_logic;
SIGNAL N000142 : std_logic;
SIGNAL N000146 : std_logic;
SIGNAL N000064 : std_logic;
SIGNAL N000141 : std_logic;
SIGNAL N000121 : std_logic;
SIGNAL N000126 : std_logic;
SIGNAL N000145 : std_logic;
SIGNAL N000063 : std_logic;
SIGNAL N000074 : std_logic;
SIGNAL N000073 : std_logic;
SIGNAL N000077 : std_logic;
SIGNAL N000072 : std_logic;
SIGNAL N000076 : std_logic;
SIGNAL N000071 : std_logic;
SIGNAL N000070 : std_logic;
SIGNAL N000075 : std_logic;
SIGNAL N000111 : std_logic;

-- GATE INSTANCES

BEGIN
OFL<=N00047;
S1<=N00154;
S2<=N00143;
S3<=N00129;
S4<=N00118;
S5<=N00104;
S6<=N00093;
S7<=N00081;
CO<=N00064;
S0<=N00168;
U13 : CY4_13	PORT MAP(
	C7 => N000140, 
	C6 => N000141, 
	C5 => N000142, 
	C4 => N000143, 
	C3 => N000144, 
	C2 => N000145, 
	C1 => N000146, 
	C0 => N000147
);
U14 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077, 
	CIN => C7, 
	COUT0 => C7_M, 
	COUT => OPEN
);
U15 : CY4	PORT MAP(
	A0 => A6, 
	B0 => B6, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => ADD, 
	C7 => N000165, 
	C6 => N000166, 
	C5 => N000167, 
	C4 => N000168, 
	C3 => N000169, 
	C2 => N0001610, 
	C1 => N0001611, 
	C0 => N0001612, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U16 : CY4	PORT MAP(
	A0 => A4, 
	B0 => B4, 
	A1 => A5, 
	B1 => B5, 
	ADD => ADD, 
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U17 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => A3, 
	B1 => B3, 
	ADD => ADD, 
	C7 => N000140, 
	C6 => N000141, 
	C5 => N000142, 
	C4 => N000143, 
	C3 => N000144, 
	C2 => N000145, 
	C1 => N000146, 
	C0 => N000147, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U18 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => ADD, 
	C7 => N000120, 
	C6 => N000121, 
	C5 => N000122, 
	C4 => N000123, 
	C3 => N000124, 
	C2 => N000125, 
	C1 => N000126, 
	C0 => N000127, 
	CIN => C_IN, 
	COUT0 => C0, 
	COUT => C1
);
U19 : CY4	PORT MAP(
	A0 => CI, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000110, 
	C6 => N000111, 
	C5 => N000112, 
	C4 => N000113, 
	C3 => N000114, 
	C2 => N000115, 
	C1 => N000116, 
	C0 => N000117, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U1 : XNOR4	PORT MAP(
	I3 => B7, 
	I2 => A7, 
	I1 => ADD, 
	I0 => C6, 
	O => N00081
);
U2 : XNOR4	PORT MAP(
	I3 => A6, 
	I2 => B6, 
	I1 => ADD, 
	I0 => C5, 
	O => N00093
);
U3 : XNOR4	PORT MAP(
	I3 => A5, 
	I2 => B5, 
	I1 => ADD, 
	I0 => C4, 
	O => N00104
);
U4 : XNOR4	PORT MAP(
	I3 => A3, 
	I2 => B3, 
	I1 => ADD, 
	I0 => C2, 
	O => N00129
);
U20 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B7, 
	I2 => A7, 
	O => N00081, 
	I1 => C6
);
U5 : CY4_13	PORT MAP(
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067
);
U21 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B6, 
	I2 => A6, 
	O => N00093, 
	I1 => C5
);
U6 : CY4_42	PORT MAP(
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077
);
U22 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B5, 
	I2 => A5, 
	O => N00104, 
	I1 => C4
);
U7 : XNOR4	PORT MAP(
	I3 => A2, 
	I2 => B2, 
	I1 => ADD, 
	I0 => C1, 
	O => N00143
);
U23 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B4, 
	I2 => A4, 
	O => N00118, 
	I1 => C3
);
U8 : XNOR4	PORT MAP(
	I3 => A1, 
	I2 => B1, 
	I1 => ADD, 
	I0 => C0, 
	O => N00154
);
U24 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B3, 
	I2 => A3, 
	O => N00129, 
	I1 => C2
);
U9 : XNOR4	PORT MAP(
	I3 => A0, 
	I2 => B0, 
	I1 => ADD, 
	I0 => C_IN, 
	O => N00168
);
U25 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B2, 
	I2 => A2, 
	O => N00143, 
	I1 => C1
);
U26 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B1, 
	I2 => A1, 
	O => N00154, 
	I1 => C0
);
U27 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B0, 
	I2 => A0, 
	O => N00168, 
	I1 => C_IN
);
U28 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => ADD, 
	O => B7_M2
);
U29 : XNOR2	PORT MAP(
	I1 => B7, 
	I0 => ADD, 
	O => B7_M1
);
U30 : AND2	PORT MAP(
	I0 => C7_M, 
	I1 => B7_M2, 
	O => COR2
);
U31 : AND2	PORT MAP(
	I0 => A7, 
	I1 => B7_M2, 
	O => COR1
);
U32 : AND2	PORT MAP(
	I0 => A7, 
	I1 => C7_M, 
	O => OOR3
);
U33 : AND2	PORT MAP(
	I0 => C7_M, 
	I1 => B7_M1, 
	O => OOR2
);
U34 : AND2	PORT MAP(
	I0 => A7, 
	I1 => B7_M1, 
	O => OOR1
);
U35 : OR3	PORT MAP(
	I2 => OOR1, 
	I1 => OOR2, 
	I0 => OOR3, 
	O => N00055
);
U36 : OR3	PORT MAP(
	I2 => COR1, 
	I1 => COR2, 
	I0 => COR3, 
	O => N00064
);
U37 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B7, 
	I2 => A7, 
	O => N00047, 
	I1 => C7_M
);
U38 : FMAP	PORT MAP(
	I4 => ADD, 
	I3 => B7, 
	I2 => A7, 
	O => N00064, 
	I1 => C7_M
);
U39 : AND2	PORT MAP(
	I0 => A7, 
	I1 => C7_M, 
	O => COR3
);
U40 : CY4_12	PORT MAP(
	C7 => N000165, 
	C6 => N000166, 
	C5 => N000167, 
	C4 => N000168, 
	C3 => N000169, 
	C2 => N0001610, 
	C1 => N0001611, 
	C0 => N0001612
);
U41 : XOR2	PORT MAP(
	I1 => N00055, 
	I0 => C7_M, 
	O => N00047
);
U10 : CY4_39	PORT MAP(
	C7 => N000110, 
	C6 => N000111, 
	C5 => N000112, 
	C4 => N000113, 
	C3 => N000114, 
	C2 => N000115, 
	C1 => N000116, 
	C0 => N000117
);
U11 : CY4_13	PORT MAP(
	C7 => N000120, 
	C6 => N000121, 
	C5 => N000122, 
	C4 => N000123, 
	C3 => N000124, 
	C2 => N000125, 
	C1 => N000126, 
	C0 => N000127
);
U12 : XNOR4	PORT MAP(
	I3 => A4, 
	I2 => B4, 
	I1 => ADD, 
	I0 => C3, 
	O => N00118
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
U1 : AND3	PORT MAP(
	I0 => I4, 
	I1 => I5, 
	I2 => I6, 
	O => I46
);
U2 : AND3	PORT MAP(
	I0 => I0, 
	I1 => I13, 
	I2 => I46, 
	O => O
);
U3 : AND3	PORT MAP(
	I0 => I1, 
	I1 => I2, 
	I2 => I3, 
	O => I13
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

COMPONENT BUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT   std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
XU1 : BUFE	PORT MAP(
	E => E, 
	I => I3, 
	O => O3
);
XU2 : BUFE	PORT MAP(
	E => E, 
	I => I2, 
	O => O2
);
XU3 : BUFE	PORT MAP(
	E => E, 
	I => I1, 
	O => O1
);
XU4 : BUFE	PORT MAP(
	E => E, 
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
SIGNAL N00025 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL N00024 : std_logic;
SIGNAL N00015 : std_logic;
SIGNAL N00011 : std_logic;
SIGNAL Q7B : std_logic;
SIGNAL N00035 : std_logic;
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

ENTITY DECODE4 IS PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	O : OUT   std_logic
); END DECODE4;



ARCHITECTURE STRUCTURE OF DECODE4 IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : WAND1	PORT MAP(
	I => A0, 
	O => O
);
U2 : WAND1	PORT MAP(
	I => A1, 
	O => O
);
U3 : WAND1	PORT MAP(
	I => A2, 
	O => O
);
U4 : WAND1	PORT MAP(
	I => A3, 
	O => O
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

COMPONENT OR2
	PORT (
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
U1 : NOR3	PORT MAP(
	I2 => I35, 
	I1 => I12, 
	I0 => I0, 
	O => O
);
U2 : OR3	PORT MAP(
	I2 => I5, 
	I1 => I4, 
	I0 => I3, 
	O => I35
);
U3 : OR2	PORT MAP(
	I1 => I2, 
	I0 => I1, 
	O => I12
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
SIGNAL N00025 : std_logic;
SIGNAL L_OR_CE : std_logic;
SIGNAL N00033 : std_logic;
SIGNAL MD1 : std_logic;
SIGNAL MD2 : std_logic;
SIGNAL N00017 : std_logic;
SIGNAL MD0 : std_logic;
SIGNAL MD3 : std_logic;

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

ENTITY WAND16 IS PORT (
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
); END WAND16;



ARCHITECTURE STRUCTURE OF WAND16 IS

-- COMPONENTS

COMPONENT WAND1
	PORT (
	I : IN std_logic;
	O : OUT   std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U13 : WAND1	PORT MAP(
	I => I12, 
	O => O
);
U14 : WAND1	PORT MAP(
	I => I13, 
	O => O
);
U15 : WAND1	PORT MAP(
	I => I14, 
	O => O
);
U16 : WAND1	PORT MAP(
	I => I15, 
	O => O
);
U1 : WAND1	PORT MAP(
	I => I0, 
	O => O
);
U2 : WAND1	PORT MAP(
	I => I1, 
	O => O
);
U3 : WAND1	PORT MAP(
	I => I2, 
	O => O
);
U4 : WAND1	PORT MAP(
	I => I3, 
	O => O
);
U5 : WAND1	PORT MAP(
	I => I4, 
	O => O
);
U6 : WAND1	PORT MAP(
	I => I5, 
	O => O
);
U7 : WAND1	PORT MAP(
	I => I6, 
	O => O
);
U8 : WAND1	PORT MAP(
	I => I7, 
	O => O
);
U9 : WAND1	PORT MAP(
	I => I8, 
	O => O
);
U10 : WAND1	PORT MAP(
	I => I9, 
	O => O
);
U11 : WAND1	PORT MAP(
	I => I10, 
	O => O
);
U12 : WAND1	PORT MAP(
	I => I11, 
	O => O
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
SIGNAL T4 : std_logic;
SIGNAL LB : std_logic;
SIGNAL CLRB : std_logic;
SIGNAL N00029 : std_logic;
SIGNAL N00034 : std_logic;
SIGNAL T2 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL CE : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL N00059 : std_logic;
SIGNAL TQ2 : std_logic;

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
SIGNAL E4_5 : std_logic;
SIGNAL E6_7 : std_logic;
SIGNAL E2_3 : std_logic;
SIGNAL X4 : std_logic;
SIGNAL X0 : std_logic;
SIGNAL X1 : std_logic;
SIGNAL X3 : std_logic;
SIGNAL X2 : std_logic;
SIGNAL X6 : std_logic;
SIGNAL GB : std_logic;
SIGNAL E0_1 : std_logic;
SIGNAL X5 : std_logic;
SIGNAL X7 : std_logic;

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

ENTITY OFDTXI_1 IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
); END OFDTXI_1;



ARCHITECTURE STRUCTURE OF OFDTXI_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT OFDTXI
	PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic;
	CE : IN std_logic
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
U2 : OFDTXI	PORT MAP(
	T => T, 
	D => D, 
	C => CB, 
	O => O, 
	CE => CE
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
SIGNAL R_SD1 : std_logic;
SIGNAL R_SD6 : std_logic;
SIGNAL R_SD2 : std_logic;
SIGNAL N00039 : std_logic;
SIGNAL N00042 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL N00043 : std_logic;
SIGNAL N00041 : std_logic;
SIGNAL N00038 : std_logic;
SIGNAL N00040 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL S0 : std_logic;
SIGNAL S3 : std_logic;
SIGNAL SD6 : std_logic;
SIGNAL SD7 : std_logic;
SIGNAL S6 : std_logic;
SIGNAL S7 : std_logic;
SIGNAL S5 : std_logic;
SIGNAL S1 : std_logic;
SIGNAL N00083 : std_logic;
SIGNAL R_SD5 : std_logic;
SIGNAL R_SD3 : std_logic;
SIGNAL R_SD7 : std_logic;
SIGNAL R_SD0 : std_logic;
SIGNAL R_SD4 : std_logic;
SIGNAL S2 : std_logic;
SIGNAL SD4 : std_logic;
SIGNAL SD3 : std_logic;
SIGNAL S4 : std_logic;
SIGNAL SD1 : std_logic;
SIGNAL SD0 : std_logic;
SIGNAL SD5 : std_logic;
SIGNAL SD2 : std_logic;
SIGNAL R_L_CE : std_logic;

-- GATE INSTANCES

BEGIN
Q0<=N00044;
Q1<=N00043;
Q2<=N00042;
Q3<=N00041;
Q4<=N00040;
Q5<=N00039;
Q6<=N00038;
Q7<=N00037;
U18 : OR3	PORT MAP(
	I2 => L, 
	I1 => CE, 
	I0 => R, 
	O => R_L_CE
);
U19 : GND	PORT MAP(
	G => N00083
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
U20 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S7, 
	I2 => D7, 
	O => R_SD7, 
	I1 => L
);
U21 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S6, 
	I2 => D6, 
	O => R_SD6, 
	I1 => L
);
U22 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S5, 
	I2 => D5, 
	O => R_SD5, 
	I1 => L
);
U23 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S4, 
	I2 => D4, 
	O => R_SD4, 
	I1 => L
);
U24 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S3, 
	I2 => D3, 
	O => R_SD3, 
	I1 => L
);
U9 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD4, 
	O => R_SD4
);
U25 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S2, 
	I2 => D2, 
	O => R_SD2, 
	I1 => L
);
U26 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S1, 
	I2 => D1, 
	O => R_SD1, 
	I1 => L
);
U27 : FMAP	PORT MAP(
	I4 => R, 
	I3 => S0, 
	I2 => D0, 
	O => R_SD0, 
	I1 => L
);
U28 : FDCE	PORT MAP(
	D => R_SD7, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00037
);
U29 : FDCE	PORT MAP(
	D => R_SD6, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00038
);
U30 : FDCE	PORT MAP(
	D => R_SD5, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00039
);
U31 : FDCE	PORT MAP(
	D => R_SD4, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00040
);
U32 : FDCE	PORT MAP(
	D => R_SD3, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00041
);
U33 : FDCE	PORT MAP(
	D => R_SD2, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00042
);
U34 : FDCE	PORT MAP(
	D => R_SD1, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00043
);
U35 : FDCE	PORT MAP(
	D => R_SD0, 
	CE => R_L_CE, 
	C => C, 
	CLR => N00083, 
	Q => N00044
);
U10 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD5, 
	O => R_SD5
);
U11 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD6, 
	O => R_SD6
);
U12 : AND2B1	PORT MAP(
	I0 => R, 
	I1 => SD7, 
	O => R_SD7
);
U5 : M2_1	PORT MAP(
	D0 => S0, 
	D1 => D0, 
	S0 => L, 
	O => SD0
);
U13 : M2_1	PORT MAP(
	D0 => S4, 
	D1 => D4, 
	S0 => L, 
	O => SD4
);
U6 : M2_1	PORT MAP(
	D0 => S1, 
	D1 => D1, 
	S0 => L, 
	O => SD1
);
U14 : M2_1	PORT MAP(
	D0 => S5, 
	D1 => D5, 
	S0 => L, 
	O => SD5
);
U15 : M2_1	PORT MAP(
	D0 => S6, 
	D1 => D6, 
	S0 => L, 
	O => SD6
);
U7 : M2_1	PORT MAP(
	D0 => S2, 
	D1 => D2, 
	S0 => L, 
	O => SD2
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
U17 : ADSU8	PORT MAP(
	CI => CI, 
	A0 => N00044, 
	A1 => N00043, 
	A2 => N00042, 
	A3 => N00041, 
	A4 => N00040, 
	A5 => N00039, 
	A6 => N00038, 
	A7 => N00037, 
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

COMPONENT CY4_02
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_42
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_39
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

COMPONENT CY4
	PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	ADD : IN std_logic;
	C7 : IN std_logic;
	C6 : IN std_logic;
	C5 : IN std_logic;
	C4 : IN std_logic;
	C3 : IN std_logic;
	C2 : IN std_logic;
	C1 : IN std_logic;
	C0 : IN std_logic;
	CIN : IN std_logic;
	COUT0 : OUT std_logic;
	COUT : OUT std_logic
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

COMPONENT XOR2
	PORT (
	I1 : IN std_logic;
	I0 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

COMPONENT CY4_01
	PORT (
	C7 : OUT std_logic;
	C6 : OUT std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic;
	C0 : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL C7 : std_logic;
SIGNAL N00051 : std_logic;
SIGNAL OOR1 : std_logic;
SIGNAL COR1 : std_logic;
SIGNAL N00063 : std_logic;
SIGNAL OOR3 : std_logic;
SIGNAL COR2 : std_logic;
SIGNAL OOR2 : std_logic;
SIGNAL COR3 : std_logic;
SIGNAL N000245 : std_logic;
SIGNAL N000247 : std_logic;
SIGNAL N000249 : std_logic;
SIGNAL N0002412 : std_logic;
SIGNAL N000246 : std_logic;
SIGNAL N000248 : std_logic;
SIGNAL N0002411 : std_logic;
SIGNAL N0002410 : std_logic;
SIGNAL N00101 : std_logic;
SIGNAL N00121 : std_logic;
SIGNAL C1 : std_logic;
SIGNAL N00091 : std_logic;
SIGNAL C6 : std_logic;
SIGNAL N00081 : std_logic;
SIGNAL N00111 : std_logic;
SIGNAL C3 : std_logic;
SIGNAL N00044 : std_logic;
SIGNAL C7_M : std_logic;
SIGNAL N00073 : std_logic;
SIGNAL C0 : std_logic;
SIGNAL C4 : std_logic;
SIGNAL C2 : std_logic;
SIGNAL C5 : std_logic;
SIGNAL N00141 : std_logic;
SIGNAL N00131 : std_logic;
SIGNAL C_IN : std_logic;
SIGNAL N000026 : std_logic;
SIGNAL N000020 : std_logic;
SIGNAL N000062 : std_logic;
SIGNAL N000027 : std_logic;
SIGNAL N000061 : std_logic;
SIGNAL N000024 : std_logic;
SIGNAL N000065 : std_logic;
SIGNAL N000025 : std_logic;
SIGNAL N000055 : std_logic;
SIGNAL N000051 : std_logic;
SIGNAL N000057 : std_logic;
SIGNAL N000022 : std_logic;
SIGNAL N000060 : std_logic;
SIGNAL N000023 : std_logic;
SIGNAL N000077 : std_logic;
SIGNAL N000071 : std_logic;
SIGNAL N000072 : std_logic;
SIGNAL N000070 : std_logic;
SIGNAL N000075 : std_logic;
SIGNAL N000076 : std_logic;
SIGNAL N000050 : std_logic;
SIGNAL N000054 : std_logic;
SIGNAL N000064 : std_logic;
SIGNAL N000053 : std_logic;
SIGNAL N000063 : std_logic;
SIGNAL N000066 : std_logic;
SIGNAL N000021 : std_logic;
SIGNAL N000056 : std_logic;
SIGNAL N000067 : std_logic;
SIGNAL N000052 : std_logic;
SIGNAL N000043 : std_logic;
SIGNAL N000042 : std_logic;
SIGNAL N000047 : std_logic;
SIGNAL N000041 : std_logic;
SIGNAL N000040 : std_logic;
SIGNAL N000046 : std_logic;
SIGNAL N000044 : std_logic;
SIGNAL N000045 : std_logic;
SIGNAL N000074 : std_logic;
SIGNAL N000073 : std_logic;

-- GATE INSTANCES

BEGIN
S1<=N00131;
OFL<=N00044;
S2<=N00121;
S3<=N00111;
S4<=N00101;
S5<=N00091;
S6<=N00081;
S7<=N00073;
CO<=N00063;
S0<=N00141;
U13 : XOR3	PORT MAP(
	I2 => A6, 
	I1 => B6, 
	I0 => C5, 
	O => N00081
);
U14 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B7, 
	I2 => A7, 
	O => N00073, 
	I1 => C6
);
U15 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B6, 
	I2 => A6, 
	O => N00081, 
	I1 => C5
);
U16 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B5, 
	I2 => A5, 
	O => N00091, 
	I1 => C4
);
U17 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B4, 
	I2 => A4, 
	O => N00101, 
	I1 => C3
);
U18 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B3, 
	I2 => A3, 
	O => N00111, 
	I1 => C2
);
U19 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B2, 
	I2 => A2, 
	O => N00121, 
	I1 => C1
);
U1 : CY4_02	PORT MAP(
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027
);
U2 : XOR3	PORT MAP(
	I2 => B7, 
	I1 => A7, 
	I0 => C6, 
	O => N00073
);
U3 : CY4_42	PORT MAP(
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047
);
U4 : CY4_02	PORT MAP(
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057
);
U20 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B1, 
	I2 => A1, 
	O => N00131, 
	I1 => C0
);
U5 : CY4_02	PORT MAP(
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067
);
U21 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B0, 
	I2 => A0, 
	O => N00141, 
	I1 => C_IN
);
U6 : CY4_39	PORT MAP(
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077
);
U22 : CY4	PORT MAP(
	A0 => orcad_unused, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000040, 
	C6 => N000041, 
	C5 => N000042, 
	C4 => N000043, 
	C3 => N000044, 
	C2 => N000045, 
	C1 => N000046, 
	C0 => N000047, 
	CIN => C7, 
	COUT0 => C7_M, 
	COUT => OPEN
);
U7 : XOR3	PORT MAP(
	I2 => A3, 
	I1 => B3, 
	I0 => C2, 
	O => N00111
);
U23 : CY4	PORT MAP(
	A0 => A6, 
	B0 => B6, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000245, 
	C6 => N000246, 
	C5 => N000247, 
	C4 => N000248, 
	C3 => N000249, 
	C2 => N0002410, 
	C1 => N0002411, 
	C0 => N0002412, 
	CIN => C5, 
	COUT0 => C6, 
	COUT => C7
);
U8 : XOR3	PORT MAP(
	I2 => A2, 
	I1 => B2, 
	I0 => C1, 
	O => N00121
);
U24 : CY4	PORT MAP(
	A0 => A4, 
	B0 => B4, 
	A1 => A5, 
	B1 => B5, 
	ADD => orcad_unused, 
	C7 => N000020, 
	C6 => N000021, 
	C5 => N000022, 
	C4 => N000023, 
	C3 => N000024, 
	C2 => N000025, 
	C1 => N000026, 
	C0 => N000027, 
	CIN => C3, 
	COUT0 => C4, 
	COUT => C5
);
U9 : XOR3	PORT MAP(
	I2 => A1, 
	I1 => B1, 
	I0 => C0, 
	O => N00131
);
U25 : CY4	PORT MAP(
	A0 => A2, 
	B0 => B2, 
	A1 => A3, 
	B1 => B3, 
	ADD => orcad_unused, 
	C7 => N000060, 
	C6 => N000061, 
	C5 => N000062, 
	C4 => N000063, 
	C3 => N000064, 
	C2 => N000065, 
	C1 => N000066, 
	C0 => N000067, 
	CIN => C1, 
	COUT0 => C2, 
	COUT => C3
);
U26 : CY4	PORT MAP(
	A0 => A0, 
	B0 => B0, 
	A1 => A1, 
	B1 => B1, 
	ADD => orcad_unused, 
	C7 => N000050, 
	C6 => N000051, 
	C5 => N000052, 
	C4 => N000053, 
	C3 => N000054, 
	C2 => N000055, 
	C1 => N000056, 
	C0 => N000057, 
	CIN => C_IN, 
	COUT0 => C0, 
	COUT => C1
);
U27 : CY4	PORT MAP(
	A0 => CI, 
	B0 => orcad_unused, 
	A1 => orcad_unused, 
	B1 => orcad_unused, 
	ADD => orcad_unused, 
	C7 => N000070, 
	C6 => N000071, 
	C5 => N000072, 
	C4 => N000073, 
	C3 => N000074, 
	C2 => N000075, 
	C1 => N000076, 
	C0 => N000077, 
	CIN => orcad_unused, 
	COUT0 => OPEN, 
	COUT => C_IN
);
U28 : OR3	PORT MAP(
	I2 => OOR1, 
	I1 => OOR2, 
	I0 => OOR3, 
	O => N00051
);
U29 : OR3	PORT MAP(
	I2 => COR1, 
	I1 => COR2, 
	I0 => COR3, 
	O => N00063
);
U30 : AND2	PORT MAP(
	I0 => A7, 
	I1 => B7, 
	O => OOR1
);
U31 : AND2	PORT MAP(
	I0 => C7_M, 
	I1 => B7, 
	O => OOR2
);
U32 : AND2	PORT MAP(
	I0 => C7_M, 
	I1 => A7, 
	O => OOR3
);
U33 : AND2	PORT MAP(
	I0 => B7, 
	I1 => A7, 
	O => COR1
);
U34 : AND2	PORT MAP(
	I0 => C7_M, 
	I1 => B7, 
	O => COR2
);
U35 : AND2	PORT MAP(
	I0 => A7, 
	I1 => C7_M, 
	O => COR3
);
U36 : XOR2	PORT MAP(
	I1 => N00051, 
	I0 => C7_M, 
	O => N00044
);
U37 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B7, 
	I2 => A7, 
	O => N00044, 
	I1 => C7_M
);
U38 : FMAP	PORT MAP(
	I4 => orcad_unused, 
	I3 => B7, 
	I2 => A7, 
	O => N00063, 
	I1 => C7_M
);
U39 : CY4_01	PORT MAP(
	C7 => N000245, 
	C6 => N000246, 
	C5 => N000247, 
	C4 => N000248, 
	C3 => N000249, 
	C2 => N0002410, 
	C1 => N0002411, 
	C0 => N0002412
);
U10 : XOR3	PORT MAP(
	I2 => A0, 
	I1 => B0, 
	I0 => C_IN, 
	O => N00141
);
U11 : XOR3	PORT MAP(
	I2 => A4, 
	I1 => B4, 
	I0 => C3, 
	O => N00101
);
U12 : XOR3	PORT MAP(
	I2 => A5, 
	I1 => B5, 
	I0 => C4, 
	O => N00091
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
U1 : XOR2	PORT MAP(
	I1 => N00004, 
	I0 => T, 
	O => TQ
);
U2 : FDP	PORT MAP(
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

ENTITY RAM32X4 IS 
GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
); END RAM32X4;



ARCHITECTURE STRUCTURE OF RAM32X4 IS

-- COMPONENTS

COMPONENT RAM32X1
	GENERIC (
	INIT    : std_logic_vector(31 DOWNTO 0) := x"00000000");
	PORT (
	D : IN std_logic;
	WE : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D2, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O2
);
U2 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D3, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O3
);
U3 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D1, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O1
);
U4 : RAM32X1	GENERIC MAP (INIT => INIT)
PORT MAP(
	D => D0, 
	WE => WE, 
	A0 => A0, 
	A1 => A1, 
	A2 => A2, 
	A3 => A3, 
	A4 => A4, 
	O => O0
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
SIGNAL UDA : std_logic;
SIGNAL UDD : std_logic;
SIGNAL DA : std_logic;
SIGNAL DD : std_logic;
SIGNAL DC : std_logic;
SIGNAL UDC : std_logic;
SIGNAL UDB : std_logic;
SIGNAL N00053 : std_logic;
SIGNAL DC1 : std_logic;
SIGNAL UB2 : std_logic;
SIGNAL UB1 : std_logic;
SIGNAL ENT_P : std_logic;
SIGNAL CE : std_logic;
SIGNAL UD1 : std_logic;
SIGNAL RC : std_logic;
SIGNAL UD2 : std_logic;
SIGNAL UPD : std_logic;
SIGNAL URC : std_logic;
SIGNAL DB : std_logic;
SIGNAL N00067 : std_logic;
SIGNAL DND : std_logic;
SIGNAL DB3 : std_logic;
SIGNAL DD4 : std_logic;
SIGNAL DRC : std_logic;
SIGNAL DB2 : std_logic;
SIGNAL DD3 : std_logic;
SIGNAL DD1 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL DNB : std_logic;
SIGNAL N00055 : std_logic;
SIGNAL DB4 : std_logic;
SIGNAL UB4 : std_logic;
SIGNAL DC3 : std_logic;
SIGNAL DC2 : std_logic;
SIGNAL UPB : std_logic;
SIGNAL DNC : std_logic;
SIGNAL N00076 : std_logic;
SIGNAL UC1 : std_logic;
SIGNAL UPC : std_logic;
SIGNAL CC : std_logic;
SIGNAL DD2 : std_logic;
SIGNAL DB1 : std_logic;

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

COMPONENT AND5
	PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
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

COMPONENT AND2B2
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

COMPONENT AND3
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
SIGNAL N00304 : std_logic;
SIGNAL N00267 : std_logic;
SIGNAL N00235 : std_logic;
SIGNAL N00206 : std_logic;
SIGNAL N00170 : std_logic;
SIGNAL N00134 : std_logic;
SIGNAL N00103 : std_logic;
SIGNAL N00070 : std_logic;
SIGNAL N00292 : std_logic;
SIGNAL N00256 : std_logic;
SIGNAL N00224 : std_logic;
SIGNAL N00196 : std_logic;
SIGNAL N00159 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL T5_UP : std_logic;
SIGNAL T12_DN : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T13_UP : std_logic;
SIGNAL T9_UP : std_logic;
SIGNAL T14_DN : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T4_UP : std_logic;
SIGNAL T11_DN : std_logic;
SIGNAL T9_DN : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL T15 : std_logic;
SIGNAL T6 : std_logic;
SIGNAL T6_DN : std_logic;
SIGNAL T7_UP : std_logic;
SIGNAL T2 : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T8_DN : std_logic;
SIGNAL T10 : std_logic;
SIGNAL T14_UP : std_logic;
SIGNAL T10_UP : std_logic;
SIGNAL T7 : std_logic;
SIGNAL T4_DN : std_logic;
SIGNAL T6_UP : std_logic;
SIGNAL T14 : std_logic;
SIGNAL T15_DN : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL T9 : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T8 : std_logic;
SIGNAL T10_DN : std_logic;
SIGNAL T11_UP : std_logic;
SIGNAL T8_UP : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL T12_UP : std_logic;
SIGNAL T13_DN : std_logic;
SIGNAL T11 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T15_UP : std_logic;
SIGNAL T7_DN : std_logic;
SIGNAL T13 : std_logic;
SIGNAL T12 : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T1 : std_logic;
SIGNAL T5_DN : std_logic;
SIGNAL N14100 : std_logic;
SIGNAL N00329 : std_logic;
SIGNAL N00076 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00329;
Q15<=N00304;
Q0<=N00077;
Q1<=N00095;
Q2<=N00125;
Q3<=N00159;
Q4<=N00196;
Q5<=N00224;
Q6<=N00256;
Q7<=N00292;
Q8<=N00070;
Q9<=N00103;
Q10<=N00134;
Q11<=N00170;
Q12<=N00206;
Q13<=N00235;
Q14<=N00267;
U45 : AND4	PORT MAP(
	I0 => N00267, 
	I1 => N00235, 
	I2 => N00206, 
	I3 => T12, 
	O => T15_UP
);
U14 : AND4B4	PORT MAP(
	I0 => N00159, 
	I1 => N00125, 
	I2 => N00095, 
	I3 => N00077, 
	O => T4_DN
);
U47 : AND5	PORT MAP(
	I0 => T12, 
	I1 => N00206, 
	I2 => N00235, 
	I3 => N00267, 
	I4 => N00304, 
	O => TC_UP
);
U15 : AND4	PORT MAP(
	I0 => N00159, 
	I1 => N00125, 
	I2 => N00095, 
	I3 => N00077, 
	O => T4_UP
);
U17 : AND2	PORT MAP(
	I0 => N00196, 
	I1 => T4, 
	O => T5_UP
);
U50 : AND5	PORT MAP(
	I0 => T8, 
	I1 => N00070, 
	I2 => N00103, 
	I3 => N00134, 
	I4 => N00170, 
	O => T12_UP
);
U3 : VCC	PORT MAP(
	P => N00076
);
U52 : AND2B1	PORT MAP(
	I0 => N00196, 
	I1 => T4, 
	O => T5_DN
);
U5 : AND2B2	PORT MAP(
	I0 => N00095, 
	I1 => N00077, 
	O => T2_DN
);
U53 : AND3B2	PORT MAP(
	I0 => N00224, 
	I1 => N00196, 
	I2 => T4, 
	O => T6_DN
);
U6 : AND2	PORT MAP(
	I0 => N00095, 
	I1 => N00077, 
	O => T2_UP
);
U54 : AND4B3	PORT MAP(
	I0 => N00256, 
	I1 => N00224, 
	I2 => N00196, 
	I3 => T4, 
	O => T7_DN
);
U22 : AND3	PORT MAP(
	I0 => N00224, 
	I1 => N00196, 
	I2 => T4, 
	O => T6_UP
);
U55 : AND5B4	PORT MAP(
	I0 => N00292, 
	I1 => N00256, 
	I2 => N00224, 
	I3 => N00196, 
	I4 => T4, 
	O => T8_DN
);
U56 : AND2B1	PORT MAP(
	I0 => N00070, 
	I1 => T8, 
	O => T9_DN
);
U24 : AND4	PORT MAP(
	I0 => N00256, 
	I1 => N00224, 
	I2 => N00196, 
	I3 => T4, 
	O => T7_UP
);
U57 : AND3B2	PORT MAP(
	I0 => N00103, 
	I1 => N00070, 
	I2 => T8, 
	O => T10_DN
);
U58 : AND4B3	PORT MAP(
	I0 => N00134, 
	I1 => N00103, 
	I2 => N00070, 
	I3 => T8, 
	O => T11_DN
);
U26 : AND5	PORT MAP(
	I0 => T4, 
	I1 => N00196, 
	I2 => N00224, 
	I3 => N00256, 
	I4 => N00292, 
	O => T8_UP
);
U59 : AND5B4	PORT MAP(
	I0 => N00170, 
	I1 => N00134, 
	I2 => N00103, 
	I3 => N00070, 
	I4 => T8, 
	O => T12_DN
);
U29 : AND2	PORT MAP(
	I0 => N00070, 
	I1 => T8, 
	O => T9_UP
);
U60 : AND2B1	PORT MAP(
	I0 => N00206, 
	I1 => T12, 
	O => T13_DN
);
U61 : AND3B2	PORT MAP(
	I0 => N00235, 
	I1 => N00206, 
	I2 => T12, 
	O => T14_DN
);
U62 : AND4B3	PORT MAP(
	I0 => N00267, 
	I1 => N00235, 
	I2 => N00206, 
	I3 => T12, 
	O => T15_DN
);
U63 : AND5B4	PORT MAP(
	I0 => N00304, 
	I1 => N00267, 
	I2 => N00235, 
	I3 => N00206, 
	I4 => T12, 
	O => TC_DN
);
U64 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N00329, 
	O => CEO
);
U65 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N14100, 
	O => N00329
);
U34 : AND3	PORT MAP(
	I0 => N00103, 
	I1 => N00070, 
	I2 => T8, 
	O => T10_UP
);
U36 : AND4	PORT MAP(
	I0 => N00134, 
	I1 => N00103, 
	I2 => N00070, 
	I3 => T8, 
	O => T11_UP
);
U38 : AND2	PORT MAP(
	I0 => N00206, 
	I1 => T12, 
	O => T13_UP
);
U43 : AND3	PORT MAP(
	I0 => N00235, 
	I1 => N00206, 
	I2 => T12, 
	O => T14_UP
);
U11 : AND3B3	PORT MAP(
	I0 => N00125, 
	I1 => N00095, 
	I2 => N00077, 
	O => T3_DN
);
U12 : AND3	PORT MAP(
	I0 => N00125, 
	I1 => N00095, 
	I2 => N00077, 
	O => T3_UP
);
U33 : M2_1	PORT MAP(
	D0 => T9_DN, 
	D1 => T9_UP, 
	S0 => UP, 
	O => T9
);
U44 : M2_1	PORT MAP(
	D0 => T14_DN, 
	D1 => T14_UP, 
	S0 => UP, 
	O => T14
);
U23 : M2_1	PORT MAP(
	D0 => T6_DN, 
	D1 => T6_UP, 
	S0 => UP, 
	O => T6
);
U4 : M2_1B1	PORT MAP(
	D0 => N00077, 
	D1 => N00077, 
	S0 => UP, 
	O => T1
);
U46 : FTCLE	PORT MAP(
	D => D15, 
	L => L, 
	T => T15, 
	CE => CE, 
	C => C, 
	Q => N00304, 
	CLR => CLR
);
U35 : M2_1	PORT MAP(
	D0 => T10_DN, 
	D1 => T10_UP, 
	S0 => UP, 
	O => T10
);
U13 : M2_1	PORT MAP(
	D0 => T3_DN, 
	D1 => T3_UP, 
	S0 => UP, 
	O => T3
);
U25 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00292, 
	CLR => CLR
);
U48 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N14100
);
U37 : FTCLE	PORT MAP(
	D => D12, 
	L => L, 
	T => T12, 
	CE => CE, 
	C => C, 
	Q => N00206, 
	CLR => CLR
);
U7 : FTCLE	PORT MAP(
	D => D2, 
	L => L, 
	T => T2, 
	CE => CE, 
	C => C, 
	Q => N00125, 
	CLR => CLR
);
U49 : FTCLE	PORT MAP(
	D => D11, 
	L => L, 
	T => T11, 
	CE => CE, 
	C => C, 
	Q => N00170, 
	CLR => CLR
);
U16 : FTCLE	PORT MAP(
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00196, 
	CLR => CLR
);
U27 : M2_1	PORT MAP(
	D0 => T8_DN, 
	D1 => T8_UP, 
	S0 => UP, 
	O => T8
);
U8 : FTCLE	PORT MAP(
	D => D3, 
	L => L, 
	T => T3, 
	CE => CE, 
	C => C, 
	Q => N00159, 
	CLR => CLR
);
U39 : FTCLE	PORT MAP(
	D => D13, 
	L => L, 
	T => T13, 
	CE => CE, 
	C => C, 
	Q => N00235, 
	CLR => CLR
);
U28 : FTCLE	PORT MAP(
	D => D8, 
	L => L, 
	T => T8, 
	CE => CE, 
	C => C, 
	Q => N00070, 
	CLR => CLR
);
U9 : M2_1	PORT MAP(
	D0 => T4_DN, 
	D1 => T4_UP, 
	S0 => UP, 
	O => T4
);
U18 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00224, 
	CLR => CLR
);
U19 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00256, 
	CLR => CLR
);
U51 : M2_1	PORT MAP(
	D0 => T12_DN, 
	D1 => T12_UP, 
	S0 => UP, 
	O => T12
);
U40 : FTCLE	PORT MAP(
	D => D14, 
	L => L, 
	T => T14, 
	CE => CE, 
	C => C, 
	Q => N00267, 
	CLR => CLR
);
U41 : M2_1	PORT MAP(
	D0 => T15_DN, 
	D1 => T15_UP, 
	S0 => UP, 
	O => T15
);
U30 : FTCLE	PORT MAP(
	D => D9, 
	L => L, 
	T => T9, 
	CE => CE, 
	C => C, 
	Q => N00103, 
	CLR => CLR
);
U31 : FTCLE	PORT MAP(
	D => D10, 
	L => L, 
	T => T10, 
	CE => CE, 
	C => C, 
	Q => N00134, 
	CLR => CLR
);
U42 : M2_1	PORT MAP(
	D0 => T13_DN, 
	D1 => T13_UP, 
	S0 => UP, 
	O => T13
);
U20 : M2_1	PORT MAP(
	D0 => T7_DN, 
	D1 => T7_UP, 
	S0 => UP, 
	O => T7
);
U1 : FTCLE	PORT MAP(
	D => D0, 
	L => L, 
	T => N00076, 
	CE => CE, 
	C => C, 
	Q => N00077, 
	CLR => CLR
);
U32 : M2_1	PORT MAP(
	D0 => T11_DN, 
	D1 => T11_UP, 
	S0 => UP, 
	O => T11
);
U21 : M2_1	PORT MAP(
	D0 => T5_DN, 
	D1 => T5_UP, 
	S0 => UP, 
	O => T5
);
U2 : FTCLE	PORT MAP(
	D => D1, 
	L => L, 
	T => T1, 
	CE => CE, 
	C => C, 
	Q => N00095, 
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

COMPONENT AND4B3
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
SIGNAL N00143 : std_logic;
SIGNAL N00125 : std_logic;
SIGNAL N00109 : std_logic;
SIGNAL N00095 : std_logic;
SIGNAL N00077 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00047 : std_logic;
SIGNAL N00037 : std_logic;
SIGNAL T5_UP : std_logic;
SIGNAL T7_UP : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL T5 : std_logic;
SIGNAL T4 : std_logic;
SIGNAL T3 : std_logic;
SIGNAL T4_UP : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL T7 : std_logic;
SIGNAL \T4-DN\ : std_logic;
SIGNAL T6_DN : std_logic;
SIGNAL T5_DN : std_logic;
SIGNAL T7_DN : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T2_UP : std_logic;
SIGNAL N00036 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T6_UP : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T6 : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL N02335 : std_logic;
SIGNAL N06711 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N02335;
Q0<=N00037;
Q1<=N00047;
Q2<=N00061;
Q3<=N00077;
Q4<=N00095;
Q5<=N00109;
Q6<=N00125;
Q7<=N00143;
U14 : AND4B4	PORT MAP(
	I0 => N00077, 
	I1 => N00061, 
	I2 => N00047, 
	I3 => N00037, 
	O => \T4-DN\
);
U15 : AND4	PORT MAP(
	I0 => N00077, 
	I1 => N00061, 
	I2 => N00047, 
	I3 => N00037, 
	O => T4_UP
);
U17 : AND2	PORT MAP(
	I0 => N00095, 
	I1 => T4, 
	O => T5_UP
);
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
U22 : AND3	PORT MAP(
	I0 => N00109, 
	I1 => N00095, 
	I2 => T4, 
	O => T6_UP
);
U24 : AND4	PORT MAP(
	I0 => N00125, 
	I1 => N00109, 
	I2 => N00095, 
	I3 => T4, 
	O => T7_UP
);
U26 : AND5	PORT MAP(
	I0 => T4, 
	I1 => N00095, 
	I2 => N00109, 
	I3 => N00125, 
	I4 => N00143, 
	O => TC_UP
);
U28 : AND2B1	PORT MAP(
	I0 => N00095, 
	I1 => T4, 
	O => T5_DN
);
U29 : AND3B2	PORT MAP(
	I0 => N00109, 
	I1 => N00095, 
	I2 => T4, 
	O => T6_DN
);
U30 : AND4B3	PORT MAP(
	I0 => N00125, 
	I1 => N00109, 
	I2 => N00095, 
	I3 => T4, 
	O => T7_DN
);
U31 : AND5B4	PORT MAP(
	I0 => N00143, 
	I1 => N00125, 
	I2 => N00109, 
	I3 => N00095, 
	I4 => T4, 
	O => TC_DN
);
U32 : AND2	PORT MAP(
	I0 => CE, 
	I1 => N02335, 
	O => CEO
);
U33 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N06711, 
	O => N02335
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
U23 : M2_1	PORT MAP(
	D0 => T6_DN, 
	D1 => T6_UP, 
	S0 => UP, 
	O => T6
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
U25 : FTCLE	PORT MAP(
	D => D7, 
	L => L, 
	T => T7, 
	CE => CE, 
	C => C, 
	Q => N00143, 
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
	D => D4, 
	L => L, 
	T => T4, 
	CE => CE, 
	C => C, 
	Q => N00095, 
	CLR => CLR
);
U27 : M2_1	PORT MAP(
	D0 => TC_DN, 
	D1 => TC_UP, 
	S0 => UP, 
	O => N06711
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
U9 : M2_1	PORT MAP(
	D0 => \T4-DN\, 
	D1 => T4_UP, 
	S0 => UP, 
	O => T4
);
U18 : FTCLE	PORT MAP(
	D => D5, 
	L => L, 
	T => T5, 
	CE => CE, 
	C => C, 
	Q => N00109, 
	CLR => CLR
);
U19 : FTCLE	PORT MAP(
	D => D6, 
	L => L, 
	T => T6, 
	CE => CE, 
	C => C, 
	Q => N00125, 
	CLR => CLR
);
U20 : M2_1	PORT MAP(
	D0 => T7_DN, 
	D1 => T7_UP, 
	S0 => UP, 
	O => T7
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
	D0 => T5_DN, 
	D1 => T5_UP, 
	S0 => UP, 
	O => T5
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
SIGNAL N00045 : std_logic;
SIGNAL T3_DN : std_logic;
SIGNAL TC_UP : std_logic;
SIGNAL T2 : std_logic;
SIGNAL T2_DN : std_logic;
SIGNAL T3 : std_logic;
SIGNAL TC_DN : std_logic;
SIGNAL T3_UP : std_logic;
SIGNAL N00031 : std_logic;
SIGNAL N00061 : std_logic;
SIGNAL N00693 : std_logic;
SIGNAL N01858 : std_logic;
SIGNAL N00020 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00021 : std_logic;
SIGNAL T2_UP : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00693;
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
	I1 => N00693, 
	O => CEO
);
U17 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N01858, 
	O => N00693
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
	O => N01858
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
SIGNAL N00031 : std_logic;
SIGNAL N00028 : std_logic;
SIGNAL N00023 : std_logic;
SIGNAL N00641 : std_logic;
SIGNAL N00644 : std_logic;
SIGNAL N00012 : std_logic;
SIGNAL T1 : std_logic;
SIGNAL N00013 : std_logic;

-- GATE INSTANCES

BEGIN
TC<=N00641;
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
	I1 => N00641, 
	O => CEO
);
U9 : AND2B1	PORT MAP(
	I0 => CLR, 
	I1 => N00644, 
	O => N00641
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
	O => N00644
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

ENTITY FTCLEX IS PORT (
	D : IN std_logic;
	L : IN std_logic;
	T : IN std_logic;
	CE : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CLR : IN std_logic
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
U3 : FDCE	PORT MAP(
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

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFDX_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END IFDX_1;



ARCHITECTURE STRUCTURE OF IFDX_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT IFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB:std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV    PORT MAP( 
	I => C, 
	O => CB
);
U2 : IFDX	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q, 
	CE => CE
);

END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFDXI_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
); END IFDXI_1;


ARCHITECTURE STRUCTURE OF IFDXI_1 IS

-- COMPONENTS

COMPONENT INV
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

COMPONENT IFDXI
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';
SIGNAL CB:std_logic;

-- GATE INSTANCES

BEGIN
U1 : INV    PORT MAP( 
	I => C, 
	O => CB
);
U2 : IFDXI	PORT MAP(
	D => D, 
	C => CB, 
	Q => Q, 
	CE => CE
);

END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDX16 IS PORT (
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
); END OFDX16;



ARCHITECTURE STRUCTURE OF OFDX16 IS

-- COMPONENTS

COMPONENT OFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDX    PORT MAP( 
	D => D0,
	CE => CE,
	C => C,
	Q => Q0
);

U2 : OFDX	PORT MAP(
	D => D1, 
 	CE => CE,
	C => C,
	Q => Q1
);

U3 : OFDX PORT MAP(
	D => D2,
	CE => CE,
	C => C,
	Q => Q2
);

U4 : OFDX PORT MAP(
	D => D3,
	CE => CE,
	C => C,
	Q => Q3
);

U5 : OFDX PORT MAP(
	D => D4,
	CE => CE,
	C => C,
	Q => Q4
);

U6 : OFDX PORT MAP(
	D => D5,
	CE => CE,
	C => C,
	Q => Q5
);

U7 : OFDX PORT MAP(
	D => D6,
	CE => CE,
	C => C,
	Q => Q6
);

U8 : OFDX PORT MAP(
	D => D7,
	CE => CE,
	C => C,
	Q => Q7
);

U9 : OFDX PORT MAP(
	D => D8,
	CE => CE,
	C => C,
	Q => Q8
);

U10 : OFDX PORT MAP(
	D => D9,
	CE => CE,
	C => C,
	Q => Q9
);

U11 : OFDX PORT MAP(
	D => D10,
	CE => CE,
	C => C,
	Q => Q10
);

U12 : OFDX PORT MAP(
	D => D11,
	CE => CE,
	C => C,
	Q => Q11
);

U13 : OFDX PORT MAP(
	D => D12,
	CE => CE,
	C => C,
	Q => Q12
);

U14 : OFDX PORT MAP(
	D => D13,
	CE => CE,
	C => C,
	Q => Q13
);

U15 : OFDX PORT MAP(
	D => D14,
	CE => CE,
	C => C,
	Q => Q14
);

U16 : OFDX PORT MAP(
	D => D15,
	CE => CE,
	C => C,
	Q => Q15
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDX4 IS PORT (
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
); END OFDX4;



ARCHITECTURE STRUCTURE OF OFDX4 IS

-- COMPONENTS

COMPONENT OFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDX    PORT MAP( 
	D => D0,
	CE => CE,
	C => C,
	Q => Q0
);

U2 : OFDX	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);

U3 : OFDX PORT MAP(
	D => D2,
	CE => CE,
	C => C,
	Q => Q2
);

U4 : OFDX PORT MAP(
	D => D3,
	CE => CE,
	C => C,
	Q => Q3
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDX8 IS PORT (
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
); END OFDX8;



ARCHITECTURE STRUCTURE OF OFDX8 IS

-- COMPONENTS

COMPONENT OFDX
	PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic:='X';

-- GATE INSTANCES

BEGIN
U1 : OFDX    PORT MAP( 
	D => D0,
	CE => CE,
	C => C,
	Q => Q0
);

U2 : OFDX	PORT MAP(
	D => D1, 
	C => C, 
	Q => Q1, 
	CE => CE
);

U3 : OFDX PORT MAP(
	D => D2,
	CE => CE,
	C => C,
	Q => Q2
);

U4 : OFDX PORT MAP(
	D => D3,
	CE => CE,
	C => C,
	Q => Q3
);

U5 : OFDX PORT MAP(
	D => D4,
	CE => CE,
	C => C,
	Q => Q4
);

U6 : OFDX PORT MAP(
	D => D5,
	CE => CE,
	C => C,
	Q => Q5
);

U7 : OFDX PORT MAP(
	D => D6,
	CE => CE,
	C => C,
	Q => Q6
);

U8 : OFDX PORT MAP(
	D => D7,
	CE => CE,
	C => C,
	Q => Q7
); 
END STRUCTURE;

