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
-- File:			FCT.VHD
-- Resource:	Integrated Device Technology (IDT), High Performance Logic,
--					1994 Data Book
-- Delay units:		Picoseconds
-- Characteristics:	74FCTXXX MIN/MAX, Vcc=5V +/-0.5 V TA @ 0C to 70C

-- Rev Notes:
--		v7.00.01 - Fixed components with Px port names.  



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT138\ IS PORT(
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
END \74FCT138\;

ARCHITECTURE model OF \74FCT138\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 3000 ps;
    N2 <=  ( B ) AFTER 3000 ps;
    N3 <=  ( C ) AFTER 3000 ps;
    N4 <= NOT ( A ) AFTER 3000 ps;
    N5 <= NOT ( B ) AFTER 3000 ps;
    N6 <= NOT ( C ) AFTER 3000 ps;
    N7 <= NOT ( G1 ) AFTER 3000 ps;
    L1 <= NOT ( N7 OR G2A OR G2B );
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

ENTITY \74FCT138A\ IS PORT(
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
END \74FCT138A\;

ARCHITECTURE model OF \74FCT138A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 3000 ps;
    N2 <=  ( B ) AFTER 3000 ps;
    N3 <=  ( C ) AFTER 3000 ps;
    N4 <= NOT ( A ) AFTER 3000 ps;
    N5 <= NOT ( B ) AFTER 3000 ps;
    N6 <= NOT ( C ) AFTER 3000 ps;
    N7 <= NOT ( G1 ) AFTER 3000 ps;
    L1 <= NOT ( N7 OR G2A OR G2B );
    Y0 <= NOT ( L1 AND N4 AND N5 AND N6 ) AFTER 2000 ps;
    Y1 <= NOT ( L1 AND N1 AND N5 AND N6 ) AFTER 2000 ps;
    Y2 <= NOT ( L1 AND N2 AND N4 AND N6 ) AFTER 2000 ps;
    Y3 <= NOT ( L1 AND N1 AND N2 AND N6 ) AFTER 2000 ps;
    Y4 <= NOT ( L1 AND N3 AND N4 AND N5 ) AFTER 2000 ps;
    Y5 <= NOT ( L1 AND N1 AND N3 AND N5 ) AFTER 2000 ps;
    Y6 <= NOT ( L1 AND N2 AND N3 AND N4 ) AFTER 2000 ps;
    Y7 <= NOT ( L1 AND N1 AND N2 AND N3 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT139\ IS PORT(
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
END \74FCT139\;

ARCHITECTURE model OF \74FCT139\ IS
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
    N1 <= NOT ( G_A ) AFTER 4000 ps;
    N2 <=  ( A_A ) AFTER 5000 ps;
    N3 <=  ( B_A ) AFTER 5000 ps;
    N4 <= NOT ( A_A ) AFTER 5000 ps;
    N5 <= NOT ( B_A ) AFTER 5000 ps;
    N6 <= NOT ( G_B ) AFTER 4000 ps;
    N7 <=  ( A_B ) AFTER 5000 ps;
    N8 <=  ( B_B ) AFTER 5000 ps;
    N9 <= NOT ( A_B ) AFTER 5000 ps;
    N10 <= NOT ( B_B ) AFTER 5000 ps;
    Y0_A <= NOT ( N1 AND N4 AND N5 ) AFTER 3000 ps;
    Y1_A <= NOT ( N1 AND N2 AND N5 ) AFTER 3000 ps;
    Y2_A <= NOT ( N1 AND N3 AND N4 ) AFTER 3000 ps;
    Y3_A <= NOT ( N1 AND N2 AND N3 ) AFTER 3000 ps;
    Y0_B <= NOT ( N6 AND N9 AND N10 ) AFTER 3000 ps;
    Y1_B <= NOT ( N6 AND N7 AND N10 ) AFTER 3000 ps;
    Y2_B <= NOT ( N6 AND N8 AND N9 ) AFTER 3000 ps;
    Y3_B <= NOT ( N6 AND N7 AND N8 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT139A\ IS PORT(
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
END \74FCT139A\;

ARCHITECTURE model OF \74FCT139A\ IS
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
    N1 <= NOT ( G_A ) AFTER 3000 ps;
    N2 <=  ( A_A ) AFTER 3000 ps;
    N3 <=  ( B_A ) AFTER 3000 ps;
    N4 <= NOT ( A_A ) AFTER 3000 ps;
    N5 <= NOT ( B_A ) AFTER 3000 ps;
    N6 <= NOT ( G_B ) AFTER 3000 ps;
    N7 <=  ( A_B ) AFTER 3000 ps;
    N8 <=  ( B_B ) AFTER 3000 ps;
    N9 <= NOT ( A_B ) AFTER 3000 ps;
    N10 <= NOT ( B_B ) AFTER 3000 ps;
    Y0_A <= NOT ( N1 AND N4 AND N5 ) AFTER 2000 ps;
    Y1_A <= NOT ( N1 AND N2 AND N5 ) AFTER 2000 ps;
    Y2_A <= NOT ( N1 AND N3 AND N4 ) AFTER 2000 ps;
    Y3_A <= NOT ( N1 AND N2 AND N3 ) AFTER 2000 ps;
    Y0_B <= NOT ( N6 AND N9 AND N10 ) AFTER 2000 ps;
    Y1_B <= NOT ( N6 AND N7 AND N10 ) AFTER 2000 ps;
    Y2_B <= NOT ( N6 AND N8 AND N9 ) AFTER 2000 ps;
    Y3_B <= NOT ( N6 AND N7 AND N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT161\ IS PORT(
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
END \74FCT161\;

ARCHITECTURE model OF \74FCT161\ IS
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
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 0 ps;
    RCO <=  ( N2 AND ENT ) AFTER 8000 ps;
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
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 4000 ps;
    QB <=  ( N4 ) AFTER 4000 ps;
    QC <=  ( N5 ) AFTER 4000 ps;
    QD <=  ( N6 ) AFTER 4000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT161A\ IS PORT(
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
END \74FCT161A\;

ARCHITECTURE model OF \74FCT161A\ IS
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
    N1 <=  ( ENP AND LOAD AND ENT ) AFTER 6000 ps;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 0 ps;
    RCO <=  ( N2 AND ENT ) AFTER 5000 ps;
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
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 3000 ps;
    QB <=  ( N4 ) AFTER 3000 ps;
    QC <=  ( N5 ) AFTER 3000 ps;
    QD <=  ( N6 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT163\ IS PORT(
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
END \74FCT163\;

ARCHITECTURE model OF \74FCT163\ IS
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
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 7000 ps;
    N2 <= NOT ( LOAD ) AFTER 7000 ps;
    N3 <= NOT ( CLR ) AFTER 2000 ps;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( N3 OR LOAD );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 0 ps;
    RCO <=  ( N4 AND ENT ) AFTER 8000 ps;
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
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 4000 ps;
    QB <=  ( N6 ) AFTER 4000 ps;
    QC <=  ( N7 ) AFTER 4000 ps;
    QD <=  ( N8 ) AFTER 4000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT163A\ IS PORT(
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
END \74FCT163A\;

ARCHITECTURE model OF \74FCT163A\ IS
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
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 6000 ps;
    N2 <= NOT ( LOAD ) AFTER 6000 ps;
    N3 <= NOT ( CLR ) AFTER 2000 ps;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( N3 OR LOAD );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 0 ps;
    RCO <=  ( N4 AND ENT ) AFTER 5000 ps;
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
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 2000 ps;
    QB <=  ( N6 ) AFTER 2000 ps;
    QC <=  ( N7 ) AFTER 2000 ps;
    QD <=  ( N8 ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT182A\ IS PORT(
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
END \74FCT182A\;

ARCHITECTURE model OF \74FCT182A\ IS
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
    N1 <= NOT ( CN ) AFTER 1000 ps;
    N2 <=  ( P3 ) AFTER 1000 ps;
    N3 <=  ( G3 ) AFTER 2000 ps;
    N4 <=  ( P2 ) AFTER 1000 ps;
    N5 <=  ( G2 ) AFTER 2000 ps;
    N6 <=  ( P1 ) AFTER 1000 ps;
    N7 <=  ( G1 ) AFTER 2000 ps;
    N8 <=  ( P0 ) AFTER 1000 ps;
    N9 <=  ( G0 ) AFTER 2000 ps;
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
    P <=  ( P1 OR P0 OR P3 OR P2 ) AFTER 8000 ps;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 9000 ps;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 7000 ps;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 7000 ps;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 7000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT182B\ IS PORT(
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
END \74FCT182B\;

ARCHITECTURE model OF \74FCT182B\ IS
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
    N1 <= NOT ( CN ) AFTER 1000 ps;
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
    P <=  ( P1 OR P0 OR P3 OR P2 ) AFTER 5000 ps;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 6000 ps;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 5000 ps;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 5000 ps;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 5000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT191\ IS PORT(
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
END \74FCT191\;

ARCHITECTURE model OF \74FCT191\ IS
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
    SIGNAL N16 : std_logic;

    BEGIN
    N1 <=  ( A ) AFTER 2000 ps;
    N2 <=  ( B ) AFTER 2000 ps;
    N3 <=  ( C ) AFTER 2000 ps;
    N4 <=  ( D ) AFTER 2000 ps;
    L1 <= NOT ( \D/U\\\ );
    L2 <= NOT ( G OR \D/U\\\ );
    L3 <= NOT ( L1 OR G );
    L4 <=  ( L1 AND N8 AND N10 AND N12 AND N14 );
    L5 <=  ( N9 AND N11 AND N13 AND N15 AND \D/U\\\ );
    L6 <= NOT ( N1 AND N7 );
    L7 <= NOT ( L6 AND N7 );
    L8 <= NOT ( N2 AND N7 );
    L9 <= NOT ( L8 AND N7 );
    L10 <= NOT ( N3 AND N7 );
    L11 <= NOT ( L10 AND N7 );
    L12 <= NOT ( N4 AND N7 );
    L13 <= NOT ( L12 AND N7 );
    L14 <=  ( L3 AND N9 );
    L15 <=  ( L2 AND N8 );
    L16 <=  ( L3 AND N9 AND N11 );
    L17 <=  ( L2 AND N8 AND N10 );
    L18 <=  ( L3 AND N9 AND N11 AND N13 );
    L19 <=  ( L2 AND N8 AND N10 AND N12 );
    L20 <= NOT ( G );
    L21 <=  ( L14 OR L15 );
    L22 <=  ( L16 OR L17 );
    L23 <=  ( L18 OR L19 );
    N5 <= NOT ( CLK ) AFTER 3000 ps;
    N6 <= NOT ( G ) AFTER 0 ps;
    N7 <= NOT ( LOAD ) AFTER 0 ps;
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N12 , qNot=>N13 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>N14 , qNot=>N15 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N16 <=  ( L4 OR L5 ) AFTER 12000 ps;
    \MX/MN\ <=  N16;
    RCO <= NOT ( N5 AND N6 AND N16 ) AFTER 10000 ps;
    QA <=  ( N8 ) AFTER 12000 ps;
    QB <=  ( N10 ) AFTER 12000 ps;
    QC <=  ( N12 ) AFTER 12000 ps;
    QD <=  ( N14 ) AFTER 12000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT191A\ IS PORT(
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
END \74FCT191A\;

ARCHITECTURE model OF \74FCT191A\ IS
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
    N1 <= NOT ( CLK ) AFTER 1000 ps;
    N2 <= NOT ( G ) AFTER 0 ps;
    N3 <= NOT ( LOAD ) AFTER 0 ps;
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N12 <=  ( L4 OR L5 ) AFTER 6000 ps;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 5000 ps;
    QA <=  ( N4 ) AFTER 5000 ps;
    QB <=  ( N6 ) AFTER 5000 ps;
    QC <=  ( N8 ) AFTER 5000 ps;
    QD <=  ( N10 ) AFTER 5000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT193\ IS PORT(
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
END \74FCT193\;

ARCHITECTURE model OF \74FCT193\ IS
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
    N1 <= NOT ( CLR ) AFTER 3000 ps;
    N2 <= NOT ( LOAD ) AFTER 0 ps;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ps;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ps;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ps;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ps;
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 3000 ps;
    CO <= NOT ( L2 AND N7 AND N9 AND N11 AND N13 ) AFTER 3000 ps;
    QA <=  ( N7 ) AFTER 7000 ps;
    QB <=  ( N9 ) AFTER 7000 ps;
    QC <=  ( N11 ) AFTER 7000 ps;
    QD <=  ( N13 ) AFTER 7000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT193A\ IS PORT(
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
END \74FCT193A\;

ARCHITECTURE model OF \74FCT193A\ IS
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
    N1 <= NOT ( CLR ) AFTER 0 ps;
    N2 <= NOT ( LOAD ) AFTER 0 ps;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ps;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ps;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ps;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ps;
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5000 ps, tfall_clk_q=>5000 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 1000 ps;
    CO <= NOT ( L2 AND N7 AND N9 AND N11 AND N13 ) AFTER 1000 ps;
    QA <=  ( N7 ) AFTER 3000 ps;
    QB <=  ( N9 ) AFTER 3000 ps;
    QC <=  ( N11 ) AFTER 3000 ps;
    QD <=  ( N13 ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT240\ IS PORT(
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
END \74FCT240\;

ARCHITECTURE model OF \74FCT240\ IS
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

ENTITY \74FCT240A\ IS PORT(
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
END \74FCT240A\;

ARCHITECTURE model OF \74FCT240A\ IS
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
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT241\ IS PORT(
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
END \74FCT241\;

ARCHITECTURE model OF \74FCT241\ IS
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
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT241A\ IS PORT(
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
END \74FCT241A\;

ARCHITECTURE model OF \74FCT241A\ IS
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
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT244\ IS PORT(
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
END \74FCT244\;

ARCHITECTURE model OF \74FCT244\ IS
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
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT244A\ IS PORT(
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
END \74FCT244A\;

ARCHITECTURE model OF \74FCT244A\ IS
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
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT245\ IS PORT(
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
END \74FCT245\;

ARCHITECTURE model OF \74FCT245\ IS
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
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT245A\ IS PORT(
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
END \74FCT245A\;

ARCHITECTURE model OF \74FCT245A\ IS
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
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>5000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT273\ IS PORT(
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
END \74FCT273\;

ARCHITECTURE model OF \74FCT273\ IS

    BEGIN
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT273A\ IS PORT(
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
END \74FCT273A\;

ARCHITECTURE model OF \74FCT273A\ IS

    BEGIN
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT373\ IS PORT(
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
END \74FCT373\;

ARCHITECTURE model OF \74FCT373\ IS
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
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT373A\ IS PORT(
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
END \74FCT373A\;

ARCHITECTURE model OF \74FCT373A\ IS
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
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4000 ps, tfall_clk_q=>4000 ps)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT374\ IS PORT(
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
END \74FCT374\;

ARCHITECTURE model OF \74FCT374\ IS
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
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT374A\ IS PORT(
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
END \74FCT374A\;

ARCHITECTURE model OF \74FCT374A\ IS
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
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT399\ IS PORT(
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
END \74FCT399\;

ARCHITECTURE model OF \74FCT399\ IS
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
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QA , d=>L10 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QB , d=>L11 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QC , d=>L12 , clk=>CLK );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QD , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT399A\ IS PORT(
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
END \74FCT399A\;

ARCHITECTURE model OF \74FCT399A\ IS
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
    N1 <= NOT ( WS ) AFTER 3000 ps;
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
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QA , d=>L10 , clk=>CLK );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QB , d=>L11 , clk=>CLK );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QC , d=>L12 , clk=>CLK );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>QD , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT521\ IS PORT(
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
END \74FCT521\;

ARCHITECTURE model OF \74FCT521\ IS
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
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT521A\ IS PORT(
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
END \74FCT521A\;

ARCHITECTURE model OF \74FCT521A\ IS
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
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT521B\ IS PORT(
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
END \74FCT521B\;

ARCHITECTURE model OF \74FCT521B\ IS
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
    \P=Q\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT533\ IS PORT(
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
END \74FCT533\;

ARCHITECTURE model OF \74FCT533\ IS
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
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_23 :  ORCAD_DLATCH 
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

ENTITY \74FCT533A\ IS PORT(
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
END \74FCT533A\;

ARCHITECTURE model OF \74FCT533A\ IS
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

ENTITY \74FCT534\ IS PORT(
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
END \74FCT534\;

ARCHITECTURE model OF \74FCT534\ IS
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
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
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

ENTITY \74FCT534A\ IS PORT(
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
END \74FCT534A\;

ARCHITECTURE model OF \74FCT534A\ IS
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


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT540\ IS PORT(
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
END \74FCT540\;

ARCHITECTURE model OF \74FCT540\ IS
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
    N1 <= NOT ( A1 ) AFTER 1500 ps;
    N2 <= NOT ( A2 ) AFTER 1500 ps;
    N3 <= NOT ( A3 ) AFTER 1500 ps;
    N4 <= NOT ( A4 ) AFTER 1500 ps;
    N5 <= NOT ( A5 ) AFTER 1500 ps;
    N6 <= NOT ( A6 ) AFTER 1500 ps;
    N7 <= NOT ( A7 ) AFTER 1500 ps;
    N8 <= NOT ( A8 ) AFTER 1500 ps;
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT541\ IS PORT(
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
END \74FCT541\;

ARCHITECTURE model OF \74FCT541\ IS
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
    N1 <=  ( A1 ) AFTER 1500 ps;
    N2 <=  ( A2 ) AFTER 1500 ps;
    N3 <=  ( A3 ) AFTER 1500 ps;
    N4 <=  ( A4 ) AFTER 1500 ps;
    N5 <=  ( A5 ) AFTER 1500 ps;
    N6 <=  ( A6 ) AFTER 1500 ps;
    N7 <=  ( A7 ) AFTER 1500 ps;
    N8 <=  ( A8 ) AFTER 1500 ps;
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT573\ IS PORT(
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
END \74FCT573\;

ARCHITECTURE model OF \74FCT573\ IS
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
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_35 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT573A\ IS PORT(
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
END \74FCT573A\;

ARCHITECTURE model OF \74FCT573A\ IS
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
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_43 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_44 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_45 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_46 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_47 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT574\ IS PORT(
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
END \74FCT574\;

ARCHITECTURE model OF \74FCT574\ IS
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
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT574A\ IS PORT(
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
END \74FCT574A\;

ARCHITECTURE model OF \74FCT574A\ IS
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
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT640\ IS PORT(
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
END \74FCT640\;

ARCHITECTURE model OF \74FCT640\ IS
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
    N9 <= NOT ( B8 ) AFTER 2000 ps;
    N10 <= NOT ( B7 ) AFTER 2000 ps;
    N11 <= NOT ( B6 ) AFTER 2000 ps;
    N12 <= NOT ( B5 ) AFTER 2000 ps;
    N13 <= NOT ( B4 ) AFTER 2000 ps;
    N14 <= NOT ( B3 ) AFTER 2000 ps;
    N15 <= NOT ( B2 ) AFTER 2000 ps;
    N16 <= NOT ( B1 ) AFTER 2000 ps;
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT640A\ IS PORT(
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
END \74FCT640A\;

ARCHITECTURE model OF \74FCT640A\ IS
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
    N9 <= NOT ( B8 ) AFTER 2000 ps;
    N10 <= NOT ( B7 ) AFTER 2000 ps;
    N11 <= NOT ( B6 ) AFTER 2000 ps;
    N12 <= NOT ( B5 ) AFTER 2000 ps;
    N13 <= NOT ( B4 ) AFTER 2000 ps;
    N14 <= NOT ( B3 ) AFTER 2000 ps;
    N15 <= NOT ( B2 ) AFTER 2000 ps;
    N16 <= NOT ( B1 ) AFTER 2000 ps;
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT645\ IS PORT(
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
END \74FCT645\;

ARCHITECTURE model OF \74FCT645\ IS
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
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT645A\ IS PORT(
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
END \74FCT645A\;

ARCHITECTURE model OF \74FCT645A\ IS
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
    N1 <=  ( A1 ) AFTER 2000 ps;
    N2 <=  ( A2 ) AFTER 2000 ps;
    N3 <=  ( A3 ) AFTER 2000 ps;
    N4 <=  ( A4 ) AFTER 2000 ps;
    N5 <=  ( A5 ) AFTER 2000 ps;
    N6 <=  ( A6 ) AFTER 2000 ps;
    N7 <=  ( A7 ) AFTER 2000 ps;
    N8 <=  ( A8 ) AFTER 2000 ps;
    N9 <=  ( B8 ) AFTER 2000 ps;
    N10 <=  ( B7 ) AFTER 2000 ps;
    N11 <=  ( B6 ) AFTER 2000 ps;
    N12 <=  ( B5 ) AFTER 2000 ps;
    N13 <=  ( B4 ) AFTER 2000 ps;
    N14 <=  ( B3 ) AFTER 2000 ps;
    N15 <=  ( B2 ) AFTER 2000 ps;
    N16 <=  ( B1 ) AFTER 2000 ps;
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT821A\ IS PORT(
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
END \74FCT821A\;

ARCHITECTURE model OF \74FCT821A\ IS
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
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>D9 , clk=>CLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>D10 , clk=>CLK );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT821B\ IS PORT(
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
END \74FCT821B\;

ARCHITECTURE model OF \74FCT821B\ IS
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
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>D9 , clk=>CLK );
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>D10 , clk=>CLK );
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT822A\ IS PORT(
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
END \74FCT822A\;

ARCHITECTURE model OF \74FCT822A\ IS
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
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>L10 , clk=>CLK );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>L11 , clk=>CLK );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT822B\ IS PORT(
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
END \74FCT822B\;

ARCHITECTURE model OF \74FCT822B\ IS
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
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_95 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>L10 , clk=>CLK );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>L11 , clk=>CLK );
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT823A\ IS PORT(
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
END \74FCT823A\;

ARCHITECTURE model OF \74FCT823A\ IS
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
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT823B\ IS PORT(
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
END \74FCT823B\;

ARCHITECTURE model OF \74FCT823B\ IS
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
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N11 , d=>D9 , clk=>N2 , cl=>CLR );
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT824A\ IS PORT(
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
END \74FCT824A\;

ARCHITECTURE model OF \74FCT824A\ IS
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
    L4 <= NOT ( D1 );
    L5 <= NOT ( D2 );
    L6 <= NOT ( D3 );
    L7 <= NOT ( D4 );
    L8 <= NOT ( D5 );
    L9 <= NOT ( D6 );
    L10 <= NOT ( D7 );
    L11 <= NOT ( D8 );
    L12 <= NOT ( D9 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>L4 , clk=>N2 , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>L5 , clk=>N2 , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>L6 , clk=>N2 , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>L7 , clk=>N2 , cl=>CLR );
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>N2 , cl=>CLR );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>L9 , clk=>N2 , cl=>CLR );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>L10 , clk=>N2 , cl=>CLR );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>L11 , clk=>N2 , cl=>CLR );
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N11 , d=>L12 , clk=>N2 , cl=>CLR );
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_289 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_290 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12000 ps, tfall_i1_o=>12000 ps, tpd_en_o=>7000 ps)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT824B\ IS PORT(
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
END \74FCT824B\;

ARCHITECTURE model OF \74FCT824B\ IS
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
    L4 <= NOT ( D1 );
    L5 <= NOT ( D2 );
    L6 <= NOT ( D3 );
    L7 <= NOT ( D4 );
    L8 <= NOT ( D5 );
    L9 <= NOT ( D6 );
    L10 <= NOT ( D7 );
    L11 <= NOT ( D8 );
    L12 <= NOT ( D9 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>L4 , clk=>N2 , cl=>CLR );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>L5 , clk=>N2 , cl=>CLR );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>L6 , clk=>N2 , cl=>CLR );
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>L7 , clk=>N2 , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>N2 , cl=>CLR );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>L9 , clk=>N2 , cl=>CLR );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>L10 , clk=>N2 , cl=>CLR );
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>L11 , clk=>N2 , cl=>CLR );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N11 , d=>L12 , clk=>N2 , cl=>CLR );
    TSB_291 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_292 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_293 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_294 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_295 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_296 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_297 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_298 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
    TSB_299 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q9 , i1=>N11 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT825A\ IS PORT(
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
END \74FCT825A\;

ARCHITECTURE model OF \74FCT825A\ IS
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
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_63 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_64 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_65 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_66 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_67 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    TSB_300 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_301 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_302 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_303 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_304 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_305 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_306 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_307 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT825B\ IS PORT(
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
END \74FCT825B\;

ARCHITECTURE model OF \74FCT825B\ IS
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
    DQFFC_68 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D1 , clk=>N2 , cl=>CLR );
    DQFFC_69 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D2 , clk=>N2 , cl=>CLR );
    DQFFC_70 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D3 , clk=>N2 , cl=>CLR );
    DQFFC_71 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D4 , clk=>N2 , cl=>CLR );
    DQFFC_72 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D5 , clk=>N2 , cl=>CLR );
    DQFFC_73 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D6 , clk=>N2 , cl=>CLR );
    DQFFC_74 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>D7 , clk=>N2 , cl=>CLR );
    DQFFC_75 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>D8 , clk=>N2 , cl=>CLR );
    TSB_308 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_309 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_310 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_311 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_312 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_313 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_314 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_315 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT826A\ IS PORT(
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
END \74FCT826A\;

ARCHITECTURE model OF \74FCT826A\ IS
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
    L1 <= NOT ( OC1 OR OC2 OR OC3 );
    L2 <= NOT ( N1 OR CLKEN );
    L3 <= NOT ( L2 );
    L4 <= NOT ( D1 );
    L5 <= NOT ( D2 );
    L6 <= NOT ( D3 );
    L7 <= NOT ( D4 );
    L8 <= NOT ( D5 );
    L9 <= NOT ( D6 );
    L10 <= NOT ( D7 );
    L11 <= NOT ( D8 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_76 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N3 , d=>L4 , clk=>N2 , cl=>CLR );
    DQFFC_77 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N4 , d=>L5 , clk=>N2 , cl=>CLR );
    DQFFC_78 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N5 , d=>L6 , clk=>N2 , cl=>CLR );
    DQFFC_79 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N6 , d=>L7 , clk=>N2 , cl=>CLR );
    DQFFC_80 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>N2 , cl=>CLR );
    DQFFC_81 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N8 , d=>L9 , clk=>N2 , cl=>CLR );
    DQFFC_82 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N9 , d=>L10 , clk=>N2 , cl=>CLR );
    DQFFC_83 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12000 ps, tfall_clk_q=>12000 ps)
      PORT MAP  (q=>N10 , d=>L11 , clk=>N2 , cl=>CLR );
    TSB_316 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_317 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_318 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_319 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_320 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_321 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_322 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_323 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>16000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT826B\ IS PORT(
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
END \74FCT826B\;

ARCHITECTURE model OF \74FCT826B\ IS
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
    L1 <= NOT ( OC1 OR OC2 OR OC3 );
    L2 <= NOT ( N1 OR CLKEN );
    L3 <= NOT ( L2 );
    L4 <= NOT ( D1 );
    L5 <= NOT ( D2 );
    L6 <= NOT ( D3 );
    L7 <= NOT ( D4 );
    L8 <= NOT ( D5 );
    L9 <= NOT ( D6 );
    L10 <= NOT ( D7 );
    L11 <= NOT ( D8 );
    N1 <=  ( L3 AND CLK ) AFTER 0 ps;
    N2 <=  ( L2 AND CLK ) AFTER 0 ps;
    DQFFC_84 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>L4 , clk=>N2 , cl=>CLR );
    DQFFC_85 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>L5 , clk=>N2 , cl=>CLR );
    DQFFC_86 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>L6 , clk=>N2 , cl=>CLR );
    DQFFC_87 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>L7 , clk=>N2 , cl=>CLR );
    DQFFC_88 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>L8 , clk=>N2 , cl=>CLR );
    DQFFC_89 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>L9 , clk=>N2 , cl=>CLR );
    DQFFC_90 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>L10 , clk=>N2 , cl=>CLR );
    DQFFC_91 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>L11 , clk=>N2 , cl=>CLR );
    TSB_324 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q1 , i1=>N3 , en=>L1 );
    TSB_325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q2 , i1=>N4 , en=>L1 );
    TSB_326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q3 , i1=>N5 , en=>L1 );
    TSB_327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q4 , i1=>N6 , en=>L1 );
    TSB_328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q5 , i1=>N7 , en=>L1 );
    TSB_329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q6 , i1=>N8 , en=>L1 );
    TSB_330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q7 , i1=>N9 , en=>L1 );
    TSB_331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>8000 ps)
      PORT MAP  (O=>Q8 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT827A\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT827A\;

ARCHITECTURE model OF \74FCT827A\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <=  ( D0 ) AFTER 1500 ps;
    N2 <=  ( D1 ) AFTER 1500 ps;
    N3 <=  ( D2 ) AFTER 1500 ps;
    N4 <=  ( D3 ) AFTER 1500 ps;
    N5 <=  ( D4 ) AFTER 1500 ps;
    N6 <=  ( D5 ) AFTER 1500 ps;
    N7 <=  ( D6 ) AFTER 1500 ps;
    N8 <=  ( D7 ) AFTER 1500 ps;
    N9 <=  ( D8 ) AFTER 1500 ps;
    N10 <=  ( D9 ) AFTER 1500 ps;
    TSB_332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_341 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT827B\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT827B\;

ARCHITECTURE model OF \74FCT827B\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <=  ( D0 ) AFTER 1500 ps;
    N2 <=  ( D1 ) AFTER 1500 ps;
    N3 <=  ( D2 ) AFTER 1500 ps;
    N4 <=  ( D3 ) AFTER 1500 ps;
    N5 <=  ( D4 ) AFTER 1500 ps;
    N6 <=  ( D5 ) AFTER 1500 ps;
    N7 <=  ( D6 ) AFTER 1500 ps;
    N8 <=  ( D7 ) AFTER 1500 ps;
    N9 <=  ( D8 ) AFTER 1500 ps;
    N10 <=  ( D9 ) AFTER 1500 ps;
    TSB_342 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_343 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_344 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_345 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_346 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_347 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_348 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_349 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_350 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_351 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT827C\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT827C\;

ARCHITECTURE model OF \74FCT827C\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <=  ( D0 ) AFTER 1500 ps;
    N2 <=  ( D1 ) AFTER 1500 ps;
    N3 <=  ( D2 ) AFTER 1500 ps;
    N4 <=  ( D3 ) AFTER 1500 ps;
    N5 <=  ( D4 ) AFTER 1500 ps;
    N6 <=  ( D5 ) AFTER 1500 ps;
    N7 <=  ( D6 ) AFTER 1500 ps;
    N8 <=  ( D7 ) AFTER 1500 ps;
    N9 <=  ( D8 ) AFTER 1500 ps;
    N10 <=  ( D9 ) AFTER 1500 ps;
    TSB_352 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_353 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_354 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_355 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_356 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_357 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_358 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_359 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_360 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_361 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT828A\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT828A\;

ARCHITECTURE model OF \74FCT828A\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <= NOT ( D0 ) AFTER 1500 ps;
    N2 <= NOT ( D1 ) AFTER 1500 ps;
    N3 <= NOT ( D2 ) AFTER 1500 ps;
    N4 <= NOT ( D3 ) AFTER 1500 ps;
    N5 <= NOT ( D4 ) AFTER 1500 ps;
    N6 <= NOT ( D5 ) AFTER 1500 ps;
    N7 <= NOT ( D6 ) AFTER 1500 ps;
    N8 <= NOT ( D7 ) AFTER 1500 ps;
    N9 <= NOT ( D8 ) AFTER 1500 ps;
    N10 <= NOT ( D9 ) AFTER 1500 ps;
    TSB_362 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_363 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_364 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_365 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_366 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_367 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_368 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_369 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_370 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_371 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT828B\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT828B\;

ARCHITECTURE model OF \74FCT828B\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <= NOT ( D0 ) AFTER 1500 ps;
    N2 <= NOT ( D1 ) AFTER 1500 ps;
    N3 <= NOT ( D2 ) AFTER 1500 ps;
    N4 <= NOT ( D3 ) AFTER 1500 ps;
    N5 <= NOT ( D4 ) AFTER 1500 ps;
    N6 <= NOT ( D5 ) AFTER 1500 ps;
    N7 <= NOT ( D6 ) AFTER 1500 ps;
    N8 <= NOT ( D7 ) AFTER 1500 ps;
    N9 <= NOT ( D8 ) AFTER 1500 ps;
    N10 <= NOT ( D9 ) AFTER 1500 ps;
    TSB_372 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_373 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_374 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_375 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_376 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_377 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_378 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_379 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_380 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_381 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT828C\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT828C\;

ARCHITECTURE model OF \74FCT828C\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <= NOT ( D0 ) AFTER 1500 ps;
    N2 <= NOT ( D1 ) AFTER 1500 ps;
    N3 <= NOT ( D2 ) AFTER 1500 ps;
    N4 <= NOT ( D3 ) AFTER 1500 ps;
    N5 <= NOT ( D4 ) AFTER 1500 ps;
    N6 <= NOT ( D5 ) AFTER 1500 ps;
    N7 <= NOT ( D6 ) AFTER 1500 ps;
    N8 <= NOT ( D7 ) AFTER 1500 ps;
    N9 <= NOT ( D8 ) AFTER 1500 ps;
    N10 <= NOT ( D9 ) AFTER 1500 ps;
    TSB_382 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_383 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_384 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_385 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_386 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_387 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_388 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_389 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_390 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_391 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT828D\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
D9 : INOUT  std_logic;
OE1 : IN  std_logic;
OE2 : IN  std_logic;
O0 : INOUT  std_logic;
O1 : INOUT  std_logic;
O2 : INOUT  std_logic;
O3 : INOUT  std_logic;
O4 : INOUT  std_logic;
O5 : INOUT  std_logic;
O6 : INOUT  std_logic;
O7 : INOUT  std_logic;
O8 : INOUT  std_logic;
O9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT828D\;

ARCHITECTURE model OF \74FCT828D\ IS
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
    L1 <= NOT ( OE1 OR OE2 );
    N1 <= NOT ( D0 ) AFTER 1500 ps;
    N2 <= NOT ( D1 ) AFTER 1500 ps;
    N3 <= NOT ( D2 ) AFTER 1500 ps;
    N4 <= NOT ( D3 ) AFTER 1500 ps;
    N5 <= NOT ( D4 ) AFTER 1500 ps;
    N6 <= NOT ( D5 ) AFTER 1500 ps;
    N7 <= NOT ( D6 ) AFTER 1500 ps;
    N8 <= NOT ( D7 ) AFTER 1500 ps;
    N9 <= NOT ( D8 ) AFTER 1500 ps;
    N10 <= NOT ( D9 ) AFTER 1500 ps;
    TSB_392 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_393 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_394 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_395 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_396 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_397 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_398 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_399 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_400 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_401 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT841A\ IS PORT(
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
END \74FCT841A\;

ARCHITECTURE model OF \74FCT841A\ IS
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
    DLATCH_48 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_49 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_50 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_51 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_52 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_53 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_54 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_55 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_56 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_57 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    TSB_402 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_403 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_404 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_405 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_406 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_407 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_408 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_409 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_410 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_411 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT841B\ IS PORT(
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
END \74FCT841B\;

ARCHITECTURE model OF \74FCT841B\ IS
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
    DLATCH_58 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_59 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_60 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_61 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_62 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_63 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_64 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_65 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_66 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_67 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    TSB_412 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_413 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_414 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_415 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_416 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_417 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_418 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_419 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_420 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_421 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT841C\ IS PORT(
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
END \74FCT841C\;

ARCHITECTURE model OF \74FCT841C\ IS
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
    DLATCH_68 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_69 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_70 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_71 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_72 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_73 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_74 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_75 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_76 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_77 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    TSB_422 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_423 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_424 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_425 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_426 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_427 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_428 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_429 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_430 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_431 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT842A\ IS PORT(
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
END \74FCT842A\;

ARCHITECTURE model OF \74FCT842A\ IS
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
    DLATCH_78 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_79 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_80 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_81 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_82 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_83 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_84 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_85 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_86 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_87 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_33 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_34 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_35 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_36 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_37 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_38 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_39 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_40 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    ITSB_41 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT842B\ IS PORT(
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
END \74FCT842B\;

ARCHITECTURE model OF \74FCT842B\ IS
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
    DLATCH_88 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_89 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_90 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_91 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_92 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_93 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_94 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_95 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_96 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_97 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8000 ps, tfall_clk_q=>8000 ps)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    ITSB_42 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_43 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_44 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_45 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_46 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_47 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_48 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_49 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_50 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    ITSB_51 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT843A\ IS PORT(
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
END \74FCT843A\;

ARCHITECTURE model OF \74FCT843A\ IS
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
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_432 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_433 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_434 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_435 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_436 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_437 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_438 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_439 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_440 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT843B\ IS PORT(
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
END \74FCT843B\;

ARCHITECTURE model OF \74FCT843B\ IS
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
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_16 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_17 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_441 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_442 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_443 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_444 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_445 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_446 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_447 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_448 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_449 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT844A\ IS PORT(
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
END \74FCT844A\;

ARCHITECTURE model OF \74FCT844A\ IS
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
    DLATCHPC_18 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_19 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_20 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_21 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_22 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_23 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_24 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_25 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_26 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_52 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_53 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_54 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_55 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_56 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_57 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_58 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_59 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_60 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT844B\ IS PORT(
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
END \74FCT844B\;

ARCHITECTURE model OF \74FCT844B\ IS
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
    DLATCHPC_27 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_28 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_29 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_30 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_31 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_32 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_33 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_34 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_35 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_61 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_62 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_63 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_64 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_65 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_66 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_67 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_68 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_69 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT845A\ IS PORT(
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
END \74FCT845A\;

ARCHITECTURE model OF \74FCT845A\ IS
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
    DLATCHPC_36 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_37 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_38 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_39 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_40 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_41 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_42 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_43 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_450 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_451 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_452 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_453 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_454 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_455 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_456 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_457 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>9000 ps, tpd_en_o=>23000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT845B\ IS PORT(
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
END \74FCT845B\;

ARCHITECTURE model OF \74FCT845B\ IS
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
    DLATCHPC_44 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_45 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_46 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_47 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_48 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_49 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_50 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_51 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_458 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_459 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_460 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_461 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_462 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_463 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_464 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_465 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>6000 ps, tpd_en_o=>14000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT846A\ IS PORT(
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
END \74FCT846A\;

ARCHITECTURE model OF \74FCT846A\ IS
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
    DLATCHPC_52 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_53 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_54 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_55 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_56 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_57 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_58 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_59 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10000 ps, tfall_clk_q=>10000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_70 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_71 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_72 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_73 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_74 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_75 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_76 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_77 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>14000 ps, tfall_i1_o=>14000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT846B\ IS PORT(
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
END \74FCT846B\;

ARCHITECTURE model OF \74FCT846B\ IS
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
    DLATCHPC_60 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_61 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_62 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_63 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_64 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_65 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_66 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_67 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_78 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_79 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_80 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_81 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_82 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_83 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_84 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_85 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT861A\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
A9 : INOUT  std_logic;
OEAB : IN  std_logic;
OEBA : IN  std_logic;
B0 : INOUT  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
B5 : INOUT  std_logic;
B6 : INOUT  std_logic;
B7 : INOUT  std_logic;
B8 : INOUT  std_logic;
B9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT861A\;

ARCHITECTURE model OF \74FCT861A\ IS
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
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA );
    L2 <= NOT ( OEAB );
    N1 <=  ( B0 ) AFTER 1500 ps;
    N2 <=  ( B1 ) AFTER 1500 ps;
    N3 <=  ( B2 ) AFTER 1500 ps;
    N4 <=  ( B3 ) AFTER 1500 ps;
    N5 <=  ( B4 ) AFTER 1500 ps;
    N6 <=  ( B5 ) AFTER 1500 ps;
    N7 <=  ( B6 ) AFTER 1500 ps;
    N8 <=  ( B7 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B9 ) AFTER 1500 ps;
    N11 <=  ( A9 ) AFTER 1500 ps;
    N12 <=  ( A8 ) AFTER 1500 ps;
    N13 <=  ( A7 ) AFTER 1500 ps;
    N14 <=  ( A6 ) AFTER 1500 ps;
    N15 <=  ( A5 ) AFTER 1500 ps;
    N16 <=  ( A4 ) AFTER 1500 ps;
    N17 <=  ( A3 ) AFTER 1500 ps;
    N18 <=  ( A2 ) AFTER 1500 ps;
    N19 <=  ( A1 ) AFTER 1500 ps;
    N20 <=  ( A0 ) AFTER 1500 ps;
    TSB_466 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_467 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_468 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_469 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_470 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_471 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_472 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_473 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_474 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_475 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A9 , i1=>N10 , en=>L1 );
    TSB_476 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B9 , i1=>N11 , en=>L2 );
    TSB_477 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N12 , en=>L2 );
    TSB_478 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N13 , en=>L2 );
    TSB_479 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N14 , en=>L2 );
    TSB_480 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N15 , en=>L2 );
    TSB_481 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N16 , en=>L2 );
    TSB_482 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N17 , en=>L2 );
    TSB_483 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N18 , en=>L2 );
    TSB_484 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N19 , en=>L2 );
    TSB_485 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B0 , i1=>N20 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT861B\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
A9 : INOUT  std_logic;
OEAB : IN  std_logic;
OEBA : IN  std_logic;
B0 : INOUT  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
B5 : INOUT  std_logic;
B6 : INOUT  std_logic;
B7 : INOUT  std_logic;
B8 : INOUT  std_logic;
B9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT861B\;

ARCHITECTURE model OF \74FCT861B\ IS
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
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA );
    L2 <= NOT ( OEAB );
    N1 <=  ( B0 ) AFTER 1500 ps;
    N2 <=  ( B1 ) AFTER 1500 ps;
    N3 <=  ( B2 ) AFTER 1500 ps;
    N4 <=  ( B3 ) AFTER 1500 ps;
    N5 <=  ( B4 ) AFTER 1500 ps;
    N6 <=  ( B5 ) AFTER 1500 ps;
    N7 <=  ( B6 ) AFTER 1500 ps;
    N8 <=  ( B7 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( B9 ) AFTER 1500 ps;
    N11 <=  ( A9 ) AFTER 1500 ps;
    N12 <=  ( A8 ) AFTER 1500 ps;
    N13 <=  ( A7 ) AFTER 1500 ps;
    N14 <=  ( A6 ) AFTER 1500 ps;
    N15 <=  ( A5 ) AFTER 1500 ps;
    N16 <=  ( A4 ) AFTER 1500 ps;
    N17 <=  ( A3 ) AFTER 1500 ps;
    N18 <=  ( A2 ) AFTER 1500 ps;
    N19 <=  ( A1 ) AFTER 1500 ps;
    N20 <=  ( A0 ) AFTER 1500 ps;
    TSB_486 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_487 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_488 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_489 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_490 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_491 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_492 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_493 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_494 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_495 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A9 , i1=>N10 , en=>L1 );
    TSB_496 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B9 , i1=>N11 , en=>L2 );
    TSB_497 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N12 , en=>L2 );
    TSB_498 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N13 , en=>L2 );
    TSB_499 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N14 , en=>L2 );
    TSB_500 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N15 , en=>L2 );
    TSB_501 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N16 , en=>L2 );
    TSB_502 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N17 , en=>L2 );
    TSB_503 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N18 , en=>L2 );
    TSB_504 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N19 , en=>L2 );
    TSB_505 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B0 , i1=>N20 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT862A\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
