--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   
   
-- Purpose:		OrCAD VHDL Source File
-- Version:		v7.00.01
-- Date:			February 24, 1997
-- File:			S.VHD
-- Resource:	  National, Logic Data Book, 1984
-- Delay units:	  Nanoseconds
-- Characteristics: 74SXXXX MIN/MAX, Vcc=5V +/-0.5 V

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  


 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S00\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S00\;

ARCHITECTURE model OF \74S00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 5 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 5 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 5 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S02\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S02\;

ARCHITECTURE model OF \74S02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 6 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 6 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S03\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S03\;

ARCHITECTURE model OF \74S03\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 8 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 8 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S04\ IS PORT(
I_A : IN  std_logic;
I_B : IN  std_logic;
I_C : IN  std_logic;
I_D : IN  std_logic;
I_E : IN  std_logic;
I_F : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
O_E : OUT  std_logic;
O_F : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S04\;

ARCHITECTURE model OF \74S04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 5 ns;
    O_B <= NOT ( I_B ) AFTER 5 ns;
    O_C <= NOT ( I_C ) AFTER 5 ns;
    O_D <= NOT ( I_D ) AFTER 5 ns;
    O_E <= NOT ( I_E ) AFTER 5 ns;
    O_F <= NOT ( I_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S05\ IS PORT(
I_A : IN  std_logic;
I_B : IN  std_logic;
I_C : IN  std_logic;
I_D : IN  std_logic;
I_E : IN  std_logic;
I_F : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
O_E : OUT  std_logic;
O_F : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S05\;

ARCHITECTURE model OF \74S05\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 8 ns;
    O_B <= NOT ( I_B ) AFTER 8 ns;
    O_C <= NOT ( I_C ) AFTER 8 ns;
    O_D <= NOT ( I_D ) AFTER 8 ns;
    O_E <= NOT ( I_E ) AFTER 8 ns;
    O_F <= NOT ( I_F ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S08\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S08\;

ARCHITECTURE model OF \74S08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 8 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 8 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 8 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S09\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S09\;

ARCHITECTURE model OF \74S09\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 10 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 10 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 10 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S10\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I2_C : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S10\;

ARCHITECTURE model OF \74S10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 5 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 5 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S11\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I2_C : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S11\;

ARCHITECTURE model OF \74S11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 8 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 8 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S15\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I2_C : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S15\;

ARCHITECTURE model OF \74S15\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 9 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 9 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S20\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S20\;

ARCHITECTURE model OF \74S20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 5 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S22\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S22\;

ARCHITECTURE model OF \74S22\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S30\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S30\;

ARCHITECTURE model OF \74S30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S32\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S32\;

ARCHITECTURE model OF \74S32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 7 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 7 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 7 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S37\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S37\;

ARCHITECTURE model OF \74S37\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 7 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 7 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 7 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S38\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S38\;

ARCHITECTURE model OF \74S38\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 10 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 10 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 10 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S40\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S40\;

ARCHITECTURE model OF \74S40\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 7 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S51\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\1C\ : IN  std_logic;
\1D\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\2C\ : IN  std_logic;
\2D\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S51\;

ARCHITECTURE model OF \74S51\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( \2A\ AND \2B\ );
    L2 <=  ( \2C\ AND \2D\ );
    \2Y\ <= NOT ( L1 OR L2 ) AFTER 6 ns;
    L3 <=  ( \1A\ AND \1B\ );
    L4 <=  ( \1C\ AND \1D\ );
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S64\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
I : IN  std_logic;
J : IN  std_logic;
K : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S64\;

ARCHITECTURE model OF \74S64\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( A AND B AND C AND D );
    L2 <=  ( E AND F );
    L3 <=  ( G AND H AND I );
    L4 <=  ( J AND K );
    Y <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S65\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
I : IN  std_logic;
J : IN  std_logic;
K : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S65\;

ARCHITECTURE model OF \74S65\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( A AND B AND C AND D );
    L2 <=  ( E AND F );
    L3 <=  ( G AND H AND I );
    L4 <=  ( J AND K );
    Y <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S74\ IS PORT(
D_A : IN  std_logic;
D_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74S74\;

ARCHITECTURE model OF \74S74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S85\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
\A<Bi\ : IN  std_logic;
\A=Bi\ : IN  std_logic;
\A>Bi\ : IN  std_logic;
\A<Bo\ : OUT  std_logic;
\A=Bo\ : OUT  std_logic;
\A>Bo\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S85\;

ARCHITECTURE model OF \74S85\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( A3 AND B3 );
    L2 <= NOT ( A2 AND B2 );
    L3 <= NOT ( A1 AND B1 );
    L4 <= NOT ( A0 AND B0 );
    L5 <=  ( A3 AND L1 );
    L6 <=  ( L1 AND B3 );
    L7 <=  ( A2 AND L2 );
    L8 <=  ( L2 AND B2 );
    L9 <=  ( A1 AND L3 );
    L10 <=  ( L3 AND B1 );
    L11 <=  ( A0 AND L4 );
    L12 <=  ( L4 AND B0 );
    N1 <= NOT ( L5 OR L6 ) AFTER 8 ns;
    N2 <= NOT ( L7 OR L8 ) AFTER 8 ns;
    N3 <= NOT ( L9 OR L10 ) AFTER 8 ns;
    N4 <= NOT ( L11 OR L12 ) AFTER 8 ns;
    N5 <=  ( L6 ) AFTER 8 ns;
    N6 <=  ( L5 ) AFTER 8 ns;
    L13 <=  ( B2 AND L2 AND N1 );
    L14 <=  ( B1 AND L3 AND N1 AND N2 );
    L15 <=  ( B0 AND L4 AND N1 AND N2 AND N3 );
    L16 <=  ( N1 AND N2 AND N3 AND N4 AND \A<Bi\ );
    L17 <=  ( N1 AND N2 AND N3 AND N4 AND \A=Bi\ );
    L18 <=  ( \A=Bi\ AND N4 AND N3 AND N2 AND N1 );
    L19 <=  ( \A>Bi\ AND N4 AND N2 AND N3 AND N1 );
    L20 <=  ( N3 AND N2 AND N1 AND L4 AND A0 );
    L21 <=  ( N2 AND N1 AND L3 AND A1 );
    L22 <=  ( N1 AND L2 AND A2 );
    \A>Bo\ <= NOT ( N5 OR L13 OR L14 OR L15 OR L16 OR L17 ) AFTER 9 ns;
    \A<Bo\ <= NOT ( L18 OR L19 OR L20 OR L21 OR L22 OR N6 ) AFTER 9 ns;
    \A=Bo\ <=  ( N1 AND N2 AND \A=Bi\ AND N3 AND N4 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S86\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S86\;

ARCHITECTURE model OF \74S86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 11 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 11 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 11 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S112\ IS PORT(
J_A : IN  std_logic;
J_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
K_A : IN  std_logic;
K_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74S112\;

ARCHITECTURE model OF \74S112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S112A\ IS PORT(
J_A : IN  std_logic;
J_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
K_A : IN  std_logic;
K_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74S112A\;

ARCHITECTURE model OF \74S112A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S113\ IS PORT(
J_A : IN  std_logic;
J_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
K_A : IN  std_logic;
K_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic);
END \74S113\;

ARCHITECTURE model OF \74S113\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFP_0 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_1 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S113A\ IS PORT(
J_A : IN  std_logic;
J_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
K_A : IN  std_logic;
K_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic);
END \74S113A\;

ARCHITECTURE model OF \74S113A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFP_2 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_3 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S114\ IS PORT(
J_A : IN  std_logic;
J_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
K_A : IN  std_logic;
K_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74S114\;

ARCHITECTURE model OF \74S114\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S114A\ IS PORT(
J_A : IN  std_logic;
J_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
K_A : IN  std_logic;
K_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC : IN  std_logic;
PR_A : IN  std_logic;
PR_B : IN  std_logic;
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74S114A\;

ARCHITECTURE model OF \74S114A\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S132\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S132\;

ARCHITECTURE model OF \74S132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 13 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 13 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 13 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S133\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
I9 : IN  std_logic;
I10 : IN  std_logic;
I11 : IN  std_logic;
I12 : IN  std_logic;
O : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S133\;

ARCHITECTURE model OF \74S133\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11 AND I12 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S134\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
I9 : IN  std_logic;
I10 : IN  std_logic;
I11 : IN  std_logic;
O : OUT  std_logic;
OE : IN  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S134\;

ARCHITECTURE model OF \74S134\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( OE );
    N1 <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11 ) AFTER 8 ns;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>O , i1=>N1 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S135\ IS PORT(
\1A_A\ : IN  std_logic;
\1A_B\ : IN  std_logic;
\1B_A\ : IN  std_logic;
\1B_B\ : IN  std_logic;
C_A : IN  std_logic;
C_B : IN  std_logic;
\2A_A\ : IN  std_logic;
\2A_B\ : IN  std_logic;
\2B_A\ : IN  std_logic;
\2B_B\ : IN  std_logic;
\1Y_A\ : OUT  std_logic;
\1Y_B\ : OUT  std_logic;
\2Y_A\ : OUT  std_logic;
\2Y_B\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S135\;

ARCHITECTURE model OF \74S135\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( \1A_A\ XOR \1B_A\ ) AFTER 3 ns;
    N2 <=  ( \2A_A\ XOR \2B_A\ ) AFTER 3 ns;
    N3 <=  ( \1A_B\ XOR \1B_B\ ) AFTER 3 ns;
    N4 <=  ( \2A_B\ XOR \2B_B\ ) AFTER 3 ns;
    \1Y_A\ <=  ( N1 XOR C_A ) AFTER 15 ns;
    \2Y_A\ <=  ( N2 XOR C_A ) AFTER 15 ns;
    \1Y_B\ <=  ( N3 XOR C_B ) AFTER 15 ns;
    \2Y_B\ <=  ( N4 XOR C_B ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S136\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S136\;

ARCHITECTURE model OF \74S136\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 13 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 13 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 13 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S138\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
G1 : IN  std_logic;
G2A : IN  std_logic;
G2B : IN  std_logic;
Y0 : OUT  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S138\;

ARCHITECTURE model OF \74S138\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 7 ns;
    N2 <=  ( B ) AFTER 7 ns;
    N3 <=  ( C ) AFTER 7 ns;
    N4 <= NOT ( A ) AFTER 6 ns;
    N5 <= NOT ( B ) AFTER 6 ns;
    N6 <= NOT ( C ) AFTER 6 ns;
    N7 <=  ( G1 ) AFTER 6 ns;
    N8 <= NOT ( G2A OR G2B ) AFTER 6 ns;
    L1 <=  ( N7 AND N8 );
    Y0 <= NOT ( N4 AND N5 AND N6 AND L1 ) AFTER 5 ns;
    Y1 <= NOT ( N1 AND N5 AND N6 AND L1 ) AFTER 5 ns;
    Y2 <= NOT ( N4 AND N2 AND N6 AND L1 ) AFTER 5 ns;
    Y3 <= NOT ( N1 AND N2 AND N6 AND L1 ) AFTER 5 ns;
    Y4 <= NOT ( N4 AND N5 AND N3 AND L1 ) AFTER 5 ns;
    Y5 <= NOT ( N1 AND N5 AND N3 AND L1 ) AFTER 5 ns;
    Y6 <= NOT ( N4 AND N2 AND N3 AND L1 ) AFTER 5 ns;
    Y7 <= NOT ( N1 AND N2 AND N3 AND L1 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S138A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
G1 : IN  std_logic;
G2A : IN  std_logic;
G2B : IN  std_logic;
Y0 : OUT  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S138A\;

ARCHITECTURE model OF \74S138A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 7 ns;
    N2 <=  ( B ) AFTER 7 ns;
    N3 <=  ( C ) AFTER 7 ns;
    N4 <= NOT ( A ) AFTER 6 ns;
    N5 <= NOT ( B ) AFTER 6 ns;
    N6 <= NOT ( C ) AFTER 6 ns;
    N7 <=  ( G1 ) AFTER 6 ns;
    N8 <= NOT ( G2A OR G2B ) AFTER 6 ns;
    L1 <=  ( N7 AND N8 );
    Y0 <= NOT ( N4 AND N5 AND N6 AND L1 ) AFTER 5 ns;
    Y1 <= NOT ( N1 AND N5 AND N6 AND L1 ) AFTER 5 ns;
    Y2 <= NOT ( N4 AND N2 AND N6 AND L1 ) AFTER 5 ns;
    Y3 <= NOT ( N1 AND N2 AND N6 AND L1 ) AFTER 5 ns;
    Y4 <= NOT ( N4 AND N5 AND N3 AND L1 ) AFTER 5 ns;
    Y5 <= NOT ( N1 AND N5 AND N3 AND L1 ) AFTER 5 ns;
    Y6 <= NOT ( N4 AND N2 AND N3 AND L1 ) AFTER 5 ns;
    Y7 <= NOT ( N1 AND N2 AND N3 AND L1 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S139\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
G_A : IN  std_logic;
G_B : IN  std_logic;
Y0_A : OUT  std_logic;
Y0_B : OUT  std_logic;
Y1_A : OUT  std_logic;
Y1_B : OUT  std_logic;
Y2_A : OUT  std_logic;
Y2_B : OUT  std_logic;
Y3_A : OUT  std_logic;
Y3_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S139\;

ARCHITECTURE model OF \74S139\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;

    BEGIN
    N1 <= NOT ( G_A ) AFTER 5 ns;
    N2 <=  ( A_A ) AFTER 7 ns;
    N3 <=  ( B_A ) AFTER 7 ns;
    N4 <= NOT ( A_A ) AFTER 5 ns;
    N5 <= NOT ( B_A ) AFTER 5 ns;
    N6 <= NOT ( G_B ) AFTER 5 ns;
    N7 <=  ( A_B ) AFTER 7 ns;
    N8 <=  ( B_B ) AFTER 7 ns;
    N9 <= NOT ( A_B ) AFTER 5 ns;
    N10 <= NOT ( B_B ) AFTER 5 ns;
    Y0_A <= NOT ( N4 AND N5 AND N1 ) AFTER 5 ns;
    Y1_A <= NOT ( N2 AND N5 AND N1 ) AFTER 5 ns;
    Y2_A <= NOT ( N4 AND N3 AND N1 ) AFTER 5 ns;
    Y3_A <= NOT ( N2 AND N3 AND N1 ) AFTER 5 ns;
    Y0_B <= NOT ( N9 AND N10 AND N6 ) AFTER 5 ns;
    Y1_B <= NOT ( N10 AND N7 AND N6 ) AFTER 5 ns;
    Y2_B <= NOT ( N9 AND N8 AND N6 ) AFTER 5 ns;
    Y3_B <= NOT ( N7 AND N8 AND N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S139A\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
G_A : IN  std_logic;
G_B : IN  std_logic;
Y0_A : OUT  std_logic;
Y0_B : OUT  std_logic;
Y1_A : OUT  std_logic;
Y1_B : OUT  std_logic;
Y2_A : OUT  std_logic;
Y2_B : OUT  std_logic;
Y3_A : OUT  std_logic;
Y3_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S139A\;

ARCHITECTURE model OF \74S139A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;

    BEGIN
    N1 <= NOT ( G_A ) AFTER 5 ns;
    N2 <=  ( A_A ) AFTER 7 ns;
    N3 <=  ( B_A ) AFTER 7 ns;
    N4 <= NOT ( A_A ) AFTER 5 ns;
    N5 <= NOT ( B_A ) AFTER 5 ns;
    N6 <= NOT ( G_B ) AFTER 5 ns;
    N7 <=  ( A_B ) AFTER 7 ns;
    N8 <=  ( B_B ) AFTER 7 ns;
    N9 <= NOT ( A_B ) AFTER 5 ns;
    N10 <= NOT ( B_B ) AFTER 5 ns;
    Y0_A <= NOT ( N4 AND N5 AND N1 ) AFTER 5 ns;
    Y1_A <= NOT ( N2 AND N5 AND N1 ) AFTER 5 ns;
    Y2_A <= NOT ( N4 AND N3 AND N1 ) AFTER 5 ns;
    Y3_A <= NOT ( N2 AND N3 AND N1 ) AFTER 5 ns;
    Y0_B <= NOT ( N9 AND N10 AND N6 ) AFTER 5 ns;
    Y1_B <= NOT ( N10 AND N7 AND N6 ) AFTER 5 ns;
    Y2_B <= NOT ( N9 AND N8 AND N6 ) AFTER 5 ns;
    Y3_B <= NOT ( N7 AND N8 AND N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S140\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S140\;

ARCHITECTURE model OF \74S140\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 7 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S151\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
G : IN  std_logic;
W : OUT  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S151\;

ARCHITECTURE model OF \74S151\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 8 ns;
    N2 <= NOT ( B ) AFTER 8 ns;
    N3 <= NOT ( C ) AFTER 8 ns;
    N4 <= NOT ( G ) AFTER 6 ns;
    N5 <=  ( G ) AFTER 6 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <=  ( D0 AND N1 AND N2 AND N3 );
    L5 <=  ( D1 AND L1 AND N2 AND N3 );
    L6 <=  ( D2 AND N1 AND L2 AND N3 );
    L7 <=  ( D3 AND L1 AND L2 AND N3 );
    L8 <=  ( D4 AND L3 AND N1 AND N2 );
    L9 <=  ( D5 AND L3 AND L1 AND N2 );
    L10 <=  ( D6 AND L3 AND N1 AND L2 );
    L11 <=  ( D7 AND L3 AND L1 AND L2 );
    L12 <=  ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 );
    L13 <= NOT ( L12 );
    Y <=  ( N4 AND L12 ) AFTER 12 ns;
    W <=  ( N5 OR L13 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S153\ IS PORT(
\1C0\ : IN  std_logic;
\1C1\ : IN  std_logic;
\1C2\ : IN  std_logic;
\1C3\ : IN  std_logic;
\2C0\ : IN  std_logic;
\2C1\ : IN  std_logic;
\2C2\ : IN  std_logic;
\2C3\ : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S153\;

ARCHITECTURE model OF \74S153\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <= NOT ( \1G\ ) AFTER 6 ns;
    N2 <= NOT ( \2G\ ) AFTER 6 ns;
    N3 <= NOT ( B ) AFTER 9 ns;
    N4 <= NOT ( A ) AFTER 9 ns;
    L1 <= NOT ( N3 );
    L2 <= NOT ( N4 );
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND L2 AND \1C1\ );
    L5 <=  ( N1 AND L1 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND L1 AND L2 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND L2 AND N2 );
    L9 <=  ( \2C2\ AND L1 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND L1 AND L2 AND N2 );
    \1Y\ <=  ( L3 OR L4 OR L5 OR L6 ) AFTER 9 ns;
    \2Y\ <=  ( L7 OR L8 OR L9 OR L10 ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S157\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\3A\ : IN  std_logic;
\3B\ : IN  std_logic;
\4A\ : IN  std_logic;
\4B\ : IN  std_logic;
\A\\/B\ : IN  std_logic;
G : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
\3Y\ : OUT  std_logic;
\4Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S157\;

ARCHITECTURE model OF \74S157\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( \A\\/B\ ) AFTER 8 ns;
    N2 <= NOT ( G ) AFTER 5 ns;
    L1 <= NOT ( N1 );
    L2 <=  ( \1A\ AND N1 AND N2 );
    L3 <=  ( \1B\ AND L1 AND N2 );
    L4 <=  ( \2A\ AND N1 AND N2 );
    L5 <=  ( \2B\ AND L1 AND N2 );
    L6 <=  ( \3A\ AND N1 AND N2 );
    L7 <=  ( \3B\ AND L1 AND N2 );
    L8 <=  ( \4A\ AND N1 AND N2 );
    L9 <=  ( \4B\ AND L1 AND N2 );
    \1Y\ <=  ( L2 OR L3 ) AFTER 8 ns;
    \2Y\ <=  ( L4 OR L5 ) AFTER 8 ns;
    \3Y\ <=  ( L6 OR L7 ) AFTER 8 ns;
    \4Y\ <=  ( L8 OR L9 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S158\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\3A\ : IN  std_logic;
\3B\ : IN  std_logic;
\4A\ : IN  std_logic;
\4B\ : IN  std_logic;
\A\\/B\ : IN  std_logic;
G : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
\3Y\ : OUT  std_logic;
\4Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S158\;

ARCHITECTURE model OF \74S158\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( \A\\/B\ ) AFTER 6 ns;
    N2 <= NOT ( G ) AFTER 6 ns;
    L1 <= NOT ( N1 );
    L2 <=  ( \1A\ AND N1 AND N2 );
    L3 <=  ( \1B\ AND L1 AND N2 );
    L4 <=  ( \2A\ AND N1 AND N2 );
    L5 <=  ( \2B\ AND L1 AND N2 );
    L6 <=  ( \3A\ AND N1 AND N2 );
    L7 <=  ( \3B\ AND L1 AND N2 );
    L8 <=  ( \4A\ AND N1 AND N2 );
    L9 <=  ( \4B\ AND L1 AND N2 );
    \1Y\ <= NOT ( L2 OR L3 ) AFTER 6 ns;
    \2Y\ <= NOT ( L4 OR L5 ) AFTER 6 ns;
    \3Y\ <= NOT ( L6 OR L7 ) AFTER 6 ns;
    \4Y\ <= NOT ( L8 OR L9 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S162\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S162\;

ARCHITECTURE model OF \74S162\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L24 : std_logic;
    SIGNAL L25 : std_logic;
    SIGNAL L26 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( CLR );
    L2 <= NOT ( L1 OR LOAD );
    L3 <= NOT ( L1 OR L2 );
    N1 <=  ( ENT AND ENP ) AFTER 8 ns;
    N2 <=  ( N3 AND N6 ) AFTER 0 ns;
    RCO <=  ( ENT AND N2 ) AFTER 15 ns;
    L4 <=  ( N3 AND N4 );
    L5 <=  ( N3 AND N4 AND N5 );
    L6 <=  ( N3 AND N1 );
    L7 <=  ( L4 AND N1 );
    L8 <=  ( N3 AND N6 );
    L9 <= NOT ( L8 AND N1 );
    L10 <=  ( L5 AND N1 );
    L11 <=  ( N1 XOR N3 );
    L12 <=  ( L6 XOR N4 );
    L13 <=  ( L7 XOR N5 );
    L14 <=  ( L10 XOR N6 );
    L15 <=  ( A AND L2 );
    L16 <=  ( L3 AND L11 );
    L17 <=  ( B AND L2 );
    L18 <=  ( L3 AND L9 AND L12 );
    L19 <=  ( C AND L2 );
    L20 <=  ( L3 AND L13 );
    L21 <=  ( D AND L2 );
    L22 <=  ( L3 AND L9 AND L14 );
    L23 <=  ( L15 OR L16 );
    L24 <=  ( L17 OR L18 );
    L25 <=  ( L19 OR L20 );
    L26 <=  ( L21 OR L22 );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 5 ns;
    QB <=  ( N4 ) AFTER 5 ns;
    QC <=  ( N5 ) AFTER 5 ns;
    QD <=  ( N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S163\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S163\;

ARCHITECTURE model OF \74S163\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 8 ns;
    N2 <= NOT ( LOAD ) AFTER 10 ns;
    N3 <= NOT ( CLR ) AFTER 10 ns;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( LOAD OR N3 );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 0 ns;
    RCO <=  ( ENT AND N4 ) AFTER 15 ns;
    L4 <=  ( L3 AND N5 );
    L5 <=  ( L4 XOR L1 );
    L6 <=  ( L2 AND A );
    L7 <=  ( L5 OR L6 );
    L8 <=  ( L3 AND N6 );
    L9 <=  ( L1 AND N5 );
    L10 <=  ( L8 XOR L9 );
    L11 <=  ( L2 AND B );
    L12 <=  ( L10 OR L11 );
    L13 <=  ( L3 AND N7 );
    L14 <=  ( L1 AND N5 AND N6 );
    L15 <=  ( L13 XOR L14 );
    L16 <=  ( L2 AND C );
    L17 <=  ( L15 OR L16 );
    L18 <=  ( L3 AND N8 );
    L19 <=  ( L1 AND N5 AND N6 AND N7 );
    L20 <=  ( L18 XOR L19 );
    L21 <=  ( L2 AND D );
    L22 <=  ( L20 OR L21 );
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 5 ns;
    QB <=  ( N6 ) AFTER 5 ns;
    QC <=  ( N7 ) AFTER 5 ns;
    QD <=  ( N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S168\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
\U/D\\\ : IN  std_logic;
ENT : IN  std_logic;
ENP : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S168\;

ARCHITECTURE model OF \74S168\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L24 : std_logic;
    SIGNAL L25 : std_logic;
    SIGNAL L26 : std_logic;
    SIGNAL L27 : std_logic;
    SIGNAL L28 : std_logic;
    SIGNAL L29 : std_logic;
    SIGNAL L30 : std_logic;
    SIGNAL L31 : std_logic;
    SIGNAL L32 : std_logic;
    SIGNAL L33 : std_logic;
    SIGNAL L34 : std_logic;
    SIGNAL L35 : std_logic;
    SIGNAL L36 : std_logic;
    SIGNAL L37 : std_logic;
    SIGNAL L38 : std_logic;
    SIGNAL L39 : std_logic;
    SIGNAL L40 : std_logic;
    SIGNAL L41 : std_logic;
    SIGNAL L42 : std_logic;
    SIGNAL L43 : std_logic;
    SIGNAL L44 : std_logic;
    SIGNAL L45 : std_logic;
    SIGNAL L46 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    L1 <= NOT ( LOAD );
    L2 <= NOT ( \U/D\\\ );
    L3 <= NOT ( N1 );
    L4 <=  ( N2 OR N1 );
    L5 <=  ( N3 OR N2 OR N1 );
    L6 <= NOT ( ENP OR ENT );
    L7 <=  ( L2 AND N1 );
    L8 <=  ( \U/D\\\ AND L3 );
    L9 <= NOT ( L7 OR L8 );
    L10 <=  ( L2 AND L4 );
    L43 <= NOT ( N2 );
    L11 <=  ( \U/D\\\ AND L43 );
    L12 <=  ( \U/D\\\ AND L3 );
    L13 <= NOT ( L10 OR L11 OR L12 );
    L44 <= NOT ( N3 );
    L14 <=  ( \U/D\\\ OR N3 OR N2 OR N1 OR N4 );
    L45 <= NOT ( N4 );
    L15 <= NOT ( L45 OR L2 OR L3 );
    L16 <=  ( L2 AND L5 );
    L17 <=  ( \U/D\\\ AND L44 );
    L18 <=  ( \U/D\\\ AND L43 );
    L19 <=  ( \U/D\\\ AND L3 );
    L20 <= NOT ( L16 OR L17 OR L18 OR L19 );
    L21 <=  ( L9 AND L6 );
    L22 <=  ( L13 AND L6 );
    L23 <= NOT ( L15 AND L6 );
    L24 <=  ( L20 AND L6 );
    L25 <= NOT ( L6 XOR L3 );
    L26 <= NOT ( L21 XOR L43 );
    L27 <= NOT ( L22 XOR L44 );
    L28 <= NOT ( L24 XOR L45 );
    L29 <=  ( A AND L1 );
    L30 <=  ( LOAD AND L25 );
    L31 <=  ( L29 OR L30 );
    L32 <=  ( B AND L1 );
    L33 <=  ( LOAD AND L26 AND L14 AND L23 );
    L34 <=  ( L32 OR L33 );
    L35 <=  ( C AND L1 );
    L36 <=  ( LOAD AND L14 AND L27 );
    L37 <=  ( L35 OR L36 );
    L38 <=  ( L1 AND D );
    L39 <=  ( LOAD AND L23 AND L28 );
    L40 <=  ( L38 OR L39 );
    L41 <= NOT ( L45 OR N5 OR L3 OR N6 );
    L46 <= NOT ( ENT );
    L42 <=  ( N7 AND L45 AND N5 AND L44 AND L43 AND L3 );
    N5 <=  ( L2 ) AFTER 9 ns;
    N6 <=  ( ENT ) AFTER 12 ns;
    N7 <=  ( L46 ) AFTER 12 ns;
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    QA <=  ( N1 ) AFTER 10 ns;
    QB <=  ( N2 ) AFTER 10 ns;
    QC <=  ( N3 ) AFTER 10 ns;
    QD <=  ( N4 ) AFTER 10 ns;
    RCO <= NOT ( L41 OR L42 ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S169\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
\U/D\\\ : IN  std_logic;
ENT : IN  std_logic;
ENP : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S169\;

ARCHITECTURE model OF \74S169\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L24 : std_logic;
    SIGNAL L25 : std_logic;
    SIGNAL L26 : std_logic;
    SIGNAL L27 : std_logic;
    SIGNAL L28 : std_logic;
    SIGNAL L29 : std_logic;
    SIGNAL L30 : std_logic;
    SIGNAL L31 : std_logic;
    SIGNAL L32 : std_logic;
    SIGNAL L33 : std_logic;
    SIGNAL L34 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;

    BEGIN
    N1 <= NOT ( LOAD ) AFTER 2 ns;
    N2 <=  ( ENT OR ENP ) AFTER 10 ns;
    N3 <= NOT ( ENT ) AFTER 12 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 9 ns;
    N5 <=  ( \U/D\\\ ) AFTER 9 ns;
    L1 <=  ( \U/D\\\ AND N7 );
    L2 <= NOT ( N7 OR \U/D\\\ );
    L3 <= NOT ( L1 OR L2 );
    L4 <=  ( \U/D\\\ AND N8 );
    L5 <= NOT ( N8 OR \U/D\\\ );
    L6 <= NOT ( L4 OR L5 );
    L7 <=  ( \U/D\\\ AND N9 );
    L8 <= NOT ( N9 OR \U/D\\\ );
    L9 <= NOT ( L7 OR L8 );
    L10 <=  ( \U/D\\\ AND N10 );
    L11 <= NOT ( N10 OR \U/D\\\ );
    L12 <= NOT ( L10 OR L11 );
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 0 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 13 ns;
    L15 <= NOT ( N1 OR N2 );
    L16 <= NOT ( N7 OR N1 );
    L17 <=  ( L16 XOR L15 );
    L18 <=  ( N1 AND A );
    L19 <= NOT ( L17 OR L18 );
    L20 <= NOT ( N8 OR N1 );
    L21 <=  ( L15 AND L3 );
    L22 <=  ( L20 XOR L21 );
    L23 <=  ( N1 AND B );
    L24 <= NOT ( L22 OR L23 );
    L25 <= NOT ( N9 OR N1 );
    L26 <=  ( L15 AND L3 AND L6 );
    L27 <=  ( L25 XOR L26 );
    L28 <=  ( N1 AND C );
    L29 <= NOT ( L27 OR L28 );
    L30 <= NOT ( N10 OR N1 );
    L31 <=  ( L15 AND L3 AND L6 AND L9 );
    L32 <=  ( L30 XOR L31 );
    L33 <=  ( N1 AND D );
    L34 <= NOT ( L32 OR L33 );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 0 ns;
    QB <= NOT ( N8 ) AFTER 0 ns;
    QC <= NOT ( N9 ) AFTER 0 ns;
    QD <= NOT ( N10 ) AFTER 0 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S174\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S174\;

ARCHITECTURE model OF \74S174\ IS

    BEGIN
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S175\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
\Q\\1\\\ : OUT  std_logic;
Q2 : OUT  std_logic;
\Q\\2\\\ : OUT  std_logic;
Q3 : OUT  std_logic;
\Q\\3\\\ : OUT  std_logic;
Q4 : OUT  std_logic;
\Q\\4\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S175\;

ARCHITECTURE model OF \74S175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>17 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S181\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
CN : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
S3 : IN  std_logic;
M : IN  std_logic;
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
\A=B\ : OUT  std_logic;
\CN+4\ : OUT  std_logic;
G : OUT  std_logic;
P : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S181\;

ARCHITECTURE model OF \74S181\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L24 : std_logic;
    SIGNAL L25 : std_logic;
    SIGNAL L26 : std_logic;
    SIGNAL L27 : std_logic;
    SIGNAL L28 : std_logic;
    SIGNAL L29 : std_logic;
    SIGNAL L30 : std_logic;
    SIGNAL L31 : std_logic;
    SIGNAL L32 : std_logic;
    SIGNAL L33 : std_logic;
    SIGNAL L34 : std_logic;
    SIGNAL L35 : std_logic;
    SIGNAL L36 : std_logic;
    SIGNAL L37 : std_logic;
    SIGNAL L38 : std_logic;
    SIGNAL L39 : std_logic;
    SIGNAL L40 : std_logic;
    SIGNAL L41 : std_logic;
    SIGNAL L42 : std_logic;
    SIGNAL L43 : std_logic;
    SIGNAL L44 : std_logic;
    SIGNAL L45 : std_logic;
    SIGNAL L46 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;

    BEGIN
    L1 <= NOT ( B3 );
    L2 <= NOT ( B2 );
    L3 <= NOT ( B1 );
    L4 <= NOT ( B0 );
    L5 <= NOT ( M );
    L6 <=  ( B3 AND S3 AND A3 );
    L7 <=  ( A3 AND S2 AND L1 );
    L8 <=  ( L1 AND S1 );
    L9 <=  ( S0 AND B3 );
    L10 <=  ( B2 AND S3 AND A2 );
    L11 <=  ( A2 AND S2 AND L2 );
    L12 <=  ( L2 AND S1 );
    L13 <=  ( S0 AND B2 );
    L14 <=  ( B1 AND S3 AND A1 );
    L15 <=  ( A1 AND S2 AND L3 );
    L16 <=  ( L3 AND S1 );
    L17 <=  ( S0 AND B1 );
    L18 <=  ( B0 AND S3 AND A0 );
    L19 <=  ( A0 AND S2 AND L4 );
    L20 <=  ( L4 AND S1 );
    L21 <=  ( S0 AND B0 );
    L22 <= NOT ( L6 OR L7 );
    L23 <= NOT ( L8 OR L9 OR A3 );
    L24 <= NOT ( L10 OR L11 );
    L25 <= NOT ( L12 OR L13 OR A2 );
    L26 <= NOT ( L14 OR L15 );
    L27 <= NOT ( L16 OR L17 OR A1 );
    L28 <= NOT ( L18 OR L19 );
    L29 <= NOT ( L20 OR L21 OR A0 );
    N1 <=  ( L22 XOR L23 ) AFTER 10 ns;
    N2 <=  ( L24 XOR L25 ) AFTER 10 ns;
    N3 <=  ( L26 XOR L27 ) AFTER 10 ns;
    N4 <=  ( L28 XOR L29 ) AFTER 10 ns;
    N5 <=  ( CN ) AFTER 3 ns;
    L44 <=  ( L22 AND L25 );
    L45 <=  ( L22 AND L24 AND L27 );
    L46 <=  ( L22 AND L24 AND L26 AND L29 );
    L30 <= NOT ( L22 AND L24 AND L26 AND L28 AND N5 );
    L31 <=  ( CN AND L28 AND L26 AND L24 AND L5 );
    L32 <=  ( L26 AND L24 AND L29 AND L5 );
    L33 <=  ( L24 AND L27 AND L5 );
    L34 <=  ( L25 AND L5 );
    L35 <=  ( CN AND L28 AND L26 AND L5 );
    L36 <=  ( L26 AND L29 AND L5 );
    L37 <=  ( L27 AND L5 );
    L38 <=  ( CN AND L28 AND L5 );
    L39 <=  ( L29 AND L5 );
    L40 <= NOT ( CN AND L5 );
    L41 <= NOT ( L31 OR L32 OR L33 OR L34 );
    L42 <= NOT ( L35 OR L36 OR L37 );
    L43 <= NOT ( L38 OR L39 );
    N9 <= NOT ( L23 OR L44 OR L45 OR L46 ) AFTER 15 ns;
    G <= N9;    
    \CN+4\ <= NOT ( N9 AND L30 ) AFTER 8 ns;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 12 ns;
    N13 <=  ( N1 XOR L41 ) AFTER 12 ns;
    F3 <= N13;
    N12 <=  ( N2 XOR L42 ) AFTER 12 ns;
    F2 <= N12;
    N11 <=  ( N3 XOR L43 ) AFTER 12 ns;
    F1 <= N11;
    N10 <=  ( N4 XOR L40 ) AFTER 12 ns;
    F0 <= N10;
    N6 <=  ( N13 ) AFTER 10 ns;
    N7 <=  ( N12 ) AFTER 10 ns;
    N8 <=  ( N11 ) AFTER 10 ns;
    \A=B\ <=  ( N6 AND N7 AND N8 AND N10 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S182\ IS PORT(
CN : IN  std_logic;
P0 : IN  std_logic;
G0 : IN  std_logic;
P1 : IN  std_logic;
G1 : IN  std_logic;
P2 : IN  std_logic;
G2 : IN  std_logic;
P3 : IN  std_logic;
G3 : IN  std_logic;
\CN+X\ : OUT  std_logic;
\CN+Y\ : OUT  std_logic;
\CN+Z\ : OUT  std_logic;
P : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S182\;

ARCHITECTURE model OF \74S182\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CN ) AFTER 4 ns;
    L1 <=  ( G3 AND G2 AND G1 AND G0 );
    L2 <=  ( P1 AND G3 AND G2 AND G1 );
    L3 <=  ( P2 AND G3 AND G2 );
    L4 <=  ( P3 AND G3 );
    L5 <=  ( G2 AND G1 AND G0 AND N1 );
    L6 <=  ( P0 AND G2 AND G1 AND G0 );
    L7 <=  ( P1 AND G2 AND G1 );
    L8 <=  ( P2 AND G2 );
    L9 <=  ( G1 AND G0 AND N1 );
    L10 <=  ( P0 AND G1 AND G0 );
    L11 <=  ( P1 AND G1 );
    L12 <=  ( G0 AND N1 );
    L13 <=  ( P0 AND G0 );
    P <=  ( P3 OR P2 OR P1 OR P0 ) AFTER 10 ns;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 11 ns;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 7 ns;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 7 ns;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S194\ IS PORT(
SR : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
SL : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S194\;

ARCHITECTURE model OF \74S194\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S0 );
    N1 <=  ( S1 AND S0 ) AFTER 6 ns;
    N2 <=  ( S1 AND L2 ) AFTER 6 ns;
    N3 <=  ( L1 AND S0 ) AFTER 6 ns;
    N4 <=  ( L1 AND L2 ) AFTER 6 ns;
    L4 <=  ( SR AND N3 );
    L5 <=  ( N2 AND N6 );
    L6 <=  ( N1 AND A );
    L7 <=  ( N4 AND N5 );
    L8 <=  ( L4 OR L5 OR L6 OR L7 );
    L9 <=  ( N5 AND N3 );
    L10 <=  ( N2 AND N7 );
    L11 <=  ( N1 AND B );
    L12 <=  ( N4 AND N6 );
    L13 <=  ( L9 OR L10 OR L11 OR L12 );
    L14 <=  ( N6 AND N3 );
    L15 <=  ( N2 AND N8 );
    L16 <=  ( N1 AND C );
    L17 <=  ( N4 AND N7 );
    L18 <=  ( L14 OR L15 OR L16 OR L17 );
    L19 <=  ( N7 AND N3 );
    L20 <=  ( N2 AND SL );
    L21 <=  ( N1 AND D );
    L22 <=  ( N4 AND N8 );
    L23 <=  ( L19 OR L20 OR L21 OR L22 );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>L23 , clk=>CLK , cl=>CLR );
    QA <=  ( N5 ) AFTER 8 ns;
    QB <=  ( N6 ) AFTER 8 ns;
    QC <=  ( N7 ) AFTER 8 ns;
    QD <=  ( N8 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S195\ IS PORT(
J : IN  std_logic;
K : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
\S/L\\\ : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
\Q\\D\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S195\;

ARCHITECTURE model OF \74S195\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( \S/L\\\ ) AFTER 6 ns;
    N2 <=  ( \S/L\\\ ) AFTER 6 ns;
    L1 <= NOT ( N3 );
    L2 <=  ( L1 AND J AND N2 );
    L3 <=  ( N2 AND K AND N3 );
    L4 <=  ( N1 AND A );
    L5 <=  ( L2 OR L3 OR L4 );
    L6 <=  ( N3 AND N2 );
    L7 <=  ( N1 AND B );
    L8 <=  ( L6 OR L7 );
    L9 <=  ( N4 AND N2 );
    L10 <=  ( N1 AND C );
    L11 <=  ( L9 OR L10 );
    L12 <=  ( N5 AND N2 );
    L13 <=  ( N1 AND D );
    L14 <=  ( L12 OR L13 );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L14 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 12 ns;
    QB <=  ( N4 ) AFTER 12 ns;
    QC <=  ( N5 ) AFTER 12 ns;
    QD <=  ( N6 ) AFTER 12 ns;
    \Q\\D\\\ <= NOT ( N6 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S196\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S196\;

ARCHITECTURE model OF \74S196\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( LOAD AND CLR );
    L2 <= NOT ( A AND L1 AND CLR );
    L3 <= NOT ( L2 AND L1 );
    L4 <= NOT ( B AND L1 AND CLR );
    L5 <= NOT ( L4 AND L1 );
    L6 <= NOT ( C AND L1 AND CLR );
    L7 <= NOT ( L6 AND L1 );
    L8 <= NOT ( D AND L1 AND CLR );
    L9 <= NOT ( L8 AND L1 );
    L10 <=  ( N5 AND N7 );
    N1 <= NOT ( CLK1 ) AFTER 0 ns;
    N2 <= NOT ( CLK2 ) AFTER 0 ns;
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>N10 , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L10 , k=>N9 , clk=>N2 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 5 ns;
    QB <=  ( N5 ) AFTER 5 ns;
    QC <=  ( N7 ) AFTER 5 ns;
    QD <=  ( N9 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S197\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S197\;

ARCHITECTURE model OF \74S197\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( LOAD AND CLR );
    L2 <= NOT ( A AND L1 AND CLR );
    L3 <= NOT ( L2 AND L1 );
    L4 <= NOT ( B AND L1 AND CLR );
    L5 <= NOT ( L4 AND L1 );
    L6 <= NOT ( C AND L1 AND CLR );
    L7 <= NOT ( L6 AND L1 );
    L8 <= NOT ( D AND L1 AND CLR );
    L9 <= NOT ( L8 AND L1 );
    N1 <= NOT ( CLK1 ) AFTER 0 ns;
    N2 <= NOT ( CLK2 ) AFTER 0 ns;
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>ONE , k=>ONE , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 5 ns;
    QB <=  ( N5 ) AFTER 5 ns;
    QC <=  ( N7 ) AFTER 5 ns;
    QD <=  ( N9 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S226\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
GAB : IN  std_logic;
GBA : IN  std_logic;
OCAB : IN  std_logic;
OCBA : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S226\;

ARCHITECTURE model OF \74S226\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;
    SIGNAL N21 : std_logic;
    SIGNAL N22 : std_logic;
    SIGNAL N23 : std_logic;
    SIGNAL N24 : std_logic;
    SIGNAL N25 : std_logic;
    SIGNAL N26 : std_logic;
    SIGNAL N27 : std_logic;
    SIGNAL N28 : std_logic;
    SIGNAL N29 : std_logic;
    SIGNAL N30 : std_logic;
    SIGNAL N31 : std_logic;
    SIGNAL N32 : std_logic;
    SIGNAL N33 : std_logic;
    SIGNAL N34 : std_logic;
    SIGNAL N35 : std_logic;
    SIGNAL N36 : std_logic;
    SIGNAL N37 : std_logic;
    SIGNAL N38 : std_logic;
    SIGNAL N39 : std_logic;
    SIGNAL N40 : std_logic;
    SIGNAL N41 : std_logic;
    SIGNAL N42 : std_logic;
    SIGNAL N43 : std_logic;
    SIGNAL N44 : std_logic;
    SIGNAL N45 : std_logic;
    SIGNAL N46 : std_logic;
    SIGNAL N47 : std_logic;
    SIGNAL N48 : std_logic;
    SIGNAL N49 : std_logic;
    SIGNAL N50 : std_logic;
    SIGNAL N51 : std_logic;
    SIGNAL N52 : std_logic;
    SIGNAL N53 : std_logic;
    SIGNAL N54 : std_logic;
    SIGNAL N55 : std_logic;
    SIGNAL N56 : std_logic;
    SIGNAL N57 : std_logic;
    SIGNAL N58 : std_logic;
    SIGNAL N59 : std_logic;
    SIGNAL N60 : std_logic;
    SIGNAL N61 : std_logic;
    SIGNAL N62 : std_logic;
    SIGNAL N63 : std_logic;
    SIGNAL N64 : std_logic;
    SIGNAL N65 : std_logic;
    SIGNAL N66 : std_logic;
    SIGNAL N67 : std_logic;
    SIGNAL N68 : std_logic;
    SIGNAL N69 : std_logic;
    SIGNAL N70 : std_logic;
    SIGNAL N71 : std_logic;
    SIGNAL N72 : std_logic;
    SIGNAL N73 : std_logic;
    SIGNAL N74 : std_logic;
    SIGNAL N75 : std_logic;
    SIGNAL N76 : std_logic;
    SIGNAL N77 : std_logic;
    SIGNAL N78 : std_logic;
    SIGNAL N79 : std_logic;
    SIGNAL N80 : std_logic;
    SIGNAL N81 : std_logic;
    SIGNAL N82 : std_logic;
    SIGNAL N83 : std_logic;
    SIGNAL N84 : std_logic;
    SIGNAL N85 : std_logic;
    SIGNAL N86 : std_logic;
    SIGNAL N87 : std_logic;
    SIGNAL N88 : std_logic;
    SIGNAL N89 : std_logic;
    SIGNAL N90 : std_logic;
    SIGNAL N91 : std_logic;
    SIGNAL N92 : std_logic;
    SIGNAL N93 : std_logic;
    SIGNAL N94 : std_logic;
    SIGNAL N95 : std_logic;
    SIGNAL N96 : std_logic;
    SIGNAL N97 : std_logic;
    SIGNAL N98 : std_logic;
    SIGNAL N99 : std_logic;
    SIGNAL N100 : std_logic;
    SIGNAL N101 : std_logic;
    SIGNAL N102 : std_logic;
    SIGNAL N103 : std_logic;
    SIGNAL N104 : std_logic;
    SIGNAL N105 : std_logic;
    SIGNAL N106 : std_logic;
    SIGNAL N107 : std_logic;
    SIGNAL N108 : std_logic;
    SIGNAL N109 : std_logic;
    SIGNAL N110 : std_logic;
    SIGNAL N111 : std_logic;
    SIGNAL N112 : std_logic;
    SIGNAL N113 : std_logic;
    SIGNAL N114 : std_logic;
    SIGNAL N115 : std_logic;
    SIGNAL N116 : std_logic;
    SIGNAL N117 : std_logic;
    SIGNAL N118 : std_logic;
    SIGNAL N119 : std_logic;
    SIGNAL N120 : std_logic;
    SIGNAL N121 : std_logic;
    SIGNAL N122 : std_logic;
    SIGNAL N123 : std_logic;
    SIGNAL N124 : std_logic;
    SIGNAL N125 : std_logic;
    SIGNAL N126 : std_logic;
    SIGNAL N127 : std_logic;
    SIGNAL N128 : std_logic;
    SIGNAL N129 : std_logic;
    SIGNAL N130 : std_logic;
    SIGNAL N131 : std_logic;
    SIGNAL N132 : std_logic;
    SIGNAL N133 : std_logic;
    SIGNAL N134 : std_logic;
    SIGNAL N135 : std_logic;
    SIGNAL N136 : std_logic;
    SIGNAL N137 : std_logic;
    SIGNAL N138 : std_logic;
    SIGNAL N139 : std_logic;
    SIGNAL N140 : std_logic;
    SIGNAL N141 : std_logic;
    SIGNAL N142 : std_logic;
    SIGNAL N143 : std_logic;
    SIGNAL N144 : std_logic;
    SIGNAL N145 : std_logic;
    SIGNAL N146 : std_logic;
    SIGNAL N147 : std_logic;
    SIGNAL N148 : std_logic;
    SIGNAL N149 : std_logic;
    SIGNAL N150 : std_logic;
    SIGNAL N151 : std_logic;
    SIGNAL N152 : std_logic;
    SIGNAL N153 : std_logic;
    SIGNAL N154 : std_logic;
    SIGNAL N155 : std_logic;
    SIGNAL N156 : std_logic;
    SIGNAL N157 : std_logic;
    SIGNAL N158 : std_logic;
    SIGNAL N159 : std_logic;
    SIGNAL N160 : std_logic;
    SIGNAL N161 : std_logic;
    SIGNAL N162 : std_logic;
    SIGNAL N163 : std_logic;
    SIGNAL N164 : std_logic;
    SIGNAL N165 : std_logic;
    SIGNAL N166 : std_logic;
    SIGNAL N167 : std_logic;
    SIGNAL N168 : std_logic;
    SIGNAL N169 : std_logic;
    SIGNAL N170 : std_logic;
    SIGNAL N171 : std_logic;
    SIGNAL N172 : std_logic;
    SIGNAL N173 : std_logic;
    SIGNAL N174 : std_logic;
    SIGNAL N175 : std_logic;
    SIGNAL N176 : std_logic;
    SIGNAL N177 : std_logic;
    SIGNAL N178 : std_logic;
    SIGNAL N179 : std_logic;
    SIGNAL N180 : std_logic;
    SIGNAL N181 : std_logic;
    SIGNAL N182 : std_logic;
    SIGNAL N183 : std_logic;
    SIGNAL N184 : std_logic;
    SIGNAL N185 : std_logic;
    SIGNAL N186 : std_logic;
    SIGNAL N187 : std_logic;
    SIGNAL N188 : std_logic;
    SIGNAL N189 : std_logic;
    SIGNAL N190 : std_logic;
    SIGNAL N191 : std_logic;
    SIGNAL N192 : std_logic;
    SIGNAL N193 : std_logic;
    SIGNAL N194 : std_logic;
    SIGNAL N195 : std_logic;
    SIGNAL N196 : std_logic;
    SIGNAL N197 : std_logic;
    SIGNAL N198 : std_logic;
    SIGNAL N199 : std_logic;
    SIGNAL N200 : std_logic;
    SIGNAL N201 : std_logic;
    SIGNAL N202 : std_logic;
    SIGNAL N203 : std_logic;
    SIGNAL N204 : std_logic;
    SIGNAL N205 : std_logic;
    SIGNAL N206 : std_logic;
    SIGNAL N207 : std_logic;
    SIGNAL N208 : std_logic;
    SIGNAL N209 : std_logic;
    SIGNAL N210 : std_logic;
    SIGNAL N211 : std_logic;
    SIGNAL N212 : std_logic;
    SIGNAL N213 : std_logic;
    SIGNAL N214 : std_logic;
    SIGNAL N215 : std_logic;
    SIGNAL N216 : std_logic;
    SIGNAL N217 : std_logic;
    SIGNAL N218 : std_logic;
    SIGNAL N219 : std_logic;
    SIGNAL N220 : std_logic;
    SIGNAL N221 : std_logic;
    SIGNAL N222 : std_logic;
    SIGNAL N223 : std_logic;
    SIGNAL N224 : std_logic;
    SIGNAL N225 : std_logic;
    SIGNAL N226 : std_logic;
    SIGNAL N227 : std_logic;
    SIGNAL N228 : std_logic;
    SIGNAL N229 : std_logic;
    SIGNAL N230 : std_logic;
    SIGNAL N231 : std_logic;
    SIGNAL N232 : std_logic;
    SIGNAL N233 : std_logic;
    SIGNAL N234 : std_logic;
    SIGNAL N235 : std_logic;
    SIGNAL N236 : std_logic;
    SIGNAL N237 : std_logic;
    SIGNAL N238 : std_logic;
    SIGNAL N239 : std_logic;
    SIGNAL N240 : std_logic;
    SIGNAL N241 : std_logic;
    SIGNAL N242 : std_logic;
    SIGNAL N243 : std_logic;
    SIGNAL N244 : std_logic;
    SIGNAL N245 : std_logic;
    SIGNAL N246 : std_logic;
    SIGNAL N247 : std_logic;
    SIGNAL N248 : std_logic;
    SIGNAL N249 : std_logic;
    SIGNAL N250 : std_logic;
    SIGNAL N251 : std_logic;
    SIGNAL N252 : std_logic;
    SIGNAL N253 : std_logic;
    SIGNAL N254 : std_logic;
    SIGNAL N255 : std_logic;
    SIGNAL N256 : std_logic;
    SIGNAL N257 : std_logic;
    SIGNAL N258 : std_logic;
    SIGNAL N259 : std_logic;
    SIGNAL N260 : std_logic;
    SIGNAL N261 : std_logic;
    SIGNAL N262 : std_logic;
    SIGNAL N263 : std_logic;
    SIGNAL N264 : std_logic;
    SIGNAL N265 : std_logic;
    SIGNAL N266 : std_logic;
    SIGNAL N267 : std_logic;
    SIGNAL N268 : std_logic;
    SIGNAL N269 : std_logic;
    SIGNAL N270 : std_logic;
    SIGNAL N271 : std_logic;
    SIGNAL N272 : std_logic;
    SIGNAL N273 : std_logic;
    SIGNAL N274 : std_logic;
    SIGNAL N275 : std_logic;
    SIGNAL N276 : std_logic;
    SIGNAL N277 : std_logic;
    SIGNAL N278 : std_logic;
    SIGNAL N279 : std_logic;
    SIGNAL N280 : std_logic;
    SIGNAL N281 : std_logic;
    SIGNAL N282 : std_logic;
    SIGNAL N283 : std_logic;
    SIGNAL N284 : std_logic;
    SIGNAL N285 : std_logic;
    SIGNAL N286 : std_logic;
    SIGNAL N287 : std_logic;
    SIGNAL N288 : std_logic;
    SIGNAL N289 : std_logic;
    SIGNAL N290 : std_logic;
    SIGNAL N291 : std_logic;
    SIGNAL N292 : std_logic;
    SIGNAL N293 : std_logic;
    SIGNAL N294 : std_logic;
    SIGNAL N295 : std_logic;
    SIGNAL N296 : std_logic;
    SIGNAL N297 : std_logic;
    SIGNAL N298 : std_logic;
    SIGNAL N299 : std_logic;
    SIGNAL N300 : std_logic;
    SIGNAL N301 : std_logic;
    SIGNAL N302 : std_logic;
    SIGNAL N303 : std_logic;
    SIGNAL N304 : std_logic;
    SIGNAL N305 : std_logic;
    SIGNAL N306 : std_logic;
    SIGNAL N307 : std_logic;
    SIGNAL N308 : std_logic;
    SIGNAL N309 : std_logic;
    SIGNAL N310 : std_logic;
    SIGNAL N311 : std_logic;
    SIGNAL N312 : std_logic;
    SIGNAL N313 : std_logic;
    SIGNAL N314 : std_logic;
    SIGNAL N315 : std_logic;
    SIGNAL N316 : std_logic;
    SIGNAL N317 : std_logic;
    SIGNAL N318 : std_logic;
    SIGNAL N319 : std_logic;
    SIGNAL N320 : std_logic;
    SIGNAL N321 : std_logic;
    SIGNAL N322 : std_logic;
    SIGNAL N323 : std_logic;
    SIGNAL N324 : std_logic;
    SIGNAL N325 : std_logic;
    SIGNAL N326 : std_logic;
    SIGNAL N327 : std_logic;
    SIGNAL N328 : std_logic;
    SIGNAL N329 : std_logic;
    SIGNAL N330 : std_logic;
    SIGNAL N331 : std_logic;
    SIGNAL N332 : std_logic;
    SIGNAL N333 : std_logic;
    SIGNAL N334 : std_logic;
    SIGNAL N335 : std_logic;
    SIGNAL N336 : std_logic;
    SIGNAL N337 : std_logic;
    SIGNAL N338 : std_logic;
    SIGNAL N339 : std_logic;
    SIGNAL N340 : std_logic;
    SIGNAL N341 : std_logic;
    SIGNAL N342 : std_logic;
    SIGNAL N343 : std_logic;
    SIGNAL N344 : std_logic;
    SIGNAL N345 : std_logic;
    SIGNAL N346 : std_logic;
    SIGNAL N347 : std_logic;
    SIGNAL N348 : std_logic;
    SIGNAL N349 : std_logic;
    SIGNAL N350 : std_logic;
    SIGNAL N351 : std_logic;
    SIGNAL N352 : std_logic;
    SIGNAL N353 : std_logic;
    SIGNAL N354 : std_logic;
    SIGNAL N355 : std_logic;
    SIGNAL N356 : std_logic;
    SIGNAL N357 : std_logic;
    SIGNAL N358 : std_logic;
    SIGNAL N359 : std_logic;
    SIGNAL N360 : std_logic;
    SIGNAL N361 : std_logic;
    SIGNAL N362 : std_logic;
    SIGNAL N363 : std_logic;
    SIGNAL N364 : std_logic;
    SIGNAL N365 : std_logic;
    SIGNAL N366 : std_logic;
    SIGNAL N367 : std_logic;
    SIGNAL N368 : std_logic;
    SIGNAL N369 : std_logic;
    SIGNAL N370 : std_logic;
    SIGNAL N371 : std_logic;
    SIGNAL N372 : std_logic;
    SIGNAL N373 : std_logic;
    SIGNAL N374 : std_logic;
    SIGNAL N375 : std_logic;
    SIGNAL N376 : std_logic;
    SIGNAL N377 : std_logic;
    SIGNAL N378 : std_logic;
    SIGNAL N379 : std_logic;
    SIGNAL N380 : std_logic;
    SIGNAL N381 : std_logic;
    SIGNAL N382 : std_logic;
    SIGNAL N383 : std_logic;
    SIGNAL N384 : std_logic;
    SIGNAL N385 : std_logic;
    SIGNAL N386 : std_logic;
    SIGNAL N387 : std_logic;
    SIGNAL N388 : std_logic;
    SIGNAL N389 : std_logic;
    SIGNAL N390 : std_logic;
    SIGNAL N391 : std_logic;
    SIGNAL N392 : std_logic;
    SIGNAL N393 : std_logic;
    SIGNAL N394 : std_logic;
    SIGNAL N395 : std_logic;
    SIGNAL N396 : std_logic;
    SIGNAL N397 : std_logic;
    SIGNAL N398 : std_logic;
    SIGNAL N399 : std_logic;
    SIGNAL N400 : std_logic;
    SIGNAL N401 : std_logic;
    SIGNAL N402 : std_logic;
    SIGNAL N403 : std_logic;
    SIGNAL N404 : std_logic;
    SIGNAL N405 : std_logic;
    SIGNAL N406 : std_logic;
    SIGNAL N407 : std_logic;
    SIGNAL N408 : std_logic;
    SIGNAL N409 : std_logic;
    SIGNAL N410 : std_logic;
    SIGNAL N411 : std_logic;
    SIGNAL N412 : std_logic;
    SIGNAL N413 : std_logic;
    SIGNAL N414 : std_logic;
    SIGNAL N415 : std_logic;
    SIGNAL N416 : std_logic;
    SIGNAL N417 : std_logic;
    SIGNAL N418 : std_logic;
    SIGNAL N419 : std_logic;
    SIGNAL N420 : std_logic;
    SIGNAL N421 : std_logic;
    SIGNAL N422 : std_logic;
    SIGNAL N423 : std_logic;
    SIGNAL N424 : std_logic;
    SIGNAL N425 : std_logic;
    SIGNAL N426 : std_logic;
    SIGNAL N427 : std_logic;
    SIGNAL N428 : std_logic;
    SIGNAL N429 : std_logic;
    SIGNAL N430 : std_logic;
    SIGNAL N431 : std_logic;
    SIGNAL N432 : std_logic;
    SIGNAL N433 : std_logic;
    SIGNAL N434 : std_logic;
    SIGNAL N435 : std_logic;
    SIGNAL N436 : std_logic;
    SIGNAL N437 : std_logic;
    SIGNAL N438 : std_logic;
    SIGNAL N439 : std_logic;
    SIGNAL N440 : std_logic;
    SIGNAL N441 : std_logic;
    SIGNAL N442 : std_logic;
    SIGNAL N443 : std_logic;
    SIGNAL N444 : std_logic;
    SIGNAL N445 : std_logic;
    SIGNAL N446 : std_logic;
    SIGNAL N447 : std_logic;
    SIGNAL N448 : std_logic;
    SIGNAL N449 : std_logic;
    SIGNAL N450 : std_logic;
    SIGNAL N451 : std_logic;
    SIGNAL N452 : std_logic;
    SIGNAL N453 : std_logic;
    SIGNAL N454 : std_logic;
    SIGNAL N455 : std_logic;
    SIGNAL N456 : std_logic;
    SIGNAL N457 : std_logic;
    SIGNAL N458 : std_logic;
    SIGNAL N459 : std_logic;
    SIGNAL N460 : std_logic;
    SIGNAL N461 : std_logic;
    SIGNAL N462 : std_logic;
    SIGNAL N463 : std_logic;
    SIGNAL N464 : std_logic;
    SIGNAL N465 : std_logic;
    SIGNAL N466 : std_logic;
    SIGNAL N467 : std_logic;
    SIGNAL N468 : std_logic;
    SIGNAL N469 : std_logic;
    SIGNAL N470 : std_logic;
    SIGNAL N471 : std_logic;
    SIGNAL N472 : std_logic;
    SIGNAL N473 : std_logic;
    SIGNAL N474 : std_logic;
    SIGNAL N475 : std_logic;
    SIGNAL N476 : std_logic;
    SIGNAL N477 : std_logic;
    SIGNAL N478 : std_logic;
    SIGNAL N479 : std_logic;
    SIGNAL N480 : std_logic;
    SIGNAL N481 : std_logic;
    SIGNAL N482 : std_logic;
    SIGNAL N483 : std_logic;
    SIGNAL N484 : std_logic;
    SIGNAL N485 : std_logic;
    SIGNAL N486 : std_logic;
    SIGNAL N487 : std_logic;
    SIGNAL N488 : std_logic;
    SIGNAL N489 : std_logic;
    SIGNAL N490 : std_logic;
    SIGNAL N491 : std_logic;
    SIGNAL N492 : std_logic;
    SIGNAL N493 : std_logic;
    SIGNAL N494 : std_logic;
    SIGNAL N495 : std_logic;
    SIGNAL N496 : std_logic;
    SIGNAL N497 : std_logic;
    SIGNAL N498 : std_logic;
    SIGNAL N499 : std_logic;
    SIGNAL N500 : std_logic;
    SIGNAL N501 : std_logic;
    SIGNAL N502 : std_logic;
    SIGNAL N503 : std_logic;
    SIGNAL N504 : std_logic;
    SIGNAL N505 : std_logic;
    SIGNAL N506 : std_logic;
    SIGNAL N507 : std_logic;
    SIGNAL N508 : std_logic;
    SIGNAL N509 : std_logic;
    SIGNAL N510 : std_logic;
    SIGNAL N511 : std_logic;
    SIGNAL N512 : std_logic;
    SIGNAL N513 : std_logic;
    SIGNAL N514 : std_logic;
    SIGNAL N515 : std_logic;
    SIGNAL N516 : std_logic;
    SIGNAL N517 : std_logic;
    SIGNAL N518 : std_logic;
    SIGNAL N519 : std_logic;
    SIGNAL N520 : std_logic;
    SIGNAL N521 : std_logic;
    SIGNAL N522 : std_logic;
    SIGNAL N523 : std_logic;
    SIGNAL N524 : std_logic;
    SIGNAL N525 : std_logic;
    SIGNAL N526 : std_logic;
    SIGNAL N527 : std_logic;
    SIGNAL N528 : std_logic;
    SIGNAL N529 : std_logic;
    SIGNAL N530 : std_logic;
    SIGNAL N531 : std_logic;
    SIGNAL N532 : std_logic;
    SIGNAL N533 : std_logic;
    SIGNAL N534 : std_logic;
    SIGNAL N535 : std_logic;
    SIGNAL N536 : std_logic;
    SIGNAL N537 : std_logic;
    SIGNAL N538 : std_logic;
    SIGNAL N539 : std_logic;
    SIGNAL N540 : std_logic;
    SIGNAL N541 : std_logic;
    SIGNAL N542 : std_logic;
    SIGNAL N543 : std_logic;
    SIGNAL N544 : std_logic;
    SIGNAL N545 : std_logic;
    SIGNAL N546 : std_logic;
    SIGNAL N547 : std_logic;
    SIGNAL N548 : std_logic;
    SIGNAL N549 : std_logic;
    SIGNAL N550 : std_logic;
    SIGNAL N551 : std_logic;
    SIGNAL N552 : std_logic;
    SIGNAL N553 : std_logic;
    SIGNAL N554 : std_logic;
    SIGNAL N555 : std_logic;
    SIGNAL N556 : std_logic;
    SIGNAL N557 : std_logic;
    SIGNAL N558 : std_logic;
    SIGNAL N559 : std_logic;
    SIGNAL N560 : std_logic;
    SIGNAL N561 : std_logic;
    SIGNAL N562 : std_logic;
    SIGNAL N563 : std_logic;
    SIGNAL N564 : std_logic;
    SIGNAL N565 : std_logic;
    SIGNAL N566 : std_logic;
    SIGNAL N567 : std_logic;
    SIGNAL N568 : std_logic;
    SIGNAL N569 : std_logic;
    SIGNAL N570 : std_logic;
    SIGNAL N571 : std_logic;
    SIGNAL N572 : std_logic;
    SIGNAL N573 : std_logic;
    SIGNAL N574 : std_logic;
    SIGNAL N575 : std_logic;
    SIGNAL N576 : std_logic;
    SIGNAL N577 : std_logic;
    SIGNAL N578 : std_logic;
    SIGNAL N579 : std_logic;
    SIGNAL N580 : std_logic;
    SIGNAL N581 : std_logic;
    SIGNAL N582 : std_logic;
    SIGNAL N583 : std_logic;
    SIGNAL N584 : std_logic;
    SIGNAL N585 : std_logic;
    SIGNAL N586 : std_logic;
    SIGNAL N587 : std_logic;
    SIGNAL N588 : std_logic;
    SIGNAL N589 : std_logic;
    SIGNAL N590 : std_logic;
    SIGNAL N591 : std_logic;
    SIGNAL N592 : std_logic;
    SIGNAL N593 : std_logic;
    SIGNAL N594 : std_logic;
    SIGNAL N595 : std_logic;
    SIGNAL N596 : std_logic;
    SIGNAL N597 : std_logic;
    SIGNAL N598 : std_logic;
    SIGNAL N599 : std_logic;
    SIGNAL N600 : std_logic;
    SIGNAL N601 : std_logic;
    SIGNAL N602 : std_logic;
    SIGNAL N603 : std_logic;
    SIGNAL N604 : std_logic;
    SIGNAL N605 : std_logic;
    SIGNAL N606 : std_logic;
    SIGNAL N607 : std_logic;
    SIGNAL N608 : std_logic;
    SIGNAL N609 : std_logic;
    SIGNAL N610 : std_logic;
    SIGNAL N611 : std_logic;
    SIGNAL N612 : std_logic;
    SIGNAL N613 : std_logic;
    SIGNAL N614 : std_logic;
    SIGNAL N615 : std_logic;
    SIGNAL N616 : std_logic;
    SIGNAL N617 : std_logic;
    SIGNAL N618 : std_logic;
    SIGNAL N619 : std_logic;
    SIGNAL N620 : std_logic;
    SIGNAL N621 : std_logic;
    SIGNAL N622 : std_logic;
    SIGNAL N623 : std_logic;
    SIGNAL N624 : std_logic;
    SIGNAL N625 : std_logic;
    SIGNAL N626 : std_logic;
    SIGNAL N627 : std_logic;
    SIGNAL N628 : std_logic;
    SIGNAL N629 : std_logic;
    SIGNAL N630 : std_logic;
    SIGNAL N631 : std_logic;
    SIGNAL N632 : std_logic;
    SIGNAL N633 : std_logic;
    SIGNAL N634 : std_logic;
    SIGNAL N635 : std_logic;
    SIGNAL N636 : std_logic;
    SIGNAL N637 : std_logic;
    SIGNAL N638 : std_logic;
    SIGNAL N639 : std_logic;
    SIGNAL N640 : std_logic;
    SIGNAL N641 : std_logic;
    SIGNAL N642 : std_logic;
    SIGNAL N643 : std_logic;
    SIGNAL N644 : std_logic;
    SIGNAL N645 : std_logic;
    SIGNAL N646 : std_logic;
    SIGNAL N647 : std_logic;
    SIGNAL N648 : std_logic;
    SIGNAL N649 : std_logic;
    SIGNAL N650 : std_logic;
    SIGNAL N651 : std_logic;
    SIGNAL N652 : std_logic;
    SIGNAL N653 : std_logic;
    SIGNAL N654 : std_logic;
    SIGNAL N655 : std_logic;
    SIGNAL N656 : std_logic;
    SIGNAL N657 : std_logic;
    SIGNAL N658 : std_logic;
    SIGNAL N659 : std_logic;
    SIGNAL N660 : std_logic;
    SIGNAL N661 : std_logic;
    SIGNAL N662 : std_logic;
    SIGNAL N663 : std_logic;
    SIGNAL N664 : std_logic;
    SIGNAL N665 : std_logic;
    SIGNAL N666 : std_logic;
    SIGNAL N667 : std_logic;
    SIGNAL N668 : std_logic;
    SIGNAL N669 : std_logic;
    SIGNAL N670 : std_logic;
    SIGNAL N671 : std_logic;
    SIGNAL N672 : std_logic;
    SIGNAL N673 : std_logic;
    SIGNAL N674 : std_logic;
    SIGNAL N675 : std_logic;
    SIGNAL N676 : std_logic;
    SIGNAL N677 : std_logic;
    SIGNAL N678 : std_logic;
    SIGNAL N679 : std_logic;
    SIGNAL N680 : std_logic;
    SIGNAL N681 : std_logic;
    SIGNAL N682 : std_logic;
    SIGNAL N683 : std_logic;
    SIGNAL N684 : std_logic;
    SIGNAL N685 : std_logic;
    SIGNAL N686 : std_logic;
    SIGNAL N687 : std_logic;
    SIGNAL N688 : std_logic;
    SIGNAL N689 : std_logic;
    SIGNAL N690 : std_logic;
    SIGNAL N691 : std_logic;
    SIGNAL N692 : std_logic;
    SIGNAL N693 : std_logic;
    SIGNAL N694 : std_logic;
    SIGNAL N695 : std_logic;
    SIGNAL N696 : std_logic;
    SIGNAL N697 : std_logic;
    SIGNAL N698 : std_logic;
    SIGNAL N699 : std_logic;
    SIGNAL N700 : std_logic;

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S2 );
    L3 <=  ( L1 AND S2 );
    L4 <=  ( S1 AND L2 );
    N500 <= NOT ( S2 AND S1 ) AFTER 7 ns;
    N600 <= NOT ( L2 OR GAB ) AFTER 7 ns;
    N700 <= NOT ( L3 OR L4 OR GBA ) AFTER 7 ns;
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>A1 , enable=>N600 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>N1 , enable=>N500 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>B1 , enable=>N700 );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>N3 , enable=>N500 );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>A2 , enable=>N600 );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>N5 , enable=>N500 );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>B2 , enable=>N700 );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>N7 , enable=>N500 );
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N9 , d=>A3 , enable=>N600 );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N10 , d=>N9 , enable=>N500 );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N11 , d=>B3 , enable=>N700 );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N12 , d=>N11 , enable=>N500 );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N13 , d=>A4 , enable=>N600 );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N14 , d=>N13 , enable=>N500 );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N15 , d=>B4 , enable=>N700 );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N16 , d=>N15 , enable=>N500 );
    N17 <=  ( N2 ) AFTER 4 ns;
    N18 <=  ( N6 ) AFTER 4 ns;
    N19 <=  ( N10 ) AFTER 4 ns;
    N20 <=  ( N14 ) AFTER 4 ns;
    N21 <=  ( N4 ) AFTER 4 ns;
    N22 <=  ( N8 ) AFTER 4 ns;
    N23 <=  ( N12 ) AFTER 4 ns;
    N24 <=  ( N16 ) AFTER 4 ns;
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N17 , en=>OCAB );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N18 , en=>OCAB );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N19 , en=>OCAB );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N20 , en=>OCAB );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>OCBA );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>OCBA );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>OCBA );
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>OCBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S240\ IS PORT(
A1_A : IN  std_logic;
A1_B : IN  std_logic;
A2_A : IN  std_logic;
A2_B : IN  std_logic;
A3_A : IN  std_logic;
A3_B : IN  std_logic;
A4_A : IN  std_logic;
A4_B : IN  std_logic;
G_A : IN  std_logic;
G_B : IN  std_logic;
Y1_A : OUT  std_logic;
Y1_B : OUT  std_logic;
Y2_A : OUT  std_logic;
Y2_B : OUT  std_logic;
Y3_A : OUT  std_logic;
Y3_B : OUT  std_logic;
Y4_A : OUT  std_logic;
Y4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S240\;

ARCHITECTURE model OF \74S240\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( A1_A ) AFTER 7 ns;
    N2 <= NOT ( A2_A ) AFTER 7 ns;
    N3 <= NOT ( A3_A ) AFTER 7 ns;
    N4 <= NOT ( A4_A ) AFTER 7 ns;
    N5 <= NOT ( A1_B ) AFTER 7 ns;
    N6 <= NOT ( A2_B ) AFTER 7 ns;
    N7 <= NOT ( A3_B ) AFTER 7 ns;
    N8 <= NOT ( A4_B ) AFTER 7 ns;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S241\ IS PORT(
\1A1\ : IN  std_logic;
\1A2\ : IN  std_logic;
\1A3\ : IN  std_logic;
\1A4\ : IN  std_logic;
\2A1\ : IN  std_logic;
\2A2\ : IN  std_logic;
\2A3\ : IN  std_logic;
\2A4\ : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
\1Y1\ : OUT  std_logic;
\1Y2\ : OUT  std_logic;
\1Y3\ : OUT  std_logic;
\1Y4\ : OUT  std_logic;
\2Y1\ : OUT  std_logic;
\2Y2\ : OUT  std_logic;
\2Y3\ : OUT  std_logic;
\2Y4\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S241\;

ARCHITECTURE model OF \74S241\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( \1A1\ ) AFTER 9 ns;
    N2 <=  ( \1A2\ ) AFTER 9 ns;
    N3 <=  ( \1A3\ ) AFTER 9 ns;
    N4 <=  ( \1A4\ ) AFTER 9 ns;
    N5 <=  ( \2A1\ ) AFTER 9 ns;
    N6 <=  ( \2A2\ ) AFTER 9 ns;
    N7 <=  ( \2A3\ ) AFTER 9 ns;
    N8 <=  ( \2A4\ ) AFTER 9 ns;
    L1 <= NOT ( \1G\ );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S242\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
GAB : IN  std_logic;
GBA : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S242\;

ARCHITECTURE model OF \74S242\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    L1 <= NOT ( GAB );
    N1 <= NOT ( A1 ) AFTER 7 ns;
    N2 <= NOT ( A2 ) AFTER 7 ns;
    N3 <= NOT ( A3 ) AFTER 7 ns;
    N4 <= NOT ( A4 ) AFTER 7 ns;
    N5 <= NOT ( B4 ) AFTER 7 ns;
    N6 <= NOT ( B3 ) AFTER 7 ns;
    N7 <= NOT ( B2 ) AFTER 7 ns;
    N8 <= NOT ( B1 ) AFTER 7 ns;
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>10 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S243\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
GAB : IN  std_logic;
GBA : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S243\;

ARCHITECTURE model OF \74S243\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    L1 <= NOT ( GAB );
    N1 <=  ( A1 ) AFTER 9 ns;
    N2 <=  ( A2 ) AFTER 9 ns;
    N3 <=  ( A3 ) AFTER 9 ns;
    N4 <=  ( A4 ) AFTER 9 ns;
    N5 <=  ( B4 ) AFTER 9 ns;
    N6 <=  ( B3 ) AFTER 9 ns;
    N7 <=  ( B2 ) AFTER 9 ns;
    N8 <=  ( B1 ) AFTER 9 ns;
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S244\ IS PORT(
\1A1\ : IN  std_logic;
\1A2\ : IN  std_logic;
\1A3\ : IN  std_logic;
\1A4\ : IN  std_logic;
\2A1\ : IN  std_logic;
\2A2\ : IN  std_logic;
\2A3\ : IN  std_logic;
\2A4\ : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
\1Y1\ : OUT  std_logic;
\1Y2\ : OUT  std_logic;
\1Y3\ : OUT  std_logic;
\1Y4\ : OUT  std_logic;
\2Y1\ : OUT  std_logic;
\2Y2\ : OUT  std_logic;
\2Y3\ : OUT  std_logic;
\2Y4\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S244\;

ARCHITECTURE model OF \74S244\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( \1A1\ ) AFTER 9 ns;
    N2 <=  ( \1A2\ ) AFTER 9 ns;
    N3 <=  ( \1A3\ ) AFTER 9 ns;
    N4 <=  ( \1A4\ ) AFTER 9 ns;
    N5 <=  ( \2A1\ ) AFTER 9 ns;
    N6 <=  ( \2A2\ ) AFTER 9 ns;
    N7 <=  ( \2A3\ ) AFTER 9 ns;
    N8 <=  ( \2A4\ ) AFTER 9 ns;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S251\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
G : IN  std_logic;
W : OUT  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S251\;

ARCHITECTURE model OF \74S251\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    N1 <= NOT ( A ) AFTER 8 ns;
    N2 <= NOT ( B ) AFTER 8 ns;
    N3 <= NOT ( C ) AFTER 8 ns;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <=  ( D0 AND N1 AND N2 AND N3 AND L1 );
    L6 <=  ( D1 AND L2 AND N2 AND N3 AND L1 );
    L7 <=  ( D2 AND N1 AND L3 AND N3 AND L1 );
    L8 <=  ( D3 AND L2 AND L3 AND N3 AND L1 );
    L9 <=  ( D4 AND N1 AND N2 AND L4 AND L1 );
    L10 <=  ( D5 AND L2 AND N2 AND L4 AND L1 );
    L11 <=  ( D6 AND N1 AND L3 AND L4 AND L1 );
    L12 <=  ( D7 AND L2 AND L3 AND L4 AND L1 );
    L13 <= NOT ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 );
    N4 <= NOT ( L13 ) AFTER 12 ns;
    N5 <=  ( L13 ) AFTER 7 ns;
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S253\ IS PORT(
\1C0\ : IN  std_logic;
\1C1\ : IN  std_logic;
\1C2\ : IN  std_logic;
\1C3\ : IN  std_logic;
\2C0\ : IN  std_logic;
\2C1\ : IN  std_logic;
\2C2\ : IN  std_logic;
\2C3\ : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S253\;

ARCHITECTURE model OF \74S253\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( \1G\ );
    L4 <= NOT ( \2G\ );
    N1 <= NOT ( B ) AFTER 9 ns;
    N2 <= NOT ( A ) AFTER 9 ns;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L5 <=  ( N1 AND N2 AND \1C0\ AND L1 );
    L6 <=  ( N1 AND \1C1\ AND L3 AND L1 );
    L7 <=  ( N2 AND \1C2\ AND L2 AND L1 );
    L8 <=  ( \1C3\ AND L3 AND L2 AND L1 );
    L9 <=  ( N1 AND N2 AND \2C0\ AND L4 );
    L10 <=  ( N1 AND \2C1\ AND L3 AND L4 );
    L11 <=  ( N2 AND \2C2\ AND L2 AND L4 );
    L12 <=  ( \2C3\ AND L3 AND L2 AND L4 );
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 9 ns;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 9 ns;
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S257\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\3A\ : IN  std_logic;
\3B\ : IN  std_logic;
\4A\ : IN  std_logic;
\4B\ : IN  std_logic;
G : IN  std_logic;
\A\\/B\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
\3Y\ : OUT  std_logic;
\4Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S257\;

ARCHITECTURE model OF \74S257\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    N1 <= NOT ( \A\\/B\ ) AFTER 8 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 8 ns;
    N3 <=  ( L5 OR L6 ) AFTER 8 ns;
    N4 <=  ( L7 OR L8 ) AFTER 8 ns;
    N5 <=  ( L9 OR L10 ) AFTER 8 ns;
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S258\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\3A\ : IN  std_logic;
\3B\ : IN  std_logic;
\4A\ : IN  std_logic;
\4B\ : IN  std_logic;
G : IN  std_logic;
\A\\/B\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
\3Y\ : OUT  std_logic;
\4Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S258\;

ARCHITECTURE model OF \74S258\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    N1 <= NOT ( \A\\/B\ ) AFTER 6 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <= NOT ( L3 OR L4 ) AFTER 6 ns;
    N3 <= NOT ( L5 OR L6 ) AFTER 6 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 6 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 6 ns;
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>23 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S260\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
I4_A : IN  std_logic;
I4_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S260\;

ARCHITECTURE model OF \74S260\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A OR I3_A OR I4_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B OR I1_B OR I2_B OR I3_B OR I4_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S268\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
C : IN  std_logic;
OC : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S268\;

ARCHITECTURE model OF \74S268\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( OC );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S280\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
I : IN  std_logic;
EVEN : OUT  std_logic;
ODD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S280\;

ARCHITECTURE model OF \74S280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 19 ns;
    ODD <=  ( L1 ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S283\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
C0 : IN  std_logic;
S1 : OUT  std_logic;
S2 : OUT  std_logic;
S3 : OUT  std_logic;
S4 : OUT  std_logic;
C4 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S283\;

ARCHITECTURE model OF \74S283\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;

    BEGIN
    N1 <= NOT ( C0 ) AFTER 5 ns;
    N10 <= NOT ( C0 ) AFTER 4 ns;
    N2 <= NOT ( A1 OR B1 ) AFTER 5 ns;
    N3 <= NOT ( A1 AND B1 ) AFTER 5 ns;
    N4 <= NOT ( B2 OR A2 ) AFTER 5 ns;
    N5 <= NOT ( B2 AND A2 ) AFTER 5 ns;
    N6 <= NOT ( A3 OR B3 ) AFTER 5 ns;
    N7 <= NOT ( A3 AND B3 ) AFTER 5 ns;
    N8 <= NOT ( B4 OR A4 ) AFTER 5 ns;
    N9 <= NOT ( B4 AND A4 ) AFTER 5 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <=  ( L2 AND N3 );
    L4 <=  ( N1 AND N3 );
    L5 <= NOT ( N4 );
    L6 <=  ( L5 AND N5 );
    L7 <=  ( N1 AND N3 AND N5 );
    L8 <=  ( N5 AND N2 );
    L9 <= NOT ( N6 );
    L10 <=  ( L9 AND N7 );
    L11 <=  ( N1 AND N3 AND N5 AND N7 );
    L12 <=  ( N5 AND N7 AND N2 );
    L13 <=  ( N7 AND N4 );
    L14 <= NOT ( N8 );
    L15 <=  ( L14 AND N9 );
    L16 <=  ( N10 AND N3 AND N5 AND N7 AND N9 );
    L17 <=  ( N5 AND N7 AND N9 AND N2 );
    L18 <=  ( N7 AND N9 AND N4 );
    L19 <=  ( N9 AND N6 );
    L20 <= NOT ( L4 OR N2 );
    L21 <= NOT ( L7 OR L8 OR N4 );
    L22 <= NOT ( L11 OR L12 OR L13 OR N6 );
    S1 <=  ( L1 XOR L3 ) AFTER 13 ns;
    S2 <=  ( L20 XOR L6 ) AFTER 13 ns;
    S3 <=  ( L21 XOR L10 ) AFTER 13 ns;
    S4 <=  ( L22 XOR L15 ) AFTER 13 ns;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S299\ IS PORT(
G1 : IN  std_logic;
G2 : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
SR : IN  std_logic;
SL : IN  std_logic;
\Q\\A\\\ : OUT  std_logic;
\A/QA\ : INOUT  std_logic;
\B/QB\ : INOUT  std_logic;
\C/QC\ : INOUT  std_logic;
\D/QD\ : INOUT  std_logic;
\E/QE\ : INOUT  std_logic;
\F/QF\ : INOUT  std_logic;
\G/QG\ : INOUT  std_logic;
\H/QH\ : INOUT  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S299\;

ARCHITECTURE model OF \74S299\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L24 : std_logic;
    SIGNAL L25 : std_logic;
    SIGNAL L26 : std_logic;
    SIGNAL L27 : std_logic;
    SIGNAL L28 : std_logic;
    SIGNAL L29 : std_logic;
    SIGNAL L30 : std_logic;
    SIGNAL L31 : std_logic;
    SIGNAL L32 : std_logic;
    SIGNAL L33 : std_logic;
    SIGNAL L34 : std_logic;
    SIGNAL L35 : std_logic;
    SIGNAL L36 : std_logic;
    SIGNAL L37 : std_logic;
    SIGNAL L38 : std_logic;
    SIGNAL L39 : std_logic;
    SIGNAL L40 : std_logic;
    SIGNAL L41 : std_logic;
    SIGNAL L42 : std_logic;
    SIGNAL L43 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;
    SIGNAL N21 : std_logic;
    SIGNAL N22 : std_logic;

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S0 );
    N1 <=  ( S1 AND S0 ) AFTER 8 ns;
    N2 <=  ( S1 AND L2 ) AFTER 0 ns;
    N3 <=  ( L1 AND S0 ) AFTER 0 ns;
    N4 <=  ( L1 AND L2 ) AFTER 0 ns;
    N5 <= NOT ( S1 AND S0 ) AFTER 0 ns;
    N6 <= NOT ( G1 OR G2 ) AFTER 0 ns;
    L3 <=  ( N5 AND N6 );
    L4 <=  ( SR AND N3 );
    L5 <=  ( N2 AND N8 );
    L6 <=  ( N1 AND \A/QA\ );
    L7 <=  ( N4 AND N7 );
    L8 <=  ( L4 OR L5 OR L6 OR L7 );
    L9 <=  ( N7 AND N3 );
    L10 <=  ( N2 AND N9 );
    L11 <=  ( N1 AND \B/QB\ );
    L12 <=  ( N4 AND N8 );
    L13 <=  ( L9 OR L10 OR L11 OR L12 );
    L14 <=  ( N8 AND N3 );
    L15 <=  ( N2 AND N10 );
    L16 <=  ( N1 AND \C/QC\ );
    L17 <=  ( N4 AND N9 );
    L18 <=  ( L14 OR L15 OR L16 OR L17 );
    L19 <=  ( N9 AND N3 );
    L20 <=  ( N2 AND N11 );
    L21 <=  ( N1 AND \D/QD\ );
    L22 <=  ( N4 AND N10 );
    L23 <=  ( L19 OR L20 OR L21 OR L22 );
    L24 <=  ( N10 AND N3 );
    L25 <=  ( N2 AND N12 );
    L26 <=  ( N1 AND \E/QE\ );
    L27 <=  ( N4 AND N11 );
    L28 <=  ( L24 OR L25 OR L26 OR L27 );
    L29 <=  ( N11 AND N3 );
    L30 <=  ( N2 AND N13 );
    L31 <=  ( N1 AND \F/QF\ );
    L32 <=  ( N4 AND N12 );
    L33 <=  ( L29 OR L30 OR L31 OR L32 );
    L34 <=  ( N12 AND N3 );
    L35 <=  ( N2 AND N14 );
    L36 <=  ( N1 AND \G/QG\ );
    L37 <=  ( N4 AND N13 );
    L38 <=  ( L34 OR L35 OR L36 OR L37 );
    L39 <=  ( N13 AND N3 );
    L40 <=  ( N2 AND SL );
    L41 <=  ( N1 AND \H/QH\ );
    L42 <=  ( N4 AND N14 );
    L43 <=  ( L39 OR L40 OR L41 OR L42 );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLR );
    N15 <=  ( N7 ) AFTER 3 ns;
    N16 <=  ( N8 ) AFTER 3 ns;
    N17 <=  ( N9 ) AFTER 3 ns;
    N18 <=  ( N10 ) AFTER 3 ns;
    N19 <=  ( N11 ) AFTER 3 ns;
    N20 <=  ( N12 ) AFTER 3 ns;
    N21 <=  ( N13 ) AFTER 3 ns;
    N22 <=  ( N14 ) AFTER 3 ns;
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N15 , en=>L3 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N16 , en=>L3 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N17 , en=>L3 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N18 , en=>L3 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N19 , en=>L3 );
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N20 , en=>L3 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N21 , en=>L3 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N22 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 4 ns;
    \Q\\H\\\ <=  ( N14 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S350\ IS PORT(
D3 : IN  std_logic;
D2 : IN  std_logic;
D1 : IN  std_logic;
D0 : IN  std_logic;
\D-1\ : IN  std_logic;
\D-2\ : IN  std_logic;
\D-3\ : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
OE : IN  std_logic;
Y3 : OUT  std_logic;
Y2 : OUT  std_logic;
Y1 : OUT  std_logic;
Y0 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S350\;

ARCHITECTURE model OF \74S350\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( S0 ) AFTER 8 ns;
    N2 <= NOT ( S1 ) AFTER 8 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( OE );
    L4 <=  ( N1 AND N2 AND D3 );
    L5 <=  ( L1 AND N2 AND D2 );
    L6 <=  ( N1 AND L2 AND D1 );
    L7 <=  ( L1 AND L2 AND D0 );
    L8 <=  ( N1 AND N2 AND D2 );
    L9 <=  ( L1 AND N2 AND D1 );
    L10 <=  ( N1 AND L2 AND D0 );
    L11 <=  ( L1 AND L2 AND \D-1\ );
    L12 <=  ( N1 AND N2 AND D1 );
    L13 <=  ( L1 AND N2 AND D0 );
    L14 <=  ( N1 AND L2 AND \D-1\ );
    L15 <=  ( L1 AND L2 AND \D-2\ );
    L16 <=  ( N1 AND N2 AND D0 );
    L17 <=  ( L1 AND N2 AND \D-1\ );
    L18 <=  ( N1 AND L2 AND \D-2\ );
    L19 <=  ( L1 AND L2 AND \D-3\ );
    N3 <=  ( L4 OR L5 OR L6 OR L7 ) AFTER 12 ns;
    N4 <=  ( L8 OR L9 OR L10 OR L11 ) AFTER 12 ns;
    N5 <=  ( L12 OR L13 OR L14 OR L15 ) AFTER 12 ns;
    N6 <=  ( L16 OR L17 OR L18 OR L19 ) AFTER 12 ns;
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L3 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y2 , i1=>N4 , en=>L3 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y1 , i1=>N5 , en=>L3 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y0 , i1=>N6 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S373\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
OC : IN  std_logic;
G : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S373\;

ARCHITECTURE model OF \74S373\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    L1 <= NOT ( OC );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S374\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
OC : IN  std_logic;
CLK : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S374\;

ARCHITECTURE model OF \74S374\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    L1 <= NOT ( OC );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S381\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
CN : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
G : OUT  std_logic;
P : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S381\;

ARCHITECTURE model OF \74S381\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L14 : std_logic;
    SIGNAL L15 : std_logic;
    SIGNAL L16 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L20 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L24 : std_logic;
    SIGNAL L25 : std_logic;
    SIGNAL L26 : std_logic;
    SIGNAL L27 : std_logic;
    SIGNAL L28 : std_logic;
    SIGNAL L29 : std_logic;
    SIGNAL L30 : std_logic;
    SIGNAL L31 : std_logic;
    SIGNAL L32 : std_logic;
    SIGNAL L33 : std_logic;
    SIGNAL L34 : std_logic;
    SIGNAL L35 : std_logic;
    SIGNAL L36 : std_logic;
    SIGNAL L37 : std_logic;
    SIGNAL L38 : std_logic;
    SIGNAL L39 : std_logic;
    SIGNAL L40 : std_logic;
    SIGNAL L41 : std_logic;
    SIGNAL L42 : std_logic;
    SIGNAL L43 : std_logic;
    SIGNAL L44 : std_logic;
    SIGNAL L45 : std_logic;
    SIGNAL L46 : std_logic;
    SIGNAL L47 : std_logic;
    SIGNAL L48 : std_logic;
    SIGNAL L49 : std_logic;
    SIGNAL L50 : std_logic;
    SIGNAL L51 : std_logic;
    SIGNAL L52 : std_logic;
    SIGNAL L53 : std_logic;
    SIGNAL L54 : std_logic;
    SIGNAL L55 : std_logic;
    SIGNAL L56 : std_logic;
    SIGNAL L57 : std_logic;
    SIGNAL L58 : std_logic;
    SIGNAL L59 : std_logic;
    SIGNAL L60 : std_logic;
    SIGNAL L61 : std_logic;
    SIGNAL L62 : std_logic;
    SIGNAL L63 : std_logic;
    SIGNAL L64 : std_logic;
    SIGNAL L65 : std_logic;
    SIGNAL L66 : std_logic;
    SIGNAL L67 : std_logic;
    SIGNAL L68 : std_logic;
    SIGNAL L69 : std_logic;
    SIGNAL L70 : std_logic;
    SIGNAL L71 : std_logic;
    SIGNAL L72 : std_logic;
    SIGNAL L73 : std_logic;
    SIGNAL L74 : std_logic;
    SIGNAL L75 : std_logic;
    SIGNAL L76 : std_logic;
    SIGNAL L77 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;
    SIGNAL N21 : std_logic;
    SIGNAL N22 : std_logic;
    SIGNAL N23 : std_logic;
    SIGNAL N24 : std_logic;
    SIGNAL N25 : std_logic;
    SIGNAL N26 : std_logic;
    SIGNAL N27 : std_logic;
    SIGNAL N28 : std_logic;
    SIGNAL N29 : std_logic;
    SIGNAL N30 : std_logic;
    SIGNAL N31 : std_logic;
    SIGNAL N32 : std_logic;
    SIGNAL N33 : std_logic;
    SIGNAL N34 : std_logic;
    SIGNAL N35 : std_logic;
    SIGNAL N36 : std_logic;
    SIGNAL N37 : std_logic;
    SIGNAL N38 : std_logic;
    SIGNAL N39 : std_logic;
    SIGNAL N40 : std_logic;
    SIGNAL N41 : std_logic;
    SIGNAL N42 : std_logic;
    SIGNAL N43 : std_logic;
    SIGNAL N44 : std_logic;
    SIGNAL N45 : std_logic;
    SIGNAL N46 : std_logic;
    SIGNAL N47 : std_logic;
    SIGNAL N48 : std_logic;
    SIGNAL N49 : std_logic;
    SIGNAL N50 : std_logic;
    SIGNAL N51 : std_logic;
    SIGNAL N52 : std_logic;
    SIGNAL N53 : std_logic;
    SIGNAL N54 : std_logic;
    SIGNAL N55 : std_logic;
    SIGNAL N56 : std_logic;
    SIGNAL N57 : std_logic;
    SIGNAL N58 : std_logic;
    SIGNAL N59 : std_logic;
    SIGNAL N60 : std_logic;
    SIGNAL N61 : std_logic;
    SIGNAL N62 : std_logic;
    SIGNAL N63 : std_logic;
    SIGNAL N64 : std_logic;
    SIGNAL N65 : std_logic;
    SIGNAL N66 : std_logic;
    SIGNAL N67 : std_logic;
    SIGNAL N68 : std_logic;
    SIGNAL N69 : std_logic;
    SIGNAL N70 : std_logic;
    SIGNAL N71 : std_logic;
    SIGNAL N72 : std_logic;
    SIGNAL N73 : std_logic;
    SIGNAL N74 : std_logic;
    SIGNAL N75 : std_logic;
    SIGNAL N76 : std_logic;
    SIGNAL N77 : std_logic;
    SIGNAL N78 : std_logic;
    SIGNAL N79 : std_logic;
    SIGNAL N80 : std_logic;
    SIGNAL N81 : std_logic;
    SIGNAL N82 : std_logic;
    SIGNAL N83 : std_logic;
    SIGNAL N84 : std_logic;
    SIGNAL N85 : std_logic;
    SIGNAL N86 : std_logic;
    SIGNAL N87 : std_logic;
    SIGNAL N88 : std_logic;
    SIGNAL N89 : std_logic;
    SIGNAL N90 : std_logic;
    SIGNAL N91 : std_logic;
    SIGNAL N92 : std_logic;
    SIGNAL N93 : std_logic;
    SIGNAL N94 : std_logic;
    SIGNAL N95 : std_logic;
    SIGNAL N96 : std_logic;
    SIGNAL N97 : std_logic;
    SIGNAL N98 : std_logic;
    SIGNAL N99 : std_logic;
    SIGNAL N100 : std_logic;
    SIGNAL N101 : std_logic;
    SIGNAL N102 : std_logic;
    SIGNAL N103 : std_logic;
    SIGNAL N104 : std_logic;
    SIGNAL N105 : std_logic;
    SIGNAL N106 : std_logic;
    SIGNAL N107 : std_logic;

    BEGIN
    N101 <= NOT ( S0 ) AFTER 3 ns;
    N102 <= NOT ( S1 ) AFTER 3 ns;
    N103 <= NOT ( S2 ) AFTER 3 ns;
    N105 <=  ( S0 ) AFTER 3 ns;
    N106 <=  ( S1 ) AFTER 3 ns;
    N107 <=  ( S2 ) AFTER 3 ns;
    L4 <=  ( N103 AND N102 AND N105 );
    L5 <=  ( N103 AND N106 AND N101 );
    L6 <=  ( N107 AND N106 AND N105 );
    L7 <=  ( N102 AND N105 );
    L8 <=  ( N107 AND N105 );
    L9 <=  ( N106 AND N101 );
    L10 <=  ( N106 AND N105 );
    L11 <=  ( N107 AND N102 );
    L12 <=  ( N103 AND N105 );
    L13 <=  ( N103 AND N106 );
    L14 <= NOT ( A0 );
    L15 <= NOT ( B0 );
    L16 <= NOT ( A1 );
    L17 <= NOT ( B1 );
    L18 <= NOT ( A2 );
    L19 <= NOT ( B2 );
    L20 <= NOT ( A3 );
    L21 <= NOT ( B3 );
    L22 <=  ( N3 AND A0 AND L15 );
    L23 <=  ( N2 AND A0 AND B0 );
    L24 <=  ( N3 AND L14 AND B0 );
    L25 <=  ( N1 AND L14 AND L15 );
    L26 <=  ( N6 AND A0 AND L15 );
    L27 <=  ( N5 AND A0 AND B0 );
    L28 <=  ( N4 AND L14 AND B0 );
    L29 <=  ( L14 AND L15 );
    L30 <=  ( N3 AND A1 AND L17 );
    L31 <=  ( N2 AND A1 AND B1 );
    L32 <=  ( N3 AND L16 AND B1 );
    L33 <=  ( N1 AND L16 AND L17 );
    L34 <=  ( N6 AND A1 AND L17 );
    L35 <=  ( N5 AND A1 AND B1 );
    L36 <=  ( N4 AND L16 AND B1 );
    L37 <=  ( L16 AND L17 );
    L38 <=  ( N3 AND A2 AND L19 );
    L39 <=  ( N2 AND A2 AND B2 );
    L40 <=  ( N3 AND L18 AND B2 );
    L41 <=  ( N1 AND L18 AND L19 );
    L42 <=  ( N6 AND A2 AND L19 );
    L43 <=  ( N5 AND A2 AND B2 );
    L44 <=  ( N4 AND L18 AND B2 );
    L45 <=  ( L18 AND L19 );
    L46 <=  ( N3 AND A3 AND L21 );
    L47 <=  ( N2 AND A3 AND B3 );
    L48 <=  ( N3 AND L20 AND B3 );
    L49 <=  ( N1 AND L20 AND L21 );
    L50 <=  ( N6 AND A3 AND L21 );
    L51 <=  ( N5 AND A3 AND B3 );
    L52 <=  ( N4 AND L20 AND B3 );
    L53 <=  ( L20 AND L21 );
    L54 <= NOT ( N7 AND CN );
    L70 <= NOT ( L22 OR L23 OR L24 OR L25 );
    L71 <= NOT ( L26 OR L27 OR L28 OR L29 );
    L72 <= NOT ( L30 OR L31 OR L32 OR L33 );
    L73 <= NOT ( L34 OR L35 OR L36 OR L37 );
    L74 <= NOT ( L38 OR L39 OR L40 OR L41 );
    L75 <= NOT ( L42 OR L43 OR L44 OR L45 );
    L76 <= NOT ( L46 OR L47 OR L48 OR L49 );
    L77 <= NOT ( L50 OR L51 OR L52 OR L53 );
    L55 <=  ( N7 AND CN AND L70 );
    L56 <=  ( N7 AND L71 );
    L57 <=  ( N7 AND CN AND L70 AND L72 );
    L58 <=  ( N7 AND L72 AND L71 );
    L59 <=  ( N7 AND L73 );
    L60 <=  ( N7 AND CN AND L70 AND L72 AND L74 );
    L61 <=  ( N7 AND L72 AND L74 AND L71 );
    L62 <=  ( L73 AND L74 AND N7 );
    L63 <=  ( N7 AND L75 );
    L64 <=  ( L72 AND L74 AND L76 AND L71 );
    L65 <=  ( L74 AND L76 AND L73 );
    L66 <=  ( L76 AND L75 );
    L67 <= NOT ( L55 OR L56 );
    L68 <= NOT ( L57 OR L58 OR L59 );
    L69 <= NOT ( L60 OR L61 OR L62 OR L63 );
    N1 <= NOT ( L4 OR L5 OR L6 ) AFTER 10 ns;
    N2 <= NOT ( L7 OR L8 OR L9 ) AFTER 10 ns;
    N3 <= NOT ( L10 OR L11 ) AFTER 10 ns;
    N4 <= NOT ( L4 ) AFTER 10 ns;
    N5 <= NOT ( N103 AND N106 AND N105 ) AFTER 10 ns;
    N6 <= NOT ( L5 ) AFTER 10 ns;
    N7 <=  ( L12 OR L13 ) AFTER 10 ns;
    F0 <= NOT ( L70 XOR L54 ) AFTER 17 ns;
    F1 <= NOT ( L72 XOR L67 ) AFTER 17 ns;
    F2 <= NOT ( L74 XOR L68 ) AFTER 17 ns;
    F3 <= NOT ( L76 XOR L69 ) AFTER 17 ns;
    P <= NOT ( L70 AND L72 AND L74 AND L76 ) AFTER 18 ns;
    G <= NOT ( L64 OR L65 OR L66 OR L77 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74S412\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
STB : IN  std_logic;
M : IN  std_logic;
CLR : IN  std_logic;
O1 : OUT  std_logic;
O2 : OUT  std_logic;
O3 : OUT  std_logic;
O4 : OUT  std_logic;
O5 : OUT  std_logic;
O6 : OUT  std_logic;
O7 : OUT  std_logic;
O8 : OUT  std_logic;
INT : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74S412\;

ARCHITECTURE model OF \74S412\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL ZERO : std_logic := '0';
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( S1 );
    L2 <=  ( L1 AND S2 );
    L3 <= NOT ( CLR );
    L4 <= NOT ( L2 OR L3 );
    L5 <= NOT ( M );
    L6 <=  ( M AND L2 );
    L7 <=  ( N11 OR L6 );
    N1 <= NOT ( STB ) AFTER 0 ns;
    N11 <=  ( STB AND L5 ) AFTER 7 ns;
    DQFFP_0 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N2 , d=>ZERO , clk=>N1 , pr=>L4 );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N3 , d=>D1 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N4 , d=>D2 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N5 , d=>D3 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N6 , d=>D4 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N7 , d=>D5 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N8 , d=>D6 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N9 , d=>D7 , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N10 , d=>D8 , enable=>L7 , pr=>ONE , cl=>CLR );
    L8 <=  ( M OR L2 );
    L9 <= NOT ( N2 );
    INT <= NOT ( L9 OR L2 ) AFTER 18 ns;
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O1 , i1=>N3 , en=>L8 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O2 , i1=>N4 , en=>L8 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O3 , i1=>N5 , en=>L8 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O4 , i1=>N6 , en=>L8 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O5 , i1=>N7 , en=>L8 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O6 , i1=>N8 , en=>L8 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O7 , i1=>N9 , en=>L8 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>O8 , i1=>N10 , en=>L8 );
END model;

