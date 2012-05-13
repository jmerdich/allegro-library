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
-- File:			HCT.VHD
-- Resource:	  Signetics, 1986 Logic Databook
-- Delay units:	  Picoseconds 
-- Characteristics: 74HCTXXX Tplh and Tphl, 15pF and 50pF

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  


 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT00\ IS PORT(
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
END \74HCT00\;

ARCHITECTURE model OF \74HCT00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 800 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 800 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 800 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT02\ IS PORT(
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
END \74HCT02\;

ARCHITECTURE model OF \74HCT02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 900 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 900 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 900 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT03\ IS PORT(
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
END \74HCT03\;

ARCHITECTURE model OF \74HCT03\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1000 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1000 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1000 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT04\ IS PORT(
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
END \74HCT04\;

ARCHITECTURE model OF \74HCT04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 800 ps;
    O_B <= NOT ( I_B ) AFTER 800 ps;
    O_C <= NOT ( I_C ) AFTER 800 ps;
    O_D <= NOT ( I_D ) AFTER 800 ps;
    O_E <= NOT ( I_E ) AFTER 800 ps;
    O_F <= NOT ( I_F ) AFTER 800 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT05\ IS PORT(
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
END \74HCT05\;

ARCHITECTURE model OF \74HCT05\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 1600 ps;
    O_B <= NOT ( I_B ) AFTER 1600 ps;
    O_C <= NOT ( I_C ) AFTER 1600 ps;
    O_D <= NOT ( I_D ) AFTER 1600 ps;
    O_E <= NOT ( I_E ) AFTER 1600 ps;
    O_F <= NOT ( I_F ) AFTER 1600 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT08\ IS PORT(
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
END \74HCT08\;

ARCHITECTURE model OF \74HCT08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 1100 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 1100 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 1100 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT10\ IS PORT(
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
END \74HCT10\;

ARCHITECTURE model OF \74HCT10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 1100 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 1100 ps;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 1100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT11\ IS PORT(
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
END \74HCT11\;

ARCHITECTURE model OF \74HCT11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 1300 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 1300 ps;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 1300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT14\ IS PORT(
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
END \74HCT14\;

ARCHITECTURE model OF \74HCT14\ IS

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

ENTITY \74HCT20\ IS PORT(
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
END \74HCT20\;

ARCHITECTURE model OF \74HCT20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1300 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT27\ IS PORT(
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
END \74HCT27\;

ARCHITECTURE model OF \74HCT27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 1000 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 1000 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 1000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT30\ IS PORT(
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
END \74HCT30\;

ARCHITECTURE model OF \74HCT30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT32\ IS PORT(
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
END \74HCT32\;

ARCHITECTURE model OF \74HCT32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 900 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 900 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 900 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 900 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT34\ IS PORT(
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
END \74HCT34\;

ARCHITECTURE model OF \74HCT34\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 2200 ps;
    O_B <=  ( I_B ) AFTER 2200 ps;
    O_C <=  ( I_C ) AFTER 2200 ps;
    O_D <=  ( I_D ) AFTER 2200 ps;
    O_E <=  ( I_E ) AFTER 2200 ps;
    O_F <=  ( I_F ) AFTER 2200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT74\ IS PORT(
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
END \74HCT74\;

ARCHITECTURE model OF \74HCT74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT76\ IS PORT(
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
END \74HCT76\;

ARCHITECTURE model OF \74HCT76\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT86\ IS PORT(
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
END \74HCT86\;

ARCHITECTURE model OF \74HCT86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 1400 ps;
    O_B <=  ( I0_B XOR I1_B ) AFTER 1400 ps;
    O_C <=  ( I0_C XOR I1_C ) AFTER 1400 ps;
    O_D <=  ( I0_D XOR I1_D ) AFTER 1400 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT107\ IS PORT(
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
END \74HCT107\;

ARCHITECTURE model OF \74HCT107\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFC_0 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_1 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT109\ IS PORT(
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
END \74HCT109\;

ARCHITECTURE model OF \74HCT109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1700 ps, tfall_clk_q=>1700 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1700 ps, tfall_clk_q=>1700 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT112\ IS PORT(
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
END \74HCT112\;

ARCHITECTURE model OF \74HCT112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT132\ IS PORT(
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
END \74HCT132\;

ARCHITECTURE model OF \74HCT132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1700 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1700 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1700 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1700 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT137\ IS PORT(
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
END \74HCT137\;

ARCHITECTURE model OF \74HCT137\ IS
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
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1200 ps, tfall_clk_q=>1200 ps)
      PORT MAP  (q=>N1 , d=>A , enable=>L3 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1200 ps, tfall_clk_q=>1200 ps)
      PORT MAP  (q=>N2 , d=>B , enable=>L3 );
    DLATCH_2 :  ORCAD_DLATCH 
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

ENTITY \74HCT138\ IS PORT(
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
END \74HCT138\;

ARCHITECTURE model OF \74HCT138\ IS
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

ENTITY \74HCT138A\ IS PORT(
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
END \74HCT138A\;

ARCHITECTURE model OF \74HCT138A\ IS
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

ENTITY \74HCT139\ IS PORT(
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
END \74HCT139\;

ARCHITECTURE model OF \74HCT139\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <= NOT ( G_A );
    L2 <= NOT ( A_A );
    L3 <= NOT ( B_A );
    L4 <= NOT ( G_B );
    L5 <= NOT ( A_B );
    L6 <= NOT ( B_B );
    Y0_A <= NOT ( L1 AND L2 AND L3 ) AFTER 3000 ps;
    Y1_A <= NOT ( L1 AND L3 AND A_A ) AFTER 3000 ps;
    Y2_A <= NOT ( L1 AND L2 AND B_A ) AFTER 3000 ps;
    Y3_A <= NOT ( L1 AND A_A AND B_A ) AFTER 3000 ps;
    Y0_B <= NOT ( L4 AND L5 AND L6 ) AFTER 3000 ps;
    Y1_B <= NOT ( L4 AND L6 AND A_B ) AFTER 3000 ps;
    Y2_B <= NOT ( L4 AND L5 AND B_B ) AFTER 3000 ps;
    Y3_B <= NOT ( L4 AND B_B AND A_B ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT151\ IS PORT(
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
END \74HCT151\;

ARCHITECTURE model OF \74HCT151\ IS
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
    N1 <= NOT ( A ) AFTER 1200 ps;
    N2 <= NOT ( B ) AFTER 1200 ps;
    N3 <= NOT ( C ) AFTER 1200 ps;
    N4 <= NOT ( G ) AFTER 1000 ps;
    N5 <=  ( G ) AFTER 1000 ps;
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
    L12 <=  ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 );
    L13 <= NOT ( L12 );
    Y <=  ( L12 AND N4 ) AFTER 3200 ps;
    W <=  ( L13 OR N5 ) AFTER 2100 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT157\ IS PORT(
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
END \74HCT157\;

ARCHITECTURE model OF \74HCT157\ IS
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

    BEGIN
    L1 <= NOT ( G );
    N1 <= NOT ( \A\\/B\ ) AFTER 600 ps;
    L2 <=  ( L1 AND N1 );
    L3 <=  ( L1 AND \A\\/B\ );
    L4 <=  ( L2 AND \1A\ );
    L5 <=  ( L3 AND \1B\ );
    L6 <=  ( L2 AND \2A\ );
    L7 <=  ( L3 AND \2B\ );
    L8 <=  ( L2 AND \3A\ );
    L9 <=  ( L3 AND \3B\ );
    L10 <=  ( L2 AND \4A\ );
    L11 <=  ( L3 AND \4B\ );
    \1Y\ <=  ( L4 OR L5 ) AFTER 1300 ps;
    \2Y\ <=  ( L6 OR L7 ) AFTER 1300 ps;
    \3Y\ <=  ( L8 OR L9 ) AFTER 1300 ps;
    \4Y\ <=  ( L10 OR L11 ) AFTER 1300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT158\ IS PORT(
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
END \74HCT158\;

ARCHITECTURE model OF \74HCT158\ IS
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

    BEGIN
    N1 <= NOT ( G ) AFTER 300 ps;
    N2 <= NOT ( \A\\/B\ ) AFTER 300 ps;
    L1 <=  ( N1 AND N2 );
    L2 <=  ( N1 AND \A\\/B\ );
    L3 <=  ( L1 AND \1A\ );
    L4 <=  ( L2 AND \1B\ );
    L5 <=  ( L1 AND \2A\ );
    L6 <=  ( L2 AND \2B\ );
    L7 <=  ( L1 AND \3A\ );
    L8 <=  ( L2 AND \3B\ );
    L9 <=  ( L1 AND \4A\ );
    L10 <=  ( L2 AND \4B\ );
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 1300 ps;
    \2Y\ <= NOT ( L5 OR L6 ) AFTER 1300 ps;
    \3Y\ <= NOT ( L7 OR L8 ) AFTER 1300 ps;
    \4Y\ <= NOT ( L9 OR L10 ) AFTER 1300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT160\ IS PORT(
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
END \74HCT160\;

ARCHITECTURE model OF \74HCT160\ IS
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
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N4 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N5 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N6 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N7 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N4 ) AFTER 3200 ps;
    QB <=  ( N5 ) AFTER 3200 ps;
    QC <=  ( N6 ) AFTER 3200 ps;
    QD <=  ( N7 ) AFTER 3200 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT161\ IS PORT(
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
END \74HCT161\;

ARCHITECTURE model OF \74HCT161\ IS
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
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 3000 ps;
    QB <=  ( N4 ) AFTER 3000 ps;
    QC <=  ( N5 ) AFTER 3000 ps;
    QD <=  ( N6 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT162\ IS PORT(
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
END \74HCT162\;

ARCHITECTURE model OF \74HCT162\ IS
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
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 3000 ps;
    QB <=  ( N4 ) AFTER 3000 ps;
    QC <=  ( N5 ) AFTER 3000 ps;
    QD <=  ( N6 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT163\ IS PORT(
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
END \74HCT163\;

ARCHITECTURE model OF \74HCT163\ IS
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
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>400 ps, tfall_clk_q=>400 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 3000 ps;
    QB <=  ( N6 ) AFTER 3000 ps;
    QC <=  ( N7 ) AFTER 3000 ps;
    QD <=  ( N8 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT164\ IS PORT(
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
END \74HCT164\;

ARCHITECTURE model OF \74HCT164\ IS
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
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>700 ps, tfall_clk_q=>700 ps)
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLR );
    QA <=  ( N1 ) AFTER 2500 ps;
    QB <=  ( N2 ) AFTER 2500 ps;
    QC <=  ( N3 ) AFTER 2500 ps;
    QD <=  ( N4 ) AFTER 2500 ps;
    QE <=  ( N5 ) AFTER 2500 ps;
    QF <=  ( N6 ) AFTER 2500 ps;
    QG <=  ( N7 ) AFTER 2500 ps;
    QH <=  ( N8 ) AFTER 2500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT174\ IS PORT(
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
END \74HCT174\;

ARCHITECTURE model OF \74HCT174\ IS

    BEGIN
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1800 ps, tfall_clk_q=>1800 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT175\ IS PORT(
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
END \74HCT175\;

ARCHITECTURE model OF \74HCT175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1600 ps, tfall_clk_q=>1600 ps)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT240\ IS PORT(
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
END \74HCT240\;

ARCHITECTURE model OF \74HCT240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 900 ps;
    N2 <= NOT ( A2_A ) AFTER 900 ps;
    N3 <= NOT ( A3_A ) AFTER 900 ps;
    N4 <= NOT ( A4_A ) AFTER 900 ps;
    N5 <= NOT ( A1_B ) AFTER 900 ps;
    N6 <= NOT ( A2_B ) AFTER 900 ps;
    N7 <= NOT ( A3_B ) AFTER 900 ps;
    N8 <= NOT ( A4_B ) AFTER 900 ps;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT241\ IS PORT(
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
END \74HCT241\;

ARCHITECTURE model OF \74HCT241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1100 ps;
    N2 <=  ( \1A2\ ) AFTER 1100 ps;
    N3 <=  ( \1A3\ ) AFTER 1100 ps;
    N4 <=  ( \1A4\ ) AFTER 1100 ps;
    N5 <=  ( \2A1\ ) AFTER 1100 ps;
    N6 <=  ( \2A2\ ) AFTER 1100 ps;
    N7 <=  ( \2A3\ ) AFTER 1100 ps;
    N8 <=  ( \2A4\ ) AFTER 1100 ps;
    L1 <= NOT ( \1G\ );
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT241A\ IS PORT(
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
END \74HCT241A\;

ARCHITECTURE model OF \74HCT241A\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1100 ps;
    N2 <=  ( \1A2\ ) AFTER 1100 ps;
    N3 <=  ( \1A3\ ) AFTER 1100 ps;
    N4 <=  ( \1A4\ ) AFTER 1100 ps;
    N5 <=  ( \2A1\ ) AFTER 1100 ps;
    N6 <=  ( \2A2\ ) AFTER 1100 ps;
    N7 <=  ( \2A3\ ) AFTER 1100 ps;
    N8 <=  ( \2A4\ ) AFTER 1100 ps;
    L1 <= NOT ( \1G\ );
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT242\ IS PORT(
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
END \74HCT242\;

ARCHITECTURE model OF \74HCT242\ IS
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
    N1 <= NOT ( A1 ) AFTER 1300 ps;
    N2 <= NOT ( A2 ) AFTER 1300 ps;
    N3 <= NOT ( A3 ) AFTER 1300 ps;
    N4 <= NOT ( A4 ) AFTER 1300 ps;
    N5 <= NOT ( B4 ) AFTER 1300 ps;
    N6 <= NOT ( B3 ) AFTER 1300 ps;
    N7 <= NOT ( B2 ) AFTER 1300 ps;
    N8 <= NOT ( B1 ) AFTER 1300 ps;
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT243\ IS PORT(
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
END \74HCT243\;

ARCHITECTURE model OF \74HCT243\ IS
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
    N1 <=  ( A1 ) AFTER 1400 ps;
    N2 <=  ( A2 ) AFTER 1400 ps;
    N3 <=  ( A3 ) AFTER 1400 ps;
    N4 <=  ( A4 ) AFTER 1400 ps;
    N5 <=  ( B4 ) AFTER 1400 ps;
    N6 <=  ( B3 ) AFTER 1400 ps;
    N7 <=  ( B2 ) AFTER 1400 ps;
    N8 <=  ( B1 ) AFTER 1400 ps;
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>4000 ps, tfall_i1_o=>4000 ps, tpd_en_o=>4000 ps)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT244\ IS PORT(
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
END \74HCT244\;

ARCHITECTURE model OF \74HCT244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1100 ps;
    N2 <=  ( \1A2\ ) AFTER 1100 ps;
    N3 <=  ( \1A3\ ) AFTER 1100 ps;
    N4 <=  ( \1A4\ ) AFTER 1100 ps;
    N5 <=  ( \2A1\ ) AFTER 1100 ps;
    N6 <=  ( \2A2\ ) AFTER 1100 ps;
    N7 <=  ( \2A3\ ) AFTER 1100 ps;
    N8 <=  ( \2A4\ ) AFTER 1100 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT244A\ IS PORT(
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
END \74HCT244A\;

ARCHITECTURE model OF \74HCT244A\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1100 ps;
    N2 <=  ( \1A2\ ) AFTER 1100 ps;
    N3 <=  ( \1A3\ ) AFTER 1100 ps;
    N4 <=  ( \1A4\ ) AFTER 1100 ps;
    N5 <=  ( \2A1\ ) AFTER 1100 ps;
    N6 <=  ( \2A2\ ) AFTER 1100 ps;
    N7 <=  ( \2A3\ ) AFTER 1100 ps;
    N8 <=  ( \2A4\ ) AFTER 1100 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT245\ IS PORT(
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
END \74HCT245\;

ARCHITECTURE model OF \74HCT245\ IS
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
    N1 <=  ( A1 ) AFTER 1000 ps;
    N2 <=  ( A2 ) AFTER 1000 ps;
    N3 <=  ( A3 ) AFTER 1000 ps;
    N4 <=  ( A4 ) AFTER 1000 ps;
    N5 <=  ( A5 ) AFTER 1000 ps;
    N6 <=  ( A6 ) AFTER 1000 ps;
    N7 <=  ( A7 ) AFTER 1000 ps;
    N8 <=  ( A8 ) AFTER 1000 ps;
    N9 <=  ( B8 ) AFTER 1000 ps;
    N10 <=  ( B7 ) AFTER 1000 ps;
    N11 <=  ( B6 ) AFTER 1000 ps;
    N12 <=  ( B5 ) AFTER 1000 ps;
    N13 <=  ( B4 ) AFTER 1000 ps;
    N14 <=  ( B3 ) AFTER 1000 ps;
    N15 <=  ( B2 ) AFTER 1000 ps;
    N16 <=  ( B1 ) AFTER 1000 ps;
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT251\ IS PORT(
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
END \74HCT251\;

ARCHITECTURE model OF \74HCT251\ IS
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
    L1 <= NOT ( G );
    N1 <= NOT ( A ) AFTER 600 ps;
    N2 <= NOT ( B ) AFTER 600 ps;
    N3 <= NOT ( C ) AFTER 600 ps;
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
    N4 <= NOT ( L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 ) AFTER 1800 ps;
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>W , i1=>N4 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT253\ IS PORT(
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
END \74HCT253\;

ARCHITECTURE model OF \74HCT253\ IS
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

    BEGIN
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    L3 <= NOT ( B );
    L4 <= NOT ( A );
    L5 <=  ( L1 AND L3 AND L4 AND \1C0\ );
    L6 <=  ( L1 AND L3 AND \1C1\ AND A );
    L7 <=  ( L1 AND L4 AND B AND \1C2\ );
    L8 <=  ( L1 AND B AND \1C3\ AND A );
    L9 <=  ( L2 AND L3 AND L4 AND \2C0\ );
    L10 <=  ( L2 AND L3 AND \2C1\ AND A );
    L11 <=  ( L2 AND L4 AND B AND \2C2\ );
    L12 <=  ( L2 AND B AND \2C3\ AND A );
    N1 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 1700 ps;
    N2 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 1700 ps;
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N1 , en=>L1 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N2 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT253B\ IS PORT(
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
END \74HCT253B\;

ARCHITECTURE model OF \74HCT253B\ IS
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

    BEGIN
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    L3 <= NOT ( B );
    L4 <= NOT ( A );
    L5 <=  ( L1 AND L3 AND L4 AND \1C0\ );
    L6 <=  ( L1 AND L3 AND \1C1\ AND A );
    L7 <=  ( L1 AND L4 AND B AND \1C2\ );
    L8 <=  ( L1 AND B AND \1C3\ AND A );
    L9 <=  ( L2 AND L3 AND L4 AND \2C0\ );
    L10 <=  ( L2 AND L3 AND \2C1\ AND A );
    L11 <=  ( L2 AND L4 AND B AND \2C2\ );
    L12 <=  ( L2 AND B AND \2C3\ AND A );
    N1 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 1700 ps;
    N2 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 1700 ps;
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N1 , en=>L1 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N2 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT257\ IS PORT(
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
END \74HCT257\;

ARCHITECTURE model OF \74HCT257\ IS
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
    N2 <=  ( L3 OR L4 ) AFTER 1300 ps;
    N3 <=  ( L5 OR L6 ) AFTER 1300 ps;
    N4 <=  ( L7 OR L8 ) AFTER 1300 ps;
    N5 <=  ( L9 OR L10 ) AFTER 1300 ps;
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>3000 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT273\ IS PORT(
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
END \74HCT273\;

ARCHITECTURE model OF \74HCT273\ IS

    BEGIN
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT373\ IS PORT(
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
END \74HCT373\;

ARCHITECTURE model OF \74HCT373\ IS
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
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT373A\ IS PORT(
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
END \74HCT373A\;

ARCHITECTURE model OF \74HCT373A\ IS
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
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT374\ IS PORT(
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
END \74HCT374\;

ARCHITECTURE model OF \74HCT374\ IS
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
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT374A\ IS PORT(
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
END \74HCT374A\;

ARCHITECTURE model OF \74HCT374A\ IS
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
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1300 ps, tfall_clk_q=>1300 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3000 ps, tfall_i1_o=>3000 ps, tpd_en_o=>2800 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT521\ IS PORT(
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
END \74HCT521\;

ARCHITECTURE model OF \74HCT521\ IS
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

ENTITY \74HCT533\ IS PORT(
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
END \74HCT533\;

ARCHITECTURE model OF \74HCT533\ IS
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
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT534\ IS PORT(
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
END \74HCT534\;

ARCHITECTURE model OF \74HCT534\ IS
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
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT540\ IS PORT(
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
END \74HCT540\;

ARCHITECTURE model OF \74HCT540\ IS
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
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT541\ IS PORT(
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
END \74HCT541\;

ARCHITECTURE model OF \74HCT541\ IS
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
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT563\ IS PORT(
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
END \74HCT563\;

ARCHITECTURE model OF \74HCT563\ IS
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
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT564\ IS PORT(
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
END \74HCT564\;

ARCHITECTURE model OF \74HCT564\ IS
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
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3200 ps, tfall_clk_q=>3200 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>3700 ps, tfall_i1_o=>3700 ps, tpd_en_o=>3700 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT573\ IS PORT(
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
END \74HCT573\;

ARCHITECTURE model OF \74HCT573\ IS
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
    DLATCH_35 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1900 ps, tfall_clk_q=>1900 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT574\ IS PORT(
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
END \74HCT574\;

ARCHITECTURE model OF \74HCT574\ IS
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
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3500 ps, tfall_i1_o=>3500 ps, tpd_en_o=>3100 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT620\ IS PORT(
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
END \74HCT620\;

ARCHITECTURE model OF \74HCT620\ IS
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
    N1 <= NOT ( A1 ) AFTER 2200 ps;
    N2 <= NOT ( A2 ) AFTER 2200 ps;
    N3 <= NOT ( A3 ) AFTER 2200 ps;
    N4 <= NOT ( A4 ) AFTER 2200 ps;
    N5 <= NOT ( A5 ) AFTER 2200 ps;
    N6 <= NOT ( A6 ) AFTER 2200 ps;
    N7 <= NOT ( A7 ) AFTER 2200 ps;
    N8 <= NOT ( A8 ) AFTER 2200 ps;
    N9 <= NOT ( B8 ) AFTER 2200 ps;
    N10 <= NOT ( B7 ) AFTER 2200 ps;
    N11 <= NOT ( B6 ) AFTER 2200 ps;
    N12 <= NOT ( B5 ) AFTER 2200 ps;
    N13 <= NOT ( B4 ) AFTER 2200 ps;
    N14 <= NOT ( B3 ) AFTER 2200 ps;
    N15 <= NOT ( B2 ) AFTER 2200 ps;
    N16 <= NOT ( B1 ) AFTER 2200 ps;
    L1 <= NOT ( GBA );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT623\ IS PORT(
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
END \74HCT623\;

ARCHITECTURE model OF \74HCT623\ IS
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
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>3800 ps, tfall_i1_o=>3800 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT640\ IS PORT(
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
END \74HCT640\;

ARCHITECTURE model OF \74HCT640\ IS
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
    N1 <= NOT ( A1 ) AFTER 2000 ps;
    N2 <= NOT ( A2 ) AFTER 2000 ps;
    N3 <= NOT ( A3 ) AFTER 2000 ps;
    N4 <= NOT ( A4 ) AFTER 2000 ps;
    N5 <= NOT ( A5 ) AFTER 2000 ps;
    N6 <= NOT ( A6 ) AFTER 2000 ps;
    N7 <= NOT ( A7 ) AFTER 2000 ps;
    N8 <= NOT ( A8 ) AFTER 2000 ps;
    N9 <= NOT ( B8 ) AFTER 2000 ps;
    N10 <= NOT ( B7 ) AFTER 2000 ps;
    N11 <= NOT ( B6 ) AFTER 2000 ps;
    N12 <= NOT ( B5 ) AFTER 2000 ps;
    N13 <= NOT ( B4 ) AFTER 2000 ps;
    N14 <= NOT ( B3 ) AFTER 2000 ps;
    N15 <= NOT ( B2 ) AFTER 2000 ps;
    N16 <= NOT ( B1 ) AFTER 2000 ps;
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT643\ IS PORT(
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
END \74HCT643\;

ARCHITECTURE model OF \74HCT643\ IS
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
    N1 <= NOT ( A1 ) AFTER 2000 ps;
    N2 <= NOT ( A2 ) AFTER 2000 ps;
    N3 <= NOT ( A3 ) AFTER 2000 ps;
    N4 <= NOT ( A4 ) AFTER 2000 ps;
    N5 <= NOT ( A5 ) AFTER 2000 ps;
    N6 <= NOT ( A6 ) AFTER 2000 ps;
    N7 <= NOT ( A7 ) AFTER 2000 ps;
    N8 <= NOT ( A8 ) AFTER 2000 ps;
    N9 <=  ( B8 ) AFTER 2000 ps;
    N10 <=  ( B7 ) AFTER 2000 ps;
    N11 <=  ( B6 ) AFTER 2000 ps;
    N12 <=  ( B5 ) AFTER 2000 ps;
    N13 <=  ( B4 ) AFTER 2000 ps;
    N14 <=  ( B3 ) AFTER 2000 ps;
    N15 <=  ( B2 ) AFTER 2000 ps;
    N16 <=  ( B1 ) AFTER 2000 ps;
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5300 ps, tfall_i1_o=>5300 ps, tpd_en_o=>3800 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT645\ IS PORT(
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
END \74HCT645\;

ARCHITECTURE model OF \74HCT645\ IS
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
    N1 <=  ( A1 ) AFTER 2800 ps;
    N2 <=  ( A2 ) AFTER 2800 ps;
    N3 <=  ( A3 ) AFTER 2800 ps;
    N4 <=  ( A4 ) AFTER 2800 ps;
    N5 <=  ( A5 ) AFTER 2800 ps;
    N6 <=  ( A6 ) AFTER 2800 ps;
    N7 <=  ( A7 ) AFTER 2800 ps;
    N8 <=  ( A8 ) AFTER 2800 ps;
    N9 <=  ( B8 ) AFTER 2800 ps;
    N10 <=  ( B7 ) AFTER 2800 ps;
    N11 <=  ( B6 ) AFTER 2800 ps;
    N12 <=  ( B5 ) AFTER 2800 ps;
    N13 <=  ( B4 ) AFTER 2800 ps;
    N14 <=  ( B3 ) AFTER 2800 ps;
    N15 <=  ( B2 ) AFTER 2800 ps;
    N16 <=  ( B1 ) AFTER 2800 ps;
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>5800 ps, tfall_i1_o=>5800 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT646\ IS PORT(
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
END \74HCT646\;

ARCHITECTURE model OF \74HCT646\ IS
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
    N1 <= NOT ( SBA ) AFTER 1400 ps;
    N2 <= NOT ( SAB ) AFTER 1400 ps;
    N3 <=  ( SBA ) AFTER 1400 ps;
    N4 <=  ( SAB ) AFTER 1400 ps;
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
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L4 OR L5 ) AFTER 3400 ps;
    N22 <=  ( L6 OR L7 ) AFTER 3400 ps;
    N23 <=  ( L8 OR L9 ) AFTER 3400 ps;
    N24 <=  ( L10 OR L11 ) AFTER 3400 ps;
    N25 <=  ( L12 OR L13 ) AFTER 3400 ps;
    N26 <=  ( L14 OR L15 ) AFTER 3400 ps;
    N27 <=  ( L16 OR L17 ) AFTER 3400 ps;
    N28 <=  ( L18 OR L19 ) AFTER 3400 ps;
    N29 <=  ( L20 OR L21 ) AFTER 3400 ps;
    N30 <=  ( L22 OR L23 ) AFTER 3400 ps;
    N31 <=  ( L24 OR L25 ) AFTER 3400 ps;
    N32 <=  ( L26 OR L27 ) AFTER 3400 ps;
    N33 <=  ( L28 OR L29 ) AFTER 3400 ps;
    N34 <=  ( L30 OR L31 ) AFTER 3400 ps;
    N35 <=  ( L32 OR L33 ) AFTER 3400 ps;
    N36 <=  ( L34 OR L35 ) AFTER 3400 ps;
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L3 );
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L3 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L3 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L3 );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L3 );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L3 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L3 );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT648\ IS PORT(
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
END \74HCT648\;

ARCHITECTURE model OF \74HCT648\ IS
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
    N1 <= NOT ( SBA ) AFTER 1400 ps;
    N2 <= NOT ( SAB ) AFTER 1400 ps;
    N3 <=  ( SBA ) AFTER 1400 ps;
    N4 <=  ( SAB ) AFTER 1400 ps;
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
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L4 OR L5 ) AFTER 3400 ps;
    N22 <= NOT ( L6 OR L7 ) AFTER 3400 ps;
    N23 <= NOT ( L8 OR L9 ) AFTER 3400 ps;
    N24 <= NOT ( L10 OR L11 ) AFTER 3400 ps;
    N25 <= NOT ( L12 OR L13 ) AFTER 3400 ps;
    N26 <= NOT ( L14 OR L15 ) AFTER 3400 ps;
    N27 <= NOT ( L16 OR L17 ) AFTER 3400 ps;
    N28 <= NOT ( L18 OR L19 ) AFTER 3400 ps;
    N29 <= NOT ( L20 OR L21 ) AFTER 3400 ps;
    N30 <= NOT ( L22 OR L23 ) AFTER 3400 ps;
    N31 <= NOT ( L24 OR L25 ) AFTER 3400 ps;
    N32 <= NOT ( L26 OR L27 ) AFTER 3400 ps;
    N33 <= NOT ( L28 OR L29 ) AFTER 3400 ps;
    N34 <= NOT ( L30 OR L31 ) AFTER 3400 ps;
    N35 <= NOT ( L32 OR L33 ) AFTER 3400 ps;
    N36 <= NOT ( L34 OR L35 ) AFTER 3400 ps;
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L3 );
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L3 );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L3 );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L3 );
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L3 );
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L3 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L3 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT651\ IS PORT(
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
END \74HCT651\;

ARCHITECTURE model OF \74HCT651\ IS
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
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_95 :  ORCAD_DQFF 
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
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT652\ IS PORT(
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
END \74HCT652\;

ARCHITECTURE model OF \74HCT652\ IS
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
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_104 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_105 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_106 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_107 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_108 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_109 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_110 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1100 ps, tfall_clk_q=>1100 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_111 :  ORCAD_DQFF 
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
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6100 ps, tfall_i1_o=>6100 ps, tpd_en_o=>6100 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74HCT688\ IS PORT(
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
END \74HCT688\;

ARCHITECTURE model OF \74HCT688\ IS
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

