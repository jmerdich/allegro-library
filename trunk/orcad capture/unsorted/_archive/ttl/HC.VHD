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
-- File:			HC.VHD
-- Resource:	  National, 1984 Logic Databook
-- Delay units:	  Picoseconds
-- Characteristics: 74HCXXX Tplh and Tphl, 15pF and 50pF

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  




LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC00\ IS PORT(
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
END \74HC00\;

ARCHITECTURE model OF \74HC00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC00A\ IS PORT(
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
END \74HC00A\;

ARCHITECTURE model OF \74HC00A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC02\ IS PORT(
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
END \74HC02\;

ARCHITECTURE model OF \74HC02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC02A\ IS PORT(
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
END \74HC02A\;

ARCHITECTURE model OF \74HC02A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC03\ IS PORT(
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
END \74HC03\;

ARCHITECTURE model OF \74HC03\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2600 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2600 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2600 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC03A\ IS PORT(
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
END \74HC03A\;

ARCHITECTURE model OF \74HC03A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2600 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2600 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2600 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC04\ IS PORT(
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
END \74HC04\;

ARCHITECTURE model OF \74HC04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 1500 ps;
    O_B <= NOT ( I_B ) AFTER 1500 ps;
    O_C <= NOT ( I_C ) AFTER 1500 ps;
    O_D <= NOT ( I_D ) AFTER 1500 ps;
    O_E <= NOT ( I_E ) AFTER 1500 ps;
    O_F <= NOT ( I_F ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC04A\ IS PORT(
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
END \74HC04A\;

ARCHITECTURE model OF \74HC04A\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 1500 ps;
    O_B <= NOT ( I_B ) AFTER 1500 ps;
    O_C <= NOT ( I_C ) AFTER 1500 ps;
    O_D <= NOT ( I_D ) AFTER 1500 ps;
    O_E <= NOT ( I_E ) AFTER 1500 ps;
    O_F <= NOT ( I_F ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC05\ IS PORT(
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
END \74HC05\;

ARCHITECTURE model OF \74HC05\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 1900 ps;
    O_B <= NOT ( I_B ) AFTER 1900 ps;
    O_C <= NOT ( I_C ) AFTER 1900 ps;
    O_D <= NOT ( I_D ) AFTER 1900 ps;
    O_E <= NOT ( I_E ) AFTER 1900 ps;
    O_F <= NOT ( I_F ) AFTER 1900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC08\ IS PORT(
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
END \74HC08\;

ARCHITECTURE model OF \74HC08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 2000 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 2000 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 2000 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC09\ IS PORT(
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
END \74HC09\;

ARCHITECTURE model OF \74HC09\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 2100 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 2100 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 2100 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 2100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC10\ IS PORT(
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
END \74HC10\;

ARCHITECTURE model OF \74HC10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC11\ IS PORT(
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
END \74HC11\;

ARCHITECTURE model OF \74HC11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 2000 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 2000 ps;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC14\ IS PORT(
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
END \74HC14\;

ARCHITECTURE model OF \74HC14\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 2200 ps;
    O_B <= NOT ( I_B ) AFTER 2200 ps;
    O_C <= NOT ( I_C ) AFTER 2200 ps;
    O_D <= NOT ( I_D ) AFTER 2200 ps;
    O_E <= NOT ( I_E ) AFTER 2200 ps;
    O_F <= NOT ( I_F ) AFTER 2200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC14A\ IS PORT(
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
END \74HC14A\;

ARCHITECTURE model OF \74HC14A\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 2200 ps;
    O_B <= NOT ( I_B ) AFTER 2200 ps;
    O_C <= NOT ( I_C ) AFTER 2200 ps;
    O_D <= NOT ( I_D ) AFTER 2200 ps;
    O_E <= NOT ( I_E ) AFTER 2200 ps;
    O_F <= NOT ( I_F ) AFTER 2200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC20\ IS PORT(
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
END \74HC20\;

ARCHITECTURE model OF \74HC20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC21\ IS PORT(
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
END \74HC21\;

ARCHITECTURE model OF \74HC21\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1800 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC27\ IS PORT(
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
END \74HC27\;

ARCHITECTURE model OF \74HC27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC30\ IS PORT(
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
END \74HC30\;

ARCHITECTURE model OF \74HC30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC32\ IS PORT(
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
END \74HC32\;

ARCHITECTURE model OF \74HC32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 1800 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 1800 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1800 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC32A\ IS PORT(
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
END \74HC32A\;

ARCHITECTURE model OF \74HC32A\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 1800 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 1800 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1800 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC36\ IS PORT(
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
END \74HC36\;

ARCHITECTURE model OF \74HC36\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC42\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
\0\ : OUT  std_logic;
\1\ : OUT  std_logic;
\2\ : OUT  std_logic;
\3\ : OUT  std_logic;
\4\ : OUT  std_logic;
\5\ : OUT  std_logic;
\6\ : OUT  std_logic;
\7\ : OUT  std_logic;
\8\ : OUT  std_logic;
\9\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC42\;

ARCHITECTURE model OF \74HC42\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <= NOT ( C );
    L4 <= NOT ( D );
    \0\ <= NOT ( L1 AND L2 AND L3 AND L4 ) AFTER 2500 ps;
    \1\ <= NOT ( L2 AND L3 AND L4 AND A ) AFTER 2500 ps;
    \2\ <= NOT ( L1 AND L3 AND L4 AND B ) AFTER 2500 ps;
    \3\ <= NOT ( L3 AND L4 AND B AND A ) AFTER 2500 ps;
    \4\ <= NOT ( L1 AND L2 AND L4 AND C ) AFTER 2500 ps;
    \5\ <= NOT ( L2 AND L4 AND C AND A ) AFTER 2500 ps;
    \6\ <= NOT ( L1 AND L4 AND C AND B ) AFTER 2500 ps;
    \7\ <= NOT ( L4 AND C AND B AND A ) AFTER 2500 ps;
    \8\ <= NOT ( L1 AND L2 AND L3 AND D ) AFTER 2500 ps;
    \9\ <= NOT ( L2 AND L3 AND D AND A ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC51\ IS PORT(
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
END \74HC51\;

ARCHITECTURE model OF \74HC51\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( \2A\ AND \2B\ );
    L2 <=  ( \2C\ AND \2D\ );
    L3 <=  ( \1A\ AND \1B\ AND \1C\ );
    L4 <=  ( \1D\ AND \1E\ AND \1F\ );
    \2Y\ <= NOT ( L1 OR L2 ) AFTER 2000 ps;
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC73\ IS PORT(
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
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74HC73\;

ARCHITECTURE model OF \74HC73\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFC_0 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_1 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC74\ IS PORT(
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
END \74HC74\;

ARCHITECTURE model OF \74HC74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC75\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
C12 : IN  std_logic;
C34 : IN  std_logic;
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
END \74HC75\;

ARCHITECTURE model OF \74HC75\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( D1 );
    L2 <= NOT ( D2 );
    L3 <= NOT ( D3 );
    L4 <= NOT ( D4 );
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\Q\\1\\\ , d=>L1 , enable=>C12 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\Q\\2\\\ , d=>L2 , enable=>C12 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\Q\\3\\\ , d=>L3 , enable=>C34 );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\Q\\4\\\ , d=>L4 , enable=>C34 );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , enable=>C12 );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , enable=>C12 );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , enable=>C34 );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , enable=>C34 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC76\ IS PORT(
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
END \74HC76\;

ARCHITECTURE model OF \74HC76\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC77\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
C12 : IN  std_logic;
C34 : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC77\;

ARCHITECTURE model OF \74HC77\ IS

    BEGIN
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , enable=>C12 );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , enable=>C12 );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , enable=>C34 );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , enable=>C34 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC78\ IS PORT(
J1 : IN  std_logic;
K1 : IN  std_logic;
J2 : IN  std_logic;
K2 : IN  std_logic;
CLK : IN  std_logic;
PR1 : IN  std_logic;
PR2 : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
\Q\\1\\\ : OUT  std_logic;
Q2 : OUT  std_logic;
\Q\\2\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC78\;

ARCHITECTURE model OF \74HC78\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK ) AFTER 0 ps;
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2200 ps, tfall_clk_q=>2200 ps)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , j=>J1 , k=>K1 , clk=>N1 , pr=>PR1 , cl=>CLR );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2200 ps, tfall_clk_q=>2200 ps)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , j=>J2 , k=>K2 , clk=>N1 , pr=>PR2 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC85\ IS PORT(
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
END \74HC85\;

ARCHITECTURE model OF \74HC85\ IS
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
    N1 <= NOT ( L5 OR L6 ) AFTER 1000 ps;
    N2 <= NOT ( L7 OR L8 ) AFTER 1000 ps;
    N3 <= NOT ( L9 OR L10 ) AFTER 1000 ps;
    N4 <= NOT ( L11 OR L12 ) AFTER 1000 ps;
    N5 <=  ( L6 ) AFTER 1000 ps;
    N6 <=  ( L5 ) AFTER 1000 ps;
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
    \A>Bo\ <= NOT ( L13 OR L14 OR L15 OR L16 OR L17 OR N5 ) AFTER 2600 ps;
    \A<Bo\ <= NOT ( L18 OR L19 OR L20 OR L21 OR L22 OR N6 ) AFTER 2600 ps;
    \A=Bo\ <=  ( N1 AND N2 AND N3 AND N4 AND \A=Bi\ ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC86\ IS PORT(
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
END \74HC86\;

ARCHITECTURE model OF \74HC86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 2000 ps;
    O_B <=  ( I0_B XOR I1_B ) AFTER 2000 ps;
    O_C <=  ( I0_C XOR I1_C ) AFTER 2000 ps;
    O_D <=  ( I0_D XOR I1_D ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC107\ IS PORT(
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
GND : IN  std_logic;
CL_A : IN  std_logic;
CL_B : IN  std_logic);
END \74HC107\;

ARCHITECTURE model OF \74HC107\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFC_2 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_3 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC109\ IS PORT(
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
END \74HC109\;

ARCHITECTURE model OF \74HC109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC109A\ IS PORT(
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
END \74HC109A\;

ARCHITECTURE model OF \74HC109A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC112\ IS PORT(
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
END \74HC112\;

ARCHITECTURE model OF \74HC112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC113\ IS PORT(
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
END \74HC113\;

ARCHITECTURE model OF \74HC113\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFP_0 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_1 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2100 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC114\ IS PORT(
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
END \74HC114\;

ARCHITECTURE model OF \74HC114\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3400 ps, tfall_clk_q=>3400 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3400 ps, tfall_clk_q=>3400 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC125\ IS PORT(
I_A : IN  std_logic;
I_B : IN  std_logic;
I_C : IN  std_logic;
I_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
OE_A : IN  std_logic;
OE_B : IN  std_logic;
OE_C : IN  std_logic;
OE_D : IN  std_logic;
GND : IN  std_logic);
END \74HC125\;

ARCHITECTURE model OF \74HC125\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( OE_A );
    L2 <= NOT ( OE_B );
    L3 <= NOT ( OE_C );
    L4 <= NOT ( OE_D );
    N1 <=  ( I_A ) AFTER 1800 ps;
    N2 <=  ( I_B ) AFTER 1800 ps;
    N3 <=  ( I_C ) AFTER 1800 ps;
    N4 <=  ( I_D ) AFTER 1800 ps;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC125A\ IS PORT(
I_A : IN  std_logic;
I_B : IN  std_logic;
I_C : IN  std_logic;
I_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
OE_A : IN  std_logic;
OE_B : IN  std_logic;
OE_C : IN  std_logic;
OE_D : IN  std_logic;
GND : IN  std_logic);
END \74HC125A\;

ARCHITECTURE model OF \74HC125A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( OE_A );
    L2 <= NOT ( OE_B );
    L3 <= NOT ( OE_C );
    L4 <= NOT ( OE_D );
    N1 <=  ( I_A ) AFTER 1800 ps;
    N2 <=  ( I_B ) AFTER 1800 ps;
    N3 <=  ( I_C ) AFTER 1800 ps;
    N4 <=  ( I_D ) AFTER 1800 ps;
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC126\ IS PORT(
I_A : IN  std_logic;
I_B : IN  std_logic;
I_C : IN  std_logic;
I_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
OE_A : IN  std_logic;
OE_B : IN  std_logic;
OE_C : IN  std_logic;
OE_D : IN  std_logic;
GND : IN  std_logic);
END \74HC126\;

ARCHITECTURE model OF \74HC126\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 3000 ps;
    N2 <=  ( I_B ) AFTER 3000 ps;
    N3 <=  ( I_C ) AFTER 3000 ps;
    N4 <=  ( I_D ) AFTER 3000 ps;
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC126A\ IS PORT(
I_A : IN  std_logic;
I_B : IN  std_logic;
I_C : IN  std_logic;
I_D : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
VCC : IN  std_logic;
OE_A : IN  std_logic;
OE_B : IN  std_logic;
OE_C : IN  std_logic;
OE_D : IN  std_logic;
GND : IN  std_logic);
END \74HC126A\;

ARCHITECTURE model OF \74HC126A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 3000 ps;
    N2 <=  ( I_B ) AFTER 3000 ps;
    N3 <=  ( I_C ) AFTER 3000 ps;
    N4 <=  ( I_D ) AFTER 3000 ps;
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC132\ IS PORT(
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
END \74HC132\;

ARCHITECTURE model OF \74HC132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2000 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2000 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2000 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC132A\ IS PORT(
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
END \74HC132A\;

ARCHITECTURE model OF \74HC132A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2000 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2000 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2000 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC133\ IS PORT(
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
END \74HC133\;

ARCHITECTURE model OF \74HC133\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11 AND I12 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC137\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
GL : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
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
END \74HC137\;

ARCHITECTURE model OF \74HC137\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    L1 <= NOT ( G2 );
    L2 <=  ( L1 AND G1 );
    L3 <= NOT ( GL );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1200 ps, tfall_clk_q=>1200 ps)
      PORT MAP  (q=>N1 , d=>A , enable=>L3 );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1200 ps, tfall_clk_q=>1200 ps)
      PORT MAP  (q=>N2 , d=>B , enable=>L3 );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1200 ps, tfall_clk_q=>1200 ps)
      PORT MAP  (q=>N3 , d=>C , enable=>L3 );
    L4 <= NOT ( N1 );
    L5 <= NOT ( N2 );
    L6 <= NOT ( N3 );
    Y0 <= NOT ( L2 AND L4 AND L5 AND L6 ) AFTER 2600 ps;
    Y1 <= NOT ( L2 AND L5 AND L6 AND N1 ) AFTER 2600 ps;
    Y2 <= NOT ( L2 AND L4 AND L6 AND N2 ) AFTER 2600 ps;
    Y3 <= NOT ( L2 AND L6 AND N1 AND N2 ) AFTER 2600 ps;
    Y4 <= NOT ( L2 AND L4 AND L5 AND N3 ) AFTER 2600 ps;
    Y5 <= NOT ( L2 AND L5 AND N1 AND N3 ) AFTER 2600 ps;
    Y6 <= NOT ( L2 AND L4 AND N2 AND N3 ) AFTER 2600 ps;
    Y7 <= NOT ( L2 AND N1 AND N2 AND N3 ) AFTER 2600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC138\ IS PORT(
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
END \74HC138\;

ARCHITECTURE model OF \74HC138\ IS
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
    N7 <=  ( G1 ) AFTER 2000 ps;
    N8 <= NOT ( G2A OR G2B ) AFTER 2500 ps;
    L1 <=  ( N7 AND N8 );
    Y0 <= NOT ( L1 AND N4 AND N5 AND N6 ) AFTER 500 ps;
    Y1 <= NOT ( L1 AND N1 AND N5 AND N6 ) AFTER 500 ps;
    Y2 <= NOT ( L1 AND N2 AND N4 AND N6 ) AFTER 500 ps;
    Y3 <= NOT ( L1 AND N1 AND N2 AND N6 ) AFTER 500 ps;
    Y4 <= NOT ( L1 AND N3 AND N4 AND N5 ) AFTER 500 ps;
    Y5 <= NOT ( L1 AND N1 AND N3 AND N5 ) AFTER 500 ps;
    Y6 <= NOT ( L1 AND N2 AND N3 AND N4 ) AFTER 500 ps;
    Y7 <= NOT ( L1 AND N1 AND N2 AND N3 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC138A\ IS PORT(
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
END \74HC138A\;

ARCHITECTURE model OF \74HC138A\ IS
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
    N7 <=  ( G1 ) AFTER 2000 ps;
    N8 <= NOT ( G2A OR G2B ) AFTER 2500 ps;
    L1 <=  ( N7 AND N8 );
    Y0 <= NOT ( L1 AND N4 AND N5 AND N6 ) AFTER 500 ps;
    Y1 <= NOT ( L1 AND N1 AND N5 AND N6 ) AFTER 500 ps;
    Y2 <= NOT ( L1 AND N2 AND N4 AND N6 ) AFTER 500 ps;
    Y3 <= NOT ( L1 AND N1 AND N2 AND N6 ) AFTER 500 ps;
    Y4 <= NOT ( L1 AND N3 AND N4 AND N5 ) AFTER 500 ps;
    Y5 <= NOT ( L1 AND N1 AND N3 AND N5 ) AFTER 500 ps;
    Y6 <= NOT ( L1 AND N2 AND N3 AND N4 ) AFTER 500 ps;
    Y7 <= NOT ( L1 AND N1 AND N2 AND N3 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC139\ IS PORT(
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
END \74HC139\;

ARCHITECTURE model OF \74HC139\ IS
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
    N1 <= NOT ( G_A ) AFTER 2500 ps;
    N2 <=  ( A_A ) AFTER 3300 ps;
    N3 <=  ( B_A ) AFTER 3300 ps;
    N4 <= NOT ( A_A ) AFTER 2500 ps;
    N5 <= NOT ( B_A ) AFTER 2500 ps;
    N6 <= NOT ( G_B ) AFTER 2500 ps;
    N7 <=  ( A_B ) AFTER 3300 ps;
    N8 <=  ( B_B ) AFTER 3300 ps;
    N9 <= NOT ( A_B ) AFTER 2500 ps;
    N10 <= NOT ( B_B ) AFTER 2500 ps;
    Y0_A <= NOT ( N1 AND N4 AND N5 ) AFTER 500 ps;
    Y1_A <= NOT ( N1 AND N2 AND N5 ) AFTER 500 ps;
    Y2_A <= NOT ( N1 AND N3 AND N4 ) AFTER 500 ps;
    Y3_A <= NOT ( N1 AND N2 AND N3 ) AFTER 500 ps;
    Y0_B <= NOT ( N6 AND N9 AND N10 ) AFTER 500 ps;
    Y1_B <= NOT ( N6 AND N7 AND N10 ) AFTER 500 ps;
    Y2_B <= NOT ( N6 AND N8 AND N9 ) AFTER 500 ps;
    Y3_B <= NOT ( N6 AND N7 AND N8 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC139A\ IS PORT(
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
END \74HC139A\;

ARCHITECTURE model OF \74HC139A\ IS
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
    N1 <= NOT ( G_A ) AFTER 2500 ps;
    N2 <=  ( A_A ) AFTER 3300 ps;
    N3 <=  ( B_A ) AFTER 3300 ps;
    N4 <= NOT ( A_A ) AFTER 2500 ps;
    N5 <= NOT ( B_A ) AFTER 2500 ps;
    N6 <= NOT ( G_B ) AFTER 2500 ps;
    N7 <=  ( A_B ) AFTER 3300 ps;
    N8 <=  ( B_B ) AFTER 3300 ps;
    N9 <= NOT ( A_B ) AFTER 2500 ps;
    N10 <= NOT ( B_B ) AFTER 2500 ps;
    Y0_A <= NOT ( N1 AND N4 AND N5 ) AFTER 500 ps;
    Y1_A <= NOT ( N1 AND N2 AND N5 ) AFTER 500 ps;
    Y2_A <= NOT ( N1 AND N3 AND N4 ) AFTER 500 ps;
    Y3_A <= NOT ( N1 AND N2 AND N3 ) AFTER 500 ps;
    Y0_B <= NOT ( N6 AND N9 AND N10 ) AFTER 500 ps;
    Y1_B <= NOT ( N6 AND N7 AND N10 ) AFTER 500 ps;
    Y2_B <= NOT ( N6 AND N8 AND N9 ) AFTER 500 ps;
    Y3_B <= NOT ( N6 AND N7 AND N8 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC147\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\3\ : IN  std_logic;
\4\ : IN  std_logic;
\5\ : IN  std_logic;
\6\ : IN  std_logic;
\7\ : IN  std_logic;
\8\ : IN  std_logic;
\9\ : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC147\;

ARCHITECTURE model OF \74HC147\ IS
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

    BEGIN
    L1 <= NOT ( \1\ );
    L2 <= NOT ( \2\ );
    L3 <= NOT ( \3\ );
    L4 <= NOT ( \4\ );
    L5 <= NOT ( \5\ );
    L6 <= NOT ( \6\ );
    L7 <= NOT ( \7\ );
    L8 <=  ( \8\ AND \9\ );
    L9 <= NOT ( \9\ );
    L10 <= NOT ( L1 AND L8 AND \4\ AND \6\ AND \2\ );
    L11 <= NOT ( L3 AND L8 AND \4\ AND \6\ );
    L12 <= NOT ( L5 AND L8 AND \6\ );
    L13 <= NOT ( L7 AND L8 );
    L14 <= NOT ( L2 AND L8 AND \4\ AND \5\ );
    L15 <= NOT ( L3 AND L8 AND \4\ AND \5\ );
    L16 <= NOT ( L6 AND L8 );
    L17 <= NOT ( L4 AND L8 );
    L18 <= NOT ( L5 AND L8 );
    D <=  ( L8 ) AFTER 3800 ps;
    C <=  ( L13 AND L16 AND L17 AND L18 ) AFTER 3800 ps;
    B <=  ( L13 AND L14 AND L15 AND L16 ) AFTER 3800 ps;
    A <=  ( L10 AND L11 AND L12 AND L13 AND \9\ ) AFTER 3800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC148\ IS PORT(
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
END \74HC148\;

ARCHITECTURE model OF \74HC148\ IS
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

    BEGIN
    N1 <= NOT ( \1\ ) AFTER 500 ps;
    N2 <= NOT ( \2\ ) AFTER 500 ps;
    N3 <= NOT ( \3\ ) AFTER 500 ps;
    N4 <= NOT ( \4\ ) AFTER 500 ps;
    N5 <= NOT ( \5\ ) AFTER 500 ps;
    N6 <= NOT ( \6\ ) AFTER 500 ps;
    N7 <= NOT ( \7\ ) AFTER 500 ps;
    N8 <=  ( \1\ ) AFTER 1400 ps;
    N9 <=  ( \2\ ) AFTER 1400 ps;
    N10 <=  ( \3\ ) AFTER 1400 ps;
    N11 <=  ( \4\ ) AFTER 1400 ps;
    N12 <=  ( \5\ ) AFTER 1400 ps;
    N13 <=  ( \6\ ) AFTER 1400 ps;
    N14 <=  ( \7\ ) AFTER 1400 ps;
    N15 <=  ( \0\ ) AFTER 1400 ps;
    N16 <= NOT ( EI ) AFTER 900 ps;
    L1 <= NOT ( EI );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N4 );
    L4 <= NOT ( N5 );
    L5 <= NOT ( N6 );
    L6 <=  ( L2 AND L3 AND L5 AND N1 AND N16 );
    L7 <=  ( L3 AND L5 AND N3 AND N16 );
    L8 <=  ( L5 AND N5 AND N16 );
    L9 <=  ( N7 AND N16 );
    L10 <=  ( L3 AND L4 AND N2 AND N16 );
    L11 <=  ( L3 AND L4 AND N3 AND N16 );
    L12 <=  ( N6 AND N16 );
    L13 <=  ( N7 AND N16 );
    L14 <=  ( N4 AND N16 );
    L15 <=  ( N5 AND N16 );
    L16 <=  ( N6 AND N16 );
    L17 <=  ( N7 AND N16 );
    N17 <=  ( L1 ) AFTER 200 ps;
    N18 <=  ( L1 ) AFTER 1700 ps;
    N19 <= NOT ( N8 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 AND N17 ) AFTER 1400 ps;
    EO <= N19;    
    GS <= NOT ( N18 AND N19 ) AFTER 2400 ps;
    A0 <= NOT ( L6 OR L7 OR L8 OR L9 ) AFTER 3000 ps;
    A1 <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 3000 ps;
    A2 <= NOT ( L14 OR L15 OR L16 OR L17 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC151\ IS PORT(
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
END \74HC151\;

ARCHITECTURE model OF \74HC151\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 600 ps;
    N2 <= NOT ( B ) AFTER 600 ps;
    N3 <= NOT ( C ) AFTER 600 ps;
    N4 <= NOT ( G ) AFTER 200 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    N5 <=  ( N1 AND N2 AND N3 AND D0 ) AFTER 800 ps;
    N6 <=  ( L1 AND N2 AND N3 AND D1 ) AFTER 800 ps;
    N7 <=  ( L2 AND N1 AND N3 AND D2 ) AFTER 800 ps;
    N8 <=  ( L1 AND L2 AND N3 AND D3 ) AFTER 800 ps;
    N9 <=  ( L3 AND N1 AND N2 AND D4 ) AFTER 800 ps;
    N10 <=  ( L1 AND L3 AND N2 AND D5 ) AFTER 800 ps;
    N11 <=  ( L2 AND L3 AND N1 AND D6 ) AFTER 800 ps;
    N12 <=  ( L1 AND L2 AND L3 AND D7 ) AFTER 800 ps;
    L4 <=  ( N5 OR N6 OR N7 OR N8 OR N9 OR N10 OR N11 OR N12 );
    L5 <= NOT ( L4 );
    Y <=  ( L4 AND N4 ) AFTER 2100 ps;
    W <=  ( L5 OR G ) AFTER 2100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC152\ IS PORT(
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
W : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC152\;

ARCHITECTURE model OF \74HC152\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 1000 ps;
    N2 <= NOT ( B ) AFTER 1000 ps;
    N3 <= NOT ( C ) AFTER 1000 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <=  ( N1 AND N2 AND N3 AND D0 );
    L5 <=  ( L1 AND N2 AND N3 AND D1 );
    L6 <=  ( L2 AND N1 AND N3 AND D2 );
    L7 <=  ( L1 AND L2 AND N3 AND D3 );
    L8 <=  ( L3 AND N1 AND N2 AND D4 );
    L9 <=  ( L1 AND L3 AND N2 AND D5 );
    L10 <=  ( L2 AND L3 AND N1 AND D6 );
    L11 <=  ( L1 AND L2 AND L3 AND D7 );
    W <= NOT ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 ) AFTER 3300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC153\ IS PORT(
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
END \74HC153\;

ARCHITECTURE model OF \74HC153\ IS
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
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    N1 <= NOT ( A ) AFTER 700 ps;
    N2 <= NOT ( B ) AFTER 700 ps;
    N3 <=  ( A ) AFTER 700 ps;
    N4 <=  ( B ) AFTER 700 ps;
    L3 <= NOT ( N3 AND N4 AND \1C3\ );
    L4 <= NOT ( N1 AND N4 AND \1C2\ );
    L5 <= NOT ( N2 AND N3 AND \1C1\ );
    L6 <= NOT ( N1 AND N2 AND \1C0\ );
    L7 <= NOT ( N3 AND N4 AND \2C3\ );
    L8 <= NOT ( N1 AND N4 AND \2C2\ );
    L9 <= NOT ( N2 AND N3 AND \2C1\ );
    L10 <= NOT ( N1 AND N2 AND \2C0\ );
    N5 <= NOT ( L3 AND L4 AND L5 AND L6 ) AFTER 800 ps;
    N6 <= NOT ( L7 AND L8 AND L9 AND L10 ) AFTER 800 ps;
    \1Y\ <=  ( L1 AND N5 ) AFTER 1500 ps;
    \2Y\ <=  ( L2 AND N6 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC154\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
\0\ : OUT  std_logic;
\1\ : OUT  std_logic;
\2\ : OUT  std_logic;
\3\ : OUT  std_logic;
\4\ : OUT  std_logic;
\5\ : OUT  std_logic;
\6\ : OUT  std_logic;
\7\ : OUT  std_logic;
\8\ : OUT  std_logic;
\9\ : OUT  std_logic;
\10\ : OUT  std_logic;
\11\ : OUT  std_logic;
\12\ : OUT  std_logic;
\13\ : OUT  std_logic;
\14\ : OUT  std_logic;
\15\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC154\;

ARCHITECTURE model OF \74HC154\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 500 ps;
    N2 <= NOT ( B ) AFTER 500 ps;
    N3 <= NOT ( C ) AFTER 500 ps;
    N4 <= NOT ( D ) AFTER 500 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    N5 <= NOT ( G1 OR G2 ) AFTER 500 ps;
    \0\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 3000 ps;
    \1\ <= NOT ( L1 AND N2 AND N3 AND N4 AND N5 ) AFTER 3000 ps;
    \2\ <= NOT ( L2 AND N1 AND N3 AND N4 AND N5 ) AFTER 3000 ps;
    \3\ <= NOT ( L1 AND L2 AND N3 AND N4 AND N5 ) AFTER 3000 ps;
    \4\ <= NOT ( L3 AND N1 AND N2 AND N4 AND N5 ) AFTER 3000 ps;
    \5\ <= NOT ( L1 AND L3 AND N2 AND N4 AND N5 ) AFTER 3000 ps;
    \6\ <= NOT ( L2 AND L3 AND N1 AND N4 AND N5 ) AFTER 3000 ps;
    \7\ <= NOT ( L1 AND L2 AND L3 AND N4 AND N5 ) AFTER 3000 ps;
    \8\ <= NOT ( L4 AND N1 AND N2 AND N3 AND N5 ) AFTER 3000 ps;
    \9\ <= NOT ( L1 AND L4 AND N2 AND N3 AND N5 ) AFTER 3000 ps;
    \10\ <= NOT ( L2 AND L4 AND N1 AND N3 AND N5 ) AFTER 3000 ps;
    \11\ <= NOT ( L1 AND L2 AND L4 AND N3 AND N5 ) AFTER 3000 ps;
    \12\ <= NOT ( L3 AND L4 AND N1 AND N2 AND N5 ) AFTER 3000 ps;
    \13\ <= NOT ( L1 AND L3 AND L4 AND N2 AND N5 ) AFTER 3000 ps;
    \14\ <= NOT ( L2 AND L3 AND L4 AND N1 AND N5 ) AFTER 3000 ps;
    \15\ <= NOT ( L1 AND L2 AND L3 AND L4 AND N5 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC157\ IS PORT(
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
END \74HC157\;

ARCHITECTURE model OF \74HC157\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( \A\\/B\ );
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND \A\\/B\ );
    L5 <=  ( L3 AND \1A\ );
    L6 <=  ( L4 AND \1B\ );
    L7 <=  ( L3 AND \2A\ );
    L8 <=  ( L4 AND \2B\ );
    L9 <=  ( L3 AND \3A\ );
    L10 <=  ( L4 AND \3B\ );
    L11 <=  ( L3 AND \4A\ );
    L12 <=  ( L4 AND \4B\ );
    \1Y\ <=  ( L5 OR L6 ) AFTER 1900 ps;
    \2Y\ <=  ( L7 OR L8 ) AFTER 1900 ps;
    \3Y\ <=  ( L9 OR L10 ) AFTER 1900 ps;
    \4Y\ <=  ( L11 OR L12 ) AFTER 1900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC157A\ IS PORT(
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
END \74HC157A\;

ARCHITECTURE model OF \74HC157A\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( \A\\/B\ );
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND \A\\/B\ );
    L5 <=  ( L3 AND \1A\ );
    L6 <=  ( L4 AND \1B\ );
    L7 <=  ( L3 AND \2A\ );
    L8 <=  ( L4 AND \2B\ );
    L9 <=  ( L3 AND \3A\ );
    L10 <=  ( L4 AND \3B\ );
    L11 <=  ( L3 AND \4A\ );
    L12 <=  ( L4 AND \4B\ );
    \1Y\ <=  ( L5 OR L6 ) AFTER 1900 ps;
    \2Y\ <=  ( L7 OR L8 ) AFTER 1900 ps;
    \3Y\ <=  ( L9 OR L10 ) AFTER 1900 ps;
    \4Y\ <=  ( L11 OR L12 ) AFTER 1900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC158\ IS PORT(
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
END \74HC158\;

ARCHITECTURE model OF \74HC158\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( \A\\/B\ );
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND \A\\/B\ );
    L5 <=  ( L3 AND \1A\ );
    L6 <=  ( L4 AND \1B\ );
    L7 <=  ( L3 AND \2A\ );
    L8 <=  ( L4 AND \2B\ );
    L9 <=  ( L3 AND \3A\ );
    L10 <=  ( L4 AND \3B\ );
    L11 <=  ( L3 AND \4A\ );
    L12 <=  ( L4 AND \4B\ );
    \1Y\ <= NOT ( L5 OR L6 ) AFTER 1900 ps;
    \2Y\ <= NOT ( L7 OR L8 ) AFTER 1900 ps;
    \3Y\ <= NOT ( L9 OR L10 ) AFTER 1900 ps;
    \4Y\ <= NOT ( L11 OR L12 ) AFTER 1900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC158A\ IS PORT(
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
END \74HC158A\;

ARCHITECTURE model OF \74HC158A\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( \A\\/B\ );
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND \A\\/B\ );
    L5 <=  ( L3 AND \1A\ );
    L6 <=  ( L4 AND \1B\ );
    L7 <=  ( L3 AND \2A\ );
    L8 <=  ( L4 AND \2B\ );
    L9 <=  ( L3 AND \3A\ );
    L10 <=  ( L4 AND \3B\ );
    L11 <=  ( L3 AND \4A\ );
    L12 <=  ( L4 AND \4B\ );
    \1Y\ <= NOT ( L5 OR L6 ) AFTER 1900 ps;
    \2Y\ <= NOT ( L7 OR L8 ) AFTER 1900 ps;
    \3Y\ <= NOT ( L9 OR L10 ) AFTER 1900 ps;
    \4Y\ <= NOT ( L11 OR L12 ) AFTER 1900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC160\ IS PORT(
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
END \74HC160\;

ARCHITECTURE model OF \74HC160\ IS
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
    N1 <= NOT ( LOAD ) AFTER 0 ps;
    L1 <= NOT ( N1 );
    N2 <=  ( ENP AND ENT ) AFTER 0 ps;
    N3 <=  ( N4 AND N7 ) AFTER 0 ps;
    RCO <=  ( N3 AND ENT ) AFTER 3200 ps;
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
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N4 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N5 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N6 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N7 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N4 ) AFTER 3100 ps;
    QB <=  ( N5 ) AFTER 3100 ps;
    QC <=  ( N6 ) AFTER 3100 ps;
    QD <=  ( N7 ) AFTER 3100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC161\ IS PORT(
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
END \74HC161\;

ARCHITECTURE model OF \74HC161\ IS
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
    N1 <=  ( ENP AND LOAD AND ENT ) AFTER 0 ps;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 0 ps;
    RCO <=  ( N2 AND ENT ) AFTER 3200 ps;
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
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 3200 ps;
    QB <=  ( N4 ) AFTER 3200 ps;
    QC <=  ( N5 ) AFTER 3200 ps;
    QD <=  ( N6 ) AFTER 3200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC162\ IS PORT(
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
END \74HC162\;

ARCHITECTURE model OF \74HC162\ IS
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
    N1 <=  ( ENP AND ENT ) AFTER 0 ps;
    N2 <=  ( N3 AND N6 ) AFTER 0 ps;
    RCO <=  ( N2 AND ENT ) AFTER 3200 ps;
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
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 3100 ps;
    QB <=  ( N4 ) AFTER 3100 ps;
    QC <=  ( N5 ) AFTER 3100 ps;
    QD <=  ( N6 ) AFTER 3100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC163\ IS PORT(
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
END \74HC163\;

ARCHITECTURE model OF \74HC163\ IS
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
    N2 <= NOT ( LOAD ) AFTER 0 ps;
    N3 <= NOT ( CLR ) AFTER 0 ps;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( N3 OR LOAD );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 0 ps;
    RCO <=  ( N4 AND ENT ) AFTER 3200 ps;
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
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 3100 ps;
    QB <=  ( N6 ) AFTER 3100 ps;
    QC <=  ( N7 ) AFTER 3100 ps;
    QD <=  ( N8 ) AFTER 3100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC164\ IS PORT(
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
END \74HC164\;

ARCHITECTURE model OF \74HC164\ IS
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
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLR );
    QA <=  ( N1 ) AFTER 2000 ps;
    QB <=  ( N2 ) AFTER 2000 ps;
    QC <=  ( N3 ) AFTER 2000 ps;
    QD <=  ( N4 ) AFTER 2000 ps;
    QE <=  ( N5 ) AFTER 2000 ps;
    QF <=  ( N6 ) AFTER 2000 ps;
    QG <=  ( N7 ) AFTER 2000 ps;
    QH <=  ( N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC165\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
CLK : IN  std_logic;
INH : IN  std_logic;
\SH/L\\D\\\ : IN  std_logic;
QH : OUT  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC165\;

ARCHITECTURE model OF \74HC165\ IS
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
    N1 <= NOT ( \SH/L\\D\\\ ) AFTER 0 ps;
    N2 <=  ( SER ) AFTER 0 ps;
    L1 <=  ( \SH/L\\D\\\ AND CLK );
    N3 <=  ( \SH/L\\D\\\ AND INH ) AFTER 0 ps;
    N4 <=  ( L1 OR N3 ) AFTER 0 ps;
    L2 <= NOT ( N1 AND A );
    L3 <= NOT ( N1 AND B );
    L4 <= NOT ( N1 AND C );
    L5 <= NOT ( N1 AND D );
    L6 <= NOT ( N1 AND E );
    L7 <= NOT ( N1 AND F );
    L8 <= NOT ( N1 AND G );
    L9 <= NOT ( N1 AND H );
    L10 <= NOT ( L2 AND N1 );
    L11 <= NOT ( L3 AND N1 );
    L12 <= NOT ( L4 AND N1 );
    L13 <= NOT ( L5 AND N1 );
    L14 <= NOT ( L6 AND N1 );
    L15 <= NOT ( L7 AND N1 );
    L16 <= NOT ( L8 AND N1 );
    L17 <= NOT ( L9 AND N1 );
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>N2 , clk=>N4 , pr=>L2 , cl=>L10 );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>N5 , clk=>N4 , pr=>L3 , cl=>L11 );
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>N6 , clk=>N4 , pr=>L4 , cl=>L12 );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>N7 , clk=>N4 , pr=>L5 , cl=>L13 );
    DQFFPC_4 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N9 , d=>N8 , clk=>N4 , pr=>L6 , cl=>L14 );
    DQFFPC_5 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N10 , d=>N9 , clk=>N4 , pr=>L7 , cl=>L15 );
    DQFFPC_6 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N11 , d=>N10 , clk=>N4 , pr=>L8 , cl=>L16 );
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>N11 , clk=>N4 , pr=>L9 , cl=>L17 );
    QH <=  ( N12 ) AFTER 0 ps;
    \Q\\H\\\ <=  ( N13 ) AFTER 0 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC166\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
CLK : IN  std_logic;
INH : IN  std_logic;
\SH/L\\D\\\ : IN  std_logic;
CLR : IN  std_logic;
QH : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC166\;

ARCHITECTURE model OF \74HC166\ IS
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
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;

    BEGIN
    N1 <=  ( \SH/L\\D\\\ ) AFTER 0 ps;
    N2 <= NOT ( \SH/L\\D\\\ ) AFTER 0 ps;
    N3 <=  ( INH ) AFTER 0 ps;
    N4 <=  ( N3 OR CLK ) AFTER 0 ps;
    L1 <=  ( N1 AND SER );
    L2 <=  ( N2 AND A );
    L3 <=  ( L1 OR L2 );
    L4 <=  ( N1 AND N5 );
    L5 <=  ( N2 AND B );
    L6 <=  ( L4 OR L5 );
    L7 <=  ( N1 AND N6 );
    L8 <=  ( N2 AND C );
    L9 <=  ( L7 OR L8 );
    L10 <=  ( N1 AND N7 );
    L11 <=  ( N2 AND D );
    L12 <=  ( L10 OR L11 );
    L13 <=  ( N1 AND N8 );
    L14 <=  ( N2 AND E );
    L15 <=  ( L13 OR L14 );
    L16 <=  ( N1 AND N9 );
    L17 <=  ( N2 AND F );
    L18 <=  ( L16 OR L17 );
    L19 <=  ( N1 AND N10 );
    L20 <=  ( N2 AND G );
    L21 <=  ( L19 OR L20 );
    L22 <=  ( N1 AND N11 );
    L23 <=  ( N2 AND H );
    L24 <=  ( L22 OR L23 );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>L3 , clk=>N4 , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>L6 , clk=>N4 , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N4 , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>L12 , clk=>N4 , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N4 , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N10 , d=>L18 , clk=>N4 , cl=>CLR );
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N11 , d=>L21 , clk=>N4 , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>QH , d=>L24 , clk=>N4 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC173\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
CLK : IN  std_logic;
M : IN  std_logic;
N : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC173\;

ARCHITECTURE model OF \74HC173\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    L2 <= NOT ( M OR N );
    L3 <= NOT ( CLR );
    L4 <= NOT ( L1 );
    L5 <=  ( L4 AND N1 );
    L6 <=  ( L1 AND D1 );
    L7 <=  ( L5 OR L6 );
    L8 <=  ( L4 AND N2 );
    L9 <=  ( L1 AND D2 );
    L10 <=  ( L8 OR L9 );
    L11 <=  ( L4 AND N3 );
    L12 <=  ( L1 AND D3 );
    L13 <=  ( L11 OR L12 );
    L14 <=  ( L4 AND N4 );
    L15 <=  ( L1 AND D4 );
    L16 <=  ( L14 OR L15 );
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N1 , d=>L7 , clk=>CLK , cl=>L3 );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N2 , d=>L10 , clk=>CLK , cl=>L3 );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N3 , d=>L13 , clk=>CLK , cl=>L3 );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP  (q=>N4 , d=>L16 , clk=>CLK , cl=>L3 );
    N5 <=  ( N1 ) AFTER 2800 ps;
    N6 <=  ( N2 ) AFTER 2800 ps;
    N7 <=  ( N3 ) AFTER 2800 ps;
    N8 <=  ( N4 ) AFTER 2800 ps;
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Q1 , i1=>N5 , en=>L2 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Q2 , i1=>N6 , en=>L2 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Q3 , i1=>N7 , en=>L2 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Q4 , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC174\ IS PORT(
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
END \74HC174\;

ARCHITECTURE model OF \74HC174\ IS

    BEGIN
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC175\ IS PORT(
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
END \74HC175\;

ARCHITECTURE model OF \74HC175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC180\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
EI : IN  std_logic;
OI : IN  std_logic;
EVEN : OUT  std_logic;
ODD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC180\;

ARCHITECTURE model OF \74HC180\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <= NOT ( G XOR H XOR A XOR B XOR C XOR D XOR E XOR F );
    L2 <= NOT ( L1 );
    L3 <=  ( L1 AND OI );
    L4 <=  ( L2 AND EI );
    L5 <=  ( L1 AND EI );
    L6 <=  ( L2 AND OI );
    EVEN <= NOT ( L3 OR L4 ) AFTER 1800 ps;
    ODD <= NOT ( L5 OR L6 ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC181\ IS PORT(
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
END \74HC181\;

ARCHITECTURE model OF \74HC181\ IS
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
    SIGNAL N14 : std_logic;

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
    N1 <=  ( L22 XOR L23 ) AFTER 700 ps;
    N2 <=  ( L24 XOR L25 ) AFTER 700 ps;
    N3 <=  ( L26 XOR L27 ) AFTER 700 ps;
    N4 <=  ( L28 XOR L29 ) AFTER 700 ps;
    N5 <=  ( CN ) AFTER 500 ps;
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
    N13 <= NOT ( L23 OR L30 OR L31 OR L32 ) AFTER 3000 ps;
    G <= N13;
    \CN+4\ <= NOT ( L33 AND N13 ) AFTER 1500 ps;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 4100 ps;
    N6 <=  ( L44 XOR N1 ) AFTER 1000 ps;
    N7 <=  ( L45 XOR N2 ) AFTER 1000 ps;
    N8 <=  ( L46 XOR N3 ) AFTER 1000 ps;
    N9 <=  ( L43 XOR N4 ) AFTER 1000 ps;
    F3 <=  ( N6 ) AFTER 2000 ps;
    F2 <=  ( N7 ) AFTER 2000 ps;
    F1 <=  ( N8 ) AFTER 2000 ps;
    N14 <=  ( N9 ) AFTER 2000 ps;
    F0 <= N14;    
    N10 <=  ( N6 ) AFTER 700 ps;
    N11 <=  ( N7 ) AFTER 700 ps;
    N12 <=  ( N8 ) AFTER 700 ps;
    \A=B\ <=  ( N10 AND N11 AND N12 AND N14 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC182\ IS PORT(
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
END \74HC182\;

ARCHITECTURE model OF \74HC182\ IS
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
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;

    BEGIN
    N1 <= NOT ( CN ) AFTER 300 ps;
    N2 <=  ( P3 ) AFTER 1100 ps;
    N3 <=  ( G3 ) AFTER 1100 ps;
    N4 <=  ( P2 ) AFTER 1100 ps;
    N5 <=  ( G2 ) AFTER 1100 ps;
    N6 <=  ( P1 ) AFTER 1100 ps;
    N7 <=  ( G1 ) AFTER 1100 ps;
    N8 <=  ( P0 ) AFTER 1100 ps;
    N9 <=  ( G0 ) AFTER 1100 ps;
    L1 <=  ( N3 AND N5 AND N7 AND N9 );
    L2 <=  ( N3 AND N5 AND N6 AND N7 );
    L3 <=  ( N3 AND N4 AND N5 );
    L4 <=  ( N2 AND N3 );
    L5 <=  ( N1 AND N5 AND N7 AND N9 );
    L6 <=  ( N5 AND N7 AND N8 AND N9 );
    L7 <=  ( N5 AND N6 AND N7 );
    L8 <=  ( N4 AND N5 );
    L9 <=  ( N1 AND N7 AND N9 );
    L10 <=  ( N7 AND N8 AND N9 );
    L11 <=  ( N6 AND N7 );
    L12 <=  ( N1 AND N9 );
    L13 <=  ( N8 AND N9 );
    P <=  ( P1 OR P0 OR P3 OR P2 ) AFTER 2400 ps;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 2400 ps;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 2400 ps;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 2400 ps;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC190\ IS PORT(
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
END \74HC190\;

ARCHITECTURE model OF \74HC190\ IS
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

    BEGIN
    L1 <= NOT ( \D/U\\\ );
    L2 <= NOT ( G OR \D/U\\\ );
    L3 <= NOT ( L1 OR G );
    L4 <=  ( L1 AND N4 AND N10 );
    L5 <=  ( N5 AND N7 AND N9 AND N11 AND \D/U\\\ );
    L6 <= NOT ( N3 AND A );
    L7 <= NOT ( L6 AND N3 );
    L8 <= NOT ( N3 AND B );
    L9 <= NOT ( N7 AND N9 AND N11 );
    L10 <= NOT ( L8 AND N3 );
    L11 <= NOT ( N3 AND C );
    L12 <= NOT ( L11 AND N3 );
    L13 <= NOT ( N3 AND D );
    L14 <= NOT ( L13 AND N3 );
    L15 <=  ( L3 AND L9 AND N5 );
    L16 <=  ( L2 AND N4 AND N11 );
    L17 <=  ( L3 AND L9 AND N5 AND N7 );
    L18 <=  ( L2 AND N4 AND N6 );
    L19 <=  ( L3 AND N5 AND N7 AND N9 );
    L20 <=  ( L2 AND N4 AND N10 );
    L21 <=  ( L2 AND N4 AND N6 AND N8 );
    L22 <= NOT ( G );
    L23 <=  ( L15 OR L16 );
    L24 <=  ( L17 OR L18 );
    L25 <=  ( L19 OR L20 OR L21 );
    N1 <= NOT ( CLK ) AFTER 200 ps;
    N2 <= NOT ( G ) AFTER 500 ps;
    N3 <= NOT ( LOAD ) AFTER 600 ps;
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L22 , k=>L22 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L23 , k=>L23 , clk=>CLK , pr=>L8 , cl=>L10 );
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L24 , k=>L24 , clk=>CLK , pr=>L11 , cl=>L12 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L25 , k=>L25 , clk=>CLK , pr=>L13 , cl=>L14 );
    N12 <=  ( L4 OR L5 ) AFTER 2000 ps;
    \MX/MN\ <=  ( N12 ) AFTER 1800 ps;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 1800 ps;
    QA <=  ( N4 ) AFTER 2300 ps;
    QB <=  ( N6 ) AFTER 2300 ps;
    QC <=  ( N8 ) AFTER 2300 ps;
    QD <=  ( N10 ) AFTER 2300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC191\ IS PORT(
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
END \74HC191\;

ARCHITECTURE model OF \74HC191\ IS
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

    BEGIN
    L1 <= NOT ( \D/U\\\ );
    L2 <= NOT ( G OR \D/U\\\ );
    L3 <= NOT ( L1 OR G );
    L4 <=  ( L1 AND N4 AND N6 AND N8 AND N10 );
    L5 <=  ( N5 AND N7 AND N9 AND N11 AND \D/U\\\ );
    L6 <= NOT ( N3 AND A );
    L7 <= NOT ( L6 AND N3 );
    L8 <= NOT ( N3 AND B );
    L9 <= NOT ( L8 AND N3 );
    L10 <= NOT ( N3 AND C );
    L11 <= NOT ( L10 AND N3 );
    L12 <= NOT ( N3 AND D );
    L13 <= NOT ( L12 AND N3 );
    L14 <=  ( L3 AND N5 );
    L15 <=  ( L2 AND N4 );
    L16 <=  ( L3 AND N5 AND N7 );
    L17 <=  ( L2 AND N4 AND N6 );
    L18 <=  ( L3 AND N5 AND N7 AND N9 );
    L19 <=  ( L2 AND N4 AND N6 AND N8 );
    L20 <= NOT ( G );
    L21 <=  ( L14 OR L15 );
    L22 <=  ( L16 OR L17 );
    L23 <=  ( L18 OR L19 );
    N1 <= NOT ( CLK ) AFTER 200 ps;
    N2 <= NOT ( G ) AFTER 500 ps;
    N3 <= NOT ( LOAD ) AFTER 600 ps;
    JKFFPC_16 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_17 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_18 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_19 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N12 <=  ( L4 OR L5 ) AFTER 2000 ps;
    \MX/MN\ <=  ( N12 ) AFTER 1800 ps;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 1800 ps;
    QA <=  ( N4 ) AFTER 2300 ps;
    QB <=  ( N6 ) AFTER 2300 ps;
    QC <=  ( N8 ) AFTER 2300 ps;
    QD <=  ( N10 ) AFTER 2300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC192\ IS PORT(
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
END \74HC192\;

ARCHITECTURE model OF \74HC192\ IS
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
    N1 <= NOT ( CLR ) AFTER 500 ps;
    N2 <= NOT ( LOAD ) AFTER 1000 ps;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ps;
    N4 <= NOT ( L8 OR L9 ) AFTER 0 ps;
    N5 <= NOT ( L10 OR L11 ) AFTER 0 ps;
    N6 <= NOT ( L12 OR L13 OR L14 ) AFTER 0 ps;
    JKFFPC_20 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L19 );
    JKFFPC_21 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L20 );
    JKFFPC_22 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L6 , cl=>L21 );
    JKFFPC_23 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L7 , cl=>L22 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 3100 ps;
    CO <= NOT ( L2 AND N7 AND N13 ) AFTER 3100 ps;
    QA <=  ( N7 ) AFTER 3000 ps;
    QB <=  ( N9 ) AFTER 3000 ps;
    QC <=  ( N11 ) AFTER 3000 ps;
    QD <=  ( N13 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC193\ IS PORT(
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
END \74HC193\;

ARCHITECTURE model OF \74HC193\ IS
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
    N1 <= NOT ( CLR ) AFTER 500 ps;
    N2 <= NOT ( LOAD ) AFTER 1000 ps;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ps;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ps;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ps;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ps;
    JKFFPC_24 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_25 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_26 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_27 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2300 ps, tfall_clk_q=>2300 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 3100 ps;
    CO <= NOT ( L2 AND N7 AND N9 AND N11 AND N13 ) AFTER 3100 ps;
    QA <=  ( N7 ) AFTER 3000 ps;
    QB <=  ( N9 ) AFTER 3000 ps;
    QC <=  ( N11 ) AFTER 3000 ps;
    QD <=  ( N13 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC194\ IS PORT(
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
END \74HC194\;

ARCHITECTURE model OF \74HC194\ IS
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
    N1 <=  ( S0 AND S1 ) AFTER 0 ps;
    N2 <=  ( L2 AND S1 ) AFTER 0 ps;
    N3 <=  ( L1 AND S0 ) AFTER 0 ps;
    N4 <=  ( L1 AND L2 ) AFTER 0 ps;
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
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>800 ps, tfall_clk_q=>800 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>800 ps, tfall_clk_q=>800 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>800 ps, tfall_clk_q=>800 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>800 ps, tfall_clk_q=>800 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK , cl=>CLR );
    QA <=  ( N5 ) AFTER 1600 ps;
    QB <=  ( N6 ) AFTER 1600 ps;
    QC <=  ( N7 ) AFTER 1600 ps;
    QD <=  ( N8 ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC195\ IS PORT(
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
END \74HC195\;

ARCHITECTURE model OF \74HC195\ IS
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
    N1 <= NOT ( \S/L\\\ ) AFTER 0 ps;
    N2 <=  ( \S/L\\\ ) AFTER 0 ps;
    L1 <= NOT ( N3 );
    L2 <=  ( L1 AND N2 AND J );
    L3 <=  ( N2 AND N3 AND K );
    L4 <=  ( N1 AND A );
    L5 <=  ( L2 OR L3 OR L4 );
    L6 <=  ( N2 AND N3 );
    L7 <=  ( N1 AND B );
    L8 <=  ( L6 OR L7 );
    L9 <=  ( N2 AND N4 );
    L10 <=  ( N1 AND C );
    L11 <=  ( L9 OR L10 );
    L12 <=  ( N2 AND N5 );
    L13 <=  ( N1 AND D );
    L14 <=  ( L12 OR L13 );
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>L14 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 1400 ps;
    QB <=  ( N4 ) AFTER 1400 ps;
    QC <=  ( N5 ) AFTER 1400 ps;
    QD <=  ( N6 ) AFTER 1400 ps;
    \Q\\D\\\ <= NOT ( N6 ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC240\ IS PORT(
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
END \74HC240\;

ARCHITECTURE model OF \74HC240\ IS
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
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC240A\ IS PORT(
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
END \74HC240A\;

ARCHITECTURE model OF \74HC240A\ IS
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
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC241\ IS PORT(
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
END \74HC241\;

ARCHITECTURE model OF \74HC241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 2900 ps;
    N2 <=  ( \1A2\ ) AFTER 2900 ps;
    N3 <=  ( \1A3\ ) AFTER 2900 ps;
    N4 <=  ( \1A4\ ) AFTER 2900 ps;
    N5 <=  ( \2A1\ ) AFTER 2900 ps;
    N6 <=  ( \2A2\ ) AFTER 2900 ps;
    N7 <=  ( \2A3\ ) AFTER 2900 ps;
    N8 <=  ( \2A4\ ) AFTER 2900 ps;
    L1 <= NOT ( \1G\ );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC242\ IS PORT(
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
END \74HC242\;

ARCHITECTURE model OF \74HC242\ IS
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
    N1 <= NOT ( A1 ) AFTER 2500 ps;
    N2 <= NOT ( A2 ) AFTER 2500 ps;
    N3 <= NOT ( A3 ) AFTER 2500 ps;
    N4 <= NOT ( A4 ) AFTER 2500 ps;
    N5 <= NOT ( B4 ) AFTER 2500 ps;
    N6 <= NOT ( B3 ) AFTER 2500 ps;
    N7 <= NOT ( B2 ) AFTER 2500 ps;
    N8 <= NOT ( B1 ) AFTER 2500 ps;
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC243\ IS PORT(
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
END \74HC243\;

ARCHITECTURE model OF \74HC243\ IS
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
    N1 <=  ( A1 ) AFTER 2500 ps;
    N2 <=  ( A2 ) AFTER 2500 ps;
    N3 <=  ( A3 ) AFTER 2500 ps;
    N4 <=  ( A4 ) AFTER 2500 ps;
    N5 <=  ( B4 ) AFTER 2500 ps;
    N6 <=  ( B3 ) AFTER 2500 ps;
    N7 <=  ( B2 ) AFTER 2500 ps;
    N8 <=  ( B1 ) AFTER 2500 ps;
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC244\ IS PORT(
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
END \74HC244\;

ARCHITECTURE model OF \74HC244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 2900 ps;
    N2 <=  ( \1A2\ ) AFTER 2900 ps;
    N3 <=  ( \1A3\ ) AFTER 2900 ps;
    N4 <=  ( \1A4\ ) AFTER 2900 ps;
    N5 <=  ( \2A1\ ) AFTER 2900 ps;
    N6 <=  ( \2A2\ ) AFTER 2900 ps;
    N7 <=  ( \2A3\ ) AFTER 2900 ps;
    N8 <=  ( \2A4\ ) AFTER 2900 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC244A\ IS PORT(
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
END \74HC244A\;

ARCHITECTURE model OF \74HC244A\ IS
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
    N1 <=  ( \1A1\ ) AFTER 2900 ps;
    N2 <=  ( \1A2\ ) AFTER 2900 ps;
    N3 <=  ( \1A3\ ) AFTER 2900 ps;
    N4 <=  ( \1A4\ ) AFTER 2900 ps;
    N5 <=  ( \2A1\ ) AFTER 2900 ps;
    N6 <=  ( \2A2\ ) AFTER 2900 ps;
    N7 <=  ( \2A3\ ) AFTER 2900 ps;
    N8 <=  ( \2A4\ ) AFTER 2900 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC245\ IS PORT(
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
END \74HC245\;

ARCHITECTURE model OF \74HC245\ IS
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
    N1 <=  ( A1 ) AFTER 2200 ps;
    N2 <=  ( A2 ) AFTER 2200 ps;
    N3 <=  ( A3 ) AFTER 2200 ps;
    N4 <=  ( A4 ) AFTER 2200 ps;
    N5 <=  ( A5 ) AFTER 2200 ps;
    N6 <=  ( A6 ) AFTER 2200 ps;
    N7 <=  ( A7 ) AFTER 2200 ps;
    N8 <=  ( A8 ) AFTER 2200 ps;
    N9 <=  ( B8 ) AFTER 2200 ps;
    N10 <=  ( B7 ) AFTER 2200 ps;
    N11 <=  ( B6 ) AFTER 2200 ps;
    N12 <=  ( B5 ) AFTER 2200 ps;
    N13 <=  ( B4 ) AFTER 2200 ps;
    N14 <=  ( B3 ) AFTER 2200 ps;
    N15 <=  ( B2 ) AFTER 2200 ps;
    N16 <=  ( B1 ) AFTER 2200 ps;
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC245A\ IS PORT(
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
END \74HC245A\;

ARCHITECTURE model OF \74HC245A\ IS
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
    N1 <=  ( A1 ) AFTER 2200 ps;
    N2 <=  ( A2 ) AFTER 2200 ps;
    N3 <=  ( A3 ) AFTER 2200 ps;
    N4 <=  ( A4 ) AFTER 2200 ps;
    N5 <=  ( A5 ) AFTER 2200 ps;
    N6 <=  ( A6 ) AFTER 2200 ps;
    N7 <=  ( A7 ) AFTER 2200 ps;
    N8 <=  ( A8 ) AFTER 2200 ps;
    N9 <=  ( B8 ) AFTER 2200 ps;
    N10 <=  ( B7 ) AFTER 2200 ps;
    N11 <=  ( B6 ) AFTER 2200 ps;
    N12 <=  ( B5 ) AFTER 2200 ps;
    N13 <=  ( B4 ) AFTER 2200 ps;
    N14 <=  ( B3 ) AFTER 2200 ps;
    N15 <=  ( B2 ) AFTER 2200 ps;
    N16 <=  ( B1 ) AFTER 2200 ps;
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC251\ IS PORT(
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
END \74HC251\;

ARCHITECTURE model OF \74HC251\ IS
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
    N1 <= NOT ( A ) AFTER 400 ps;
    N2 <= NOT ( B ) AFTER 400 ps;
    N3 <= NOT ( C ) AFTER 400 ps;
    L2 <= NOT ( N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <= NOT ( L1 AND N1 AND N2 AND N3 AND D0 );
    L6 <= NOT ( L1 AND L2 AND N2 AND N3 AND D1 );
    L7 <= NOT ( L1 AND L3 AND N1 AND N3 AND D2 );
    L8 <= NOT ( L1 AND L2 AND L3 AND N3 AND D3 );
    L9 <= NOT ( L1 AND L4 AND N1 AND N2 AND D4 );
    L10 <= NOT ( L1 AND L2 AND L4 AND N2 AND D5 );
    L11 <= NOT ( L1 AND L3 AND L4 AND N1 AND D6 );
    L12 <= NOT ( L1 AND L2 AND L3 AND L4 AND D7 );
    L13 <= NOT ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 );
    N4 <= NOT ( L13 ) AFTER 2900 ps;
    N5 <=  ( L13 ) AFTER 3200 ps;
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2600 ps, tfall_i1_o=>2600 ps, tpd_en_o=>3500 ps)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2700 ps, tfall_i1_o=>2700 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC253\ IS PORT(
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
END \74HC253\;

ARCHITECTURE model OF \74HC253\ IS
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
    N1 <= NOT ( B ) AFTER 700 ps;
    N2 <= NOT ( A ) AFTER 700 ps;
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 2300 ps;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 2300 ps;
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC253B\ IS PORT(
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
END \74HC253B\;

ARCHITECTURE model OF \74HC253B\ IS
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
    N1 <= NOT ( B ) AFTER 700 ps;
    N2 <= NOT ( A ) AFTER 700 ps;
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 2300 ps;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 2300 ps;
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC257\ IS PORT(
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
END \74HC257\;

ARCHITECTURE model OF \74HC257\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( \A\\/B\ );
    L3 <= NOT ( L2 );
    L4 <=  ( L2 AND \1A\ );
    L5 <=  ( L3 AND \1B\ );
    L6 <=  ( L2 AND \2A\ );
    L7 <=  ( L3 AND \2B\ );
    L8 <=  ( L2 AND \3A\ );
    L9 <=  ( L3 AND \3B\ );
    L10 <=  ( L2 AND \4A\ );
    L11 <=  ( L3 AND \4B\ );
    N1 <=  ( L4 OR L5 ) AFTER 2900 ps;
    N2 <=  ( L6 OR L7 ) AFTER 2900 ps;
    N3 <=  ( L8 OR L9 ) AFTER 2900 ps;
    N4 <=  ( L10 OR L11 ) AFTER 2900 ps;
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y\ , i1=>N1 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y\ , i1=>N2 , en=>L1 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\3Y\ , i1=>N3 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\4Y\ , i1=>N4 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC258\ IS PORT(
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
END \74HC258\;

ARCHITECTURE model OF \74HC258\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 400 ps;
    L2 <= NOT ( N1 );
    L3 <=  ( N1 AND \1A\ );
    L4 <=  ( L2 AND \1B\ );
    L5 <=  ( N1 AND \2A\ );
    L6 <=  ( L2 AND \2B\ );
    L7 <=  ( N1 AND \3A\ );
    L8 <=  ( L2 AND \3B\ );
    L9 <=  ( N1 AND \4A\ );
    L10 <=  ( L2 AND \4B\ );
    N2 <=  ( L3 OR L4 ) AFTER 2500 ps;
    N3 <=  ( L5 OR L6 ) AFTER 2500 ps;
    N4 <=  ( L7 OR L8 ) AFTER 2500 ps;
    N5 <=  ( L9 OR L10 ) AFTER 2500 ps;
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC259\ IS PORT(
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
END \74HC259\;

ARCHITECTURE model OF \74HC259\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    N1 <= NOT ( S2 ) AFTER 300 ps;
    N2 <= NOT ( S1 ) AFTER 300 ps;
    N3 <= NOT ( S0 ) AFTER 300 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( G );
    L5 <=  ( L1 AND L2 AND L3 AND L4 );
    L6 <=  ( L1 AND L2 AND L4 AND N3 );
    L7 <=  ( L1 AND L3 AND L4 AND N2 );
    L8 <=  ( L1 AND L4 AND N2 AND N3 );
    L9 <=  ( L2 AND L3 AND L4 AND N1 );
    L10 <=  ( L2 AND L4 AND N1 AND N3 );
    L11 <=  ( L3 AND L4 AND N1 AND N2 );
    L12 <=  ( L4 AND N1 AND N2 AND N3 );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q7 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q6 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q5 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q4 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q3 , d=>D , enable=>L9 , pr=>ONE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q2 , d=>D , enable=>L10 , pr=>ONE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q1 , d=>D , enable=>L11 , pr=>ONE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>Q0 , d=>D , enable=>L12 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC266\ IS PORT(
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
END \74HC266\;

ARCHITECTURE model OF \74HC266\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 2100 ps;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 2100 ps;
    O_C <= NOT ( I0_C XOR I1_C ) AFTER 2100 ps;
    O_D <= NOT ( I0_D XOR I1_D ) AFTER 2100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC266A\ IS PORT(
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
END \74HC266A\;

ARCHITECTURE model OF \74HC266A\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 2100 ps;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 2100 ps;
    O_C <= NOT ( I0_C XOR I1_C ) AFTER 2100 ps;
    O_D <= NOT ( I0_D XOR I1_D ) AFTER 2100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC273\ IS PORT(
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
END \74HC273\;

ARCHITECTURE model OF \74HC273\ IS

    BEGIN
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2700 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC280\ IS PORT(
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
END \74HC280\;

ARCHITECTURE model OF \74HC280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( G XOR H XOR I XOR A XOR B XOR C XOR D XOR E XOR F );
    EVEN <= NOT ( L1 ) AFTER 3500 ps;
    ODD <=  ( L1 ) AFTER 3500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC283\ IS PORT(
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
END \74HC283\;

ARCHITECTURE model OF \74HC283\ IS
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
    N1 <= NOT ( C0 ) AFTER 1500 ps;
    N2 <= NOT ( C0 ) AFTER 1100 ps;
    N3 <= NOT ( A1 OR B1 ) AFTER 3000 ps;
    N4 <= NOT ( A1 AND B1 ) AFTER 3000 ps;
    N5 <= NOT ( B2 OR A2 ) AFTER 3000 ps;
    N6 <= NOT ( B2 AND A2 ) AFTER 3000 ps;
    N7 <= NOT ( A3 OR B3 ) AFTER 3000 ps;
    N8 <= NOT ( A3 AND B3 ) AFTER 3000 ps;
    N9 <= NOT ( B4 OR A4 ) AFTER 3000 ps;
    N10 <= NOT ( B4 AND A4 ) AFTER 3000 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N3 );
    L3 <=  ( L2 AND N4 );
    L4 <=  ( N1 AND N4 );
    L5 <= NOT ( N5 );
    L6 <=  ( L5 AND N6 );
    L7 <=  ( N1 AND N4 AND N6 );
    L8 <=  ( N3 AND N6 );
    L9 <= NOT ( N7 );
    L10 <=  ( L9 AND N8 );
    L11 <=  ( N1 AND N4 AND N6 AND N8 );
    L12 <=  ( N3 AND N6 AND N8 );
    L13 <=  ( N5 AND N8 );
    L14 <= NOT ( N9 );
    L15 <=  ( L14 AND N10 );
    L16 <=  ( N2 AND N4 AND N6 AND N8 AND N10 );
    L17 <=  ( N3 AND N6 AND N8 AND N10 );
    L18 <=  ( N5 AND N8 AND N10 );
    L19 <=  ( N7 AND N10 );
    L20 <= NOT ( L4 OR N3 );
    L21 <= NOT ( L7 OR L8 OR N5 );
    L22 <= NOT ( L11 OR L12 OR L13 OR N7 );
    S1 <=  ( L1 XOR L3 ) AFTER 3200 ps;
    S2 <=  ( L6 XOR L20 ) AFTER 3200 ps;
    S3 <=  ( L10 XOR L21 ) AFTER 3200 ps;
    S4 <=  ( L15 XOR L22 ) AFTER 3200 ps;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N9 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC298\ IS PORT(
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
END \74HC298\;

ARCHITECTURE model OF \74HC298\ IS
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
    N1 <= NOT ( CLK ) AFTER 0 ps;
    L1 <= NOT ( WS );
    L2 <=  ( L1 AND A1 );
    L3 <=  ( A2 AND WS );
    L4 <=  ( L1 AND B1 );
    L5 <=  ( B2 AND WS );
    L6 <=  ( L1 AND C1 );
    L7 <=  ( C2 AND WS );
    L8 <=  ( L1 AND D1 );
    L9 <=  ( D2 AND WS );
    L10 <=  ( L2 OR L3 );
    L11 <=  ( L4 OR L5 );
    L12 <=  ( L6 OR L7 );
    L13 <=  ( L8 OR L9 );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>QA , d=>L10 , clk=>N1 );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>QB , d=>L11 , clk=>N1 );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>QC , d=>L12 , clk=>N1 );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>QD , d=>L13 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC299\ IS PORT(
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
END \74HC299\;

ARCHITECTURE model OF \74HC299\ IS
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
    N5 <= NOT ( S0 AND S1 ) AFTER 0 ps;
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
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLR );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLR );
    N15 <=  ( N7 ) AFTER 1000 ps;
    N16 <=  ( N8 ) AFTER 1000 ps;
    N17 <=  ( N9 ) AFTER 1000 ps;
    N18 <=  ( N10 ) AFTER 1000 ps;
    N19 <=  ( N11 ) AFTER 1000 ps;
    N20 <=  ( N12 ) AFTER 1000 ps;
    N21 <=  ( N13 ) AFTER 1000 ps;
    N22 <=  ( N14 ) AFTER 1000 ps;
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\A/QA\ , i1=>N15 , en=>L3 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\B/QB\ , i1=>N16 , en=>L3 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\C/QC\ , i1=>N17 , en=>L3 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\D/QD\ , i1=>N18 , en=>L3 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\E/QE\ , i1=>N19 , en=>L3 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\F/QF\ , i1=>N20 , en=>L3 );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\G/QG\ , i1=>N21 , en=>L3 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>\H/QH\ , i1=>N22 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 1000 ps;
    \Q\\H\\\ <=  ( N14 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC352\ IS PORT(
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
END \74HC352\;

ARCHITECTURE model OF \74HC352\ IS
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

    BEGIN
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    N1 <= NOT ( B ) AFTER 200 ps;
    N2 <= NOT ( A ) AFTER 200 ps;
    L3 <= NOT ( N1 );
    L4 <= NOT ( N2 );
    N3 <=  ( L1 AND N1 AND N2 AND \1C0\ ) AFTER 1000 ps;
    N4 <=  ( L1 AND L4 AND N1 AND \1C1\ ) AFTER 1000 ps;
    N5 <=  ( L1 AND L3 AND N2 AND \1C2\ ) AFTER 1000 ps;
    N6 <=  ( L1 AND L3 AND L4 AND \1C3\ ) AFTER 1000 ps;
    N7 <=  ( L2 AND N1 AND N2 AND \2C0\ ) AFTER 1000 ps;
    N8 <=  ( L2 AND L4 AND N1 AND \2C1\ ) AFTER 1000 ps;
    N9 <=  ( L2 AND L3 AND N2 AND \2C2\ ) AFTER 1000 ps;
    N10 <=  ( L2 AND L3 AND L4 AND \2C3\ ) AFTER 1000 ps;
    \1Y\ <= NOT ( N3 OR N4 OR N5 OR N6 ) AFTER 3400 ps;
    \2Y\ <= NOT ( N7 OR N8 OR N9 OR N10 ) AFTER 3400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC353\ IS PORT(
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
END \74HC353\;

ARCHITECTURE model OF \74HC353\ IS
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
    N1 <= NOT ( B ) AFTER 200 ps;
    N2 <= NOT ( A ) AFTER 200 ps;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( \1G\ );
    L4 <= NOT ( \2G\ );
    L5 <=  ( L3 AND N1 AND N2 AND \1C0\ );
    L6 <=  ( L2 AND L3 AND N1 AND \1C1\ );
    L7 <=  ( L1 AND L3 AND N2 AND \1C2\ );
    L8 <=  ( L1 AND L2 AND L3 AND \1C3\ );
    L9 <=  ( L4 AND N1 AND N2 AND \2C0\ );
    L10 <=  ( L2 AND L4 AND N1 AND \2C1\ );
    L11 <=  ( L1 AND L4 AND N2 AND \2C2\ );
    L12 <=  ( L1 AND L2 AND L4 AND \2C3\ );
    N3 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 4400 ps;
    N4 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 4400 ps;
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3400 ps, tfall_i1_o=>3400 ps, tpd_en_o=>3400 ps)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L3 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3400 ps, tfall_i1_o=>3400 ps, tpd_en_o=>3400 ps)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC354\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
G3 : IN  std_logic;
SC : IN  std_logic;
DC : IN  std_logic;
Y : OUT  std_logic;
W : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC354\;

ARCHITECTURE model OF \74HC354\ IS
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
    L1 <= NOT ( G3 );
    N1 <= NOT ( SC ) AFTER 600 ps;
    L2 <= NOT ( L1 OR G1 OR G2 );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N2 , d=>S0 , enable=>N1 );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N3 , d=>S1 , enable=>N1 );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N4 , d=>S2 , enable=>N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <= NOT ( N4 );
    L6 <= NOT ( DC );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D0 , enable=>L6 );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D1 , enable=>L6 );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D2 , enable=>L6 );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D3 , enable=>L6 );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N9 , d=>D4 , enable=>L6 );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N10 , d=>D5 , enable=>L6 );
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N11 , d=>D6 , enable=>L6 );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N12 , d=>D7 , enable=>L6 );
    L7 <=  ( L3 AND L4 AND L5 AND N5 );
    L8 <=  ( L4 AND L5 AND N2 AND N6 );
    L9 <=  ( L3 AND L5 AND N3 AND N7 );
    L10 <=  ( L5 AND N2 AND N3 AND N8 );
    L11 <=  ( L3 AND L4 AND N4 AND N9 );
    L12 <=  ( L4 AND N2 AND N4 AND N10 );
    L13 <=  ( L3 AND N3 AND N4 AND N11 );
    L14 <=  ( N2 AND N3 AND N4 AND N12 );
    N13 <= NOT ( L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 ) AFTER 2000 ps;
    N14 <= NOT ( N13 ) AFTER 1900 ps;
    N15 <=  ( N13 ) AFTER 1900 ps;
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>4100 ps)
      PORT MAP  (O=>Y , i1=>N14 , en=>L2 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>4100 ps)
      PORT MAP  (O=>W , i1=>N15 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC356\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
G3 : IN  std_logic;
SC : IN  std_logic;
CLK : IN  std_logic;
Y : OUT  std_logic;
W : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC356\;

ARCHITECTURE model OF \74HC356\ IS
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
    L1 <= NOT ( G3 );
    N1 <= NOT ( SC ) AFTER 1200 ps;
    L2 <= NOT ( L1 OR G1 OR G2 );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2800 ps, tfall_clk_q=>2800 ps)
      PORT MAP  (q=>N2 , d=>S0 , enable=>N1 );
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2800 ps, tfall_clk_q=>2800 ps)
      PORT MAP  (q=>N3 , d=>S1 , enable=>N1 );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2800 ps, tfall_clk_q=>2800 ps)
      PORT MAP  (q=>N4 , d=>S2 , enable=>N1 );
    L3 <= NOT ( N2 );
    L4 <= NOT ( N3 );
    L5 <= NOT ( N4 );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D0 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D1 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D2 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D3 , clk=>CLK );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N9 , d=>D4 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N10 , d=>D5 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N11 , d=>D6 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N12 , d=>D7 , clk=>CLK );
    L6 <=  ( L3 AND L4 AND L5 AND N5 );
    L7 <=  ( L4 AND L5 AND N2 AND N6 );
    L8 <=  ( L3 AND L5 AND N3 AND N7 );
    L9 <=  ( L5 AND N2 AND N3 AND N8 );
    L10 <=  ( L3 AND L4 AND N4 AND N9 );
    L11 <=  ( L4 AND N2 AND N4 AND N10 );
    L12 <=  ( L3 AND N3 AND N4 AND N11 );
    L13 <=  ( N2 AND N3 AND N4 AND N12 );
    N13 <= NOT ( L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 ) AFTER 3000 ps;
    N14 <= NOT ( N13 ) AFTER 2300 ps;
    N15 <=  ( N13 ) AFTER 2300 ps;
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>4100 ps)
      PORT MAP  (O=>Y , i1=>N14 , en=>L2 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>4100 ps)
      PORT MAP  (O=>W , i1=>N15 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC365\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC365\;

ARCHITECTURE model OF \74HC365\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 2200 ps;
    N2 <=  ( A2 ) AFTER 2200 ps;
    N3 <=  ( A3 ) AFTER 2200 ps;
    N4 <=  ( A4 ) AFTER 2200 ps;
    N5 <=  ( A5 ) AFTER 2200 ps;
    N6 <=  ( A6 ) AFTER 2200 ps;
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC366\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC366\;

ARCHITECTURE model OF \74HC366\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <= NOT ( A1 ) AFTER 1800 ps;
    N2 <= NOT ( A2 ) AFTER 1800 ps;
    N3 <= NOT ( A3 ) AFTER 1800 ps;
    N4 <= NOT ( A4 ) AFTER 1800 ps;
    N5 <= NOT ( A5 ) AFTER 1800 ps;
    N6 <= NOT ( A6 ) AFTER 1800 ps;
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5500 ps, tfall_i1_o=>5500 ps, tpd_en_o=>5500 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC367\ IS PORT(
\1A1\ : IN  std_logic;
\1A2\ : IN  std_logic;
\1A3\ : IN  std_logic;
\1A4\ : IN  std_logic;
\2A1\ : IN  std_logic;
\2A2\ : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
\1Y1\ : OUT  std_logic;
\1Y2\ : OUT  std_logic;
\1Y3\ : OUT  std_logic;
\1Y4\ : OUT  std_logic;
\2Y1\ : OUT  std_logic;
\2Y2\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC367\;

ARCHITECTURE model OF \74HC367\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    N1 <=  ( \1A1\ ) AFTER 2200 ps;
    N2 <=  ( \1A2\ ) AFTER 2200 ps;
    N3 <=  ( \1A3\ ) AFTER 2200 ps;
    N4 <=  ( \1A4\ ) AFTER 2200 ps;
    N5 <=  ( \2A1\ ) AFTER 2200 ps;
    N6 <=  ( \2A2\ ) AFTER 2200 ps;
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC368\ IS PORT(
\1A1\ : IN  std_logic;
\1A2\ : IN  std_logic;
\1A3\ : IN  std_logic;
\1A4\ : IN  std_logic;
\2A1\ : IN  std_logic;
\2A2\ : IN  std_logic;
\1G\ : IN  std_logic;
\2G\ : IN  std_logic;
\1Y1\ : OUT  std_logic;
\1Y2\ : OUT  std_logic;
\1Y3\ : OUT  std_logic;
\1Y4\ : OUT  std_logic;
\2Y1\ : OUT  std_logic;
\2Y2\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC368\;

ARCHITECTURE model OF \74HC368\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    N1 <= NOT ( \1A1\ ) AFTER 1800 ps;
    N2 <= NOT ( \1A2\ ) AFTER 1800 ps;
    N3 <= NOT ( \1A3\ ) AFTER 1800 ps;
    N4 <= NOT ( \1A4\ ) AFTER 1800 ps;
    N5 <= NOT ( \2A1\ ) AFTER 1800 ps;
    N6 <= NOT ( \2A2\ ) AFTER 1800 ps;
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4700 ps, tfall_i1_o=>4700 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC373\ IS PORT(
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
END \74HC373\;

ARCHITECTURE model OF \74HC373\ IS
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
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_35 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC374\ IS PORT(
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
END \74HC374\;

ARCHITECTURE model OF \74HC374\ IS
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
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC375\ IS PORT(
\1D\ : IN  std_logic;
\2D\ : IN  std_logic;
\3D\ : IN  std_logic;
\4D\ : IN  std_logic;
\1C2C\ : IN  std_logic;
\3C4C\ : IN  std_logic;
\1Q\ : OUT  std_logic;
\1\\Q\\\ : OUT  std_logic;
\2Q\ : OUT  std_logic;
\2\\Q\\\ : OUT  std_logic;
\3Q\ : OUT  std_logic;
\3\\Q\\\ : OUT  std_logic;
\4Q\ : OUT  std_logic;
\4\\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC375\;

ARCHITECTURE model OF \74HC375\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( \1D\ );
    L2 <= NOT ( \2D\ );
    L3 <= NOT ( \3D\ );
    L4 <= NOT ( \4D\ );
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\1\\Q\\\ , d=>L1 , enable=>\1C2C\ );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\2\\Q\\\ , d=>L2 , enable=>\1C2C\ );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\3\\Q\\\ , d=>L3 , enable=>\3C4C\ );
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\4\\Q\\\ , d=>L4 , enable=>\3C4C\ );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\1Q\ , d=>\1D\ , enable=>\1C2C\ );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\2Q\ , d=>\2D\ , enable=>\1C2C\ );
    DLATCH_43 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\3Q\ , d=>\3D\ , enable=>\3C4C\ );
    DLATCH_44 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>\4Q\ , d=>\4D\ , enable=>\3C4C\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC377\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
G : IN  std_logic;
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
END \74HC377\;

ARCHITECTURE model OF \74HC377\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    N1 <=  ( L1 AND CLK ) AFTER 0 ps;
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N1 );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N1 );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N1 );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N1 );
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N1 );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N1 );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>N1 );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC378\ IS PORT(
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
END \74HC378\;

ARCHITECTURE model OF \74HC378\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    N1 <=  ( L1 AND CLK ) AFTER 0 ps;
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N1 );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N1 );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N1 );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N1 );
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N1 );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC379\ IS PORT(
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
END \74HC379\;

ARCHITECTURE model OF \74HC379\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    N1 <=  ( L1 AND CLK ) AFTER 0 ps;
    DFF_0 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>N1 );
    DFF_1 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>N1 );
    DFF_2 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>N1 );
    DFF_3 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC390\ IS PORT(
CKA_A : IN  std_logic;
CKA_B : IN  std_logic;
CKB_A : IN  std_logic;
CKB_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
QA_A : OUT  std_logic;
QA_B : OUT  std_logic;
QB_A : OUT  std_logic;
QB_B : OUT  std_logic;
QC_A : OUT  std_logic;
QC_B : OUT  std_logic;
QD_A : OUT  std_logic;
QD_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC390\;

ARCHITECTURE model OF \74HC390\ IS
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
    L1 <= NOT ( CLR_A );
    L2 <= NOT ( CLR_B );
    L3 <= NOT ( N7 );
    L4 <= NOT ( N8 );
    L5 <= NOT ( N10 );
    L6 <= NOT ( N11 );
    L7 <= NOT ( N12 );
    L8 <= NOT ( N13 );
    L9 <= NOT ( N15 );
    L10 <= NOT ( N16 );
    L11 <=  ( L4 AND L6 );
    L12 <=  ( L5 AND L6 );
    L13 <= NOT ( L11 OR L12 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L9 AND L10 );
    L16 <= NOT ( L14 OR L15 );
    N1 <= NOT ( CKA_A ) AFTER 0 ps;
    N2 <= NOT ( CKA_B ) AFTER 0 ps;
    N3 <= NOT ( L6 AND CKB_A ) AFTER 0 ps;
    N4 <= NOT ( L10 AND CKB_B ) AFTER 0 ps;
    N5 <= NOT ( L13 AND CKB_A ) AFTER 0 ps;
    N6 <= NOT ( L16 AND CKB_B ) AFTER 0 ps;
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>L3 , clk=>N1 , cl=>L1 );
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP (q=>N8 , qNot=>N9 , d=>L4 , clk=>N3 , cl=>L1 );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>L5 , clk=>N9 , cl=>L1 );
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>L6 , clk=>N5 , cl=>L1 );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N12 , d=>L7 , clk=>N2 , cl=>L2 );
    DFFC_5 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP (q=>N13 , qNot=>N14 , d=>L8 , clk=>N4 , cl=>L2 );
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , cl=>L2 );
    DQFFC_63 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>L10 , clk=>N6 , cl=>L2 );
    QA_A <=  ( N7 ) AFTER 1000 ps;
    QB_A <=  ( N8 ) AFTER 1000 ps;
    QC_A <=  ( N10 ) AFTER 1000 ps;
    QD_A <=  ( N11 ) AFTER 1000 ps;
    QA_B <=  ( N12 ) AFTER 1000 ps;
    QB_B <=  ( N13 ) AFTER 1000 ps;
    QC_B <=  ( N15 ) AFTER 1000 ps;
    QD_B <=  ( N16 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC393\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
QA_A : OUT  std_logic;
QA_B : OUT  std_logic;
QB_A : OUT  std_logic;
QB_B : OUT  std_logic;
QC_A : OUT  std_logic;
QC_B : OUT  std_logic;
QD_A : OUT  std_logic;
QD_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC393\;

ARCHITECTURE model OF \74HC393\ IS
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

    BEGIN
    N1 <= NOT ( A_A ) AFTER 0 ps;
    N2 <= NOT ( A_B ) AFTER 0 ps;
    L1 <= NOT ( CLR_A );
    L2 <= NOT ( CLR_B );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( N5 );
    L6 <= NOT ( N6 );
    L7 <= NOT ( N7 );
    L8 <= NOT ( N8 );
    L9 <= NOT ( N9 );
    L10 <= NOT ( N10 );
    DQFFP_0 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>L3 , clk=>N1 , pr=>L1 );
    DQFFP_1 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>L4 , clk=>N3 , pr=>L1 );
    DQFFP_2 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N5 , d=>L5 , clk=>N4 , pr=>L1 );
    DQFFP_3 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>800 ps, tfall_clk_q=>800 ps)
      PORT MAP  (q=>N6 , d=>L6 , clk=>N5 , pr=>L1 );
    DQFFP_4 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>L7 , clk=>N2 , pr=>L2 );
    DQFFP_5 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>L8 , clk=>N7 , pr=>L2 );
    DQFFP_6 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N9 , d=>L9 , clk=>N8 , pr=>L2 );
    DQFFP_7 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>800 ps, tfall_clk_q=>800 ps)
      PORT MAP  (q=>N10 , d=>L10 , clk=>N9 , pr=>L2 );
    QA_A <= NOT ( N3 ) AFTER 1000 ps;
    QB_A <= NOT ( N4 ) AFTER 1000 ps;
    QC_A <= NOT ( N5 ) AFTER 1000 ps;
    QD_A <= NOT ( N6 ) AFTER 1000 ps;
    QA_B <= NOT ( N7 ) AFTER 1000 ps;
    QB_B <= NOT ( N8 ) AFTER 1000 ps;
    QC_B <= NOT ( N9 ) AFTER 1000 ps;
    QD_B <= NOT ( N10 ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC490\ IS PORT(
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
SET9_A : IN  std_logic;
SET9_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
QA_A : OUT  std_logic;
QA_B : OUT  std_logic;
QB_A : OUT  std_logic;
QB_B : OUT  std_logic;
QC_A : OUT  std_logic;
QC_B : OUT  std_logic;
QD_A : OUT  std_logic;
QD_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC490\;

ARCHITECTURE model OF \74HC490\ IS
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
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( SET9_A );
    L2 <= NOT ( SET9_B );
    L3 <= NOT ( CLR_A );
    L4 <= NOT ( CLR_B );
    L5 <=  ( L1 AND L3 );
    L6 <=  ( L2 AND L4 );
    L7 <= NOT ( N9 );
    L8 <= NOT ( N10 );
    L9 <= NOT ( N11 );
    L10 <= NOT ( N12 );
    L11 <= NOT ( N13 );
    L12 <= NOT ( N14 );
    L13 <= NOT ( N15 );
    L14 <= NOT ( N16 );
    L15 <=  ( L8 AND L10 );
    L16 <=  ( L9 AND L10 );
    L17 <=  ( L12 AND L14 );
    L18 <=  ( L13 AND L14 );
    L19 <= NOT ( L15 OR L16 );
    L20 <= NOT ( L17 OR L18 );
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    N3 <= NOT ( L10 AND N9 ) AFTER 0 ps;
    N4 <= NOT ( L19 AND N9 ) AFTER 0 ps;
    N5 <= NOT ( L14 AND N13 ) AFTER 0 ps;
    N6 <= NOT ( L20 AND N13 ) AFTER 0 ps;
    N7 <= NOT ( N10 ) AFTER 0 ps;
    N8 <= NOT ( N14 ) AFTER 0 ps;
    DQFFPC_7 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N9 , d=>L7 , clk=>N1 , pr=>L1 , cl=>L3 );
    DQFFC_64 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>L8 , clk=>N3 , cl=>L5 );
    DQFFC_65 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N11 , d=>L9 , clk=>N7 , cl=>L5 );
    DQFFPC_8 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N12 , d=>L10 , clk=>N4 , pr=>L1 , cl=>L3 );
    DQFFPC_9 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N13 , d=>L11 , clk=>N2 , pr=>L2 , cl=>L4 );
    DQFFC_66 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N14 , d=>L12 , clk=>N5 , cl=>L6 );
    DQFFC_67 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N15 , d=>L13 , clk=>N8 , cl=>L6 );
    DQFFPC_10 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N16 , d=>L14 , clk=>N6 , pr=>L2 , cl=>L4 );
    QA_A <=  ( N9 ) AFTER 1800 ps;
    QB_A <=  ( N10 ) AFTER 1800 ps;
    QC_A <=  ( N11 ) AFTER 1800 ps;
    QD_A <=  ( N12 ) AFTER 1800 ps;
    QA_B <=  ( N13 ) AFTER 1800 ps;
    QB_B <=  ( N14 ) AFTER 1800 ps;
    QC_B <=  ( N15 ) AFTER 1800 ps;
    QD_B <=  ( N16 ) AFTER 1800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC521\ IS PORT(
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
END \74HC521\;

ARCHITECTURE model OF \74HC521\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 1000 ps;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 1000 ps;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 1000 ps;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 1000 ps;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 1000 ps;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 1000 ps;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 1000 ps;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 1000 ps;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC533\ IS PORT(
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
END \74HC533\;

ARCHITECTURE model OF \74HC533\ IS
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
    DLATCH_45 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_46 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_47 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_48 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_49 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_50 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_51 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_52 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC534\ IS PORT(
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
END \74HC534\;

ARCHITECTURE model OF \74HC534\ IS
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
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC540\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
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
END \74HC540\;

ARCHITECTURE model OF \74HC540\ IS
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
    L1 <= NOT ( G1 OR G2 );
    N1 <= NOT ( A1 ) AFTER 1800 ps;
    N2 <= NOT ( A2 ) AFTER 1800 ps;
    N3 <= NOT ( A3 ) AFTER 1800 ps;
    N4 <= NOT ( A4 ) AFTER 1800 ps;
    N5 <= NOT ( A5 ) AFTER 1800 ps;
    N6 <= NOT ( A6 ) AFTER 1800 ps;
    N7 <= NOT ( A7 ) AFTER 1800 ps;
    N8 <= NOT ( A8 ) AFTER 1800 ps;
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC541\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
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
END \74HC541\;

ARCHITECTURE model OF \74HC541\ IS
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
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 2000 ps;
    N2 <=  ( A2 ) AFTER 2000 ps;
    N3 <=  ( A3 ) AFTER 2000 ps;
    N4 <=  ( A4 ) AFTER 2000 ps;
    N5 <=  ( A5 ) AFTER 2000 ps;
    N6 <=  ( A6 ) AFTER 2000 ps;
    N7 <=  ( A7 ) AFTER 2000 ps;
    N8 <=  ( A8 ) AFTER 2000 ps;
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC563\ IS PORT(
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
END \74HC563\;

ARCHITECTURE model OF \74HC563\ IS
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
    DLATCH_53 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_54 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_55 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_56 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_57 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_58 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_59 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_60 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC564\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
OC : IN  std_logic;
CLK : IN  std_logic;
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
END \74HC564\;

ARCHITECTURE model OF \74HC564\ IS
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
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_33 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_34 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_35 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC573\ IS PORT(
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
END \74HC573\;

ARCHITECTURE model OF \74HC573\ IS
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
    DLATCH_61 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_62 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_63 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_64 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_65 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_66 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_67 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_68 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC574\ IS PORT(
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
END \74HC574\;

ARCHITECTURE model OF \74HC574\ IS
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
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC590\ IS PORT(
CCLK : IN  std_logic;
CCLKEN : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC590\;

ARCHITECTURE model OF \74HC590\ IS
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
    L1 <= NOT ( G );
    L2 <= NOT ( CCLKEN );
    L3 <= NOT ( N1 );
    L4 <= NOT ( N9 );
    L5 <= NOT ( N10 );
    L6 <= NOT ( N11 );
    L7 <= NOT ( N12 );
    L8 <= NOT ( N13 );
    L9 <= NOT ( N14 );
    L10 <= NOT ( N15 );
    L11 <= NOT ( N16 );
    DLATCH_69 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N1 , d=>CCLK , enable=>L2 );
    N2 <= NOT ( L3 AND N9 ) AFTER 0 ps;
    N3 <= NOT ( L3 AND N9 AND N10 ) AFTER 0 ps;
    N4 <= NOT ( L3 AND N9 AND N10 AND N11 ) AFTER 0 ps;
    N5 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 ) AFTER 0 ps;
    N6 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 AND N13 ) AFTER 0 ps;
    N7 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 ) AFTER 0 ps;
    N8 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 ) AFTER 0 ps;
    DQFFC_68 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N9 , d=>L4 , clk=>N1 , cl=>CCLR );
    DQFFC_69 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N10 , d=>L5 , clk=>N2 , cl=>CCLR );
    DQFFC_70 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N11 , d=>L6 , clk=>N3 , cl=>CCLR );
    DQFFC_71 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N12 , d=>L7 , clk=>N4 , cl=>CCLR );
    DQFFC_72 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N13 , d=>L8 , clk=>N5 , cl=>CCLR );
    DQFFC_73 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N14 , d=>L9 , clk=>N6 , cl=>CCLR );
    DQFFC_74 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N15 , d=>L10 , clk=>N7 , cl=>CCLR );
    DQFFC_75 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N16 , d=>L11 , clk=>N8 , cl=>CCLR );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N18 , d=>N10 , clk=>RCLK );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N19 , d=>N11 , clk=>RCLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N20 , d=>N12 , clk=>RCLK );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N21 , d=>N13 , clk=>RCLK );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N22 , d=>N14 , clk=>RCLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N23 , d=>N15 , clk=>RCLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N24 , d=>N16 , clk=>RCLK );
    N25 <=  ( N17 ) AFTER 500 ps;
    N26 <=  ( N18 ) AFTER 500 ps;
    N27 <=  ( N19 ) AFTER 500 ps;
    N28 <=  ( N20 ) AFTER 500 ps;
    N29 <=  ( N21 ) AFTER 500 ps;
    N30 <=  ( N22 ) AFTER 500 ps;
    N31 <=  ( N23 ) AFTER 500 ps;
    N32 <=  ( N24 ) AFTER 500 ps;
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QA , i1=>N25 , en=>L1 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QB , i1=>N26 , en=>L1 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QC , i1=>N27 , en=>L1 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QD , i1=>N28 , en=>L1 );
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QE , i1=>N29 , en=>L1 );
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QF , i1=>N30 , en=>L1 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QG , i1=>N31 , en=>L1 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QH , i1=>N32 , en=>L1 );
    RCO <= NOT ( N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 AND N16 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC590A\ IS PORT(
CCLK : IN  std_logic;
CCLKEN : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC590A\;

ARCHITECTURE model OF \74HC590A\ IS
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
    L1 <= NOT ( G );
    L2 <= NOT ( CCLKEN );
    L3 <= NOT ( N1 );
    L4 <= NOT ( N9 );
    L5 <= NOT ( N10 );
    L6 <= NOT ( N11 );
    L7 <= NOT ( N12 );
    L8 <= NOT ( N13 );
    L9 <= NOT ( N14 );
    L10 <= NOT ( N15 );
    L11 <= NOT ( N16 );
    DLATCH_70 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>300 ps, tfall_clk_q=>300 ps)
      PORT MAP  (q=>N1 , d=>CCLK , enable=>L2 );
    N2 <= NOT ( L3 AND N9 ) AFTER 0 ps;
    N3 <= NOT ( L3 AND N9 AND N10 ) AFTER 0 ps;
    N4 <= NOT ( L3 AND N9 AND N10 AND N11 ) AFTER 0 ps;
    N5 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 ) AFTER 0 ps;
    N6 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 AND N13 ) AFTER 0 ps;
    N7 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 ) AFTER 0 ps;
    N8 <= NOT ( L3 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 ) AFTER 0 ps;
    DQFFC_76 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N9 , d=>L4 , clk=>N1 , cl=>CCLR );
    DQFFC_77 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N10 , d=>L5 , clk=>N2 , cl=>CCLR );
    DQFFC_78 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N11 , d=>L6 , clk=>N3 , cl=>CCLR );
    DQFFC_79 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N12 , d=>L7 , clk=>N4 , cl=>CCLR );
    DQFFC_80 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N13 , d=>L8 , clk=>N5 , cl=>CCLR );
    DQFFC_81 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N14 , d=>L9 , clk=>N6 , cl=>CCLR );
    DQFFC_82 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N15 , d=>L10 , clk=>N7 , cl=>CCLR );
    DQFFC_83 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N16 , d=>L11 , clk=>N8 , cl=>CCLR );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N18 , d=>N10 , clk=>RCLK );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N19 , d=>N11 , clk=>RCLK );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N20 , d=>N12 , clk=>RCLK );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N21 , d=>N13 , clk=>RCLK );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N22 , d=>N14 , clk=>RCLK );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N23 , d=>N15 , clk=>RCLK );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N24 , d=>N16 , clk=>RCLK );
    N25 <=  ( N17 ) AFTER 500 ps;
    N26 <=  ( N18 ) AFTER 500 ps;
    N27 <=  ( N19 ) AFTER 500 ps;
    N28 <=  ( N20 ) AFTER 500 ps;
    N29 <=  ( N21 ) AFTER 500 ps;
    N30 <=  ( N22 ) AFTER 500 ps;
    N31 <=  ( N23 ) AFTER 500 ps;
    N32 <=  ( N24 ) AFTER 500 ps;
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QA , i1=>N25 , en=>L1 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QB , i1=>N26 , en=>L1 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QC , i1=>N27 , en=>L1 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QD , i1=>N28 , en=>L1 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QE , i1=>N29 , en=>L1 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QF , i1=>N30 , en=>L1 );
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QG , i1=>N31 , en=>L1 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3100 ps, tfall_i1_o=>3100 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>QH , i1=>N32 , en=>L1 );
    RCO <= NOT ( N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 AND N16 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC595\ IS PORT(
SER : IN  std_logic;
SRCLK : IN  std_logic;
SRCLR : IN  std_logic;
RCLK : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC595\;

ARCHITECTURE model OF \74HC595\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    DQFFC_84 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>SER , clk=>SRCLK , cl=>SRCLR );
    DQFFC_85 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>N1 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_86 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_87 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_88 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_89 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_90 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_91 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>SRCLR );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N9 , d=>N1 , clk=>RCLK );
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK );
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK );
    \Q\\H\\\ <=  ( N8 ) AFTER 3200 ps;
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QA , i1=>N9 , en=>L1 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QB , i1=>N10 , en=>L1 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QC , i1=>N11 , en=>L1 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QD , i1=>N12 , en=>L1 );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QE , i1=>N13 , en=>L1 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QF , i1=>N14 , en=>L1 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QG , i1=>N15 , en=>L1 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QH , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC595A\ IS PORT(
SER : IN  std_logic;
SRCLK : IN  std_logic;
SRCLR : IN  std_logic;
RCLK : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC595A\;

ARCHITECTURE model OF \74HC595A\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    DQFFC_92 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>SER , clk=>SRCLK , cl=>SRCLR );
    DQFFC_93 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>N1 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_94 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_95 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_96 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_97 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_98 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_99 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>SRCLR );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N9 , d=>N1 , clk=>RCLK );
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK );
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK );
    DQFF_95 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK );
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3800 ps, tfall_clk_q=>3800 ps)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK );
    \Q\\H\\\ <=  ( N8 ) AFTER 3200 ps;
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QA , i1=>N9 , en=>L1 );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QB , i1=>N10 , en=>L1 );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QC , i1=>N11 , en=>L1 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QD , i1=>N12 , en=>L1 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QE , i1=>N13 , en=>L1 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QF , i1=>N14 , en=>L1 );
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QG , i1=>N15 , en=>L1 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>QH , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC597\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
SRCLK : IN  std_logic;
SRLOAD : IN  std_logic;
SRCLR : IN  std_logic;
RCLK : IN  std_logic;
QH : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC597\;