A9 : INOUT  std_logic;
OEAB : IN  std_logic;
OEBA : IN  std_logic;
B0 : INOUT  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
B5 : INOUT  std_logic;
B6 : INOUT  std_logic;
B7 : INOUT  std_logic;
B8 : INOUT  std_logic;
B9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT862A\;

ARCHITECTURE model OF \74FCT862A\ IS
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
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA );
    L2 <= NOT ( OEAB );
    N1 <= NOT ( B0 ) AFTER 8000 ps;
    N2 <= NOT ( B1 ) AFTER 8000 ps;
    N3 <= NOT ( B2 ) AFTER 8000 ps;
    N4 <= NOT ( B3 ) AFTER 8000 ps;
    N5 <= NOT ( B4 ) AFTER 8000 ps;
    N6 <= NOT ( B5 ) AFTER 8000 ps;
    N7 <= NOT ( B6 ) AFTER 8000 ps;
    N8 <= NOT ( B7 ) AFTER 8000 ps;
    N9 <= NOT ( B8 ) AFTER 8000 ps;
    N10 <= NOT ( B9 ) AFTER 8000 ps;
    N11 <= NOT ( A9 ) AFTER 8000 ps;
    N12 <= NOT ( A8 ) AFTER 8000 ps;
    N13 <= NOT ( A7 ) AFTER 8000 ps;
    N14 <= NOT ( A6 ) AFTER 8000 ps;
    N15 <= NOT ( A5 ) AFTER 8000 ps;
    N16 <= NOT ( A4 ) AFTER 8000 ps;
    N17 <= NOT ( A3 ) AFTER 8000 ps;
    N18 <= NOT ( A2 ) AFTER 8000 ps;
    N19 <= NOT ( A1 ) AFTER 8000 ps;
    N20 <= NOT ( A0 ) AFTER 8000 ps;
    TSB_506 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_507 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_508 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_509 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_510 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_511 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_512 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_513 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_514 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_515 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A9 , i1=>N10 , en=>L1 );
    TSB_516 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B9 , i1=>N11 , en=>L2 );
    TSB_517 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B8 , i1=>N12 , en=>L2 );
    TSB_518 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B7 , i1=>N13 , en=>L2 );
    TSB_519 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B6 , i1=>N14 , en=>L2 );
    TSB_520 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B5 , i1=>N15 , en=>L2 );
    TSB_521 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B4 , i1=>N16 , en=>L2 );
    TSB_522 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B3 , i1=>N17 , en=>L2 );
    TSB_523 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B2 , i1=>N18 , en=>L2 );
    TSB_524 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B1 , i1=>N19 , en=>L2 );
    TSB_525 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B0 , i1=>N20 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT862B\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
