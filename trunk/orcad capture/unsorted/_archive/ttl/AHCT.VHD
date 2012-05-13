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
-- Date:			February 21, 1997
-- File:			AHCT.VHD
-- Resource:	  Samsung, High Performance CMOS Logic Data Book, 1989
-- Delay units:	  Nanoseconds
-- Characteristics: 74AHCTXXXX MIN/MAX, Vcc=5V +/-0.5 V

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Added new parts. Part went from 103 to 128. 



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT00\ IS PORT(
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
END \74AHCT00\;

ARCHITECTURE model OF \74AHCT00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 6 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT01\ IS PORT(
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
END \74AHCT01\;

ARCHITECTURE model OF \74AHCT01\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 20 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 20 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT02\ IS PORT(
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
END \74AHCT02\;

ARCHITECTURE model OF \74AHCT02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 7 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 7 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 7 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT03\ IS PORT(
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
END \74AHCT03\;

ARCHITECTURE model OF \74AHCT03\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 20 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 20 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT04\ IS PORT(
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
END \74AHCT04\;

ARCHITECTURE model OF \74AHCT04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 6 ns;
    O_B <= NOT ( I_B ) AFTER 6 ns;
    O_C <= NOT ( I_C ) AFTER 6 ns;
    O_D <= NOT ( I_D ) AFTER 6 ns;
    O_E <= NOT ( I_E ) AFTER 6 ns;
    O_F <= NOT ( I_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT05\ IS PORT(
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
END \74AHCT05\;

ARCHITECTURE model OF \74AHCT05\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 20 ns;
    O_B <= NOT ( I_B ) AFTER 20 ns;
    O_C <= NOT ( I_C ) AFTER 20 ns;
    O_D <= NOT ( I_D ) AFTER 20 ns;
    O_E <= NOT ( I_E ) AFTER 20 ns;
    O_F <= NOT ( I_F ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT08\ IS PORT(
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
END \74AHCT08\;

ARCHITECTURE model OF \74AHCT08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 9 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 9 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT09\ IS PORT(
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
END \74AHCT09\;

ARCHITECTURE model OF \74AHCT09\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 22 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT10\ IS PORT(
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
END \74AHCT10\;

ARCHITECTURE model OF \74AHCT10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 10 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 10 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT11\ IS PORT(
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
END \74AHCT11\;

ARCHITECTURE model OF \74AHCT11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 10 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 10 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT12\ IS PORT(
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
END \74AHCT12\;

ARCHITECTURE model OF \74AHCT12\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 22 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT14\ IS PORT(
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
END \74AHCT14\;

ARCHITECTURE model OF \74AHCT14\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 9 ns;
    O_B <= NOT ( I_B ) AFTER 9 ns;
    O_C <= NOT ( I_C ) AFTER 9 ns;
    O_D <= NOT ( I_D ) AFTER 9 ns;
    O_E <= NOT ( I_E ) AFTER 9 ns;
    O_F <= NOT ( I_F ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT20\ IS PORT(
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
END \74AHCT20\;

ARCHITECTURE model OF \74AHCT20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT21\ IS PORT(
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
END \74AHCT21\;

ARCHITECTURE model OF \74AHCT21\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 9 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT22\ IS PORT(
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
END \74AHCT22\;

ARCHITECTURE model OF \74AHCT22\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 24 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 24 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT27\ IS PORT(
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
END \74AHCT27\;

ARCHITECTURE model OF \74AHCT27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 9 ns;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 9 ns;
    O_C <= NOT ( I2_C OR I1_C OR I0_C ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT32\ IS PORT(
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
END \74AHCT32\;

ARCHITECTURE model OF \74AHCT32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 9 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 9 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT42\ IS PORT(
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
END \74AHCT42\;

ARCHITECTURE model OF \74AHCT42\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <= NOT ( C );
    L4 <= NOT ( D );
    \0\ <= NOT ( L1 AND L2 AND L3 AND L4 ) AFTER 13 ns;
    \1\ <= NOT ( A AND L2 AND L3 AND L4 ) AFTER 13 ns;
    \2\ <= NOT ( L1 AND B AND L3 AND L4 ) AFTER 13 ns;
    \3\ <= NOT ( A AND B AND L3 AND L4 ) AFTER 13 ns;
    \4\ <= NOT ( L1 AND L2 AND C AND L4 ) AFTER 13 ns;
    \5\ <= NOT ( A AND L2 AND C AND L4 ) AFTER 13 ns;
    \6\ <= NOT ( L1 AND B AND C AND L4 ) AFTER 13 ns;
    \7\ <= NOT ( A AND B AND C AND L4 ) AFTER 13 ns;
    \8\ <= NOT ( L1 AND L2 AND L3 AND D ) AFTER 13 ns;
    \9\ <= NOT ( A AND L2 AND L3 AND D ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT51\ IS PORT(
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
END \74AHCT51\;

ARCHITECTURE model OF \74AHCT51\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( \2A\ AND \2B\ );
    L2 <=  ( \2C\ AND \2D\ );
    \2Y\ <= NOT ( L1 OR L2 ) AFTER 10 ns;
    L3 <=  ( \1A\ AND \1C\ AND \1B\ );
    L4 <=  ( \1F\ AND \1E\ AND \1D\ );
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT73\ IS PORT(
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
END \74AHCT73\;

ARCHITECTURE model OF \74AHCT73\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_0 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_1 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT74\ IS PORT(
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
END \74AHCT74\;

ARCHITECTURE model OF \74AHCT74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT76\ IS PORT(
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
END \74AHCT76\;

ARCHITECTURE model OF \74AHCT76\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT78\ IS PORT(
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
END \74AHCT78\;

ARCHITECTURE model OF \74AHCT78\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK ) AFTER 0 ns;
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , j=>J1 , k=>K1 , clk=>N1 , pr=>PR1 , cl=>CLR );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , j=>J2 , k=>K2 , clk=>N1 , pr=>PR2 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT86\ IS PORT(
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
END \74AHCT86\;

ARCHITECTURE model OF \74AHCT86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 15 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 15 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 15 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT107\ IS PORT(
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
END \74AHCT107\;

ARCHITECTURE model OF \74AHCT107\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_2 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_3 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT109\ IS PORT(
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
END \74AHCT109\;

ARCHITECTURE model OF \74AHCT109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT112\ IS PORT(
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
END \74AHCT112\;

ARCHITECTURE model OF \74AHCT112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT125\ IS PORT(
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
END \74AHCT125\;

ARCHITECTURE model OF \74AHCT125\ IS
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
    N1 <=  ( I_A ) AFTER 10 ns;
    N2 <=  ( I_B ) AFTER 10 ns;
    N3 <=  ( I_C ) AFTER 10 ns;
    N4 <=  ( I_D ) AFTER 10 ns;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT126\ IS PORT(
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
END \74AHCT126\;

ARCHITECTURE model OF \74AHCT126\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 10 ns;
    N2 <=  ( I_B ) AFTER 10 ns;
    N3 <=  ( I_C ) AFTER 10 ns;
    N4 <=  ( I_D ) AFTER 10 ns;
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT132\ IS PORT(
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
END \74AHCT132\;

ARCHITECTURE model OF \74AHCT132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 9 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 9 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 9 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT133\ IS PORT(
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
END \74AHCT133\;

ARCHITECTURE model OF \74AHCT133\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11 AND I12 ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT138\ IS PORT(
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
END \74AHCT138\;

ARCHITECTURE model OF \74AHCT138\ IS
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
    N1 <=  ( A ) AFTER 3 ns;
    N2 <=  ( B ) AFTER 3 ns;
    N3 <=  ( C ) AFTER 3 ns;
    N4 <= NOT ( A ) AFTER 3 ns;
    N5 <= NOT ( B ) AFTER 3 ns;
    N6 <= NOT ( C ) AFTER 3 ns;
    N7 <=  ( G1 ) AFTER 3 ns;
    N8 <= NOT ( G2A OR G2B ) AFTER 0 ns;
    L1 <=  ( N7 AND N8 );
    Y0 <= NOT ( N4 AND N5 AND N6 AND L1 ) AFTER 12 ns;
    Y1 <= NOT ( N1 AND N5 AND N6 AND L1 ) AFTER 12 ns;
    Y2 <= NOT ( N4 AND N2 AND N6 AND L1 ) AFTER 12 ns;
    Y3 <= NOT ( N1 AND N2 AND N6 AND L1 ) AFTER 12 ns;
    Y4 <= NOT ( N4 AND N5 AND N3 AND L1 ) AFTER 12 ns;
    Y5 <= NOT ( N1 AND N5 AND N3 AND L1 ) AFTER 12 ns;
    Y6 <= NOT ( N4 AND N2 AND N3 AND L1 ) AFTER 12 ns;
    Y7 <= NOT ( N1 AND N2 AND N3 AND L1 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT139\ IS PORT(
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
END \74AHCT139\;

ARCHITECTURE model OF \74AHCT139\ IS
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
    N1 <= NOT ( G_A ) AFTER 8 ns;
    N2 <=  ( A_A ) AFTER 7 ns;
    N3 <=  ( B_A ) AFTER 7 ns;
    N4 <= NOT ( A_A ) AFTER 7 ns;
    N5 <= NOT ( B_A ) AFTER 7 ns;
    N6 <= NOT ( G_B ) AFTER 8 ns;
    N7 <=  ( A_B ) AFTER 7 ns;
    N8 <=  ( B_B ) AFTER 7 ns;
    N9 <= NOT ( A_B ) AFTER 7 ns;
    N10 <= NOT ( B_B ) AFTER 7 ns;
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

ENTITY \74AHCT148\ IS PORT(
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
END \74AHCT148\;

ARCHITECTURE model OF \74AHCT148\ IS
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
    N1 <=  ( \0\ ) AFTER 7 ns;
    N2 <=  ( \1\ ) AFTER 7 ns;
    N3 <=  ( \2\ ) AFTER 7 ns;
    N4 <=  ( \3\ ) AFTER 7 ns;
    N5 <=  ( \4\ ) AFTER 7 ns;
    N6 <=  ( \5\ ) AFTER 7 ns;
    N7 <=  ( \6\ ) AFTER 7 ns;
    N8 <=  ( \7\ ) AFTER 7 ns;
    N9 <= NOT ( \1\ ) AFTER 1 ns;
    N10 <= NOT ( \2\ ) AFTER 1 ns;
    N11 <= NOT ( \3\ ) AFTER 1 ns;
    N12 <= NOT ( \4\ ) AFTER 1 ns;
    N13 <= NOT ( \5\ ) AFTER 1 ns;
    N14 <= NOT ( \6\ ) AFTER 1 ns;
    N15 <= NOT ( \7\ ) AFTER 1 ns;
    L1 <= NOT ( EI );
    L2 <= NOT ( N10 );
    L3 <= NOT ( N12 );
    L4 <= NOT ( N13 );
    L5 <= NOT ( N14 );
    L6 <=  ( N9 AND L2 AND L3 AND L5 AND L1 );
    L7 <=  ( N11 AND L3 AND L5 AND L1 );
    L8 <=  ( N13 AND L5 AND L1 );
    L9 <=  ( N15 AND L1 );
    L10 <=  ( N10 AND L3 AND L4 AND L1 );
    L11 <=  ( N11 AND L3 AND L4 AND L1 );
    L12 <=  ( N14 AND L1 );
    L13 <=  ( N15 AND L1 );
    L14 <=  ( N12 AND L1 );
    L15 <=  ( N13 AND L1 );
    L16 <=  ( N14 AND L1 );
    L17 <=  ( N15 AND L1 );
    N16 <=  ( L1 ) AFTER 0 ns;
    N17 <=  ( L1 ) AFTER 0 ns;
    L18 <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 );
    N18 <= NOT ( L18 AND N16 ) AFTER 0 ns;
    EO <= NOT ( N17 AND L18 ) AFTER 6 ns;
    GS <= NOT ( N16 AND N18 ) AFTER 12 ns;
    A0 <= NOT ( L6 OR L7 OR L8 OR L9 ) AFTER 11 ns;
    A1 <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 11 ns;
    A2 <= NOT ( L14 OR L15 OR L16 OR L17 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT151\ IS PORT(
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
END \74AHCT151\;

ARCHITECTURE model OF \74AHCT151\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 6 ns;
    N2 <= NOT ( B ) AFTER 6 ns;
    N3 <= NOT ( C ) AFTER 6 ns;
    N4 <= NOT ( G ) AFTER 4 ns;
    N5 <=  ( G ) AFTER 6 ns;
    N6 <= NOT ( A ) AFTER 9 ns;
    N7 <= NOT ( B ) AFTER 9 ns;
    N8 <= NOT ( C ) AFTER 9 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N6 );
    L5 <= NOT ( N7 );
    L6 <= NOT ( N8 );
    L7 <=  ( D0 AND N1 AND N2 AND N3 );
    L8 <=  ( D1 AND L1 AND N2 AND N3 );
    L9 <=  ( D2 AND N1 AND L2 AND N3 );
    L10 <=  ( D3 AND L1 AND L2 AND N3 );
    L11 <=  ( D4 AND L3 AND N1 AND N2 );
    L12 <=  ( D5 AND L3 AND L1 AND N2 );
    L13 <=  ( D6 AND L3 AND N1 AND L2 );
    L14 <=  ( D7 AND L3 AND L1 AND L2 );
    L15 <=  ( L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 );
    L16 <=  ( D0 AND N6 AND N7 AND N8 );
    L17 <=  ( D1 AND L4 AND N7 AND N8 );
    L18 <=  ( D2 AND N6 AND L5 AND N8 );
    L19 <=  ( D3 AND L4 AND L5 AND N8 );
    L20 <=  ( D4 AND L6 AND N6 AND N7 );
    L21 <=  ( D5 AND L6 AND L4 AND N7 );
    L22 <=  ( D6 AND L6 AND N6 AND L5 );
    L23 <=  ( D7 AND L6 AND L4 AND L5 );
    L24 <=  ( L16 OR L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 );
    L25 <= NOT ( L24 );
    Y <=  ( N4 AND L15 ) AFTER 10 ns;
    W <=  ( N5 OR L25 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT153\ IS PORT(
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
END \74AHCT153\;

ARCHITECTURE model OF \74AHCT153\ IS
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
    N1 <= NOT ( \1G\ ) AFTER 3 ns;
    N2 <= NOT ( \2G\ ) AFTER 3 ns;
    N3 <= NOT ( B ) AFTER 6 ns;
    N4 <= NOT ( A ) AFTER 6 ns;
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
    \1Y\ <=  ( L3 OR L4 OR L5 OR L6 ) AFTER 10 ns;
    \2Y\ <=  ( L7 OR L8 OR L9 OR L10 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT154\ IS PORT(
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
END \74AHCT154\;

ARCHITECTURE model OF \74AHCT154\ IS
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
    N1 <= NOT ( A ) AFTER 5 ns;
    N2 <= NOT ( B ) AFTER 5 ns;
    N3 <= NOT ( C ) AFTER 5 ns;
    N4 <= NOT ( D ) AFTER 5 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    N5 <= NOT ( G1 OR G2 ) AFTER 5 ns;
    \0\ <= NOT ( N5 AND N1 AND N2 AND N3 AND N4 ) AFTER 10 ns;
    \1\ <= NOT ( N5 AND L1 AND N2 AND N3 AND N4 ) AFTER 10 ns;
    \2\ <= NOT ( N5 AND N1 AND L2 AND N3 AND N4 ) AFTER 10 ns;
    \3\ <= NOT ( N5 AND L1 AND L2 AND N3 AND N4 ) AFTER 10 ns;
    \4\ <= NOT ( N5 AND N1 AND N2 AND L3 AND N4 ) AFTER 10 ns;
    \5\ <= NOT ( N5 AND L1 AND N2 AND L3 AND N4 ) AFTER 10 ns;
    \6\ <= NOT ( N5 AND N1 AND L2 AND L3 AND N4 ) AFTER 10 ns;
    \7\ <= NOT ( N5 AND L1 AND L2 AND L3 AND N4 ) AFTER 10 ns;
    \8\ <= NOT ( N5 AND N1 AND N2 AND N3 AND L4 ) AFTER 10 ns;
    \9\ <= NOT ( N5 AND L1 AND N2 AND N3 AND L4 ) AFTER 10 ns;
    \10\ <= NOT ( N5 AND N1 AND L2 AND N3 AND L4 ) AFTER 10 ns;
    \11\ <= NOT ( N5 AND L1 AND L2 AND N3 AND L4 ) AFTER 10 ns;
    \12\ <= NOT ( N5 AND N1 AND N2 AND L3 AND L4 ) AFTER 10 ns;
    \13\ <= NOT ( N5 AND L1 AND N2 AND L3 AND L4 ) AFTER 10 ns;
    \14\ <= NOT ( N5 AND N1 AND L2 AND L3 AND L4 ) AFTER 10 ns;
    \15\ <= NOT ( N5 AND L1 AND L2 AND L3 AND L4 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT155\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\1G\ : IN  std_logic;
\1C\ : IN  std_logic;
\2G\ : IN  std_logic;
\2C\ : IN  std_logic;
\1Y0\ : OUT  std_logic;
\1Y1\ : OUT  std_logic;
\1Y2\ : OUT  std_logic;
\1Y3\ : OUT  std_logic;
\2Y0\ : OUT  std_logic;
\2Y1\ : OUT  std_logic;
\2Y2\ : OUT  std_logic;
\2Y3\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT155\;

ARCHITECTURE model OF \74AHCT155\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    L1 <= NOT ( B );
    L2 <= NOT ( A );
    N1 <= NOT ( \1C\ ) AFTER 2 ns;
    N2 <= NOT ( L1 ) AFTER 3 ns;
    N3 <= NOT ( L2 ) AFTER 3 ns;
    L3 <= NOT ( \1G\ OR N1 );
    L4 <= NOT ( \2G\ OR \2C\ );
    \1Y0\ <= NOT ( L1 AND L2 AND L3 ) AFTER 15 ns;
    \1Y1\ <= NOT ( L1 AND N3 AND L3 ) AFTER 15 ns;
    \1Y2\ <= NOT ( N2 AND L2 AND L3 ) AFTER 15 ns;
    \1Y3\ <= NOT ( N2 AND N3 AND L3 ) AFTER 15 ns;
    \2Y0\ <= NOT ( L1 AND L2 AND L4 ) AFTER 15 ns;
    \2Y1\ <= NOT ( L1 AND N3 AND L4 ) AFTER 15 ns;
    \2Y2\ <= NOT ( N2 AND L2 AND L4 ) AFTER 15 ns;
    \2Y3\ <= NOT ( N2 AND N3 AND L4 ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT157\ IS PORT(
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
END \74AHCT157\;

ARCHITECTURE model OF \74AHCT157\ IS
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
    \1Y\ <=  ( L2 OR L3 ) AFTER 9 ns;
    \2Y\ <=  ( L4 OR L5 ) AFTER 9 ns;
    \3Y\ <=  ( L6 OR L7 ) AFTER 9 ns;
    \4Y\ <=  ( L8 OR L9 ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT158\ IS PORT(
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
END \74AHCT158\;

ARCHITECTURE model OF \74AHCT158\ IS
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
    \1Y\ <= NOT ( L2 OR L3 ) AFTER 9 ns;
    \2Y\ <= NOT ( L4 OR L5 ) AFTER 9 ns;
    \3Y\ <= NOT ( L6 OR L7 ) AFTER 9 ns;
    \4Y\ <= NOT ( L8 OR L9 ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT160\ IS PORT(
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
END \74AHCT160\;

ARCHITECTURE model OF \74AHCT160\ IS
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
    N7 <= NOT ( LOAD ) AFTER 0 ns;
    L1 <= NOT ( N7 );
    N1 <=  ( ENT AND ENP ) AFTER 0 ns;
    N2 <=  ( N3 AND N6 ) AFTER 2 ns;
    RCO <=  ( ENT AND N2 ) AFTER 8 ns;
    L2 <=  ( N3 AND N4 );
    L3 <=  ( N3 AND N4 AND N5 );
    L4 <=  ( N3 AND N1 );
    L5 <=  ( L2 AND N1 );
    L6 <=  ( N3 AND N6 );
    L7 <= NOT ( L6 AND N1 );
    L8 <=  ( L3 AND N1 );
    L9 <=  ( N1 XOR N3 );
    L10 <=  ( L4 XOR N4 );
    L11 <=  ( L5 XOR N5 );
    L12 <=  ( L8 XOR N6 );
    L13 <=  ( A AND N7 );
    L14 <=  ( L1 AND L9 );
    L15 <=  ( B AND N7 );
    L16 <=  ( L1 AND L7 AND L10 );
    L17 <=  ( C AND N7 );
    L18 <=  ( L1 AND L11 );
    L19 <=  ( D AND N7 );
    L20 <=  ( L1 AND L7 AND L12 );
    L21 <=  ( L13 OR L14 );
    L22 <=  ( L15 OR L16 );
    L23 <=  ( L17 OR L18 );
    L24 <=  ( L19 OR L20 );
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 6 ns;
    QB <=  ( N4 ) AFTER 6 ns;
    QC <=  ( N5 ) AFTER 6 ns;
    QD <=  ( N6 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT161\ IS PORT(
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
END \74AHCT161\;

ARCHITECTURE model OF \74AHCT161\ IS
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
    N1 <=  ( ENP AND LOAD AND ENT ) AFTER 0 ns;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 2 ns;
    RCO <=  ( ENT AND N2 ) AFTER 8 ns;
    L1 <= NOT ( LOAD );
    L2 <=  ( LOAD AND N3 );
    L3 <=  ( L2 XOR N1 );
    L4 <=  ( L1 AND A );
    L5 <=  ( L3 OR L4 );
    L6 <=  ( LOAD AND N4 );
    L7 <=  ( N1 AND N3 );
    L8 <=  ( L6 XOR L7 );
    L9 <=  ( L1 AND B );
    L10 <=  ( L8 OR L9 );
    L11 <=  ( LOAD AND N5 );
    L12 <=  ( N1 AND N3 AND N4 );
    L13 <=  ( L11 XOR L12 );
    L14 <=  ( L1 AND C );
    L15 <=  ( L13 OR L14 );
    L16 <=  ( LOAD AND N6 );
    L17 <=  ( N1 AND N3 AND N4 AND N5 );
    L18 <=  ( L16 XOR L17 );
    L19 <=  ( L1 AND D );
    L20 <=  ( L18 OR L19 );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 6 ns;
    QB <=  ( N4 ) AFTER 6 ns;
    QC <=  ( N5 ) AFTER 6 ns;
    QD <=  ( N6 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT162\ IS PORT(
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
END \74AHCT162\;

ARCHITECTURE model OF \74AHCT162\ IS
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
    N1 <=  ( ENT AND ENP ) AFTER 0 ns;
    N2 <=  ( N3 AND N6 ) AFTER 0 ns;
    RCO <=  ( ENT AND N2 ) AFTER 10 ns;
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
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 6 ns;
    QB <=  ( N4 ) AFTER 6 ns;
    QC <=  ( N5 ) AFTER 6 ns;
    QD <=  ( N6 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT163\ IS PORT(
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
END \74AHCT163\;

ARCHITECTURE model OF \74AHCT163\ IS
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
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 0 ns;
    N2 <= NOT ( LOAD ) AFTER 0 ns;
    N3 <= NOT ( CLR ) AFTER 0 ns;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( LOAD OR N3 );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 0 ns;
    RCO <=  ( ENT AND N4 ) AFTER 10 ns;
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
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 6 ns;
    QB <=  ( N6 ) AFTER 6 ns;
    QC <=  ( N7 ) AFTER 6 ns;
    QD <=  ( N8 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT164\ IS PORT(
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
END \74AHCT164\;

ARCHITECTURE model OF \74AHCT164\ IS
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
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLR );
    QA <=  ( N1 ) AFTER 10 ns;
    QB <=  ( N2 ) AFTER 10 ns;
    QC <=  ( N3 ) AFTER 10 ns;
    QD <=  ( N4 ) AFTER 10 ns;
    QE <=  ( N5 ) AFTER 10 ns;
    QF <=  ( N6 ) AFTER 10 ns;
    QG <=  ( N7 ) AFTER 10 ns;
    QH <=  ( N8 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT165\ IS PORT(
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
END \74AHCT165\;

ARCHITECTURE model OF \74AHCT165\ IS
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

    BEGIN
    N1 <= NOT ( \SH/L\\D\\\ ) AFTER 7 ns;
    N2 <=  ( SER ) AFTER 4 ns;
    L1 <=  ( CLK AND \SH/L\\D\\\ );
    N3 <=  ( \SH/L\\D\\\ AND INH ) AFTER 7 ns;
    N4 <=  ( L1 OR N3 ) AFTER 0 ns;
    L2 <= NOT ( N1 AND A );
    L3 <= NOT ( N1 AND B );
    L4 <= NOT ( N1 AND C );
    L5 <= NOT ( N1 AND D );
    L6 <= NOT ( N1 AND E );
    L7 <= NOT ( N1 AND F );
    L8 <= NOT ( N1 AND G );
    L9 <= NOT ( N1 AND H );
    L10 <= NOT ( N1 AND L2 );
    L11 <= NOT ( N1 AND L3 );
    L12 <= NOT ( N1 AND L4 );
    L13 <= NOT ( N1 AND L5 );
    L14 <= NOT ( N1 AND L6 );
    L15 <= NOT ( N1 AND L7 );
    L16 <= NOT ( N1 AND L8 );
    L17 <= NOT ( N1 AND L9 );
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N5 , d=>N2 , clk=>N4 , pr=>L2 , cl=>L10 );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>N4 , pr=>L3 , cl=>L11 );
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>N4 , pr=>L4 , cl=>L12 );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>N4 , pr=>L5 , cl=>L13 );
    DQFFPC_4 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>N4 , pr=>L6 , cl=>L14 );
    DQFFPC_5 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N10 , d=>N9 , clk=>N4 , pr=>L7 , cl=>L15 );
    DQFFPC_6 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N11 , d=>N10 , clk=>N4 , pr=>L8 , cl=>L16 );
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>QH , qNot=>\Q\\H\\\ , d=>N11 , clk=>N4 , pr=>L9 , cl=>L17 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT166\ IS PORT(
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
END \74AHCT166\;

ARCHITECTURE model OF \74AHCT166\ IS
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

    BEGIN
    N1 <=  ( \SH/L\\D\\\ ) AFTER 10 ns;
    N2 <= NOT ( \SH/L\\D\\\ ) AFTER 10 ns;
    N3 <=  ( INH ) AFTER 0 ns;
    N4 <=  ( CLK OR N3 ) AFTER 0 ns;
    L1 <=  ( SER AND N1 );
    L2 <=  ( N2 AND A );
    L3 <=  ( L1 OR L2 );
    L4 <=  ( N5 AND N1 );
    L5 <=  ( N2 AND B );
    L6 <=  ( L4 OR L5 );
    L7 <=  ( N6 AND N1 );
    L8 <=  ( N2 AND C );
    L9 <=  ( L7 OR L8 );
    L10 <=  ( N7 AND N1 );
    L11 <=  ( N2 AND D );
    L12 <=  ( L10 OR L11 );
    L13 <=  ( N8 AND N1 );
    L14 <=  ( N2 AND E );
    L15 <=  ( L13 OR L14 );
    L16 <=  ( N9 AND N1 );
    L17 <=  ( N2 AND F );
    L18 <=  ( L16 OR L17 );
    L19 <=  ( N10 AND N1 );
    L20 <=  ( N2 AND G );
    L21 <=  ( L19 OR L20 );
    L22 <=  ( N11 AND N1 );
    L23 <=  ( N2 AND H );
    L24 <=  ( L22 OR L23 );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>L3 , clk=>N4 , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>L6 , clk=>N4 , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N4 , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>L12 , clk=>N4 , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N4 , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N10 , d=>L18 , clk=>N4 , cl=>CLR );
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N11 , d=>L21 , clk=>N4 , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N12 , d=>L24 , clk=>N4 , cl=>CLR );
    QH <=  ( N12 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT168\ IS PORT(
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
END \74AHCT168\;

ARCHITECTURE model OF \74AHCT168\ IS
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
    L41 <= NOT ( L45 OR N5 OR L3 OR ENT );
    L46 <= NOT ( ENT );
    L42 <=  ( L46 AND L45 AND N5 AND L44 AND L43 AND L3 );
    N5 <=  ( L2 ) AFTER 7 ns;
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    QA <=  ( N1 ) AFTER 1 ns;
    QB <=  ( N2 ) AFTER 1 ns;
    QC <=  ( N3 ) AFTER 1 ns;
    QD <=  ( N4 ) AFTER 1 ns;
    RCO <= NOT ( L41 OR L42 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT169\ IS PORT(
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
END \74AHCT169\;

ARCHITECTURE model OF \74AHCT169\ IS
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
    N1 <= NOT ( LOAD ) AFTER 0 ns;
    N2 <=  ( ENT OR ENP ) AFTER 5 ns;
    N3 <= NOT ( ENT ) AFTER 0 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 7 ns;
    N5 <=  ( \U/D\\\ ) AFTER 7 ns;
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
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 2 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 16 ns;
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
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 8 ns;
    QB <= NOT ( N8 ) AFTER 8 ns;
    QC <= NOT ( N9 ) AFTER 8 ns;
    QD <= NOT ( N10 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT173\ IS PORT(
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
END \74AHCT173\;

ARCHITECTURE model OF \74AHCT173\ IS
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
    L1 <= NOT ( M OR N );
    L2 <= NOT ( CLR );
    L3 <= NOT ( N1 );
    L4 <=  ( N2 AND L3 );
    L5 <=  ( D1 AND N1 );
    L6 <=  ( L4 OR L5 );
    L7 <=  ( N3 AND L3 );
    L8 <=  ( D2 AND N1 );
    L9 <=  ( L7 OR L8 );
    L10 <=  ( N4 AND L3 );
    L11 <=  ( D3 AND N1 );
    L12 <=  ( L10 OR L11 );
    L13 <=  ( N5 AND L3 );
    L14 <=  ( D4 AND N1 );
    L15 <=  ( L13 OR L14 );
    N1 <= NOT ( G1 OR G2 ) AFTER 3 ns;
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>L6 , clk=>CLK , cl=>L2 );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L9 , clk=>CLK , cl=>L2 );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L12 , clk=>CLK , cl=>L2 );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>L2 );
    N6 <=  ( N2 ) AFTER 11 ns;
    N7 <=  ( N3 ) AFTER 11 ns;
    N8 <=  ( N4 ) AFTER 11 ns;
    N9 <=  ( N5 ) AFTER 11 ns;
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1 , i1=>N6 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2 , i1=>N7 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3 , i1=>N8 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT174\ IS PORT(
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
END \74AHCT174\;

ARCHITECTURE model OF \74AHCT174\ IS

    BEGIN
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT175\ IS PORT(
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
END \74AHCT175\;

ARCHITECTURE model OF \74AHCT175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT191\ IS PORT(
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
END \74AHCT191\;

ARCHITECTURE model OF \74AHCT191\ IS
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
    L2 <= NOT ( \D/U\\\ OR G );
    L3 <= NOT ( G OR L1 );
    L4 <=  ( L1 AND N4 AND N6 AND N8 AND N10 );
    L5 <=  ( \D/U\\\ AND N5 AND N7 AND N9 AND N11 );
    L6 <= NOT ( A AND N3 );
    L7 <= NOT ( L6 AND N3 );
    L8 <= NOT ( B AND N3 );
    L9 <= NOT ( L8 AND N3 );
    L10 <= NOT ( C AND N3 );
    L11 <= NOT ( L10 AND N3 );
    L12 <= NOT ( D AND N3 );
    L13 <= NOT ( L12 AND N3 );
    L14 <=  ( L3 AND N5 );
    L15 <=  ( N4 AND L2 );
    L16 <=  ( L3 AND N5 AND N7 );
    L17 <=  ( N4 AND N6 AND L2 );
    L18 <=  ( L3 AND N5 AND N7 AND N9 );
    L19 <=  ( N4 AND N6 AND N8 AND L2 );
    L20 <= NOT ( G );
    L21 <=  ( L14 OR L15 );
    L22 <=  ( L16 OR L17 );
    L23 <=  ( L18 OR L19 );
    N1 <= NOT ( CLK ) AFTER 8 ns;
    N2 <= NOT ( G ) AFTER 6 ns;
    N3 <= NOT ( LOAD ) AFTER 9 ns;
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N12 <=  ( L4 OR L5 ) AFTER 20 ns;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 7 ns;
    QA <=  ( N4 ) AFTER 7 ns;
    QB <=  ( N6 ) AFTER 7 ns;
    QC <=  ( N8 ) AFTER 7 ns;
    QD <=  ( N10 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT193\ IS PORT(
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
END \74AHCT193\;

ARCHITECTURE model OF \74AHCT193\ IS
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
    L3 <= NOT ( A AND N2 AND N1 );
    L4 <= NOT ( B AND N2 AND N1 );
    L5 <= NOT ( C AND N2 AND N1 );
    L6 <= NOT ( D AND N2 AND N1 );
    L7 <=  ( L1 AND N8 );
    L8 <=  ( N7 AND L2 );
    L9 <=  ( L1 AND N8 AND N10 );
    L10 <=  ( N7 AND N9 AND L2 );
    L11 <=  ( L1 AND N8 AND N10 AND N12 );
    L12 <=  ( N7 AND N9 AND N11 AND L2 );
    L13 <= NOT ( L3 AND N2 );
    L14 <= NOT ( L4 AND N2 );
    L15 <= NOT ( L5 AND N2 );
    L16 <= NOT ( L6 AND N2 );
    L17 <=  ( N1 AND L13 );
    L18 <=  ( N1 AND L14 );
    L19 <=  ( N1 AND L15 );
    L20 <=  ( N1 AND L16 );
    N1 <= NOT ( CLR ) AFTER 4 ns;
    N2 <= NOT ( LOAD ) AFTER 16 ns;
    N3 <= NOT ( L1 OR L2 ) AFTER 6 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 6 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 6 ns;
    N6 <= NOT ( L11 OR L12 ) AFTER 6 ns;
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 13 ns;
    CO <= NOT ( N7 AND N9 AND N11 AND N13 AND L2 ) AFTER 13 ns;
    QA <=  ( N7 ) AFTER 3 ns;
    QB <=  ( N9 ) AFTER 3 ns;
    QC <=  ( N11 ) AFTER 3 ns;
    QD <=  ( N13 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT194\ IS PORT(
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
END \74AHCT194\;

ARCHITECTURE model OF \74AHCT194\ IS
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
    N1 <=  ( S1 AND S0 ) AFTER 0 ns;
    N2 <=  ( S1 AND L2 ) AFTER 0 ns;
    N3 <=  ( L1 AND S0 ) AFTER 0 ns;
    N4 <=  ( L1 AND L2 ) AFTER 0 ns;
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
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>L23 , clk=>CLK , cl=>CLR );
    QA <=  ( N5 ) AFTER 5 ns;
    QB <=  ( N6 ) AFTER 5 ns;
    QC <=  ( N7 ) AFTER 5 ns;
    QD <=  ( N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT195\ IS PORT(
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
END \74AHCT195\;

ARCHITECTURE model OF \74AHCT195\ IS
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
    N1 <= NOT ( \S/L\\\ ) AFTER 0 ns;
    N2 <=  ( \S/L\\\ ) AFTER 0 ns;
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
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>L14 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 5 ns;
    QB <=  ( N4 ) AFTER 5 ns;
    QC <=  ( N5 ) AFTER 5 ns;
    QD <=  ( N6 ) AFTER 5 ns;
    \Q\\D\\\ <= NOT ( N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT240\ IS PORT(
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
END \74AHCT240\;

ARCHITECTURE model OF \74AHCT240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 10 ns;
    N2 <= NOT ( A2_A ) AFTER 10 ns;
    N3 <= NOT ( A3_A ) AFTER 10 ns;
    N4 <= NOT ( A4_A ) AFTER 10 ns;
    N5 <= NOT ( A1_B ) AFTER 10 ns;
    N6 <= NOT ( A2_B ) AFTER 10 ns;
    N7 <= NOT ( A3_B ) AFTER 10 ns;
    N8 <= NOT ( A4_B ) AFTER 10 ns;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT241\ IS PORT(
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
END \74AHCT241\;

ARCHITECTURE model OF \74AHCT241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 10 ns;
    N2 <=  ( \1A2\ ) AFTER 10 ns;
    N3 <=  ( \1A3\ ) AFTER 10 ns;
    N4 <=  ( \1A4\ ) AFTER 10 ns;
    N5 <=  ( \2A1\ ) AFTER 10 ns;
    N6 <=  ( \2A2\ ) AFTER 10 ns;
    N7 <=  ( \2A3\ ) AFTER 10 ns;
    N8 <=  ( \2A4\ ) AFTER 10 ns;
    L1 <= NOT ( \1G\ );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT242\ IS PORT(
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
END \74AHCT242\;

ARCHITECTURE model OF \74AHCT242\ IS
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
    N1 <= NOT ( A1 ) AFTER 11 ns;
    N2 <= NOT ( A2 ) AFTER 11 ns;
    N3 <= NOT ( A3 ) AFTER 11 ns;
    N4 <= NOT ( A4 ) AFTER 11 ns;
    N5 <= NOT ( B4 ) AFTER 11 ns;
    N6 <= NOT ( B3 ) AFTER 11 ns;
    N7 <= NOT ( B2 ) AFTER 11 ns;
    N8 <= NOT ( B1 ) AFTER 11 ns;
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT243\ IS PORT(
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
END \74AHCT243\;

ARCHITECTURE model OF \74AHCT243\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( B4 ) AFTER 11 ns;
    N6 <=  ( B3 ) AFTER 11 ns;
    N7 <=  ( B2 ) AFTER 11 ns;
    N8 <=  ( B1 ) AFTER 11 ns;
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT244\ IS PORT(
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
END \74AHCT244\;

ARCHITECTURE model OF \74AHCT244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 10 ns;
    N2 <=  ( \1A2\ ) AFTER 10 ns;
    N3 <=  ( \1A3\ ) AFTER 10 ns;
    N4 <=  ( \1A4\ ) AFTER 10 ns;
    N5 <=  ( \2A1\ ) AFTER 10 ns;
    N6 <=  ( \2A2\ ) AFTER 10 ns;
    N7 <=  ( \2A3\ ) AFTER 10 ns;
    N8 <=  ( \2A4\ ) AFTER 10 ns;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT245\ IS PORT(
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
END \74AHCT245\;

ARCHITECTURE model OF \74AHCT245\ IS
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
    L3 <=  ( DIR AND L1 );
    L4 <=  ( L1 AND L2 );
    N1 <=  ( A1 ) AFTER 10 ns;
    N2 <=  ( A2 ) AFTER 10 ns;
    N3 <=  ( A3 ) AFTER 10 ns;
    N4 <=  ( A4 ) AFTER 10 ns;
    N5 <=  ( A5 ) AFTER 10 ns;
    N6 <=  ( A6 ) AFTER 10 ns;
    N7 <=  ( A7 ) AFTER 10 ns;
    N8 <=  ( A8 ) AFTER 10 ns;
    N9 <=  ( B8 ) AFTER 10 ns;
    N10 <=  ( B7 ) AFTER 10 ns;
    N11 <=  ( B6 ) AFTER 10 ns;
    N12 <=  ( B5 ) AFTER 10 ns;
    N13 <=  ( B4 ) AFTER 10 ns;
    N14 <=  ( B3 ) AFTER 10 ns;
    N15 <=  ( B2 ) AFTER 10 ns;
    N16 <=  ( B1 ) AFTER 10 ns;
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT251\ IS PORT(
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
END \74AHCT251\;

ARCHITECTURE model OF \74AHCT251\ IS
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
    N1 <= NOT ( A ) AFTER 6 ns;
    N2 <= NOT ( B ) AFTER 6 ns;
    N3 <= NOT ( C ) AFTER 6 ns;
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
    N4 <= NOT ( L13 ) AFTER 15 ns;
    N5 <=  ( L13 ) AFTER 15 ns;
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT253\ IS PORT(
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
END \74AHCT253\;

ARCHITECTURE model OF \74AHCT253\ IS
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
    N1 <= NOT ( B ) AFTER 6 ns;
    N2 <= NOT ( A ) AFTER 6 ns;
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 15 ns;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 15 ns;
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>16 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>16 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT257\ IS PORT(
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
END \74AHCT257\;

ARCHITECTURE model OF \74AHCT257\ IS
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
    N2 <=  ( L3 OR L4 ) AFTER 12 ns;
    N3 <=  ( L5 OR L6 ) AFTER 12 ns;
    N4 <=  ( L7 OR L8 ) AFTER 12 ns;
    N5 <=  ( L9 OR L10 ) AFTER 12 ns;
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT258\ IS PORT(
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
END \74AHCT258\;

ARCHITECTURE model OF \74AHCT258\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 11 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <= NOT ( L3 OR L4 ) AFTER 14 ns;
    N3 <= NOT ( L5 OR L6 ) AFTER 14 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 14 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 14 ns;
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT259\ IS PORT(
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
END \74AHCT259\;

ARCHITECTURE model OF \74AHCT259\ IS
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
    N1 <= NOT ( S2 ) AFTER 2 ns;
    N2 <= NOT ( S1 ) AFTER 2 ns;
    N3 <= NOT ( S0 ) AFTER 2 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( G );
    L5 <=  ( L1 AND L2 AND L3 AND L4 );
    L6 <=  ( L1 AND L2 AND N3 AND L4 );
    L7 <=  ( L1 AND N2 AND L3 AND L4 );
    L8 <=  ( L1 AND N2 AND N3 AND L4 );
    L9 <=  ( N1 AND L2 AND L3 AND L4 );
    L10 <=  ( N1 AND L2 AND N3 AND L4 );
    L11 <=  ( N1 AND N2 AND L3 AND L4 );
    L12 <=  ( N1 AND N2 AND N3 AND L4 );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q7 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q6 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q5 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q4 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q3 , d=>D , enable=>L9 , pr=>ONE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q2 , d=>D , enable=>L10 , pr=>ONE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q1 , d=>D , enable=>L11 , pr=>ONE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q0 , d=>D , enable=>L12 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT266\ IS PORT(
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
END \74AHCT266\;

ARCHITECTURE model OF \74AHCT266\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 24 ns;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 24 ns;
    O_C <= NOT ( I0_C XOR I1_C ) AFTER 24 ns;
    O_D <= NOT ( I0_D XOR I1_D ) AFTER 24 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT273\ IS PORT(
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
END \74AHCT273\;

ARCHITECTURE model OF \74AHCT273\ IS

    BEGIN
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT280\ IS PORT(
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
END \74AHCT280\;

ARCHITECTURE model OF \74AHCT280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 15 ns;
    ODD <=  ( L1 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT299\ IS PORT(
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
END \74AHCT299\;

ARCHITECTURE model OF \74AHCT299\ IS
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
    N1 <=  ( S1 AND S0 ) AFTER 7 ns;
    N2 <=  ( S1 AND L2 ) AFTER 0 ns;
    N3 <=  ( L1 AND S0 ) AFTER 0 ns;
    N4 <=  ( L1 AND L2 ) AFTER 0 ns;
    N5 <= NOT ( S1 AND S0 ) AFTER 20 ns;
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
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLR );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLR );
    N15 <=  ( N7 ) AFTER 6 ns;
    N16 <=  ( N8 ) AFTER 6 ns;
    N17 <=  ( N9 ) AFTER 6 ns;
    N18 <=  ( N10 ) AFTER 6 ns;
    N19 <=  ( N11 ) AFTER 6 ns;
    N20 <=  ( N12 ) AFTER 6 ns;
    N21 <=  ( N13 ) AFTER 6 ns;
    N22 <=  ( N14 ) AFTER 6 ns;
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N15 , en=>L3 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N16 , en=>L3 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N17 , en=>L3 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N18 , en=>L3 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N19 , en=>L3 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N20 , en=>L3 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N21 , en=>L3 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>19 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N22 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 7 ns;
    \Q\\H\\\ <=  ( N14 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT352\ IS PORT(
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
END \74AHCT352\;

ARCHITECTURE model OF \74AHCT352\ IS
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
    N1 <= NOT ( \1G\ ) AFTER 2 ns;
    N2 <= NOT ( \2G\ ) AFTER 2 ns;
    N3 <= NOT ( B ) AFTER 5 ns;
    N4 <= NOT ( A ) AFTER 5 ns;
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
    \1Y\ <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 18 ns;
    \2Y\ <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT353\ IS PORT(
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
END \74AHCT353\;

ARCHITECTURE model OF \74AHCT353\ IS
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
    N1 <= NOT ( B ) AFTER 6 ns;
    N2 <= NOT ( A ) AFTER 6 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( \1G\ );
    L4 <= NOT ( \2G\ );
    L5 <=  ( L3 AND N1 AND N2 AND \1C0\ );
    L6 <=  ( L3 AND N1 AND L2 AND \1C1\ );
    L7 <=  ( L3 AND L1 AND N2 AND \1C2\ );
    L8 <=  ( L3 AND L1 AND L2 AND \1C3\ );
    L9 <=  ( \2C0\ AND N1 AND N2 AND L4 );
    L10 <=  ( \2C1\ AND N1 AND L2 AND L4 );
    L11 <=  ( \2C2\ AND L1 AND N2 AND L4 );
    L12 <=  ( \2C3\ AND L1 AND L2 AND L4 );
    N3 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 18 ns;
    N4 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 18 ns;
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>16 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L3 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>16 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT365\ IS PORT(
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
END \74AHCT365\;

ARCHITECTURE model OF \74AHCT365\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 14 ns;
    N2 <=  ( A2 ) AFTER 14 ns;
    N3 <=  ( A3 ) AFTER 14 ns;
    N4 <=  ( A4 ) AFTER 14 ns;
    N5 <=  ( A5 ) AFTER 14 ns;
    N6 <=  ( A6 ) AFTER 14 ns;
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT366\ IS PORT(
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
END \74AHCT366\;

ARCHITECTURE model OF \74AHCT366\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <= NOT ( A1 ) AFTER 14 ns;
    N2 <= NOT ( A2 ) AFTER 14 ns;
    N3 <= NOT ( A3 ) AFTER 14 ns;
    N4 <= NOT ( A4 ) AFTER 14 ns;
    N5 <= NOT ( A5 ) AFTER 14 ns;
    N6 <= NOT ( A6 ) AFTER 14 ns;
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT367\ IS PORT(
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
END \74AHCT367\;

ARCHITECTURE model OF \74AHCT367\ IS
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
    N1 <=  ( \1A1\ ) AFTER 14 ns;
    N2 <=  ( \1A2\ ) AFTER 14 ns;
    N3 <=  ( \1A3\ ) AFTER 14 ns;
    N4 <=  ( \1A4\ ) AFTER 14 ns;
    N5 <=  ( \2A1\ ) AFTER 14 ns;
    N6 <=  ( \2A2\ ) AFTER 14 ns;
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT368\ IS PORT(
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
END \74AHCT368\;

ARCHITECTURE model OF \74AHCT368\ IS
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
    N1 <= NOT ( \1A1\ ) AFTER 14 ns;
    N2 <= NOT ( \1A2\ ) AFTER 14 ns;
    N3 <= NOT ( \1A3\ ) AFTER 14 ns;
    N4 <= NOT ( \1A4\ ) AFTER 14 ns;
    N5 <= NOT ( \2A1\ ) AFTER 14 ns;
    N6 <= NOT ( \2A2\ ) AFTER 14 ns;
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT373\ IS PORT(
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
END \74AHCT373\;

ARCHITECTURE model OF \74AHCT373\ IS
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
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT374\ IS PORT(
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
END \74AHCT374\;

ARCHITECTURE model OF \74AHCT374\ IS
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
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT377\ IS PORT(
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
END \74AHCT377\;

ARCHITECTURE model OF \74AHCT377\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 5 ns;
    N2 <=  ( N1 AND CLK ) AFTER 0 ns;
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N2 );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N2 );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N2 );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N2 );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N2 );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N2 );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>N2 );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT390\ IS PORT(
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
END \74AHCT390\;

ARCHITECTURE model OF \74AHCT390\ IS
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
    L9 <= NOT ( N7 );
    L10 <= NOT ( N8 );
    L11 <= NOT ( N9 );
    L12 <= NOT ( N10 );
    L13 <= NOT ( N11 );
    L14 <= NOT ( N12 );
    L15 <= NOT ( N13 );
    L16 <= NOT ( N14 );
    L3 <=  ( L10 AND L12 );
    L4 <=  ( L11 AND L12 );
    L7 <= NOT ( L3 OR L4 );
    L5 <=  ( L14 AND L16 );
    L6 <=  ( L15 AND L16 );
    L8 <= NOT ( L5 OR L6 );
    N1 <= NOT ( CKA_A ) AFTER 0 ns;
    N2 <= NOT ( CKA_B ) AFTER 0 ns;
    N3 <= NOT ( CKB_A AND L12 ) AFTER 0 ns;
    N5 <= NOT ( CKB_B AND L16 ) AFTER 0 ns;
    N4 <= NOT ( CKB_A AND L7 ) AFTER 0 ns;
    N6 <= NOT ( CKB_B AND L8 ) AFTER 0 ns;
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N1 , cl=>L1 );
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP (q=>N8 , qNot=>N15 , d=>L10 , clk=>N3 , cl=>L1 );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>L11 , clk=>N15 , cl=>L1 );
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>L12 , clk=>N4 , cl=>L1 );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L13 , clk=>N2 , cl=>L2 );
    DFFC_5 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP (q=>N12 , qNot=>N16 , d=>L14 , clk=>N5 , cl=>L2 );
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>L15 , clk=>N16 , cl=>L2 );
    DQFFC_63 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>L16 , clk=>N6 , cl=>L2 );
    QA_A <=  ( N7 ) AFTER 5 ns;
    QB_A <=  ( N8 ) AFTER 5 ns;
    QC_A <=  ( N9 ) AFTER 5 ns;
    QD_A <=  ( N10 ) AFTER 5 ns;
    QA_B <=  ( N11 ) AFTER 5 ns;
    QB_B <=  ( N12 ) AFTER 5 ns;
    QC_B <=  ( N13 ) AFTER 5 ns;
    QD_B <=  ( N14 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT393\ IS PORT(
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
END \74AHCT393\;

ARCHITECTURE model OF \74AHCT393\ IS
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
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    N1 <= NOT ( A_A ) AFTER 0 ns;
    N2 <= NOT ( A_B ) AFTER 0 ns;
    L1 <= NOT ( CLR_A );
    L2 <= NOT ( CLR_B );
    L3 <= NOT ( N9 );
    L4 <= NOT ( N10 );
    L5 <= NOT ( N11 );
    L6 <= NOT ( N12 );
    L7 <= NOT ( N13 );
    L8 <= NOT ( N14 );
    L9 <= NOT ( N15 );
    L10 <= NOT ( N16 );
    DQFFP_0 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , pr=>L1 );
    DQFFP_1 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L4 , clk=>N9 , pr=>L1 );
    DQFFP_2 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N11 , d=>L5 , clk=>N10 , pr=>L1 );
    DQFFP_3 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>L6 , clk=>N11 , pr=>L1 );
    DQFFP_4 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>L7 , clk=>N2 , pr=>L2 );
    DQFFP_5 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>L8 , clk=>N13 , pr=>L2 );
    DQFFP_6 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , pr=>L2 );
    DQFFP_7 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>L10 , clk=>N15 , pr=>L2 );
    QA_A <= NOT ( N9 ) AFTER 10 ns;
    QB_A <= NOT ( N10 ) AFTER 10 ns;
    QC_A <= NOT ( N11 ) AFTER 10 ns;
    QD_A <= NOT ( N12 ) AFTER 10 ns;
    QA_B <= NOT ( N13 ) AFTER 10 ns;
    QB_B <= NOT ( N14 ) AFTER 10 ns;
    QC_B <= NOT ( N15 ) AFTER 10 ns;
    QD_B <= NOT ( N16 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT399\ IS PORT(
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
END \74AHCT399\;

ARCHITECTURE model OF \74AHCT399\ IS
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
    N1 <= NOT ( WS ) AFTER 0 ns;
    L1 <= NOT ( N1 );
    L2 <=  ( A1 AND N1 );
    L3 <=  ( L1 AND A2 );
    L4 <=  ( B1 AND N1 );
    L5 <=  ( L1 AND B2 );
    L6 <=  ( C1 AND N1 );
    L7 <=  ( L1 AND C2 );
    L8 <=  ( D1 AND N1 );
    L9 <=  ( L1 AND D2 );
    L10 <=  ( L2 OR L3 );
    L11 <=  ( L4 OR L5 );
    L12 <=  ( L6 OR L7 );
    L13 <=  ( L8 OR L9 );
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>QA , d=>L10 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>QB , d=>L11 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>QC , d=>L12 , clk=>CLK );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>QD , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT465\ IS PORT(
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
END \74AHCT465\;

ARCHITECTURE model OF \74AHCT465\ IS
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
    N1 <=  ( A1 ) AFTER 12 ns;
    N2 <=  ( A2 ) AFTER 12 ns;
    N3 <=  ( A3 ) AFTER 12 ns;
    N4 <=  ( A4 ) AFTER 12 ns;
    N5 <=  ( A5 ) AFTER 12 ns;
    N6 <=  ( A6 ) AFTER 12 ns;
    N7 <=  ( A7 ) AFTER 12 ns;
    N8 <=  ( A8 ) AFTER 12 ns;
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT466\ IS PORT(
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
END \74AHCT466\;

ARCHITECTURE model OF \74AHCT466\ IS
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
    N1 <= NOT ( A1 ) AFTER 12 ns;
    N2 <= NOT ( A2 ) AFTER 12 ns;
    N3 <= NOT ( A3 ) AFTER 12 ns;
    N4 <= NOT ( A4 ) AFTER 12 ns;
    N5 <= NOT ( A5 ) AFTER 12 ns;
    N6 <= NOT ( A6 ) AFTER 12 ns;
    N7 <= NOT ( A7 ) AFTER 12 ns;
    N8 <= NOT ( A8 ) AFTER 12 ns;
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT467\ IS PORT(
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
END \74AHCT467\;

ARCHITECTURE model OF \74AHCT467\ IS
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
    L1 <= NOT ( G_A );
    N1 <=  ( A1_A ) AFTER 12 ns;
    N2 <=  ( A2_A ) AFTER 12 ns;
    N3 <=  ( A3_A ) AFTER 12 ns;
    N4 <=  ( A4_A ) AFTER 12 ns;
    N5 <=  ( A1_B ) AFTER 12 ns;
    N6 <=  ( A2_B ) AFTER 12 ns;
    N7 <=  ( A3_B ) AFTER 12 ns;
    N8 <=  ( A4_B ) AFTER 12 ns;
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>G_B );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>G_B );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>G_B );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>G_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT468\ IS PORT(
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
END \74AHCT468\;

ARCHITECTURE model OF \74AHCT468\ IS
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
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    N1 <= NOT ( A1_A ) AFTER 12 ns;
    N2 <= NOT ( A2_A ) AFTER 12 ns;
    N3 <= NOT ( A3_A ) AFTER 12 ns;
    N4 <= NOT ( A4_A ) AFTER 12 ns;
    N5 <= NOT ( A1_B ) AFTER 12 ns;
    N6 <= NOT ( A2_B ) AFTER 12 ns;
    N7 <= NOT ( A3_B ) AFTER 12 ns;
    N8 <= NOT ( A4_B ) AFTER 12 ns;
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT518\ IS PORT(
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
END \74AHCT518\;

ARCHITECTURE model OF \74AHCT518\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 7 ns;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 7 ns;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 7 ns;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 7 ns;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 7 ns;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 7 ns;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 7 ns;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 7 ns;
    L1 <= NOT ( G );
    \P=Q\ <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT519\ IS PORT(
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
END \74AHCT519\;

ARCHITECTURE model OF \74AHCT519\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 7 ns;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 7 ns;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 7 ns;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 7 ns;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 7 ns;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 7 ns;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 7 ns;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 7 ns;
    L1 <= NOT ( G );
    \P=Q\ <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT520\ IS PORT(
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
END \74AHCT520\;

ARCHITECTURE model OF \74AHCT520\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 2 ns;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 2 ns;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 2 ns;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 2 ns;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 2 ns;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 2 ns;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 2 ns;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 2 ns;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT521\ IS PORT(
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
END \74AHCT521\;

ARCHITECTURE model OF \74AHCT521\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 2 ns;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 2 ns;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 2 ns;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 2 ns;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 2 ns;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 2 ns;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 2 ns;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 2 ns;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT522\ IS PORT(
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
END \74AHCT522\;

ARCHITECTURE model OF \74AHCT522\ IS
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
    N1 <= NOT ( P0 XOR Q0 ) AFTER 5 ns;
    N2 <= NOT ( P1 XOR Q1 ) AFTER 5 ns;
    N3 <= NOT ( P2 XOR Q2 ) AFTER 5 ns;
    N4 <= NOT ( P3 XOR Q3 ) AFTER 5 ns;
    N5 <= NOT ( P4 XOR Q4 ) AFTER 5 ns;
    N6 <= NOT ( P5 XOR Q5 ) AFTER 5 ns;
    N7 <= NOT ( P6 XOR Q6 ) AFTER 5 ns;
    N8 <= NOT ( P7 XOR Q7 ) AFTER 5 ns;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT533\ IS PORT(
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
END \74AHCT533\;

ARCHITECTURE model OF \74AHCT533\ IS
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
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT534\ IS PORT(
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
END \74AHCT534\;

ARCHITECTURE model OF \74AHCT534\ IS
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
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT540\ IS PORT(
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
END \74AHCT540\;

ARCHITECTURE model OF \74AHCT540\ IS
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
    N1 <= NOT ( A1 ) AFTER 12 ns;
    N2 <= NOT ( A2 ) AFTER 12 ns;
    N3 <= NOT ( A3 ) AFTER 12 ns;
    N4 <= NOT ( A4 ) AFTER 12 ns;
    N5 <= NOT ( A5 ) AFTER 12 ns;
    N6 <= NOT ( A6 ) AFTER 12 ns;
    N7 <= NOT ( A7 ) AFTER 12 ns;
    N8 <= NOT ( A8 ) AFTER 12 ns;
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT541\ IS PORT(
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
END \74AHCT541\;

ARCHITECTURE model OF \74AHCT541\ IS
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
    N1 <=  ( A1 ) AFTER 12 ns;
    N2 <=  ( A2 ) AFTER 12 ns;
    N3 <=  ( A3 ) AFTER 12 ns;
    N4 <=  ( A4 ) AFTER 12 ns;
    N5 <=  ( A5 ) AFTER 12 ns;
    N6 <=  ( A6 ) AFTER 12 ns;
    N7 <=  ( A7 ) AFTER 12 ns;
    N8 <=  ( A8 ) AFTER 12 ns;
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT563\ IS PORT(
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
END \74AHCT563\;

ARCHITECTURE model OF \74AHCT563\ IS
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
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT564\ IS PORT(
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
END \74AHCT564\;

ARCHITECTURE model OF \74AHCT564\ IS
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
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT573\ IS PORT(
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
END \74AHCT573\;

ARCHITECTURE model OF \74AHCT573\ IS
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
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT574\ IS PORT(
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
END \74AHCT574\;

ARCHITECTURE model OF \74AHCT574\ IS
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
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT592\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
CCLKEN : IN  std_logic;
CCLK : IN  std_logic;
CLOAD : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT592\;

ARCHITECTURE model OF \74AHCT592\ IS
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

    BEGIN
    L1 <= NOT ( CLOAD );
    L2 <= NOT ( CCLKEN );
    L3 <= NOT ( N1 );
    L4 <= NOT ( N2 AND L1 );
    L5 <= NOT ( L1 AND N3 );
    L6 <= NOT ( N4 AND L1 );
    L7 <= NOT ( L1 AND N5 );
    L8 <= NOT ( N6 AND L1 );
    L9 <= NOT ( L1 AND N7 );
    L10 <= NOT ( N8 AND L1 );
    L11 <= NOT ( L1 AND N9 );
    L12 <= NOT ( N10 AND L1 );
    L13 <= NOT ( L1 AND N11 );
    L14 <= NOT ( N12 AND L1 );
    L15 <= NOT ( L1 AND N13 );
    L16 <= NOT ( N14 AND L1 );
    L17 <= NOT ( L1 AND N15 );
    L18 <= NOT ( N16 AND L1 );
    L19 <= NOT ( L1 AND N17 );
    L20 <=  ( L5 AND CCLR );
    L21 <=  ( L7 AND CCLR );
    L22 <=  ( L9 AND CCLR );
    L23 <=  ( L11 AND CCLR );
    L24 <=  ( L13 AND CCLR );
    L25 <=  ( L15 AND CCLR );
    L26 <=  ( L17 AND CCLR );
    L27 <=  ( L19 AND CCLR );
    L28 <= NOT ( N18 );
    L29 <= NOT ( N19 );
    L30 <= NOT ( N20 );
    L31 <= NOT ( N21 );
    L32 <= NOT ( N22 );
    L33 <= NOT ( N23 );
    L34 <= NOT ( N24 );
    L35 <= NOT ( N25 );
    N1 <=  ( CCLK AND L2 ) AFTER 0 ns;
    N26 <= NOT ( N18 AND L3 ) AFTER 0 ns;
    N27 <= NOT ( N19 AND L3 AND N18 ) AFTER 0 ns;
    N28 <= NOT ( N20 AND L3 AND N19 AND N18 ) AFTER 0 ns;
    N29 <= NOT ( N21 AND L3 AND N20 AND N19 AND N18 ) AFTER 0 ns;
    N30 <= NOT ( N22 AND L3 AND N21 AND N20 AND N19 AND N18 ) AFTER 0 ns;
    N31 <= NOT ( N23 AND L3 AND N22 AND N21 AND N20 AND N19 AND N18 ) AFTER 0 ns;
    N32 <= NOT ( N24 AND L3 AND N23 AND N22 AND N21 AND N20 AND N19 AND N18 ) AFTER 0 ns;
    DFF_0 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , qNot=>N3 , d=>A , clk=>RCLK );
    DFF_1 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , d=>B , clk=>RCLK );
    DFF_2 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , d=>C , clk=>RCLK );
    DFF_3 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , d=>D , clk=>RCLK );
    DFF_4 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , d=>E , clk=>RCLK );
    DFF_5 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>F , clk=>RCLK );
    DFF_6 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , qNot=>N15 , d=>G , clk=>RCLK );
    DFF_7 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N16 , qNot=>N17 , d=>H , clk=>RCLK );
    DQFFPC_7 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N18 , d=>L28 , clk=>N1 , pr=>L4 , cl=>L20 );
    DQFFPC_8 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N19 , d=>L29 , clk=>N26 , pr=>L6 , cl=>L21 );
    DQFFPC_9 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N20 , d=>L30 , clk=>N27 , pr=>L8 , cl=>L22 );
    DQFFPC_10 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N21 , d=>L31 , clk=>N28 , pr=>L10 , cl=>L23 );
    DQFFPC_11 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N22 , d=>L32 , clk=>N29 , pr=>L12 , cl=>L24 );
    DQFFPC_12 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N23 , d=>L33 , clk=>N30 , pr=>L14 , cl=>L25 );
    DQFFPC_13 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N24 , d=>L34 , clk=>N31 , pr=>L16 , cl=>L26 );
    DQFFPC_14 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N25 , d=>L35 , clk=>N32 , pr=>L18 , cl=>L27 );
    RCO <= NOT ( N25 AND N24 AND N23 AND N22 AND N21 AND N20 AND N19 AND N18 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT595\ IS PORT(
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
END \74AHCT595\;

ARCHITECTURE model OF \74AHCT595\ IS
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
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( SRCLR );
    N1 <=  ( SER ) AFTER 5 ns;
    DQFFC_64 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>SRCLK , cl=>L2 );
    DQFFC_65 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>L2 );
    DQFFC_66 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>L2 );
    DQFFC_67 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>L2 );
    DQFFC_68 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>L2 );
    DQFFC_69 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>L2 );
    DQFFC_70 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>L2 );
    DQFFC_71 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>SRCLK , cl=>L2 );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK );
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    \Q\\H\\\ <=  ( N9 ) AFTER 15 ns;
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QA , i1=>N10 , en=>L1 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QB , i1=>N11 , en=>L1 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QC , i1=>N12 , en=>L1 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QD , i1=>N13 , en=>L1 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QE , i1=>N14 , en=>L1 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QF , i1=>N15 , en=>L1 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QG , i1=>N16 , en=>L1 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QH , i1=>N17 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT596\ IS PORT(
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
END \74AHCT596\;

ARCHITECTURE model OF \74AHCT596\ IS
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
    N18 <=  ( G ) AFTER 15 ns;
    N1 <=  ( SRCLR ) AFTER 5 ns;
    DQFFC_72 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>SER , clk=>SRCLK , cl=>N1 );
    DQFFC_73 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>N1 );
    DQFFC_74 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>N1 );
    DQFFC_75 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>N1 );
    DQFFC_76 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>N1 );
    DQFFC_77 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>N1 );
    DQFFC_78 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>N1 );
    DQFFC_79 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>SRCLK , cl=>N1 );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    \Q\\H\\\ <=  ( N9 ) AFTER 15 ns;
    QA <=  ( N10 OR N18 ) AFTER 5 ns;
    QB <=  ( N11 OR N18 ) AFTER 5 ns;
    QC <=  ( N12 OR N18 ) AFTER 5 ns;
    QD <=  ( N13 OR N18 ) AFTER 5 ns;
    QE <=  ( N14 OR N18 ) AFTER 5 ns;
    QF <=  ( N15 OR N18 ) AFTER 5 ns;
    QG <=  ( N16 OR N18 ) AFTER 5 ns;
    QH <=  ( N17 OR N18 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT597\ IS PORT(
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
END \74AHCT597\;

ARCHITECTURE model OF \74AHCT597\ IS
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
    N1 <= NOT ( SRLOAD ) AFTER 2 ns;
    DFF_8 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , qNot=>N3 , d=>A , clk=>RCLK );
    DFF_9 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , d=>B , clk=>RCLK );
    DFF_10 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , d=>C , clk=>RCLK );
    DFF_11 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , d=>D , clk=>RCLK );
    DFF_12 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , d=>E , clk=>RCLK );
    DFF_13 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>F , clk=>RCLK );
    DFF_14 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , qNot=>N15 , d=>G , clk=>RCLK );
    DFF_15 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , qNot=>N17 , d=>H , clk=>RCLK );
    L1 <= NOT ( N2 AND N1 );
    L2 <= NOT ( N1 AND N3 );
    L4 <= NOT ( N4 AND N1 );
    L5 <= NOT ( N1 AND N5 );
    L7 <= NOT ( N6 AND N1 );
    L8 <= NOT ( N1 AND N7 );
    L10 <= NOT ( N8 AND N1 );
    L11 <= NOT ( N1 AND N9 );
    L13 <= NOT ( N10 AND N1 );
    L14 <= NOT ( N1 AND N11 );
    L16 <= NOT ( N12 AND N1 );
    L17 <= NOT ( N1 AND N13 );
    L19 <= NOT ( N14 AND N1 );
    L20 <= NOT ( N1 AND N15 );
    L22 <= NOT ( N16 AND N1 );
    L23 <= NOT ( N1 AND N17 );
    L3 <=  ( L2 AND SRCLR );
    L6 <=  ( L5 AND SRCLR );
    L9 <=  ( L8 AND SRCLR );
    L12 <=  ( L11 AND SRCLR );
    L15 <=  ( L14 AND SRCLR );
    L18 <=  ( L17 AND SRCLR );
    L21 <=  ( L20 AND SRCLR );
    L24 <=  ( L23 AND SRCLR );
    DQFFPC_15 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N18 , d=>SER , clk=>SRCLK , pr=>L1 , cl=>L3 );
    DQFFPC_16 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N19 , d=>N18 , clk=>SRCLK , pr=>L4 , cl=>L6 );
    DQFFPC_17 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N20 , d=>N19 , clk=>SRCLK , pr=>L7 , cl=>L9 );
    DQFFPC_18 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N21 , d=>N20 , clk=>SRCLK , pr=>L10 , cl=>L12 );
    DQFFPC_19 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N22 , d=>N21 , clk=>SRCLK , pr=>L13 , cl=>L15 );
    DQFFPC_20 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N23 , d=>N22 , clk=>SRCLK , pr=>L16 , cl=>L18 );
    DQFFPC_21 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N24 , d=>N23 , clk=>SRCLK , pr=>L19 , cl=>L21 );
    DQFFPC_22 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N25 , d=>N24 , clk=>SRCLK , pr=>L22 , cl=>L24 );
    QH <=  ( N25 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT640\ IS PORT(
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
END \74AHCT640\;

ARCHITECTURE model OF \74AHCT640\ IS
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
    N1 <= NOT ( A1 ) AFTER 12 ns;
    N2 <= NOT ( A2 ) AFTER 12 ns;
    N3 <= NOT ( A3 ) AFTER 12 ns;
    N4 <= NOT ( A4 ) AFTER 12 ns;
    N5 <= NOT ( A5 ) AFTER 12 ns;
    N6 <= NOT ( A6 ) AFTER 12 ns;
    N7 <= NOT ( A7 ) AFTER 12 ns;
    N8 <= NOT ( A8 ) AFTER 12 ns;
    N9 <= NOT ( B8 ) AFTER 12 ns;
    N10 <= NOT ( B7 ) AFTER 12 ns;
    N11 <= NOT ( B6 ) AFTER 12 ns;
    N12 <= NOT ( B5 ) AFTER 12 ns;
    N13 <= NOT ( B4 ) AFTER 12 ns;
    N14 <= NOT ( B3 ) AFTER 12 ns;
    N15 <= NOT ( B2 ) AFTER 12 ns;
    N16 <= NOT ( B1 ) AFTER 12 ns;
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT643\ IS PORT(
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
END \74AHCT643\;

ARCHITECTURE model OF \74AHCT643\ IS
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
    N1 <= NOT ( A1 ) AFTER 12 ns;
    N2 <= NOT ( A2 ) AFTER 12 ns;
    N3 <= NOT ( A3 ) AFTER 12 ns;
    N4 <= NOT ( A4 ) AFTER 12 ns;
    N5 <= NOT ( A5 ) AFTER 12 ns;
    N6 <= NOT ( A6 ) AFTER 12 ns;
    N7 <= NOT ( A7 ) AFTER 12 ns;
    N8 <= NOT ( A8 ) AFTER 12 ns;
    N9 <=  ( B8 ) AFTER 12 ns;
    N10 <=  ( B7 ) AFTER 12 ns;
    N11 <=  ( B6 ) AFTER 12 ns;
    N12 <=  ( B5 ) AFTER 12 ns;
    N13 <=  ( B5 ) AFTER 12 ns;
    N14 <=  ( B3 ) AFTER 12 ns;
    N15 <=  ( B2 ) AFTER 12 ns;
    N16 <=  ( B1 ) AFTER 12 ns;
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT645\ IS PORT(
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
END \74AHCT645\;

ARCHITECTURE model OF \74AHCT645\ IS
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
    N1 <=  ( A1 ) AFTER 10 ns;
    N2 <=  ( A2 ) AFTER 10 ns;
    N3 <=  ( A3 ) AFTER 10 ns;
    N4 <=  ( A4 ) AFTER 10 ns;
    N5 <=  ( A5 ) AFTER 10 ns;
    N6 <=  ( A6 ) AFTER 10 ns;
    N7 <=  ( A7 ) AFTER 10 ns;
    N8 <=  ( A8 ) AFTER 10 ns;
    N9 <=  ( B8 ) AFTER 10 ns;
    N10 <=  ( B7 ) AFTER 10 ns;
    N11 <=  ( B6 ) AFTER 10 ns;
    N12 <=  ( B5 ) AFTER 10 ns;
    N13 <=  ( B4 ) AFTER 10 ns;
    N14 <=  ( B3 ) AFTER 10 ns;
    N15 <=  ( B2 ) AFTER 10 ns;
    N16 <=  ( B1 ) AFTER 10 ns;
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT646\ IS PORT(
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
END \74AHCT646\;

ARCHITECTURE model OF \74AHCT646\ IS
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
    N1 <= NOT ( SBA ) AFTER 9 ns;
    N2 <= NOT ( SAB ) AFTER 9 ns;
    N3 <=  ( SBA ) AFTER 9 ns;
    N4 <=  ( SAB ) AFTER 9 ns;
    L33 <= NOT ( G OR DIR );
    L34 <= NOT ( G );
    L35 <=  ( L34 AND DIR );
    L1 <=  ( N3 AND N5 );
    L2 <=  ( N1 AND B1 );
    L3 <=  ( N3 AND N7 );
    L4 <=  ( N1 AND B2 );
    L5 <=  ( N3 AND N9 );
    L6 <=  ( N1 AND B3 );
    L7 <=  ( N3 AND N11 );
    L8 <=  ( N1 AND B4 );
    L9 <=  ( N3 AND N13 );
    L10 <=  ( N1 AND B5 );
    L11 <=  ( N3 AND N15 );
    L12 <=  ( N1 AND B6 );
    L13 <=  ( N3 AND N17 );
    L14 <=  ( N1 AND B7 );
    L15 <=  ( N3 AND N19 );
    L16 <=  ( N1 AND B8 );
    L17 <=  ( N4 AND N6 );
    L18 <=  ( N2 AND A1 );
    L19 <=  ( N4 AND N8 );
    L20 <=  ( N2 AND A2 );
    L21 <=  ( N4 AND N10 );
    L22 <=  ( N2 AND A3 );
    L23 <=  ( N4 AND N12 );
    L24 <=  ( N2 AND A4 );
    L25 <=  ( N4 AND N14 );
    L26 <=  ( N2 AND A5 );
    L27 <=  ( N4 AND N16 );
    L28 <=  ( N2 AND A6 );
    L29 <=  ( N4 AND N18 );
    L30 <=  ( N2 AND A7 );
    L31 <=  ( N4 AND N20 );
    L32 <=  ( N2 AND A8 );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L1 OR L2 ) AFTER 13 ns;
    N22 <=  ( L3 OR L4 ) AFTER 13 ns;
    N23 <=  ( L5 OR L6 ) AFTER 13 ns;
    N24 <=  ( L7 OR L8 ) AFTER 13 ns;
    N25 <=  ( L9 OR L10 ) AFTER 13 ns;
    N26 <=  ( L11 OR L12 ) AFTER 13 ns;
    N27 <=  ( L13 OR L14 ) AFTER 13 ns;
    N28 <=  ( L15 OR L16 ) AFTER 13 ns;
    N29 <=  ( L17 OR L18 ) AFTER 13 ns;
    N30 <=  ( L19 OR L20 ) AFTER 13 ns;
    N31 <=  ( L21 OR L22 ) AFTER 13 ns;
    N32 <=  ( L23 OR L24 ) AFTER 13 ns;
    N33 <=  ( L25 OR L26 ) AFTER 13 ns;
    N34 <=  ( L27 OR L28 ) AFTER 13 ns;
    N35 <=  ( L29 OR L30 ) AFTER 13 ns;
    N36 <=  ( L31 OR L32 ) AFTER 13 ns;
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT648\ IS PORT(
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
END \74AHCT648\;

ARCHITECTURE model OF \74AHCT648\ IS
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
    N1 <= NOT ( SBA ) AFTER 7 ns;
    N2 <= NOT ( SAB ) AFTER 7 ns;
    N3 <=  ( SBA ) AFTER 9 ns;
    N4 <=  ( SAB ) AFTER 9 ns;
    L33 <= NOT ( G OR DIR );
    L34 <= NOT ( G );
    L35 <=  ( L34 AND DIR );
    L1 <=  ( N3 AND N5 );
    L2 <=  ( N1 AND B1 );
    L3 <=  ( N3 AND N7 );
    L4 <=  ( N1 AND B2 );
    L5 <=  ( N3 AND N9 );
    L6 <=  ( N1 AND B3 );
    L7 <=  ( N3 AND N11 );
    L8 <=  ( N1 AND B4 );
    L9 <=  ( N3 AND N13 );
    L10 <=  ( N1 AND B5 );
    L11 <=  ( N3 AND N15 );
    L12 <=  ( N1 AND B6 );
    L13 <=  ( N3 AND N17 );
    L14 <=  ( N1 AND B7 );
    L15 <=  ( N3 AND N19 );
    L16 <=  ( N1 AND B8 );
    L17 <=  ( N4 AND N6 );
    L18 <=  ( N2 AND A1 );
    L19 <=  ( N4 AND N8 );
    L20 <=  ( N2 AND A2 );
    L21 <=  ( N4 AND N10 );
    L22 <=  ( N2 AND A3 );
    L23 <=  ( N4 AND N12 );
    L24 <=  ( N2 AND A4 );
    L25 <=  ( N4 AND N14 );
    L26 <=  ( N2 AND A5 );
    L27 <=  ( N4 AND N16 );
    L28 <=  ( N2 AND A6 );
    L29 <=  ( N4 AND N18 );
    L30 <=  ( N2 AND A7 );
    L31 <=  ( N4 AND N20 );
    L32 <=  ( N2 AND A8 );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_95 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_104 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_105 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_106 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_107 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 18 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 18 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 18 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 18 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 18 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 18 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 18 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 18 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 18 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 18 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 18 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 18 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 18 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 18 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 18 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 18 ns;
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT651\ IS PORT(
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
END \74AHCT651\;

ARCHITECTURE model OF \74AHCT651\ IS
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
    N1 <= NOT ( SBA ) AFTER 9 ns;
    N2 <= NOT ( SAB ) AFTER 9 ns;
    N3 <=  ( SBA ) AFTER 9 ns;
    N4 <=  ( SAB ) AFTER 9 ns;
    L33 <= NOT ( GBA );
    L1 <=  ( N3 AND N5 );
    L2 <=  ( N1 AND B1 );
    L3 <=  ( N3 AND N7 );
    L4 <=  ( N1 AND B2 );
    L5 <=  ( N3 AND N9 );
    L6 <=  ( N1 AND B3 );
    L7 <=  ( N3 AND N11 );
    L8 <=  ( N1 AND B4 );
    L9 <=  ( N3 AND N13 );
    L10 <=  ( N1 AND B5 );
    L11 <=  ( N3 AND N15 );
    L12 <=  ( N1 AND B6 );
    L13 <=  ( N3 AND N17 );
    L14 <=  ( N1 AND B7 );
    L15 <=  ( N3 AND N19 );
    L16 <=  ( N1 AND B8 );
    L17 <=  ( N4 AND N6 );
    L18 <=  ( N2 AND A1 );
    L19 <=  ( N4 AND N8 );
    L20 <=  ( N2 AND A2 );
    L21 <=  ( N4 AND N10 );
    L22 <=  ( N2 AND A3 );
    L23 <=  ( N4 AND N12 );
    L24 <=  ( N2 AND A4 );
    L25 <=  ( N4 AND N14 );
    L26 <=  ( N2 AND A5 );
    L27 <=  ( N4 AND N16 );
    L28 <=  ( N2 AND A6 );
    L29 <=  ( N4 AND N18 );
    L30 <=  ( N2 AND A7 );
    L31 <=  ( N4 AND N20 );
    L32 <=  ( N2 AND A8 );
    DQFF_108 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_109 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_110 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_111 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_112 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_113 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_114 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_115 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_116 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_117 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_118 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_119 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_120 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_121 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_122 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_123 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 18 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 18 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 18 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 18 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 18 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 18 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 18 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 18 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 18 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 18 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 18 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 18 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 18 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 18 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 18 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 18 ns;
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_289 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_290 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_291 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_292 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_293 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_294 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_295 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_296 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_297 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT652\ IS PORT(
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
END \74AHCT652\;

ARCHITECTURE model OF \74AHCT652\ IS
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
    N1 <= NOT ( SBA ) AFTER 9 ns;
    N2 <= NOT ( SAB ) AFTER 9 ns;
    N3 <=  ( SBA ) AFTER 9 ns;
    N4 <=  ( SAB ) AFTER 9 ns;
    L33 <= NOT ( GBA );
    L1 <=  ( N3 AND N5 );
    L2 <=  ( N1 AND B1 );
    L3 <=  ( N3 AND N7 );
    L4 <=  ( N1 AND B2 );
    L5 <=  ( N3 AND N9 );
    L6 <=  ( N1 AND B3 );
    L7 <=  ( N3 AND N11 );
    L8 <=  ( N1 AND B4 );
    L9 <=  ( N3 AND N13 );
    L10 <=  ( N1 AND B5 );
    L11 <=  ( N3 AND N15 );
    L12 <=  ( N1 AND B6 );
    L13 <=  ( N3 AND N17 );
    L14 <=  ( N1 AND B7 );
    L15 <=  ( N3 AND N19 );
    L16 <=  ( N1 AND B8 );
    L17 <=  ( N4 AND N6 );
    L18 <=  ( N2 AND A1 );
    L19 <=  ( N4 AND N8 );
    L20 <=  ( N2 AND A2 );
    L21 <=  ( N4 AND N10 );
    L22 <=  ( N2 AND A3 );
    L23 <=  ( N4 AND N12 );
    L24 <=  ( N2 AND A4 );
    L25 <=  ( N4 AND N14 );
    L26 <=  ( N2 AND A5 );
    L27 <=  ( N4 AND N16 );
    L28 <=  ( N2 AND A6 );
    L29 <=  ( N4 AND N18 );
    L30 <=  ( N2 AND A7 );
    L31 <=  ( N4 AND N20 );
    L32 <=  ( N2 AND A8 );
    DQFF_124 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_125 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_126 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_127 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_128 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_129 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_130 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_131 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_132 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_133 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_134 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_135 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_136 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_137 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_138 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_139 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L1 OR L2 ) AFTER 18 ns;
    N22 <=  ( L3 OR L4 ) AFTER 18 ns;
    N23 <=  ( L5 OR L6 ) AFTER 18 ns;
    N24 <=  ( L7 OR L8 ) AFTER 18 ns;
    N25 <=  ( L9 OR L10 ) AFTER 18 ns;
    N26 <=  ( L11 OR L12 ) AFTER 18 ns;
    N27 <=  ( L13 OR L14 ) AFTER 18 ns;
    N28 <=  ( L15 OR L16 ) AFTER 18 ns;
    N29 <=  ( L17 OR L18 ) AFTER 18 ns;
    N30 <=  ( L19 OR L20 ) AFTER 18 ns;
    N31 <=  ( L21 OR L22 ) AFTER 18 ns;
    N32 <=  ( L23 OR L24 ) AFTER 18 ns;
    N33 <=  ( L25 OR L26 ) AFTER 18 ns;
    N34 <=  ( L27 OR L28 ) AFTER 18 ns;
    N35 <=  ( L29 OR L30 ) AFTER 18 ns;
    N36 <=  ( L31 OR L32 ) AFTER 18 ns;
    TSB_298 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_299 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_300 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_301 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_302 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_303 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_304 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_305 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_306 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_307 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_308 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_309 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_310 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_311 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_312 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_313 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>32 ns, tfall_i1_o=>32 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT679\ IS PORT(
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
END \74AHCT679\;

ARCHITECTURE model OF \74AHCT679\ IS
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
    N1 <= NOT ( P0 ) AFTER 4 ns;
    N2 <= NOT ( P1 ) AFTER 4 ns;
    N3 <= NOT ( P2 ) AFTER 4 ns;
    N4 <= NOT ( P3 ) AFTER 4 ns;
    N5 <=  ( P3 ) AFTER 4 ns;
    L19 <= NOT ( G );
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
    L14 <= NOT ( L8 OR L7 OR L9 );
    L15 <= NOT ( N4 OR L10 );
    L16 <= NOT ( N4 OR N2 );
    L17 <= NOT ( N1 OR N2 OR N4 );
    L18 <= NOT ( N3 OR N4 );
    N7 <=  ( L1 XOR A1 ) AFTER 7 ns;
    N8 <=  ( L2 XOR A2 ) AFTER 7 ns;
    N9 <=  ( L11 XOR A3 ) AFTER 7 ns;
    N10 <=  ( L5 XOR A4 ) AFTER 7 ns;
    N11 <=  ( L12 XOR A5 ) AFTER 7 ns;
    N12 <=  ( L13 XOR A6 ) AFTER 7 ns;
    N13 <=  ( L14 XOR A7 ) AFTER 7 ns;
    N14 <=  ( N5 XOR A8 ) AFTER 7 ns;
    N15 <=  ( L15 XOR A9 ) AFTER 7 ns;
    N16 <=  ( L16 XOR A10 ) AFTER 7 ns;
    N17 <=  ( L17 XOR A11 ) AFTER 7 ns;
    N18 <=  ( L18 XOR A12 ) AFTER 7 ns;
    Y <= NOT ( N7 AND N8 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 AND N16 AND N17 AND N18 AND L19 ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT680\ IS PORT(
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
END \74AHCT680\;

ARCHITECTURE model OF \74AHCT680\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <= NOT ( P0 ) AFTER 5 ns;
    N2 <= NOT ( P1 ) AFTER 5 ns;
    N3 <= NOT ( P2 ) AFTER 5 ns;
    N4 <= NOT ( P3 ) AFTER 5 ns;
    N5 <=  ( P3 ) AFTER 5 ns;
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
    L14 <= NOT ( L8 OR L7 OR L9 );
    L15 <= NOT ( N4 OR L10 );
    L16 <= NOT ( N4 OR N2 );
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
    L31 <= NOT ( L19 AND L20 AND L21 AND L22 AND L23 AND L24 AND L25 AND L26 AND L27 AND L28 AND L29 AND L30 );
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Y , d=>L31 , enable=>C );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT682\ IS PORT(
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
END \74AHCT682\;

ARCHITECTURE model OF \74AHCT682\ IS
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
    L17 <=  ( L7 AND L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P0 AND L9 );
    L18 <=  ( L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P1 AND L10 );
    L19 <=  ( L5 AND L4 AND L3 AND L2 AND L1 AND P2 AND L11 );
    L20 <=  ( L4 AND L3 AND L2 AND L1 AND P3 AND L12 );
    L21 <=  ( L3 AND L2 AND L1 AND P4 AND L13 );
    L22 <=  ( L2 AND L1 AND P5 AND L14 );
    L23 <=  ( L1 AND P6 AND L15 );
    L24 <=  ( P7 AND L16 );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 22 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT684\ IS PORT(
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
END \74AHCT684\;

ARCHITECTURE model OF \74AHCT684\ IS
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
    L17 <=  ( L7 AND L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P0 AND L9 );
    L18 <=  ( L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P1 AND L10 );
    L19 <=  ( L5 AND L4 AND L3 AND L2 AND L1 AND P2 AND L11 );
    L20 <=  ( L4 AND L3 AND L2 AND L1 AND P3 AND L12 );
    L21 <=  ( L3 AND L2 AND L1 AND P4 AND L13 );
    L22 <=  ( L2 AND L1 AND P5 AND L14 );
    L23 <=  ( L1 AND P6 AND L15 );
    L24 <=  ( P7 AND L16 );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 22 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT686\ IS PORT(
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
G1 : IN  std_logic;
G2 : IN  std_logic;
\P=Q\ : OUT  std_logic;
\P>Q\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT686\;

ARCHITECTURE model OF \74AHCT686\ IS
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

    BEGIN
    N1 <= NOT ( P7 XOR Q7 ) AFTER 6 ns;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 6 ns;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 6 ns;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 6 ns;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 6 ns;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 6 ns;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 6 ns;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 6 ns;
    L1 <= NOT ( Q0 );
    L2 <= NOT ( Q1 );
    L3 <= NOT ( Q2 );
    L4 <= NOT ( Q3 );
    L5 <= NOT ( Q4 );
    L6 <= NOT ( Q5 );
    L7 <= NOT ( Q6 );
    L8 <= NOT ( Q7 );
    L17 <= NOT ( G1 );
    L18 <= NOT ( G2 );
    N9 <=  ( L18 AND N7 AND N6 AND N5 AND N4 AND N3 AND N2 AND N1 AND P0 AND L1 ) AFTER 8 ns;
    N10 <=  ( L18 AND N6 AND N5 AND N4 AND N3 AND N2 AND N1 AND P1 AND L2 ) AFTER 8 ns;
    N11 <=  ( L18 AND N5 AND N4 AND N3 AND N2 AND N1 AND P2 AND L3 ) AFTER 8 ns;
    N12 <=  ( L18 AND N4 AND N3 AND N2 AND N1 AND P3 AND L4 ) AFTER 8 ns;
    N13 <=  ( L18 AND N3 AND N2 AND N1 AND P4 AND L5 ) AFTER 8 ns;
    N14 <=  ( L18 AND N2 AND N1 AND P5 AND L6 ) AFTER 8 ns;
    N15 <=  ( L18 AND N1 AND P6 AND L7 ) AFTER 8 ns;
    N16 <=  ( L18 AND P7 AND L8 ) AFTER 8 ns;
    \P=Q\ <= NOT ( L17 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 16 ns;
    \P>Q\ <= NOT ( N9 OR N10 OR N11 OR N12 OR N13 OR N14 OR N15 OR N16 ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT688\ IS PORT(
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
END \74AHCT688\;

ARCHITECTURE model OF \74AHCT688\ IS
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
    N1 <= NOT ( Q7 XOR P7 ) AFTER 2 ns;
    N2 <= NOT ( Q6 XOR P6 ) AFTER 2 ns;
    N3 <= NOT ( Q5 XOR P5 ) AFTER 2 ns;
    N4 <= NOT ( Q4 XOR P4 ) AFTER 2 ns;
    N5 <= NOT ( Q3 XOR P3 ) AFTER 2 ns;
    N6 <= NOT ( Q2 XOR P2 ) AFTER 2 ns;
    N7 <= NOT ( Q1 XOR P1 ) AFTER 2 ns;
    N8 <= NOT ( Q0 XOR P0 ) AFTER 2 ns;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT689\ IS PORT(
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
END \74AHCT689\;

ARCHITECTURE model OF \74AHCT689\ IS
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
    N1 <= NOT ( Q7 XOR P7 ) AFTER 5 ns;
    N2 <= NOT ( Q6 XOR P6 ) AFTER 5 ns;
    N3 <= NOT ( Q5 XOR P5 ) AFTER 5 ns;
    N4 <= NOT ( Q4 XOR P4 ) AFTER 5 ns;
    N5 <= NOT ( Q3 XOR P3 ) AFTER 5 ns;
    N6 <= NOT ( Q2 XOR P2 ) AFTER 5 ns;
    N7 <= NOT ( Q1 XOR P1 ) AFTER 5 ns;
    N8 <= NOT ( Q0 XOR P0 ) AFTER 5 ns;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT821\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
D10 : IN  std_logic;
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
Q9 : OUT  std_logic;
Q10 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT821\;

ARCHITECTURE model OF \74AHCT821\ IS
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

    BEGIN
    L1 <= NOT ( OC );
    DQFF_140 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_141 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_142 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_143 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_144 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_145 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_146 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_147 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    DQFF_148 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>D9 , clk=>CLK );
    DQFF_149 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>D10 , clk=>CLK );
    TSB_314 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_315 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_316 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_317 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_318 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_319 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_320 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_321 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_322 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_323 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT822\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
D10 : IN  std_logic;
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
Q9 : OUT  std_logic;
Q10 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT822\;

ARCHITECTURE model OF \74AHCT822\ IS
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

    BEGIN
    L1 <= NOT ( OC );
    L2 <= NOT ( D1 );
    L3 <= NOT ( D2 );
    L4 <= NOT ( D3 );
    L5 <= NOT ( D4 );
    L6 <= NOT ( D5 );
    L7 <= NOT ( D6 );
    L8 <= NOT ( D7 );
    L9 <= NOT ( D8 );
    L10 <= NOT ( D9 );
    L11 <= NOT ( D10 );
    DQFF_150 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_151 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_152 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_153 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_154 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_155 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_156 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_157 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    DQFF_158 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>L10 , clk=>CLK );
    DQFF_159 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>L11 , clk=>CLK );
    TSB_324 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT823\ IS PORT(
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
END \74AHCT823\;

ARCHITECTURE model OF \74AHCT823\ IS
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
    L2 <= NOT ( CLKEN OR N1 );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ns;
    N2 <=  ( L2 AND CLK ) AFTER 0 ns;
    DQFFC_80 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_81 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_82 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_83 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_84 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_85 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_86 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_87 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_88 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    TSB_334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_341 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_342 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT824\ IS PORT(
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
END \74AHCT824\;

ARCHITECTURE model OF \74AHCT824\ IS
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
    L2 <= NOT ( CLKEN OR N1 );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ns;
    N2 <=  ( L2 AND CLK ) AFTER 0 ns;
    DQFFC_89 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_90 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_91 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_92 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_93 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_94 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_95 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_96 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_97 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    ITSB_33 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    ITSB_34 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    ITSB_35 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    ITSB_36 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    ITSB_37 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    ITSB_38 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    ITSB_39 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    ITSB_40 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT825\ IS PORT(
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
END \74AHCT825\;

ARCHITECTURE model OF \74AHCT825\ IS
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
    L1 <= NOT ( OC1 OR OC2 OR OC3 );
    L2 <= NOT ( CLKEN OR N1 );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ns;
    N2 <=  ( L2 AND CLK ) AFTER 0 ns;
    DQFFC_98 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_99 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_100 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_101 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_102 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_103 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_104 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_105 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N11 , d=>D8 , clk=>N2 , cl=>CLR );
    TSB_343 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N4 , en=>L1 );
    TSB_344 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N5 , en=>L1 );
    TSB_345 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N6 , en=>L1 );
    TSB_346 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N7 , en=>L1 );
    TSB_347 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N8 , en=>L1 );
    TSB_348 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N9 , en=>L1 );
    TSB_349 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N10 , en=>L1 );
    TSB_350 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT826\ IS PORT(
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
END \74AHCT826\;

ARCHITECTURE model OF \74AHCT826\ IS
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
    L1 <= NOT ( OC1 OR OC2 OR OC3 );
    L2 <= NOT ( CLKEN OR N1 );
    L3 <= NOT ( L2 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ns;
    N2 <=  ( L2 AND CLK ) AFTER 0 ns;
    DQFFC_106 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_107 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_108 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_109 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_110 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_111 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_112 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_113 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N11 , d=>D8 , clk=>N2 , cl=>CLR );
    ITSB_41 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N4 , en=>L1 );
    ITSB_42 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N5 , en=>L1 );
    ITSB_43 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N6 , en=>L1 );
    ITSB_44 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N7 , en=>L1 );
    ITSB_45 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N8 , en=>L1 );
    ITSB_46 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N9 , en=>L1 );
    ITSB_47 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N10 , en=>L1 );
    ITSB_48 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT841\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
D10 : IN  std_logic;
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
Q9 : OUT  std_logic;
Q10 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT841\;

ARCHITECTURE model OF \74AHCT841\ IS
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

    BEGIN
    L1 <= NOT ( OC );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_35 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    TSB_351 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_352 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_353 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_354 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_355 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_356 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_357 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_358 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_359 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_360 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT842\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
D10 : IN  std_logic;
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
Q9 : OUT  std_logic;
Q10 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AHCT842\;

ARCHITECTURE model OF \74AHCT842\ IS
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

    BEGIN
    L1 <= NOT ( OC );
    DLATCH_43 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_44 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_45 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_46 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_47 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_48 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_49 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_50 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_51 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_52 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    ITSB_49 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_50 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_51 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_52 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_53 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_54 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_55 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_56 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_57 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    ITSB_58 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT843\ IS PORT(
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
END \74AHCT843\;

ARCHITECTURE model OF \74AHCT843\ IS
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
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_16 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_361 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_362 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_363 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_364 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_365 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_366 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_367 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_368 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_369 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AHCT844\ IS PORT(
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
END \74AHCT844\;

ARCHITECTURE model OF \74AHCT844\ IS
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
    DLATCHPC_17 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_18 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_19 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_20 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_21 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_22 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_23 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_24 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_25 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_59 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_60 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_61 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_62 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_63 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_64 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_65 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_66 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_67 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;