ARCHITECTURE model OF \74HC597\ IS
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

    BEGIN
    N1 <= NOT ( SRLOAD ) AFTER 0 ps;
    DFF_4 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , qNot=>N3 , d=>A , clk=>RCLK );
    DFF_5 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , qNot=>N5 , d=>B , clk=>RCLK );
    DFF_6 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , d=>C , clk=>RCLK );
    DFF_7 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , d=>D , clk=>RCLK );
    DFF_8 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , d=>E , clk=>RCLK );
    DFF_9 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>F , clk=>RCLK );
    DFF_10 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N14 , qNot=>N15 , d=>G , clk=>RCLK );
    DFF_11 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N16 , qNot=>N17 , d=>H , clk=>RCLK );
    L1 <= NOT ( N1 AND N2 );
    L2 <= NOT ( N1 AND N3 );
    L3 <= NOT ( N1 AND N4 );
    L4 <= NOT ( N1 AND N5 );
    L5 <= NOT ( N1 AND N6 );
    L6 <= NOT ( N1 AND N7 );
    L7 <= NOT ( N1 AND N8 );
    L8 <= NOT ( N1 AND N9 );
    L9 <= NOT ( N1 AND N10 );
    L10 <= NOT ( N1 AND N11 );
    L11 <= NOT ( N1 AND N12 );
    L12 <= NOT ( N1 AND N13 );
    L13 <= NOT ( N1 AND N14 );
    L14 <= NOT ( N1 AND N15 );
    L15 <= NOT ( N1 AND N16 );
    L16 <= NOT ( N1 AND N17 );
    L17 <=  ( L2 AND SRCLR );
    L18 <=  ( L4 AND SRCLR );
    L19 <=  ( L6 AND SRCLR );
    L20 <=  ( L8 AND SRCLR );
    L21 <=  ( L10 AND SRCLR );
    L22 <=  ( L12 AND SRCLR );
    L23 <=  ( L14 AND SRCLR );
    L24 <=  ( L16 AND SRCLR );
    DQFFPC_11 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N18 , d=>SER , clk=>SRCLK , pr=>L1 , cl=>L17 );
    DQFFPC_12 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N19 , d=>N18 , clk=>SRCLK , pr=>L3 , cl=>L18 );
    DQFFPC_13 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N20 , d=>N19 , clk=>SRCLK , pr=>L5 , cl=>L19 );
    DQFFPC_14 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N21 , d=>N20 , clk=>SRCLK , pr=>L7 , cl=>L20 );
    DQFFPC_15 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N22 , d=>N21 , clk=>SRCLK , pr=>L9 , cl=>L21 );
    DQFFPC_16 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N23 , d=>N22 , clk=>SRCLK , pr=>L11 , cl=>L22 );
    DQFFPC_17 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N24 , d=>N23 , clk=>SRCLK , pr=>L13 , cl=>L23 );
    DQFFPC_18 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N25 , d=>N24 , clk=>SRCLK , pr=>L15 , cl=>L24 );
    QH <=  ( N25 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC604\ IS PORT(
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
END \74HC604\;

ARCHITECTURE model OF \74HC604\ IS
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
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N1 , d=>B1 , clk=>CLK );
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N2 , d=>A1 , clk=>CLK );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N3 , d=>B2 , clk=>CLK );
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N4 , d=>A2 , clk=>CLK );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N5 , d=>B3 , clk=>CLK );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N6 , d=>A3 , clk=>CLK );
    DQFF_104 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N7 , d=>B4 , clk=>CLK );
    DQFF_105 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N8 , d=>A4 , clk=>CLK );
    DQFF_106 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CLK );
    DQFF_107 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N10 , d=>A5 , clk=>CLK );
    DQFF_108 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N11 , d=>B6 , clk=>CLK );
    DQFF_109 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N12 , d=>A6 , clk=>CLK );
    DQFF_110 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N13 , d=>B7 , clk=>CLK );
    DQFF_111 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N14 , d=>A7 , clk=>CLK );
    DQFF_112 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N15 , d=>B8 , clk=>CLK );
    DQFF_113 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>N16 , d=>A8 , clk=>CLK );
    N17 <=  ( L1 AND N1 ) AFTER 3300 ps;
    N18 <=  ( L1 AND N3 ) AFTER 3300 ps;
    N19 <=  ( L1 AND N5 ) AFTER 3300 ps;
    N20 <=  ( L1 AND N7 ) AFTER 3300 ps;
    N21 <=  ( L1 AND N9 ) AFTER 3300 ps;
    N22 <=  ( L1 AND N11 ) AFTER 3300 ps;
    N23 <=  ( L1 AND N13 ) AFTER 3300 ps;
    N24 <=  ( L1 AND N15 ) AFTER 3300 ps;
    N25 <=  ( N2 AND \A/B\\\ ) AFTER 3300 ps;
    N26 <=  ( N4 AND \A/B\\\ ) AFTER 3300 ps;
    N27 <=  ( N6 AND \A/B\\\ ) AFTER 3300 ps;
    N28 <=  ( N8 AND \A/B\\\ ) AFTER 3300 ps;
    N29 <=  ( N10 AND \A/B\\\ ) AFTER 3300 ps;
    N30 <=  ( N12 AND \A/B\\\ ) AFTER 3300 ps;
    N31 <=  ( N14 AND \A/B\\\ ) AFTER 3300 ps;
    N32 <=  ( N16 AND \A/B\\\ ) AFTER 3300 ps;
    L2 <=  ( N17 OR N25 );
    L3 <=  ( N18 OR N26 );
    L4 <=  ( N19 OR N27 );
    L5 <=  ( N20 OR N28 );
    L6 <=  ( N21 OR N29 );
    L7 <=  ( N22 OR N30 );
    L8 <=  ( N23 OR N31 );
    L9 <=  ( N24 OR N32 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y1 , i1=>L2 , en=>CLK );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y2 , i1=>L3 , en=>CLK );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y3 , i1=>L4 , en=>CLK );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y4 , i1=>L5 , en=>CLK );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y5 , i1=>L6 , en=>CLK );
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y6 , i1=>L7 , en=>CLK );
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y7 , i1=>L8 , en=>CLK );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4900 ps, tfall_i1_o=>4900 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>Y8 , i1=>L9 , en=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC620\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
GBA : IN  std_logic;
GAB : IN  std_logic;
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
END \74HC620\;

