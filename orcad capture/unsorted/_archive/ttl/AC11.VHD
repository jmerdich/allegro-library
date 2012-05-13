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
-- Date:	  		February 20, 1997
-- File:			AC11.VHD
-- Resource:	  Texas Instruments, Advanced CMOS Logic, Data Book 1993
--                 AC11XXX/ACT11XXX Families
-- Delay units:	  Picoseconds 
-- Characteristics: 74AC11XXX and 74ACT11XXX MIN/MAX, Vcc=5V +/-0.5 V

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Removed duplicate pins on components AC/ACT520, 074, 
--				 109, 521, and 280.



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11000\ IS PORT(
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
END \74AC11000\;

ARCHITECTURE model OF \74AC11000\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11002\ IS PORT(
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
END \74AC11002\;

ARCHITECTURE model OF \74AC11002\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11004\ IS PORT(
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
END \74AC11004\;

ARCHITECTURE model OF \74AC11004\ IS

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

ENTITY \74AC11008\ IS PORT(
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
END \74AC11008\;

ARCHITECTURE model OF \74AC11008\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11010\ IS PORT(
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
END \74AC11010\;

ARCHITECTURE model OF \74AC11010\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11011\ IS PORT(
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
END \74AC11011\;

ARCHITECTURE model OF \74AC11011\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11014\ IS PORT(
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
END \74AC11014\;

ARCHITECTURE model OF \74AC11014\ IS

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

ENTITY \74AC11020\ IS PORT(
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
END \74AC11020\;

ARCHITECTURE model OF \74AC11020\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11021\ IS PORT(
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
END \74AC11021\;

ARCHITECTURE model OF \74AC11021\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11027\ IS PORT(
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
END \74AC11027\;

ARCHITECTURE model OF \74AC11027\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11030\ IS PORT(
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
END \74AC11030\;

ARCHITECTURE model OF \74AC11030\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11032\ IS PORT(
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
END \74AC11032\;

ARCHITECTURE model OF \74AC11032\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11034\ IS PORT(
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
END \74AC11034\;

ARCHITECTURE model OF \74AC11034\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 1500 ps;
    O_B <=  ( I_B ) AFTER 1500 ps;
    O_C <=  ( I_C ) AFTER 1500 ps;
    O_D <=  ( I_D ) AFTER 1500 ps;
    O_E <=  ( I_E ) AFTER 1500 ps;
    O_F <=  ( I_F ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11074\ IS PORT(
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
END \74AC11074\;

ARCHITECTURE model OF \74AC11074\ IS

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

ENTITY \74AC11086\ IS PORT(
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
END \74AC11086\;

ARCHITECTURE model OF \74AC11086\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B XOR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C XOR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D XOR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11109\ IS PORT(
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
END \74AC11109\;

ARCHITECTURE model OF \74AC11109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11112\ IS PORT(
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
END \74AC11112\;

ARCHITECTURE model OF \74AC11112\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( PR_A );
    L2 <= NOT ( CL_A );
    L3 <= NOT ( PR_B );
    L4 <= NOT ( CL_B );
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>CLK_A , pr=>L1 , cl=>L2 );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>CLK_B , pr=>L3 , cl=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11132\ IS PORT(
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
END \74AC11132\;

ARCHITECTURE model OF \74AC11132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2300 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2300 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2300 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11138\ IS PORT(
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
END \74AC11138\;

ARCHITECTURE model OF \74AC11138\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 750 ps;
    N2 <=  ( B ) AFTER 750 ps;
    N3 <=  ( C ) AFTER 750 ps;
    N4 <= NOT ( A ) AFTER 750 ps;
    N5 <= NOT ( B ) AFTER 750 ps;
    N6 <= NOT ( C ) AFTER 750 ps;
    N7 <= NOT ( G1 ) AFTER 750 ps;
    N8 <= NOT ( G2A OR G2B OR N7 ) AFTER 750 ps;
    Y0 <= NOT ( N8 AND N6 AND N4 AND N5 ) AFTER 750 ps;
    Y1 <= NOT ( N8 AND N6 AND N1 AND N5 ) AFTER 750 ps;
    Y2 <= NOT ( N8 AND N5 AND N6 AND N4 ) AFTER 750 ps;
    Y3 <= NOT ( N8 AND N5 AND N6 AND N1 ) AFTER 750 ps;
    Y4 <= NOT ( N8 AND N3 AND N4 AND N5 ) AFTER 750 ps;
    Y5 <= NOT ( N8 AND N3 AND N1 AND N5 ) AFTER 750 ps;
    Y6 <= NOT ( N8 AND N5 AND N3 AND N4 ) AFTER 750 ps;
    Y7 <= NOT ( N8 AND N5 AND N3 AND N1 ) AFTER 750 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11240\ IS PORT(
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
END \74AC11240\;

ARCHITECTURE model OF \74AC11240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 1500 ps;
    N2 <= NOT ( A2_A ) AFTER 1500 ps;
    N3 <= NOT ( A3_A ) AFTER 1500 ps;
    N4 <= NOT ( A4_A ) AFTER 1500 ps;
    N5 <= NOT ( A1_B ) AFTER 1500 ps;
    N6 <= NOT ( A2_B ) AFTER 1500 ps;
    N7 <= NOT ( A3_B ) AFTER 1500 ps;
    N8 <= NOT ( A4_B ) AFTER 1500 ps;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11241\ IS PORT(
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
END \74AC11241\;

ARCHITECTURE model OF \74AC11241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1500 ps;
    N2 <=  ( \1A2\ ) AFTER 1500 ps;
    N3 <=  ( \1A3\ ) AFTER 1500 ps;
    N4 <=  ( \1A4\ ) AFTER 1500 ps;
    N5 <=  ( \2A1\ ) AFTER 1500 ps;
    N6 <=  ( \2A2\ ) AFTER 1500 ps;
    N7 <=  ( \2A3\ ) AFTER 1500 ps;
    N8 <=  ( \2A4\ ) AFTER 1500 ps;
    L1 <= NOT ( \1G\ );
    N2 <=  ( \2G\ ) AFTER 0 ps;
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>N1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>N2 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>N2 );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>N2 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11244\ IS PORT(
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
END \74AC11244\;

ARCHITECTURE model OF \74AC11244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1500 ps;
    N2 <=  ( \1A2\ ) AFTER 1500 ps;
    N3 <=  ( \1A3\ ) AFTER 1500 ps;
    N4 <=  ( \1A4\ ) AFTER 1500 ps;
    N5 <=  ( \2A1\ ) AFTER 1500 ps;
    N6 <=  ( \2A2\ ) AFTER 1500 ps;
    N7 <=  ( \2A3\ ) AFTER 1500 ps;
    N8 <=  ( \2A4\ ) AFTER 1500 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11245\ IS PORT(
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
END \74AC11245\;

ARCHITECTURE model OF \74AC11245\ IS
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
    L1 <= NOT ( DIR );
    L2 <= NOT ( G );
    L3 <=  ( DIR AND L2 );
    L4 <=  ( L1 AND L2 );
    N1 <=  ( A1 ) AFTER 1500 ps;
    N2 <=  ( A2 ) AFTER 1500 ps;
    N3 <=  ( A3 ) AFTER 1500 ps;
    N4 <=  ( A4 ) AFTER 1500 ps;
    N5 <=  ( A5 ) AFTER 1500 ps;
    N6 <=  ( A6 ) AFTER 1500 ps;
    N7 <=  ( A7 ) AFTER 1500 ps;
    N8 <=  ( A8 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B7 ) AFTER 1500 ps;
    N11 <=  ( B6 ) AFTER 1500 ps;
    N12 <=  ( B5 ) AFTER 1500 ps;
    N13 <=  ( B4 ) AFTER 1500 ps;
    N14 <=  ( B3 ) AFTER 1500 ps;
    N15 <=  ( B2 ) AFTER 1500 ps;
    N16 <=  ( B1 ) AFTER 1500 ps;
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11273\ IS PORT(
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
END \74AC11273\;

ARCHITECTURE model OF \74AC11273\ IS

    BEGIN
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>4500 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11280\ IS PORT(
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
END \74AC11280\;

ARCHITECTURE model OF \74AC11280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 1500 ps;
    ODD <=  ( L1 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11373\ IS PORT(
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
END \74AC11373\;

ARCHITECTURE model OF \74AC11373\ IS
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
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    L1 <= NOT ( OC );
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11374\ IS PORT(
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
END \74AC11374\;

ARCHITECTURE model OF \74AC11374\ IS
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
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    L1 <= NOT ( OC );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11520\ IS PORT(
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
END \74AC11520\;

ARCHITECTURE model OF \74AC11520\ IS
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
    L1 <= NOT ( G );
    N1 <= NOT ( P7 XOR Q7 ) AFTER 0 ps;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 0 ps;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 0 ps;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 0 ps;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 0 ps;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 0 ps;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 0 ps;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 0 ps;
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11521\ IS PORT(
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
END \74AC11521\;

ARCHITECTURE model OF \74AC11521\ IS
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
    L1 <= NOT ( G );
    N1 <= NOT ( P7 XOR Q7 ) AFTER 0 ps;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 0 ps;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 0 ps;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 0 ps;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 0 ps;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 0 ps;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 0 ps;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 0 ps;
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11533\ IS PORT(
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
END \74AC11533\;

ARCHITECTURE model OF \74AC11533\ IS
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
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11534\ IS PORT(
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
END \74AC11534\;

ARCHITECTURE model OF \74AC11534\ IS
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
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11620\ IS PORT(
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
END \74AC11620\;

ARCHITECTURE model OF \74AC11620\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    N9 <= NOT ( B8 ) AFTER 1500 ps;
    N10 <= NOT ( B7 ) AFTER 1500 ps;
    N11 <= NOT ( B6 ) AFTER 1500 ps;
    N12 <= NOT ( B5 ) AFTER 1500 ps;
    N13 <= NOT ( B4 ) AFTER 1500 ps;
    N14 <= NOT ( B3 ) AFTER 1500 ps;
    N15 <= NOT ( B2 ) AFTER 1500 ps;
    N16 <= NOT ( B1 ) AFTER 1500 ps;
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11623\ IS PORT(
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
END \74AC11623\;

ARCHITECTURE model OF \74AC11623\ IS
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
    N1 <=  ( A1 ) AFTER 1500 ps;
    N2 <=  ( A2 ) AFTER 1500 ps;
    N3 <=  ( A3 ) AFTER 1500 ps;
    N4 <=  ( A4 ) AFTER 1500 ps;
    N5 <=  ( A5 ) AFTER 1500 ps;
    N6 <=  ( A6 ) AFTER 1500 ps;
    N7 <=  ( A7 ) AFTER 1500 ps;
    N8 <=  ( A8 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B7 ) AFTER 1500 ps;
    N11 <=  ( B6 ) AFTER 1500 ps;
    N12 <=  ( B5 ) AFTER 1500 ps;
    N13 <=  ( B4 ) AFTER 1500 ps;
    N14 <=  ( B3 ) AFTER 1500 ps;
    N15 <=  ( B2 ) AFTER 1500 ps;
    N16 <=  ( B1 ) AFTER 1500 ps;
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11640\ IS PORT(
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
END \74AC11640\;

ARCHITECTURE model OF \74AC11640\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    N9 <= NOT ( B8 ) AFTER 1500 ps;
    N10 <= NOT ( B7 ) AFTER 1500 ps;
    N11 <= NOT ( B6 ) AFTER 1500 ps;
    N12 <= NOT ( B5 ) AFTER 1500 ps;
    N13 <= NOT ( B4 ) AFTER 1500 ps;
    N14 <= NOT ( B3 ) AFTER 1500 ps;
    N15 <= NOT ( B2 ) AFTER 1500 ps;
    N16 <= NOT ( B1 ) AFTER 1500 ps;
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AC11643\ IS PORT(
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
END \74AC11643\;

ARCHITECTURE model OF \74AC11643\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B7 ) AFTER 1500 ps;
    N11 <=  ( B6 ) AFTER 1500 ps;
    N12 <=  ( B5 ) AFTER 1500 ps;
    N13 <=  ( B4 ) AFTER 1500 ps;
    N14 <=  ( B3 ) AFTER 1500 ps;
    N15 <=  ( B2 ) AFTER 1500 ps;
    N16 <=  ( B1 ) AFTER 1500 ps;
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11000\ IS PORT(
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
END \74ACT11000\;

ARCHITECTURE model OF \74ACT11000\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11002\ IS PORT(
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
END \74ACT11002\;

ARCHITECTURE model OF \74ACT11002\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11004\ IS PORT(
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
END \74ACT11004\;

ARCHITECTURE model OF \74ACT11004\ IS

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

ENTITY \74ACT11008\ IS PORT(
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
END \74ACT11008\;

ARCHITECTURE model OF \74ACT11008\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11010\ IS PORT(
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
END \74ACT11010\;

ARCHITECTURE model OF \74ACT11010\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11011\ IS PORT(
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
END \74ACT11011\;

ARCHITECTURE model OF \74ACT11011\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11014\ IS PORT(
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
END \74ACT11014\;

ARCHITECTURE model OF \74ACT11014\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 3300 ps;
    O_B <= NOT ( I_B ) AFTER 3300 ps;
    O_C <= NOT ( I_C ) AFTER 3300 ps;
    O_D <= NOT ( I_D ) AFTER 3300 ps;
    O_E <= NOT ( I_E ) AFTER 3300 ps;
    O_F <= NOT ( I_F ) AFTER 3300 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11020\ IS PORT(
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
END \74ACT11020\;

ARCHITECTURE model OF \74ACT11020\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11021\ IS PORT(
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
END \74ACT11021\;

ARCHITECTURE model OF \74ACT11021\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11027\ IS PORT(
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
END \74ACT11027\;

ARCHITECTURE model OF \74ACT11027\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11030\ IS PORT(
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
END \74ACT11030\;

ARCHITECTURE model OF \74ACT11030\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11032\ IS PORT(
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
END \74ACT11032\;

ARCHITECTURE model OF \74ACT11032\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11034\ IS PORT(
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
END \74ACT11034\;

ARCHITECTURE model OF \74ACT11034\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 1500 ps;
    O_B <=  ( I_B ) AFTER 1500 ps;
    O_C <=  ( I_C ) AFTER 1500 ps;
    O_D <=  ( I_D ) AFTER 1500 ps;
    O_E <=  ( I_E ) AFTER 1500 ps;
    O_F <=  ( I_F ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11074\ IS PORT(
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
END \74ACT11074\;

ARCHITECTURE model OF \74ACT11074\ IS

    BEGIN
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_3 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11086\ IS PORT(
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
END \74ACT11086\;

ARCHITECTURE model OF \74ACT11086\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B XOR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C XOR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D XOR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11109\ IS PORT(
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
END \74ACT11109\;

ARCHITECTURE model OF \74ACT11109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11112\ IS PORT(
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
END \74ACT11112\;

ARCHITECTURE model OF \74ACT11112\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( PR_A );
    L2 <= NOT ( CL_A );
    L3 <= NOT ( PR_B );
    L4 <= NOT ( CL_B );
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>CLK_A , pr=>L1 , cl=>L2 );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>CLK_B , pr=>L3 , cl=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11132\ IS PORT(
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
END \74ACT11132\;

ARCHITECTURE model OF \74ACT11132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3700 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3700 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 3700 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 3700 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11138\ IS PORT(
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
END \74ACT11138\;

ARCHITECTURE model OF \74ACT11138\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 750 ps;
    N2 <=  ( B ) AFTER 750 ps;
    N3 <=  ( C ) AFTER 750 ps;
    N4 <= NOT ( A ) AFTER 750 ps;
    N5 <= NOT ( B ) AFTER 750 ps;
    N6 <= NOT ( C ) AFTER 750 ps;
    N7 <= NOT ( G1 ) AFTER 750 ps;
    N8 <= NOT ( G2A OR G2B OR N7 ) AFTER 750 ps;
    Y0 <= NOT ( N8 AND N6 AND N4 AND N5 ) AFTER 750 ps;
    Y1 <= NOT ( N8 AND N6 AND N1 AND N5 ) AFTER 750 ps;
    Y2 <= NOT ( N8 AND N5 AND N6 AND N4 ) AFTER 750 ps;
    Y3 <= NOT ( N8 AND N5 AND N6 AND N1 ) AFTER 750 ps;
    Y4 <= NOT ( N8 AND N3 AND N4 AND N5 ) AFTER 750 ps;
    Y5 <= NOT ( N8 AND N3 AND N1 AND N5 ) AFTER 750 ps;
    Y6 <= NOT ( N8 AND N5 AND N3 AND N4 ) AFTER 750 ps;
    Y7 <= NOT ( N8 AND N5 AND N3 AND N1 ) AFTER 750 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11174\ IS PORT(
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
END \74ACT11174\;

ARCHITECTURE model OF \74ACT11174\ IS

    BEGIN
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2100 ps, tfall_clk_q=>2700 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11175\ IS PORT(
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
END \74ACT11175\;

ARCHITECTURE model OF \74ACT11175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2400 ps, tfall_clk_q=>1700 ps)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2400 ps, tfall_clk_q=>1700 ps)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2400 ps, tfall_clk_q=>1700 ps)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>2400 ps, tfall_clk_q=>1700 ps)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11240\ IS PORT(
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
END \74ACT11240\;

ARCHITECTURE model OF \74ACT11240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 1500 ps;
    N2 <= NOT ( A2_A ) AFTER 1500 ps;
    N3 <= NOT ( A3_A ) AFTER 1500 ps;
    N4 <= NOT ( A4_A ) AFTER 1500 ps;
    N5 <= NOT ( A1_B ) AFTER 1500 ps;
    N6 <= NOT ( A2_B ) AFTER 1500 ps;
    N7 <= NOT ( A3_B ) AFTER 1500 ps;
    N8 <= NOT ( A4_B ) AFTER 1500 ps;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11244\ IS PORT(
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
END \74ACT11244\;

ARCHITECTURE model OF \74ACT11244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1500 ps;
    N2 <=  ( \1A2\ ) AFTER 1500 ps;
    N3 <=  ( \1A3\ ) AFTER 1500 ps;
    N4 <=  ( \1A4\ ) AFTER 1500 ps;
    N5 <=  ( \2A1\ ) AFTER 1500 ps;
    N6 <=  ( \2A2\ ) AFTER 1500 ps;
    N7 <=  ( \2A3\ ) AFTER 1500 ps;
    N8 <=  ( \2A4\ ) AFTER 1500 ps;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11245\ IS PORT(
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
END \74ACT11245\;

ARCHITECTURE model OF \74ACT11245\ IS
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
    L1 <= NOT ( DIR );
    L2 <= NOT ( G );
    L3 <=  ( DIR AND L2 );
    L4 <=  ( L1 AND L2 );
    N1 <=  ( A1 ) AFTER 1500 ps;
    N2 <=  ( A2 ) AFTER 1500 ps;
    N3 <=  ( A3 ) AFTER 1500 ps;
    N4 <=  ( A4 ) AFTER 1500 ps;
    N5 <=  ( A5 ) AFTER 1500 ps;
    N6 <=  ( A6 ) AFTER 1500 ps;
    N7 <=  ( A7 ) AFTER 1500 ps;
    N8 <=  ( A8 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B7 ) AFTER 1500 ps;
    N11 <=  ( B6 ) AFTER 1500 ps;
    N12 <=  ( B5 ) AFTER 1500 ps;
    N13 <=  ( B4 ) AFTER 1500 ps;
    N14 <=  ( B3 ) AFTER 1500 ps;
    N15 <=  ( B2 ) AFTER 1500 ps;
    N16 <=  ( B1 ) AFTER 1500 ps;
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11373\ IS PORT(
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
END \74ACT11373\;

ARCHITECTURE model OF \74ACT11373\ IS
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
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11520\ IS PORT(
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
END \74ACT11520\;

ARCHITECTURE model OF \74ACT11520\ IS
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
    L1 <= NOT ( G );
    N1 <= NOT ( P7 XOR Q7 ) AFTER 0 ps;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 0 ps;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 0 ps;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 0 ps;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 0 ps;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 0 ps;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 0 ps;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 0 ps;
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11521\ IS PORT(
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
END \74ACT11521\;

ARCHITECTURE model OF \74ACT11521\ IS
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
    L1 <= NOT ( G );
    N1 <= NOT ( P7 XOR Q7 ) AFTER 0 ps;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 0 ps;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 0 ps;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 0 ps;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 0 ps;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 0 ps;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 0 ps;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 0 ps;
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11533\ IS PORT(
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
END \74ACT11533\;

ARCHITECTURE model OF \74ACT11533\ IS
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
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11620\ IS PORT(
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
END \74ACT11620\;

ARCHITECTURE model OF \74ACT11620\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    N9 <= NOT ( B8 ) AFTER 1500 ps;
    N10 <= NOT ( B7 ) AFTER 1500 ps;
    N11 <= NOT ( B6 ) AFTER 1500 ps;
    N12 <= NOT ( B5 ) AFTER 1500 ps;
    N13 <= NOT ( B4 ) AFTER 1500 ps;
    N14 <= NOT ( B3 ) AFTER 1500 ps;
    N15 <= NOT ( B2 ) AFTER 1500 ps;
    N16 <= NOT ( B1 ) AFTER 1500 ps;
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11623\ IS PORT(
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
END \74ACT11623\;

ARCHITECTURE model OF \74ACT11623\ IS
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
    N1 <=  ( A1 ) AFTER 1500 ps;
    N2 <=  ( A2 ) AFTER 1500 ps;
    N3 <=  ( A3 ) AFTER 1500 ps;
    N4 <=  ( A4 ) AFTER 1500 ps;
    N5 <=  ( A5 ) AFTER 1500 ps;
    N6 <=  ( A6 ) AFTER 1500 ps;
    N7 <=  ( A7 ) AFTER 1500 ps;
    N8 <=  ( A8 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B7 ) AFTER 1500 ps;
    N11 <=  ( B6 ) AFTER 1500 ps;
    N12 <=  ( B5 ) AFTER 1500 ps;
    N13 <=  ( B4 ) AFTER 1500 ps;
    N14 <=  ( B3 ) AFTER 1500 ps;
    N15 <=  ( B2 ) AFTER 1500 ps;
    N16 <=  ( B1 ) AFTER 1500 ps;
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11640\ IS PORT(
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
END \74ACT11640\;

ARCHITECTURE model OF \74ACT11640\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    N9 <= NOT ( B8 ) AFTER 1500 ps;
    N10 <= NOT ( B7 ) AFTER 1500 ps;
    N11 <= NOT ( B6 ) AFTER 1500 ps;
    N12 <= NOT ( B5 ) AFTER 1500 ps;
    N13 <= NOT ( B4 ) AFTER 1500 ps;
    N14 <= NOT ( B3 ) AFTER 1500 ps;
    N15 <= NOT ( B2 ) AFTER 1500 ps;
    N16 <= NOT ( B1 ) AFTER 1500 ps;
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11643\ IS PORT(
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
END \74ACT11643\;

ARCHITECTURE model OF \74ACT11643\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B7 ) AFTER 1500 ps;
    N11 <=  ( B6 ) AFTER 1500 ps;
    N12 <=  ( B5 ) AFTER 1500 ps;
    N13 <=  ( B4 ) AFTER 1500 ps;
    N14 <=  ( B3 ) AFTER 1500 ps;
    N15 <=  ( B2 ) AFTER 1500 ps;
    N16 <=  ( B1 ) AFTER 1500 ps;
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11241\ IS PORT(
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
END \74ACT11241\;

ARCHITECTURE model OF \74ACT11241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 1500 ps;
    N2 <=  ( \1A2\ ) AFTER 1500 ps;
    N3 <=  ( \1A3\ ) AFTER 1500 ps;
    N4 <=  ( \1A4\ ) AFTER 1500 ps;
    N5 <=  ( \2A1\ ) AFTER 1500 ps;
    N6 <=  ( \2A2\ ) AFTER 1500 ps;
    N7 <=  ( \2A3\ ) AFTER 1500 ps;
    N8 <=  ( \2A4\ ) AFTER 1500 ps;
    L1 <= NOT ( \1G\ );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11280\ IS PORT(
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
END \74ACT11280\;

ARCHITECTURE model OF \74ACT11280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 1500 ps;
    ODD <=  ( L1 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11374\ IS PORT(
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
END \74ACT11374\;

ARCHITECTURE model OF \74ACT11374\ IS
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
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11534\ IS PORT(
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
END \74ACT11534\;

ARCHITECTURE model OF \74ACT11534\ IS
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
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;