A9 : INOUT  std_logic;
OEAB : IN  std_logic;
OEBA : IN  std_logic;
B0 : INOUT  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
B5 : INOUT  std_logic;
B6 : INOUT  std_logic;
B7 : INOUT  std_logic;
B8 : INOUT  std_logic;
B9 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74FCT862B\;

ARCHITECTURE model OF \74FCT862B\ IS
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
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA );
    L2 <= NOT ( OEAB );
    N1 <= NOT ( B0 ) AFTER 6000 ps;
    N2 <= NOT ( B1 ) AFTER 6000 ps;
    N3 <= NOT ( B2 ) AFTER 6000 ps;
    N4 <= NOT ( B3 ) AFTER 6000 ps;
    N5 <= NOT ( B4 ) AFTER 6000 ps;
    N6 <= NOT ( B5 ) AFTER 6000 ps;
    N7 <= NOT ( B6 ) AFTER 6000 ps;
    N8 <= NOT ( B7 ) AFTER 6000 ps;
    N9 <= NOT ( B8 ) AFTER 6000 ps;
    N10 <= NOT ( B9 ) AFTER 6000 ps;
    N11 <= NOT ( A9 ) AFTER 6000 ps;
    N12 <= NOT ( A8 ) AFTER 6000 ps;
    N13 <= NOT ( A7 ) AFTER 6000 ps;
    N14 <= NOT ( A6 ) AFTER 6000 ps;
    N15 <= NOT ( A5 ) AFTER 6000 ps;
    N16 <= NOT ( A4 ) AFTER 6000 ps;
    N17 <= NOT ( A3 ) AFTER 6000 ps;
    N18 <= NOT ( A2 ) AFTER 6000 ps;
    N19 <= NOT ( A1 ) AFTER 6000 ps;
    N20 <= NOT ( A0 ) AFTER 6000 ps;
    TSB_526 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_527 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_528 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_529 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_530 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_531 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_532 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_533 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_534 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_535 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A9 , i1=>N10 , en=>L1 );
    TSB_536 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B9 , i1=>N11 , en=>L2 );
    TSB_537 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B8 , i1=>N12 , en=>L2 );
    TSB_538 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B7 , i1=>N13 , en=>L2 );
    TSB_539 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B6 , i1=>N14 , en=>L2 );
    TSB_540 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B5 , i1=>N15 , en=>L2 );
    TSB_541 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B4 , i1=>N16 , en=>L2 );
    TSB_542 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B3 , i1=>N17 , en=>L2 );
    TSB_543 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B2 , i1=>N18 , en=>L2 );
    TSB_544 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B1 , i1=>N19 , en=>L2 );
    TSB_545 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B0 , i1=>N20 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT863A\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