ARCHITECTURE model OF \74HC620\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    N1 <= NOT ( A1 ) AFTER 1900 ps;
    N2 <= NOT ( A2 ) AFTER 1900 ps;
    N3 <= NOT ( A3 ) AFTER 1900 ps;
    N4 <= NOT ( A4 ) AFTER 1900 ps;
    N5 <= NOT ( A5 ) AFTER 1900 ps;
    N6 <= NOT ( A6 ) AFTER 1900 ps;
    N7 <= NOT ( A7 ) AFTER 1900 ps;
    N8 <= NOT ( A8 ) AFTER 1900 ps;
    N9 <= NOT ( B8 ) AFTER 1900 ps;
    N10 <= NOT ( B7 ) AFTER 1900 ps;
    N11 <= NOT ( B6 ) AFTER 1900 ps;
    N12 <= NOT ( B5 ) AFTER 1900 ps;
    N13 <= NOT ( B4 ) AFTER 1900 ps;
    N14 <= NOT ( B3 ) AFTER 1900 ps;
    N15 <= NOT ( B2 ) AFTER 1900 ps;
    N16 <= NOT ( B1 ) AFTER 1900 ps;
    L1 <= NOT ( GBA );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC623\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
GBA : IN  std_logic;
GAB : IN  std_logic;
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
END \74HC623\;

