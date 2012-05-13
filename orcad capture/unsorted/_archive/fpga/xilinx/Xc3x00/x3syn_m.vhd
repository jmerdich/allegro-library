-- OrCAD Xilinx 3K Synthesis Macro Library
-- Copyright (C) 1998 OrCAD, Inc.  All rights reserved.
--
-- This library contains:
--   * Macros whose ports differ from the synthesis libraries
--   * I/O macro definitions
--
-- It may be removed from projects that don't contain schematic .dsn files.
--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FD IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	GR : IN std_logic := 'U';
	Q : OUT std_logic
	);
END FD;

ARCHITECTURE STRUCTURE OF FD IS

	COMPONENT FDCE
		PORT (
		D : IN std_logic;
		CE : IN std_logic;
		C : IN std_logic;
		CLR : IN std_logic;
		GR : IN std_logic;
		Q : OUT std_logic
		);
	END COMPONENT;

BEGIN
U3 : FDCE	PORT MAP(
	D => D, 
	CE => '1',
	C => C, 
	CLR => '0',
	GR => GR,
	Q => Q
	);
END STRUCTURE; -- fd


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FDC IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	CLR : IN std_logic;
	GR : IN std_logic := 'U'; -- unused
	Q : OUT std_logic
	);
 END FDC;

ARCHITECTURE STRUCTURE OF FDC IS

	COMPONENT FDCE
		PORT (
		D : IN std_logic;
		CE : IN std_logic;
		C : IN std_logic;
		CLR : IN std_logic;
		GR : IN std_logic;
		Q : OUT std_logic
		);
	END COMPONENT;
	
BEGIN
U1 : FDCE	PORT MAP(
	D => D, 
	CE => '1',
	C => C, 
	CLR => CLR, 
	GR => GR,
	Q => Q
	);
END STRUCTURE; -- fdc

