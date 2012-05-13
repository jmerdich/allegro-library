--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   
   
-- Purpose:		OrCAD VHDL Source File
-- Version:		v7.00.02
-- Date:			February 25, 1997
-- File:			AS.VHD
-- Resource:	  1984 National Logic Data book.
-- Delay units:	  Nanoseconds 
-- Characteristics: 74SXXXX MIN/MAX, Vcc=5V +/-0.5 V

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  
--		v7.00.02 - Corrected functionality of transceivers.



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS00\ IS PORT(
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
END \74AS00\;

ARCHITECTURE model OF \74AS00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS02\ IS PORT(
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
END \74AS02\;

ARCHITECTURE model OF \74AS02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 3 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS04\ IS PORT(
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
END \74AS04\;

ARCHITECTURE model OF \74AS04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 3 ns;
    O_B <= NOT ( I_B ) AFTER 3 ns;
    O_C <= NOT ( I_C ) AFTER 3 ns;
    O_D <= NOT ( I_D ) AFTER 3 ns;
    O_E <= NOT ( I_E ) AFTER 3 ns;
    O_F <= NOT ( I_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS08\ IS PORT(
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
END \74AS08\;

ARCHITECTURE model OF \74AS08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 4 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 4 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 4 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS10\ IS PORT(
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
END \74AS10\;

ARCHITECTURE model OF \74AS10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 3 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS11\ IS PORT(
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
END \74AS11\;

ARCHITECTURE model OF \74AS11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 4 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 4 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS20\ IS PORT(
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
END \74AS20\;

ARCHITECTURE model OF \74AS20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS21\ IS PORT(
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
END \74AS21\;

ARCHITECTURE model OF \74AS21\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 4 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS27\ IS PORT(
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
END \74AS27\;

ARCHITECTURE model OF \74AS27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 4 ns;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 4 ns;
    O_C <= NOT ( I2_C OR I1_C OR I0_C ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS30\ IS PORT(
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
END \74AS30\;

ARCHITECTURE model OF \74AS30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS32\ IS PORT(
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
END \74AS32\;

ARCHITECTURE model OF \74AS32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 4 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 4 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 4 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS34\ IS PORT(
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
END \74AS34\;

ARCHITECTURE model OF \74AS34\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 4 ns;
    O_B <=  ( I_B ) AFTER 4 ns;
    O_C <=  ( I_C ) AFTER 4 ns;
    O_D <=  ( I_D ) AFTER 4 ns;
    O_E <=  ( I_E ) AFTER 4 ns;
    O_F <=  ( I_F ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS74\ IS PORT(
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
END \74AS74\;

ARCHITECTURE model OF \74AS74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS86\ IS PORT(
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
END \74AS86\;

ARCHITECTURE model OF \74AS86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 6 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 6 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 6 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS95\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
MODE : IN  std_logic;
\CLK1-L\ : IN  std_logic;
\CLK2-R\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS95\;

ARCHITECTURE model OF \74AS95\ IS
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

    BEGIN
    L1 <= NOT ( MODE );
    L2 <=  ( L1 AND \CLK1-L\ );
    L3 <=  ( MODE AND \CLK2-R\ );
    N1 <= NOT ( L2 OR L3 ) AFTER 0 ns;
    L4 <=  ( SER AND L1 );
    L5 <=  ( MODE AND A );
    L6 <=  ( N2 AND L1 );
    L7 <=  ( MODE AND B );
    L8 <=  ( N3 AND L1 );
    L9 <=  ( MODE AND C );
    L10 <=  ( N4 AND L1 );
    L11 <=  ( MODE AND D );
    L12 <=  ( L4 OR L5 );
    L13 <=  ( L6 OR L7 );
    L14 <=  ( L8 OR L9 );
    L15 <=  ( L10 OR L11 );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N2 , d=>L12 , clk=>N1 );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N3 , d=>L13 , clk=>N1 );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>N1 );
    QA <=  ( N2 ) AFTER 2 ns;
    QB <=  ( N3 ) AFTER 2 ns;
    QC <=  ( N4 ) AFTER 2 ns;
    QD <=  ( N5 ) AFTER 2 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS109\ IS PORT(
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
END \74AS109\;

ARCHITECTURE model OF \74AS109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS131\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
CLK : IN  std_logic;
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
END \74AS131\;

ARCHITECTURE model OF \74AS131\ IS
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

    BEGIN
    N1 <= NOT ( G2 ) AFTER 4 ns;
    N2 <=  ( G1 ) AFTER 5 ns;
    L1 <=  ( N1 AND N2 );
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>A , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>B , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>C , clk=>CLK );
    L6 <= NOT ( N3 );
    L7 <= NOT ( N4 );
    L8 <= NOT ( N5 );
    Y0 <= NOT ( L6 AND L7 AND L8 AND L1 ) AFTER 3 ns;
    Y1 <= NOT ( N3 AND L7 AND L8 AND L1 ) AFTER 3 ns;
    Y2 <= NOT ( L6 AND N4 AND L8 AND L1 ) AFTER 3 ns;
    Y3 <= NOT ( N3 AND N4 AND L8 AND L1 ) AFTER 3 ns;
    Y4 <= NOT ( L6 AND L7 AND N5 AND L1 ) AFTER 3 ns;
    Y5 <= NOT ( N3 AND L7 AND N5 AND L1 ) AFTER 3 ns;
    Y6 <= NOT ( L6 AND N4 AND N5 AND L1 ) AFTER 3 ns;
    Y7 <= NOT ( N3 AND N4 AND N5 AND L1 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS131A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
CLK : IN  std_logic;
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
END \74AS131A\;

ARCHITECTURE model OF \74AS131A\ IS
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

    BEGIN
    N1 <= NOT ( G2 ) AFTER 4 ns;
    N2 <=  ( G1 ) AFTER 5 ns;
    L1 <=  ( N1 AND N2 );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>A , clk=>CLK );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>B , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>C , clk=>CLK );
    L6 <= NOT ( N3 );
    L7 <= NOT ( N4 );
    L8 <= NOT ( N5 );
    Y0 <= NOT ( L6 AND L7 AND L8 AND L1 ) AFTER 3 ns;
    Y1 <= NOT ( N3 AND L7 AND L8 AND L1 ) AFTER 3 ns;
    Y2 <= NOT ( L6 AND N4 AND L8 AND L1 ) AFTER 3 ns;
    Y3 <= NOT ( N3 AND N4 AND L8 AND L1 ) AFTER 3 ns;
    Y4 <= NOT ( L6 AND L7 AND N5 AND L1 ) AFTER 3 ns;
    Y5 <= NOT ( N3 AND L7 AND N5 AND L1 ) AFTER 3 ns;
    Y6 <= NOT ( L6 AND N4 AND N5 AND L1 ) AFTER 3 ns;
    Y7 <= NOT ( N3 AND N4 AND N5 AND L1 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS136\ IS PORT(
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
END \74AS136\;

ARCHITECTURE model OF \74AS136\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 45 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 45 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 45 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS137\ IS PORT(
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
END \74AS137\;

ARCHITECTURE model OF \74AS137\ IS
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
    N1 <= NOT ( G2 ) AFTER 2 ns;
    N2 <=  ( G1 ) AFTER 4 ns;
    L1 <=  ( N1 AND N2 );
    L2 <= NOT ( GL );
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>A , enable=>L2 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>B , enable=>L2 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>C , enable=>L2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( N5 );
    Y0 <= NOT ( L3 AND L4 AND L5 AND L1 ) AFTER 5 ns;
    Y1 <= NOT ( N3 AND L4 AND L5 AND L1 ) AFTER 5 ns;
    Y2 <= NOT ( L3 AND N4 AND L5 AND L1 ) AFTER 5 ns;
    Y3 <= NOT ( N3 AND N4 AND L5 AND L1 ) AFTER 5 ns;
    Y4 <= NOT ( L3 AND L4 AND N5 AND L1 ) AFTER 5 ns;
    Y5 <= NOT ( N3 AND L4 AND N5 AND L1 ) AFTER 5 ns;
    Y6 <= NOT ( L3 AND N4 AND N5 AND L1 ) AFTER 5 ns;
    Y7 <= NOT ( N3 AND N4 AND N5 AND L1 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS138\ IS PORT(
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
END \74AS138\;

ARCHITECTURE model OF \74AS138\ IS
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
    N1 <=  ( A ) AFTER 2 ns;
    N2 <=  ( B ) AFTER 2 ns;
    N3 <=  ( C ) AFTER 2 ns;
    N4 <= NOT ( A ) AFTER 2 ns;
    N5 <= NOT ( B ) AFTER 2 ns;
    N6 <= NOT ( C ) AFTER 2 ns;
    N7 <=  ( G1 ) AFTER 2 ns;
    N8 <= NOT ( G2A OR G2B ) AFTER 1 ns;
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

ENTITY \74AS139\ IS PORT(
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
END \74AS139\;

ARCHITECTURE model OF \74AS139\ IS
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
    N1 <= NOT ( G_A ) AFTER 1 ns;
    N2 <=  ( A_A ) AFTER 1 ns;
    N3 <=  ( B_A ) AFTER 1 ns;
    N4 <= NOT ( A_A ) AFTER 1 ns;
    N5 <= NOT ( B_A ) AFTER 1 ns;
    N6 <= NOT ( G_B ) AFTER 1 ns;
    N7 <=  ( A_B ) AFTER 1 ns;
    N8 <=  ( B_B ) AFTER 1 ns;
    N9 <= NOT ( A_B ) AFTER 1 ns;
    N10 <= NOT ( B_B ) AFTER 1 ns;
    Y0_A <= NOT ( N4 AND N5 AND N1 ) AFTER 3 ns;
    Y1_A <= NOT ( N2 AND N5 AND N1 ) AFTER 3 ns;
    Y2_A <= NOT ( N4 AND N3 AND N1 ) AFTER 3 ns;
    Y3_A <= NOT ( N2 AND N3 AND N1 ) AFTER 3 ns;
    Y0_B <= NOT ( N9 AND N10 AND N6 ) AFTER 3 ns;
    Y1_B <= NOT ( N10 AND N7 AND N6 ) AFTER 3 ns;
    Y2_B <= NOT ( N9 AND N8 AND N6 ) AFTER 3 ns;
    Y3_B <= NOT ( N7 AND N8 AND N6 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS151\ IS PORT(
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
END \74AS151\;

ARCHITECTURE model OF \74AS151\ IS
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
    N1 <= NOT ( A ) AFTER 6 ns;
    N2 <= NOT ( B ) AFTER 6 ns;
    N3 <= NOT ( C ) AFTER 6 ns;
    N4 <= NOT ( G ) AFTER 3 ns;
    N5 <=  ( G ) AFTER 5 ns;
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
    Y <=  ( N4 AND L12 ) AFTER 10 ns;
    W <=  ( N5 OR L13 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS153\ IS PORT(
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
END \74AS153\;

ARCHITECTURE model OF \74AS153\ IS
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
    N1 <= NOT ( \1G\ ) AFTER 5 ns;
    N2 <= NOT ( \2G\ ) AFTER 5 ns;
    N3 <= NOT ( B ) AFTER 6 ns;
    N4 <= NOT ( A ) AFTER 6 ns;
    N5 <=  ( B ) AFTER 6 ns;
    N6 <=  ( A ) AFTER 6 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <=  ( L3 OR L4 OR L5 OR L6 ) AFTER 6 ns;
    \2Y\ <=  ( L7 OR L8 OR L9 OR L10 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS157\ IS PORT(
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
END \74AS157\;

ARCHITECTURE model OF \74AS157\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 5 ns;
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
    \1Y\ <=  ( L2 OR L3 ) AFTER 4 ns;
    \2Y\ <=  ( L4 OR L5 ) AFTER 4 ns;
    \3Y\ <=  ( L6 OR L7 ) AFTER 4 ns;
    \4Y\ <=  ( L8 OR L9 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS158\ IS PORT(
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
END \74AS158\;

ARCHITECTURE model OF \74AS158\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 5 ns;
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
    \1Y\ <= NOT ( L2 OR L3 ) AFTER 3 ns;
    \2Y\ <= NOT ( L4 OR L5 ) AFTER 3 ns;
    \3Y\ <= NOT ( L6 OR L7 ) AFTER 3 ns;
    \4Y\ <= NOT ( L8 OR L9 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS160\ IS PORT(
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
END \74AS160\;

ARCHITECTURE model OF \74AS160\ IS
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
    N2 <=  ( N3 AND N6 ) AFTER 5 ns;
    RCO <=  ( ENT AND N2 ) AFTER 7 ns;
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
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 8 ns;
    QB <=  ( N4 ) AFTER 8 ns;
    QC <=  ( N5 ) AFTER 8 ns;
    QD <=  ( N6 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS161\ IS PORT(
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
END \74AS161\;

ARCHITECTURE model OF \74AS161\ IS
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
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 4 ns;
    RCO <=  ( ENT AND N2 ) AFTER 7 ns;
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
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 8 ns;
    QB <=  ( N4 ) AFTER 8 ns;
    QC <=  ( N5 ) AFTER 8 ns;
    QD <=  ( N6 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS162\ IS PORT(
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
END \74AS162\;

ARCHITECTURE model OF \74AS162\ IS
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
    N2 <=  ( N3 AND N6 ) AFTER 5 ns;
    RCO <=  ( ENT AND N2 ) AFTER 7 ns;
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
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 8 ns;
    QB <=  ( N4 ) AFTER 8 ns;
    QC <=  ( N5 ) AFTER 8 ns;
    QD <=  ( N6 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS163\ IS PORT(
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
END \74AS163\;

ARCHITECTURE model OF \74AS163\ IS
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
    N3 <= NOT ( CLR ) AFTER 4 ns;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( LOAD OR N3 );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 5 ns;
    RCO <=  ( ENT AND N4 ) AFTER 7 ns;
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
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 8 ns;
    QB <=  ( N6 ) AFTER 8 ns;
    QC <=  ( N7 ) AFTER 8 ns;
    QD <=  ( N8 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS168\ IS PORT(
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
END \74AS168\;

ARCHITECTURE model OF \74AS168\ IS
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
    N5 <=  ( L2 ) AFTER 2 ns;
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    QA <=  ( N1 ) AFTER 9 ns;
    QB <=  ( N2 ) AFTER 9 ns;
    QC <=  ( N3 ) AFTER 9 ns;
    QD <=  ( N4 ) AFTER 9 ns;
    RCO <= NOT ( L41 OR L42 ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS169\ IS PORT(
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
END \74AS169\;

ARCHITECTURE model OF \74AS169\ IS
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
    N2 <=  ( ENT OR ENP ) AFTER 0 ns;
    N3 <= NOT ( ENT ) AFTER 0 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 4 ns;
    N5 <=  ( \U/D\\\ ) AFTER 4 ns;
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
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 4 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 7 ns;
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
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 7 ns;
    QB <= NOT ( N8 ) AFTER 7 ns;
    QC <= NOT ( N9 ) AFTER 7 ns;
    QD <= NOT ( N10 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS174\ IS PORT(
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
END \74AS174\;

ARCHITECTURE model OF \74AS174\ IS

    BEGIN
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS175\ IS PORT(
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
END \74AS175\;

ARCHITECTURE model OF \74AS175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS175A\ IS PORT(
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
END \74AS175A\;

ARCHITECTURE model OF \74AS175A\ IS

    BEGIN
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_5 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_6 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_7 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS181\ IS PORT(
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
END \74AS181\;

ARCHITECTURE model OF \74AS181\ IS
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
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

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
    N1 <=  ( L22 XOR L23 ) AFTER 2 ns;
    N2 <=  ( L24 XOR L25 ) AFTER 2 ns;
    N3 <=  ( L26 XOR L27 ) AFTER 2 ns;
    N4 <=  ( L28 XOR L29 ) AFTER 2 ns;
    N5 <=  ( CN ) AFTER 0 ns;
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
    N12 <= NOT ( L23 OR L44 OR L45 OR L46 ) AFTER 7 ns;
    G <= N12;
    \CN+4\ <= NOT ( N12 AND L30 ) AFTER 7 ns;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 8 ns;
    N16 <=  ( N1 XOR L41 ) AFTER 7 ns;
    F3 <= N16;
    N15 <=  ( N2 XOR L42 ) AFTER 7 ns;
    F2 <= N15;
    N14 <=  ( N3 XOR L43 ) AFTER 7 ns;
    F1 <= N14;
    N13 <=  ( N4 XOR L40 ) AFTER 7 ns;
    F0 <= N13;
    N9 <=  ( N16 ) AFTER 2 ns;
    N10 <=  ( N15 ) AFTER 2 ns;
    N11 <=  ( N14 ) AFTER 2 ns;
    \A=B\ <=  ( N9 AND N10 AND N11 AND N13 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS181A\ IS PORT(
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
END \74AS181A\;

ARCHITECTURE model OF \74AS181A\ IS
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
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

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
    N1 <=  ( L22 XOR L23 ) AFTER 2 ns;
    N2 <=  ( L24 XOR L25 ) AFTER 2 ns;
    N3 <=  ( L26 XOR L27 ) AFTER 2 ns;
    N4 <=  ( L28 XOR L29 ) AFTER 2 ns;
    N5 <=  ( CN ) AFTER 0 ns;
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
    N12 <= NOT ( L23 OR L44 OR L45 OR L46 ) AFTER 7 ns;
    G <= N12;
    \CN+4\ <= NOT ( N12 AND L30 ) AFTER 7 ns;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 8 ns;
    N16 <=  ( N1 XOR L41 ) AFTER 7 ns;
    F3 <= N16;
    N15 <=  ( N2 XOR L42 ) AFTER 7 ns;
    F2 <= N15;
    N14 <=  ( N3 XOR L43 ) AFTER 7 ns;
    F1 <= N14;
    N13 <=  ( N4 XOR L40 ) AFTER 7 ns;
    F0 <= N13;
    N9 <=  ( N16 ) AFTER 2 ns;
    N10 <=  ( N15 ) AFTER 2 ns;
    N11 <=  ( N14 ) AFTER 2 ns;
    \A=B\ <=  ( N9 AND N10 AND N11 AND N13 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS182\ IS PORT(
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
END \74AS182\;

ARCHITECTURE model OF \74AS182\ IS
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
    N1 <= NOT ( CN ) AFTER 3 ns;
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
    P <=  ( P3 OR P2 OR P1 OR P0 ) AFTER 5 ns;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 9 ns;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 8 ns;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 8 ns;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS194\ IS PORT(
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
END \74AS194\;

ARCHITECTURE model OF \74AS194\ IS
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
    N1 <=  ( S1 AND S0 ) AFTER 5 ns;
    N2 <=  ( S1 AND L2 ) AFTER 5 ns;
    N3 <=  ( L1 AND S0 ) AFTER 5 ns;
    N4 <=  ( L1 AND L2 ) AFTER 5 ns;
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
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N8 , d=>L23 , clk=>CLK , cl=>CLR );
    QA <=  ( N5 ) AFTER 3 ns;
    QB <=  ( N6 ) AFTER 3 ns;
    QC <=  ( N7 ) AFTER 3 ns;
    QD <=  ( N8 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS195\ IS PORT(
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
END \74AS195\;

ARCHITECTURE model OF \74AS195\ IS
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
    N1 <= NOT ( \S/L\\\ ) AFTER 5 ns;
    N2 <=  ( \S/L\\\ ) AFTER 5 ns;
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
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>L14 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 6 ns;
    QB <=  ( N4 ) AFTER 6 ns;
    QC <=  ( N5 ) AFTER 6 ns;
    QD <=  ( N6 ) AFTER 6 ns;
    \Q\\D\\\ <= NOT ( N6 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS240\ IS PORT(
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
END \74AS240\;

ARCHITECTURE model OF \74AS240\ IS
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
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS241\ IS PORT(
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
END \74AS241\;

ARCHITECTURE model OF \74AS241\ IS
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
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>10 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>10 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>10 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>10 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS242\ IS PORT(
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
END \74AS242\;

ARCHITECTURE model OF \74AS242\ IS
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
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>6 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS243\ IS PORT(
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
END \74AS243\;

ARCHITECTURE model OF \74AS243\ IS
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
    N1 <=  ( A1 ) AFTER 8 ns;
    N2 <=  ( A2 ) AFTER 8 ns;
    N3 <=  ( A3 ) AFTER 8 ns;
    N4 <=  ( A4 ) AFTER 8 ns;
    N5 <=  ( B4 ) AFTER 8 ns;
    N6 <=  ( B3 ) AFTER 8 ns;
    N7 <=  ( B2 ) AFTER 8 ns;
    N8 <=  ( B1 ) AFTER 8 ns;
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS244\ IS PORT(
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
END \74AS244\;

ARCHITECTURE model OF \74AS244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 6 ns;
    N2 <=  ( \1A2\ ) AFTER 6 ns;
    N3 <=  ( \1A3\ ) AFTER 6 ns;
    N4 <=  ( \1A4\ ) AFTER 6 ns;
    N5 <=  ( \2A1\ ) AFTER 6 ns;
    N6 <=  ( \2A2\ ) AFTER 6 ns;
    N7 <=  ( \2A3\ ) AFTER 6 ns;
    N8 <=  ( \2A4\ ) AFTER 6 ns;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>9 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS245\ IS PORT(
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
END \74AS245\;

ARCHITECTURE model OF \74AS245\ IS
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
    N1 <=  ( A1 ) AFTER 6 ns;
    N2 <=  ( A2 ) AFTER 6 ns;
    N3 <=  ( A3 ) AFTER 6 ns;
    N4 <=  ( A4 ) AFTER 6 ns;
    N5 <=  ( A5 ) AFTER 6 ns;
    N6 <=  ( A6 ) AFTER 6 ns;
    N7 <=  ( A7 ) AFTER 6 ns;
    N8 <=  ( A8 ) AFTER 6 ns;
    N9 <=  ( B8 ) AFTER 6 ns;
    N10 <=  ( B7 ) AFTER 6 ns;
    N11 <=  ( B6 ) AFTER 6 ns;
    N12 <=  ( B5 ) AFTER 6 ns;
    N13 <=  ( B4 ) AFTER 6 ns;
    N14 <=  ( B3 ) AFTER 6 ns;
    N15 <=  ( B2 ) AFTER 6 ns;
    N16 <=  ( B1 ) AFTER 6 ns;
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>9 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS250\ IS PORT(
E0 : IN  std_logic;
E1 : IN  std_logic;
E2 : IN  std_logic;
E3 : IN  std_logic;
E4 : IN  std_logic;
E5 : IN  std_logic;
E6 : IN  std_logic;
E7 : IN  std_logic;
E8 : IN  std_logic;
E9 : IN  std_logic;
E10 : IN  std_logic;
E11 : IN  std_logic;
E12 : IN  std_logic;
E13 : IN  std_logic;
E14 : IN  std_logic;
E15 : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
G : IN  std_logic;
W : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS250\;

ARCHITECTURE model OF \74AS250\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 5 ns;
    N2 <= NOT ( B ) AFTER 5 ns;
    N3 <= NOT ( C ) AFTER 5 ns;
    N4 <= NOT ( D ) AFTER 5 ns;
    N5 <=  ( A ) AFTER 5 ns;
    N6 <=  ( B ) AFTER 5 ns;
    N7 <=  ( C ) AFTER 5 ns;
    N8 <=  ( D ) AFTER 5 ns;
    L1 <=  ( E0 AND N1 AND N2 AND N3 AND N4 );
    L2 <=  ( E1 AND N5 AND N2 AND N3 AND N4 );
    L3 <=  ( E2 AND N1 AND N6 AND N3 AND N4 );
    L4 <=  ( E3 AND N5 AND N6 AND N3 AND N4 );
    L5 <=  ( E4 AND N1 AND N2 AND N7 AND N4 );
    L6 <=  ( E5 AND N5 AND N2 AND N7 AND N4 );
    L7 <=  ( E6 AND N1 AND N6 AND N7 AND N4 );
    L8 <=  ( E7 AND N5 AND N6 AND N7 AND N4 );
    L9 <=  ( E8 AND N1 AND N2 AND N3 AND N8 );
    L10 <=  ( E9 AND N5 AND N2 AND N3 AND N8 );
    L11 <=  ( E10 AND N1 AND N6 AND N3 AND N8 );
    L12 <=  ( E11 AND N5 AND N6 AND N3 AND N8 );
    L13 <=  ( E12 AND N1 AND N2 AND N7 AND N8 );
    L14 <=  ( E13 AND N5 AND N2 AND N7 AND N8 );
    L15 <=  ( E14 AND N1 AND N6 AND N7 AND N8 );
    L16 <=  ( E15 AND N5 AND N6 AND N7 AND N8 );
    L17 <= NOT ( G );
    N9 <= NOT ( L1 OR L2 OR L3 OR L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16 ) AFTER 6 ns;
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>W , i1=>N9 , en=>L17 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS251\ IS PORT(
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
END \74AS251\;

ARCHITECTURE model OF \74AS251\ IS
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
    N1 <= NOT ( A ) AFTER 2 ns;
    N2 <= NOT ( B ) AFTER 2 ns;
    N3 <= NOT ( C ) AFTER 2 ns;
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
    N4 <= NOT ( L13 ) AFTER 3 ns;
    N5 <=  ( L13 ) AFTER 2 ns;
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6 ns, tfall_i1_o=>5 ns, tpd_en_o=>4 ns)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>6 ns, tfall_i1_o=>5 ns, tpd_en_o=>4 ns)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS253\ IS PORT(
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
END \74AS253\;

ARCHITECTURE model OF \74AS253\ IS
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 7 ns;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 7 ns;
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>13 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>13 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS257\ IS PORT(
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
END \74AS257\;

ARCHITECTURE model OF \74AS257\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 5 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 5 ns;
    N3 <=  ( L5 OR L6 ) AFTER 5 ns;
    N4 <=  ( L7 OR L8 ) AFTER 5 ns;
    N5 <=  ( L9 OR L10 ) AFTER 5 ns;
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS258\ IS PORT(
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
END \74AS258\;

ARCHITECTURE model OF \74AS258\ IS
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
    N2 <= NOT ( L3 OR L4 ) AFTER 4 ns;
    N3 <= NOT ( L5 OR L6 ) AFTER 4 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 4 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 4 ns;
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS280\ IS PORT(
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
END \74AS280\;

ARCHITECTURE model OF \74AS280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 10 ns;
    ODD <=  ( L1 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS282\ IS PORT(
CNA : IN  std_logic;
CNB : IN  std_logic;
P0 : IN  std_logic;
G0 : IN  std_logic;
P1 : IN  std_logic;
G1 : IN  std_logic;
P2 : IN  std_logic;
G2 : IN  std_logic;
P3 : IN  std_logic;
G3 : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
\C\\N\\\ : OUT  std_logic;
\CN+X\ : OUT  std_logic;
\CN+Y\ : OUT  std_logic;
\CN+Z\ : OUT  std_logic;
P : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS282\;

ARCHITECTURE model OF \74AS282\ IS
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

    BEGIN
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( CNA );
    L4 <= NOT ( CNB );
    L5 <=  ( G3 AND G2 AND G1 AND G0 );
    L6 <=  ( P1 AND G3 AND G2 AND G1 );
    L7 <=  ( P2 AND G3 AND G2 );
    L8 <=  ( P3 AND G3 );
    L9 <=  ( G2 AND G1 AND G0 AND N1 );
    L10 <=  ( P0 AND G2 AND G1 AND G0 );
    L11 <=  ( P1 AND G2 AND G1 );
    L12 <=  ( P2 AND G2 );
    L13 <=  ( G1 AND G0 AND N1 );
    L14 <=  ( P0 AND G1 AND G0 );
    L15 <=  ( P1 AND G1 );
    L16 <=  ( G0 AND N1 );
    L17 <=  ( P0 AND G0 );
    L18 <=  ( L2 AND L1 AND CNA );
    L19 <=  ( S0 AND L2 AND L3 );
    L20 <=  ( L1 AND S1 AND CNB );
    L21 <=  ( S0 AND S1 AND L4 );
    N1 <= NOT ( L18 OR L19 OR L20 OR L21 ) AFTER 1 ns;
    P <=  ( P3 OR P2 OR P1 OR P0 ) AFTER 3 ns;
    G <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 3 ns;
    \CN+Z\ <= NOT ( L9 OR L10 OR L11 OR L12 ) AFTER 3 ns;
    \CN+Y\ <= NOT ( L13 OR L14 OR L15 ) AFTER 3 ns;
    \CN+X\ <= NOT ( L16 OR L17 ) AFTER 3 ns;
    \C\\N\\\ <= NOT ( N1 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS286\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
I : IN  std_logic;
XMIT : IN  std_logic;
\PAR I/O\ : INOUT  std_logic;
\PAR ERR\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS286\;

ARCHITECTURE model OF \74AS286\ IS
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
    L1 <= NOT ( A XOR B );
    L2 <= NOT ( C );
    L3 <= NOT ( L1 XOR L2 );
    L4 <= NOT ( D XOR E );
    L5 <= NOT ( F );
    L6 <= NOT ( L4 XOR L5 );
    L7 <= NOT ( G XOR H );
    L8 <= NOT ( I );
    L9 <=  ( L7 XOR L8 );
    L10 <= NOT ( L3 XOR L6 );
    N1 <= NOT ( L9 XOR L10 ) AFTER 8 ns;
    N2 <= NOT ( N1 ) AFTER 4 ns;
    L11 <= NOT ( XMIT );
    L12 <= NOT ( N1 XOR \PAR I/O\ );
    \PAR ERR\ <= NOT ( L12 AND XMIT ) AFTER 7 ns;
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>13 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>\PAR I/O\ , i1=>N2 , en=>L11 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS298\ IS PORT(
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
END \74AS298\;

ARCHITECTURE model OF \74AS298\ IS
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

    BEGIN
    N1 <= NOT ( CLK ) AFTER 0 ns;
    N2 <= NOT ( WS ) AFTER 8 ns;
    L1 <= NOT ( N2 );
    L2 <=  ( A1 AND N2 );
    L3 <=  ( A2 AND L1 );
    L4 <=  ( B1 AND N2 );
    L5 <=  ( B2 AND L1 );
    L6 <=  ( C1 AND N2 );
    L7 <=  ( C2 AND L1 );
    L8 <=  ( D1 AND N2 );
    L9 <=  ( D2 AND L1 );
    L10 <=  ( L2 OR L3 );
    L11 <=  ( L4 OR L5 );
    L12 <=  ( L6 OR L7 );
    L13 <=  ( L8 OR L9 );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>QA , d=>L10 , clk=>N1 );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>QB , d=>L11 , clk=>N1 );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>QC , d=>L12 , clk=>N1 );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>QD , d=>L13 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS352\ IS PORT(
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
END \74AS352\;

ARCHITECTURE model OF \74AS352\ IS
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
    N1 <= NOT ( \1G\ ) AFTER 6 ns;
    N2 <= NOT ( \2G\ ) AFTER 6 ns;
    N3 <= NOT ( B ) AFTER 7 ns;
    N4 <= NOT ( A ) AFTER 7 ns;
    N5 <=  ( B ) AFTER 7 ns;
    N6 <=  ( A ) AFTER 7 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 5 ns;
    \2Y\ <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS353\ IS PORT(
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
END \74AS353\;

ARCHITECTURE model OF \74AS353\ IS
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
    N1 <= NOT ( B ) AFTER 6 ns;
    N2 <= NOT ( A ) AFTER 6 ns;
    N3 <=  ( B ) AFTER 6 ns;
    N4 <=  ( A ) AFTER 6 ns;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    L3 <=  ( L1 AND N1 AND N2 AND \1C0\ );
    L4 <=  ( L1 AND N1 AND N4 AND \1C1\ );
    L5 <=  ( L1 AND N3 AND N2 AND \1C2\ );
    L6 <=  ( L1 AND N3 AND N4 AND \1C3\ );
    L7 <=  ( \2C0\ AND N1 AND N2 AND L2 );
    L8 <=  ( \2C1\ AND N1 AND N4 AND L2 );
    L9 <=  ( \2C2\ AND N3 AND N2 AND L2 );
    L10 <=  ( \2C3\ AND N3 AND N4 AND L2 );
    N5 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 6 ns;
    N6 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 6 ns;
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>\1Y\ , i1=>N5 , en=>L1 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>\2Y\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS353A\ IS PORT(
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
END \74AS353A\;

ARCHITECTURE model OF \74AS353A\ IS
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
    N1 <= NOT ( B ) AFTER 6 ns;
    N2 <= NOT ( A ) AFTER 6 ns;
    N3 <=  ( B ) AFTER 6 ns;
    N4 <=  ( A ) AFTER 6 ns;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    L3 <=  ( L1 AND N1 AND N2 AND \1C0\ );
    L4 <=  ( L1 AND N1 AND N4 AND \1C1\ );
    L5 <=  ( L1 AND N3 AND N2 AND \1C2\ );
    L6 <=  ( L1 AND N3 AND N4 AND \1C3\ );
    L7 <=  ( \2C0\ AND N1 AND N2 AND L2 );
    L8 <=  ( \2C1\ AND N1 AND N4 AND L2 );
    L9 <=  ( \2C2\ AND N3 AND N2 AND L2 );
    L10 <=  ( \2C3\ AND N3 AND N4 AND L2 );
    N5 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 6 ns;
    N6 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 6 ns;
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>\1Y\ , i1=>N5 , en=>L1 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>\2Y\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS373\ IS PORT(
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
END \74AS373\;

ARCHITECTURE model OF \74AS373\ IS
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
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS374\ IS PORT(
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
END \74AS374\;

ARCHITECTURE model OF \74AS374\ IS
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
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS533\ IS PORT(
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
END \74AS533\;

ARCHITECTURE model OF \74AS533\ IS
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
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS534\ IS PORT(
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
END \74AS534\;

ARCHITECTURE model OF \74AS534\ IS
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
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS573\ IS PORT(
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
END \74AS573\;

ARCHITECTURE model OF \74AS573\ IS
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
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS574\ IS PORT(
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
END \74AS574\;

ARCHITECTURE model OF \74AS574\ IS
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
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS575\ IS PORT(
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
END \74AS575\;

ARCHITECTURE model OF \74AS575\ IS
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

    BEGIN
    L1 <= NOT ( OC );
    L2 <=  ( CLR AND D1 );
    L3 <=  ( CLR AND D2 );
    L4 <=  ( CLR AND D3 );
    L5 <=  ( CLR AND D4 );
    L6 <=  ( CLR AND D5 );
    L7 <=  ( CLR AND D6 );
    L8 <=  ( CLR AND D7 );
    L9 <=  ( CLR AND D8 );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS576\ IS PORT(
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
END \74AS576\;

ARCHITECTURE model OF \74AS576\ IS
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
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS577\ IS PORT(
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
END \74AS577\;

ARCHITECTURE model OF \74AS577\ IS
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

    BEGIN
    L1 <= NOT ( OC );
    L2 <= NOT ( CLR AND D1 );
    L3 <= NOT ( CLR AND D2 );
    L4 <= NOT ( CLR AND D3 );
    L5 <= NOT ( CLR AND D4 );
    L6 <= NOT ( CLR AND D5 );
    L7 <= NOT ( CLR AND D6 );
    L8 <= NOT ( CLR AND D7 );
    L9 <= NOT ( CLR AND D8 );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>6 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS580\ IS PORT(
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
END \74AS580\;

ARCHITECTURE model OF \74AS580\ IS
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
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS620\ IS PORT(
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
END \74AS620\;

ARCHITECTURE model OF \74AS620\ IS
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
    N1 <= NOT ( A1 ) AFTER 6 ns;
    N2 <= NOT ( A2 ) AFTER 6 ns;
    N3 <= NOT ( A3 ) AFTER 6 ns;
    N4 <= NOT ( A4 ) AFTER 6 ns;
    N5 <= NOT ( A5 ) AFTER 6 ns;
    N6 <= NOT ( A6 ) AFTER 6 ns;
    N7 <= NOT ( A7 ) AFTER 6 ns;
    N8 <= NOT ( A8 ) AFTER 6 ns;
    N9 <= NOT ( B8 ) AFTER 6 ns;
    N10 <= NOT ( B7 ) AFTER 6 ns;
    N11 <= NOT ( B6 ) AFTER 6 ns;
    N12 <= NOT ( B5 ) AFTER 6 ns;
    N13 <= NOT ( B4 ) AFTER 6 ns;
    N14 <= NOT ( B3 ) AFTER 6 ns;
    N15 <= NOT ( B2 ) AFTER 6 ns;
    N16 <= NOT ( B1 ) AFTER 6 ns;
    L1 <= NOT ( GBA );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>9 ns, tfall_i1_o=>8 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS621\ IS PORT(
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
END \74AS621\;

ARCHITECTURE model OF \74AS621\ IS
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
    TSB_A325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_A326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_A327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_A328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_A329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_A330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_A331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_A332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_A333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_A334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_A335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_A336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_A337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_A338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_A339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_A340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS622\ IS PORT(
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
END \74AS622\;

ARCHITECTURE model OF \74AS622\ IS
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
    N1 <=  ( A1 ) AFTER 5 ns;
    N2 <=  ( A2 ) AFTER 5 ns;
    N3 <=  ( A3 ) AFTER 5 ns;
    N4 <=  ( A4 ) AFTER 5 ns;
    N5 <=  ( A5 ) AFTER 5 ns;
    N6 <=  ( A6 ) AFTER 5 ns;
    N7 <=  ( A7 ) AFTER 5 ns;
    N8 <=  ( A8 ) AFTER 5 ns;
    N9 <=  ( B8 ) AFTER 5 ns;
    N10 <=  ( B7 ) AFTER 5 ns;
    N11 <=  ( B6 ) AFTER 5 ns;
    N12 <=  ( B5 ) AFTER 5 ns;
    N13 <=  ( B4 ) AFTER 5 ns;
    N14 <=  ( B3 ) AFTER 5 ns;
    N15 <=  ( B2 ) AFTER 5 ns;
    N16 <=  ( B1 ) AFTER 5 ns;
    TSB_A600 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_A601 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_A602 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_A603 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_A604 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_A605 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_A606 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_A607 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_A608 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_A609 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_A610 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_A611 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_A612 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_A613 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_A614 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_A615 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS623\ IS PORT(
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
END \74AS623\;

ARCHITECTURE model OF \74AS623\ IS
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
    N1 <=  ( A1 ) AFTER 8 ns;
    N2 <=  ( A2 ) AFTER 8 ns;
    N3 <=  ( A3 ) AFTER 8 ns;
    N4 <=  ( A4 ) AFTER 8 ns;
    N5 <=  ( A5 ) AFTER 8 ns;
    N6 <=  ( A6 ) AFTER 8 ns;
    N7 <=  ( A7 ) AFTER 8 ns;
    N8 <=  ( A8 ) AFTER 8 ns;
    N9 <=  ( B8 ) AFTER 8 ns;
    N10 <=  ( B7 ) AFTER 8 ns;
    N11 <=  ( B6 ) AFTER 8 ns;
    N12 <=  ( B5 ) AFTER 8 ns;
    N13 <=  ( B4 ) AFTER 8 ns;
    N14 <=  ( B3 ) AFTER 8 ns;
    N15 <=  ( B2 ) AFTER 8 ns;
    N16 <=  ( B1 ) AFTER 8 ns;
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS638\ IS PORT(
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
END \74AS638\;

ARCHITECTURE model OF \74AS638\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( DIR );
    L3 <=  ( L1 AND DIR );
    L4 <=  ( L1 AND L2 );
    N2 <=  ( A1 ) AFTER 10 ns;
    N3 <=  ( A2 ) AFTER 10 ns;
    N4 <=  ( A3 ) AFTER 10 ns;
    N5 <=  ( A4 ) AFTER 10 ns;
    N6 <=  ( A5 ) AFTER 10 ns;
    N7 <=  ( A6 ) AFTER 10 ns;
    N8 <=  ( A7 ) AFTER 10 ns;
    N9 <=  ( A8 ) AFTER 10 ns;
	N10 <= ( B1 ) AFTER 10 ns;
	N11 <= ( B2 ) AFTER 10 ns;
	N12 <= ( B3 ) AFTER 10 ns;
	N13 <= ( B4 ) AFTER 10 ns;
	N14 <= ( B5 ) AFTER 10 ns;
	N15 <= ( B6 ) AFTER 10 ns;
	N16 <= ( B7 ) AFTER 10 ns;
	N17 <= ( B8 ) AFTER 10 ns;

    TSB_A632 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_A633 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_A634 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_A635 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_A636 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_A637 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_A638 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_A639 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_A640 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_A641 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_A642 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_A643 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_A644 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_A645 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_A646 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_A647 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS639\ IS PORT(
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
END \74AS639\;

ARCHITECTURE model OF \74AS639\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
	SIGNAL L3 : std_logic;
	SIGNAL L4 : std_logic;
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
	L2 <= NOT ( DIR );
    L3 <= ( L1 AND DIR );
    L4 <= ( L1 AND L2 ) AFTER 25 ns;
    N2 <=  ( A1 ) AFTER 10 ns;
    N3 <=  ( A2 ) AFTER 10 ns;
    N4 <=  ( A3 ) AFTER 10 ns;
    N5 <=  ( A4 ) AFTER 10 ns;
    N6 <=  ( A5 ) AFTER 10 ns;
    N7 <=  ( A6 ) AFTER 10 ns;
    N8 <=  ( A7 ) AFTER 10 ns;
    N9 <=  ( A8 ) AFTER 10 ns;
	N10 <= ( B1 ) AFTER 10 ns;
	N11 <= ( B2 ) AFTER 10 ns;
	N12 <= ( B3 ) AFTER 10 ns;
	N13 <= ( B4 ) AFTER 10 ns;
	N14 <= ( B5 ) AFTER 10 ns;
	N15 <= ( B6 ) AFTER 10 ns;
	N16 <= ( B7 ) AFTER 10 ns;
	N17 <= ( B8 ) AFTER 10 ns;


    TSB_A648 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_A649 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_A650 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_A651 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_A652 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_A653 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_A654 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_A656 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_A657 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_A658 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_A659 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_A660 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_A661 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_A662 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_A663 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_A664 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS640\ IS PORT(
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
END \74AS640\;

ARCHITECTURE model OF \74AS640\ IS
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
    N1 <= NOT ( A1 ) AFTER 6 ns;
    N2 <= NOT ( A2 ) AFTER 6 ns;
    N3 <= NOT ( A3 ) AFTER 6 ns;
    N4 <= NOT ( A4 ) AFTER 6 ns;
    N5 <= NOT ( A5 ) AFTER 6 ns;
    N6 <= NOT ( A6 ) AFTER 6 ns;
    N7 <= NOT ( A7 ) AFTER 6 ns;
    N8 <= NOT ( A8 ) AFTER 6 ns;
    N9 <= NOT ( B8 ) AFTER 6 ns;
    N10 <= NOT ( B7 ) AFTER 6 ns;
    N11 <= NOT ( B6 ) AFTER 6 ns;
    N12 <= NOT ( B5 ) AFTER 6 ns;
    N13 <= NOT ( B4 ) AFTER 6 ns;
    N14 <= NOT ( B3 ) AFTER 6 ns;
    N15 <= NOT ( B2 ) AFTER 6 ns;
    N16 <= NOT ( B1 ) AFTER 6 ns;
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS641\ IS PORT(
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
END \74AS641\;

ARCHITECTURE model OF \74AS641\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
	SIGNAL L3 : std_logic;
	SIGNAL L4 : std_logic;
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
	L2 <= NOT ( DIR );
    L3 <= ( L1 AND DIR );
    L4 <= ( L1 AND L2 ) AFTER 25 ns;
    N2 <=  ( A1 ) AFTER 10 ns;
    N3 <=  ( A2 ) AFTER 10 ns;
    N4 <=  ( A3 ) AFTER 10 ns;
    N5 <=  ( A4 ) AFTER 10 ns;
    N6 <=  ( A5 ) AFTER 10 ns;
    N7 <=  ( A6 ) AFTER 10 ns;
    N8 <=  ( A7 ) AFTER 10 ns;
    N9 <=  ( A8 ) AFTER 10 ns;
	N10 <= ( B1 ) AFTER 10 ns;
	N11 <= ( B2 ) AFTER 10 ns;
	N12 <= ( B3 ) AFTER 10 ns;
	N13 <= ( B4 ) AFTER 10 ns;
	N14 <= ( B5 ) AFTER 10 ns;
	N15 <= ( B6 ) AFTER 10 ns;
	N16 <= ( B7 ) AFTER 10 ns;
	N17 <= ( B8 ) AFTER 10 ns;


    TSB_A665 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_A666 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_A667 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_A668 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_A669 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_A670 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_A671 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_A672 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_A673 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_A674 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_A675 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_A676 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_A677 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_A678 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_A679 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_A680 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS642\ IS PORT(
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
END \74AS642\;

ARCHITECTURE model OF \74AS642\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( DIR );
    L3 <=  ( L1 AND DIR );
    L4 <=  ( L1 AND L2 );
    N2 <=  ( A1 ) AFTER 10 ns;
    N3 <=  ( A2 ) AFTER 10 ns;
    N4 <=  ( A3 ) AFTER 10 ns;
    N5 <=  ( A4 ) AFTER 10 ns;
    N6 <=  ( A5 ) AFTER 10 ns;
    N7 <=  ( A6 ) AFTER 10 ns;
    N8 <=  ( A7 ) AFTER 10 ns;
    N9 <=  ( A8 ) AFTER 10 ns;
	N10 <= ( B1 ) AFTER 10 ns;
	N11 <= ( B2 ) AFTER 10 ns;
	N12 <= ( B3 ) AFTER 10 ns;
	N13 <= ( B4 ) AFTER 10 ns;
	N14 <= ( B5 ) AFTER 10 ns;
	N15 <= ( B6 ) AFTER 10 ns;
	N16 <= ( B7 ) AFTER 10 ns;
	N17 <= ( B8 ) AFTER 10 ns;

    TSB_A681 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_A682 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_A683 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_A684 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_A685 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_A686 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_A687 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_A688 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_A689 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_A690 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_A691 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_A692 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_A693 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_A694 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_A695 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_A696 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS643\ IS PORT(
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
END \74AS643\;

ARCHITECTURE model OF \74AS643\ IS
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
    N1 <= NOT ( A1 ) AFTER 7 ns;
    N2 <= NOT ( A2 ) AFTER 7 ns;
    N3 <= NOT ( A3 ) AFTER 7 ns;
    N4 <= NOT ( A4 ) AFTER 7 ns;
    N5 <= NOT ( A5 ) AFTER 7 ns;
    N6 <= NOT ( A6 ) AFTER 7 ns;
    N7 <= NOT ( A7 ) AFTER 7 ns;
    N8 <= NOT ( A8 ) AFTER 7 ns;
    N9 <=  ( B8 ) AFTER 9 ns;
    N10 <=  ( B7 ) AFTER 9 ns;
    N11 <=  ( B6 ) AFTER 9 ns;
    N12 <=  ( B5 ) AFTER 9 ns;
    N13 <=  ( B4 ) AFTER 9 ns;
    N14 <=  ( B3 ) AFTER 9 ns;
    N15 <=  ( B2 ) AFTER 9 ns;
    N16 <=  ( B1 ) AFTER 9 ns;
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS644\ IS PORT(
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
END \74AS644\;

ARCHITECTURE model OF \74AS644\ IS
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
    TSB_A697 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_A698 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_A699 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_A700 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_A701 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_A702 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_A703 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_A704 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_A705 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_A706 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_A707 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_A708 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_A709 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_A710 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_A711 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_A712 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS645\ IS PORT(
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
END \74AS645\;

ARCHITECTURE model OF \74AS645\ IS
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
    N1 <=  ( A1 ) AFTER 9 ns;
    N2 <=  ( A2 ) AFTER 9 ns;
    N3 <=  ( A3 ) AFTER 9 ns;
    N4 <=  ( A4 ) AFTER 9 ns;
    N5 <=  ( A5 ) AFTER 9 ns;
    N6 <=  ( A6 ) AFTER 9 ns;
    N7 <=  ( A7 ) AFTER 9 ns;
    N8 <=  ( A8 ) AFTER 9 ns;
    N9 <=  ( B8 ) AFTER 9 ns;
    N10 <=  ( B7 ) AFTER 9 ns;
    N11 <=  ( B6 ) AFTER 9 ns;
    N12 <=  ( B5 ) AFTER 9 ns;
    N13 <=  ( B4 ) AFTER 9 ns;
    N14 <=  ( B3 ) AFTER 9 ns;
    N15 <=  ( B2 ) AFTER 9 ns;
    N16 <=  ( B1 ) AFTER 9 ns;
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS646\ IS PORT(
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
END \74AS646\;

ARCHITECTURE model OF \74AS646\ IS
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
    N1 <= NOT ( SBA ) AFTER 3 ns;
    N2 <= NOT ( SAB ) AFTER 3 ns;
    N3 <=  ( SBA ) AFTER 3 ns;
    N4 <=  ( SAB ) AFTER 3 ns;
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
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L1 OR L2 ) AFTER 6 ns;
    N22 <=  ( L3 OR L4 ) AFTER 6 ns;
    N23 <=  ( L5 OR L6 ) AFTER 6 ns;
    N24 <=  ( L7 OR L8 ) AFTER 6 ns;
    N25 <=  ( L9 OR L10 ) AFTER 6 ns;
    N26 <=  ( L11 OR L12 ) AFTER 6 ns;
    N27 <=  ( L13 OR L14 ) AFTER 6 ns;
    N28 <=  ( L15 OR L16 ) AFTER 6 ns;
    N29 <=  ( L17 OR L18 ) AFTER 6 ns;
    N30 <=  ( L19 OR L20 ) AFTER 6 ns;
    N31 <=  ( L21 OR L22 ) AFTER 6 ns;
    N32 <=  ( L23 OR L24 ) AFTER 6 ns;
    N33 <=  ( L25 OR L26 ) AFTER 6 ns;
    N34 <=  ( L27 OR L28 ) AFTER 6 ns;
    N35 <=  ( L29 OR L30 ) AFTER 6 ns;
    N36 <=  ( L31 OR L32 ) AFTER 6 ns;
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS648\ IS PORT(
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
END \74AS648\;

ARCHITECTURE model OF \74AS648\ IS
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
    N1 <= NOT ( SBA ) AFTER 3 ns;
    N2 <= NOT ( SAB ) AFTER 3 ns;
    N3 <=  ( SBA ) AFTER 3 ns;
    N4 <=  ( SAB ) AFTER 3 ns;
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
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_95 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_104 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_105 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_106 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_107 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_108 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_109 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 6 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 6 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 6 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 6 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 6 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 6 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 6 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 6 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 6 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 6 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 6 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 6 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 6 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 6 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 6 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 6 ns;
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS651\ IS PORT(
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
END \74AS651\;

ARCHITECTURE model OF \74AS651\ IS
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
    N1 <= NOT ( SBA ) AFTER 3 ns;
    N2 <= NOT ( SAB ) AFTER 3 ns;
    N3 <=  ( SBA ) AFTER 3 ns;
    N4 <=  ( SAB ) AFTER 3 ns;
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
    DQFF_110 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_111 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_112 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_113 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_114 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_115 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_116 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_117 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_118 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_119 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_120 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_121 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_122 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_123 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_124 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_125 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 6 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 6 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 6 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 6 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 6 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 6 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 6 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 6 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 6 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 6 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 6 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 6 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 6 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 6 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 6 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 6 ns;
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS652\ IS PORT(
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
END \74AS652\;

ARCHITECTURE model OF \74AS652\ IS
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
    N1 <= NOT ( SBA ) AFTER 2 ns;
    N2 <= NOT ( SAB ) AFTER 2 ns;
    N3 <=  ( SBA ) AFTER 2 ns;
    N4 <=  ( SAB ) AFTER 2 ns;
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
    DQFF_126 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_127 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_128 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_129 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_130 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_131 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_132 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_133 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_134 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_135 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_136 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_137 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_138 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_139 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_140 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_141 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>0 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L1 OR L2 ) AFTER 7 ns;
    N22 <=  ( L3 OR L4 ) AFTER 7 ns;
    N23 <=  ( L5 OR L6 ) AFTER 7 ns;
    N24 <=  ( L7 OR L8 ) AFTER 7 ns;
    N25 <=  ( L9 OR L10 ) AFTER 7 ns;
    N26 <=  ( L11 OR L12 ) AFTER 7 ns;
    N27 <=  ( L13 OR L14 ) AFTER 7 ns;
    N28 <=  ( L15 OR L16 ) AFTER 7 ns;
    N29 <=  ( L17 OR L18 ) AFTER 7 ns;
    N30 <=  ( L19 OR L20 ) AFTER 7 ns;
    N31 <=  ( L21 OR L22 ) AFTER 7 ns;
    N32 <=  ( L23 OR L24 ) AFTER 7 ns;
    N33 <=  ( L25 OR L26 ) AFTER 7 ns;
    N34 <=  ( L27 OR L28 ) AFTER 7 ns;
    N35 <=  ( L29 OR L30 ) AFTER 7 ns;
    N36 <=  ( L31 OR L32 ) AFTER 7 ns;
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS756\ IS PORT(
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
END \74AS756\;

ARCHITECTURE model OF \74AS756\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G_A ) AFTER 2 ns;
    N2 <= NOT ( G_B ) AFTER 2 ns;
    Y1_A <= NOT ( A1_A AND N1 ) AFTER 19 ns;
    Y2_A <= NOT ( A2_A AND N1 ) AFTER 19 ns;
    Y3_A <= NOT ( A3_A AND N1 ) AFTER 19 ns;
    Y4_A <= NOT ( A4_A AND N1 ) AFTER 19 ns;
    Y1_B <= NOT ( A1_B AND N2 ) AFTER 19 ns;
    Y2_B <= NOT ( A2_B AND N2 ) AFTER 19 ns;
    Y3_B <= NOT ( A3_B AND N2 ) AFTER 19 ns;
    Y4_B <= NOT ( A4_B AND N2 ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS757\ IS PORT(
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
END \74AS757\;

ARCHITECTURE model OF \74AS757\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( \1G\ ) AFTER 1 ns;
    N2 <= NOT ( \2G\ ) AFTER 2 ns;
    \1Y1\ <=  ( \1A1\ OR N1 ) AFTER 17 ns;
    \1Y2\ <=  ( \1A2\ OR N1 ) AFTER 17 ns;
    \1Y3\ <=  ( \1A3\ OR N1 ) AFTER 17 ns;
    \1Y4\ <=  ( \1A4\ OR N1 ) AFTER 17 ns;
    \2Y1\ <=  ( \2A1\ OR N2 ) AFTER 17 ns;
    \2Y2\ <=  ( \2A2\ OR N2 ) AFTER 17 ns;
    \2Y3\ <=  ( \2A3\ OR N2 ) AFTER 17 ns;
    \2Y4\ <=  ( \2A4\ OR N2 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS758\ IS PORT(
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
END \74AS758\;

ARCHITECTURE model OF \74AS758\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( GAB ) AFTER 2 ns;
    N2 <=  ( GBA ) AFTER 2 ns;
    B1 <= NOT ( N1 AND A1 ) AFTER 18 ns;
    B2 <= NOT ( N1 AND A2 ) AFTER 18 ns;
    B3 <= NOT ( N1 AND A3 ) AFTER 18 ns;
    B4 <= NOT ( N1 AND A4 ) AFTER 18 ns;
    A1 <= NOT ( N2 AND B1 ) AFTER 18 ns;
    A2 <= NOT ( N2 AND B2 ) AFTER 18 ns;
    A3 <= NOT ( N2 AND B3 ) AFTER 18 ns;
    A4 <= NOT ( N2 AND B4 ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS759\ IS PORT(
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
END \74AS759\;

ARCHITECTURE model OF \74AS759\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( GAB ) AFTER 2 ns;
    N2 <= NOT ( GBA ) AFTER 1 ns;
    B1 <=  ( N1 OR A1 ) AFTER 18 ns;
    B2 <=  ( N1 OR A2 ) AFTER 18 ns;
    B3 <=  ( N1 OR A3 ) AFTER 18 ns;
    B4 <=  ( N1 OR A4 ) AFTER 18 ns;
    A1 <=  ( N2 OR B1 ) AFTER 18 ns;
    A2 <=  ( N2 OR B2 ) AFTER 18 ns;
    A3 <=  ( N2 OR B3 ) AFTER 18 ns;
    A4 <=  ( N2 OR B4 ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS760\ IS PORT(
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
END \74AS760\;

ARCHITECTURE model OF \74AS760\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( \1G\ ) AFTER 1 ns;
    N2 <=  ( \2G\ ) AFTER 1 ns;
    \1Y1\ <=  ( N1 OR \1A1\ ) AFTER 17 ns;
    \1Y2\ <=  ( N1 OR \1A2\ ) AFTER 17 ns;
    \1Y3\ <=  ( N1 OR \1A3\ ) AFTER 17 ns;
    \1Y4\ <=  ( N1 OR \1A4\ ) AFTER 17 ns;
    \2Y1\ <=  ( N2 OR \2A1\ ) AFTER 17 ns;
    \2Y2\ <=  ( N2 OR \2A2\ ) AFTER 17 ns;
    \2Y3\ <=  ( N2 OR \2A3\ ) AFTER 17 ns;
    \2Y4\ <=  ( N2 OR \2A4\ ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS763\ IS PORT(
A1_A : IN  std_logic;
A1_B : IN  std_logic;
A2_A : IN  std_logic;
A2_B : IN  std_logic;
A3_A : IN  std_logic;
A3_B : IN  std_logic;
A4_A : IN  std_logic;
A4_B : IN  std_logic;
G1_A : IN  std_logic;
G1_B : IN  std_logic;
G2_A : IN  std_logic;
G2_B : IN  std_logic;
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
END \74AS763\;

ARCHITECTURE model OF \74AS763\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G1_A ) AFTER 2 ns;
    N2 <=  ( G2_B ) AFTER 3 ns;
    Y1_A <= NOT ( A1_A AND N1 ) AFTER 19 ns;
    Y2_A <= NOT ( A2_A AND N1 ) AFTER 19 ns;
    Y3_A <= NOT ( A3_A AND N1 ) AFTER 19 ns;
    Y4_A <= NOT ( A4_A AND N1 ) AFTER 19 ns;
    Y1_B <= NOT ( A1_B AND N2 ) AFTER 19 ns;
    Y2_B <= NOT ( A2_B AND N2 ) AFTER 19 ns;
    Y3_B <= NOT ( A3_B AND N2 ) AFTER 19 ns;
    Y4_B <= NOT ( A4_B AND N2 ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS800\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
A_C : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
B_C : IN  std_logic;
C_A : IN  std_logic;
C_B : IN  std_logic;
C_C : IN  std_logic;
D_A : IN  std_logic;
D_B : IN  std_logic;
D_C : IN  std_logic;
Y_A : OUT  std_logic;
Y_B : OUT  std_logic;
Y_C : OUT  std_logic;
Z_A : OUT  std_logic;
Z_B : OUT  std_logic;
Z_C : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS800\;

ARCHITECTURE model OF \74AS800\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;

    BEGIN
    L1 <=  ( A_A AND B_A AND C_A AND D_A );
    L2 <=  ( A_B AND B_B AND C_B AND D_B );
    L3 <=  ( A_C AND B_C AND C_C AND D_C );
    Y_A <=  ( L1 ) AFTER 3 ns;
    Y_B <=  ( L2 ) AFTER 3 ns;
    Y_C <=  ( L3 ) AFTER 3 ns;
    Z_A <= NOT ( L1 ) AFTER 3 ns;
    Z_B <= NOT ( L2 ) AFTER 3 ns;
    Z_C <= NOT ( L3 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS802\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
A_C : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
B_C : IN  std_logic;
C_A : IN  std_logic;
C_B : IN  std_logic;
C_C : IN  std_logic;
D_A : IN  std_logic;
D_B : IN  std_logic;
D_C : IN  std_logic;
Z_A : OUT  std_logic;
Z_B : OUT  std_logic;
Z_C : OUT  std_logic;
Y_A : OUT  std_logic;
Y_B : OUT  std_logic;
Y_C : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS802\;

ARCHITECTURE model OF \74AS802\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;

    BEGIN
    L1 <=  ( A_A OR B_A OR C_A OR D_A );
    L2 <=  ( A_B OR B_B OR C_B OR D_B );
    L3 <=  ( A_C OR B_C OR C_C OR D_C );
    Y_A <=  ( L1 ) AFTER 4 ns;
    Y_B <=  ( L2 ) AFTER 4 ns;
    Y_C <=  ( L3 ) AFTER 4 ns;
    Z_A <= NOT ( L1 ) AFTER 4 ns;
    Z_B <= NOT ( L2 ) AFTER 4 ns;
    Z_C <= NOT ( L3 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS804\ IS PORT(
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
END \74AS804\;

ARCHITECTURE model OF \74AS804\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 3 ns;
    O_E <= NOT ( I1_E AND I0_E ) AFTER 3 ns;
    O_F <= NOT ( I1_F AND I0_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS804B\ IS PORT(
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
END \74AS804B\;

ARCHITECTURE model OF \74AS804B\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 3 ns;
    O_E <= NOT ( I1_E AND I0_E ) AFTER 3 ns;
    O_F <= NOT ( I1_F AND I0_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS805\ IS PORT(
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
END \74AS805\;

ARCHITECTURE model OF \74AS805\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D OR I0_D ) AFTER 3 ns;
    O_E <= NOT ( I1_E OR I0_E ) AFTER 3 ns;
    O_F <= NOT ( I1_F OR I0_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS805B\ IS PORT(
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
END \74AS805B\;

ARCHITECTURE model OF \74AS805B\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D OR I0_D ) AFTER 3 ns;
    O_E <= NOT ( I1_E OR I0_E ) AFTER 3 ns;
    O_F <= NOT ( I1_F OR I0_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS808\ IS PORT(
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
END \74AS808\;

ARCHITECTURE model OF \74AS808\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 4 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 4 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 4 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 4 ns;
    O_E <=  ( I1_E AND I0_E ) AFTER 4 ns;
    O_F <=  ( I1_F AND I0_F ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS808B\ IS PORT(
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
END \74AS808B\;

ARCHITECTURE model OF \74AS808B\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 5 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 5 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 5 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 5 ns;
    O_E <=  ( I1_E AND I0_E ) AFTER 5 ns;
    O_F <=  ( I1_F AND I0_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS810\ IS PORT(
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
END \74AS810\;

ARCHITECTURE model OF \74AS810\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 5 ns;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 5 ns;
    O_C <= NOT ( I1_C XOR I0_C ) AFTER 5 ns;
    O_D <= NOT ( I1_D XOR I0_D ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS811\ IS PORT(
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
END \74AS811\;

ARCHITECTURE model OF \74AS811\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 43 ns;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 43 ns;
    O_C <= NOT ( I1_C XOR I0_C ) AFTER 43 ns;
    O_D <= NOT ( I1_D XOR I0_D ) AFTER 43 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS821\ IS PORT(
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
END \74AS821\;

ARCHITECTURE model OF \74AS821\ IS
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
    DQFF_142 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_143 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_144 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_145 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_146 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_147 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_148 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_149 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    DQFF_150 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>D9 , clk=>CLK );
    DQFF_151 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>D10 , clk=>CLK );
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_289 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_290 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_291 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS822\ IS PORT(
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
END \74AS822\;

ARCHITECTURE model OF \74AS822\ IS
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
    DQFF_152 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_153 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_154 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_155 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_156 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_157 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_158 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_159 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    DQFF_160 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>L10 , clk=>CLK );
    DQFF_161 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>L11 , clk=>CLK );
    TSB_292 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_293 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_294 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_295 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_296 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_297 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_298 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_299 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_300 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_301 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS823\ IS PORT(
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
END \74AS823\;

ARCHITECTURE model OF \74AS823\ IS
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
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    TSB_302 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_303 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_304 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_305 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_306 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_307 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_308 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_309 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_310 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS824\ IS PORT(
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
END \74AS824\;

ARCHITECTURE model OF \74AS824\ IS
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
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    ITSB_33 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    ITSB_34 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    ITSB_35 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    ITSB_36 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    ITSB_37 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    ITSB_38 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    ITSB_39 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    ITSB_40 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS825\ IS PORT(
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
END \74AS825\;

ARCHITECTURE model OF \74AS825\ IS
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
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N9 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N10 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N11 , d=>D8 , clk=>N2 , cl=>CLR );
    TSB_311 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N4 , en=>L1 );
    TSB_312 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N5 , en=>L1 );
    TSB_313 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N6 , en=>L1 );
    TSB_314 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N7 , en=>L1 );
    TSB_315 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N8 , en=>L1 );
    TSB_316 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N9 , en=>L1 );
    TSB_317 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N10 , en=>L1 );
    TSB_318 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS826\ IS PORT(
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
END \74AS826\;

ARCHITECTURE model OF \74AS826\ IS
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
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N10 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N11 , d=>D8 , clk=>N2 , cl=>CLR );
    ITSB_41 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N4 , en=>L1 );
    ITSB_42 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N5 , en=>L1 );
    ITSB_43 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N6 , en=>L1 );
    ITSB_44 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N7 , en=>L1 );
    ITSB_45 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N8 , en=>L1 );
    ITSB_46 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N9 , en=>L1 );
    ITSB_47 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N10 , en=>L1 );
    ITSB_48 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS832\ IS PORT(
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
END \74AS832\;

ARCHITECTURE model OF \74AS832\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 5 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 5 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 5 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 5 ns;
    O_E <=  ( I1_E OR I0_E ) AFTER 5 ns;
    O_F <=  ( I1_F OR I0_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS832B\ IS PORT(
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
END \74AS832B\;

ARCHITECTURE model OF \74AS832B\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 5 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 5 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 5 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 5 ns;
    O_E <=  ( I1_E OR I0_E ) AFTER 5 ns;
    O_F <=  ( I1_F OR I0_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS841\ IS PORT(
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
END \74AS841\;

ARCHITECTURE model OF \74AS841\ IS
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
    DLATCH_35 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_43 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_44 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    TSB_319 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_320 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_321 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_322 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_323 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_324 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS842\ IS PORT(
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
END \74AS842\;

ARCHITECTURE model OF \74AS842\ IS
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
    DLATCH_45 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_46 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_47 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_48 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_49 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_50 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_51 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_52 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_53 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_54 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    ITSB_49 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_50 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_51 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_52 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_53 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_54 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_55 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_56 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_57 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    ITSB_58 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>13 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS843\ IS PORT(
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
END \74AS843\;

ARCHITECTURE model OF \74AS843\ IS
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
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS844\ IS PORT(
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
END \74AS844\;

ARCHITECTURE model OF \74AS844\ IS
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
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_16 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_17 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_59 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_60 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_61 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_62 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_63 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_64 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_65 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_66 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_67 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS845\ IS PORT(
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
END \74AS845\;

ARCHITECTURE model OF \74AS845\ IS
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
    DLATCHPC_18 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_19 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_20 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_21 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_22 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_23 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_24 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_25 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_341 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_342 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_343 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_344 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_345 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>11 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS846\ IS PORT(
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
END \74AS846\;

ARCHITECTURE model OF \74AS846\ IS
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
    DLATCHPC_26 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_27 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_28 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_29 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_30 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_31 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_32 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_33 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_68 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_69 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_70 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_71 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_72 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_73 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_74 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_75 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS850\ IS PORT(
D0 : IN  std_logic;
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
D11 : IN  std_logic;
D12 : IN  std_logic;
D13 : IN  std_logic;
D14 : IN  std_logic;
D15 : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
S3 : IN  std_logic;
G : IN  std_logic;
GY : IN  std_logic;
GW : IN  std_logic;
Y : OUT  std_logic;
W : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS850\;

ARCHITECTURE model OF \74AS850\ IS
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

    BEGIN
    L1 <= NOT ( GW );
    L2 <= NOT ( G OR GY );
    L3 <= NOT ( G OR L1 );
    DQFF_162 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N1 , d=>S0 , clk=>CLK );
    DQFF_163 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N2 , d=>S1 , clk=>CLK );
    DQFF_164 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N3 , d=>S2 , clk=>CLK );
    DQFF_165 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N4 , d=>S3 , clk=>CLK );
    L21 <= NOT ( N1 );
    L22 <= NOT ( N2 );
    L23 <= NOT ( N3 );
    L24 <= NOT ( N4 );
    L4 <=  ( D0 AND L21 AND L22 AND L23 AND L24 );
    L5 <=  ( D1 AND N1 AND L22 AND L23 AND L24 );
    L6 <=  ( D2 AND L21 AND N2 AND L23 AND L24 );
    L7 <=  ( D3 AND N1 AND N2 AND L23 AND L24 );
    L8 <=  ( D4 AND L21 AND L22 AND N3 AND L24 );
    L9 <=  ( D5 AND N1 AND L22 AND N3 AND L24 );
    L10 <=  ( D6 AND L21 AND N2 AND N3 AND L24 );
    L11 <=  ( D7 AND N1 AND N2 AND N3 AND L24 );
    L12 <=  ( D8 AND L21 AND L22 AND L23 AND N4 );
    L13 <=  ( D9 AND N1 AND L22 AND L23 AND N4 );
    L14 <=  ( D10 AND L21 AND N2 AND L23 AND N4 );
    L15 <=  ( D11 AND N1 AND N2 AND L23 AND N4 );
    L16 <=  ( D12 AND L21 AND L22 AND N3 AND N4 );
    L17 <=  ( D13 AND N1 AND L22 AND N3 AND N4 );
    L18 <=  ( D14 AND L21 AND N2 AND N3 AND N4 );
    L19 <=  ( D15 AND N1 AND N2 AND N3 AND N4 );
    L20 <=  ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16 OR L17 OR L18 OR L19 );
    N5 <=  ( L20 ) AFTER 9 ns;
    N6 <= NOT ( L20 ) AFTER 6 ns;
    TSB_346 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Y , i1=>N5 , en=>L2 );
    TSB_347 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>W , i1=>N6 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS851\ IS PORT(
D0 : IN  std_logic;
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
D11 : IN  std_logic;
D12 : IN  std_logic;
D13 : IN  std_logic;
D14 : IN  std_logic;
D15 : IN  std_logic;
SC : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
S3 : IN  std_logic;
G : IN  std_logic;
GY : IN  std_logic;
GW : IN  std_logic;
Y : OUT  std_logic;
W : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS851\;

ARCHITECTURE model OF \74AS851\ IS
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

    BEGIN
    L1 <= NOT ( GW );
    L2 <= NOT ( G OR GY );
    L3 <= NOT ( G OR L1 );
    L25 <= NOT ( SC );
    DLATCH_55 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>S0 , enable=>L25 );
    DLATCH_56 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>S1 , enable=>L25 );
    DLATCH_57 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>S2 , enable=>L25 );
    DLATCH_58 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>S3 , enable=>L25 );
    L21 <= NOT ( N1 );
    L22 <= NOT ( N2 );
    L23 <= NOT ( N3 );
    L24 <= NOT ( N4 );
    L4 <=  ( D0 AND L21 AND L22 AND L23 AND L24 );
    L5 <=  ( D1 AND N1 AND L22 AND L23 AND L24 );
    L6 <=  ( D2 AND L21 AND N2 AND L23 AND L24 );
    L7 <=  ( D3 AND N1 AND N2 AND L23 AND L24 );
    L8 <=  ( D4 AND L21 AND L22 AND N3 AND L24 );
    L9 <=  ( D5 AND N1 AND L22 AND N3 AND L24 );
    L10 <=  ( D6 AND L21 AND N2 AND N3 AND L24 );
    L11 <=  ( D7 AND N1 AND N2 AND N3 AND L24 );
    L12 <=  ( D8 AND L21 AND L22 AND L23 AND N4 );
    L13 <=  ( D9 AND N1 AND L22 AND L23 AND N4 );
    L14 <=  ( D10 AND L21 AND N2 AND L23 AND N4 );
    L15 <=  ( D11 AND N1 AND N2 AND L23 AND N4 );
    L16 <=  ( D12 AND L21 AND L22 AND N3 AND N4 );
    L17 <=  ( D13 AND N1 AND L22 AND N3 AND N4 );
    L18 <=  ( D14 AND L21 AND N2 AND N3 AND N4 );
    L19 <=  ( D15 AND N1 AND N2 AND N3 AND N4 );
    L20 <=  ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16 OR L17 OR L18 OR L19 );
    N5 <=  ( L20 ) AFTER 9 ns;
    N6 <= NOT ( L20 ) AFTER 6 ns;
    TSB_348 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Y , i1=>N5 , en=>L2 );
    TSB_349 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>W , i1=>N6 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS857\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\3A\ : IN  std_logic;
\3B\ : IN  std_logic;
\4A\ : IN  std_logic;
\4B\ : IN  std_logic;
\5A\ : IN  std_logic;
\5B\ : IN  std_logic;
\6A\ : IN  std_logic;
\6B\ : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
COMP : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
\3Y\ : OUT  std_logic;
\4Y\ : OUT  std_logic;
\5Y\ : OUT  std_logic;
\6Y\ : OUT  std_logic;
OPER : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS857\;

ARCHITECTURE model OF \74AS857\ IS
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
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;

    BEGIN
    N1 <= NOT ( S0 ) AFTER 4 ns;
    N2 <= NOT ( S1 ) AFTER 4 ns;
    N3 <=  ( S0 ) AFTER 4 ns;
    L1 <= NOT ( S0 AND S1 AND COMP );
    L2 <= NOT ( S0 );
    L3 <= NOT ( S1 );
    L4 <=  ( L2 AND S1 );
    L5 <=  ( S1 AND COMP );
    L6 <= NOT ( L4 OR L5 );
    L7 <=  ( \1A\ AND L2 AND L3 );
    L8 <=  ( S0 AND L3 AND \1B\ );
    L9 <=  ( \1A\ AND \1B\ AND L2 );
    L10 <=  ( \2A\ AND L2 AND L3 );
    L11 <=  ( S0 AND L3 AND \2B\ );
    L12 <=  ( \2A\ AND \2B\ AND L2 );
    L13 <=  ( \3A\ AND L2 AND L3 );
    L14 <=  ( S0 AND L3 AND \3B\ );
    L15 <=  ( \3A\ AND \3B\ AND L2 );
    L16 <=  ( \4A\ AND L2 AND L3 );
    L17 <=  ( S0 AND L3 AND \4B\ );
    L18 <=  ( \4A\ AND \4B\ AND L2 );
    L19 <=  ( \5A\ AND L2 AND L3 );
    L20 <=  ( S0 AND L3 AND \5B\ );
    L21 <=  ( \5A\ AND \5B\ AND L2 );
    L22 <=  ( \6A\ AND L2 AND L3 );
    L23 <=  ( S0 AND L3 AND \6B\ );
    L24 <=  ( \6A\ AND \6B\ AND L2 );
    L25 <=  ( L7 OR L8 OR L9 );
    L26 <=  ( L10 OR L11 OR L12 );
    L27 <=  ( L13 OR L14 OR L15 );
    L28 <=  ( L16 OR L17 OR L18 );
    L29 <=  ( L19 OR L20 OR L21 );
    L30 <=  ( L22 OR L23 OR L24 );
    L31 <= NOT ( \6B\ OR \5B\ OR \4B\ OR \3B\ OR \2B\ OR \1B\ );
    L32 <= NOT ( \6A\ OR \5A\ OR \4A\ OR \3A\ OR \2A\ OR \1A\ );
    L33 <=  ( S0 AND N2 AND L31 );
    L34 <=  ( N1 AND N2 AND L32 );
    N6 <=  ( COMP XOR L25 ) AFTER 8 ns;
    N7 <=  ( COMP XOR L26 ) AFTER 8 ns;
    N8 <=  ( COMP XOR L27 ) AFTER 8 ns;
    N9 <=  ( COMP XOR L28 ) AFTER 8 ns;
    N10 <=  ( COMP XOR L29 ) AFTER 8 ns;
    N11 <=  ( COMP XOR L30 ) AFTER 8 ns;
    N12 <=  ( L33 OR L34 ) AFTER 9 ns;
    TSB_350 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\1Y\ , i1=>N6 , en=>L1 );
    TSB_351 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\2Y\ , i1=>N7 , en=>L1 );
    TSB_352 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\3Y\ , i1=>N8 , en=>L1 );
    TSB_353 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\4Y\ , i1=>N9 , en=>L1 );
    TSB_354 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\5Y\ , i1=>N10 , en=>L1 );
    TSB_355 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>\6Y\ , i1=>N11 , en=>L1 );
    TSB_356 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>OPER , i1=>N12 , en=>L6 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS866\ IS PORT(
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
\P>Qi\ : IN  std_logic;
\P<Qi\ : IN  std_logic;
\L/A\\\ : IN  std_logic;
PLE : IN  std_logic;
QLE : IN  std_logic;
OLE : IN  std_logic;
CLRQ : IN  std_logic;
\P=Q\ : OUT  std_logic;
\P>Qo\ : OUT  std_logic;
\P<Qo\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS866\;

ARCHITECTURE model OF \74AS866\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    DLATCH_59 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N1 , d=>P7 , enable=>PLE );
    DLATCH_60 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N2 , d=>P6 , enable=>PLE );
    DLATCH_61 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N3 , d=>P5 , enable=>PLE );
    DLATCH_62 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N4 , d=>P4 , enable=>PLE );
    DLATCH_63 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N5 , d=>P3 , enable=>PLE );
    DLATCH_64 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N6 , d=>P2 , enable=>PLE );
    DLATCH_65 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N7 , d=>P1 , enable=>PLE );
    DLATCH_66 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N8 , d=>P0 , enable=>PLE );
    DLATCHPC_34 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N9 , d=>Q7 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_35 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N10 , d=>Q6 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_36 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N11 , d=>Q5 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_37 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N12 , d=>Q4 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_38 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N13 , d=>Q3 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_39 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N14 , d=>Q2 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_40 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N15 , d=>Q1 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    DLATCHPC_41 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N16 , d=>Q0 , enable=>QLE , pr=>ONE , cl=>CLRQ );
    L58 <= NOT ( N1 );
    L59 <= NOT ( N2 );
    L60 <= NOT ( N3 );
    L61 <= NOT ( N4 );
    L62 <= NOT ( N5 );
    L63 <= NOT ( N6 );
    L64 <= NOT ( N7 );
    L65 <= NOT ( N8 );
    L66 <= NOT ( N9 );
    L67 <= NOT ( N10 );
    L68 <= NOT ( N11 );
    L69 <= NOT ( N12 );
    L70 <= NOT ( N13 );
    L71 <= NOT ( N14 );
    L72 <= NOT ( N15 );
    L73 <= NOT ( N16 );
    N18 <=  ( \L/A\\\ ) AFTER 6 ns;
    L1 <= NOT ( N18 );
    L2 <=  ( L66 AND N1 );
    L3 <=  ( N9 AND L58 );
    L4 <=  ( L67 AND N2 );
    L5 <=  ( N10 AND L59 );
    L6 <=  ( L68 AND N3 );
    L7 <=  ( N11 AND L60 );
    L8 <=  ( L70 AND N5 );
    L9 <=  ( N13 AND L62 );
    L10 <=  ( L71 AND N6 );
    L11 <=  ( N14 AND L63 );
    L12 <=  ( N7 AND L72 );
    L13 <=  ( N15 AND L64 );
    L14 <=  ( N8 AND L73 );
    L15 <=  ( N16 AND L65 );
    L16 <=  ( N1 AND L66 );
    L17 <=  ( L58 AND N9 );
    L18 <=  ( N2 AND L67 );
    L19 <=  ( L59 AND N10 );
    L20 <=  ( N3 AND L68 );
    L21 <=  ( L60 AND N11 );
    L22 <=  ( L69 AND N4 );
    L23 <=  ( N12 AND L61 );
    L24 <= NOT ( L2 OR L3 );
    L25 <= NOT ( L4 OR L5 );
    L26 <= NOT ( L6 OR L7 );
    L27 <= NOT ( L8 OR L9 );
    L28 <= NOT ( L10 OR L11 );
    L29 <= NOT ( L12 OR L13 );
    L30 <= NOT ( L14 OR L15 );
    L31 <= NOT ( L16 OR L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 );
    L32 <=  ( N1 AND L66 AND L1 );
    L33 <=  ( L58 AND N9 AND N18 );
    L34 <=  ( L59 AND N10 AND L24 );
    L35 <=  ( L60 AND N11 AND L24 AND L25 );
    L36 <=  ( L61 AND N12 AND L24 AND L25 AND L26 );
    L37 <=  ( L62 AND N13 AND L31 );
    L38 <=  ( L63 AND N14 AND L31 AND L27 );
    L39 <=  ( L64 AND N15 AND L31 AND L27 AND L28 );
    L40 <=  ( L65 AND N16 AND L31 AND L27 AND L28 AND L29 );
    L41 <=  ( L31 AND L27 AND L28 AND L29 AND L30 AND \P<Qi\ );
    L42 <=  ( N1 AND L66 AND N18 );
    L43 <=  ( L58 AND N9 AND L1 );
    L44 <=  ( N2 AND L67 AND L24 );
    L45 <=  ( N3 AND L68 AND L24 AND L25 );
    L46 <=  ( N4 AND L69 AND L24 AND L25 AND L26 );
    L47 <=  ( N5 AND L70 AND L31 );
    L48 <=  ( N6 AND L71 AND L31 AND L27 );
    L49 <=  ( N7 AND L72 AND L31 AND L27 AND L28 );
    L50 <=  ( L73 AND N8 AND L31 AND L27 AND L28 AND L29 );
    L51 <=  ( L31 AND L27 AND L28 AND L29 AND L30 AND \P>Qi\ );
    L52 <=  ( L32 OR L33 OR L34 OR L35 OR L36 );
    L53 <=  ( L37 OR L38 OR L39 OR L40 OR L41 );
    L54 <=  ( L42 OR L43 OR L44 OR L45 OR L46 );
    L55 <=  ( L47 OR L48 OR L49 OR L50 OR L51 );
    L56 <=  ( L52 OR L53 );
    L57 <=  ( L54 OR L55 );
    L74 <= NOT ( \P>Qi\ OR \P<Qi\ );
    N17 <=  ( L31 AND L27 AND L28 AND L29 AND L30 AND L74 ) AFTER 6 ns;
    DLATCH_67 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>\P<Qo\ , d=>L56 , enable=>OLE );
    DLATCH_68 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>\P>Qo\ , d=>L57 , enable=>OLE );
    DLATCH_69 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>\P=Q\ , d=>N17 , enable=>OLE );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS867\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
ENT : IN  std_logic;
ENP : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
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
END \74AS867\;

ARCHITECTURE model OF \74AS867\ IS
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <=  ( L1 AND S1 );
    L4 <=  ( L2 AND L1 );
    L5 <= NOT ( L2 AND L1 AND L4 );
    L6 <= NOT ( L1 OR ENT );
    L7 <= NOT ( L1 OR ENT OR ENP );
    L8 <= NOT ( L7 );
    L9 <= NOT ( N17 AND L7 );
    L10 <= NOT ( N18 AND N17 AND L7 );
    L11 <= NOT ( N19 AND N18 AND N17 AND L7 );
    L12 <= NOT ( N20 AND N19 AND N18 AND N17 AND L7 );
    L13 <= NOT ( L12 );
    L14 <= NOT ( N21 );
    L15 <= NOT ( N22 AND N21 );
    L16 <= NOT ( N23 AND N22 AND N21 );
    L17 <=  ( N1 AND L8 AND S0 );
    L18 <=  ( L3 AND A );
    L19 <=  ( L7 AND N2 );
    L20 <=  ( N3 AND L9 AND S0 );
    L21 <=  ( L3 AND B );
    L22 <=  ( N17 AND L7 AND N4 );
    L23 <=  ( N5 AND L10 AND S0 );
    L24 <=  ( L3 AND C );
    L25 <=  ( N18 AND N17 AND L7 AND N6 );
    L26 <=  ( N7 AND L11 AND S0 );
    L27 <=  ( L3 AND D );
    L28 <=  ( N19 AND N18 AND N17 AND L7 AND N8 );
    L29 <=  ( N9 AND L12 AND S0 );
    L30 <=  ( L3 AND E );
    L31 <=  ( L13 AND N10 );
    L32 <=  ( N11 AND L14 AND S0 );
    L33 <=  ( L3 AND F );
    L34 <=  ( N21 AND N12 );
    L35 <=  ( N13 AND L15 AND S0 );
    L36 <=  ( L3 AND G );
    L37 <=  ( N22 AND N21 AND N14 );
    L38 <=  ( N15 AND L16 AND S0 );
    L39 <=  ( L3 AND H );
    L40 <=  ( N23 AND N22 AND N21 AND N16 );
    L41 <=  ( L17 OR L18 OR L19 );
    L42 <=  ( L20 OR L21 OR L22 );
    L43 <=  ( L23 OR L24 OR L25 );
    L44 <=  ( L26 OR L27 OR L28 );
    L45 <=  ( L29 OR L30 OR L31 );
    L46 <=  ( L32 OR L33 OR L34 );
    L47 <=  ( L35 OR L36 OR L37 );
    L48 <=  ( L38 OR L39 OR L40 );
    L49 <=  ( L2 AND N1 );
    L50 <=  ( N2 AND S1 );
    L51 <=  ( L2 AND N3 );
    L52 <=  ( N4 AND S1 );
    L53 <=  ( L2 AND N5 );
    L54 <=  ( N6 AND S1 );
    L55 <=  ( L2 AND N7 );
    L56 <=  ( N8 AND S1 );
    L57 <=  ( L2 AND N9 );
    L58 <=  ( N10 AND S1 );
    L59 <=  ( L2 AND N11 );
    L60 <=  ( N12 AND S1 );
    L61 <=  ( L2 AND N13 );
    L62 <=  ( N14 AND S1 );
    L63 <=  ( L2 AND N15 );
    L64 <=  ( N16 AND S1 );
    N17 <= NOT ( L49 OR L50 ) AFTER 12 ns;
    N18 <= NOT ( L51 OR L52 ) AFTER 12 ns;
    N19 <= NOT ( L53 OR L54 ) AFTER 12 ns;
    N20 <= NOT ( L55 OR L56 ) AFTER 12 ns;
    N21 <= NOT ( L12 OR L57 OR L58 ) AFTER 12 ns;
    N22 <= NOT ( L59 OR L60 ) AFTER 12 ns;
    N23 <= NOT ( L61 OR L62 ) AFTER 12 ns;
    N24 <= NOT ( L63 OR L64 ) AFTER 12 ns;
    N25 <=  ( L6 ) AFTER 5 ns;
    DFFC_8 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N1 , qNot=>N2 , d=>L41 , clk=>CLK , cl=>L5 );
    DFFC_9 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N3 , qNot=>N4 , d=>L42 , clk=>CLK , cl=>L5 );
    DFFC_10 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N5 , qNot=>N6 , d=>L43 , clk=>CLK , cl=>L5 );
    DFFC_11 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N7 , qNot=>N8 , d=>L44 , clk=>CLK , cl=>L5 );
    DFFC_12 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N9 , qNot=>N10 , d=>L45 , clk=>CLK , cl=>L5 );
    DFFC_13 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N11 , qNot=>N12 , d=>L46 , clk=>CLK , cl=>L5 );
    DFFC_14 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N13 , qNot=>N14 , d=>L47 , clk=>CLK , cl=>L5 );
    DFFC_15 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP (q=>N15 , qNot=>N16 , d=>L48 , clk=>CLK , cl=>L5 );
    QA <=  ( N1 ) AFTER 10 ns;
    QB <=  ( N3 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N7 ) AFTER 10 ns;
    QE <=  ( N9 ) AFTER 10 ns;
    QF <=  ( N11 ) AFTER 10 ns;
    QG <=  ( N13 ) AFTER 10 ns;
    QH <=  ( N15 ) AFTER 10 ns;
    RCO <= NOT ( N25 AND N17 AND N21 AND N22 AND N23 AND N24 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS869\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
ENT : IN  std_logic;
ENP : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
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
END \74AS869\;

ARCHITECTURE model OF \74AS869\ IS
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <=  ( L1 AND S1 );
    L4 <= NOT ( L1 OR ENT );
    L5 <= NOT ( L1 OR ENT OR ENP );
    L6 <= NOT ( L5 );
    L7 <= NOT ( N17 AND L5 );
    L8 <= NOT ( N18 AND N17 AND L5 );
    L9 <= NOT ( N19 AND N18 AND N17 AND L5 );
    L10 <= NOT ( N20 AND N19 AND N18 AND N17 AND L5 );
    L11 <= NOT ( L10 );
    L12 <= NOT ( N21 );
    L13 <= NOT ( N22 AND N21 );
    L14 <= NOT ( N23 AND N22 AND N21 );
    L15 <=  ( N1 AND L6 AND S0 );
    L16 <=  ( L3 AND A );
    L17 <=  ( L5 AND N2 );
    L18 <=  ( N3 AND L7 AND S0 );
    L19 <=  ( L3 AND B );
    L20 <=  ( N17 AND L5 AND N4 );
    L21 <=  ( N5 AND L8 AND S0 );
    L22 <=  ( L3 AND C );
    L23 <=  ( N18 AND N17 AND L5 AND N6 );
    L24 <=  ( N7 AND L9 AND S0 );
    L25 <=  ( L3 AND D );
    L26 <=  ( N19 AND N18 AND N17 AND L5 AND N8 );
    L27 <=  ( N9 AND L10 AND S0 );
    L28 <=  ( L3 AND E );
    L29 <=  ( L11 AND N10 );
    L30 <=  ( N11 AND L12 AND S0 );
    L31 <=  ( L3 AND F );
    L32 <=  ( N21 AND N12 );
    L33 <=  ( N13 AND L13 AND S0 );
    L34 <=  ( L3 AND G );
    L35 <=  ( N22 AND N21 AND N14 );
    L36 <=  ( N15 AND L14 AND S0 );
    L37 <=  ( L3 AND H );
    L38 <=  ( N23 AND N22 AND N21 AND N16 );
    L39 <=  ( L15 OR L16 OR L17 );
    L40 <=  ( L18 OR L19 OR L20 );
    L41 <=  ( L21 OR L22 OR L23 );
    L42 <=  ( L24 OR L25 OR L26 );
    L43 <=  ( L27 OR L28 OR L29 );
    L44 <=  ( L30 OR L31 OR L32 );
    L45 <=  ( L33 OR L34 OR L35 );
    L46 <=  ( L36 OR L37 OR L38 );
    L47 <=  ( L2 AND N1 );
    L48 <=  ( N2 AND S1 );
    L49 <=  ( L2 AND N3 );
    L50 <=  ( N4 AND S1 );
    L51 <=  ( L2 AND N5 );
    L52 <=  ( N6 AND S1 );
    L53 <=  ( L2 AND N7 );
    L54 <=  ( N8 AND S1 );
    L55 <=  ( L2 AND N9 );
    L56 <=  ( N10 AND S1 );
    L57 <=  ( L2 AND N11 );
    L58 <=  ( N12 AND S1 );
    L59 <=  ( L2 AND N13 );
    L60 <=  ( N14 AND S1 );
    L61 <=  ( L2 AND N15 );
    L62 <=  ( N16 AND S1 );
    N17 <= NOT ( L47 OR L48 ) AFTER 18 ns;
    N18 <= NOT ( L49 OR L50 ) AFTER 18 ns;
    N19 <= NOT ( L51 OR L52 ) AFTER 18 ns;
    N20 <= NOT ( L53 OR L54 ) AFTER 18 ns;
    N21 <= NOT ( L10 OR L55 OR L56 ) AFTER 18 ns;
    N22 <= NOT ( L57 OR L58 ) AFTER 18 ns;
    N23 <= NOT ( L59 OR L60 ) AFTER 18 ns;
    N24 <= NOT ( L61 OR L62 ) AFTER 18 ns;
    N25 <=  ( L4 ) AFTER 4 ns;
    DFF_0 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N1 , qNot=>N2 , d=>L39 , clk=>CLK );
    DFF_1 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , d=>L40 , clk=>CLK );
    DFF_2 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , d=>L41 , clk=>CLK );
    DFF_3 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , d=>L42 , clk=>CLK );
    DFF_4 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , d=>L43 , clk=>CLK );
    DFF_5 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , d=>L44 , clk=>CLK );
    DFF_6 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , d=>L45 , clk=>CLK );
    DFF_7 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N15 , qNot=>N16 , d=>L46 , clk=>CLK );
    QA <=  ( N1 ) AFTER 9 ns;
    QB <=  ( N3 ) AFTER 9 ns;
    QC <=  ( N5 ) AFTER 9 ns;
    QD <=  ( N7 ) AFTER 9 ns;
    QE <=  ( N9 ) AFTER 9 ns;
    QF <=  ( N11 ) AFTER 9 ns;
    QG <=  ( N13 ) AFTER 9 ns;
    QH <=  ( N15 ) AFTER 9 ns;
    RCO <= NOT ( N25 AND N17 AND N21 AND N22 AND N23 AND N24 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS873\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
C_A : IN  std_logic;
C_B : IN  std_logic;
OC_A : IN  std_logic;
OC_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
Q4_A : OUT  std_logic;
Q4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS873\;

ARCHITECTURE model OF \74AS873\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( OC_A );
    L2 <= NOT ( OC_B );
    DLATCHPC_42 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N1 , d=>D1_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_43 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N2 , d=>D2_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_44 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N3 , d=>D3_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_45 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N4 , d=>D4_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_46 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N5 , d=>D1_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_47 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N6 , d=>D2_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_48 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N7 , d=>D3_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_49 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N8 , d=>D4_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    TSB_357 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_358 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_359 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_360 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_361 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_362 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_363 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_364 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS874\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
OC_A : IN  std_logic;
OC_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
Q4_A : OUT  std_logic;
Q4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS874\;

ARCHITECTURE model OF \74AS874\ IS
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
    L1 <= NOT ( OC_A );
    L2 <= NOT ( OC_B );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_63 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , cl=>CLR_B );
    TSB_365 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_366 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_367 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_368 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_369 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_370 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_371 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_372 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS876\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
OC_A : IN  std_logic;
OC_B : IN  std_logic;
PRE_A : IN  std_logic;
PRE_B : IN  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
Q4_A : OUT  std_logic;
Q4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS876\;

ARCHITECTURE model OF \74AS876\ IS
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
    L1 <= NOT ( OC_A );
    L2 <= NOT ( OC_B );
    DQFFP_0 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_1 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_2 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_3 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_4 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_5 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_6 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_7 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , pr=>PRE_B );
    ITSB_76 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_77 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_78 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_79 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_80 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_81 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_82 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_83 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS878\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
OC_A : IN  std_logic;
OC_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
Q4_A : OUT  std_logic;
Q4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS878\;

ARCHITECTURE model OF \74AS878\ IS
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

    BEGIN
    L1 <= NOT ( OC_A );
    L2 <= NOT ( OC_B );
    L3 <=  ( D1_A AND CLR_A );
    L4 <=  ( D2_A AND CLR_A );
    L5 <=  ( D3_A AND CLR_A );
    L6 <=  ( D4_A AND CLR_A );
    L7 <=  ( D1_B AND CLR_B );
    L8 <=  ( D2_B AND CLR_B );
    L9 <=  ( D3_B AND CLR_B );
    L10 <=  ( D4_B AND CLR_B );
    DQFF_166 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>L3 , clk=>CLK_A );
    DQFF_167 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>CLK_A );
    DQFF_168 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK_A );
    DQFF_169 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L6 , clk=>CLK_A );
    DQFF_170 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK_B );
    DQFF_171 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L8 , clk=>CLK_B );
    DQFF_172 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>CLK_B );
    DQFF_173 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>L10 , clk=>CLK_B );
    TSB_373 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_374 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_375 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_376 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_377 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_378 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_379 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_380 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS879\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
OC_A : IN  std_logic;
OC_B : IN  std_logic;
CLR_A : IN  std_logic;
CLR_B : IN  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
Q4_A : OUT  std_logic;
Q4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS879\;

ARCHITECTURE model OF \74AS879\ IS
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

    BEGIN
    L1 <= NOT ( OC_A );
    L2 <= NOT ( OC_B );
    L3 <=  ( D1_A AND CLR_A );
    L4 <=  ( D2_A AND CLR_A );
    L5 <=  ( D3_A AND CLR_A );
    L6 <=  ( D4_A AND CLR_A );
    L7 <=  ( D1_B AND CLR_B );
    L8 <=  ( D2_B AND CLR_B );
    L9 <=  ( D3_B AND CLR_B );
    L10 <=  ( D4_B AND CLR_B );
    DQFF_174 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>L3 , clk=>CLK_A );
    DQFF_175 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>CLK_A );
    DQFF_176 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK_A );
    DQFF_177 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L6 , clk=>CLK_A );
    DQFF_178 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK_B );
    DQFF_179 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L8 , clk=>CLK_B );
    DQFF_180 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>CLK_B );
    DQFF_181 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>L10 , clk=>CLK_B );
    ITSB_84 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_85 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_86 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_87 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_88 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_89 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_90 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_91 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>7 ns, tpd_en_o=>6 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS880\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
C_A : IN  std_logic;
C_B : IN  std_logic;
OC_A : IN  std_logic;
OC_B : IN  std_logic;
PRE_A : IN  std_logic;
PRE_B : IN  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
Q4_A : OUT  std_logic;
Q4_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS880\;

ARCHITECTURE model OF \74AS880\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( OC_A );
    L2 <= NOT ( OC_B );
    DLATCHPC_50 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N1 , d=>D1_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_51 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N2 , d=>D2_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_52 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>D3_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_53 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>D4_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_54 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>D1_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_55 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N6 , d=>D2_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_56 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>D3_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_57 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>D4_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    ITSB_92 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_93 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_94 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_95 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_96 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_97 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_98 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_99 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>8 ns, tpd_en_o=>8 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS882\ IS PORT(
CN : IN  std_logic;
P0 : IN  std_logic;
G0 : IN  std_logic;
P1 : IN  std_logic;
G1 : IN  std_logic;
P2 : IN  std_logic;
G2 : IN  std_logic;
P3 : IN  std_logic;
G3 : IN  std_logic;
P4 : IN  std_logic;
G4 : IN  std_logic;
P5 : IN  std_logic;
G5 : IN  std_logic;
P6 : IN  std_logic;
G6 : IN  std_logic;
P7 : IN  std_logic;
G7 : IN  std_logic;
\CN+8\ : OUT  std_logic;
\CN+16\ : OUT  std_logic;
\CN+24\ : OUT  std_logic;
\CN+32\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS882\;

ARCHITECTURE model OF \74AS882\ IS
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

    BEGIN
    N1 <= NOT ( CN ) AFTER 7 ns;
    N2 <= NOT ( CN ) AFTER 4 ns;
    N3 <= NOT ( CN ) AFTER 2 ns;
    L1 <=  ( G7 AND P7 );
    L2 <=  ( G7 AND G6 AND P6 );
    L3 <=  ( G7 AND G6 AND G5 AND P5 );
    L4 <=  ( G7 AND G6 AND G5 AND G4 AND P4 );
    L5 <=  ( G7 AND G6 AND G5 AND G4 AND G3 AND P3 );
    L6 <=  ( G7 AND G6 AND G5 AND G4 AND G3 AND G2 AND P2 );
    L7 <=  ( G7 AND G6 AND G5 AND G4 AND G3 AND G2 AND G1 AND P1 );
    L8 <=  ( G7 AND G6 AND G5 AND G4 AND G3 AND G2 AND G1 AND G0 AND P0 );
    L9 <=  ( G7 AND G6 AND G5 AND G4 AND G3 AND G2 AND G1 AND G0 AND N3 );
    L10 <=  ( G5 AND P5 );
    L11 <=  ( G5 AND G4 AND P4 );
    L12 <=  ( G5 AND G4 AND G3 AND P3 );
    L13 <=  ( G5 AND G4 AND G3 AND G2 AND P2 );
    L14 <=  ( G5 AND G4 AND G3 AND G2 AND G1 AND P1 );
    L15 <=  ( G5 AND G4 AND G3 AND G2 AND G1 AND G0 AND P0 );
    L16 <=  ( G5 AND G4 AND G3 AND G2 AND G1 AND G0 AND N2 );
    L17 <=  ( G3 AND P3 );
    L18 <=  ( G3 AND G2 AND P2 );
    L19 <=  ( G3 AND G2 AND G1 AND P1 );
    L20 <=  ( G3 AND G2 AND G1 AND G0 AND P0 );
    L21 <=  ( G3 AND G2 AND G1 AND G0 AND N1 );
    L22 <=  ( G1 AND P1 );
    L23 <=  ( G1 AND G0 AND P0 );
    L24 <=  ( G1 AND G0 AND N1 );
    \CN+32\ <= NOT ( L1 OR L2 OR L3 OR L4 OR L5 OR L6 OR L7 OR L8 OR L9 ) AFTER 10 ns;
    \CN+24\ <= NOT ( L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16 ) AFTER 8 ns;
    \CN+16\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 ) AFTER 5 ns;
    \CN+8\ <= NOT ( L22 OR L23 OR L24 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS885\ IS PORT(
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
\P>Qi\ : IN  std_logic;
\P<Qi\ : IN  std_logic;
PLE : IN  std_logic;
\L/A\\\ : IN  std_logic;
\P>Qo\ : OUT  std_logic;
\P<Qo\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74AS885\;

ARCHITECTURE model OF \74AS885\ IS
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

    BEGIN
    DLATCH_70 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>P7 , enable=>PLE );
    DLATCH_71 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>P6 , enable=>PLE );
    DLATCH_72 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>P5 , enable=>PLE );
    DLATCH_73 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>P4 , enable=>PLE );
    DLATCH_74 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>P3 , enable=>PLE );
    DLATCH_75 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>P2 , enable=>PLE );
    DLATCH_76 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>P1 , enable=>PLE );
    DLATCH_77 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>P0 , enable=>PLE );
    N9 <=  ( N1 ) AFTER 5 ns;
    N11 <=  ( N2 ) AFTER 5 ns;
    N13 <=  ( N3 ) AFTER 5 ns;
    N15 <=  ( N4 ) AFTER 5 ns;
    N17 <=  ( N5 ) AFTER 5 ns;
    N19 <=  ( N6 ) AFTER 5 ns;
    N21 <=  ( N7 ) AFTER 5 ns;
    N23 <=  ( N8 ) AFTER 5 ns;
    N10 <= NOT ( N1 ) AFTER 5 ns;
    N12 <= NOT ( N2 ) AFTER 5 ns;
    N14 <= NOT ( N3 ) AFTER 5 ns;
    N16 <= NOT ( N4 ) AFTER 5 ns;
    N18 <= NOT ( N5 ) AFTER 5 ns;
    N20 <= NOT ( N6 ) AFTER 5 ns;
    N22 <= NOT ( N7 ) AFTER 5 ns;
    N24 <= NOT ( N8 ) AFTER 5 ns;
    N25 <=  ( Q7 ) AFTER 10 ns;
    N27 <=  ( Q6 ) AFTER 10 ns;
    N29 <=  ( Q5 ) AFTER 10 ns;
    N31 <=  ( Q4 ) AFTER 10 ns;
    N33 <=  ( Q3 ) AFTER 10 ns;
    N35 <=  ( Q2 ) AFTER 10 ns;
    N37 <=  ( Q1 ) AFTER 10 ns;
    N39 <=  ( Q0 ) AFTER 10 ns;
    N26 <= NOT ( Q7 ) AFTER 10 ns;
    N28 <= NOT ( Q6 ) AFTER 10 ns;
    N30 <= NOT ( Q5 ) AFTER 10 ns;
    N32 <= NOT ( Q4 ) AFTER 10 ns;
    N34 <= NOT ( Q3 ) AFTER 10 ns;
    N36 <= NOT ( Q2 ) AFTER 10 ns;
    N38 <= NOT ( Q1 ) AFTER 10 ns;
    N40 <= NOT ( Q0 ) AFTER 10 ns;
    N41 <=  ( \L/A\\\ ) AFTER 5 ns;
    L1 <= NOT ( N41 );
    L2 <=  ( N26 AND N9 );
    L3 <=  ( N25 AND N10 );
    L4 <=  ( N28 AND N11 );
    L5 <=  ( N27 AND N12 );
    L6 <=  ( N30 AND N13 );
    L7 <=  ( N29 AND N14 );
    L8 <=  ( N34 AND N17 );
    L9 <=  ( N33 AND N18 );
    L10 <=  ( N36 AND N19 );
    L11 <=  ( N35 AND N20 );
    L12 <=  ( N21 AND N38 );
    L13 <=  ( N37 AND N22 );
    L14 <=  ( N23 AND N40 );
    L15 <=  ( N39 AND N24 );
    L16 <=  ( N9 AND N26 );
    L17 <=  ( N10 AND N25 );
    L18 <=  ( N11 AND N28 );
    L19 <=  ( N12 AND N27 );
    L20 <=  ( N13 AND N30 );
    L21 <=  ( N14 AND N29 );
    L22 <=  ( N32 AND N15 );
    L23 <=  ( N31 AND N16 );
    L24 <= NOT ( L2 OR L3 );
    L25 <= NOT ( L4 OR L5 );
    L26 <= NOT ( L6 OR L7 );
    L27 <= NOT ( L8 OR L9 );
    L28 <= NOT ( L10 OR L11 );
    L29 <= NOT ( L12 OR L13 );
    L30 <= NOT ( L14 OR L15 );
    L31 <= NOT ( L16 OR L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 );
    L32 <=  ( N9 AND N26 AND L1 );
    L33 <=  ( N10 AND N25 AND N41 );
    L34 <=  ( N12 AND N27 AND L24 );
    L35 <=  ( N14 AND N29 AND L24 AND L25 );
    L36 <=  ( N16 AND N31 AND L24 AND L25 AND L26 );
    L37 <=  ( N18 AND N33 AND L31 );
    L38 <=  ( N20 AND N35 AND L31 AND L27 );
    L39 <=  ( N22 AND N37 AND L31 AND L27 AND L28 );
    L40 <=  ( N24 AND N39 AND L31 AND L27 AND L28 AND L29 );
    L41 <=  ( L31 AND L27 AND L28 AND L29 AND L30 AND \P<Qi\ );
    L42 <=  ( N9 AND N26 AND N41 );
    L43 <=  ( N10 AND N25 AND L1 );
    L44 <=  ( N11 AND N28 AND L24 );
    L45 <=  ( N13 AND N30 AND L24 AND L25 );
    L46 <=  ( N15 AND N32 AND L24 AND L25 AND L26 );
    L47 <=  ( N17 AND N34 AND L31 );
    L48 <=  ( N19 AND N36 AND L31 AND L27 );
    L49 <=  ( N21 AND N38 AND L31 AND L27 AND L28 );
    L50 <=  ( N40 AND N23 AND L31 AND L27 AND L28 AND L29 );
    L51 <=  ( L31 AND L27 AND L28 AND L29 AND L30 AND \P>Qi\ );
    L52 <=  ( L32 OR L33 OR L34 OR L35 OR L36 );
    L53 <=  ( L37 OR L38 OR L39 OR L40 OR L41 );
    L54 <=  ( L42 OR L43 OR L44 OR L45 OR L46 );
    L55 <=  ( L47 OR L48 OR L49 OR L50 OR L51 );
    \P<Qo\ <=  ( L52 OR L53 ) AFTER 6 ns;
    \P>Qo\ <=  ( L54 OR L55 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1000\ IS PORT(
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
END \74AS1000\;

ARCHITECTURE model OF \74AS1000\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1000A\ IS PORT(
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
END \74AS1000A\;

ARCHITECTURE model OF \74AS1000A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1004\ IS PORT(
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
END \74AS1004\;

ARCHITECTURE model OF \74AS1004\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 3 ns;
    O_B <= NOT ( I_B ) AFTER 3 ns;
    O_C <= NOT ( I_C ) AFTER 3 ns;
    O_D <= NOT ( I_D ) AFTER 3 ns;
    O_E <= NOT ( I_E ) AFTER 3 ns;
    O_F <= NOT ( I_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1004A\ IS PORT(
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
END \74AS1004A\;

ARCHITECTURE model OF \74AS1004A\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 3 ns;
    O_B <= NOT ( I_B ) AFTER 3 ns;
    O_C <= NOT ( I_C ) AFTER 3 ns;
    O_D <= NOT ( I_D ) AFTER 3 ns;
    O_E <= NOT ( I_E ) AFTER 3 ns;
    O_F <= NOT ( I_F ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1008\ IS PORT(
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
END \74AS1008\;

ARCHITECTURE model OF \74AS1008\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 4 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 4 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 4 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1008A\ IS PORT(
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
END \74AS1008A\;

ARCHITECTURE model OF \74AS1008A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 5 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 5 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 5 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1032\ IS PORT(
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
END \74AS1032\;

ARCHITECTURE model OF \74AS1032\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 5 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 5 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 5 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1032A\ IS PORT(
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
END \74AS1032A\;

ARCHITECTURE model OF \74AS1032A\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 5 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 5 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 5 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1034\ IS PORT(
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
END \74AS1034\;

ARCHITECTURE model OF \74AS1034\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 5 ns;
    O_B <=  ( I_B ) AFTER 5 ns;
    O_C <=  ( I_C ) AFTER 6 ns;
    O_D <=  ( I_D ) AFTER 5 ns;
    O_E <=  ( I_E ) AFTER 5 ns;
    O_F <=  ( I_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1034A\ IS PORT(
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
END \74AS1034A\;

ARCHITECTURE model OF \74AS1034A\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 5 ns;
    O_B <=  ( I_B ) AFTER 5 ns;
    O_C <=  ( I_C ) AFTER 6 ns;
    O_D <=  ( I_D ) AFTER 5 ns;
    O_E <=  ( I_E ) AFTER 5 ns;
    O_F <=  ( I_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1036\ IS PORT(
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
END \74AS1036\;

ARCHITECTURE model OF \74AS1036\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 3 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1036A\ IS PORT(
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
END \74AS1036A\;

ARCHITECTURE model OF \74AS1036A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 3 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1181\ IS PORT(
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
END \74AS1181\;

ARCHITECTURE model OF \74AS1181\ IS
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
    L1 <= NOT ( N5 );
    L2 <= NOT ( N7 );
    L3 <= NOT ( N9 );
    L4 <= NOT ( N11 );
    L5 <=  ( N5 AND N1 AND N6 );
    L6 <=  ( N6 AND N2 AND L1 );
    L7 <=  ( L1 AND N3 );
    L8 <=  ( N4 AND N5 );
    L9 <=  ( N7 AND N1 AND N8 );
    L10 <=  ( N8 AND N2 AND L2 );
    L11 <=  ( L2 AND N3 );
    L12 <=  ( N4 AND N7 );
    L13 <=  ( N9 AND N1 AND N10 );
    L14 <=  ( N10 AND N2 AND L3 );
    L15 <=  ( L3 AND N3 );
    L16 <=  ( N4 AND N9 );
    L17 <=  ( N11 AND N1 AND N12 );
    L18 <=  ( N12 AND N2 AND L4 );
    L19 <=  ( L4 AND N3 );
    L20 <=  ( N4 AND N11 );
    L21 <= NOT ( L5 OR L6 );
    L22 <= NOT ( L7 OR L8 OR N6 );
    L23 <= NOT ( L9 OR L10 );
    L24 <= NOT ( L11 OR L12 OR N8 );
    L25 <= NOT ( L13 OR L14 );
    L26 <= NOT ( L15 OR L16 OR N10 );
    L27 <= NOT ( L17 OR L18 );
    L28 <= NOT ( L19 OR L20 OR N12 );
    L29 <=  ( L21 XOR L22 );
    L30 <=  ( L23 XOR L24 );
    L31 <=  ( L25 XOR L26 );
    L32 <=  ( L27 XOR L28 );
    L33 <=  ( L21 AND L24 );
    L34 <=  ( L21 AND L23 AND L26 );
    L35 <=  ( L21 AND L23 AND L25 AND L28 );
    L36 <=  ( L21 AND L23 AND L25 AND L27 AND CN );
    L37 <=  ( CN AND L27 AND L25 AND L23 AND N13 );
    L38 <=  ( L25 AND L23 AND L28 AND N13 );
    L39 <=  ( L23 AND L26 AND N13 );
    L40 <=  ( L24 AND N13 );
    L41 <=  ( CN AND L27 AND L25 AND N13 );
    L42 <=  ( L25 AND L28 AND N13 );
    L43 <=  ( L26 AND N13 );
    L44 <=  ( CN AND L27 AND N13 );
    L45 <=  ( L28 AND N13 );
    L46 <= NOT ( CN AND N13 );
    L47 <= NOT ( L37 OR L38 OR L39 OR L40 );
    L48 <= NOT ( L41 OR L42 OR L43 );
    L49 <= NOT ( L44 OR L45 );
    N1 <=  ( S3 ) AFTER 3 ns;
    N2 <=  ( S2 ) AFTER 3 ns;
    N3 <=  ( S1 ) AFTER 3 ns;
    N4 <=  ( S0 ) AFTER 3 ns;
    N5 <=  ( B3 ) AFTER 1 ns;
    N6 <=  ( A3 ) AFTER 1 ns;
    N7 <=  ( B2 ) AFTER 1 ns;
    N8 <=  ( A2 ) AFTER 1 ns;
    N9 <=  ( B1 ) AFTER 1 ns;
    N10 <=  ( A1 ) AFTER 1 ns;
    N11 <=  ( B0 ) AFTER 1 ns;
    N12 <=  ( A0 ) AFTER 1 ns;
    N13 <= NOT ( M ) AFTER 4 ns;
    N14 <=  ( L22 OR L33 OR L34 OR L35 ) AFTER 5 ns;
    G <= NOT ( N14 ) AFTER 2 ns;
    \CN+4\ <=  ( N14 OR L36 ) AFTER 7 ns;
    P <= NOT ( L21 AND L23 AND L25 AND L27 ) AFTER 6 ns;
    N18 <=  ( L29 XOR L47 ) AFTER 7 ns;
    F3 <= N18;
    N17 <=  ( L30 XOR L48 ) AFTER 7 ns;
    F2 <= N17;
    N16 <=  ( L31 XOR L49 ) AFTER 7 ns;
    F1 <= N16;
    N15 <=  ( L32 XOR L46 ) AFTER 7 ns;
    F0 <= N15;
    \A=B\ <=  ( N18 AND N17 AND N16 AND N15 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1804\ IS PORT(
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
END \74AS1804\;

ARCHITECTURE model OF \74AS1804\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 4 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 4 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 4 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 4 ns;
    O_E <= NOT ( I0_E AND I1_E ) AFTER 4 ns;
    O_F <= NOT ( I0_F AND I1_F ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1805\ IS PORT(
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
END \74AS1805\;

ARCHITECTURE model OF \74AS1805\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 4 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 4 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 4 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 4 ns;
    O_E <= NOT ( I0_E OR I1_E ) AFTER 4 ns;
    O_F <= NOT ( I0_F OR I1_F ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1808\ IS PORT(
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
END \74AS1808\;

ARCHITECTURE model OF \74AS1808\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 6 ns;
    O_D <=  ( I0_D AND I1_D ) AFTER 6 ns;
    O_E <=  ( I0_E AND I1_E ) AFTER 6 ns;
    O_F <=  ( I0_F AND I1_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS1832\ IS PORT(
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
END \74AS1832\;

ARCHITECTURE model OF \74AS1832\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 6 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 6 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 6 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 6 ns;
    O_E <=  ( I0_E OR I1_E ) AFTER 6 ns;
    O_F <=  ( I0_F OR I1_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS2620\ IS PORT(
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
END \74AS2620\;

ARCHITECTURE model OF \74AS2620\ IS
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
    N1 <= NOT ( A1 ) AFTER 6 ns;
    N2 <= NOT ( A2 ) AFTER 6 ns;
    N3 <= NOT ( A3 ) AFTER 6 ns;
    N4 <= NOT ( A4 ) AFTER 6 ns;
    N5 <= NOT ( A5 ) AFTER 6 ns;
    N6 <= NOT ( A6 ) AFTER 6 ns;
    N7 <= NOT ( A7 ) AFTER 6 ns;
    N8 <= NOT ( A8 ) AFTER 6 ns;
    N9 <= NOT ( B1 ) AFTER 6 ns;
    N10 <= NOT ( B2 ) AFTER 6 ns;
    N11 <= NOT ( B3 ) AFTER 6 ns;
    N12 <= NOT ( B4 ) AFTER 6 ns;
    N13 <= NOT ( B5 ) AFTER 6 ns;
    N14 <= NOT ( B6 ) AFTER 6 ns;
    N15 <= NOT ( B7 ) AFTER 6 ns;
    N16 <= NOT ( B8 ) AFTER 6 ns;
    TSB_381 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_382 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_383 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_384 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_385 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_386 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_387 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_388 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8 ns, tfall_i1_o=>8 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_389 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A1 , i1=>N9 , en=>L1 );
    TSB_390 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A2 , i1=>N10 , en=>L1 );
    TSB_391 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A3 , i1=>N11 , en=>L1 );
    TSB_392 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A4 , i1=>N12 , en=>L1 );
    TSB_393 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A5 , i1=>N13 , en=>L1 );
    TSB_394 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A6 , i1=>N14 , en=>L1 );
    TSB_395 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A7 , i1=>N15 , en=>L1 );
    TSB_396 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>10 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A8 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS2623\ IS PORT(
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
END \74AS2623\;

ARCHITECTURE model OF \74AS2623\ IS
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
    N1 <=  ( A1 ) AFTER 7 ns;
    N2 <=  ( A2 ) AFTER 7 ns;
    N3 <=  ( A3 ) AFTER 7 ns;
    N4 <=  ( A4 ) AFTER 7 ns;
    N5 <=  ( A5 ) AFTER 7 ns;
    N6 <=  ( A6 ) AFTER 7 ns;
    N7 <=  ( A7 ) AFTER 7 ns;
    N8 <=  ( A8 ) AFTER 7 ns;
    N9 <=  ( B1 ) AFTER 7 ns;
    N10 <=  ( B2 ) AFTER 7 ns;
    N11 <=  ( B3 ) AFTER 7 ns;
    N12 <=  ( B4 ) AFTER 7 ns;
    N13 <=  ( B5 ) AFTER 7 ns;
    N14 <=  ( B6 ) AFTER 7 ns;
    N15 <=  ( B7 ) AFTER 7 ns;
    N16 <=  ( B8 ) AFTER 7 ns;
    TSB_397 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_398 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_399 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_400 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_401 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_402 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_403 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_404 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_405 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A1 , i1=>N9 , en=>L1 );
    TSB_406 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A2 , i1=>N10 , en=>L1 );
    TSB_407 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A3 , i1=>N11 , en=>L1 );
    TSB_408 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A4 , i1=>N12 , en=>L1 );
    TSB_409 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A5 , i1=>N13 , en=>L1 );
    TSB_410 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A6 , i1=>N14 , en=>L1 );
    TSB_411 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A7 , i1=>N15 , en=>L1 );
    TSB_412 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A8 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS2640\ IS PORT(
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
END \74AS2640\;

ARCHITECTURE model OF \74AS2640\ IS
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
    N1 <= NOT ( A1 ) AFTER 7 ns;
    N2 <= NOT ( A2 ) AFTER 7 ns;
    N3 <= NOT ( A3 ) AFTER 7 ns;
    N4 <= NOT ( A4 ) AFTER 7 ns;
    N5 <= NOT ( A5 ) AFTER 7 ns;
    N6 <= NOT ( A6 ) AFTER 7 ns;
    N7 <= NOT ( A7 ) AFTER 7 ns;
    N8 <= NOT ( A8 ) AFTER 7 ns;
    N9 <= NOT ( B8 ) AFTER 7 ns;
    N10 <= NOT ( B7 ) AFTER 7 ns;
    N11 <= NOT ( B6 ) AFTER 7 ns;
    N12 <= NOT ( B5 ) AFTER 7 ns;
    N13 <= NOT ( B4 ) AFTER 7 ns;
    N14 <= NOT ( B3 ) AFTER 7 ns;
    N15 <= NOT ( B2 ) AFTER 7 ns;
    N16 <= NOT ( B1 ) AFTER 7 ns;
    TSB_413 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_414 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_415 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_416 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_417 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_418 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_419 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_420 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_421 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_422 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_423 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_424 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_425 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_426 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_427 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_428 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>9 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74AS2645\ IS PORT(
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
END \74AS2645\;

ARCHITECTURE model OF \74AS2645\ IS
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
    N1 <=  ( A1 ) AFTER 9 ns;
    N2 <=  ( A2 ) AFTER 9 ns;
    N3 <=  ( A3 ) AFTER 9 ns;
    N4 <=  ( A4 ) AFTER 9 ns;
    N5 <=  ( A5 ) AFTER 9 ns;
    N6 <=  ( A6 ) AFTER 9 ns;
    N7 <=  ( A7 ) AFTER 9 ns;
    N8 <=  ( A8 ) AFTER 9 ns;
    N9 <=  ( B8 ) AFTER 9 ns;
    N10 <=  ( B7 ) AFTER 9 ns;
    N11 <=  ( B6 ) AFTER 9 ns;
    N12 <=  ( B5 ) AFTER 9 ns;
    N13 <=  ( B4 ) AFTER 9 ns;
    N14 <=  ( B3 ) AFTER 9 ns;
    N15 <=  ( B2 ) AFTER 9 ns;
    N16 <=  ( B1 ) AFTER 9 ns;
    TSB_429 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_430 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_431 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_432 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_433 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_434 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_435 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_436 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_437 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_438 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_439 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_440 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_441 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_442 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_443 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_444 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;