ARCHITECTURE model OF \74HC623\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( GBA );
    N1 <=  ( A1 ) AFTER 1900 ps;
    N2 <=  ( A2 ) AFTER 1900 ps;
    N3 <=  ( A3 ) AFTER 1900 ps;
    N4 <=  ( A4 ) AFTER 1900 ps;
    N5 <=  ( A5 ) AFTER 1900 ps;
    N6 <=  ( A6 ) AFTER 1900 ps;
    N7 <=  ( A7 ) AFTER 1900 ps;
    N8 <=  ( A8 ) AFTER 1900 ps;
    N9 <=  ( B8 ) AFTER 1900 ps;
    N10 <=  ( B7 ) AFTER 1900 ps;
    N11 <=  ( B6 ) AFTER 1900 ps;
    N12 <=  ( B5 ) AFTER 1900 ps;
    N13 <=  ( B4 ) AFTER 1900 ps;
    N14 <=  ( B3 ) AFTER 1900 ps;
    N15 <=  ( B2 ) AFTER 1900 ps;
    N16 <=  ( B1 ) AFTER 1900 ps;
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC640\ IS PORT(
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
END \74HC640\;

ARCHITECTURE model OF \74HC640\ IS
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
    N1 <= NOT ( A1 ) AFTER 1700 ps;
    N2 <= NOT ( A2 ) AFTER 1700 ps;
    N3 <= NOT ( A3 ) AFTER 1700 ps;
    N4 <= NOT ( A4 ) AFTER 1700 ps;
    N5 <= NOT ( A5 ) AFTER 1700 ps;
    N6 <= NOT ( A6 ) AFTER 1700 ps;
    N7 <= NOT ( A7 ) AFTER 1700 ps;
    N8 <= NOT ( A8 ) AFTER 1700 ps;
    N9 <= NOT ( B8 ) AFTER 1700 ps;
    N10 <= NOT ( B7 ) AFTER 1700 ps;
    N11 <= NOT ( B6 ) AFTER 1700 ps;
    N12 <= NOT ( B5 ) AFTER 1700 ps;
    N13 <= NOT ( B4 ) AFTER 1700 ps;
    N14 <= NOT ( B3 ) AFTER 1700 ps;
    N15 <= NOT ( B2 ) AFTER 1700 ps;
    N16 <= NOT ( B1 ) AFTER 1700 ps;
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_289 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_290 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_291 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC640A\ IS PORT(
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
END \74HC640A\;

ARCHITECTURE model OF \74HC640A\ IS
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
    N1 <= NOT ( A1 ) AFTER 1700 ps;
    N2 <= NOT ( A2 ) AFTER 1700 ps;
    N3 <= NOT ( A3 ) AFTER 1700 ps;
    N4 <= NOT ( A4 ) AFTER 1700 ps;
    N5 <= NOT ( A5 ) AFTER 1700 ps;
    N6 <= NOT ( A6 ) AFTER 1700 ps;
    N7 <= NOT ( A7 ) AFTER 1700 ps;
    N8 <= NOT ( A8 ) AFTER 1700 ps;
    N9 <= NOT ( B8 ) AFTER 1700 ps;
    N10 <= NOT ( B7 ) AFTER 1700 ps;
    N11 <= NOT ( B6 ) AFTER 1700 ps;
    N12 <= NOT ( B5 ) AFTER 1700 ps;
    N13 <= NOT ( B4 ) AFTER 1700 ps;
    N14 <= NOT ( B3 ) AFTER 1700 ps;
    N15 <= NOT ( B2 ) AFTER 1700 ps;
    N16 <= NOT ( B1 ) AFTER 1700 ps;
    TSB_292 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_293 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_294 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_295 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_296 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_297 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_298 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_299 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_300 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_301 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_302 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_303 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_304 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_305 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_306 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_307 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC643\ IS PORT(
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
END \74HC643\;

ARCHITECTURE model OF \74HC643\ IS
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
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND DIR );
    N1 <= NOT ( A1 ) AFTER 1700 ps;
    N2 <= NOT ( A2 ) AFTER 1700 ps;
    N3 <= NOT ( A3 ) AFTER 1700 ps;
    N4 <= NOT ( A4 ) AFTER 1700 ps;
    N5 <= NOT ( A5 ) AFTER 1700 ps;
    N6 <= NOT ( A6 ) AFTER 1700 ps;
    N7 <= NOT ( A7 ) AFTER 1700 ps;
    N8 <= NOT ( A8 ) AFTER 1700 ps;
    N9 <=  ( B8 ) AFTER 1700 ps;
    N10 <=  ( B7 ) AFTER 1700 ps;
    N11 <=  ( B6 ) AFTER 1700 ps;
    N12 <=  ( B5 ) AFTER 1700 ps;
    N13 <=  ( B4 ) AFTER 1700 ps;
    N14 <=  ( B3 ) AFTER 1700 ps;
    N15 <=  ( B2 ) AFTER 1700 ps;
    N16 <=  ( B1 ) AFTER 1700 ps;
    TSB_308 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_309 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_310 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_311 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_312 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_313 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_314 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_315 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_316 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_317 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_318 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_319 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_320 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_321 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_322 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_323 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5600 ps, tfall_i1_o=>5600 ps, tpd_en_o=>5200 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC645\ IS PORT(
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
END \74HC645\;

ARCHITECTURE model OF \74HC645\ IS
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
    L3 <=  ( L1 AND L2 );
    L4 <=  ( L1 AND DIR );
    N1 <=  ( A1 ) AFTER 2600 ps;
    N2 <=  ( A2 ) AFTER 2600 ps;
    N3 <=  ( A3 ) AFTER 2600 ps;
    N4 <=  ( A4 ) AFTER 2600 ps;
    N5 <=  ( A5 ) AFTER 2600 ps;
    N6 <=  ( A6 ) AFTER 2600 ps;
    N7 <=  ( A7 ) AFTER 2600 ps;
    N8 <=  ( A8 ) AFTER 2600 ps;
    N9 <=  ( B8 ) AFTER 2600 ps;
    N10 <=  ( B7 ) AFTER 2600 ps;
    N11 <=  ( B6 ) AFTER 2600 ps;
    N12 <=  ( B5 ) AFTER 2600 ps;
    N13 <=  ( B4 ) AFTER 2600 ps;
    N14 <=  ( B3 ) AFTER 2600 ps;
    N15 <=  ( B2 ) AFTER 2600 ps;
    N16 <=  ( B1 ) AFTER 2600 ps;
    TSB_324 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC646\ IS PORT(
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
CAB : IN  std_logic;
SAB : IN  std_logic;
CBA : IN  std_logic;
SBA : IN  std_logic;
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
END \74HC646\;

ARCHITECTURE model OF \74HC646\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 3500 ps;
    N2 <= NOT ( SAB ) AFTER 3500 ps;
    N3 <=  ( SBA ) AFTER 3500 ps;
    N4 <=  ( SAB ) AFTER 3500 ps;
    L1 <= NOT ( DIR OR G );
    L2 <= NOT ( G );
    L3 <=  ( L2 AND DIR );
    L4 <=  ( N3 AND N5 );
    L5 <=  ( N1 AND B1 );
    L6 <=  ( N3 AND N6 );
    L7 <=  ( N1 AND B2 );
    L8 <=  ( N3 AND N7 );
    L9 <=  ( N1 AND B3 );
    L10 <=  ( N3 AND N8 );
    L11 <=  ( N1 AND B4 );
    L12 <=  ( N3 AND N9 );
    L13 <=  ( N1 AND B5 );
    L14 <=  ( N3 AND N10 );
    L15 <=  ( N1 AND B6 );
    L16 <=  ( N3 AND N11 );
    L17 <=  ( N1 AND B7 );
    L18 <=  ( N3 AND N12 );
    L19 <=  ( N1 AND B8 );
    L20 <=  ( N4 AND N13 );
    L21 <=  ( N2 AND A1 );
    L22 <=  ( N4 AND N14 );
    L23 <=  ( N2 AND A2 );
    L24 <=  ( N4 AND N15 );
    L25 <=  ( N2 AND A3 );
    L26 <=  ( N4 AND N16 );
    L27 <=  ( N2 AND A4 );
    L28 <=  ( N4 AND N17 );
    L29 <=  ( N2 AND A5 );
    L30 <=  ( N4 AND N18 );
    L31 <=  ( N2 AND A6 );
    L32 <=  ( N4 AND N19 );
    L33 <=  ( N2 AND A7 );
    L34 <=  ( N4 AND N20 );
    L35 <=  ( N2 AND A8 );
    DQFF_114 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_115 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_116 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_117 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_118 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_119 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_120 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_121 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_122 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_123 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_124 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_125 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_126 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_127 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_128 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_129 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L4 OR L5 ) AFTER 3700 ps;
    N22 <=  ( L6 OR L7 ) AFTER 3700 ps;
    N23 <=  ( L8 OR L9 ) AFTER 3700 ps;
    N24 <=  ( L10 OR L11 ) AFTER 3700 ps;
    N25 <=  ( L12 OR L13 ) AFTER 3700 ps;
    N26 <=  ( L14 OR L15 ) AFTER 3700 ps;
    N27 <=  ( L16 OR L17 ) AFTER 3700 ps;
    N28 <=  ( L18 OR L19 ) AFTER 3700 ps;
    N29 <=  ( L20 OR L21 ) AFTER 3700 ps;
    N30 <=  ( L22 OR L23 ) AFTER 3700 ps;
    N31 <=  ( L24 OR L25 ) AFTER 3700 ps;
    N32 <=  ( L26 OR L27 ) AFTER 3700 ps;
    N33 <=  ( L28 OR L29 ) AFTER 3700 ps;
    N34 <=  ( L30 OR L31 ) AFTER 3700 ps;
    N35 <=  ( L32 OR L33 ) AFTER 3700 ps;
    N36 <=  ( L34 OR L35 ) AFTER 3700 ps;
    TSB_340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_341 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_342 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_343 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_344 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_345 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_346 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_347 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_348 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L3 );
    TSB_349 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L3 );
    TSB_350 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L3 );
    TSB_351 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L3 );
    TSB_352 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L3 );
    TSB_353 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L3 );
    TSB_354 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L3 );
    TSB_355 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4400 ps, tfall_i1_o=>4400 ps, tpd_en_o=>4400 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC648\ IS PORT(
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
CAB : IN  std_logic;
SAB : IN  std_logic;
CBA : IN  std_logic;
SBA : IN  std_logic;
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
END \74HC648\;

ARCHITECTURE model OF \74HC648\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 3500 ps;
    N2 <= NOT ( SAB ) AFTER 3500 ps;
    N3 <=  ( SBA ) AFTER 3500 ps;
    N4 <=  ( SAB ) AFTER 3500 ps;
    L1 <= NOT ( DIR OR G );
    L2 <= NOT ( G );
    L3 <=  ( L2 AND DIR );
    L4 <=  ( N3 AND N5 );
    L5 <=  ( N1 AND B1 );
    L6 <=  ( N3 AND N6 );
    L7 <=  ( N1 AND B2 );
    L8 <=  ( N3 AND N7 );
    L9 <=  ( N1 AND B3 );
    L10 <=  ( N3 AND N8 );
    L11 <=  ( N1 AND B4 );
    L12 <=  ( N3 AND N9 );
    L13 <=  ( N1 AND B5 );
    L14 <=  ( N3 AND N10 );
    L15 <=  ( N1 AND B6 );
    L16 <=  ( N3 AND N11 );
    L17 <=  ( N1 AND B7 );
    L18 <=  ( N3 AND N12 );
    L19 <=  ( N1 AND B8 );
    L20 <=  ( N4 AND N13 );
    L21 <=  ( N2 AND A1 );
    L22 <=  ( N4 AND N14 );
    L23 <=  ( N2 AND A2 );
    L24 <=  ( N4 AND N15 );
    L25 <=  ( N2 AND A3 );
    L26 <=  ( N4 AND N16 );
    L27 <=  ( N2 AND A4 );
    L28 <=  ( N4 AND N17 );
    L29 <=  ( N2 AND A5 );
    L30 <=  ( N4 AND N18 );
    L31 <=  ( N2 AND A6 );
    L32 <=  ( N4 AND N19 );
    L33 <=  ( N2 AND A7 );
    L34 <=  ( N4 AND N20 );
    L35 <=  ( N2 AND A8 );
    DQFF_130 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_131 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_132 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_133 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_134 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_135 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_136 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_137 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_138 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_139 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_140 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_141 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_142 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_143 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_144 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_145 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L4 OR L5 ) AFTER 5000 ps;
    N22 <= NOT ( L6 OR L7 ) AFTER 5000 ps;
    N23 <= NOT ( L8 OR L9 ) AFTER 5000 ps;
    N24 <= NOT ( L10 OR L11 ) AFTER 5000 ps;
    N25 <= NOT ( L12 OR L13 ) AFTER 5000 ps;
    N26 <= NOT ( L14 OR L15 ) AFTER 5000 ps;
    N27 <= NOT ( L16 OR L17 ) AFTER 5000 ps;
    N28 <= NOT ( L18 OR L19 ) AFTER 5000 ps;
    N29 <= NOT ( L20 OR L21 ) AFTER 5000 ps;
    N30 <= NOT ( L22 OR L23 ) AFTER 5000 ps;
    N31 <= NOT ( L24 OR L25 ) AFTER 5000 ps;
    N32 <= NOT ( L26 OR L27 ) AFTER 5000 ps;
    N33 <= NOT ( L28 OR L29 ) AFTER 5000 ps;
    N34 <= NOT ( L30 OR L31 ) AFTER 5000 ps;
    N35 <= NOT ( L32 OR L33 ) AFTER 5000 ps;
    N36 <= NOT ( L34 OR L35 ) AFTER 5000 ps;
    TSB_356 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_357 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_358 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_359 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_360 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_361 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_362 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_363 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_364 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L3 );
    TSB_365 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L3 );
    TSB_366 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L3 );
    TSB_367 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L3 );
    TSB_368 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L3 );
    TSB_369 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L3 );
    TSB_370 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L3 );
    TSB_371 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3300 ps, tfall_i1_o=>3300 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC651\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