OEAB0 : INOUT  std_logic;
OEAB1 : IN  std_logic;
OEBA0 : IN  std_logic;
OEBA1 : INOUT  std_logic;
B0 : INOUT  std_logic;
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
END \74FCT863A\;

ARCHITECTURE model OF \74FCT863A\ IS
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
    SIGNAL N18 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA0 OR OEBA1 );
    L2 <= NOT ( OEAB1 OR OEAB0 );
    N1 <=  ( B0 ) AFTER 1500 ps;
    N2 <=  ( B1 ) AFTER 1500 ps;
    N3 <=  ( B2 ) AFTER 1500 ps;
    N4 <=  ( B3 ) AFTER 1500 ps;
    N5 <=  ( B4 ) AFTER 1500 ps;
    N6 <=  ( B5 ) AFTER 1500 ps;
    N7 <=  ( B6 ) AFTER 1500 ps;
    N8 <=  ( B7 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( A8 ) AFTER 1500 ps;
    N11 <=  ( A7 ) AFTER 1500 ps;
    N12 <=  ( A6 ) AFTER 1500 ps;
    N13 <=  ( A5 ) AFTER 1500 ps;
    N14 <=  ( A4 ) AFTER 1500 ps;
    N15 <=  ( A3 ) AFTER 1500 ps;
    N16 <=  ( A2 ) AFTER 1500 ps;
    N17 <=  ( A1 ) AFTER 1500 ps;
    N18 <=  ( A0 ) AFTER 1500 ps;
    TSB_546 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_547 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_548 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_549 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_550 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_551 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_552 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_553 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_554 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_555 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N10 , en=>L2 );
    TSB_556 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N11 , en=>L2 );
    TSB_557 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N12 , en=>L2 );
    TSB_558 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N13 , en=>L2 );
    TSB_559 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N14 , en=>L2 );
    TSB_560 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N15 , en=>L2 );
    TSB_561 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N16 , en=>L2 );
    TSB_562 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N17 , en=>L2 );
    TSB_563 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B0 , i1=>N18 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT863B\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
