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
-- Date:			February 22, 1997
-- File:			ECL.VHD
-- Resource 1:	  Motorola, ECL Data, Q1/93, DL122, REV 5
-- Delay units:	  Picoseconds
-- Characteristics: MC10K MIN/MAX, Vcc=5V +/-0.5 V @ +25C

-- Resource 2:      Fairchild F100K ECL Data Book, 1986
-- Delay units:	  Picoseconds 
-- Characteristics: F100K TYP/MAX, Vcc=5V @ 0 and +85C

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.

-- Unless otherwise stated the parameters are used for -30 and +85 deg. C.
-- Also Unless otherwise stated all propagation delays are for 50% of the
-- rise or fall of the signal.
-- 



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10100 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
IC_A : IN  std_logic;
IC_B : IN  std_logic;
IC_C : IN  std_logic;
IC_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10100;

ARCHITECTURE model OF MC10100 IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR IC_A ) AFTER 1000 ps;
    O_B <= NOT ( I0_B OR I1_B OR IC_A ) AFTER 1000 ps;
    O_C <= NOT ( I0_C OR I1_C OR IC_A ) AFTER 1000 ps;
    O_D <= NOT ( I0_D OR I1_D OR IC_A ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10101 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
IC_A : IN  std_logic;
IC_B : IN  std_logic;
IC_C : IN  std_logic;
IC_D : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
\O\\_D\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10101;

ARCHITECTURE model OF MC10101 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR IC_A );
    L2 <=  ( I0_B OR IC_A );
    L3 <=  ( I0_C OR IC_A );
    L4 <=  ( I0_D OR IC_A );
    \O\\_A\ <= NOT ( L1 ) AFTER 1000 ps;
    \O\\_B\ <= NOT ( L2 ) AFTER 1000 ps;
    \O\\_C\ <= NOT ( L3 ) AFTER 1000 ps;
    \O\\_D\ <= NOT ( L4 ) AFTER 1000 ps;
    O_A <=  ( L1 ) AFTER 1000 ps;
    O_B <=  ( L2 ) AFTER 1000 ps;
    O_C <=  ( L3 ) AFTER 1000 ps;
    O_D <=  ( L4 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10102 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
\O\\_D\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10102;

ARCHITECTURE model OF MC10102 IS
    SIGNAL L1 : std_logic;

    BEGIN
    \O\\_A\ <= NOT ( I0_A OR I1_A ) AFTER 1000 ps;
    \O\\_B\ <= NOT ( I0_B OR I1_B ) AFTER 1000 ps;
    \O\\_C\ <= NOT ( I0_C OR I1_C ) AFTER 1000 ps;
    L1 <=  ( I0_D OR I1_D );
    \O\\_D\ <= NOT ( L1 ) AFTER 1000 ps;
    O_D <=  ( L1 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10103 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
\O\\_D\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10103;

ARCHITECTURE model OF MC10103 IS
    SIGNAL L1 : std_logic;

    BEGIN
    \O\\_B\ <=  ( I0_A OR I1_A ) AFTER 1000 ps;
    \O\\_C\ <=  ( I0_B OR I1_B ) AFTER 1000 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1000 ps;
    L1 <=  ( I0_D OR I1_D );
    \O\\_D\ <= NOT ( L1 ) AFTER 1000 ps;
    O_D <=  ( L1 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10104 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
\O\\_D\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10104;

ARCHITECTURE model OF MC10104 IS
    SIGNAL L1 : std_logic;

    BEGIN
    \O\\_B\ <=  ( I0_A AND I1_A ) AFTER 1000 ps;
    \O\\_C\ <=  ( I0_B AND I1_B ) AFTER 1000 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 1000 ps;
    L1 <=  ( I0_D AND I1_D );
    \O\\_D\ <= NOT ( L1 ) AFTER 1000 ps;
    O_D <=  ( L1 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10105 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I2_C : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10105;

ARCHITECTURE model OF MC10105 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A );
    L2 <=  ( I0_B OR I2_B OR I1_B );
    L3 <=  ( I1_C OR I0_C );
    \O\\_A\ <= NOT ( L1 ) AFTER 1000 ps;
    \O\\_B\ <= NOT ( L2 ) AFTER 1000 ps;
    \O\\_C\ <= NOT ( L3 ) AFTER 1000 ps;
    O_A <=  ( L1 ) AFTER 1000 ps;
    O_B <=  ( L2 ) AFTER 1000 ps;
    O_C <=  ( L3 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10106 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I2_C : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
I3_C : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10106;

ARCHITECTURE model OF MC10106 IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A OR I3_A ) AFTER 1000 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 1000 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10107 IS PORT(
\IN 0_A\ : IN  std_logic;
\IN 0_B\ : IN  std_logic;
\IN 0_C\ : IN  std_logic;
\IN 1_A\ : IN  std_logic;
\IN 1_B\ : IN  std_logic;
\IN 1_C\ : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10107;

ARCHITECTURE model OF MC10107 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;

    BEGIN
    L1 <=  ( \IN 0_A\ XOR \IN 1_A\ );
    L2 <=  ( \IN 1_B\ XOR \IN 0_B\ );
    L3 <=  ( \IN 0_C\ XOR \IN 1_C\ );
    \O\\_A\ <= NOT ( L1 ) AFTER 1100 ps;
    \O\\_B\ <= NOT ( L2 ) AFTER 1100 ps;
    \O\\_C\ <= NOT ( L3 ) AFTER 1100 ps;
    O_A <=  ( L1 ) AFTER 1100 ps;
    O_B <=  ( L2 ) AFTER 1100 ps;
    O_C <=  ( L3 ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10108 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10108;

ARCHITECTURE model OF MC10108 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A AND I1_A AND I2_A AND I3_A );
    L2 <=  ( I0_B AND I1_B AND I2_B AND I3_B );
    \O\\_A\ <= NOT ( L1 ) AFTER 3900 ps;
    \O\\_B\ <= NOT ( L2 ) AFTER 3900 ps;
    O_A <=  ( L1 ) AFTER 3900 ps;
    O_B <=  ( L2 ) AFTER 3900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10109 IS PORT(
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
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10109;

ARCHITECTURE model OF MC10109 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I3_A OR I4_A );
    L2 <=  ( I0_B OR I1_B OR I2_B OR I3_B OR I4_B );
    \O\\_A\ <= NOT ( L1 ) AFTER 3300 ps;
    \O\\_B\ <= NOT ( L2 ) AFTER 3300 ps;
    O_A <=  ( L1 ) AFTER 3300 ps;
    O_B <=  ( L1 ) AFTER 3300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10110 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
O0_A : OUT  std_logic;
O0_B : OUT  std_logic;
O1_A : OUT  std_logic;
O1_B : OUT  std_logic;
O2_A : OUT  std_logic;
O2_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10110;

ARCHITECTURE model OF MC10110 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I2_A );
    L2 <=  ( I0_B OR I1_B OR I2_B );
    O0_A <=  ( L1 ) AFTER 1400 ps;
    O1_A <=  ( L1 ) AFTER 1400 ps;
    O2_A <=  ( L1 ) AFTER 1400 ps;
    O0_B <=  ( L2 ) AFTER 1400 ps;
    O1_B <=  ( L2 ) AFTER 1400 ps;
    O2_B <=  ( L2 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10111 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
O0_A : OUT  std_logic;
O0_B : OUT  std_logic;
O1_A : OUT  std_logic;
O1_B : OUT  std_logic;
O2_A : OUT  std_logic;
O2_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10111;

ARCHITECTURE model OF MC10111 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I2_A );
    L2 <=  ( I0_B OR I1_B OR I2_B );
    O0_A <= NOT ( L1 ) AFTER 1400 ps;
    O1_A <= NOT ( L1 ) AFTER 1400 ps;
    O2_A <= NOT ( L1 ) AFTER 1400 ps;
    O0_B <= NOT ( L2 ) AFTER 1400 ps;
    O1_B <= NOT ( L2 ) AFTER 1400 ps;
    O2_B <= NOT ( L2 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10113 IS PORT(
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
E_A : IN  std_logic;
E_B : IN  std_logic;
E_C : IN  std_logic;
E_D : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10113;

ARCHITECTURE model OF MC10113 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( I0_A XOR I1_A );
    L2 <= NOT ( I0_B XOR I1_B );
    L3 <= NOT ( I0_C XOR I1_C );
    L4 <= NOT ( I0_D XOR I1_D );
    N1 <=  ( E_A ) AFTER 5 ps;
    O_A <= NOT ( L1 OR N1 ) AFTER 1300 ps;
    O_B <= NOT ( L2 OR N1 ) AFTER 1300 ps;
    O_C <= NOT ( L3 OR N1 ) AFTER 1300 ps;
    O_D <= NOT ( L4 OR N1 ) AFTER 1300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10117 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
IC_A : IN  std_logic;
IC_B : IN  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10117;

ARCHITECTURE model OF MC10117 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A );
    L2 <=  ( I2_A OR I3_A OR IC_A );
    L3 <=  ( IC_A OR I2_B OR I3_B );
    L4 <=  ( I0_B OR I1_B );
    L5 <=  ( L1 AND L2 );
    L6 <=  ( L3 AND L4 );
    \O\\_A\ <= NOT ( L5 ) AFTER 1400 ps;
    \O\\_B\ <= NOT ( L6 ) AFTER 1400 ps;
    O_A <=  ( L5 ) AFTER 1400 ps;
    O_B <=  ( L6 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10118 IS PORT(
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
IC_A : IN  std_logic;
IC_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10118;

ARCHITECTURE model OF MC10118 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I2_A );
    L2 <=  ( I3_A OR I4_A OR IC_A );
    L3 <=  ( IC_A OR I3_B OR I4_B );
    L4 <=  ( I0_B OR I1_B OR I2_B );
    O_A <=  ( L1 AND L2 ) AFTER 1400 ps;
    O_B <=  ( L3 AND L4 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10119 IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
BC : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
O : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10119;

ARCHITECTURE model OF MC10119 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( A0 OR A1 OR A2 OR A3 );
    L2 <=  ( B0 OR B1 OR BC );
    L3 <=  ( BC OR C1 OR C2 );
    L4 <=  ( D0 OR D1 OR D2 );
    O <=  ( L1 AND L2 AND L3 AND L4 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10121 IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
BC : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
O : OUT  std_logic;
\O\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10121;

ARCHITECTURE model OF MC10121 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;

    BEGIN
    L1 <=  ( A0 OR A1 OR A2 );
    L2 <=  ( B1 OR B2 OR BC );
    L3 <=  ( BC OR C1 OR C2 );
    L4 <=  ( D1 OR D2 OR D3 );
    L5 <=  ( L1 AND L2 AND L3 AND L4 );
    \O\\\ <= NOT ( L5 ) AFTER 1400 ps;
    O <=  ( L5 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10123 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
I2_C : IN  std_logic;
I3_A : IN  std_logic;
I3_B : IN  std_logic;
I3_C : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10123;

ARCHITECTURE model OF MC10123 IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A OR I3_A ) AFTER 1200 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 1200 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 1200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10124 IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
IC : IN  std_logic;
\O\\0\\\ : OUT  std_logic;
O0 : OUT  std_logic;
\O\\1\\\ : OUT  std_logic;
O1 : OUT  std_logic;
\O\\2\\\ : OUT  std_logic;
O2 : OUT  std_logic;
\O\\3\\\ : OUT  std_logic;
O3 : OUT  std_logic;
GND : INOUT  std_logic;
VCC : IN  std_logic;
VEE : IN  std_logic);
END MC10124;

ARCHITECTURE model OF MC10124 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( I0 AND IC );
    L2 <=  ( I1 AND IC );
    L3 <=  ( I2 AND IC );
    L4 <=  ( I3 AND IC );
    \O\\0\\\ <= NOT ( L1 ) AFTER 1000 ps;
    \O\\1\\\ <= NOT ( L2 ) AFTER 1000 ps;
    \O\\2\\\ <= NOT ( L3 ) AFTER 1000 ps;
    \O\\3\\\ <= NOT ( L4 ) AFTER 1000 ps;
    O0 <=  ( L1 ) AFTER 1000 ps;
    O1 <=  ( L2 ) AFTER 1000 ps;
    O2 <=  ( L3 ) AFTER 1000 ps;
    O3 <=  ( L4 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10129 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
CLK : IN  std_logic;
CNTL : IN  std_logic;
STROBE : IN  std_logic;
RESET : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC : IN  std_logic;
VEE : IN  std_logic;
GND : IN  std_logic);
END MC10129;

ARCHITECTURE model OF MC10129 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( RESET AND CLK );
    L2 <= NOT ( CLK );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>L2 , pr=>ONE , cl=>L1 );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>L2 , pr=>ONE , cl=>L1 );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>L2 , pr=>ONE , cl=>L1 );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>L2 , pr=>ONE , cl=>L1 );
    Q0 <=  ( N1 AND STROBE ) AFTER 1600 ps;
    Q1 <=  ( N2 AND STROBE ) AFTER 1600 ps;
    Q2 <=  ( N3 AND STROBE ) AFTER 1600 ps;
    Q3 <=  ( N4 AND STROBE ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10130 IS PORT(
D_A : IN  std_logic;
D_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
CE_A : IN  std_logic;
CE_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
S_A : IN  std_logic;
S_B : IN  std_logic;
R_A : IN  std_logic;
R_B : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10130;

ARCHITECTURE model OF MC10130 IS
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

    BEGIN
    L1 <= NOT ( CE_A OR CLK_A );
    L2 <= NOT ( CE_B OR CLK_A );
    L3 <= NOT ( L1 );
    L4 <= NOT ( L2 );
    L5 <= NOT ( L3 AND S_A );
    L6 <= NOT ( L4 AND S_B );
    L7 <= NOT ( L3 AND R_A );
    L8 <= NOT ( L4 AND R_B );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N1 , d=>D_A , enable=>L1 , pr=>L5 , cl=>L7 );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N2 , d=>D_B , enable=>L2 , pr=>L6 , cl=>L8 );
    Q_A <=  ( N1 ) AFTER 1800 ps;
    Q_B <=  ( N2 ) AFTER 1800 ps;
    \Q\\_A\ <= NOT ( N1 ) AFTER 1800 ps;
    \Q\\_B\ <= NOT ( N2 ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10131 IS PORT(
D_A : IN  std_logic;
D_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
CE_A : IN  std_logic;
CE_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
S_A : IN  std_logic;
S_B : IN  std_logic;
R_A : IN  std_logic;
R_B : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10131;

ARCHITECTURE model OF MC10131 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( S_A );
    L2 <= NOT ( R_A );
    L3 <= NOT ( S_B );
    L4 <= NOT ( R_B );
    N1 <=  ( CE_A OR CLK_A ) AFTER 0 ps;
    N2 <=  ( CLK_A OR CE_B ) AFTER 0 ps;
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D_A , clk=>N1 , pr=>L1 , cl=>L2 );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D_B , clk=>N2 , pr=>L3 , cl=>L4 );
    Q_A <=  ( N3 ) AFTER 1400 ps;
    Q_B <=  ( N4 ) AFTER 1400 ps;
    \Q\\_A\ <= NOT ( N3 ) AFTER 1400 ps;
    \Q\\_B\ <= NOT ( N4 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10H131 IS PORT(
D_A : IN  std_logic;
D_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
CE_A : IN  std_logic;
CE_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
S_A : IN  std_logic;
S_B : IN  std_logic;
R_A : IN  std_logic;
R_B : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10H131;

ARCHITECTURE model OF MC10H131 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( S_A );
    L2 <= NOT ( R_A );
    L3 <= NOT ( S_B );
    L4 <= NOT ( R_B );
    N1 <=  ( CE_A OR CLK_A ) AFTER 0 ps;
    N2 <=  ( CLK_A OR CE_B ) AFTER 0 ps;
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N3 , d=>D_A , clk=>N1 , pr=>L1 , cl=>L2 );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N4 , d=>D_B , clk=>N2 , pr=>L3 , cl=>L4 );
    Q_A <=  ( N3 ) AFTER 1800 ps;
    Q_B <=  ( N4 ) AFTER 1800 ps;
    \Q\\_A\ <= NOT ( N3 ) AFTER 1800 ps;
    \Q\\_B\ <= NOT ( N4 ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10132 IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
SEL_A : IN  std_logic;
SEL_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
\C\\E\\_A\ : IN  std_logic;
\C\\E\\_B\ : IN  std_logic;
RST_A : IN  std_logic;
RST_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10132;

ARCHITECTURE model OF MC10132 IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( SEL_A );
    L2 <=  ( L1 AND D1_A );
    L3 <=  ( SEL_A AND D2_A );
    L4 <=  ( D1_B AND L1 );
    L5 <=  ( D2_B AND SEL_A );
    L6 <=  ( L2 OR L3 );
    L7 <=  ( L4 OR L5 );
    L8 <= NOT ( \C\\E\\_A\ OR CLK_A );
    L9 <= NOT ( CLK_A OR \C\\E\\_B\ );
    L10 <= NOT ( RST_A );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>L6 , enable=>L8 , pr=>ONE , cl=>L10 );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L7 , enable=>L9 , pr=>ONE , cl=>L10 );
    Q_A <=  ( N2 ) AFTER 1000 ps;
    Q_B <=  ( N3 ) AFTER 1000 ps;
    \Q\\_A\ <= NOT ( N2 ) AFTER 1000 ps;
    \Q\\_B\ <= NOT ( N3 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10133 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
CLK : IN  std_logic;
CE01 : IN  std_logic;
CE23 : IN  std_logic;
OE01 : IN  std_logic;
OE23 : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10133;

ARCHITECTURE model OF MC10133 IS
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

    BEGIN
    L1 <=  ( CE01 OR CLK );
    L2 <=  ( CLK OR CE23 );
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N3 , d=>D0 , enable=>L1 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N4 , d=>D1 , enable=>L1 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N5 , d=>D2 , enable=>L2 );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N6 , d=>D3 , enable=>L2 );
    L3 <= NOT ( OE01 );
    L4 <= NOT ( OE23 );
    Q0 <=  ( N3 AND L3 ) AFTER 1000 ps;
    Q1 <=  ( N4 AND L3 ) AFTER 1000 ps;
    Q2 <=  ( N5 AND L4 ) AFTER 1000 ps;
    Q3 <=  ( N6 AND L4 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10134 IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
SEL_A : IN  std_logic;
SEL_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
CE_A : IN  std_logic;
CE_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10134;

ARCHITECTURE model OF MC10134 IS
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
    N1 <=  ( SEL_A ) AFTER 13 ps;
    N2 <=  ( SEL_B ) AFTER 13 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <=  ( D1_A AND L1 );
    L4 <=  ( D2_A AND N1 );
    L5 <=  ( D1_B AND L2 );
    L6 <=  ( D2_B AND N2 );
    L7 <=  ( L3 OR L4 );
    L8 <=  ( L5 OR L6 );
    L9 <= NOT ( CE_A OR CLK_A );
    L10 <= NOT ( CLK_A OR CE_B );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>L7 , enable=>L9 );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>L8 , enable=>L10 );
    Q_A <=  ( N3 ) AFTER 1000 ps;
    Q_B <=  ( N4 ) AFTER 1000 ps;
    \Q\\_A\ <= NOT ( N3 ) AFTER 1000 ps;
    \Q\\_B\ <= NOT ( N4 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10135 IS PORT(
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
S_A : IN  std_logic;
S_B : IN  std_logic;
R_A : IN  std_logic;
R_B : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10135;

ARCHITECTURE model OF MC10135 IS
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

    BEGIN
    L1 <= NOT ( S_A );
    L2 <= NOT ( S_B );
    L3 <= NOT ( R_A );
    L4 <= NOT ( R_B );
    L5 <= NOT ( J_A );
    L6 <= NOT ( K_A );
    L7 <= NOT ( J_B );
    L8 <= NOT ( K_B );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N1 , qNot=>N2 , j=>L5 , k=>L6 , clk=>CLK_A , pr=>L1 , cl=>L3 );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>L7 , k=>L8 , clk=>CLK_A , pr=>L2 , cl=>L4 );
    Q_A <=  ( N1 ) AFTER 1000 ps;
    \Q\\_A\ <=  ( N2 ) AFTER 1000 ps;
    Q_B <=  ( N3 ) AFTER 1000 ps;
    \Q\\_B\ <=  ( N4 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10141 IS PORT(
DL : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
DR : IN  std_logic;
CLK : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10141;

ARCHITECTURE model OF MC10141 IS
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

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S2 );
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND S2 );
    L5 <=  ( S1 AND L2 );
    L6 <=  ( S1 AND S2 );
    L7 <=  ( D3 AND L3 );
    L8 <=  ( DR AND L4 );
    L9 <=  ( N2 AND L5 );
    L10 <=  ( N1 AND L6 );
    L11 <=  ( D2 AND L3 );
    L12 <=  ( N1 AND L4 );
    L13 <=  ( N3 AND L5 );
    L14 <=  ( N2 AND L6 );
    L15 <=  ( D1 AND L3 );
    L16 <=  ( N2 AND L4 );
    L17 <=  ( N4 AND L5 );
    L18 <=  ( N3 AND L6 );
    L19 <=  ( D0 AND L3 );
    L20 <=  ( N3 AND L4 );
    L21 <=  ( DL AND L5 );
    L22 <=  ( N4 AND L6 );
    L23 <=  ( L7 OR L8 OR L9 OR L10 );
    L24 <=  ( L11 OR L12 OR L13 OR L14 );
    L25 <=  ( L15 OR L16 OR L17 OR L18 );
    L26 <=  ( L19 OR L20 OR L21 OR L22 );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>N1 , d=>L23 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>N2 , d=>L24 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>N3 , d=>L25 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9000 ps, tfall_clk_q=>9000 ps)
      PORT MAP  (q=>N4 , d=>L26 , clk=>CLK );
    Q3 <=  ( N1 ) AFTER 1800 ps;
    Q2 <=  ( N2 ) AFTER 1800 ps;
    Q1 <=  ( N3 ) AFTER 1800 ps;
    Q0 <=  ( N4 ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10153 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
CLK : IN  std_logic;
CE01 : IN  std_logic;
CE23 : IN  std_logic;
OE01 : IN  std_logic;
OE23 : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10153;

ARCHITECTURE model OF MC10153 IS
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

    BEGIN
    L1 <= NOT ( CE01 OR CLK );
    L2 <= NOT ( CLK OR CE23 );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>D0 , enable=>L1 );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>D1 , enable=>L1 );
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>D2 , enable=>L2 );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>D3 , enable=>L2 );
    L3 <= NOT ( OE01 );
    L4 <= NOT ( OE23 );
    Q0 <=  ( N3 AND L3 ) AFTER 1000 ps;
    Q1 <=  ( N4 AND L3 ) AFTER 1000 ps;
    Q2 <=  ( N5 AND L4 ) AFTER 1000 ps;
    Q3 <=  ( N6 AND L4 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10154 IS PORT(
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
S3 : IN  std_logic;
RST : IN  std_logic;
\CLK 1\ : IN  std_logic;
\CLK 2\ : IN  std_logic;
Q0 : OUT  std_logic;
\Q\\0\\\ : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
\Q\\3\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10154;

ARCHITECTURE model OF MC10154 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( S2 );
    L4 <= NOT ( S3 );
    L5 <= NOT ( RST );
    N1 <=  ( \CLK 1\ OR \CLK 2\ ) AFTER 0 ps;
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>3700 ps, tfall_clk_q=>3700 ps)
      PORT MAP  (q=>N2 , qNot=>N3 , d=>N3 , clk=>N1 , pr=>L1 , cl=>L5 );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>4400 ps, tfall_clk_q=>4400 ps)
      PORT MAP  (q=>N4 , qNot=>N5 , d=>N5 , clk=>N2 , pr=>L2 , cl=>L5 );
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>2900 ps, tfall_clk_q=>2900 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , d=>N7 , clk=>N4 , pr=>L3 , cl=>L5 );
    DFFPC_3 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>2600 ps, tfall_clk_q=>2600 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , d=>N9 , clk=>N6 , pr=>L4 , cl=>L5 );
    Q0 <=  ( N2 ) AFTER 4000 ps;
    \Q\\0\\\ <=  ( N3 ) AFTER 4000 ps;
    Q1 <=  ( N4 ) AFTER 4000 ps;
    Q2 <=  ( N6 ) AFTER 4000 ps;
    Q3 <=  ( N8 ) AFTER 4000 ps;
    \Q\\3\\\ <=  ( N9 ) AFTER 4000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10158 IS PORT(
D00 : IN  std_logic;
D01 : IN  std_logic;
D10 : IN  std_logic;
D11 : IN  std_logic;
D20 : IN  std_logic;
D21 : IN  std_logic;
D30 : IN  std_logic;
D31 : IN  std_logic;
SEL : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VEE : IN  std_logic);
END MC10158;