GAB : IN  std_logic;
GBA : IN  std_logic;
CAB : IN  std_logic;
SAB : IN  std_logic;
CBA : IN  std_logic;
SBA : IN  std_logic;
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
END \74HC651\;

ARCHITECTURE model OF \74HC651\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 1400 ps;
    N2 <= NOT ( SAB ) AFTER 1400 ps;
    N3 <=  ( SBA ) AFTER 1400 ps;
    N4 <=  ( SAB ) AFTER 1400 ps;
    L1 <= NOT ( GBA );
    L2 <=  ( N3 AND N5 );
    L3 <=  ( N1 AND B1 );
    L4 <=  ( N3 AND N6 );
    L5 <=  ( N1 AND B2 );
    L6 <=  ( N3 AND N7 );
    L7 <=  ( N1 AND B3 );
    L8 <=  ( N3 AND N8 );
    L9 <=  ( N1 AND B4 );
    L10 <=  ( N3 AND N9 );
    L11 <=  ( N1 AND B5 );
    L12 <=  ( N3 AND N10 );
    L13 <=  ( N1 AND B6 );
    L14 <=  ( N3 AND N11 );
    L15 <=  ( N1 AND B7 );
    L16 <=  ( N3 AND N12 );
    L17 <=  ( N1 AND B8 );
    L18 <=  ( N4 AND N13 );
    L19 <=  ( N2 AND A1 );
    L20 <=  ( N4 AND N14 );
    L21 <=  ( N2 AND A2 );
    L22 <=  ( N4 AND N15 );
    L23 <=  ( N2 AND A3 );
    L24 <=  ( N4 AND N16 );
    L25 <=  ( N2 AND A4 );
    L26 <=  ( N4 AND N17 );
    L27 <=  ( N2 AND A5 );
    L28 <=  ( N4 AND N18 );
    L29 <=  ( N2 AND A6 );
    L30 <=  ( N4 AND N19 );
    L31 <=  ( N2 AND A7 );
    L32 <=  ( N4 AND N20 );
    L33 <=  ( N2 AND A8 );
    DQFF_146 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_147 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_148 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_149 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_150 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_151 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_152 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_153 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_154 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_155 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_156 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_157 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_158 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_159 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_160 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_161 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L2 OR L3 ) AFTER 2400 ps;
    N22 <= NOT ( L4 OR L5 ) AFTER 2400 ps;
    N23 <= NOT ( L6 OR L7 ) AFTER 2400 ps;
    N24 <= NOT ( L8 OR L9 ) AFTER 2400 ps;
    N25 <= NOT ( L10 OR L11 ) AFTER 2400 ps;
    N26 <= NOT ( L12 OR L13 ) AFTER 2400 ps;
    N27 <= NOT ( L14 OR L15 ) AFTER 2400 ps;
    N28 <= NOT ( L16 OR L17 ) AFTER 2400 ps;
    N29 <= NOT ( L18 OR L19 ) AFTER 2400 ps;
    N30 <= NOT ( L20 OR L21 ) AFTER 2400 ps;
    N31 <= NOT ( L22 OR L23 ) AFTER 2400 ps;
    N32 <= NOT ( L24 OR L25 ) AFTER 2400 ps;
    N33 <= NOT ( L26 OR L27 ) AFTER 2400 ps;
    N34 <= NOT ( L28 OR L29 ) AFTER 2400 ps;
    N35 <= NOT ( L30 OR L31 ) AFTER 2400 ps;
    N36 <= NOT ( L32 OR L33 ) AFTER 2400 ps;
    TSB_372 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_373 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_374 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_375 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_376 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_377 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_378 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_379 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_380 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_381 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_382 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_383 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_384 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_385 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_386 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_387 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC652\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