OEAB0 : INOUT  std_logic;
OEAB1 : IN  std_logic;
OEBA0 : IN  std_logic;
OEBA1 : INOUT  std_logic;
B0 : INOUT  std_logic;
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
END \74FCT863B\;

ARCHITECTURE model OF \74FCT863B\ IS
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
    SIGNAL N18 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA0 OR OEBA1 );
    L2 <= NOT ( OEAB1 OR OEAB0 );
    N1 <=  ( B0 ) AFTER 1500 ps;
    N2 <=  ( B1 ) AFTER 1500 ps;
    N3 <=  ( B2 ) AFTER 1500 ps;
    N4 <=  ( B3 ) AFTER 1500 ps;
    N5 <=  ( B4 ) AFTER 1500 ps;
    N6 <=  ( B5 ) AFTER 1500 ps;
    N7 <=  ( B6 ) AFTER 1500 ps;
    N8 <=  ( B7 ) AFTER 1500 ps;
    N9 <=  ( B8 ) AFTER 1500 ps;
    N10 <=  ( A8 ) AFTER 1500 ps;
    N11 <=  ( A7 ) AFTER 1500 ps;
    N12 <=  ( A6 ) AFTER 1500 ps;
    N13 <=  ( A5 ) AFTER 1500 ps;
    N14 <=  ( A4 ) AFTER 1500 ps;
    N15 <=  ( A3 ) AFTER 1500 ps;
    N16 <=  ( A2 ) AFTER 1500 ps;
    N17 <=  ( A1 ) AFTER 1500 ps;
    N18 <=  ( A0 ) AFTER 1500 ps;
    TSB_564 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_565 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_566 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_567 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_568 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_569 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_570 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_571 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_572 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_573 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N10 , en=>L2 );
    TSB_574 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N11 , en=>L2 );
    TSB_575 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N12 , en=>L2 );
    TSB_576 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N13 , en=>L2 );
    TSB_577 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N14 , en=>L2 );
    TSB_578 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N15 , en=>L2 );
    TSB_579 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N16 , en=>L2 );
    TSB_580 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N17 , en=>L2 );
    TSB_581 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B0 , i1=>N18 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT864A\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