-------------------------------------------------------------------------------
-- I/O Macros
-------------------------------------------------------------------------------

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

	COMPONENT IBUF
		PORT (
		O : OUT std_logic;
		I : IN std_logic
		); END COMPONENT;

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
END STRUCTURE; --ibuf4

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

	COMPONENT IBUF
		PORT (
		O : OUT std_logic;
		I : IN std_logic
		); END COMPONENT;

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
END STRUCTURE; --ibuf8

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

	COMPONENT IBUF
		PORT (
		O : OUT std_logic;
		I : IN std_logic
		); END COMPONENT;

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
END STRUCTURE; --ibuf16


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

	COMPONENT IFD	 PORT (
		D : IN std_logic;
		C : IN std_logic;
		Q : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ifd4


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

	COMPONENT IFD	 PORT (
		D : IN std_logic;
		C : IN std_logic;
		Q : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ifd8


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

	COMPONENT IFD	 PORT (
		D : IN std_logic;
		C : IN std_logic;
		Q : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ifd16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IFD_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END IFD_1;

ARCHITECTURE STRUCTURE OF IFD_1 IS

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

	SIGNAL CB : std_logic;

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
END STRUCTURE; --ifd_1


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

	COMPONENT ILD	 PORT (
		D : IN std_logic;
		G : IN std_logic;
		Q : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ild4


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

	COMPONENT ILD	 PORT (
		D : IN std_logic;
		G : IN std_logic;
		Q : OUT std_logic
	); END COMPONENT;
	
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
END STRUCTURE; --ild8


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

	COMPONENT ILD	 PORT (
		D : IN std_logic;
		G : IN std_logic;
		Q : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ild16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ILD_1 IS PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
); END ILD_1;

ARCHITECTURE STRUCTURE OF ILD_1 IS

COMPONENT ILD
	PORT (
	D : IN std_logic;
	G : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

SIGNAL GB : std_logic;

BEGIN
U1 : INV	PORT MAP(
	I => G, 
	O => GB
);
U2 : ILD	PORT MAP(
	D => D, 
	G => GB, 
	Q => Q 
);
END STRUCTURE; --ild_1


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IOPAD4 IS PORT (
	IO0 : INOUT std_logic;
	IO1 : INOUT std_logic;
	IO2 : INOUT std_logic;
	IO3 : INOUT std_logic
); END IOPAD4;

ARCHITECTURE STRUCTURE OF IOPAD4 IS

COMPONENT IOPAD
	PORT (
	IOPAD : INOUT std_logic
	); END COMPONENT;

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
END STRUCTURE; -- iopad4


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

COMPONENT IOPAD
	PORT (
	IOPAD : INOUT std_logic
	); END COMPONENT;

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
END STRUCTURE; -- iopad8


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

COMPONENT IOPAD
	PORT (
	IOPAD : INOUT std_logic
	); END COMPONENT;

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
END STRUCTURE; -- iopad16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IPAD4 IS PORT (
	I0 : OUT std_logic;
	I1 : OUT std_logic;
	I2 : OUT std_logic;
	I3 : OUT std_logic
); END IPAD4;

ARCHITECTURE STRUCTURE OF IPAD4 IS

COMPONENT IPAD
	PORT (
	IPAD : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; -- ipad4


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

COMPONENT IPAD
	PORT (
	IPAD : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ipad8


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

COMPONENT IPAD
	PORT (
	IPAD : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ipad16




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

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

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
END STRUCTURE; -- obuf4


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

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

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
END STRUCTURE; -- obuf8


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

COMPONENT OBUF
	PORT (
	O : OUT std_logic;
	I : IN std_logic
	); END COMPONENT;

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
END STRUCTURE; -- obuf16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OBUFE IS PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END OBUFE;

ARCHITECTURE STRUCTURE OF OBUFE IS

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

SIGNAL T : std_logic;

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
END STRUCTURE; --obufe


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

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; --obufe4


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

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; --obufe8


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

COMPONENT OBUFE	 PORT (
	E : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; --obufe16


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

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --obuft4


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

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --obuft8


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

COMPONENT OBUFT
	PORT (
	T : IN std_logic;
	I : IN std_logic;
	O : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --obuft16


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

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;


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
END STRUCTURE; -- ofd4


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

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; -- ofd8


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

COMPONENT OFD	 PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END COMPONENT;

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
	Q => Q15
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
END STRUCTURE; -- ofd16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFD_1 IS PORT (
	D : IN std_logic;
	C : IN std_logic;
	Q : OUT std_logic
); END OFD_1;

ARCHITECTURE STRUCTURE OF OFD_1 IS

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

SIGNAL CB : std_logic;

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
END STRUCTURE; --ofd_1


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDE;

ARCHITECTURE STRUCTURE OF OFDE IS

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

SIGNAL EB : std_logic;

BEGIN
U1 : OFDT	PORT MAP(
	T => EB, 
	D => D, 
	C => C, 
	O => O
);
U2 : INV	PORT MAP(
	O => EB, 
	I => E
);
END STRUCTURE; --ofde


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

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; -- ofde4


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

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; -- ofde8


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

COMPONENT OFDE	 PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; -- ofde16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDE_1 IS PORT (
	E : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDE_1;

ARCHITECTURE STRUCTURE OF OFDE_1 IS

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

SIGNAL CB : std_logic;
SIGNAL T : std_logic;

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
END STRUCTURE; --ofde_1


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

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE;  --ofdt4


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

COMPONENT OFDT	 PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT std_logic
); END COMPONENT;

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
END STRUCTURE; --ofdt8


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

	COMPONENT OFDT	 PORT (
		T : IN std_logic;
		D : IN std_logic;
		C : IN std_logic;
		O : OUT std_logic
	); END COMPONENT;

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
END STRUCTURE; --ofdt16


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OFDT_1 IS PORT (
	T : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	O : OUT   std_logic
); END OFDT_1;

ARCHITECTURE STRUCTURE OF OFDT_1 IS

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

SIGNAL CB : std_logic;

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
END STRUCTURE; --ofdt_1


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY OPAD4 IS PORT (
	O0 : IN std_logic;
	O1 : IN std_logic;
	O2 : IN std_logic;
	O3 : IN std_logic
); END OPAD4;

ARCHITECTURE STRUCTURE OF OPAD4 IS

COMPONENT OPAD
	PORT (
	OPAD : IN std_logic
	); END COMPONENT;

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
END STRUCTURE; -- opad4


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

COMPONENT OPAD
	PORT (
	OPAD : IN std_logic
	); END COMPONENT;

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
END STRUCTURE; --opad8


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

COMPONENT OPAD
	PORT (
	OPAD : IN std_logic
	); END COMPONENT;

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
END STRUCTURE; --opad16