GAB : IN  std_logic;
GBA : IN  std_logic;
CAB : IN  std_logic;
SAB : IN  std_logic;
CBA : IN  std_logic;
SBA : IN  std_logic;
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
END \74HC652\;

ARCHITECTURE model OF \74HC652\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 1400 ps;
    N2 <= NOT ( SAB ) AFTER 1400 ps;
    N3 <=  ( SBA ) AFTER 1400 ps;
    N4 <=  ( SAB ) AFTER 1400 ps;
    L1 <= NOT ( GBA );
    L2 <=  ( N3 AND N5 );
    L3 <=  ( N1 AND B1 );
    L4 <=  ( N3 AND N6 );
    L5 <=  ( N1 AND B2 );
    L6 <=  ( N3 AND N7 );
    L7 <=  ( N1 AND B3 );
    L8 <=  ( N3 AND N8 );
    L9 <=  ( N1 AND B4 );
    L10 <=  ( N3 AND N9 );
    L11 <=  ( N1 AND B5 );
    L12 <=  ( N3 AND N10 );
    L13 <=  ( N1 AND B6 );
    L14 <=  ( N3 AND N11 );
    L15 <=  ( N1 AND B7 );
    L16 <=  ( N3 AND N12 );
    L17 <=  ( N1 AND B8 );
    L18 <=  ( N4 AND N13 );
    L19 <=  ( N2 AND A1 );
    L20 <=  ( N4 AND N14 );
    L21 <=  ( N2 AND A2 );
    L22 <=  ( N4 AND N15 );
    L23 <=  ( N2 AND A3 );
    L24 <=  ( N4 AND N16 );
    L25 <=  ( N2 AND A4 );
    L26 <=  ( N4 AND N17 );
    L27 <=  ( N2 AND A5 );
    L28 <=  ( N4 AND N18 );
    L29 <=  ( N2 AND A6 );
    L30 <=  ( N4 AND N19 );
    L31 <=  ( N2 AND A7 );
    L32 <=  ( N4 AND N20 );
    L33 <=  ( N2 AND A8 );
    DQFF_162 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_163 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_164 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_165 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_166 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_167 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_168 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_169 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_170 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_171 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_172 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_173 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_174 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_175 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_176 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_177 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L2 OR L3 ) AFTER 2400 ps;
    N22 <=  ( L4 OR L5 ) AFTER 2400 ps;
    N23 <=  ( L6 OR L7 ) AFTER 2400 ps;
    N24 <=  ( L8 OR L9 ) AFTER 2400 ps;
    N25 <=  ( L10 OR L11 ) AFTER 2400 ps;
    N26 <=  ( L12 OR L13 ) AFTER 2400 ps;
    N27 <=  ( L14 OR L15 ) AFTER 2400 ps;
    N28 <=  ( L16 OR L17 ) AFTER 2400 ps;
    N29 <=  ( L18 OR L19 ) AFTER 2400 ps;
    N30 <=  ( L20 OR L21 ) AFTER 2400 ps;
    N31 <=  ( L22 OR L23 ) AFTER 2400 ps;
    N32 <=  ( L24 OR L25 ) AFTER 2400 ps;
    N33 <=  ( L26 OR L27 ) AFTER 2400 ps;
    N34 <=  ( L28 OR L29 ) AFTER 2400 ps;
    N35 <=  ( L30 OR L31 ) AFTER 2400 ps;
    N36 <=  ( L32 OR L33 ) AFTER 2400 ps;
    TSB_388 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_389 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_390 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_391 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_392 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_393 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_394 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_395 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_396 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_397 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_398 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_399 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_400 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_401 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_402 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_403 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC677\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