OEAB0 : INOUT  std_logic;
OEAB1 : IN  std_logic;
OEBA0 : IN  std_logic;
OEBA1 : INOUT  std_logic;
B0 : INOUT  std_logic;
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
END \74FCT864A\;

ARCHITECTURE model OF \74FCT864A\ IS
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
    SIGNAL N18 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA0 OR OEBA1 );
    L2 <= NOT ( OEAB1 OR OEAB0 );
    N1 <= NOT ( B0 ) AFTER 8000 ps;
    N2 <= NOT ( B1 ) AFTER 8000 ps;
    N3 <= NOT ( B2 ) AFTER 8000 ps;
    N4 <= NOT ( B3 ) AFTER 8000 ps;
    N5 <= NOT ( B4 ) AFTER 8000 ps;
    N6 <= NOT ( B5 ) AFTER 8000 ps;
    N7 <= NOT ( B6 ) AFTER 8000 ps;
    N8 <= NOT ( B7 ) AFTER 8000 ps;
    N9 <= NOT ( B8 ) AFTER 8000 ps;
    N10 <= NOT ( A8 ) AFTER 8000 ps;
    N11 <= NOT ( A7 ) AFTER 8000 ps;
    N12 <= NOT ( A6 ) AFTER 8000 ps;
    N13 <= NOT ( A5 ) AFTER 8000 ps;
    N14 <= NOT ( A4 ) AFTER 8000 ps;
    N15 <= NOT ( A3 ) AFTER 8000 ps;
    N16 <= NOT ( A2 ) AFTER 8000 ps;
    N17 <= NOT ( A1 ) AFTER 8000 ps;
    N18 <= NOT ( A0 ) AFTER 8000 ps;
    TSB_582 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_583 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_584 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_585 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_586 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_587 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_588 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_589 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_590 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_591 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B8 , i1=>N10 , en=>L2 );
    TSB_592 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B7 , i1=>N11 , en=>L2 );
    TSB_593 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B6 , i1=>N12 , en=>L2 );
    TSB_594 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B5 , i1=>N13 , en=>L2 );
    TSB_595 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B4 , i1=>N14 , en=>L2 );
    TSB_596 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B3 , i1=>N15 , en=>L2 );
    TSB_597 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B2 , i1=>N16 , en=>L2 );
    TSB_598 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B1 , i1=>N17 , en=>L2 );
    TSB_599 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15000 ps, tfall_i1_o=>15000 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>B0 , i1=>N18 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74FCT864B\ IS PORT(
A0 : INOUT  std_logic;
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
A5 : INOUT  std_logic;
A6 : INOUT  std_logic;
A7 : INOUT  std_logic;
A8 : INOUT  std_logic;
OEAB0 : INOUT  std_logic;
OEAB1 : IN  std_logic;
OEBA0 : IN  std_logic;
OEBA1 : INOUT  std_logic;
B0 : INOUT  std_logic;
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
END \74FCT864B\;

ARCHITECTURE model OF \74FCT864B\ IS
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
    SIGNAL N18 : std_logic;

    BEGIN
    L1 <= NOT ( OEBA0 OR OEBA1 );
    L2 <= NOT ( OEAB1 OR OEAB0 );
    N1 <= NOT ( B0 ) AFTER 6000 ps;
    N2 <= NOT ( B1 ) AFTER 6000 ps;
    N3 <= NOT ( B2 ) AFTER 6000 ps;
    N4 <= NOT ( B3 ) AFTER 6000 ps;
    N5 <= NOT ( B4 ) AFTER 6000 ps;
    N6 <= NOT ( B5 ) AFTER 6000 ps;
    N7 <= NOT ( B6 ) AFTER 6000 ps;
    N8 <= NOT ( B7 ) AFTER 6000 ps;
    N9 <= NOT ( B8 ) AFTER 6000 ps;
    N10 <= NOT ( A8 ) AFTER 6000 ps;
    N11 <= NOT ( A7 ) AFTER 6000 ps;
    N12 <= NOT ( A6 ) AFTER 6000 ps;
    N13 <= NOT ( A5 ) AFTER 6000 ps;
    N14 <= NOT ( A4 ) AFTER 6000 ps;
    N15 <= NOT ( A3 ) AFTER 6000 ps;
    N16 <= NOT ( A2 ) AFTER 6000 ps;
    N17 <= NOT ( A1 ) AFTER 6000 ps;
    N18 <= NOT ( A0 ) AFTER 6000 ps;
    TSB_600 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A0 , i1=>N1 , en=>L1 );
    TSB_601 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L1 );
    TSB_602 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A2 , i1=>N3 , en=>L1 );
    TSB_603 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A3 , i1=>N4 , en=>L1 );
    TSB_604 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A4 , i1=>N5 , en=>L1 );
    TSB_605 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A5 , i1=>N6 , en=>L1 );
    TSB_606 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A6 , i1=>N7 , en=>L1 );
    TSB_607 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A7 , i1=>N8 , en=>L1 );
    TSB_608 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_609 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B8 , i1=>N10 , en=>L2 );
    TSB_610 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B7 , i1=>N11 , en=>L2 );
    TSB_611 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B6 , i1=>N12 , en=>L2 );
    TSB_612 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B5 , i1=>N13 , en=>L2 );
    TSB_613 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B4 , i1=>N14 , en=>L2 );
    TSB_614 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B3 , i1=>N15 , en=>L2 );
    TSB_615 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B2 , i1=>N16 , en=>L2 );
    TSB_616 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B1 , i1=>N17 , en=>L2 );
    TSB_617 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>8000 ps, tfall_i1_o=>8000 ps, tpd_en_o=>6000 ps)
      PORT MAP  (O=>B0 , i1=>N18 , en=>L2 );
END model;