ARCHITECTURE model OF MC10158 IS
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

    BEGIN
    N1 <=  ( SEL ) AFTER 1400 ps;
    N2 <= NOT ( SEL ) AFTER 1400 ps;
    L1 <=  ( N2 AND D01 );
    L2 <=  ( N1 AND D00 );
    L3 <=  ( N2 AND D11 );
    L4 <=  ( N1 AND D10 );
    L5 <=  ( N2 AND D21 );
    L6 <=  ( N1 AND D20 );
    L7 <=  ( N2 AND D31 );
    L8 <=  ( N1 AND D30 );
    Q0 <=  ( L1 OR L2 ) AFTER 1000 ps;
    Q1 <=  ( L3 OR L4 ) AFTER 1000 ps;
    Q2 <=  ( L5 OR L6 ) AFTER 1000 ps;
    Q3 <=  ( L7 OR L8 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10159 IS PORT(
D00 : IN  std_logic;
D01 : IN  std_logic;
D10 : IN  std_logic;
D11 : IN  std_logic;
D20 : IN  std_logic;
D21 : IN  std_logic;
D30 : IN  std_logic;
D31 : IN  std_logic;
SEL : IN  std_logic;
ENABLE : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VEE : IN  std_logic);
END MC10159;

ARCHITECTURE model OF MC10159 IS
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

    BEGIN
    N1 <=  ( SEL ) AFTER 100 ps;
    N2 <= NOT ( SEL ) AFTER 100 ps;
    L1 <=  ( N2 AND D01 );
    L2 <=  ( N1 AND D00 );
    L3 <=  ( N2 AND D11 );
    L4 <=  ( N1 AND D10 );
    L5 <=  ( N2 AND D21 );
    L6 <=  ( N1 AND D20 );
    L7 <=  ( N2 AND D31 );
    L8 <=  ( N1 AND D30 );
    Q0 <= NOT ( L1 OR L2 OR ENABLE ) AFTER 1100 ps;
    Q1 <= NOT ( L3 OR L4 OR ENABLE ) AFTER 1100 ps;
    Q2 <= NOT ( L5 OR L6 OR ENABLE ) AFTER 1100 ps;
    Q3 <= NOT ( L7 OR L8 OR ENABLE ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10160 IS PORT(
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
\OUT\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10160;

ARCHITECTURE model OF MC10160 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1 <=  ( I1 XOR I2 );
    L2 <=  ( I3 XOR I4 );
    L3 <=  ( I5 XOR I6 );
    L4 <=  ( I7 XOR I8 );
    L5 <=  ( I9 XOR I10 );
    L6 <=  ( I11 XOR I12 );
    L7 <=  ( L1 XOR L2 XOR L3 );
    L8 <=  ( L4 XOR L5 XOR L6 );
    \OUT\ <=  ( L7 XOR L8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10162 IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
E0 : IN  std_logic;
E1 : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10162;

ARCHITECTURE model OF MC10162 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;

    BEGIN
    L1 <= NOT ( C );
    L2 <= NOT ( A );
    L3 <= NOT ( B );
    L4 <=  ( E0 OR E1 OR L1 );
    L5 <=  ( E0 OR E1 OR C );
    L6 <=  ( A OR B );
    L7 <=  ( A OR L3 );
    L8 <=  ( L3 OR L2 );
    L9 <=  ( L2 OR B );
    Q0 <= NOT ( L5 OR L6 ) AFTER 1500 ps;
    Q1 <= NOT ( L5 OR L9 ) AFTER 1500 ps;
    Q2 <= NOT ( L5 OR L7 ) AFTER 1500 ps;
    Q3 <= NOT ( L5 OR L8 ) AFTER 1500 ps;
    Q4 <= NOT ( L4 OR L6 ) AFTER 1500 ps;
    Q5 <= NOT ( L4 OR L9 ) AFTER 1500 ps;
    Q6 <= NOT ( L4 OR L7 ) AFTER 1500 ps;
    Q7 <= NOT ( L4 OR L8 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10163 IS PORT(
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
B5 : IN  std_logic;
B6 : IN  std_logic;
B7 : IN  std_logic;
P0A : OUT  std_logic;
P0B : OUT  std_logic;
P1 : OUT  std_logic;
P2 : OUT  std_logic;
P3 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10163;

ARCHITECTURE model OF MC10163 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;

    BEGIN
    L1 <=  ( B1 XOR B2 );
    L2 <=  ( B4 XOR B7 );
    L3 <=  ( B5 XOR B6 );
    L4 <=  ( B0 XOR B3 );
    L5 <=  ( B5 XOR B1 );
    L6 <=  ( B3 XOR B7 );
    L7 <=  ( B6 XOR B2 );
    P0A <=  ( L1 XOR L2 ) AFTER 1500 ps;
    P3 <=  ( L2 XOR L3 ) AFTER 1500 ps;
    P0B <=  ( L3 XOR L4 ) AFTER 1500 ps;
    P1 <=  ( L5 XOR L6 ) AFTER 1500 ps;
    P2 <=  ( L6 XOR L7 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10164 IS PORT(
X0 : IN  std_logic;
X1 : IN  std_logic;
X2 : IN  std_logic;
X3 : IN  std_logic;
X4 : IN  std_logic;
X5 : IN  std_logic;
X6 : IN  std_logic;
X7 : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
EN : IN  std_logic;
Z : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10164;

ARCHITECTURE model OF MC10164 IS
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
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 1600 ps;
    N3 <= NOT ( B ) AFTER 1600 ps;
    N5 <= NOT ( C ) AFTER 1600 ps;
    N2 <=  ( A ) AFTER 1600 ps;
    N4 <=  ( B ) AFTER 1600 ps;
    N6 <=  ( C ) AFTER 1600 ps;
    L1 <= NOT ( N2 OR N4 OR N6 OR X0 );
    L2 <= NOT ( N1 OR N4 OR N6 OR X1 );
    L3 <= NOT ( N2 OR N3 OR N6 OR X2 );
    L4 <= NOT ( N1 OR N3 OR N6 OR X3 );
    L5 <= NOT ( N2 OR N4 OR N5 OR X4 );
    L6 <= NOT ( N1 OR N4 OR N5 OR X5 );
    L7 <= NOT ( N2 OR N3 OR N5 OR X6 );
    L8 <= NOT ( N1 OR N3 OR N5 OR X7 );
    N7 <=  ( L1 OR L2 OR L3 OR L4 OR L5 OR L6 OR L7 OR L8 ) AFTER 1400 ps;
    Z <= NOT ( EN OR N7 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10165 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
CLK : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10165;

ARCHITECTURE model OF MC10165 IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( D0 );
    L2 <= NOT ( D1 );
    L3 <= NOT ( D2 );
    L4 <= NOT ( D3 );
    L5 <= NOT ( D4 );
    L6 <= NOT ( D5 );
    L7 <= NOT ( D6 );
    L8 <=  ( D2 OR D3 );
    L9 <=  ( D4 OR D5 OR D6 OR D7 );
    L10 <=  ( D6 OR D7 );
    L11 <=  ( L1 AND D1 );
    L12 <=  ( L1 AND L3 AND D3 );
    L13 <=  ( L1 AND L3 AND L5 AND D5 );
    L14 <=  ( L1 AND L3 AND L5 AND L7 AND D7 );
    L15 <=  ( L1 AND L2 AND L8 );
    L16 <=  ( L1 AND L2 AND L5 AND L6 AND L10 );
    L17 <=  ( L11 OR L12 OR L13 OR L14 );
    L18 <=  ( L15 OR L16 );
    L19 <=  ( L1 AND L2 AND L3 AND L9 AND L4 );
    L20 <=  ( D0 OR D1 OR D2 OR D3 OR D4 OR D5 OR D6 OR D7 );
    L21 <= NOT ( CLK );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N1 , d=>L17 , enable=>L21 );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N2 , d=>L18 , enable=>L21 );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N3 , d=>L19 , enable=>L21 );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N4 , d=>L20 , enable=>L21 );
    Q0 <=  ( N1 ) AFTER 3000 ps;
    Q1 <=  ( N2 ) AFTER 3000 ps;
    Q2 <=  ( N3 ) AFTER 3000 ps;
    Q3 <=  ( N4 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10166 IS PORT(
A0 : IN  std_logic;
B0 : IN  std_logic;
A1 : IN  std_logic;
B1 : IN  std_logic;
A2 : IN  std_logic;
B2 : IN  std_logic;
A3 : IN  std_logic;
B3 : IN  std_logic;
A4 : IN  std_logic;
B4 : IN  std_logic;
\E\\N\\\ : IN  std_logic;
\A>B\ : OUT  std_logic;
\A<B\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10166;

ARCHITECTURE model OF MC10166 IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    L1 <= NOT ( B4 );
    L2 <= NOT ( B3 );
    L3 <= NOT ( B2 );
    L4 <= NOT ( B1 );
    L5 <= NOT ( B0 );
    L6 <=  ( A4 OR L1 );
    L7 <=  ( A4 XOR B4 );
    L8 <=  ( A3 OR L2 );
    L9 <=  ( A3 XOR B3 );
    L10 <=  ( A2 OR L3 );
    L11 <=  ( A2 XOR B2 );
    L12 <=  ( A1 OR L4 );
    L13 <=  ( A1 XOR B1 );
    L14 <=  ( A0 OR L5 );
    L15 <=  ( A0 XOR B0 );
    N1 <= NOT ( L7 OR L9 OR L11 OR L13 OR L15 ) AFTER 0 ps;
    L16 <= NOT ( L6 );
    L17 <= NOT ( L8 OR L7 );
    L18 <= NOT ( L10 OR L7 OR L9 );
    L19 <= NOT ( L12 OR L7 OR L9 OR L11 );
    L20 <= NOT ( L7 OR L13 OR L11 OR L9 OR L14 );
    L21 <= NOT ( \E\\N\\\ );
    N2 <=  ( L16 OR L17 OR L18 OR L19 OR L20 ) AFTER 0 ps;
    \A>B\ <= NOT ( N1 OR \E\\N\\\ OR N2 ) AFTER 1100 ps;
    \A<B\ <=  ( L21 AND N2 ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10168 IS PORT(
D0 : IN  std_logic;
G0 : IN  std_logic;
D1 : IN  std_logic;
G1 : IN  std_logic;
D2 : IN  std_logic;
G2 : IN  std_logic;
D3 : IN  std_logic;
G3 : IN  std_logic;
CLK : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10168;

ARCHITECTURE model OF MC10168 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>CLK );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>CLK );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>CLK );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>CLK );
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    Q0 <= NOT ( L1 OR G0 ) AFTER 3000 ps;
    Q1 <= NOT ( L2 OR G1 ) AFTER 3000 ps;
    Q2 <= NOT ( L3 OR G2 ) AFTER 3000 ps;
    Q3 <= NOT ( L4 OR G3 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10170 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
HI : IN  std_logic;
LO : IN  std_logic;
ODD : OUT  std_logic;
EVEN : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10170;

ARCHITECTURE model OF MC10170 IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <=  ( D0 XOR D1 XOR D2 XOR D3 XOR D4 XOR D5 XOR D6 XOR D7 XOR D8 );
    N1 <=  ( L1 ) AFTER 53 ps;
    EVEN <=  ( HI XOR LO XOR N1 ) AFTER 2000 ps;
    ODD <=  ( L1 ) AFTER 4000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10171 IS PORT(
A : IN  std_logic;
B : IN  std_logic;
E0 : IN  std_logic;
E1 : IN  std_logic;
E : IN  std_logic;
Q00 : OUT  std_logic;
Q01 : OUT  std_logic;
Q02 : OUT  std_logic;
Q03 : OUT  std_logic;
Q10 : OUT  std_logic;
Q11 : OUT  std_logic;
Q12 : OUT  std_logic;
Q13 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10171;

ARCHITECTURE model OF MC10171 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <=  ( E0 OR E );
    L4 <=  ( L1 OR L2 );
    L5 <=  ( L1 OR B );
    L6 <=  ( A OR L2 );
    L7 <=  ( A OR B );
    L8 <=  ( E OR E1 );
    Q03 <=  ( L3 OR L4 ) AFTER 1500 ps;
    Q02 <=  ( L3 OR L5 ) AFTER 1500 ps;
    Q01 <=  ( L3 OR L6 ) AFTER 1500 ps;
    Q00 <=  ( L3 OR L7 ) AFTER 1500 ps;
    Q13 <=  ( L8 OR L4 ) AFTER 1500 ps;
    Q12 <=  ( L8 OR L5 ) AFTER 1500 ps;
    Q11 <=  ( L8 OR L6 ) AFTER 1500 ps;
    Q10 <=  ( L8 OR L7 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10172 IS PORT(
A : IN  std_logic;
B : IN  std_logic;
E0 : IN  std_logic;
E1 : IN  std_logic;
E : IN  std_logic;
Q00 : OUT  std_logic;
Q01 : OUT  std_logic;
Q02 : OUT  std_logic;
Q03 : OUT  std_logic;
Q10 : OUT  std_logic;
Q11 : OUT  std_logic;
Q12 : OUT  std_logic;
Q13 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10172;

ARCHITECTURE model OF MC10172 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <=  ( E0 OR E );
    L4 <=  ( L1 OR L2 );
    L5 <=  ( L1 OR B );
    L6 <=  ( A OR L2 );
    L7 <=  ( A OR B );
    L8 <=  ( E OR E1 );
    Q03 <= NOT ( L3 OR L4 ) AFTER 1500 ps;
    Q02 <= NOT ( L3 OR L5 ) AFTER 1500 ps;
    Q01 <= NOT ( L3 OR L6 ) AFTER 1500 ps;
    Q00 <= NOT ( L3 OR L7 ) AFTER 1500 ps;
    Q13 <= NOT ( L8 OR L4 ) AFTER 1500 ps;
    Q12 <= NOT ( L8 OR L5 ) AFTER 1500 ps;
    Q11 <= NOT ( L8 OR L6 ) AFTER 1500 ps;
    Q10 <= NOT ( L8 OR L7 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10173 IS PORT(
D00 : IN  std_logic;
D01 : IN  std_logic;
D10 : IN  std_logic;
D11 : IN  std_logic;
D20 : IN  std_logic;
D21 : IN  std_logic;
D30 : IN  std_logic;
D31 : IN  std_logic;
CLK : IN  std_logic;
SEL : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VCC1 : IN  std_logic;
VEE : IN  std_logic);
END MC10173;

ARCHITECTURE model OF MC10173 IS
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

    BEGIN
    N1 <= NOT ( SEL ) AFTER 2500 ps;
    L1 <= NOT ( N1 );
    L2 <=  ( D00 AND L1 );
    L3 <=  ( D01 AND N1 );
    L4 <=  ( D10 AND L1 );
    L5 <=  ( D11 AND N1 );
    L6 <=  ( D20 AND L1 );
    L7 <=  ( D21 AND N1 );
    L8 <=  ( D30 AND L1 );
    L9 <=  ( D31 AND N1 );
    L10 <=  ( L2 OR L3 );
    L11 <=  ( L4 OR L5 );
    L12 <=  ( L6 OR L7 );
    L13 <=  ( L8 OR L9 );
    L14 <= NOT ( CLK );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>L10 , enable=>L14 );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L11 , enable=>L14 );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L12 , enable=>L14 );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>L13 , enable=>L14 );
    Q0 <=  ( N2 ) AFTER 1000 ps;
    Q1 <=  ( N3 ) AFTER 1000 ps;
    Q2 <=  ( N4 ) AFTER 1000 ps;
    Q3 <=  ( N5 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10174 IS PORT(
X0 : IN  std_logic;
X1 : IN  std_logic;
X2 : IN  std_logic;
X3 : IN  std_logic;
Y0 : IN  std_logic;
Y1 : IN  std_logic;
Y2 : IN  std_logic;
Y3 : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
EN : IN  std_logic;
Z : OUT  std_logic;
W : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10174;

ARCHITECTURE model OF MC10174 IS
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
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 1500 ps;
    N2 <= NOT ( B ) AFTER 1500 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    N3 <= NOT ( X0 OR L2 OR L1 ) AFTER 1000 ps;
    N4 <= NOT ( X1 OR L2 OR N1 ) AFTER 1000 ps;
    N5 <= NOT ( X2 OR N2 OR L1 ) AFTER 1000 ps;
    N6 <= NOT ( X3 OR N2 OR N1 ) AFTER 1000 ps;
    N7 <= NOT ( L1 OR L2 OR Y0 ) AFTER 1000 ps;
    N8 <= NOT ( N1 OR L2 OR Y1 ) AFTER 1000 ps;
    N9 <= NOT ( L1 OR N2 OR Y2 ) AFTER 1000 ps;
    N10 <= NOT ( N1 OR N2 OR Y3 ) AFTER 1000 ps;
    Z <= NOT ( N3 OR N4 OR N5 OR N6 OR EN ) AFTER 1500 ps;
    W <= NOT ( N7 OR N8 OR N9 OR N10 OR EN ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10175 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
CLK0 : IN  std_logic;
CLK1 : IN  std_logic;
RESET : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10175;

ARCHITECTURE model OF MC10175 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( CLK0 OR CLK1 );
    L2 <= NOT ( RESET );
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>L1 , pr=>ONE , cl=>L2 );
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>L1 , pr=>ONE , cl=>L2 );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>L1 , pr=>ONE , cl=>L2 );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>L1 , pr=>ONE , cl=>L2 );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>L1 , pr=>ONE , cl=>L2 );
    Q0 <=  ( N1 ) AFTER 1000 ps;
    Q1 <=  ( N2 ) AFTER 1000 ps;
    Q2 <=  ( N3 ) AFTER 1000 ps;
    Q3 <=  ( N4 ) AFTER 1000 ps;
    Q4 <=  ( N5 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10176 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
CLK : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10176;

ARCHITECTURE model OF MC10176 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    Q0 <=  ( N1 ) AFTER 1600 ps;
    Q1 <=  ( N2 ) AFTER 1600 ps;
    Q2 <=  ( N3 ) AFTER 1600 ps;
    Q3 <=  ( N4 ) AFTER 1600 ps;
    Q4 <=  ( N5 ) AFTER 1600 ps;
    Q5 <=  ( N6 ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10181 IS PORT(
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
\CN+4\ : OUT  std_logic;
G : OUT  std_logic;
P : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10181;

ARCHITECTURE model OF MC10181 IS
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
    N1 <=  ( S3 ) AFTER 800 ps;
    N2 <=  ( S2 ) AFTER 800 ps;
    N3 <=  ( S1 ) AFTER 800 ps;
    N4 <=  ( S0 ) AFTER 800 ps;
    N5 <=  ( B0 ) AFTER 700 ps;
    N6 <=  ( B1 ) AFTER 700 ps;
    N7 <=  ( B2 ) AFTER 700 ps;
    N8 <=  ( B3 ) AFTER 700 ps;
    N9 <=  ( A0 ) AFTER 500 ps;
    N10 <=  ( A1 ) AFTER 500 ps;
    N11 <=  ( A2 ) AFTER 500 ps;
    N12 <=  ( A3 ) AFTER 500 ps;
    N13 <=  ( M ) AFTER 800 ps;
    L58 <= NOT ( N5 );
    L59 <= NOT ( N6 );
    L60 <= NOT ( N7 );
    L61 <= NOT ( N8 );
    L1 <= NOT ( N1 OR N5 OR N9 );
    L2 <= NOT ( N2 OR N9 OR L58 );
    L3 <= NOT ( L58 OR N3 );
    L4 <= NOT ( N4 OR N5 );
    L5 <= NOT ( N9 );
    L6 <= NOT ( N1 OR N6 OR N10 );
    L7 <= NOT ( N2 OR N10 OR L59 );
    L8 <= NOT ( L59 OR N3 );
    L9 <= NOT ( N4 OR N6 );
    L10 <= NOT ( N10 );
    L11 <= NOT ( N1 OR N7 OR N11 );
    L12 <= NOT ( N2 OR N11 OR L60 );
    L13 <= NOT ( L60 OR N3 );
    L14 <= NOT ( N4 OR N7 );
    L15 <= NOT ( N11 );
    L16 <= NOT ( N1 OR N8 OR N12 );
    L17 <= NOT ( N2 OR N12 OR L61 );
    L18 <= NOT ( L61 OR N3 );
    L19 <= NOT ( N4 OR N8 );
    L20 <= NOT ( N12 );
    L21 <= NOT ( L1 OR L2 );
    L22 <= NOT ( L3 OR L4 OR L5 );
    L23 <= NOT ( L6 OR L7 );
    L24 <= NOT ( L8 OR L9 OR L10 );
    L25 <= NOT ( L11 OR L12 );
    L26 <= NOT ( L13 OR L14 OR L15 );
    L27 <= NOT ( L16 OR L17 );
    L28 <= NOT ( L18 OR L19 OR L20 );
    L29 <=  ( L21 XOR L22 );
    L30 <=  ( L23 XOR L24 );
    L31 <=  ( L25 XOR L26 );
    L32 <=  ( L27 XOR L28 );
    L33 <= NOT ( N13 OR CN );
    L34 <= NOT ( N13 OR L21 );
    L35 <= NOT ( N13 OR L22 OR CN );
    L36 <= NOT ( N13 OR L23 );
    L37 <= NOT ( N13 OR L24 OR L21 );
    L38 <= NOT ( N13 OR L22 OR L24 OR CN );
    L39 <= NOT ( N13 OR L25 );
    L40 <= NOT ( N13 OR L26 OR L23 );
    L41 <= NOT ( N13 OR L26 OR L24 OR L21 );
    L42 <= NOT ( N13 OR L26 OR L24 OR L22 OR CN );
    L43 <=  ( L22 OR L24 OR L26 OR L28 );
    L44 <= NOT ( L27 );
    L45 <= NOT ( L25 OR L28 );
    L46 <= NOT ( L23 OR L26 OR L28 );
    L47 <= NOT ( L21 OR L24 OR L26 OR L28 );
    L48 <= NOT ( CN OR L22 OR L24 OR L26 OR L28 );
    L49 <=  ( L34 OR L35 );
    L50 <=  ( L36 OR L37 OR L38 );
    L51 <=  ( L39 OR L40 OR L41 OR L42 );
    L52 <=  ( L44 OR L45 OR L46 OR L47 );
    L53 <= NOT ( L33 XOR L29 );
    L54 <= NOT ( L49 XOR L30 );
    L55 <= NOT ( L50 XOR L31 );
    L56 <= NOT ( L51 XOR L32 );
    L57 <= NOT ( L52 OR L48 );
    F0 <=  ( L53 ) AFTER 700 ps;
    F1 <=  ( L54 ) AFTER 700 ps;
    F2 <=  ( L55 ) AFTER 700 ps;
    F3 <=  ( L56 ) AFTER 700 ps;
    P <=  ( L43 ) AFTER 300 ps;
    G <= NOT ( L52 ) AFTER 800 ps;
    \CN+4\ <=  ( L57 ) AFTER 300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10186 IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
CLK : IN  std_logic;
RST : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
VCC1 : IN  std_logic;
VEE : IN  std_logic);
END MC10186;

ARCHITECTURE model OF MC10186 IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( RST );
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK , cl=>L1 );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK , cl=>L1 );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK , cl=>L1 );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK , cl=>L1 );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK , cl=>L1 );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK , cl=>L1 );
    Q0 <=  ( N1 ) AFTER 1600 ps;
    Q1 <=  ( N2 ) AFTER 1600 ps;
    Q2 <=  ( N3 ) AFTER 1600 ps;
    Q3 <=  ( N4 ) AFTER 1600 ps;
    Q4 <=  ( N5 ) AFTER 1600 ps;
    Q5 <=  ( N6 ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10188 IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
EN : IN  std_logic;
B0 : OUT  std_logic;
B1 : OUT  std_logic;
B2 : OUT  std_logic;
B3 : OUT  std_logic;
B4 : OUT  std_logic;
B5 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10188;

ARCHITECTURE model OF MC10188 IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( EN ) AFTER 6 ps;
    B0 <=  ( N1 AND A0 ) AFTER 2900 ps;
    B1 <=  ( N1 AND A1 ) AFTER 2900 ps;
    B2 <=  ( N1 AND A2 ) AFTER 2900 ps;
    B3 <=  ( N1 AND A3 ) AFTER 2900 ps;
    B4 <=  ( N1 AND A4 ) AFTER 2900 ps;
    B5 <=  ( N1 AND A5 ) AFTER 2900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10189 IS PORT(
A0 : IN  std_logic;
B0 : OUT  std_logic;
A1 : IN  std_logic;
B1 : OUT  std_logic;
A2 : IN  std_logic;
B2 : OUT  std_logic;
A3 : IN  std_logic;
B3 : OUT  std_logic;
A4 : IN  std_logic;
B4 : OUT  std_logic;
A5 : IN  std_logic;
B5 : OUT  std_logic;
EN : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10189;

ARCHITECTURE model OF MC10189 IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( EN ) AFTER 6 ps;
    B0 <= NOT ( N1 OR A0 ) AFTER 2900 ps;
    B1 <= NOT ( N1 OR A1 ) AFTER 2900 ps;
    B2 <= NOT ( N1 OR A2 ) AFTER 2900 ps;
    B3 <= NOT ( N1 OR A3 ) AFTER 2900 ps;
    B4 <= NOT ( N1 OR A4 ) AFTER 2900 ps;
    B5 <= NOT ( N1 OR A5 ) AFTER 2900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10191 IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
EN : IN  std_logic;
O0 : OUT  std_logic;
O1 : OUT  std_logic;
O2 : OUT  std_logic;
O3 : OUT  std_logic;
O4 : OUT  std_logic;
O5 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10191;

ARCHITECTURE model OF MC10191 IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( EN ) AFTER 11 ps;
    O0 <=  ( N1 AND I0 ) AFTER 1400 ps;
    O1 <=  ( N1 AND I1 ) AFTER 1400 ps;
    O2 <=  ( N1 AND I2 ) AFTER 1400 ps;
    O5 <=  ( N1 AND I5 ) AFTER 1400 ps;
    O4 <=  ( N1 AND I4 ) AFTER 1400 ps;
    O3 <=  ( N1 AND I3 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10193 IS PORT(
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
B5 : IN  std_logic;
B6 : IN  std_logic;
B7 : IN  std_logic;
P1 : OUT  std_logic;
P2 : OUT  std_logic;
P3 : OUT  std_logic;
P4 : OUT  std_logic;
P5 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10193;

ARCHITECTURE model OF MC10193 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    L1 <=  ( B1 XOR B2 );
    L2 <=  ( B4 XOR B7 );
    L3 <=  ( B5 XOR B6 );
    L4 <=  ( B0 XOR B3 );
    L5 <=  ( B5 XOR B1 );
    L6 <=  ( B3 XOR B7 );
    L7 <=  ( B6 XOR B2 );
    N1 <=  ( L3 XOR L4 ) AFTER 1500 ps;
    N2 <=  ( L1 XOR L2 ) AFTER 1500 ps;
    P4 <=  N2;
    P3 <=  ( L2 XOR L3 ) AFTER 1500 ps;
    P1 <=  ( L5 XOR L6 ) AFTER 1500 ps;
    P2 <=  ( L6 XOR L7 ) AFTER 1500 ps;
    P5 <=  ( N2 XOR N1 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10195 IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
B : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10195;

ARCHITECTURE model OF MC10195 IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( B ) AFTER 10 ps;
    Q0 <=  ( N1 XOR A2 ) AFTER 1100 ps;
    Q1 <=  ( N1 XOR A1 ) AFTER 1100 ps;
    Q2 <=  ( N1 XOR A0 ) AFTER 1100 ps;
    Q5 <=  ( N1 XOR A3 ) AFTER 1100 ps;
    Q4 <=  ( N1 XOR A4 ) AFTER 1100 ps;
    Q3 <=  ( N1 XOR A5 ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10197 IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
B : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10197;

ARCHITECTURE model OF MC10197 IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( B ) AFTER 0 ps;
    Q0 <=  ( N1 AND A0 ) AFTER 1100 ps;
    Q1 <=  ( N1 AND A1 ) AFTER 1100 ps;
    Q2 <=  ( N1 AND A2 ) AFTER 1100 ps;
    Q3 <=  ( N1 AND A3 ) AFTER 1100 ps;
    Q4 <=  ( N1 AND A4 ) AFTER 1100 ps;
    Q5 <=  ( N1 AND A5 ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10210 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
O0_A : OUT  std_logic;
O0_B : OUT  std_logic;
O1_A : OUT  std_logic;
O1_B : OUT  std_logic;
O2_A : OUT  std_logic;
O2_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10210;

ARCHITECTURE model OF MC10210 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I2_A );
    L2 <=  ( I0_B OR I1_B OR I2_B );
    O0_A <=  ( L1 ) AFTER 1000 ps;
    O1_A <=  ( L1 ) AFTER 1000 ps;
    O2_A <=  ( L1 ) AFTER 1000 ps;
    O0_B <=  ( L2 ) AFTER 1000 ps;
    O1_B <=  ( L2 ) AFTER 1000 ps;
    O2_B <=  ( L2 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10211 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
O0_A : OUT  std_logic;
O0_B : OUT  std_logic;
O1_A : OUT  std_logic;
O1_B : OUT  std_logic;
O2_A : OUT  std_logic;
O2_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10211;

ARCHITECTURE model OF MC10211 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I2_A );
    L2 <=  ( I0_B OR I1_B OR I2_B );
    O0_A <= NOT ( L1 ) AFTER 1000 ps;
    O1_A <= NOT ( L1 ) AFTER 1000 ps;
    O2_A <= NOT ( L1 ) AFTER 1000 ps;
    O0_B <= NOT ( L2 ) AFTER 1000 ps;
    O1_B <= NOT ( L2 ) AFTER 1000 ps;
    O2_B <= NOT ( L2 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY MC10212 IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I2_A : IN  std_logic;
I2_B : IN  std_logic;
O0_A : OUT  std_logic;
O0_B : OUT  std_logic;
O1_A : OUT  std_logic;
O1_B : OUT  std_logic;
O2_A : OUT  std_logic;
O2_B : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END MC10212;

ARCHITECTURE model OF MC10212 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( I0_A OR I1_A OR I2_A );
    L2 <=  ( I0_B OR I1_B OR I2_B );
    O2_A <= NOT ( L1 ) AFTER 1000 ps;
    O0_A <= NOT ( L1 ) AFTER 1000 ps;
    O1_A <=  ( L1 ) AFTER 1000 ps;
    O0_B <= NOT ( L2 ) AFTER 1000 ps;
    O2_B <= NOT ( L2 ) AFTER 1000 ps;
    O1_B <=  ( L2 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100101 IS PORT(
DA_A : IN  std_logic;
DA_B : IN  std_logic;
DA_C : IN  std_logic;
DB_A : IN  std_logic;
DB_B : IN  std_logic;
DB_C : IN  std_logic;
DC_A : IN  std_logic;
DC_B : IN  std_logic;
DC_C : IN  std_logic;
DD_A : IN  std_logic;
DD_B : IN  std_logic;
DD_C : IN  std_logic;
DE_A : IN  std_logic;
DE_B : IN  std_logic;
DE_C : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
\O\\_A\ : OUT  std_logic;
\O\\_B\ : OUT  std_logic;
\O\\_C\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100101;

ARCHITECTURE model OF F100101 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;

    BEGIN
    L1 <=  ( DA_A OR DB_A OR DC_A OR DD_A OR DE_A );
    L2 <=  ( DA_B OR DB_B OR DC_B OR DD_B OR DE_B );
    L3 <=  ( DC_C OR DD_C OR DE_C OR DA_C OR DB_C );
    O_A <=  ( L1 ) AFTER 1200 ps;
    O_B <=  ( L2 ) AFTER 1200 ps;
    O_C <=  ( L3 ) AFTER 1200 ps;
    \O\\_A\ <= NOT ( L1 ) AFTER 1200 ps;
    \O\\_B\ <= NOT ( L2 ) AFTER 1200 ps;
    \O\\_C\ <= NOT ( L3 ) AFTER 1200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100102 IS PORT(
E : IN  std_logic;
D1A : IN  std_logic;
D2A : IN  std_logic;
D1B : IN  std_logic;
D2B : IN  std_logic;
D1C : IN  std_logic;
D2C : IN  std_logic;
D1D : IN  std_logic;
D2D : IN  std_logic;
D1E : IN  std_logic;
D2E : IN  std_logic;
OA : OUT  std_logic;
\O\\A\\\ : OUT  std_logic;
OB : OUT  std_logic;
\O\\B\\\ : OUT  std_logic;
OC : OUT  std_logic;
\O\\C\\\ : OUT  std_logic;
OD : OUT  std_logic;
\O\\D\\\ : OUT  std_logic;
OE : OUT  std_logic;
\O\\E\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100102;

ARCHITECTURE model OF F100102 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( E ) AFTER 800 ps;
    L1 <=  ( N1 OR D1A OR D2A );
    L2 <=  ( N1 OR D1B OR D2B );
    L3 <=  ( N1 OR D1C OR D2C );
    L4 <=  ( N1 OR D1D OR D2D );
    L5 <=  ( N1 OR D2E OR D1E );
    OA <=  ( L1 ) AFTER 1400 ps;
    OB <=  ( L2 ) AFTER 1400 ps;
    OC <=  ( L3 ) AFTER 1400 ps;
    OD <=  ( L4 ) AFTER 1400 ps;
    OE <=  ( L5 ) AFTER 1400 ps;
    \O\\A\\\ <= NOT ( L1 ) AFTER 1400 ps;
    \O\\B\\\ <= NOT ( L2 ) AFTER 1400 ps;
    \O\\C\\\ <= NOT ( L3 ) AFTER 1400 ps;
    \O\\D\\\ <= NOT ( L4 ) AFTER 1400 ps;
    \O\\E\\\ <= NOT ( L5 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100104 IS PORT(
\O\\A\\\ : OUT  std_logic;
\O\\B\\\ : OUT  std_logic;
F : OUT  std_logic;
\O\\C\\\ : OUT  std_logic;
\O\\D\\\ : OUT  std_logic;
D1A : IN  std_logic;
\O\\E\\\ : OUT  std_logic;
D2A : IN  std_logic;
D1B : IN  std_logic;
D2B : IN  std_logic;
D1C : IN  std_logic;
D2C : IN  std_logic;
D1D : IN  std_logic;
D2D : IN  std_logic;
D1E : IN  std_logic;
D2E : IN  std_logic;
OA : OUT  std_logic;
OB : OUT  std_logic;
OC : OUT  std_logic;
OD : OUT  std_logic;
OE : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100104;

ARCHITECTURE model OF F100104 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;

    BEGIN
    L1 <=  ( D1A AND D2A );
    L2 <=  ( D1B AND D2B );
    L3 <=  ( D1C AND D2C );
    L4 <=  ( D2D AND D1D );
    L5 <=  ( D1E AND D2E );
    OA <=  ( L1 ) AFTER 1800 ps;
    OB <=  ( L2 ) AFTER 1800 ps;
    OC <=  ( L3 ) AFTER 1800 ps;
    OD <=  ( L4 ) AFTER 1800 ps;
    OE <=  ( L5 ) AFTER 1800 ps;
    \O\\A\\\ <= NOT ( L1 ) AFTER 1800 ps;
    \O\\B\\\ <= NOT ( L2 ) AFTER 1800 ps;
    \O\\C\\\ <= NOT ( L3 ) AFTER 1800 ps;
    \O\\D\\\ <= NOT ( L4 ) AFTER 1800 ps;
    \O\\E\\\ <= NOT ( L5 ) AFTER 1800 ps;
    F <= NOT ( L1 OR L2 OR L3 OR L4 OR L5 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100107 IS PORT(
D1A : IN  std_logic;
D2A : IN  std_logic;
D1B : IN  std_logic;
D2B : IN  std_logic;
D1C : IN  std_logic;
D2C : IN  std_logic;
D1D : IN  std_logic;
D2D : IN  std_logic;
D1E : IN  std_logic;
D2E : IN  std_logic;
E : OUT  std_logic;
OA : OUT  std_logic;
\O\\A\\\ : OUT  std_logic;
OB : OUT  std_logic;
\O\\B\\\ : OUT  std_logic;
OC : OUT  std_logic;
\O\\C\\\ : OUT  std_logic;
OD : OUT  std_logic;
\O\\D\\\ : OUT  std_logic;
OE : OUT  std_logic;
\O\\E\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100107;

ARCHITECTURE model OF F100107 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    L1 <=  ( D1A XOR D2A );
    L2 <=  ( D1B XOR D2B );
    L3 <=  ( D1C XOR D2C );
    L4 <=  ( D2D XOR D1D );
    L5 <=  ( D1E XOR D2E );
    N1 <=  ( D2A ) AFTER 200 ps;
    N2 <=  ( D2B ) AFTER 200 ps;
    N3 <=  ( D2C ) AFTER 200 ps;
    N4 <=  ( D2D ) AFTER 200 ps;
    N5 <=  ( D2E ) AFTER 200 ps;
    OA <=  ( N1 XOR D1A ) AFTER 1700 ps;
    OB <=  ( N2 XOR D1B ) AFTER 1700 ps;
    OC <=  ( N3 XOR D1C ) AFTER 1700 ps;
    OD <=  ( N4 XOR D1D ) AFTER 1700 ps;
    OE <=  ( N5 XOR D1E ) AFTER 1700 ps;
    \O\\A\\\ <= NOT ( N1 XOR D1A ) AFTER 1700 ps;
    \O\\B\\\ <= NOT ( N2 XOR D1B ) AFTER 1700 ps;
    \O\\C\\\ <= NOT ( N3 XOR D1C ) AFTER 1700 ps;
    \O\\D\\\ <= NOT ( N4 XOR D1D ) AFTER 1700 ps;
    \O\\E\\\ <= NOT ( N5 XOR D1E ) AFTER 1700 ps;
    E <=  ( L1 OR L2 OR L3 OR L4 OR L5 ) AFTER 2800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100112 IS PORT(
E : IN  std_logic;
DA : IN  std_logic;
DB : IN  std_logic;
DC : IN  std_logic;
DD : IN  std_logic;
O1A : OUT  std_logic;
\O\\1\\A\\\ : OUT  std_logic;
O2A : OUT  std_logic;
\O\\2\\A\\\ : OUT  std_logic;
O1B : OUT  std_logic;
\O\\1\\B\\\ : OUT  std_logic;
O2B : OUT  std_logic;
\O\\2\\B\\\ : OUT  std_logic;
O1C : OUT  std_logic;
\O\\1\\C\\\ : OUT  std_logic;
O2C : OUT  std_logic;
\O\\2\\C\\\ : OUT  std_logic;
O1D : OUT  std_logic;
\O\\1\\D\\\ : OUT  std_logic;
O2D : OUT  std_logic;
\O\\2\\D\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100112;

ARCHITECTURE model OF F100112 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( E ) AFTER 500 ps;
    L1 <=  ( N1 OR DA );
    L2 <=  ( N1 OR DB );
    L3 <=  ( N1 OR DC );
    L4 <=  ( N1 OR DD );
    O1A <=  ( L1 ) AFTER 1500 ps;
    O2A <=  ( L1 ) AFTER 1500 ps;
    O1B <=  ( L2 ) AFTER 1500 ps;
    O2B <=  ( L2 ) AFTER 1500 ps;
    O1C <=  ( L3 ) AFTER 1500 ps;
    O2C <=  ( L3 ) AFTER 1500 ps;
    O1D <=  ( L4 ) AFTER 1500 ps;
    O2D <=  ( L4 ) AFTER 1500 ps;
    \O\\1\\A\\\ <= NOT ( L1 ) AFTER 1500 ps;
    \O\\2\\A\\\ <= NOT ( L1 ) AFTER 1500 ps;
    \O\\1\\B\\\ <= NOT ( L2 ) AFTER 1500 ps;
    \O\\2\\B\\\ <= NOT ( L2 ) AFTER 1500 ps;
    \O\\1\\C\\\ <= NOT ( L3 ) AFTER 1500 ps;
    \O\\2\\C\\\ <= NOT ( L3 ) AFTER 1500 ps;
    \O\\1\\D\\\ <= NOT ( L4 ) AFTER 1500 ps;
    \O\\2\\D\\\ <= NOT ( L4 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100113 IS PORT(
E : IN  std_logic;
DA : IN  std_logic;
DB : IN  std_logic;
DC : IN  std_logic;
DD : IN  std_logic;
O1A : OUT  std_logic;
\O\\1\\A\\\ : OUT  std_logic;
O2A : OUT  std_logic;
\O\\2\\A\\\ : OUT  std_logic;
O1B : OUT  std_logic;
\O\\1\\B\\\ : OUT  std_logic;
O2B : OUT  std_logic;
\O\\2\\B\\\ : OUT  std_logic;
O1C : OUT  std_logic;
\O\\1\\C\\\ : OUT  std_logic;
O2C : OUT  std_logic;
\O\\2\\C\\\ : OUT  std_logic;
O1D : OUT  std_logic;
\O\\1\\D\\\ : OUT  std_logic;
O2D : OUT  std_logic;
\O\\2\\D\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100113;

ARCHITECTURE model OF F100113 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( E ) AFTER 500 ps;
    L1 <=  ( N1 OR DA );
    L2 <=  ( N1 OR DB );
    L3 <=  ( N1 OR DC );
    L4 <=  ( N1 OR DD );
    O1A <=  ( L1 ) AFTER 1400 ps;
    O2A <=  ( L1 ) AFTER 1400 ps;
    O1B <=  ( L2 ) AFTER 1400 ps;
    O2B <=  ( L2 ) AFTER 1400 ps;
    O1C <=  ( L3 ) AFTER 1400 ps;
    O2C <=  ( L3 ) AFTER 1400 ps;
    O1D <=  ( L4 ) AFTER 1400 ps;
    O2D <=  ( L4 ) AFTER 1400 ps;
    \O\\1\\A\\\ <= NOT ( L1 ) AFTER 1400 ps;
    \O\\2\\A\\\ <= NOT ( L1 ) AFTER 1400 ps;
    \O\\1\\B\\\ <= NOT ( L2 ) AFTER 1400 ps;
    \O\\2\\B\\\ <= NOT ( L2 ) AFTER 1400 ps;
    \O\\1\\C\\\ <= NOT ( L3 ) AFTER 1400 ps;
    \O\\2\\C\\\ <= NOT ( L3 ) AFTER 1400 ps;
    \O\\1\\D\\\ <= NOT ( L4 ) AFTER 1400 ps;
    \O\\2\\D\\\ <= NOT ( L4 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100117 IS PORT(
EA : IN  std_logic;
D1A : IN  std_logic;
D2A : IN  std_logic;
D3A : IN  std_logic;
D4A : IN  std_logic;
EB : IN  std_logic;
D1B : IN  std_logic;
D2B : IN  std_logic;
D3B : IN  std_logic;
D4B : IN  std_logic;
EC : IN  std_logic;
D1C : IN  std_logic;
D2C : IN  std_logic;
D3C : IN  std_logic;
D4C : IN  std_logic;
OA : OUT  std_logic;
\O\\A\\\ : OUT  std_logic;
OB : OUT  std_logic;
\O\\B\\\ : OUT  std_logic;
OC : OUT  std_logic;
\O\\C\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100117;

ARCHITECTURE model OF F100117 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( D1A OR D2A ) AFTER 1200 ps;
    N2 <=  ( D3A OR D4A ) AFTER 1200 ps;
    N3 <=  ( D1B OR D2B ) AFTER 1200 ps;
    N4 <=  ( D3B OR D4B ) AFTER 1200 ps;
    N5 <=  ( D2C OR D1C ) AFTER 1200 ps;
    N6 <=  ( D3C OR D4C ) AFTER 1200 ps;
    L1 <=  ( N1 AND N2 AND EA );
    L2 <=  ( N3 AND N4 AND EB );
    L3 <=  ( N5 AND N6 AND EC );
    OA <=  ( L1 ) AFTER 1400 ps;
    OB <=  ( L2 ) AFTER 1400 ps;
    OC <=  ( L3 ) AFTER 1400 ps;
    \O\\A\\\ <= NOT ( L1 ) AFTER 1400 ps;
    \O\\B\\\ <= NOT ( L2 ) AFTER 1400 ps;
    \O\\C\\\ <= NOT ( L3 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100118 IS PORT(
D1A : IN  std_logic;
D2A : IN  std_logic;
D3A : IN  std_logic;
D4A : IN  std_logic;
D5A : IN  std_logic;
D1B : IN  std_logic;
D2B : IN  std_logic;
D3B : IN  std_logic;
D4B : IN  std_logic;
D1C : IN  std_logic;
D2C : IN  std_logic;
D3C : IN  std_logic;
D4C : IN  std_logic;
D1D : IN  std_logic;
D2D : IN  std_logic;
D3D : IN  std_logic;
D4D : IN  std_logic;
D3E : IN  std_logic;
D4E : IN  std_logic;
O : OUT  std_logic;
\O\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100118;

ARCHITECTURE model OF F100118 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <=  ( D1A OR D2A OR D3A OR D4A OR D5A );
    L2 <=  ( D1B OR D2B OR D3B OR D4B );
    L3 <=  ( D1C OR D2C OR D3C OR D4C );
    L4 <=  ( D2D OR D3D OR D4D OR D1D );
    L5 <=  ( D3E OR D4E );
    L6 <=  ( L1 AND L2 AND L3 AND L4 AND L5 );
    O <=  ( L6 ) AFTER 2500 ps;
    \O\\\ <= NOT ( L6 ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100121 IS PORT(
O1 : OUT  std_logic;
D1 : IN  std_logic;
O2 : OUT  std_logic;
D2 : IN  std_logic;
O3 : OUT  std_logic;
D3 : IN  std_logic;
O4 : OUT  std_logic;
D4 : IN  std_logic;
O5 : OUT  std_logic;
D5 : IN  std_logic;
O6 : OUT  std_logic;
D6 : IN  std_logic;
O7 : OUT  std_logic;
D7 : IN  std_logic;
O8 : OUT  std_logic;
D8 : IN  std_logic;
O9 : OUT  std_logic;
D9 : IN  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100121;

ARCHITECTURE model OF F100121 IS

    BEGIN
    O1 <= NOT ( D1 ) AFTER 1600 ps;
    O2 <= NOT ( D2 ) AFTER 1600 ps;
    O3 <= NOT ( D3 ) AFTER 1600 ps;
    O4 <= NOT ( D4 ) AFTER 1600 ps;
    O5 <= NOT ( D5 ) AFTER 1600 ps;
    O6 <= NOT ( D6 ) AFTER 1600 ps;
    O7 <= NOT ( D7 ) AFTER 1600 ps;
    O8 <= NOT ( D8 ) AFTER 1600 ps;
    O9 <= NOT ( D9 ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100122 IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
O1 : OUT  std_logic;
O2 : OUT  std_logic;
O3 : OUT  std_logic;
O4 : OUT  std_logic;
O5 : OUT  std_logic;
O6 : OUT  std_logic;
O7 : OUT  std_logic;
O8 : OUT  std_logic;
O9 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100122;

ARCHITECTURE model OF F100122 IS

    BEGIN
    O1 <=  ( D1 ) AFTER 1600 ps;
    O2 <=  ( D2 ) AFTER 1600 ps;
    O3 <=  ( D3 ) AFTER 1600 ps;
    O4 <=  ( D4 ) AFTER 1600 ps;
    O5 <=  ( D5 ) AFTER 1600 ps;
    O6 <=  ( D6 ) AFTER 1600 ps;
    O7 <=  ( D7 ) AFTER 1600 ps;
    O8 <=  ( D8 ) AFTER 1600 ps;
    O9 <=  ( D9 ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100123 IS PORT(
E : IN  std_logic;
D1 : IN  std_logic;
DE1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
DE2 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
DE3 : IN  std_logic;
D6 : IN  std_logic;
O1 : OUT  std_logic;
VCC2 : INOUT  std_logic;
O2 : OUT  std_logic;
O3 : OUT  std_logic;
O4 : OUT  std_logic;
O5 : OUT  std_logic;
O6 : OUT  std_logic;
VCC1 : IN  std_logic;
VEE : IN  std_logic);
END F100123;

ARCHITECTURE model OF F100123 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( DE1 ) AFTER 600 ps;
    N2 <=  ( DE2 ) AFTER 600 ps;
    N3 <=  ( DE3 ) AFTER 600 ps;
    N4 <=  ( E ) AFTER 1100 ps;
    L1 <=  ( N1 OR N4 );
    L2 <=  ( N2 OR N4 );
    L3 <=  ( N3 OR N4 );
    O1 <=  ( L1 AND D1 ) AFTER 2400 ps;
    O2 <=  ( L1 AND D2 ) AFTER 2400 ps;
    O3 <=  ( L2 AND D3 ) AFTER 2400 ps;
    O4 <=  ( L2 AND D4 ) AFTER 2400 ps;
    O5 <=  ( L3 AND D5 ) AFTER 2400 ps;
    O6 <=  ( L3 AND D6 ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100124 IS PORT(
E : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
Q0 : OUT  std_logic;
\Q\\0\\\ : OUT  std_logic;
Q1 : OUT  std_logic;
\Q\\1\\\ : OUT  std_logic;
Q2 : OUT  std_logic;
\Q\\2\\\ : OUT  std_logic;
Q3 : OUT  std_logic;
\Q\\3\\\ : OUT  std_logic;
Q4 : OUT  std_logic;
\Q\\4\\\ : OUT  std_logic;
Q5 : OUT  std_logic;
\Q\\5\\\ : OUT  std_logic;
VCC : INOUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100124;

ARCHITECTURE model OF F100124 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <=  ( E AND D0 );
    L2 <=  ( E AND D1 );
    L3 <=  ( E AND D2 );
    L4 <=  ( D3 AND E );
    L5 <=  ( D4 AND E );
    L6 <=  ( D5 AND E );
    Q0 <=  ( L1 ) AFTER 3000 ps;
    Q1 <=  ( L2 ) AFTER 3000 ps;
    Q2 <=  ( L3 ) AFTER 3000 ps;
    Q3 <=  ( L4 ) AFTER 3000 ps;
    Q4 <=  ( L5 ) AFTER 3000 ps;
    Q5 <=  ( L6 ) AFTER 3000 ps;
    \Q\\0\\\ <= NOT ( L1 ) AFTER 3000 ps;
    \Q\\1\\\ <= NOT ( L2 ) AFTER 3000 ps;
    \Q\\2\\\ <= NOT ( L3 ) AFTER 3000 ps;
    \Q\\3\\\ <= NOT ( L4 ) AFTER 3000 ps;
    \Q\\4\\\ <= NOT ( L5 ) AFTER 3000 ps;
    \Q\\5\\\ <= NOT ( L6 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100126 IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
O1 : OUT  std_logic;
O2 : OUT  std_logic;
O3 : OUT  std_logic;
O4 : OUT  std_logic;
O5 : OUT  std_logic;
O6 : OUT  std_logic;
O7 : OUT  std_logic;
O8 : OUT  std_logic;
O9 : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100126;

ARCHITECTURE model OF F100126 IS

    BEGIN
    O1 <=  ( D1 ) AFTER 2800 ps;
    O2 <=  ( D2 ) AFTER 2800 ps;
    O3 <=  ( D3 ) AFTER 2800 ps;
    O4 <=  ( D4 ) AFTER 2800 ps;
    O5 <=  ( D5 ) AFTER 2800 ps;
    O6 <=  ( D6 ) AFTER 2800 ps;
    O7 <=  ( D7 ) AFTER 2800 ps;
    O8 <=  ( D8 ) AFTER 2800 ps;
    O9 <=  ( D9 ) AFTER 2800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100151 IS PORT(
CPA : IN  std_logic;
CPB : IN  std_logic;
MR : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
Q0 : OUT  std_logic;
\Q\\0\\\ : OUT  std_logic;
Q1 : OUT  std_logic;
\Q\\1\\\ : OUT  std_logic;
Q2 : OUT  std_logic;
\Q\\2\\\ : OUT  std_logic;
Q3 : OUT  std_logic;
\Q\\3\\\ : OUT  std_logic;
Q4 : OUT  std_logic;
\Q\\4\\\ : OUT  std_logic;
Q5 : OUT  std_logic;
\Q\\5\\\ : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100151;

ARCHITECTURE model OF F100151 IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( CPA OR CPB ) AFTER 0 ps;
    L1 <= NOT ( MR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>D0 , clk=>N1 , cl=>L1 );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N1 , cl=>L1 );
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N1 , cl=>L1 );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N1 , cl=>L1 );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N1 , cl=>L1 );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N1 , cl=>L1 );
    Q0 <=  ( N2 ) AFTER 1200 ps;
    Q1 <=  ( N3 ) AFTER 1200 ps;
    Q2 <=  ( N4 ) AFTER 1200 ps;
    Q3 <=  ( N5 ) AFTER 1200 ps;
    Q4 <=  ( N6 ) AFTER 1200 ps;
    Q5 <=  ( N7 ) AFTER 1200 ps;
    \Q\\0\\\ <= NOT ( N2 ) AFTER 1200 ps;
    \Q\\1\\\ <= NOT ( N3 ) AFTER 1200 ps;
    \Q\\2\\\ <= NOT ( N4 ) AFTER 1200 ps;
    \Q\\3\\\ <= NOT ( N5 ) AFTER 1200 ps;
    \Q\\4\\\ <= NOT ( N6 ) AFTER 1200 ps;
    \Q\\5\\\ <= NOT ( N7 ) AFTER 1200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY F100160 IS PORT(
IA : IN  std_logic;
I0A : IN  std_logic;
I1A : IN  std_logic;
I2A : IN  std_logic;
I3A : IN  std_logic;
I4A : IN  std_logic;
I5A : IN  std_logic;
I6A : IN  std_logic;
I7A : IN  std_logic;
IB : IN  std_logic;
I0B : IN  std_logic;
I1B : IN  std_logic;
I2B : IN  std_logic;
I3B : IN  std_logic;
I4B : IN  std_logic;
I5B : IN  std_logic;
I6B : IN  std_logic;
I7B : IN  std_logic;
ZA : OUT  std_logic;
C : OUT  std_logic;
ZB : OUT  std_logic;
VCC1 : IN  std_logic;
VCC2 : IN  std_logic;
VEE : IN  std_logic);
END F100160;

ARCHITECTURE model OF F100160 IS
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
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;

    BEGIN
    L1 <=  ( I0A XOR I1A );
    N1 <=  ( L1 XOR L1 ) AFTER 2800 ps;
    L2 <=  ( I2A XOR I3A );
    N2 <=  ( L2 XOR L2 ) AFTER 2800 ps;
    L3 <=  ( I4A XOR I5A );
    N3 <=  ( L3 XOR L3 ) AFTER 2800 ps;
    L4 <=  ( I6A XOR I7A );
    N4 <=  ( L4 XOR L4 ) AFTER 2800 ps;
    L5 <=  ( I0B XOR I1B );
    N5 <=  ( L5 XOR L5 ) AFTER 2800 ps;
    L6 <=  ( I2B XOR I3B );
    N6 <=  ( L6 XOR L6 ) AFTER 2800 ps;
    L7 <=  ( I4B XOR I5B );
    N7 <=  ( L7 XOR L7 ) AFTER 2800 ps;
    L8 <=  ( I6B XOR I7B );
    N8 <=  ( L8 XOR L8 ) AFTER 2800 ps;
    N9 <=  ( L1 XOR L2 XOR L3 XOR L4 ) AFTER 2700 ps;
    N10 <=  ( L5 XOR L6 XOR L7 XOR L8 ) AFTER 2700 ps;
    ZA <= NOT ( N9 XOR IA ) AFTER 1600 ps;
    ZB <= NOT ( N10 XOR IB ) AFTER 1600 ps;
    C <=  ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 OR N8 ) AFTER 500 ps;
END model;