A9 : IN  std_logic;
A10 : IN  std_logic;
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A15 : IN  std_logic;
A16 : IN  std_logic;
P0 : IN  std_logic;
P1 : IN  std_logic;
P2 : IN  std_logic;
P3 : IN  std_logic;
G : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC677\;

ARCHITECTURE model OF \74HC677\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <= NOT ( P0 ) AFTER 11900 ps;
    N2 <= NOT ( P1 ) AFTER 11900 ps;
    N3 <= NOT ( P2 ) AFTER 11900 ps;
    N4 <= NOT ( P3 ) AFTER 11900 ps;
    N5 <=  ( P3 ) AFTER 11900 ps;
    L1 <= NOT ( G );
    L2 <= NOT ( N1 AND N2 AND N3 AND N4 );
    L3 <= NOT ( N2 AND N3 AND N4 );
    L4 <=  ( N1 AND N3 AND N4 );
    L5 <= NOT ( L3 );
    L6 <= NOT ( N3 AND N4 );
    L7 <=  ( N1 AND N2 AND N4 );
    L8 <= NOT ( L6 );
    L9 <=  ( N2 AND N4 );
    L10 <=  ( N1 AND N4 );
    L11 <=  ( N1 AND N2 AND N3 );
    L12 <=  ( N2 AND N3 );
    L13 <=  ( N1 AND N3 );
    L14 <=  ( N1 AND N2 );
    L15 <= NOT ( L4 OR L5 );
    L16 <= NOT ( L7 OR L8 );
    L17 <= NOT ( L8 OR L9 );
    L18 <= NOT ( L8 OR L9 OR L10 );
    L19 <= NOT ( L11 OR N4 );
    L20 <= NOT ( L12 OR N4 );
    L21 <= NOT ( L12 OR L13 OR N4 );
    L22 <= NOT ( N3 OR N4 );
    L23 <= NOT ( L14 OR N3 OR N4 );
    L24 <= NOT ( N2 OR N3 OR N4 );
    L25 <= NOT ( N1 OR N2 OR N3 OR N4 );
    L26 <=  ( L2 XOR A1 );
    L27 <=  ( L3 XOR A2 );
    L28 <=  ( L15 XOR A3 );
    L29 <=  ( L6 XOR A4 );
    L30 <=  ( L16 XOR A5 );
    L31 <=  ( L17 XOR A6 );
    L32 <=  ( L18 XOR A7 );
    L33 <=  ( N5 XOR A8 );
    L34 <=  ( L19 XOR A9 );
    L35 <=  ( L20 XOR A10 );
    L36 <=  ( L21 XOR A11 );
    L37 <=  ( L22 XOR A12 );
    L38 <=  ( L23 XOR A13 );
    L39 <=  ( L24 XOR A14 );
    L40 <=  ( L25 XOR A15 );
    L41 <=  ( L26 AND L27 AND L28 AND L29 AND L30 AND L31 AND L32 AND L33 );
    L42 <=  ( L34 AND L35 AND L36 AND L37 AND L38 AND L39 AND L40 AND A16 );
    Y <= NOT ( L1 AND L41 AND L42 ) AFTER 2700 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC678\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
