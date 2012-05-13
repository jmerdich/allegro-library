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
-- File:			F.VHD
-- Resource:	  Motorola, FAST and LS TTL Data, Q2/92, DL121/D, REV 5
-- Delay units:	  Picoseconds
-- Characteristics: MC74FXXX MIN/MAX, Vcc=5V +/-0.5 V TA @ 0C to 70C

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  

 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F00\ IS PORT(
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
END \74F00\;

ARCHITECTURE model OF \74F00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2400 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2400 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2400 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F02\ IS PORT(
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
END \74F02\;

ARCHITECTURE model OF \74F02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 2500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 2500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 2500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F04\ IS PORT(
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
END \74F04\;

ARCHITECTURE model OF \74F04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 2400 ps;
    O_B <= NOT ( I_B ) AFTER 2400 ps;
    O_C <= NOT ( I_C ) AFTER 2400 ps;
    O_D <= NOT ( I_D ) AFTER 2400 ps;
    O_E <= NOT ( I_E ) AFTER 2400 ps;
    O_F <= NOT ( I_F ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F08\ IS PORT(
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
END \74F08\;

ARCHITECTURE model OF \74F08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 3000 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 3000 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 3000 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F10\ IS PORT(
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
END \74F10\;

ARCHITECTURE model OF \74F10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 2400 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 2400 ps;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F11\ IS PORT(
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
END \74F11\;

ARCHITECTURE model OF \74F11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 3000 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 3000 ps;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F14\ IS PORT(
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
END \74F14\;

ARCHITECTURE model OF \74F14\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 3500 ps;
    O_B <= NOT ( I_B ) AFTER 3500 ps;
    O_C <= NOT ( I_C ) AFTER 3500 ps;
    O_D <= NOT ( I_D ) AFTER 3500 ps;
    O_E <= NOT ( I_E ) AFTER 3500 ps;
    O_F <= NOT ( I_F ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F20\ IS PORT(
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
END \74F20\;

ARCHITECTURE model OF \74F20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 2400 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F27\ IS PORT(
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
END \74F27\;

ARCHITECTURE model OF \74F27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 2400 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 2400 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F30\ IS PORT(
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
END \74F30\;

ARCHITECTURE model OF \74F30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 4000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F32\ IS PORT(
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
END \74F32\;

ARCHITECTURE model OF \74F32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 3000 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 3000 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 3000 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F37\ IS PORT(
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
END \74F37\;

ARCHITECTURE model OF \74F37\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F38\ IS PORT(
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
END \74F38\;

ARCHITECTURE model OF \74F38\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 7500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 7500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 7500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 7500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F40\ IS PORT(
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
END \74F40\;

ARCHITECTURE model OF \74F40\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F51\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\1C\ : IN  std_logic;
\1D\ : IN  std_logic;
\1E\ : IN  std_logic;
\1F\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\2C\ : IN  std_logic;
\2D\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F51\;

ARCHITECTURE model OF \74F51\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( \2A\ AND \2B\ );
    L2 <=  ( \2C\ AND \2D\ );
    \2Y\ <= NOT ( L1 OR L2 ) AFTER 2500 ps;
    L3 <=  ( \1A\ AND \1B\ AND \1C\ );
    L4 <=  ( \1D\ AND \1E\ AND \1F\ );
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F64\ IS PORT(
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
END \74F64\;

ARCHITECTURE model OF \74F64\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( A AND B AND C AND D );
    L2 <=  ( E AND F );
    L3 <=  ( G AND H AND I );
    L4 <=  ( J AND K );
    Y <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 6000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F74\ IS PORT(
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
END \74F74\;

ARCHITECTURE model OF \74F74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>4400 ps, tfall_clk_q=>3500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>4400 ps, tfall_clk_q=>3500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F85\ IS PORT(
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
END \74F85\;

ARCHITECTURE model OF \74F85\ IS
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
    L1 <= NOT ( B3 AND A3 );
    L2 <= NOT ( A2 AND B2 );
    L3 <= NOT ( B1 AND A1 );
    L4 <= NOT ( B0 AND A0 );
    L5 <=  ( L1 AND A3 );
    L6 <=  ( L1 AND B3 );
    L7 <=  ( L2 AND A2 );
    L8 <=  ( L2 AND B2 );
    L9 <=  ( L3 AND A1 );
    L10 <=  ( L3 AND B1 );
    L11 <=  ( L4 AND A0 );
    L12 <=  ( L4 AND B0 );
    N1 <= NOT ( L5 OR L6 ) AFTER 3500 ps;
    N2 <= NOT ( L7 OR L8 ) AFTER 3500 ps;
    N3 <= NOT ( L9 OR L10 ) AFTER 3500 ps;
    N4 <= NOT ( L11 OR L12 ) AFTER 3500 ps;
    N5 <=  ( L6 ) AFTER 3500 ps;
    N6 <=  ( L5 ) AFTER 3500 ps;
    L13 <=  ( L2 AND N1 AND B2 );
    L14 <=  ( L3 AND N1 AND N2 AND B1 );
    L15 <=  ( L4 AND N1 AND N2 AND N3 AND B0 );
    L16 <=  ( N1 AND N2 AND N3 AND N4 AND \A<Bi\ );
    L17 <=  ( N1 AND N2 AND N3 AND N4 AND \A=Bi\ );
    L18 <=  ( N1 AND N2 AND N3 AND N4 AND \A=Bi\ );
    L19 <=  ( N1 AND N2 AND N3 AND N4 AND \A>Bi\ );
    L20 <=  ( L4 AND N1 AND N2 AND N3 AND A0 );
    L21 <=  ( L3 AND N1 AND N2 AND A1 );
    L22 <=  ( L2 AND N1 AND A2 );
    \A>Bo\ <= NOT ( L13 OR L14 OR L15 OR L16 OR L17 OR N5 ) AFTER 2500 ps;
    \A<Bo\ <= NOT ( L18 OR L19 OR L20 OR L21 OR L22 OR N6 ) AFTER 2500 ps;
    \A=Bo\ <=  ( N1 AND N2 AND N3 AND N4 AND \A=Bi\ ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F86\ IS PORT(
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
END \74F86\;

ARCHITECTURE model OF \74F86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 3500 ps;
    O_B <=  ( I0_B XOR I1_B ) AFTER 3500 ps;
    O_C <=  ( I0_C XOR I1_C ) AFTER 3500 ps;
    O_D <=  ( I0_D XOR I1_D ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F109\ IS PORT(
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
END \74F109\;

ARCHITECTURE model OF \74F109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F112\ IS PORT(
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
END \74F112\;

ARCHITECTURE model OF \74F112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F113\ IS PORT(
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
END \74F113\;

ARCHITECTURE model OF \74F113\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFP_0 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_1 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F114\ IS PORT(
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
END \74F114\;

ARCHITECTURE model OF \74F114\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F132\ IS PORT(
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
END \74F132\;

ARCHITECTURE model OF \74F132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 3500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F138\ IS PORT(
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
END \74F138\;

ARCHITECTURE model OF \74F138\ IS
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
    N1 <=  ( A ) AFTER 3000 ps;
    N2 <=  ( B ) AFTER 3000 ps;
    N3 <=  ( C ) AFTER 3000 ps;
    N4 <= NOT ( A ) AFTER 3000 ps;
    N5 <= NOT ( B ) AFTER 3000 ps;
    N6 <= NOT ( C ) AFTER 3000 ps;
    N7 <=  ( G1 ) AFTER 3000 ps;
    N8 <= NOT ( G2A OR G2B ) AFTER 2000 ps;
    L1 <=  ( N7 AND N8 );
    Y0 <= NOT ( L1 AND N4 AND N5 AND N6 ) AFTER 5000 ps;
    Y1 <= NOT ( L1 AND N1 AND N5 AND N6 ) AFTER 5000 ps;
    Y2 <= NOT ( L1 AND N2 AND N4 AND N6 ) AFTER 5000 ps;
    Y3 <= NOT ( L1 AND N1 AND N2 AND N6 ) AFTER 5000 ps;
    Y4 <= NOT ( L1 AND N3 AND N4 AND N5 ) AFTER 5000 ps;
    Y5 <= NOT ( L1 AND N1 AND N3 AND N5 ) AFTER 5000 ps;
    Y6 <= NOT ( L1 AND N2 AND N3 AND N4 ) AFTER 5000 ps;
    Y7 <= NOT ( L1 AND N1 AND N2 AND N3 ) AFTER 5000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F139\ IS PORT(
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
END \74F139\;

ARCHITECTURE model OF \74F139\ IS
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
    N1 <= NOT ( G_A ) AFTER 2000 ps;
    N2 <=  ( A_A ) AFTER 3000 ps;
    N3 <=  ( B_A ) AFTER 3000 ps;
    N4 <= NOT ( A_A ) AFTER 3000 ps;
    N5 <= NOT ( B_A ) AFTER 3000 ps;
    N6 <= NOT ( G_B ) AFTER 2000 ps;
    N7 <=  ( A_B ) AFTER 3000 ps;
    N8 <=  ( B_B ) AFTER 3000 ps;
    N9 <= NOT ( A_B ) AFTER 3000 ps;
    N10 <= NOT ( B_B ) AFTER 3000 ps;
    Y0_A <= NOT ( N1 AND N4 AND N5 ) AFTER 5000 ps;
    Y1_A <= NOT ( N1 AND N2 AND N5 ) AFTER 5000 ps;
    Y2_A <= NOT ( N1 AND N3 AND N4 ) AFTER 5000 ps;
    Y3_A <= NOT ( N1 AND N2 AND N3 ) AFTER 5000 ps;
    Y0_B <= NOT ( N6 AND N9 AND N10 ) AFTER 5000 ps;
    Y1_B <= NOT ( N6 AND N7 AND N10 ) AFTER 5000 ps;
    Y2_B <= NOT ( N6 AND N8 AND N9 ) AFTER 5000 ps;
    Y3_B <= NOT ( N6 AND N7 AND N8 ) AFTER 5000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F148\ IS PORT(
\0\ : IN  std_logic;
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\3\ : IN  std_logic;
\4\ : IN  std_logic;
\5\ : IN  std_logic;
\6\ : IN  std_logic;
\7\ : IN  std_logic;
EI : IN  std_logic;
A0 : OUT  std_logic;
A1 : OUT  std_logic;
A2 : OUT  std_logic;
GS : OUT  std_logic;
EO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F148\;

ARCHITECTURE model OF \74F148\ IS
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

    BEGIN
    N1 <=  ( \0\ ) AFTER 5000 ps;
    N2 <=  ( \1\ ) AFTER 5000 ps;
    N3 <=  ( \2\ ) AFTER 5000 ps;
    N4 <=  ( \3\ ) AFTER 5000 ps;
    N5 <=  ( \4\ ) AFTER 5000 ps;
    N6 <=  ( \5\ ) AFTER 5000 ps;
    N7 <=  ( \6\ ) AFTER 5000 ps;
    N8 <=  ( \7\ ) AFTER 5000 ps;
    N9 <= NOT ( \1\ ) AFTER 3000 ps;
    N10 <= NOT ( \2\ ) AFTER 3000 ps;
    N11 <= NOT ( \3\ ) AFTER 3000 ps;
    N12 <= NOT ( \4\ ) AFTER 3000 ps;
    N13 <= NOT ( \5\ ) AFTER 3000 ps;
    N14 <= NOT ( \6\ ) AFTER 3000 ps;
    N15 <= NOT ( \7\ ) AFTER 3000 ps;
    L1 <= NOT ( EI );
    L2 <= NOT ( N10 );
    L3 <= NOT ( N12 );
    L4 <= NOT ( N13 );
    L5 <= NOT ( N14 );
    L6 <=  ( L1 AND L2 AND L3 AND L5 AND N9 );
    L7 <=  ( L1 AND L3 AND L5 AND N11 );
    L8 <=  ( L1 AND L5 AND N13 );
    L9 <=  ( L1 AND N15 );
    L10 <=  ( L1 AND L3 AND L4 AND N10 );
    L11 <=  ( L1 AND L3 AND L4 AND N11 );
    L12 <=  ( L1 AND N14 );
    L13 <=  ( L1 AND N15 );
    L14 <=  ( L1 AND N12 );
    L15 <=  ( L1 AND N13 );
    L16 <=  ( L1 AND N14 );
    L17 <=  ( L1 AND N15 );
    N16 <=  ( L1 ) AFTER 5000 ps;
    N17 <=  ( L1 ) AFTER 8000 ps;
    L18 <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 );
    N18 <= NOT ( L18 AND N16 ) AFTER 0 ps;
    EO <= NOT ( L18 AND N17 ) AFTER 2000 ps;
    GS <= NOT ( N16 AND N18 ) AFTER 3000 ps;
    A0 <= NOT ( L6 OR L7 OR L8 OR L9 ) AFTER 8000 ps;
    A1 <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 8000 ps;
    A2 <= NOT ( L14 OR L15 OR L16 OR L17 ) AFTER 8000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F151\ IS PORT(
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
END \74F151\;

ARCHITECTURE model OF \74F151\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 3000 ps;
    N2 <= NOT ( B ) AFTER 3000 ps;
    N3 <= NOT ( C ) AFTER 3000 ps;
    L1 <= NOT ( G );
    N4 <=  ( G ) AFTER 5000 ps;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <=  ( N1 AND N2 AND N3 AND D0 );
    L6 <=  ( L2 AND N2 AND N3 AND D1 );
    L7 <=  ( L3 AND N1 AND N3 AND D2 );
    L8 <=  ( L2 AND L3 AND N3 AND D3 );
    L9 <=  ( L4 AND N1 AND N2 AND D4 );
    L10 <=  ( L2 AND L4 AND N2 AND D5 );
    L11 <=  ( L3 AND L4 AND N1 AND D6 );
    L12 <=  ( L2 AND L3 AND L4 AND D7 );
    L13 <=  ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 );
    L14 <= NOT ( L13 );
    Y <=  ( L1 AND L13 ) AFTER 6000 ps;
    W <=  ( L14 OR N4 ) AFTER 10000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F151A\ IS PORT(
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
END \74F151A\;

ARCHITECTURE model OF \74F151A\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 3000 ps;
    N2 <= NOT ( B ) AFTER 3000 ps;
    N3 <= NOT ( C ) AFTER 3000 ps;
    L1 <= NOT ( G );
    N4 <=  ( G ) AFTER 5000 ps;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <=  ( N1 AND N2 AND N3 AND D0 );
    L6 <=  ( L2 AND N2 AND N3 AND D1 );
    L7 <=  ( L3 AND N1 AND N3 AND D2 );
    L8 <=  ( L2 AND L3 AND N3 AND D3 );
    L9 <=  ( L4 AND N1 AND N2 AND D4 );
    L10 <=  ( L2 AND L4 AND N2 AND D5 );
    L11 <=  ( L3 AND L4 AND N1 AND D6 );
    L12 <=  ( L2 AND L3 AND L4 AND D7 );
    L13 <=  ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 );
    L14 <= NOT ( L13 );
    Y <=  ( L1 AND L13 ) AFTER 6000 ps;
    W <=  ( L14 OR N4 ) AFTER 10000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F153\ IS PORT(
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
END \74F153\;

ARCHITECTURE model OF \74F153\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( \1G\ ) AFTER 3000 ps;
    N2 <= NOT ( \2G\ ) AFTER 3000 ps;
    N3 <= NOT ( B ) AFTER 4000 ps;
    N4 <= NOT ( A ) AFTER 4000 ps;
    N5 <=  ( B ) AFTER 4000 ps;
    N6 <=  ( A ) AFTER 4000 ps;
    L1 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L2 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L3 <=  ( N1 AND N4 AND N5 AND \1C2\ );
    L4 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L5 <=  ( N2 AND N3 AND N4 AND \2C0\ );
    L6 <=  ( N2 AND N3 AND N6 AND \2C1\ );
    L7 <=  ( N2 AND N4 AND N5 AND \2C2\ );
    L8 <=  ( N2 AND N5 AND N6 AND \2C3\ );
    \1Y\ <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 3500 ps;
    \2Y\ <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F157\ IS PORT(
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
END \74F157\;

ARCHITECTURE model OF \74F157\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 4000 ps;
    N2 <= NOT ( G ) AFTER 4000 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( N1 AND N2 AND \1A\ );
    L3 <=  ( L1 AND N2 AND \1B\ );
    L4 <=  ( N1 AND N2 AND \2A\ );
    L5 <=  ( L1 AND N2 AND \2B\ );
    L6 <=  ( N1 AND N2 AND \3A\ );
    L7 <=  ( L1 AND N2 AND \3B\ );
    L8 <=  ( N1 AND N2 AND \4A\ );
    L9 <=  ( L1 AND N2 AND \4B\ );
    \1Y\ <=  ( L2 OR L3 ) AFTER 3000 ps;
    \2Y\ <=  ( L4 OR L5 ) AFTER 3000 ps;
    \3Y\ <=  ( L6 OR L7 ) AFTER 3000 ps;
    \4Y\ <=  ( L8 OR L9 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F157A\ IS PORT(
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
END \74F157A\;

ARCHITECTURE model OF \74F157A\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 4000 ps;
    N2 <= NOT ( G ) AFTER 4000 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( N1 AND N2 AND \1A\ );
    L3 <=  ( L1 AND N2 AND \1B\ );
    L4 <=  ( N1 AND N2 AND \2A\ );
    L5 <=  ( L1 AND N2 AND \2B\ );
    L6 <=  ( N1 AND N2 AND \3A\ );
    L7 <=  ( L1 AND N2 AND \3B\ );
    L8 <=  ( N1 AND N2 AND \4A\ );
    L9 <=  ( L1 AND N2 AND \4B\ );
    \1Y\ <=  ( L2 OR L3 ) AFTER 3000 ps;
    \2Y\ <=  ( L4 OR L5 ) AFTER 3000 ps;
    \3Y\ <=  ( L6 OR L7 ) AFTER 3000 ps;
    \4Y\ <=  ( L8 OR L9 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F158\ IS PORT(
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
END \74F158\;

ARCHITECTURE model OF \74F158\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 3000 ps;
    N2 <= NOT ( G ) AFTER 3000 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( N1 AND N2 AND \1A\ );
    L3 <=  ( L1 AND N2 AND \1B\ );
    L4 <=  ( N1 AND N2 AND \2A\ );
    L5 <=  ( L1 AND N2 AND \2B\ );
    L6 <=  ( N1 AND N2 AND \3A\ );
    L7 <=  ( L1 AND N2 AND \3B\ );
    L8 <=  ( N1 AND N2 AND \4A\ );
    L9 <=  ( L1 AND N2 AND \4B\ );
    \1Y\ <= NOT ( L2 OR L3 ) AFTER 2500 ps;
    \2Y\ <= NOT ( L4 OR L5 ) AFTER 2500 ps;
    \3Y\ <= NOT ( L6 OR L7 ) AFTER 2500 ps;
    \4Y\ <= NOT ( L8 OR L9 ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F158A\ IS PORT(
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
END \74F158A\;

ARCHITECTURE model OF \74F158A\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 3000 ps;
    N2 <= NOT ( G ) AFTER 3000 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( N1 AND N2 AND \1A\ );
    L3 <=  ( L1 AND N2 AND \1B\ );
    L4 <=  ( N1 AND N2 AND \2A\ );
    L5 <=  ( L1 AND N2 AND \2B\ );
    L6 <=  ( N1 AND N2 AND \3A\ );
    L7 <=  ( L1 AND N2 AND \3B\ );
    L8 <=  ( N1 AND N2 AND \4A\ );
    L9 <=  ( L1 AND N2 AND \4B\ );
    \1Y\ <= NOT ( L2 OR L3 ) AFTER 2500 ps;
    \2Y\ <= NOT ( L4 OR L5 ) AFTER 2500 ps;
    \3Y\ <= NOT ( L6 OR L7 ) AFTER 2500 ps;
    \4Y\ <= NOT ( L8 OR L9 ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F160\ IS PORT(
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
END \74F160\;

ARCHITECTURE model OF \74F160\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <= NOT ( LOAD ) AFTER 5000 ps;
    L1 <= NOT ( N1 );
    N2 <=  ( ENP AND ENT ) AFTER 7000 ps;
    N3 <=  ( N4 AND N7 ) AFTER 5000 ps;
    RCO <=  ( N3 AND ENT ) AFTER 3500 ps;
    L2 <=  ( N4 AND N5 );
    L3 <=  ( N4 AND N5 AND N6 );
    L4 <=  ( N2 AND N4 );
    L5 <=  ( L2 AND N2 );
    L6 <=  ( N4 AND N7 );
    L7 <= NOT ( L6 AND N2 );
    L8 <=  ( L3 AND N2 );
    L9 <=  ( N2 XOR N4 );
    L10 <=  ( L4 XOR N5 );
    L11 <=  ( L5 XOR N6 );
    L12 <=  ( L8 XOR N7 );
    L13 <=  ( N1 AND A );
    L14 <=  ( L1 AND L9 );
    L15 <=  ( N1 AND B );
    L16 <=  ( L1 AND L7 AND L10 );
    L17 <=  ( N1 AND C );
    L18 <=  ( L1 AND L11 );
    L19 <=  ( N1 AND D );
    L20 <=  ( L1 AND L7 AND L12 );
    L21 <=  ( L13 OR L14 );
    L22 <=  ( L15 OR L16 );
    L23 <=  ( L17 OR L18 );
    L24 <=  ( L19 OR L20 );
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N4 ) AFTER 3500 ps;
    QB <=  ( N5 ) AFTER 3500 ps;
    QC <=  ( N6 ) AFTER 3500 ps;
    QD <=  ( N7 ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F160A\ IS PORT(
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
END \74F160A\;

ARCHITECTURE model OF \74F160A\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <= NOT ( LOAD ) AFTER 5000 ps;
    L1 <= NOT ( N1 );
    N2 <=  ( ENP AND ENT ) AFTER 7000 ps;
    N3 <=  ( N4 AND N7 ) AFTER 5000 ps;
    RCO <=  ( N3 AND ENT ) AFTER 3500 ps;
    L2 <=  ( N4 AND N5 );
    L3 <=  ( N4 AND N5 AND N6 );
    L4 <=  ( N2 AND N4 );
    L5 <=  ( L2 AND N2 );
    L6 <=  ( N4 AND N7 );
    L7 <= NOT ( L6 AND N2 );
    L8 <=  ( L3 AND N2 );
    L9 <=  ( N2 XOR N4 );
    L10 <=  ( L4 XOR N5 );
    L11 <=  ( L5 XOR N6 );
    L12 <=  ( L8 XOR N7 );
    L13 <=  ( N1 AND A );
    L14 <=  ( L1 AND L9 );
    L15 <=  ( N1 AND B );
    L16 <=  ( L1 AND L7 AND L10 );
    L17 <=  ( N1 AND C );
    L18 <=  ( L1 AND L11 );
    L19 <=  ( N1 AND D );
    L20 <=  ( L1 AND L7 AND L12 );
    L21 <=  ( L13 OR L14 );
    L22 <=  ( L15 OR L16 );
    L23 <=  ( L17 OR L18 );
    L24 <=  ( L19 OR L20 );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N4 ) AFTER 3500 ps;
    QB <=  ( N5 ) AFTER 3500 ps;
    QC <=  ( N6 ) AFTER 3500 ps;
    QD <=  ( N7 ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F161\ IS PORT(
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
END \74F161\;

ARCHITECTURE model OF \74F161\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( ENP AND LOAD AND ENT ) AFTER 7000 ps;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 5000 ps;
    RCO <=  ( N2 AND ENT ) AFTER 3500 ps;
    L1 <= NOT ( LOAD );
    L2 <=  ( N3 AND LOAD );
    L3 <=  ( L2 XOR N1 );
    L4 <=  ( L1 AND A );
    L5 <=  ( L3 OR L4 );
    L6 <=  ( N4 AND LOAD );
    L7 <=  ( N1 AND N3 );
    L8 <=  ( L6 XOR L7 );
    L9 <=  ( L1 AND B );
    L10 <=  ( L8 OR L9 );
    L11 <=  ( N5 AND LOAD );
    L12 <=  ( N1 AND N3 AND N4 );
    L13 <=  ( L11 XOR L12 );
    L14 <=  ( L1 AND C );
    L15 <=  ( L13 OR L14 );
    L16 <=  ( N6 AND LOAD );
    L17 <=  ( N1 AND N3 AND N4 AND N5 );
    L18 <=  ( L16 XOR L17 );
    L19 <=  ( L1 AND D );
    L20 <=  ( L18 OR L19 );
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 3500 ps;
    QB <=  ( N4 ) AFTER 3500 ps;
    QC <=  ( N5 ) AFTER 3500 ps;
    QD <=  ( N6 ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F161A\ IS PORT(
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
END \74F161A\;

ARCHITECTURE model OF \74F161A\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( ENP AND LOAD AND ENT ) AFTER 7000 ps;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 5000 ps;
    RCO <=  ( N2 AND ENT ) AFTER 3500 ps;
    L1 <= NOT ( LOAD );
    L2 <=  ( N3 AND LOAD );
    L3 <=  ( L2 XOR N1 );
    L4 <=  ( L1 AND A );
    L5 <=  ( L3 OR L4 );
    L6 <=  ( N4 AND LOAD );
    L7 <=  ( N1 AND N3 );
    L8 <=  ( L6 XOR L7 );
    L9 <=  ( L1 AND B );
    L10 <=  ( L8 OR L9 );
    L11 <=  ( N5 AND LOAD );
    L12 <=  ( N1 AND N3 AND N4 );
    L13 <=  ( L11 XOR L12 );
    L14 <=  ( L1 AND C );
    L15 <=  ( L13 OR L14 );
    L16 <=  ( N6 AND LOAD );
    L17 <=  ( N1 AND N3 AND N4 AND N5 );
    L18 <=  ( L16 XOR L17 );
    L19 <=  ( L1 AND D );
    L20 <=  ( L18 OR L19 );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 3500 ps;
    QB <=  ( N4 ) AFTER 3500 ps;
    QC <=  ( N5 ) AFTER 3500 ps;
    QD <=  ( N6 ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F162\ IS PORT(
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
END \74F162\;

ARCHITECTURE model OF \74F162\ IS
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
    N1 <=  ( ENP AND ENT ) AFTER 7000 ps;
    N2 <=  ( N3 AND N6 ) AFTER 0 ps;
    RCO <=  ( N2 AND ENT ) AFTER 3500 ps;
    L4 <=  ( N3 AND N4 );
    L5 <=  ( N3 AND N4 AND N5 );
    L6 <=  ( N1 AND N3 );
    L7 <=  ( L4 AND N1 );
    L8 <=  ( N3 AND N6 );
    L9 <= NOT ( L8 AND N1 );
    L10 <=  ( L5 AND N1 );
    L11 <=  ( N1 XOR N3 );
    L12 <=  ( L6 XOR N4 );
    L13 <=  ( L7 XOR N5 );
    L14 <=  ( L10 XOR N6 );
    L15 <=  ( L2 AND A );
    L16 <=  ( L3 AND L11 );
    L17 <=  ( L2 AND B );
    L18 <=  ( L3 AND L9 AND L12 );
    L19 <=  ( L2 AND C );
    L20 <=  ( L3 AND L13 );
    L21 <=  ( L2 AND D );
    L22 <=  ( L3 AND L9 AND L14 );
    L23 <=  ( L15 OR L16 );
    L24 <=  ( L17 OR L18 );
    L25 <=  ( L19 OR L20 );
    L26 <=  ( L21 OR L22 );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 2000 ps;
    QB <=  ( N4 ) AFTER 2000 ps;
    QC <=  ( N5 ) AFTER 2000 ps;
    QD <=  ( N6 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F162A\ IS PORT(
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
END \74F162A\;

ARCHITECTURE model OF \74F162A\ IS
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
    N1 <=  ( ENP AND ENT ) AFTER 7000 ps;
    N2 <=  ( N3 AND N6 ) AFTER 0 ps;
    RCO <=  ( N2 AND ENT ) AFTER 3500 ps;
    L4 <=  ( N3 AND N4 );
    L5 <=  ( N3 AND N4 AND N5 );
    L6 <=  ( N1 AND N3 );
    L7 <=  ( L4 AND N1 );
    L8 <=  ( N3 AND N6 );
    L9 <= NOT ( L8 AND N1 );
    L10 <=  ( L5 AND N1 );
    L11 <=  ( N1 XOR N3 );
    L12 <=  ( L6 XOR N4 );
    L13 <=  ( L7 XOR N5 );
    L14 <=  ( L10 XOR N6 );
    L15 <=  ( L2 AND A );
    L16 <=  ( L3 AND L11 );
    L17 <=  ( L2 AND B );
    L18 <=  ( L3 AND L9 AND L12 );
    L19 <=  ( L2 AND C );
    L20 <=  ( L3 AND L13 );
    L21 <=  ( L2 AND D );
    L22 <=  ( L3 AND L9 AND L14 );
    L23 <=  ( L15 OR L16 );
    L24 <=  ( L17 OR L18 );
    L25 <=  ( L19 OR L20 );
    L26 <=  ( L21 OR L22 );
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 2000 ps;
    QB <=  ( N4 ) AFTER 2000 ps;
    QC <=  ( N5 ) AFTER 2000 ps;
    QD <=  ( N6 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F163\ IS PORT(
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
END \74F163\;

ARCHITECTURE model OF \74F163\ IS
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
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 0 ps;
    N2 <= NOT ( LOAD ) AFTER 5000 ps;
    N3 <= NOT ( CLR ) AFTER 5000 ps;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( N3 OR LOAD );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 3500 ps;
    RCO <=  ( N4 AND ENT ) AFTER 0 ps;
    L4 <=  ( L3 AND N5 );
    L5 <=  ( L1 XOR L4 );
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
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 2000 ps;
    QB <=  ( N6 ) AFTER 2000 ps;
    QC <=  ( N7 ) AFTER 2000 ps;
    QD <=  ( N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F163A\ IS PORT(
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
END \74F163A\;

ARCHITECTURE model OF \74F163A\ IS
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
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 0 ps;
    N2 <= NOT ( LOAD ) AFTER 5000 ps;
    N3 <= NOT ( CLR ) AFTER 5000 ps;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( N3 OR LOAD );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 3500 ps;
    RCO <=  ( N4 AND ENT ) AFTER 0 ps;
    L4 <=  ( L3 AND N5 );
    L5 <=  ( L1 XOR L4 );
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
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 2000 ps;
    QB <=  ( N6 ) AFTER 2000 ps;
    QC <=  ( N7 ) AFTER 2000 ps;
    QD <=  ( N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F164\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F164\;

ARCHITECTURE model OF \74F164\ IS
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
    L1 <=  ( A AND B );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLR );
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLR );
    QA <=  ( N1 ) AFTER 6000 ps;
    QB <=  ( N2 ) AFTER 6000 ps;
    QC <=  ( N3 ) AFTER 6000 ps;
    QD <=  ( N4 ) AFTER 6000 ps;
    QE <=  ( N5 ) AFTER 6000 ps;
    QF <=  ( N6 ) AFTER 6000 ps;
    QG <=  ( N7 ) AFTER 6000 ps;
    QH <=  ( N8 ) AFTER 6000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F168\ IS PORT(
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
END \74F168\;

ARCHITECTURE model OF \74F168\ IS
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

    BEGIN
    L1 <= NOT ( LOAD );
    L2 <= NOT ( \U/D\\\ );
    L3 <= NOT ( N2 );
    L4 <=  ( N2 OR N3 );
    L5 <=  ( N2 OR N3 OR N4 );
    L6 <= NOT ( ENP OR ENT );
    L7 <=  ( L2 AND N2 );
    L8 <=  ( L3 AND \U/D\\\ );
    L9 <= NOT ( L7 OR L8 );
    L10 <=  ( L2 AND L4 );
    L11 <= NOT ( N3 );
    L12 <=  ( L11 AND \U/D\\\ );
    L13 <=  ( L3 AND \U/D\\\ );
    L14 <= NOT ( L10 OR L12 OR L13 );
    L15 <= NOT ( N4 );
    L16 <=  ( N2 OR N3 OR N4 OR N5 OR \U/D\\\ );
    L17 <= NOT ( N5 );
    L18 <= NOT ( L2 OR L3 OR L17 );
    L19 <=  ( L2 AND L5 );
    L20 <=  ( L15 AND \U/D\\\ );
    L21 <=  ( L11 AND \U/D\\\ );
    L22 <=  ( L3 AND \U/D\\\ );
    L23 <= NOT ( L19 OR L20 OR L21 OR L22 );
    L24 <=  ( L6 AND L9 );
    L25 <=  ( L6 AND L14 );
    L26 <= NOT ( L6 AND L18 );
    L27 <=  ( L6 AND L23 );
    L28 <= NOT ( L3 XOR L6 );
    L29 <= NOT ( L11 XOR L24 );
    L30 <= NOT ( L15 XOR L25 );
    L31 <= NOT ( L17 XOR L27 );
    L32 <=  ( L1 AND A );
    L33 <=  ( L28 AND LOAD );
    L34 <=  ( L32 OR L33 );
    L35 <=  ( L1 AND B );
    L36 <=  ( L16 AND L26 AND L29 AND LOAD );
    L37 <=  ( L35 OR L36 );
    L38 <=  ( L1 AND C );
    L39 <=  ( L16 AND L30 AND LOAD );
    L40 <=  ( L38 OR L39 );
    L41 <=  ( L1 AND D );
    L42 <=  ( L26 AND L31 AND LOAD );
    L43 <=  ( L41 OR L42 );
    L44 <= NOT ( L3 OR L17 OR N1 OR ENT );
    L45 <= NOT ( ENT );
    L46 <=  ( L3 AND L11 AND L15 AND L17 AND L45 AND N1 );
    N1 <=  ( L2 ) AFTER 9000 ps;
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>L43 , clk=>CLK );
    QA <=  ( N2 ) AFTER 4000 ps;
    QB <=  ( N3 ) AFTER 4000 ps;
    QC <=  ( N4 ) AFTER 4000 ps;
    QD <=  ( N5 ) AFTER 4000 ps;
    RCO <= NOT ( L44 OR L46 ) AFTER 7000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F169\ IS PORT(
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
END \74F169\;

ARCHITECTURE model OF \74F169\ IS
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
    N1 <= NOT ( LOAD ) AFTER 4000 ps;
    N2 <=  ( ENP OR ENT ) AFTER 1000 ps;
    N3 <= NOT ( ENT ) AFTER 4000 ps;
    N4 <= NOT ( \U/D\\\ ) AFTER 8000 ps;
    N5 <=  ( \U/D\\\ ) AFTER 8000 ps;
    L1 <=  ( N7 AND \U/D\\\ );
    L2 <= NOT ( N7 OR \U/D\\\ );
    L3 <= NOT ( L1 OR L2 );
    L4 <=  ( N8 AND \U/D\\\ );
    L5 <= NOT ( N8 OR \U/D\\\ );
    L6 <= NOT ( L4 OR L5 );
    L7 <=  ( N9 AND \U/D\\\ );
    L8 <= NOT ( N9 OR \U/D\\\ );
    L9 <= NOT ( L7 OR L8 );
    L10 <=  ( N10 AND \U/D\\\ );
    L11 <= NOT ( N10 OR \U/D\\\ );
    L12 <= NOT ( L10 OR L11 );
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 5000 ps;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 5000 ps;
    L15 <= NOT ( N1 OR N2 );
    L16 <= NOT ( N1 OR N7 );
    L17 <=  ( L15 XOR L16 );
    L18 <=  ( N1 AND A );
    L19 <= NOT ( L17 OR L18 );
    L20 <= NOT ( N1 OR N8 );
    L21 <=  ( L3 AND L15 );
    L22 <=  ( L20 XOR L21 );
    L23 <=  ( N1 AND B );
    L24 <= NOT ( L22 OR L23 );
    L25 <= NOT ( N1 OR N9 );
    L26 <=  ( L3 AND L6 AND L15 );
    L27 <=  ( L25 XOR L26 );
    L28 <=  ( N1 AND C );
    L29 <= NOT ( L27 OR L28 );
    L30 <= NOT ( N1 OR N10 );
    L31 <=  ( L3 AND L6 AND L9 AND L15 );
    L32 <=  ( L30 XOR L31 );
    L33 <=  ( N1 AND D );
    L34 <= NOT ( L32 OR L33 );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 4000 ps;
    QB <= NOT ( N8 ) AFTER 4000 ps;
    QC <= NOT ( N9 ) AFTER 4000 ps;
    QD <= NOT ( N10 ) AFTER 4000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F174\ IS PORT(
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
END \74F174\;

ARCHITECTURE model OF \74F174\ IS

    BEGIN
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F175\ IS PORT(
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
END \74F175\;

ARCHITECTURE model OF \74F175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F181\ IS PORT(
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
END \74F181\;

ARCHITECTURE model OF \74F181\ IS
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
    L6 <=  ( S3 AND B3 AND A3 );
    L7 <=  ( L1 AND S2 AND A3 );
    L8 <=  ( L1 AND S1 );
    L9 <=  ( S0 AND B3 );
    L10 <=  ( S3 AND B2 AND A2 );
    L11 <=  ( L2 AND S2 AND A2 );
    L12 <=  ( L2 AND S1 );
    L13 <=  ( S0 AND B2 );
    L14 <=  ( S3 AND B1 AND A1 );
    L15 <=  ( L3 AND S2 AND A1 );
    L16 <=  ( L3 AND S1 );
    L17 <=  ( S0 AND B1 );
    L18 <=  ( B0 AND A0 AND S3 );
    L19 <=  ( L4 AND A0 AND S2 );
    L20 <=  ( L4 AND S1 );
    L21 <=  ( B0 AND S0 );
    L22 <= NOT ( L6 OR L7 );
    L23 <= NOT ( L8 OR L9 OR A3 );
    L24 <= NOT ( L10 OR L11 );
    L25 <= NOT ( L12 OR L13 OR A2 );
    L26 <= NOT ( L14 OR L15 );
    L27 <= NOT ( L16 OR L17 OR A1 );
    L28 <= NOT ( L18 OR L19 );
    L29 <= NOT ( L20 OR L21 OR A0 );
    N1 <=  ( L22 XOR L23 ) AFTER 3000 ps;
    N2 <=  ( L24 XOR L25 ) AFTER 3000 ps;
    N3 <=  ( L26 XOR L27 ) AFTER 3000 ps;
    N4 <=  ( L28 XOR L29 ) AFTER 3000 ps;
    N5 <=  ( CN ) AFTER 2400 ps;
    L30 <=  ( L22 AND L25 );
    L31 <=  ( L22 AND L24 AND L27 );
    L32 <=  ( L22 AND L24 AND L26 AND L29 );
    L33 <= NOT ( L22 AND L24 AND L26 AND L28 AND N5 );
    L34 <=  ( L5 AND L24 AND L26 AND L28 AND CN );
    L35 <=  ( L5 AND L24 AND L26 AND L29 );
    L36 <=  ( L5 AND L24 AND L27 );
    L37 <=  ( L5 AND L25 );
    L38 <=  ( L5 AND L26 AND L28 AND CN );
    L39 <=  ( L5 AND L26 AND L29 );
    L40 <=  ( L5 AND L27 );
    L41 <=  ( L5 AND L28 AND CN );
    L42 <=  ( L5 AND L29 );
    L43 <= NOT ( L5 AND CN );
    L44 <= NOT ( L34 OR L35 OR L36 OR L37 );
    L45 <= NOT ( L38 OR L39 OR L40 );
    L46 <= NOT ( L41 OR L42 );
    N9 <= NOT ( L23 OR L30 OR L31 OR L32 ) AFTER 9000 ps;
    G <= N9;
    \CN+4\ <= NOT ( L33 AND N9 ) AFTER 5000 ps;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 8000 ps;
    N13 <=  ( L44 XOR N1 ) AFTER 8000 ps;
    F3 <= N13;
    N12 <=  ( L45 XOR N2 ) AFTER 8000 ps;
    F2 <= N12;
    N11 <=  ( L46 XOR N3 ) AFTER 8000 ps;
    F1 <= N11;
    N10 <=  ( L43 XOR N4 ) AFTER 8000 ps;
    F0 <= N10;
    N6 <=  ( N13 ) AFTER 3000 ps;
    N7 <=  ( N12 ) AFTER 3000 ps;
    N8 <=  ( N11 ) AFTER 3000 ps;
    \A=B\ <=  ( N6 AND N7 AND N8 AND N10 ) AFTER 16000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F182\ IS PORT(
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
END \74F182\;

ARCHITECTURE model OF \74F182\ IS
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
    N1 <= NOT ( CN ) AFTER 4000 ps;
    L1 <=  ( G1 AND G0 AND G3 AND G2 );
    L2 <=  ( G1 AND P1 AND G3 AND G2 );
    L3 <=  ( G3 AND G2 AND P2 );
    L4 <=  ( G3 AND P3 );
    L5 <=  ( N1 AND G1 AND G0 AND G2 );
    L6 <=  ( G1 AND G0 AND P0 AND G2 );
    L7 <=  ( G1 AND P1 AND G2 );
    L8 <=  ( G2 AND P2 );
    L9 <=  ( N1 AND G1 AND G0 );
    L10 <=  ( G1 AND G0 AND P0 );
    L11 <=  ( G1 AND P1 );
    L12 <=  ( N1 AND G0 );
    L13 <=  ( G0 AND P0 );
    P <=  ( P1 OR P0 OR P3 OR P2 ) AFTER 1500 ps;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 9000 ps;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 7000 ps;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 7000 ps;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 7000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F190\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
G : IN  std_logic;
\D/U\\\ : IN  std_logic;
LOAD : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
\MX/MN\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F190\;

ARCHITECTURE model OF \74F190\ IS
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

    BEGIN
    L1 <= NOT ( \D/U\\\ );
    L2 <= NOT ( G OR \D/U\\\ );
    L3 <= NOT ( L1 OR G );
    L4 <=  ( N4 AND N6 AND N12 );
    L5 <=  ( N5 AND N7 AND N9 AND N11 AND N13 );
    L6 <= NOT ( N3 AND A );
    L7 <= NOT ( L6 AND N3 );
    L8 <= NOT ( N3 AND B );
    L9 <= NOT ( N9 AND N11 AND N13 );
    L10 <= NOT ( L8 AND N3 );
    L11 <= NOT ( N3 AND C );
    L12 <= NOT ( L11 AND N3 );
    L13 <= NOT ( N3 AND D );
    L14 <= NOT ( L13 AND N3 );
    L15 <=  ( L3 AND L9 AND N7 );
    L16 <=  ( L2 AND N6 AND N13 );
    L17 <=  ( L3 AND L9 AND N7 AND N9 );
    L18 <=  ( L2 AND N6 AND N8 );
    L19 <=  ( L3 AND N7 AND N9 AND N11 );
    L20 <=  ( L2 AND N6 AND N12 );
    L21 <=  ( L2 AND N6 AND N8 AND N10 );
    L22 <= NOT ( G );
    L23 <=  ( L15 OR L16 );
    L24 <=  ( L17 OR L18 );
    L25 <=  ( L19 OR L20 OR L21 );
    N1 <= NOT ( CLK ) AFTER 3000 ps;
    N2 <= NOT ( G ) AFTER 2000 ps;
    N3 <= NOT ( LOAD ) AFTER 4000 ps;
    N4 <= NOT ( \D/U\\\ ) AFTER 11000 ps;
    N5 <=  ( \D/U\\\ ) AFTER 11000 ps;
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L22 , k=>L22 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L23 , k=>L23 , clk=>CLK , pr=>L8 , cl=>L10 );
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L24 , k=>L24 , clk=>CLK , pr=>L11 , cl=>L12 );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N12 , qNot=>N13 , j=>L25 , k=>L25 , clk=>CLK , pr=>L13 , cl=>L14 );
    N14 <=  ( L4 OR L5 ) AFTER 3000 ps;
    \MX/MN\ <=  ( N14 ) AFTER 3500 ps;
    RCO <= NOT ( N1 AND N2 AND N14 ) AFTER 4000 ps;
    QA <=  ( N6 ) AFTER 9000 ps;
    QB <=  ( N8 ) AFTER 9000 ps;
    QC <=  ( N10 ) AFTER 9000 ps;
    QD <=  ( N12 ) AFTER 9000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F191\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
G : IN  std_logic;
\D/U\\\ : IN  std_logic;
LOAD : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
\MX/MN\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F191\;

ARCHITECTURE model OF \74F191\ IS
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
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;

    BEGIN
    L1 <= NOT ( \D/U\\\ );
    L2 <= NOT ( G OR \D/U\\\ );
    L3 <= NOT ( L1 OR G );
    L4 <=  ( N1 AND N6 AND N8 AND N10 AND N12 );
    L5 <=  ( N2 AND N7 AND N9 AND N11 AND N13 );
    L6 <= NOT ( N5 AND A );
    L7 <= NOT ( L6 AND N5 );
    L8 <= NOT ( N5 AND B );
    L9 <= NOT ( L8 AND N5 );
    L10 <= NOT ( N5 AND C );
    L11 <= NOT ( L10 AND N5 );
    L12 <= NOT ( N5 AND D );
    L13 <= NOT ( L12 AND N5 );
    L14 <=  ( L3 AND N7 );
    L15 <=  ( L2 AND N6 );
    L16 <=  ( L3 AND N7 AND N9 );
    L17 <=  ( L2 AND N6 AND N8 );
    L18 <=  ( L3 AND N7 AND N9 AND N11 );
    L19 <=  ( L2 AND N6 AND N8 AND N10 );
    L20 <= NOT ( G );
    L21 <=  ( L14 OR L15 );
    L22 <=  ( L16 OR L17 );
    L23 <=  ( L18 OR L19 );
    N1 <= NOT ( \D/U\\\ ) AFTER 11000 ps;
    N2 <=  ( \D/U\\\ ) AFTER 11000 ps;
    N3 <= NOT ( CLK ) AFTER 3000 ps;
    N4 <= NOT ( G ) AFTER 2000 ps;
    N5 <= NOT ( LOAD ) AFTER 4000 ps;
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N12 , qNot=>N13 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N14 <=  ( L4 OR L5 ) AFTER 3000 ps;
    N15 <=  ( N14 ) AFTER 3500 ps;
    \MX/MN\ <=  N15;
    RCO <= NOT ( N3 AND N4 AND N15 ) AFTER 4000 ps;
    QA <=  ( N6 ) AFTER 9000 ps;
    QB <=  ( N8 ) AFTER 9000 ps;
    QC <=  ( N10 ) AFTER 9000 ps;
    QD <=  ( N12 ) AFTER 9000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F192\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
UP : IN  std_logic;
DN : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
CO : OUT  std_logic;
BO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F192\;

ARCHITECTURE model OF \74F192\ IS
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
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( DN );
    L2 <= NOT ( UP );
    L3 <= NOT ( N1 AND N2 AND A );
    L4 <= NOT ( N1 AND N2 AND B );
    L5 <= NOT ( N10 AND N12 AND N14 );
    L6 <= NOT ( N1 AND N2 AND C );
    L7 <= NOT ( N1 AND N2 AND D );
    L8 <=  ( L1 AND L5 AND N8 );
    L9 <=  ( L2 AND N7 AND N14 );
    L10 <=  ( L1 AND L5 AND N8 AND N10 );
    L11 <=  ( L2 AND N7 AND N9 );
    L12 <=  ( L1 AND N8 AND N10 AND N12 );
    L13 <=  ( L2 AND N7 AND N13 );
    L14 <=  ( L2 AND N7 AND N9 AND N11 );
    L15 <= NOT ( L3 AND N2 );
    L16 <= NOT ( L4 AND N2 );
    L17 <= NOT ( L6 AND N2 );
    L18 <= NOT ( L7 AND N2 );
    L19 <=  ( L15 AND N1 );
    L20 <=  ( L16 AND N1 );
    L21 <=  ( L17 AND N1 );
    L22 <=  ( L18 AND N1 );
    N1 <= NOT ( CLR ) AFTER 6000 ps;
    N2 <= NOT ( LOAD ) AFTER 4000 ps;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ps;
    N4 <= NOT ( L8 OR L9 ) AFTER 0 ps;
    N5 <= NOT ( L10 OR L11 ) AFTER 0 ps;
    N6 <= NOT ( L12 OR L13 OR L14 ) AFTER 0 ps;
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L19 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L20 );
    JKFFPC_16 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L6 , cl=>L21 );
    JKFFPC_17 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L7 , cl=>L22 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 8000 ps;
    CO <= NOT ( L2 AND N7 AND N13 ) AFTER 8000 ps;
    QA <=  ( N7 ) AFTER 3000 ps;
    QB <=  ( N9 ) AFTER 3000 ps;
    QC <=  ( N11 ) AFTER 3000 ps;
    QD <=  ( N13 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F193\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
UP : IN  std_logic;
DN : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
CO : OUT  std_logic;
BO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F193\;

ARCHITECTURE model OF \74F193\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( DN );
    L2 <= NOT ( UP );
    L3 <= NOT ( N1 AND N2 AND A );
    L4 <= NOT ( N1 AND N2 AND B );
    L5 <= NOT ( N1 AND N2 AND C );
    L6 <= NOT ( N1 AND N2 AND D );
    L7 <=  ( L1 AND N8 );
    L8 <=  ( L2 AND N7 );
    L9 <=  ( L1 AND N8 AND N10 );
    L10 <=  ( L2 AND N7 AND N9 );
    L11 <=  ( L1 AND N8 AND N10 AND N12 );
    L12 <=  ( L2 AND N7 AND N9 AND N11 );
    L13 <= NOT ( L3 AND N2 );
    L14 <= NOT ( L4 AND N2 );
    L15 <= NOT ( L5 AND N2 );
    L16 <= NOT ( L6 AND N2 );
    L17 <=  ( L13 AND N1 );
    L18 <=  ( L14 AND N1 );
    L19 <=  ( L15 AND N1 );
    L20 <=  ( L16 AND N1 );
    N1 <= NOT ( CLR ) AFTER 7000 ps;
    N2 <= NOT ( LOAD ) AFTER 5000 ps;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ps;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ps;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ps;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ps;
    JKFFPC_18 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_19 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_20 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_21 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 15000 ps;
    CO <= NOT ( L2 AND N7 AND N9 AND N11 AND N13 ) AFTER 15000 ps;
    QA <=  ( N7 ) AFTER 2000 ps;
    QB <=  ( N9 ) AFTER 2000 ps;
    QC <=  ( N11 ) AFTER 2000 ps;
    QD <=  ( N13 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F194\ IS PORT(
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
END \74F194\;

ARCHITECTURE model OF \74F194\ IS
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
    L1 <= NOT ( S1 );
    L2 <= NOT ( S0 );
    N1 <=  ( S0 AND S1 ) AFTER 4000 ps;
    N2 <=  ( L2 AND S1 ) AFTER 4000 ps;
    N3 <=  ( L1 AND S0 ) AFTER 4000 ps;
    N4 <=  ( L1 AND L2 ) AFTER 4000 ps;
    L3 <=  ( N3 AND SR );
    L4 <=  ( N2 AND N6 );
    L5 <=  ( N1 AND A );
    L6 <=  ( N4 AND N5 );
    L7 <=  ( L3 OR L4 OR L5 OR L6 );
    L8 <=  ( N3 AND N5 );
    L9 <=  ( N2 AND N7 );
    L10 <=  ( N1 AND B );
    L11 <=  ( N4 AND N6 );
    L12 <=  ( L8 OR L9 OR L10 OR L11 );
    L13 <=  ( N3 AND N6 );
    L14 <=  ( N2 AND N8 );
    L15 <=  ( N1 AND C );
    L16 <=  ( N4 AND N7 );
    L17 <=  ( L13 OR L14 OR L15 OR L16 );
    L18 <=  ( N3 AND N7 );
    L19 <=  ( N2 AND SL );
    L20 <=  ( N1 AND D );
    L21 <=  ( N4 AND N8 );
    L22 <=  ( L18 OR L19 OR L20 OR L21 );
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK , cl=>CLR );
    QA <=  ( N5 ) AFTER 1000 ps;
    QB <=  ( N6 ) AFTER 1000 ps;
    QC <=  ( N7 ) AFTER 1000 ps;
    QD <=  ( N8 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F240\ IS PORT(
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
END \74F240\;

ARCHITECTURE model OF \74F240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 2500 ps;
    N2 <= NOT ( A2_A ) AFTER 2500 ps;
    N3 <= NOT ( A3_A ) AFTER 2500 ps;
    N4 <= NOT ( A4_A ) AFTER 2500 ps;
    N5 <= NOT ( A1_B ) AFTER 2500 ps;
    N6 <= NOT ( A2_B ) AFTER 2500 ps;
    N7 <= NOT ( A3_B ) AFTER 2500 ps;
    N8 <= NOT ( A4_B ) AFTER 2500 ps;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F241\ IS PORT(
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
END \74F241\;

ARCHITECTURE model OF \74F241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 7000 ps;
    N2 <=  ( \1A2\ ) AFTER 7000 ps;
    N3 <=  ( \1A3\ ) AFTER 7000 ps;
    N4 <=  ( \1A4\ ) AFTER 7000 ps;
    N5 <=  ( \2A1\ ) AFTER 7000 ps;
    N6 <=  ( \2A2\ ) AFTER 7000 ps;
    N7 <=  ( \2A3\ ) AFTER 7000 ps;
    N8 <=  ( \2A4\ ) AFTER 7000 ps;
    L1 <= NOT ( \1G\ );
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F242\ IS PORT(
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
END \74F242\;

ARCHITECTURE model OF \74F242\ IS
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
    N1 <= NOT ( A1 ) AFTER 3500 ps;
    N2 <= NOT ( A2 ) AFTER 3500 ps;
    N3 <= NOT ( A3 ) AFTER 3500 ps;
    N4 <= NOT ( A4 ) AFTER 3500 ps;
    N5 <= NOT ( B4 ) AFTER 3500 ps;
    N6 <= NOT ( B3 ) AFTER 3500 ps;
    N7 <= NOT ( B2 ) AFTER 3500 ps;
    N8 <= NOT ( B1 ) AFTER 3500 ps;
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F243\ IS PORT(
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
END \74F243\;

ARCHITECTURE model OF \74F243\ IS
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
    N1 <=  ( A1 ) AFTER 7000 ps;
    N2 <=  ( A2 ) AFTER 7000 ps;
    N3 <=  ( A3 ) AFTER 7000 ps;
    N4 <=  ( A4 ) AFTER 7000 ps;
    N5 <=  ( B4 ) AFTER 7000 ps;
    N6 <=  ( B3 ) AFTER 7000 ps;
    N7 <=  ( B2 ) AFTER 7000 ps;
    N8 <=  ( B1 ) AFTER 7000 ps;
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F244\ IS PORT(
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
END \74F244\;

ARCHITECTURE model OF \74F244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 7000 ps;
    N2 <=  ( \1A2\ ) AFTER 7000 ps;
    N3 <=  ( \1A3\ ) AFTER 7000 ps;
    N4 <=  ( \1A4\ ) AFTER 7000 ps;
    N5 <=  ( \2A1\ ) AFTER 7000 ps;
    N6 <=  ( \2A2\ ) AFTER 7000 ps;
    N7 <=  ( \2A3\ ) AFTER 7000 ps;
    N8 <=  ( \2A4\ ) AFTER 7000 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F245\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
G : IN  std_logic;
DIR : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
B5 : INOUT  std_logic;
B6 : INOUT  std_logic;
B7 : INOUT  std_logic;
B8 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F245\;

ARCHITECTURE model OF \74F245\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( DIR );
    L3 <=  ( L1 AND DIR );
    L4 <=  ( L1 AND L2 );
    N1 <=  ( A1 ) AFTER 2500 ps;
    N2 <=  ( A2 ) AFTER 2500 ps;
    N3 <=  ( A3 ) AFTER 2500 ps;
    N4 <=  ( A4 ) AFTER 2500 ps;
    N5 <=  ( A5 ) AFTER 2500 ps;
    N6 <=  ( A6 ) AFTER 2500 ps;
    N7 <=  ( A7 ) AFTER 2500 ps;
    N8 <=  ( A8 ) AFTER 2500 ps;
    N9 <=  ( B8 ) AFTER 2500 ps;
    N10 <=  ( B7 ) AFTER 2500 ps;
    N11 <=  ( B6 ) AFTER 2500 ps;
    N12 <=  ( B5 ) AFTER 2500 ps;
    N13 <=  ( B4 ) AFTER 2500 ps;
    N14 <=  ( B3 ) AFTER 2500 ps;
    N15 <=  ( B2 ) AFTER 2500 ps;
    N16 <=  ( B1 ) AFTER 2500 ps;
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F251\ IS PORT(
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
END \74F251\;

ARCHITECTURE model OF \74F251\ IS
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
    N1 <= NOT ( A ) AFTER 4000 ps;
    N2 <= NOT ( B ) AFTER 4000 ps;
    N3 <= NOT ( C ) AFTER 4000 ps;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <=  ( L1 AND N1 AND N2 AND N3 AND D0 );
    L6 <=  ( L1 AND L2 AND N2 AND N3 AND D1 );
    L7 <=  ( L1 AND L3 AND N1 AND N3 AND D2 );
    L8 <=  ( L1 AND L2 AND L3 AND N3 AND D3 );
    L9 <=  ( L1 AND L4 AND N1 AND N2 AND D4 );
    L10 <=  ( L1 AND L2 AND L4 AND N2 AND D5 );
    L11 <=  ( L1 AND L3 AND L4 AND N1 AND D6 );
    L12 <=  ( L1 AND L2 AND L3 AND L4 AND D7 );
    L13 <= NOT ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 );
    N4 <= NOT ( L13 ) AFTER 9000 ps;
    N5 <=  ( L13 ) AFTER 2500 ps;
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F251A\ IS PORT(
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
END \74F251A\;

ARCHITECTURE model OF \74F251A\ IS
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
    N1 <= NOT ( A ) AFTER 4000 ps;
    N2 <= NOT ( B ) AFTER 4000 ps;
    N3 <= NOT ( C ) AFTER 4000 ps;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <=  ( L1 AND N1 AND N2 AND N3 AND D0 );
    L6 <=  ( L1 AND L2 AND N2 AND N3 AND D1 );
    L7 <=  ( L1 AND L3 AND N1 AND N3 AND D2 );
    L8 <=  ( L1 AND L2 AND L3 AND N3 AND D3 );
    L9 <=  ( L1 AND L4 AND N1 AND N2 AND D4 );
    L10 <=  ( L1 AND L2 AND L4 AND N2 AND D5 );
    L11 <=  ( L1 AND L3 AND L4 AND N1 AND D6 );
    L12 <=  ( L1 AND L2 AND L3 AND L4 AND D7 );
    L13 <= NOT ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 );
    N4 <= NOT ( L13 ) AFTER 9000 ps;
    N5 <=  ( L13 ) AFTER 2500 ps;
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F253\ IS PORT(
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
END \74F253\;

ARCHITECTURE model OF \74F253\ IS
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
    L2 <= NOT ( \2G\ );
    N1 <= NOT ( B ) AFTER 4000 ps;
    N2 <= NOT ( A ) AFTER 4000 ps;
    L3 <= NOT ( N1 );
    L4 <= NOT ( N2 );
    L5 <=  ( L1 AND N1 AND N2 AND \1C0\ );
    L6 <=  ( L1 AND L4 AND N1 AND \1C1\ );
    L7 <=  ( L1 AND L3 AND N2 AND \1C2\ );
    L8 <=  ( L1 AND L3 AND L4 AND \1C3\ );
    L9 <=  ( L2 AND N1 AND N2 AND \2C0\ );
    L10 <=  ( L2 AND L4 AND N1 AND \2C1\ );
    L11 <=  ( L2 AND L3 AND N2 AND \2C2\ );
    L12 <=  ( L2 AND L3 AND L4 AND \2C3\ );
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 3500 ps;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 3500 ps;
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F257\ IS PORT(
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
END \74F257\;

ARCHITECTURE model OF \74F257\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 4000 ps;
    L2 <= NOT ( N1 );
    L3 <=  ( N1 AND \1A\ );
    L4 <=  ( L2 AND \1B\ );
    L5 <=  ( N1 AND \2A\ );
    L6 <=  ( L2 AND \2B\ );
    L7 <=  ( N1 AND \3A\ );
    L8 <=  ( L2 AND \3B\ );
    L9 <=  ( N1 AND \4A\ );
    L10 <=  ( L2 AND \4B\ );
    N2 <=  ( L3 OR L4 ) AFTER 3000 ps;
    N3 <=  ( L5 OR L6 ) AFTER 3000 ps;
    N4 <=  ( L7 OR L8 ) AFTER 3000 ps;
    N5 <=  ( L9 OR L10 ) AFTER 3000 ps;
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F257A\ IS PORT(
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
END \74F257A\;

ARCHITECTURE model OF \74F257A\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 4000 ps;
    L2 <= NOT ( N1 );
    L3 <=  ( N1 AND \1A\ );
    L4 <=  ( L2 AND \1B\ );
    L5 <=  ( N1 AND \2A\ );
    L6 <=  ( L2 AND \2B\ );
    L7 <=  ( N1 AND \3A\ );
    L8 <=  ( L2 AND \3B\ );
    L9 <=  ( N1 AND \4A\ );
    L10 <=  ( L2 AND \4B\ );
    N2 <=  ( L3 OR L4 ) AFTER 3000 ps;
    N3 <=  ( L5 OR L6 ) AFTER 3000 ps;
    N4 <=  ( L7 OR L8 ) AFTER 3000 ps;
    N5 <=  ( L9 OR L10 ) AFTER 3000 ps;
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F258\ IS PORT(
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
END \74F258\;

ARCHITECTURE model OF \74F258\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 4000 ps;
    L2 <= NOT ( N1 );
    L3 <=  ( N1 AND \1A\ );
    L4 <=  ( L2 AND \1B\ );
    L5 <=  ( N1 AND \2A\ );
    L6 <=  ( L2 AND \2B\ );
    L7 <=  ( N1 AND \3A\ );
    L8 <=  ( L2 AND \3B\ );
    L9 <=  ( N1 AND \4A\ );
    L10 <=  ( L2 AND \4B\ );
    N2 <= NOT ( L3 OR L4 ) AFTER 2500 ps;
    N3 <= NOT ( L5 OR L6 ) AFTER 2500 ps;
    N4 <= NOT ( L7 OR L8 ) AFTER 2500 ps;
    N5 <= NOT ( L9 OR L10 ) AFTER 2500 ps;
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F258A\ IS PORT(
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
END \74F258A\;

ARCHITECTURE model OF \74F258A\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 4000 ps;
    L2 <= NOT ( N1 );
    L3 <=  ( N1 AND \1A\ );
    L4 <=  ( L2 AND \1B\ );
    L5 <=  ( N1 AND \2A\ );
    L6 <=  ( L2 AND \2B\ );
    L7 <=  ( N1 AND \3A\ );
    L8 <=  ( L2 AND \3B\ );
    L9 <=  ( N1 AND \4A\ );
    L10 <=  ( L2 AND \4B\ );
    N2 <= NOT ( L3 OR L4 ) AFTER 2500 ps;
    N3 <= NOT ( L5 OR L6 ) AFTER 2500 ps;
    N4 <= NOT ( L7 OR L8 ) AFTER 2500 ps;
    N5 <= NOT ( L9 OR L10 ) AFTER 2500 ps;
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F259\ IS PORT(
D : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
G : IN  std_logic;
CLR : IN  std_logic;
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
END \74F259\;

ARCHITECTURE model OF \74F259\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    N1 <= NOT ( S2 ) AFTER 4000 ps;
    N2 <= NOT ( S1 ) AFTER 4000 ps;
    N3 <= NOT ( S0 ) AFTER 4000 ps;
    N4 <= NOT ( G ) AFTER 2000 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <=  ( L1 AND L2 AND L3 AND N4 );
    L5 <=  ( L1 AND L2 AND N3 AND N4 );
    L6 <=  ( L1 AND L3 AND N2 AND N4 );
    L7 <=  ( L1 AND N2 AND N3 AND N4 );
    L8 <=  ( L2 AND L3 AND N1 AND N4 );
    L9 <=  ( L2 AND N1 AND N3 AND N4 );
    L10 <=  ( L3 AND N1 AND N2 AND N4 );
    L11 <=  ( N1 AND N2 AND N3 AND N4 );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q7 , d=>D , enable=>L4 , pr=>ONE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q6 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q5 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q4 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q3 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q2 , d=>D , enable=>L9 , pr=>ONE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q1 , d=>D , enable=>L10 , pr=>ONE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>Q0 , d=>D , enable=>L11 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F273\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F273\;

ARCHITECTURE model OF \74F273\ IS

    BEGIN
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F280\ IS PORT(
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
END \74F280\;

ARCHITECTURE model OF \74F280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( G XOR H XOR I XOR A XOR B XOR C XOR D XOR E XOR F );
    EVEN <= NOT ( L1 ) AFTER 15000 ps;
    ODD <=  ( L1 ) AFTER 15000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F280A\ IS PORT(
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
END \74F280A\;

ARCHITECTURE model OF \74F280A\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( G XOR H XOR I XOR A XOR B XOR C XOR D XOR E XOR F );
    EVEN <= NOT ( L1 ) AFTER 15000 ps;
    ODD <=  ( L1 ) AFTER 15000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F280B\ IS PORT(
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
END \74F280B\;

ARCHITECTURE model OF \74F280B\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( G XOR H XOR I XOR A XOR B XOR C XOR D XOR E XOR F );
    EVEN <= NOT ( L1 ) AFTER 15000 ps;
    ODD <=  ( L1 ) AFTER 15000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F283\ IS PORT(
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
END \74F283\;

ARCHITECTURE model OF \74F283\ IS
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

    BEGIN
    N1 <= NOT ( C0 ) AFTER 3000 ps;
    N2 <= NOT ( A1 OR B1 ) AFTER 3000 ps;
    N3 <= NOT ( A1 AND B1 ) AFTER 3000 ps;
    N4 <= NOT ( B2 OR A2 ) AFTER 3000 ps;
    N5 <= NOT ( B2 AND A2 ) AFTER 3000 ps;
    N6 <= NOT ( A3 OR B3 ) AFTER 3000 ps;
    N7 <= NOT ( A3 AND B3 ) AFTER 3000 ps;
    N8 <= NOT ( B4 OR A4 ) AFTER 3000 ps;
    N9 <= NOT ( B4 AND A4 ) AFTER 3000 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <=  ( L2 AND N3 );
    L4 <=  ( N1 AND N3 );
    L5 <= NOT ( N4 );
    L6 <=  ( L5 AND N5 );
    L7 <=  ( N1 AND N3 AND N5 );
    L8 <=  ( N2 AND N5 );
    L9 <= NOT ( N6 );
    L10 <=  ( L9 AND N7 );
    L11 <=  ( N1 AND N3 AND N5 AND N7 );
    L12 <=  ( N2 AND N5 AND N7 );
    L13 <=  ( N4 AND N7 );
    L14 <= NOT ( N8 );
    L15 <=  ( L14 AND N9 );
    L16 <=  ( N1 AND N3 AND N5 AND N7 AND N9 );
    L17 <=  ( N2 AND N5 AND N7 AND N9 );
    L18 <=  ( N4 AND N7 AND N9 );
    L19 <=  ( N6 AND N9 );
    L20 <= NOT ( L4 OR N2 );
    L21 <= NOT ( L7 OR L8 OR N4 );
    L22 <= NOT ( L11 OR L12 OR L13 OR N6 );
    S1 <=  ( L1 XOR L3 ) AFTER 3500 ps;
    S2 <=  ( L6 XOR L20 ) AFTER 3500 ps;
    S3 <=  ( L10 XOR L21 ) AFTER 3500 ps;
    S4 <=  ( L15 XOR L22 ) AFTER 3500 ps;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F299\ IS PORT(
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
END \74F299\;

ARCHITECTURE model OF \74F299\ IS
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
    N1 <=  ( S0 AND S1 ) AFTER 0 ps;
    N2 <=  ( L2 AND S1 ) AFTER 0 ps;
    N3 <=  ( L1 AND S0 ) AFTER 0 ps;
    N4 <=  ( L1 AND L2 ) AFTER 0 ps;
    N5 <= NOT ( S0 AND S1 ) AFTER 3000 ps;
    N6 <= NOT ( G1 OR G2 ) AFTER 0 ps;
    L3 <=  ( N5 AND N6 );
    L4 <=  ( N3 AND SR );
    L5 <=  ( N2 AND N8 );
    L6 <=  ( N1 AND \A/QA\ );
    L7 <=  ( N4 AND N7 );
    L8 <=  ( L4 OR L5 OR L6 OR L7 );
    L9 <=  ( N3 AND N7 );
    L10 <=  ( N2 AND N9 );
    L11 <=  ( N1 AND \B/QB\ );
    L12 <=  ( N4 AND N8 );
    L13 <=  ( L9 OR L10 OR L11 OR L12 );
    L14 <=  ( N3 AND N8 );
    L15 <=  ( N2 AND N10 );
    L16 <=  ( N1 AND \C/QC\ );
    L17 <=  ( N4 AND N9 );
    L18 <=  ( L14 OR L15 OR L16 OR L17 );
    L19 <=  ( N3 AND N9 );
    L20 <=  ( N2 AND N11 );
    L21 <=  ( N1 AND \D/QD\ );
    L22 <=  ( N4 AND N10 );
    L23 <=  ( L19 OR L20 OR L21 OR L22 );
    L24 <=  ( N3 AND N10 );
    L25 <=  ( N2 AND N12 );
    L26 <=  ( N1 AND \E/QE\ );
    L27 <=  ( N4 AND N11 );
    L28 <=  ( L24 OR L25 OR L26 OR L27 );
    L29 <=  ( N3 AND N11 );
    L30 <=  ( N2 AND N13 );
    L31 <=  ( N1 AND \F/QF\ );
    L32 <=  ( N4 AND N12 );
    L33 <=  ( L29 OR L30 OR L31 OR L32 );
    L34 <=  ( N3 AND N12 );
    L35 <=  ( N2 AND N14 );
    L36 <=  ( N1 AND \G/QG\ );
    L37 <=  ( N4 AND N13 );
    L38 <=  ( L34 OR L35 OR L36 OR L37 );
    L39 <=  ( N3 AND N13 );
    L40 <=  ( N2 AND SL );
    L41 <=  ( N1 AND \H/QH\ );
    L42 <=  ( N4 AND N14 );
    L43 <=  ( L39 OR L40 OR L41 OR L42 );
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLR );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLR );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLR );
    N15 <=  ( N7 ) AFTER 4000 ps;
    N16 <=  ( N8 ) AFTER 4000 ps;
    N17 <=  ( N9 ) AFTER 4000 ps;
    N18 <=  ( N10 ) AFTER 4000 ps;
    N19 <=  ( N11 ) AFTER 4000 ps;
    N20 <=  ( N12 ) AFTER 4000 ps;
    N21 <=  ( N13 ) AFTER 4000 ps;
    N22 <=  ( N14 ) AFTER 4000 ps;
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\A/QA\ , i1=>N15 , en=>L3 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\B/QB\ , i1=>N16 , en=>L3 );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\C/QC\ , i1=>N17 , en=>L3 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\D/QD\ , i1=>N18 , en=>L3 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\E/QE\ , i1=>N19 , en=>L3 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\F/QF\ , i1=>N20 , en=>L3 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\G/QG\ , i1=>N21 , en=>L3 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\H/QH\ , i1=>N22 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 2000 ps;
    \Q\\H\\\ <=  ( N14 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F322\ IS PORT(
SE : IN  std_logic;
DS : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
\A/QA\ : INOUT  std_logic;
\B/QB\ : INOUT  std_logic;
\C/QC\ : INOUT  std_logic;
\D/QD\ : INOUT  std_logic;
\E/QE\ : INOUT  std_logic;
\F/QF\ : INOUT  std_logic;
\G/QG\ : INOUT  std_logic;
\H/QH\ : INOUT  std_logic;
OE : IN  std_logic;
G : IN  std_logic;
CLK : IN  std_logic;
\S/P\\\ : IN  std_logic;
CLR : IN  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F322\;

ARCHITECTURE model OF \74F322\ IS
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

    BEGIN
    N1 <=  ( G ) AFTER 9000 ps;
    N2 <=  ( G ) AFTER 9000 ps;
    L1 <= NOT ( N1 OR \S/P\\\ );
    L2 <= NOT ( L1 OR N2 );
    L3 <=  ( L2 AND D1 AND SE AND DS );
    L4 <= NOT ( DS );
    L5 <=  ( L2 AND L4 AND D0 AND SE );
    L6 <= NOT ( SE );
    L7 <=  ( L1 AND \A/QA\ );
    L8 <=  ( L2 AND L6 AND N3 );
    L9 <=  ( N1 AND N3 );
    L10 <=  ( L2 AND N3 );
    L11 <=  ( L1 AND \B/QB\ );
    L12 <=  ( N1 AND N4 );
    L13 <=  ( L2 AND N4 );
    L14 <=  ( L1 AND \C/QC\ );
    L15 <=  ( N1 AND N5 );
    L16 <=  ( L2 AND N5 );
    L17 <=  ( L1 AND \D/QD\ );
    L18 <=  ( N1 AND N6 );
    L19 <=  ( L2 AND N6 );
    L20 <=  ( L1 AND \E/QE\ );
    L21 <=  ( N1 AND N7 );
    L22 <=  ( L2 AND N7 );
    L23 <=  ( L1 AND \F/QF\ );
    L24 <=  ( N1 AND N8 );
    L25 <=  ( L2 AND N8 );
    L26 <=  ( L1 AND \G/QG\ );
    L27 <=  ( N1 AND N9 );
    L28 <=  ( L2 AND N9 );
    L29 <=  ( L1 AND \H/QH\ );
    L30 <=  ( N1 AND N10 );
    L31 <=  ( L3 OR L5 OR L7 OR L8 OR L9 );
    L32 <=  ( L10 OR L11 OR L12 );
    L33 <=  ( L13 OR L14 OR L15 );
    L34 <=  ( L16 OR L17 OR L18 );
    L35 <=  ( L19 OR L20 OR L21 );
    L36 <=  ( L22 OR L23 OR L24 );
    L37 <=  ( L25 OR L26 OR L27 );
    L38 <=  ( L28 OR L29 OR L30 );
    L39 <= NOT ( L1 OR OE );
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>L31 , clk=>CLK , cl=>CLR );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>L32 , clk=>CLK , cl=>CLR );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>L34 , clk=>CLK , cl=>CLR );
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>L35 , clk=>CLK , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>L36 , clk=>CLK , cl=>CLR );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N9 , d=>L37 , clk=>CLK , cl=>CLR );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N10 , d=>L38 , clk=>CLK , cl=>CLR );
    N11 <=  ( N3 ) AFTER 3000 ps;
    N12 <=  ( N4 ) AFTER 3000 ps;
    N13 <=  ( N5 ) AFTER 3000 ps;
    N14 <=  ( N6 ) AFTER 3000 ps;
    N15 <=  ( N7 ) AFTER 3000 ps;
    N16 <=  ( N8 ) AFTER 3000 ps;
    N17 <=  ( N9 ) AFTER 3000 ps;
    N18 <=  ( N10 ) AFTER 3000 ps;
    \Q\\H\\\ <=  ( N10 ) AFTER 2400 ps;
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\A/QA\ , i1=>N11 , en=>L39 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\B/QB\ , i1=>N12 , en=>L39 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\C/QC\ , i1=>N13 , en=>L39 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\D/QD\ , i1=>N14 , en=>L39 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\E/QE\ , i1=>N15 , en=>L39 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\F/QF\ , i1=>N16 , en=>L39 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\G/QG\ , i1=>N17 , en=>L39 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>17000 ps)
      PORT MAP  (O=>\H/QH\ , i1=>N18 , en=>L39 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F323\ IS PORT(
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
END \74F323\;

ARCHITECTURE model OF \74F323\ IS
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
    SIGNAL N23 : std_logic;

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S0 );
    N1 <=  ( CLR ) AFTER 5000 ps;
    N2 <=  ( N1 AND S0 AND S1 ) AFTER 0 ps;
    N3 <=  ( L2 AND N1 AND S1 ) AFTER 0 ps;
    N4 <=  ( L1 AND N1 AND S0 ) AFTER 0 ps;
    N5 <=  ( L1 AND L2 AND N1 ) AFTER 0 ps;
    N6 <= NOT ( S0 AND S1 ) AFTER 4000 ps;
    N7 <= NOT ( G1 OR G2 ) AFTER 0 ps;
    L3 <=  ( N6 AND N7 );
    L4 <=  ( N4 AND SR );
    L5 <=  ( N3 AND N9 );
    L6 <=  ( N2 AND \A/QA\ );
    L7 <=  ( N5 AND N8 );
    L8 <=  ( L4 OR L5 OR L6 OR L7 );
    L9 <=  ( N4 AND N8 );
    L10 <=  ( N3 AND N10 );
    L11 <=  ( N2 AND \B/QB\ );
    L12 <=  ( N5 AND N9 );
    L13 <=  ( L9 OR L10 OR L11 OR L12 );
    L14 <=  ( N4 AND N9 );
    L15 <=  ( N3 AND N11 );
    L16 <=  ( N2 AND \C/QC\ );
    L17 <=  ( N5 AND N10 );
    L18 <=  ( L14 OR L15 OR L16 OR L17 );
    L19 <=  ( N4 AND N10 );
    L20 <=  ( N3 AND N12 );
    L21 <=  ( N2 AND \D/QD\ );
    L22 <=  ( N5 AND N11 );
    L23 <=  ( L19 OR L20 OR L21 OR L22 );
    L24 <=  ( N4 AND N11 );
    L25 <=  ( N3 AND N13 );
    L26 <=  ( N2 AND \E/QE\ );
    L27 <=  ( N5 AND N12 );
    L28 <=  ( L24 OR L25 OR L26 OR L27 );
    L29 <=  ( N4 AND N12 );
    L30 <=  ( N3 AND N14 );
    L31 <=  ( N2 AND \F/QF\ );
    L32 <=  ( N5 AND N13 );
    L33 <=  ( L29 OR L30 OR L31 OR L32 );
    L34 <=  ( N4 AND N13 );
    L35 <=  ( N3 AND N15 );
    L36 <=  ( N2 AND \G/QG\ );
    L37 <=  ( N5 AND N14 );
    L38 <=  ( L34 OR L35 OR L36 OR L37 );
    L39 <=  ( N4 AND N14 );
    L40 <=  ( N3 AND SL );
    L41 <=  ( N2 AND \H/QH\ );
    L42 <=  ( N5 AND N15 );
    L43 <=  ( L39 OR L40 OR L41 OR L42 );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>L8 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N9 , d=>L13 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N10 , d=>L18 , clk=>CLK );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N11 , d=>L23 , clk=>CLK );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N12 , d=>L28 , clk=>CLK );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N13 , d=>L33 , clk=>CLK );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N14 , d=>L38 , clk=>CLK );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N15 , d=>L43 , clk=>CLK );
    N16 <=  ( N8 ) AFTER 4000 ps;
    N17 <=  ( N9 ) AFTER 4000 ps;
    N18 <=  ( N10 ) AFTER 4000 ps;
    N19 <=  ( N11 ) AFTER 4000 ps;
    N20 <=  ( N12 ) AFTER 4000 ps;
    N21 <=  ( N13 ) AFTER 4000 ps;
    N22 <=  ( N14 ) AFTER 4000 ps;
    N23 <=  ( N15 ) AFTER 4000 ps;
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\A/QA\ , i1=>N8 , en=>L3 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\B/QB\ , i1=>N9 , en=>L3 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\C/QC\ , i1=>N10 , en=>L3 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\D/QD\ , i1=>N11 , en=>L3 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\E/QE\ , i1=>N12 , en=>L3 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\F/QF\ , i1=>N13 , en=>L3 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\G/QG\ , i1=>N14 , en=>L3 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\H/QH\ , i1=>N15 , en=>L3 );
    \Q\\A\\\ <=  ( N8 ) AFTER 2000 ps;
    \Q\\H\\\ <=  ( N15 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F350\ IS PORT(
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
END \74F350\;

ARCHITECTURE model OF \74F350\ IS
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
    N1 <= NOT ( S0 ) AFTER 4000 ps;
    N2 <= NOT ( S1 ) AFTER 4000 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( OE );
    L4 <=  ( N1 AND N2 AND D3 );
    L5 <=  ( L1 AND N2 AND D2 );
    L6 <=  ( L2 AND N1 AND D1 );
    L7 <=  ( L1 AND L2 AND D0 );
    L8 <=  ( N1 AND N2 AND D2 );
    L9 <=  ( L1 AND N2 AND D1 );
    L10 <=  ( L2 AND N1 AND D0 );
    L11 <=  ( L1 AND L2 AND \D-1\ );
    L12 <=  ( N1 AND N2 AND D1 );
    L13 <=  ( L1 AND N2 AND D0 );
    L14 <=  ( L2 AND N1 AND \D-1\ );
    L15 <=  ( L1 AND L2 AND \D-2\ );
    L16 <=  ( N1 AND N2 AND D0 );
    L17 <=  ( L1 AND N2 AND \D-1\ );
    L18 <=  ( L2 AND N1 AND \D-2\ );
    L19 <=  ( L1 AND L2 AND \D-3\ );
    N3 <=  ( L4 OR L5 OR L6 OR L7 ) AFTER 3000 ps;
    N4 <=  ( L8 OR L9 OR L10 OR L11 ) AFTER 3000 ps;
    N5 <=  ( L12 OR L13 OR L14 OR L15 ) AFTER 3000 ps;
    N6 <=  ( L16 OR L17 OR L18 OR L19 ) AFTER 3000 ps;
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L3 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Y2 , i1=>N4 , en=>L3 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Y1 , i1=>N5 , en=>L3 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Y0 , i1=>N6 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F352\ IS PORT(
\1C0\ : IN  std_logic;
\1C1\ : IN  std_logic;
\1C2\ : IN  std_logic;
\1C3\ : IN  std_logic;
\2C0\ : IN  std_logic;
\2C1\ : IN  std_logic;
\2C2\ : IN  std_logic;
\2C3\ : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F352\;

ARCHITECTURE model OF \74F352\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( \1G\ ) AFTER 6000 ps;
    N2 <= NOT ( \2G\ ) AFTER 6000 ps;
    N3 <= NOT ( B ) AFTER 7000 ps;
    N4 <= NOT ( A ) AFTER 7000 ps;
    N5 <=  ( B ) AFTER 7000 ps;
    N6 <=  ( A ) AFTER 7000 ps;
    L1 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L2 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L3 <=  ( N1 AND N4 AND N5 AND \1C2\ );
    L4 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L5 <=  ( N2 AND N3 AND N4 AND \2C0\ );
    L6 <=  ( N2 AND N3 AND N6 AND \2C1\ );
    L7 <=  ( N2 AND N4 AND N5 AND \2C2\ );
    L8 <=  ( N2 AND N5 AND N6 AND \2C3\ );
    \1Y\ <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 3000 ps;
    \2Y\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F353\ IS PORT(
\1C0\ : IN  std_logic;
\1C1\ : IN  std_logic;
\1C2\ : IN  std_logic;
\1C3\ : IN  std_logic;
\2C0\ : IN  std_logic;
\2C1\ : IN  std_logic;
\2C2\ : IN  std_logic;
\2C3\ : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F353\;

ARCHITECTURE model OF \74F353\ IS
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

    BEGIN
    N1 <= NOT ( B ) AFTER 6000 ps;
    N2 <= NOT ( A ) AFTER 6000 ps;
    N3 <=  ( B ) AFTER 6000 ps;
    N4 <=  ( A ) AFTER 6000 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    L3 <=  ( L1 AND N1 AND N2 AND \1C0\ );
    L4 <=  ( L1 AND N1 AND N4 AND \1C1\ );
    L5 <=  ( L1 AND N2 AND N3 AND \1C2\ );
    L6 <=  ( L1 AND N3 AND N4 AND \1C3\ );
    L7 <=  ( L2 AND N1 AND N2 AND \2C0\ );
    L8 <=  ( L2 AND N1 AND N4 AND \2C1\ );
    L9 <=  ( L2 AND N2 AND N3 AND \2C2\ );
    L10 <=  ( L2 AND N3 AND N4 AND \2C3\ );
    N5 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 6000 ps;
    N6 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 6000 ps;
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N5 , en=>L1 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F373\ IS PORT(
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
END \74F373\;

ARCHITECTURE model OF \74F373\ IS
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
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F374\ IS PORT(
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
END \74F374\;

ARCHITECTURE model OF \74F374\ IS
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
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F378\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
G : IN  std_logic;
CLK : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F378\;

ARCHITECTURE model OF \74F378\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 10000 ps;
    N2 <=  ( N1 AND CLK ) AFTER 0 ps;
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N2 );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N2 );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N2 );
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N2 );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N2 );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F379\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
G : IN  std_logic;
CLK : IN  std_logic;
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
END \74F379\;

ARCHITECTURE model OF \74F379\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 6000 ps;
    N2 <=  ( N1 AND CLK ) AFTER 0 ps;
    DFF_0 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>N2 );
    DFF_1 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>N2 );
    DFF_2 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>N2 );
    DFF_3 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F381\ IS PORT(
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
END \74F381\;

ARCHITECTURE model OF \74F381\ IS
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

    BEGIN
    N1 <= NOT ( S0 ) AFTER 0 ps;
    N2 <= NOT ( S1 ) AFTER 0 ps;
    N3 <= NOT ( S2 ) AFTER 0 ps;
    N4 <=  ( S0 ) AFTER 0 ps;
    N5 <=  ( S1 ) AFTER 0 ps;
    N6 <=  ( S2 ) AFTER 0 ps;
    L1 <=  ( N2 AND N3 AND N4 );
    L2 <=  ( N1 AND N3 AND N5 );
    L3 <=  ( N4 AND N5 AND N6 );
    L4 <=  ( N2 AND N4 );
    L5 <=  ( N4 AND N6 );
    L6 <=  ( N1 AND N5 );
    L7 <=  ( N4 AND N5 );
    L8 <=  ( N2 AND N6 );
    L9 <=  ( N3 AND N4 );
    L10 <=  ( N3 AND N5 );
    L11 <= NOT ( A0 );
    L12 <= NOT ( B0 );
    L13 <= NOT ( A1 );
    L14 <= NOT ( B1 );
    L15 <= NOT ( A2 );
    L16 <= NOT ( B2 );
    L17 <= NOT ( A3 );
    L18 <= NOT ( B3 );
    L19 <=  ( L12 AND N17 AND A0 );
    L20 <=  ( N16 AND A0 AND B0 );
    L21 <=  ( L11 AND N17 AND B0 );
    L22 <=  ( L11 AND L12 AND N15 );
    L23 <=  ( L12 AND N20 AND A0 );
    L24 <=  ( N19 AND A0 AND B0 );
    L25 <=  ( L11 AND N18 AND B0 );
    L26 <=  ( L11 AND L12 );
    L27 <=  ( L14 AND N17 AND A1 );
    L28 <=  ( N16 AND A1 AND B1 );
    L29 <=  ( L13 AND N17 AND B1 );
    L30 <=  ( L13 AND L14 AND N15 );
    L31 <=  ( L14 AND N20 AND A1 );
    L32 <=  ( N19 AND A1 AND B1 );
    L33 <=  ( L13 AND N18 AND B1 );
    L34 <=  ( L13 AND L14 );
    L35 <=  ( L16 AND N17 AND A2 );
    L36 <=  ( N16 AND B2 AND A2 );
    L37 <=  ( L15 AND N17 AND B2 );
    L38 <=  ( L15 AND L16 AND N15 );
    L39 <=  ( L16 AND N20 AND A2 );
    L40 <=  ( N19 AND B2 AND A2 );
    L41 <=  ( L15 AND N18 AND B2 );
    L42 <=  ( L15 AND L16 );
    L43 <=  ( L18 AND N17 AND A3 );
    L44 <=  ( N16 AND B3 AND A3 );
    L45 <=  ( L17 AND N17 AND B3 );
    L46 <=  ( L17 AND L18 AND N15 );
    L47 <=  ( L18 AND N20 AND A3 );
    L48 <=  ( N19 AND B3 AND A3 );
    L49 <=  ( L17 AND N18 AND B3 );
    L50 <=  ( L17 AND L18 );
    L51 <= NOT ( N21 AND CN );
    N7 <= NOT ( L19 OR L20 OR L21 OR L22 ) AFTER 3000 ps;
    N8 <= NOT ( L23 OR L24 OR L25 OR L26 ) AFTER 3000 ps;
    N9 <= NOT ( L27 OR L28 OR L29 OR L30 ) AFTER 3000 ps;
    N10 <= NOT ( L31 OR L32 OR L33 OR L34 ) AFTER 3000 ps;
    N11 <= NOT ( L35 OR L36 OR L37 OR L38 ) AFTER 3000 ps;
    N12 <= NOT ( L39 OR L40 OR L41 OR L42 ) AFTER 3000 ps;
    N13 <= NOT ( L43 OR L44 OR L45 OR L46 ) AFTER 3000 ps;
    N14 <= NOT ( L47 OR L48 OR L49 OR L50 ) AFTER 3000 ps;
    L52 <=  ( N7 AND N21 AND CN );
    L53 <=  ( N8 AND N21 );
    L54 <=  ( N7 AND N9 AND N21 AND CN );
    L55 <=  ( N8 AND N9 AND N21 );
    L56 <=  ( N10 AND N21 );
    L57 <=  ( N7 AND N9 AND N11 AND N21 AND CN );
    L58 <=  ( N8 AND N9 AND N11 AND N21 );
    L59 <=  ( N10 AND N11 AND N21 );
    L60 <=  ( N12 AND N21 );
    L61 <=  ( N8 AND N9 AND N11 AND N13 );
    L62 <=  ( N10 AND N11 AND N13 );
    L63 <=  ( N12 AND N13 );
    L64 <= NOT ( L52 OR L53 );
    L65 <= NOT ( L54 OR L55 OR L56 );
    L66 <= NOT ( L57 OR L58 OR L59 OR L60 );
    N15 <= NOT ( L1 OR L2 OR L3 ) AFTER 0 ps;
    N16 <= NOT ( L4 OR L5 OR L6 ) AFTER 0 ps;
    N17 <= NOT ( L7 OR L8 ) AFTER 0 ps;
    N18 <= NOT ( L1 ) AFTER 0 ps;
    N19 <= NOT ( N3 AND S0 AND S1 ) AFTER 0 ps;
    N20 <= NOT ( L2 ) AFTER 0 ps;
    N21 <=  ( L9 OR L10 ) AFTER 0 ps;
    F0 <= NOT ( L51 XOR N7 ) AFTER 11000 ps;
    F1 <= NOT ( L64 XOR N9 ) AFTER 11000 ps;
    F2 <= NOT ( L65 XOR N11 ) AFTER 11000 ps;
    F3 <= NOT ( L66 XOR N13 ) AFTER 11000 ps;
    P <= NOT ( N7 AND N9 AND N11 AND N13 ) AFTER 4000 ps;
    G <= NOT ( L61 OR L62 OR L63 OR N14 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F382\ IS PORT(
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
OVR : OUT  std_logic;
\CN+4\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F382\;

ARCHITECTURE model OF \74F382\ IS
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

    BEGIN
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( S2 );
    L4 <= NOT ( B0 );
    L5 <= NOT ( A0 );
    L6 <= NOT ( B1 );
    L7 <= NOT ( A1 );
    L8 <= NOT ( B2 );
    L9 <= NOT ( A2 );
    L10 <= NOT ( B3 );
    L11 <= NOT ( A3 );
    L12 <=  ( L4 AND L5 AND N10 AND N11 );
    L13 <=  ( L4 AND N9 AND N11 AND N12 AND A0 );
    L14 <=  ( L5 AND N10 AND N12 AND B0 );
    L15 <=  ( L4 AND L5 AND N9 AND N12 AND N15 );
    L16 <=  ( L4 AND N10 AND N11 AND A0 );
    L17 <=  ( L5 AND N10 AND N11 AND B0 );
    L18 <=  ( N9 AND N12 AND A0 AND B0 );
    L19 <=  ( L6 AND L7 AND N10 AND N11 );
    L20 <=  ( L6 AND N9 AND N11 AND N12 AND A1 );
    L21 <=  ( L7 AND N10 AND N12 AND B1 );
    L22 <=  ( L6 AND L7 AND N9 AND N12 AND N15 );
    L23 <=  ( L6 AND N10 AND N11 AND A1 );
    L24 <=  ( L7 AND N10 AND N11 AND B1 );
    L25 <=  ( N9 AND N12 AND A1 AND B1 );
    L26 <=  ( L8 AND L9 AND N10 AND N11 );
    L27 <=  ( L8 AND N9 AND N11 AND N12 AND A2 );
    L28 <=  ( L9 AND N10 AND N12 AND B2 );
    L29 <=  ( L8 AND L9 AND N9 AND N12 AND N15 );
    L30 <=  ( L8 AND N10 AND N11 AND A2 );
    L31 <=  ( L9 AND N10 AND N11 AND B2 );
    L32 <=  ( N9 AND N12 AND B2 AND A2 );
    L33 <=  ( L10 AND L11 AND N10 AND N11 );
    L34 <=  ( L10 AND N9 AND N11 AND N12 AND A3 );
    L35 <=  ( L11 AND N10 AND N12 AND B3 );
    L36 <=  ( L10 AND L11 AND N9 AND N12 AND N15 );
    L37 <=  ( L10 AND N10 AND N11 AND A3 );
    L38 <=  ( L11 AND N10 AND N11 AND B3 );
    L39 <=  ( N9 AND N12 AND B3 AND A3 );
    L40 <=  ( L1 AND L2 );
    L41 <= NOT ( N16 AND CN );
    L42 <=  ( N1 AND N16 AND CN );
    L43 <=  ( N1 AND N2 AND N16 );
    L44 <=  ( N1 AND N3 AND N16 AND CN );
    L45 <=  ( N1 AND N2 AND N3 AND N16 );
    L46 <=  ( N3 AND N4 AND N16 );
    L47 <=  ( N1 AND N3 AND N5 AND N16 AND CN );
    L48 <=  ( N1 AND N2 AND N3 AND N5 AND N16 );
    L49 <=  ( N3 AND N4 AND N5 AND N16 );
    L50 <=  ( N5 AND N6 AND N16 );
    L51 <=  ( N1 AND N2 AND N3 AND N5 AND N7 );
    L52 <=  ( N3 AND N4 AND N5 AND N7 );
    L53 <=  ( N5 AND N6 AND N7 );
    L54 <=  ( N7 AND N8 );
    L55 <= NOT ( N1 AND N3 AND N5 AND N7 AND CN );
    L56 <= NOT ( L42 OR L43 );
    L57 <= NOT ( L44 OR L45 OR L46 );
    L58 <= NOT ( L47 OR L48 OR L49 OR L50 );
    L59 <= NOT ( L51 OR L52 OR L53 OR L54 );
    L60 <=  ( L55 AND L59 );
    N1 <= NOT ( L12 OR L13 OR L14 ) AFTER 1000 ps;
    N2 <= NOT ( L15 OR L16 OR L17 OR L18 ) AFTER 1000 ps;
    N3 <= NOT ( L19 OR L20 OR L21 ) AFTER 1000 ps;
    N4 <= NOT ( L22 OR L23 OR L24 OR L25 ) AFTER 1000 ps;
    N5 <= NOT ( L26 OR L27 OR L28 ) AFTER 1000 ps;
    N6 <= NOT ( L29 OR L30 OR L31 OR L32 ) AFTER 1000 ps;
    N7 <= NOT ( L33 OR L34 OR L35 ) AFTER 1000 ps;
    N8 <= NOT ( L36 OR L37 OR L38 OR L39 ) AFTER 1000 ps;
    N9 <= NOT ( L1 AND L2 ) AFTER 12000 ps;
    N10 <= NOT ( L2 AND L3 ) AFTER 12000 ps;
    N11 <= NOT ( L1 AND S1 ) AFTER 12000 ps;
    N12 <= NOT ( L3 AND S0 AND S1 ) AFTER 12000 ps;
    N13 <=  ( L2 AND S2 ) AFTER 12000 ps;
    N14 <=  ( L1 AND S2 ) AFTER 12000 ps;
    N15 <= NOT ( N13 OR N14 ) AFTER 12000 ps;
    N16 <= NOT ( L40 OR S2 ) AFTER 0 ps;
    F0 <=  ( L41 XOR N2 ) AFTER 11000 ps;
    F1 <=  ( L56 XOR N4 ) AFTER 11000 ps;
    F2 <=  ( L57 XOR N6 ) AFTER 11000 ps;
    F3 <=  ( L58 XOR N8 ) AFTER 11000 ps;
    OVR <=  ( L58 XOR L60 ) AFTER 10000 ps;
    \CN+4\ <= NOT ( L60 ) AFTER 8000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F385\ IS PORT(
\1S/A\\\ : IN  std_logic;
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\2S/A\\\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\3S/A\\\ : IN  std_logic;
\3A\ : IN  std_logic;
\3B\ : IN  std_logic;
\4S/A\\\ : IN  std_logic;
\4A\ : IN  std_logic;
\4B\ : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
\1S\ : OUT  std_logic;
\2S\ : OUT  std_logic;
\3S\ : OUT  std_logic;
\4S\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F385\;

ARCHITECTURE model OF \74F385\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( \1A\ );
    L6 <= NOT ( \2A\ );
    L7 <= NOT ( \3A\ );
    L8 <= NOT ( \4A\ );
    L9 <= NOT ( \1B\ );
    L10 <= NOT ( \2B\ );
    L11 <= NOT ( \3B\ );
    L12 <= NOT ( \4B\ );
    L13 <= NOT ( \1S/A\\\ );
    L14 <= NOT ( \2S/A\\\ );
    L15 <= NOT ( \3S/A\\\ );
    L16 <= NOT ( \4S/A\\\ );
    L17 <= NOT ( CLR );
    L18 <= NOT ( L9 XOR L13 );
    L19 <= NOT ( L1 XOR L5 );
    L20 <=  ( L18 XOR L19 );
    L21 <= NOT ( L10 XOR L14 );
    L22 <= NOT ( L2 XOR L6 );
    L23 <=  ( L21 XOR L22 );
    L24 <= NOT ( L11 XOR L15 );
    L25 <= NOT ( L3 XOR L7 );
    L26 <= NOT ( L24 OR L25 );
    L27 <= NOT ( L12 XOR L16 );
    L28 <= NOT ( L4 XOR L8 );
    L29 <=  ( L27 XOR L28 );
    L30 <= NOT ( L17 AND \1S/A\\\ );
    L31 <= NOT ( L13 AND L17 );
    L32 <= NOT ( L17 AND \2S/A\\\ );
    L33 <= NOT ( L14 AND L17 );
    L34 <= NOT ( L17 AND \3S/A\\\ );
    L35 <= NOT ( L15 AND L17 );
    L36 <= NOT ( L17 AND \4S/A\\\ );
    L37 <= NOT ( L16 AND L17 );
    L38 <=  ( L5 AND L18 );
    L39 <=  ( L1 AND L5 );
    L40 <=  ( L1 AND L18 );
    L41 <=  ( L6 AND L21 );
    L42 <=  ( L2 AND L6 );
    L43 <=  ( L2 AND L21 );
    L44 <=  ( L7 AND L24 );
    L45 <=  ( L3 AND L7 );
    L46 <=  ( L3 AND L24 );
    L47 <=  ( L8 AND L27 );
    L48 <=  ( L4 AND L8 );
    L49 <=  ( L4 AND L27 );
    L50 <= NOT ( L38 OR L39 OR L40 );
    L51 <= NOT ( L41 OR L42 OR L43 );
    L52 <= NOT ( L44 OR L45 OR L46 );
    L53 <= NOT ( L47 OR L48 OR L49 );
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N1 , d=>L50 , clk=>CLK , pr=>L30 , cl=>L31 );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>L51 , clk=>CLK , pr=>L32 , cl=>L33 );
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L52 , clk=>CLK , pr=>L34 , cl=>L35 );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L53 , clk=>CLK , pr=>L36 , cl=>L37 );
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>\1S\ , d=>L20 , clk=>CLK , cl=>CLR );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>\2S\ , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>\3S\ , d=>L26 , clk=>CLK , cl=>CLR );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>\4S\ , d=>L29 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F398\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
WS : IN  std_logic;
CLK : IN  std_logic;
QA : OUT  std_logic;
\Q\\A\\\ : OUT  std_logic;
QB : OUT  std_logic;
\Q\\B\\\ : OUT  std_logic;
QC : OUT  std_logic;
\Q\\C\\\ : OUT  std_logic;
QD : OUT  std_logic;
\Q\\D\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F398\;

ARCHITECTURE model OF \74F398\ IS
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
    N1 <= NOT ( WS ) AFTER 6000 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( N1 AND A1 );
    L3 <=  ( L1 AND A2 );
    L4 <=  ( N1 AND B1 );
    L5 <=  ( L1 AND B2 );
    L6 <=  ( N1 AND C1 );
    L7 <=  ( L1 AND C2 );
    L8 <=  ( N1 AND D1 );
    L9 <=  ( L1 AND D2 );
    L10 <=  ( L2 OR L3 );
    L11 <=  ( L4 OR L5 );
    L12 <=  ( L6 OR L7 );
    L13 <=  ( L8 OR L9 );
    DFF_4 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QA , qNot=>\Q\\A\\\ , d=>L10 , clk=>CLK );
    DFF_5 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QB , qNot=>\Q\\B\\\ , d=>L11 , clk=>CLK );
    DFF_6 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QC , qNot=>\Q\\C\\\ , d=>L12 , clk=>CLK );
    DFF_7 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QD , qNot=>\Q\\D\\\ , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F399\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
WS : IN  std_logic;
CLK : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F399\;

ARCHITECTURE model OF \74F399\ IS
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
    N1 <= NOT ( WS ) AFTER 6000 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( N1 AND A1 );
    L3 <=  ( L1 AND A2 );
    L4 <=  ( N1 AND B1 );
    L5 <=  ( L1 AND B2 );
    L6 <=  ( N1 AND C1 );
    L7 <=  ( L1 AND C2 );
    L8 <=  ( N1 AND D1 );
    L9 <=  ( L1 AND D2 );
    L10 <=  ( L2 OR L3 );
    L11 <=  ( L4 OR L5 );
    L12 <=  ( L6 OR L7 );
    L13 <=  ( L8 OR L9 );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QA , d=>L10 , clk=>CLK );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QB , d=>L11 , clk=>CLK );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QC , d=>L12 , clk=>CLK );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>QD , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F521\ IS PORT(
P0 : IN  std_logic;
P1 : IN  std_logic;
P2 : IN  std_logic;
P3 : IN  std_logic;
P4 : IN  std_logic;
P5 : IN  std_logic;
P6 : IN  std_logic;
P7 : IN  std_logic;
Q0 : IN  std_logic;
Q1 : IN  std_logic;
Q2 : IN  std_logic;
Q3 : IN  std_logic;
Q4 : IN  std_logic;
Q5 : IN  std_logic;
Q6 : IN  std_logic;
Q7 : IN  std_logic;
G : IN  std_logic;
\P=Q\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F521\;

ARCHITECTURE model OF \74F521\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 3000 ps;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 3000 ps;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 3000 ps;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 3000 ps;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 3000 ps;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 3000 ps;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 3000 ps;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 3000 ps;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 8000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F533\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
C : IN  std_logic;
OC : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F533\;

ARCHITECTURE model OF \74F533\ IS
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
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F534\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
OC : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F534\;

ARCHITECTURE model OF \74F534\ IS
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
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>13000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F563\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
OC : IN  std_logic;
C : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F563\;

ARCHITECTURE model OF \74F563\ IS
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
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F568\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
\U/D\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F568\;

ARCHITECTURE model OF \74F568\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( SCLR );
    L4 <= NOT ( ENT );
    L5 <= NOT ( N21 );
    L6 <= NOT ( N3 OR N4 );
    L7 <= NOT ( L3 OR LOAD );
    L8 <=  ( SCLR AND LOAD );
    L9 <= NOT ( L3 OR L7 OR ENP OR ENT );
    L10 <= NOT ( L9 );
    L11 <=  ( L2 AND N6 );
    L12 <=  ( N1 AND N5 );
    L13 <=  ( L2 AND N8 );
    L14 <=  ( N1 AND N7 );
    L15 <=  ( L2 AND N10 );
    L16 <=  ( N1 AND N9 );
    L17 <=  ( L2 AND N12 );
    L18 <=  ( N1 AND N11 );
    L19 <= NOT ( L11 OR L12 );
    L20 <= NOT ( L13 OR L14 );
    L21 <= NOT ( L15 OR L16 );
    L22 <= NOT ( L17 OR L18 );
    L23 <= NOT ( L8 AND N5 );
    L24 <= NOT ( L9 AND L19 );
    L25 <= NOT ( L9 AND L19 AND L20 );
    L26 <= NOT ( L8 AND N9 );
    L27 <= NOT ( L9 AND L19 );
    L28 <= NOT ( L8 AND N11 );
    L29 <= NOT ( L2 AND L22 );
    L30 <= NOT ( N1 AND N10 AND N12 );
    L31 <=  ( L7 AND A );
    L32 <=  ( L8 AND L10 AND N5 );
    L33 <=  ( L9 AND L23 );
    L34 <=  ( L7 AND B );
    L35 <=  ( L8 AND L24 AND N7 );
    L36 <=  ( L9 AND L19 AND L29 AND L30 AND N8 );
    L37 <=  ( L7 AND C );
    L38 <=  ( L8 AND L25 AND N9 );
    L39 <=  ( L9 AND L19 AND L20 AND L26 AND L30 );
    L40 <=  ( L7 AND D );
    L41 <=  ( L8 AND L27 AND N11 );
    L42 <=  ( L9 AND L19 AND L20 AND L21 AND L28 );
    L43 <=  ( L31 OR L32 OR L33 );
    L44 <=  ( L34 OR L35 OR L36 );
    L45 <=  ( L37 OR L38 OR L39 );
    L46 <=  ( L40 OR L41 OR L42 );
    L47 <=  ( L2 AND L4 AND N13 AND N16 );
    L48 <=  ( L4 AND N1 AND N13 AND N14 AND N15 AND N16 );
    N1 <= NOT ( \U/D\\\ ) AFTER 6000 ps;
    N2 <= NOT ( CLK ) AFTER 2000 ps;
    N3 <=  ( ENT ) AFTER 8000 ps;
    N4 <=  ( ENP ) AFTER 8000 ps;
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N5 , qNot=>N6 , d=>L43 , clk=>CLK , cl=>ACLR );
    DFFC_5 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N7 , qNot=>N8 , d=>L44 , clk=>CLK , cl=>ACLR );
    DFFC_6 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N9 , qNot=>N10 , d=>L45 , clk=>CLK , cl=>ACLR );
    DFFC_7 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N11 , qNot=>N12 , d=>L46 , clk=>CLK , cl=>ACLR );
    N13 <=  ( L19 ) AFTER 9000 ps;
    N14 <=  ( L20 ) AFTER 9000 ps;
    N15 <=  ( L21 ) AFTER 9000 ps;
    N16 <=  ( L22 ) AFTER 9000 ps;
    N17 <=  ( N5 ) AFTER 9000 ps;
    N18 <=  ( N7 ) AFTER 9000 ps;
    N19 <=  ( N9 ) AFTER 9000 ps;
    N20 <=  ( N11 ) AFTER 9000 ps;
    CCO <= NOT ( L5 AND L6 AND N2 ) AFTER 2400 ps;
    N21 <= NOT ( L47 OR L48 ) AFTER 7000 ps;
    RCO <= N21;
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QA , i1=>N17 , en=>L1 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QB , i1=>N18 , en=>L1 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QC , i1=>N19 , en=>L1 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QD , i1=>N20 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F569\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
\U/D\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F569\;

ARCHITECTURE model OF \74F569\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( SCLR );
    L4 <= NOT ( ENT );
    L5 <= NOT ( N3 OR N4 );
    L6 <= NOT ( L3 OR LOAD );
    L7 <=  ( SCLR AND LOAD );
    L8 <= NOT ( L7 AND N7 );
    L9 <= NOT ( L3 OR L6 OR ENP OR ENT );
    L10 <= NOT ( L9 );
    L11 <=  ( L2 AND N6 );
    L12 <=  ( N1 AND N5 );
    L13 <=  ( L2 AND N8 );
    L14 <=  ( N1 AND N7 );
    L15 <=  ( L2 AND N10 );
    L16 <=  ( N1 AND N9 );
    L17 <=  ( L2 AND N12 );
    L18 <=  ( N1 AND N11 );
    L19 <= NOT ( L11 OR L12 );
    L20 <= NOT ( L13 OR L14 );
    L21 <= NOT ( L15 OR L16 );
    L22 <= NOT ( L17 OR L18 );
    L23 <= NOT ( L7 AND N5 );
    L24 <= NOT ( L9 AND L19 );
    L25 <= NOT ( L9 AND L19 AND L20 );
    L26 <= NOT ( L7 AND N9 );
    L27 <= NOT ( L9 AND L19 AND L20 AND L21 );
    L28 <= NOT ( L7 AND N11 );
    L29 <=  ( L6 AND A );
    L30 <=  ( L7 AND L10 AND N5 );
    L31 <=  ( L9 AND L23 );
    L32 <=  ( L6 AND B );
    L33 <=  ( L7 AND L24 AND N7 );
    L34 <=  ( L8 AND L9 AND L19 );
    L35 <=  ( L6 AND C );
    L36 <=  ( L7 AND L25 AND N9 );
    L37 <=  ( L9 AND L19 AND L20 AND L26 );
    L38 <=  ( L6 AND D );
    L39 <=  ( L7 AND L27 AND N11 );
    L40 <=  ( L9 AND L19 AND L20 AND L21 AND L28 );
    L41 <=  ( L29 OR L30 OR L31 );
    L42 <=  ( L32 OR L33 OR L34 );
    L43 <=  ( L35 OR L36 OR L37 );
    L44 <=  ( L38 OR L39 OR L40 );
    L45 <=  ( L2 AND L4 AND N13 AND N14 AND N15 AND N16 );
    L46 <=  ( L4 AND N1 AND N13 AND N14 AND N15 AND N16 );
    L47 <= NOT ( N21 );
    N1 <= NOT ( \U/D\\\ ) AFTER 7000 ps;
    N2 <= NOT ( CLK ) AFTER 2000 ps;
    N3 <=  ( ENT ) AFTER 8000 ps;
    N4 <=  ( ENP ) AFTER 8000 ps;
    DFFC_8 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N5 , qNot=>N6 , d=>L41 , clk=>CLK , cl=>ACLR );
    DFFC_9 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N7 , qNot=>N8 , d=>L42 , clk=>CLK , cl=>ACLR );
    DFFC_10 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N9 , qNot=>N10 , d=>L43 , clk=>CLK , cl=>ACLR );
    DFFC_11 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP (q=>N11 , qNot=>N12 , d=>L44 , clk=>CLK , cl=>ACLR );
    N13 <=  ( L19 ) AFTER 9000 ps;
    N14 <=  ( L20 ) AFTER 9000 ps;
    N15 <=  ( L21 ) AFTER 9000 ps;
    N16 <=  ( L22 ) AFTER 9000 ps;
    N17 <=  ( N5 ) AFTER 9000 ps;
    N18 <=  ( N7 ) AFTER 9000 ps;
    N19 <=  ( N9 ) AFTER 9000 ps;
    N20 <=  ( N11 ) AFTER 9000 ps;
    CCO <= NOT ( L5 AND L47 AND N2 ) AFTER 2400 ps;
    N21 <= NOT ( L45 OR L46 ) AFTER 7000 ps;
    RCO <= N21;
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QA , i1=>N17 , en=>L1 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QB , i1=>N18 , en=>L1 );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QC , i1=>N19 , en=>L1 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>QD , i1=>N20 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F573\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
C : IN  std_logic;
OC : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F573\;

ARCHITECTURE model OF \74F573\ IS
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
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F574\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
OC : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F574\;

ARCHITECTURE model OF \74F574\ IS
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
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F588\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
\T/R\\\ : IN  std_logic;
OE : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
B5 : INOUT  std_logic;
B6 : INOUT  std_logic;
B7 : INOUT  std_logic;
B8 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F588\;

ARCHITECTURE model OF \74F588\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
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

    BEGIN
    L1 <= NOT ( OE );
    L2 <=  ( L1 AND \T/R\\\ );
    L3 <= NOT ( L2 OR OE );
    N1 <=  ( A1 ) AFTER 6000 ps;
    N2 <=  ( A2 ) AFTER 6000 ps;
    N3 <=  ( A3 ) AFTER 6000 ps;
    N4 <=  ( A4 ) AFTER 6000 ps;
    N5 <=  ( A5 ) AFTER 6000 ps;
    N6 <=  ( A6 ) AFTER 6000 ps;
    N7 <=  ( A7 ) AFTER 6000 ps;
    N8 <=  ( A8 ) AFTER 6000 ps;
    N9 <=  ( B8 ) AFTER 6000 ps;
    N10 <=  ( B7 ) AFTER 6000 ps;
    N11 <=  ( B6 ) AFTER 6000 ps;
    N12 <=  ( B5 ) AFTER 6000 ps;
    N13 <=  ( B4 ) AFTER 6000 ps;
    N14 <=  ( B3 ) AFTER 6000 ps;
    N15 <=  ( B2 ) AFTER 6000 ps;
    N16 <=  ( B1 ) AFTER 6000 ps;
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L2 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L2 );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L2 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L2 );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L2 );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L2 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L2 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L2 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F604\ IS PORT(
A1 : IN  std_logic;
B1 : IN  std_logic;
A2 : IN  std_logic;
B2 : IN  std_logic;
A3 : IN  std_logic;
B3 : IN  std_logic;
A4 : IN  std_logic;
B4 : IN  std_logic;
A5 : IN  std_logic;
B5 : IN  std_logic;
A6 : IN  std_logic;
B6 : IN  std_logic;
A7 : IN  std_logic;
B7 : IN  std_logic;
A8 : IN  std_logic;
B8 : IN  std_logic;
\A/B\\\ : IN  std_logic;
CLK : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F604\;

ARCHITECTURE model OF \74F604\ IS
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

    BEGIN
    L1 <= NOT ( \A/B\\\ );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N1 , d=>B1 , clk=>CLK );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N2 , d=>A1 , clk=>CLK );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N3 , d=>B2 , clk=>CLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N4 , d=>A2 , clk=>CLK );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N5 , d=>B3 , clk=>CLK );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N6 , d=>A3 , clk=>CLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N7 , d=>B4 , clk=>CLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N8 , d=>A4 , clk=>CLK );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CLK );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N10 , d=>A5 , clk=>CLK );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N11 , d=>B6 , clk=>CLK );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N12 , d=>A6 , clk=>CLK );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N13 , d=>B7 , clk=>CLK );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N14 , d=>A7 , clk=>CLK );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N15 , d=>B8 , clk=>CLK );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N16 , d=>A8 , clk=>CLK );
    N17 <=  ( L1 AND N1 ) AFTER 2400 ps;
    N18 <=  ( L1 AND N3 ) AFTER 2400 ps;
    N19 <=  ( L1 AND N5 ) AFTER 2400 ps;
    N20 <=  ( L1 AND N7 ) AFTER 2400 ps;
    N21 <=  ( L1 AND N9 ) AFTER 2400 ps;
    N22 <=  ( L1 AND N11 ) AFTER 2400 ps;
    N23 <=  ( L1 AND N13 ) AFTER 2400 ps;
    N24 <=  ( L1 AND N15 ) AFTER 2400 ps;
    N25 <=  ( N2 AND \A/B\\\ ) AFTER 2400 ps;
    N26 <=  ( N4 AND \A/B\\\ ) AFTER 2400 ps;
    N27 <=  ( N6 AND \A/B\\\ ) AFTER 2400 ps;
    N28 <=  ( N8 AND \A/B\\\ ) AFTER 2400 ps;
    N29 <=  ( N10 AND \A/B\\\ ) AFTER 2400 ps;
    N30 <=  ( N12 AND \A/B\\\ ) AFTER 2400 ps;
    N31 <=  ( N14 AND \A/B\\\ ) AFTER 2400 ps;
    N32 <=  ( N16 AND \A/B\\\ ) AFTER 2400 ps;
    L2 <=  ( N17 OR N25 );
    L3 <=  ( N18 OR N26 );
    L4 <=  ( N19 OR N27 );
    L5 <=  ( N20 OR N28 );
    L6 <=  ( N21 OR N29 );
    L7 <=  ( N22 OR N30 );
    L8 <=  ( N23 OR N31 );
    L9 <=  ( N24 OR N32 );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y1 , i1=>L2 , en=>CLK );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y2 , i1=>L3 , en=>CLK );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y3 , i1=>L4 , en=>CLK );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y4 , i1=>L5 , en=>CLK );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y5 , i1=>L6 , en=>CLK );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y6 , i1=>L7 , en=>CLK );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y7 , i1=>L8 , en=>CLK );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>13000 ps)
      PORT MAP  (O=>Y8 , i1=>L9 , en=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F823\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
CLK : IN  std_logic;
CLKEN : IN  std_logic;
OC : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
Q9 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F823\;

ARCHITECTURE model OF \74F823\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
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

    BEGIN
    L1 <= NOT ( OC );
    L2 <= NOT ( N1 OR CLKEN );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_63 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_64 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_65 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_66 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_67 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_68 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_69 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_70 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F824\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
CLK : IN  std_logic;
CLKEN : IN  std_logic;
OC : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
Q9 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F824\;

ARCHITECTURE model OF \74F824\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
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

    BEGIN
    L1 <= NOT ( OC );
    L2 <= NOT ( N1 OR CLKEN );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_71 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_72 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_73 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_74 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_75 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_76 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_77 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_78 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_79 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F825\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
CLKEN : IN  std_logic;
OC1 : IN  std_logic;
OC2 : IN  std_logic;
OC3 : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F825\;

ARCHITECTURE model OF \74F825\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
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
    L1 <= NOT ( OC1 OR OC2 OR OC3 );
    L2 <= NOT ( N1 OR CLKEN );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_80 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_81 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_82 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_83 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_84 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_85 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_86 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_87 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F843\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
C : IN  std_logic;
OC : IN  std_logic;
PRE : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
Q9 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F843\;

ARCHITECTURE model OF \74F843\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;

    BEGIN
    L1 <= NOT ( OC );
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_16 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74F845\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
C : IN  std_logic;
OC1 : IN  std_logic;
OC2 : IN  std_logic;
OC3 : IN  std_logic;
PRE : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74F845\;

ARCHITECTURE model OF \74F845\ IS
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
    L1 <= NOT ( OC1 OR OC2 OR OC3 );
    DLATCHPC_17 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_18 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_19 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_20 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_21 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_22 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_23 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_24 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>11000 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;