A9 : IN  std_logic;
A10 : IN  std_logic;
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A15 : IN  std_logic;
A16 : IN  std_logic;
P0 : IN  std_logic;
P1 : IN  std_logic;
P2 : IN  std_logic;
P3 : IN  std_logic;
C : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC678\;

ARCHITECTURE model OF \74HC678\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <= NOT ( P0 ) AFTER 11200 ps;
    N2 <= NOT ( P1 ) AFTER 11200 ps;
    N3 <= NOT ( P2 ) AFTER 11200 ps;
    N4 <= NOT ( P3 ) AFTER 11200 ps;
    N5 <=  ( P3 ) AFTER 11200 ps;
    L1 <= NOT ( N1 AND N2 AND N3 AND N4 );
    L2 <= NOT ( N2 AND N3 AND N4 );
    L3 <=  ( N1 AND N3 AND N4 );
    L4 <= NOT ( L2 );
    L5 <= NOT ( N3 AND N4 );
    L6 <=  ( N1 AND N2 AND N4 );
    L7 <= NOT ( L5 );
    L8 <=  ( N2 AND N4 );
    L9 <=  ( N1 AND N4 );
    L10 <=  ( N1 AND N2 AND N3 );
    L11 <=  ( N2 AND N3 );
    L12 <=  ( N1 AND N3 );
    L13 <=  ( N1 AND N2 );
    L14 <= NOT ( L3 OR L4 );
    L15 <= NOT ( L6 OR L7 );
    L16 <= NOT ( L7 OR L8 );
    L17 <= NOT ( L7 OR L8 OR L9 );
    L18 <= NOT ( L10 OR N4 );
    L19 <= NOT ( L11 OR N4 );
    L20 <= NOT ( L11 OR L12 OR N4 );
    L21 <= NOT ( N3 OR N4 );
    L22 <= NOT ( L13 OR N3 OR N4 );
    L23 <= NOT ( N2 OR N3 OR N4 );
    L24 <= NOT ( N1 OR N2 OR N3 OR N4 );
    L25 <=  ( L1 XOR A1 );
    L26 <=  ( L2 XOR A2 );
    L27 <=  ( L14 XOR A3 );
    L28 <=  ( L5 XOR A4 );
    L29 <=  ( L15 XOR A5 );
    L30 <=  ( L16 XOR A6 );
    L31 <=  ( L17 XOR A7 );
    L32 <=  ( N5 XOR A8 );
    L33 <=  ( L18 XOR A9 );
    L34 <=  ( L19 XOR A10 );
    L35 <=  ( L20 XOR A11 );
    L36 <=  ( L21 XOR A12 );
    L37 <=  ( L22 XOR A13 );
    L38 <=  ( L23 XOR A14 );
    L39 <=  ( L24 XOR A15 );
    L40 <=  ( L25 AND L26 AND L27 AND L28 AND L29 AND L30 AND L31 AND L32 );
    L41 <=  ( L33 AND L34 AND L35 AND L36 AND L37 AND L38 AND L39 AND A16 );
    L42 <= NOT ( L40 AND L41 );
    DLATCH_71 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3400 ps, tfall_clk_q=>3400 ps)
      PORT MAP  (q=>Y , d=>L42 , enable=>C );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC679\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
A9 : IN  std_logic;
A10 : IN  std_logic;
A11 : IN  std_logic;
A12 : IN  std_logic;
P0 : IN  std_logic;
P1 : IN  std_logic;
P2 : IN  std_logic;
P3 : IN  std_logic;
G : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC679\;

ARCHITECTURE model OF \74HC679\ IS
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

    BEGIN
    N1 <= NOT ( P0 ) AFTER 3500 ps;
    N2 <= NOT ( P1 ) AFTER 3500 ps;
    N3 <= NOT ( P2 ) AFTER 3500 ps;
    N4 <= NOT ( P3 ) AFTER 3500 ps;
    N5 <=  ( P3 ) AFTER 3500 ps;
    L1 <= NOT ( G );
    L2 <= NOT ( N1 AND N2 AND N3 AND N4 );
    L3 <= NOT ( N2 AND N3 AND N4 );
    L4 <=  ( N1 AND N3 AND N4 );
    L5 <= NOT ( L3 );
    L6 <= NOT ( N3 AND N4 );
    L7 <=  ( N1 AND N2 AND N4 );
    L8 <= NOT ( L6 );
    L9 <=  ( N2 AND N4 );
    L10 <=  ( N1 AND N4 );
    L11 <=  ( N1 AND N2 );
    L12 <= NOT ( L4 OR L5 );
    L13 <= NOT ( L7 OR L8 );
    L14 <= NOT ( L8 OR L9 );
    L15 <= NOT ( L8 OR L9 OR L10 );
    L16 <= NOT ( L11 OR N4 );
    L17 <= NOT ( N2 OR N4 );
    L18 <= NOT ( N1 OR N2 OR N4 );
    L19 <= NOT ( N3 OR N4 );
    N6 <=  ( L2 XOR A1 ) AFTER 900 ps;
    N7 <=  ( L3 XOR A2 ) AFTER 900 ps;
    N8 <=  ( L12 XOR A3 ) AFTER 900 ps;
    N9 <=  ( L6 XOR A4 ) AFTER 900 ps;
    N10 <=  ( L13 XOR A5 ) AFTER 900 ps;
    N11 <=  ( L14 XOR A6 ) AFTER 900 ps;
    N12 <=  ( L15 XOR A7 ) AFTER 900 ps;
    N13 <=  ( N5 XOR A8 ) AFTER 900 ps;
    N14 <=  ( L16 XOR A9 ) AFTER 900 ps;
    N15 <=  ( L17 XOR A10 ) AFTER 900 ps;
    N16 <=  ( L18 XOR A11 ) AFTER 900 ps;
    N17 <=  ( L19 XOR A12 ) AFTER 900 ps;
    L20 <=  ( N6 AND N7 AND N8 AND N9 AND N10 AND N11 );
    L21 <=  ( N12 AND N13 AND N14 AND N15 AND N16 AND N17 );
    Y <= NOT ( L1 AND L20 AND L21 ) AFTER 2100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC680\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
A9 : IN  std_logic;
A10 : IN  std_logic;
A11 : IN  std_logic;
A12 : IN  std_logic;
P0 : IN  std_logic;
P1 : IN  std_logic;
P2 : IN  std_logic;
P3 : IN  std_logic;
C : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC680\;

ARCHITECTURE model OF \74HC680\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <= NOT ( P0 ) AFTER 3500 ps;
    N2 <= NOT ( P1 ) AFTER 3500 ps;
    N3 <= NOT ( P2 ) AFTER 3500 ps;
    N4 <= NOT ( P3 ) AFTER 3500 ps;
    N5 <=  ( P3 ) AFTER 3500 ps;
    L1 <= NOT ( N1 AND N2 AND N3 AND N4 );
    L2 <= NOT ( N2 AND N3 AND N4 );
    L3 <=  ( N1 AND N3 AND N4 );
    L4 <= NOT ( L2 );
    L5 <= NOT ( N3 AND N4 );
    L6 <=  ( N1 AND N2 AND N4 );
    L7 <= NOT ( L5 );
    L8 <=  ( N2 AND N4 );
    L9 <=  ( N1 AND N4 );
    L10 <=  ( N1 AND N2 );
    L11 <= NOT ( L3 OR L4 );
    L12 <= NOT ( L6 OR L7 );
    L13 <= NOT ( L7 OR L8 );
    L14 <= NOT ( L7 OR L8 OR L9 );
    L15 <= NOT ( L10 OR N4 );
    L16 <= NOT ( N2 OR N4 );
    L17 <= NOT ( N1 OR N2 OR N4 );
    L18 <= NOT ( N3 OR N4 );
    L19 <=  ( L1 XOR A1 );
    L20 <=  ( L2 XOR A2 );
    L21 <=  ( L11 XOR A3 );
    L22 <=  ( L5 XOR A4 );
    L23 <=  ( L12 XOR A5 );
    L24 <=  ( L13 XOR A6 );
    L25 <=  ( L14 XOR A7 );
    L26 <=  ( N5 XOR A8 );
    L27 <=  ( L15 XOR A9 );
    L28 <=  ( L16 XOR A10 );
    L29 <=  ( L17 XOR A11 );
    L30 <=  ( L18 XOR A12 );
    L31 <=  ( L19 AND L20 AND L21 AND L22 AND L23 AND L24 );
    L32 <=  ( L25 AND L26 AND L27 AND L28 AND L29 AND L30 );
    L33 <= NOT ( L31 AND L32 );
    DLATCH_72 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Y , d=>L33 , enable=>C );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC682\ IS PORT(
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
\P=Q\ : OUT  std_logic;
\P>Q\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC682\;

ARCHITECTURE model OF \74HC682\ IS
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

    BEGIN
    L1 <= NOT ( P7 XOR Q7 );
    L2 <= NOT ( P6 XOR Q6 );
    L3 <= NOT ( P5 XOR Q5 );
    L4 <= NOT ( P4 XOR Q4 );
    L5 <= NOT ( P3 XOR Q3 );
    L6 <= NOT ( P2 XOR Q2 );
    L7 <= NOT ( P1 XOR Q1 );
    L8 <= NOT ( P0 XOR Q0 );
    L9 <= NOT ( Q0 );
    L10 <= NOT ( Q1 );
    L11 <= NOT ( Q2 );
    L12 <= NOT ( Q3 );
    L13 <= NOT ( Q4 );
    L14 <= NOT ( Q5 );
    L15 <= NOT ( Q6 );
    L16 <= NOT ( Q7 );
    L17 <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L9 AND P0 );
    L18 <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L10 AND P1 );
    L19 <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L11 AND P2 );
    L20 <=  ( L1 AND L2 AND L3 AND L4 AND L12 AND P3 );
    L21 <=  ( L1 AND L2 AND L3 AND L13 AND P4 );
    L22 <=  ( L1 AND L2 AND L14 AND P5 );
    L23 <=  ( L1 AND L15 AND P6 );
    L24 <=  ( L16 AND P7 );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 5900 ps;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 5900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC684\ IS PORT(
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
\P=Q\ : OUT  std_logic;
\P>Q\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC684\;

ARCHITECTURE model OF \74HC684\ IS
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

    BEGIN
    L1 <= NOT ( P7 XOR Q7 );
    L2 <= NOT ( P6 XOR Q6 );
    L3 <= NOT ( P5 XOR Q5 );
    L4 <= NOT ( P4 XOR Q4 );
    L5 <= NOT ( P3 XOR Q3 );
    L6 <= NOT ( P2 XOR Q2 );
    L7 <= NOT ( P1 XOR Q1 );
    L8 <= NOT ( P0 XOR Q0 );
    L9 <= NOT ( Q0 );
    L10 <= NOT ( Q1 );
    L11 <= NOT ( Q2 );
    L12 <= NOT ( Q3 );
    L13 <= NOT ( Q4 );
    L14 <= NOT ( Q5 );
    L15 <= NOT ( Q6 );
    L16 <= NOT ( Q7 );
    L17 <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L9 AND P0 );
    L18 <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L10 AND P1 );
    L19 <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L11 AND P2 );
    L20 <=  ( L1 AND L2 AND L3 AND L4 AND L12 AND P3 );
    L21 <=  ( L1 AND L2 AND L3 AND L13 AND P4 );
    L22 <=  ( L1 AND L2 AND L14 AND P5 );
    L23 <=  ( L1 AND L15 AND P6 );
    L24 <=  ( L16 AND P7 );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 5900 ps;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 5900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC688\ IS PORT(
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
END \74HC688\;

ARCHITECTURE model OF \74HC688\ IS
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
    N1 <= NOT ( P7 XOR Q7 ) AFTER 1000 ps;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 1000 ps;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 1000 ps;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 1000 ps;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 1000 ps;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 1000 ps;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 1000 ps;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 1000 ps;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC804\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I0_E : IN  std_logic;
I0_F : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
I1_E : IN  std_logic;
I1_F : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
O_E : OUT  std_logic;
O_F : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC804\;

ARCHITECTURE model OF \74HC804\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2500 ps;
    O_E <= NOT ( I0_E AND I1_E ) AFTER 2500 ps;
    O_F <= NOT ( I0_F AND I1_F ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC805\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I0_E : IN  std_logic;
I0_F : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
I1_E : IN  std_logic;
I1_F : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
O_E : OUT  std_logic;
O_F : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC805\;

ARCHITECTURE model OF \74HC805\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 2400 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 2400 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 2400 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 2400 ps;
    O_E <= NOT ( I0_E OR I1_E ) AFTER 2400 ps;
    O_F <= NOT ( I0_F OR I1_F ) AFTER 2400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC808\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I0_E : IN  std_logic;
I0_F : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
I1_E : IN  std_logic;
I1_F : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
O_E : OUT  std_logic;
O_F : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC808\;

ARCHITECTURE model OF \74HC808\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 2500 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 2500 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 2500 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 2500 ps;
    O_E <=  ( I0_E AND I1_E ) AFTER 2500 ps;
    O_F <=  ( I0_F AND I1_F ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC832\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I0_C : IN  std_logic;
I0_D : IN  std_logic;
I0_E : IN  std_logic;
I0_F : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
I1_C : IN  std_logic;
I1_D : IN  std_logic;
I1_E : IN  std_logic;
I1_F : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
O_C : OUT  std_logic;
O_D : OUT  std_logic;
O_E : OUT  std_logic;
O_F : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC832\;

ARCHITECTURE model OF \74HC832\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 1500 ps;
    O_E <=  ( I0_E OR I1_E ) AFTER 1500 ps;
    O_F <=  ( I0_F OR I1_F ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HC4078A\ IS PORT(
Y : OUT  std_logic;
A : IN  std_logic;
W : OUT  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74HC4078A\;

ARCHITECTURE model OF \74HC4078A\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A OR B OR C OR D OR E OR F OR G OR H );
    Y <=  ( L1 ) AFTER 2300 ps;
    W <= NOT ( L1 ) AFTER 2300 ps;
END model;

