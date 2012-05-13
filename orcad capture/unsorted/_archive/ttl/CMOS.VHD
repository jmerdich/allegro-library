--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************


-- Purpose:		OrCAD VHDL Source File
-- Version:		v7.00
-- Date:			December 10, 1996
-- File:			CMOS.VHD
-- Resource:	National Semiconductor, CMOS Logic Databook, 1988, Rev. 1
-- Delay units:	  Nanoseconds
-- Characteristics: CD4000C TYP/MAX, Vcc=5V +/-0.5 V

-- Unless otherwise stated, the delays for the
-- following devices are
-- Tplh & Tphl for "Typ"  5V, 25 deg C, 15pf
--                 "Max"  5V, -40 to +85 deg c, 50pf

USE work.orcad_prims.all;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4000\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\1C\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\2C\ : IN  std_logic;
Y : IN  std_logic;
\1X\ : OUT  std_logic;
\2X\ : OUT  std_logic;
\Y\\\ : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4000\;

ARCHITECTURE model OF \4000\ IS

    BEGIN
    \1X\ <= NOT ( \1A\ OR \1B\ OR \1C\ ) AFTER 80 NS;
    \2X\ <= NOT ( \2A\ OR \2B\ OR \2C\ ) AFTER 80 NS;
    \Y\\\ <= NOT ( Y ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4001\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4001\;

ARCHITECTURE model OF \4001\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 80 NS;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 80 NS;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 80 NS;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4002\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4002\;

ARCHITECTURE model OF \4002\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A OR I3_A ) AFTER 80 NS;
    O_B <= NOT ( I0_B OR I1_B OR I2_B OR I3_B ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4009\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4009\;

ARCHITECTURE model OF \4009\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 70 NS;
    O_B <= NOT ( I_B ) AFTER 70 NS;
    O_C <= NOT ( I_C ) AFTER 70 NS;
    O_D <= NOT ( I_D ) AFTER 70 NS;
    O_E <= NOT ( I_E ) AFTER 70 NS;
    O_F <= NOT ( I_F ) AFTER 70 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4010\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4010\;

ARCHITECTURE model OF \4010\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 130 NS;
    O_B <=  ( I_B ) AFTER 130 NS;
    O_C <=  ( I_C ) AFTER 130 NS;
    O_D <=  ( I_D ) AFTER 130 NS;
    O_E <=  ( I_E ) AFTER 130 NS;
    O_F <=  ( I_F ) AFTER 130 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4011\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4011\;

ARCHITECTURE model OF \4011\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 80 NS;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 80 NS;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 80 NS;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4012\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4012\;

ARCHITECTURE model OF \4012\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 80 NS;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4013\ IS PORT(
D_A : IN  std_logic;
D_B : IN  std_logic;
CLK_A : IN  std_logic;
CLK_B : IN  std_logic;
Q_A : OUT  std_logic;
Q_B : OUT  std_logic;
\Q\\_A\ : OUT  std_logic;
\Q\\_B\ : OUT  std_logic;
VDD : IN  std_logic;
S_A : IN  std_logic;
S_B : IN  std_logic;
VSS : IN  std_logic;
R_A : IN  std_logic;
R_B : IN  std_logic);
END \4013\;

ARCHITECTURE model OF \4013\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( S_A );
    L2 <= NOT ( S_B );
    L3 <= NOT ( R_A );
    L4 <= NOT ( R_B );
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>260 NS, tfall_clk_q=>260 NS)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>L1 , cl=>L3 );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>260 NS, tfall_clk_q=>260 NS)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>L2 , cl=>L4 );
END model;



LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4019\ IS PORT(
A1 : IN  std_logic;
B1 : IN  std_logic;
A2 : IN  std_logic;
B2 : IN  std_logic;
A3 : IN  std_logic;
B3 : IN  std_logic;
A4 : IN  std_logic;
B4 : IN  std_logic;
G1 : IN  std_logic;
G2 : IN  std_logic;
D1 : OUT  std_logic;
D2 : OUT  std_logic;
D3 : OUT  std_logic;
D4 : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4019\;

ARCHITECTURE model OF \4019\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1 <=  ( A4 AND G2 );
    L2 <=  ( B4 AND G1 );
    L3 <=  ( A3 AND G2 );
    L4 <=  ( B3 AND G1 );
    L5 <=  ( A2 AND G2 );
    L6 <=  ( B2 AND G1 );
    L7 <=  ( A1 AND G2 );
    L8 <=  ( B1 AND G1 );
    D4 <=  ( L1 OR L2 ) AFTER 260 NS;
    D3 <=  ( L3 OR L4 ) AFTER 260 NS;
    D2 <=  ( L5 OR L6 ) AFTER 260 NS;
    D1 <=  ( L7 OR L8 ) AFTER 260 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4023\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4023\;

ARCHITECTURE model OF \4023\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 80 NS;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 80 NS;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4025\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4025\;

ARCHITECTURE model OF \4025\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 80 NS;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 80 NS;
    O_C <= NOT ( I0_C OR I1_C OR I2_C ) AFTER 80 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4027\ IS PORT(
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
VDD : IN  std_logic;
S_A : IN  std_logic;
S_B : IN  std_logic;
VSS : IN  std_logic;
R_A : IN  std_logic;
R_B : IN  std_logic);
END \4027\;

ARCHITECTURE model OF \4027\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( S_B );
    L2 <= NOT ( R_B );
    L3 <= NOT ( S_A );
    L4 <= NOT ( R_A );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>260 NS, tfall_clk_q=>260 NS)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>CLK_B , pr=>L1 , cl=>L2 );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>260 NS, tfall_clk_q=>260 NS)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>CLK_A , pr=>L3 , cl=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4028\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic;
Q9 : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4028\;

ARCHITECTURE model OF \4028\ IS
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

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <= NOT ( C );
    L4 <= NOT ( D );
    L5 <= NOT ( A OR B );
    L6 <= NOT ( L1 OR B );
    L7 <= NOT ( A OR L2 );
    L8 <= NOT ( L1 OR L2 );
    L9 <= NOT ( C OR D );
    L10 <= NOT ( L3 OR D );
    L11 <= NOT ( C OR L4 );
    Q0 <=  ( L5 AND L9 ) AFTER 310 NS;
    Q1 <=  ( L6 AND L9 ) AFTER 310 NS;
    Q2 <=  ( L7 AND L9 ) AFTER 310 NS;
    Q3 <=  ( L8 AND L9 ) AFTER 310 NS;
    Q4 <=  ( L5 AND L10 ) AFTER 310 NS;
    Q5 <=  ( L6 AND L10 ) AFTER 310 NS;
    Q6 <=  ( L7 AND L10 ) AFTER 310 NS;
    Q7 <=  ( L8 AND L10 ) AFTER 310 NS;
    Q8 <=  ( L5 AND L11 ) AFTER 310 NS;
    Q9 <=  ( L6 AND L11 ) AFTER 310 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4030\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4030\;

ARCHITECTURE model OF \4030\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 240 NS;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 240 NS;
    O_C <= NOT ( I0_C XOR I1_C ) AFTER 240 NS;
    O_D <= NOT ( I0_D XOR I1_D ) AFTER 240 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4041\ IS PORT(
AIN : IN  std_logic;
BIN : IN  std_logic;
CIN : IN  std_logic;
DIN : IN  std_logic;
AOUT : OUT  std_logic;
\A\\O\\U\\T\\\ : OUT  std_logic;
BOUT : OUT  std_logic;
\B\\O\\U\\T\\\ : OUT  std_logic;
COUT : OUT  std_logic;
\C\\O\\U\\T\\\ : OUT  std_logic;
DOUT : OUT  std_logic;
\D\\O\\U\\T\\\ : OUT  std_logic);
END \4041\;

ARCHITECTURE model OF \4041\ IS

    BEGIN
    AOUT <=  ( AIN ) AFTER 104 NS;
    BOUT <=  ( BIN ) AFTER 104 NS;
    COUT <=  ( CIN ) AFTER 104 NS;
    DOUT <=  ( DIN ) AFTER 104 NS;
    \A\\O\\U\\T\\\ <= NOT ( AIN ) AFTER 104 NS;
    \B\\O\\U\\T\\\ <= NOT ( BIN ) AFTER 104 NS;
    \C\\O\\U\\T\\\ <= NOT ( CIN ) AFTER 104 NS;
    \D\\O\\U\\T\\\ <= NOT ( DIN ) AFTER 104 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4049\ IS PORT(
P2 : OUT  std_logic;
P3 : IN  std_logic;
P4 : OUT  std_logic;
P5 : IN  std_logic;
P6 : OUT  std_logic;
P7 : IN  std_logic;
P9 : IN  std_logic;
P10 : OUT  std_logic;
P11 : IN  std_logic;
P12 : OUT  std_logic;
P14 : IN  std_logic;
P15 : OUT  std_logic);
END \4049\;

ARCHITECTURE model OF \4049\ IS

    BEGIN
    P2 <= NOT ( P3 ) AFTER 88 NS;
    P4 <= NOT ( P5 ) AFTER 88 NS;
    P6 <= NOT ( P7 ) AFTER 88 NS;
    P10 <= NOT ( P9 ) AFTER 88 NS;
    P12 <= NOT ( P11 ) AFTER 88 NS;
    P15 <= NOT ( P14 ) AFTER 88 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4050\ IS PORT(
P2 : OUT  std_logic;
P3 : IN  std_logic;
P4 : OUT  std_logic;
P5 : IN  std_logic;
P6 : OUT  std_logic;
P7 : IN  std_logic;
P9 : IN  std_logic;
P10 : OUT  std_logic;
P11 : IN  std_logic;
P12 : OUT  std_logic;
P14 : IN  std_logic;
P15 : OUT  std_logic);
END \4050\;

ARCHITECTURE model OF \4050\ IS

    BEGIN
    P2 <=  ( P3 ) AFTER 108 NS;
    P4 <=  ( P5 ) AFTER 108 NS;
    P6 <=  ( P7 ) AFTER 108 NS;
    P10 <=  ( P9 ) AFTER 108 NS;
    P12 <=  ( P11 ) AFTER 108 NS;
    P15 <=  ( P14 ) AFTER 108 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4063\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
\A>Bi\ : IN  std_logic;
\A=Bi\ : IN  std_logic;
\A<Bi\ : IN  std_logic;
\A>Bo\ : OUT  std_logic;
\A=Bo\ : OUT  std_logic;
\A<Bo\ : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4063\;

ARCHITECTURE model OF \4063\ IS
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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <= NOT ( A3 XOR B3 ) AFTER 250 NS;
    N2 <= NOT ( A2 XOR B2 ) AFTER 250 NS;
    N3 <= NOT ( A1 XOR B1 ) AFTER 250 NS;
    N4 <= NOT ( A0 XOR B0 ) AFTER 250 NS;
    L1 <= NOT ( B3 );
    L2 <=  ( A3 OR L1 );
    L3 <= NOT ( B2 );
    L4 <=  ( A2 OR L3 );
    L5 <= NOT ( B1 );
    L6 <=  ( A1 OR L5 );
    L7 <= NOT ( B0 );
    L8 <=  ( A0 OR L7 );
    L9 <= NOT ( A3 );
    L10 <=  ( B3 OR L9 );
    L11 <= NOT ( A2 );
    L12 <=  ( B2 OR L11 );
    L13 <= NOT ( A1 );
    L14 <=  ( B1 OR L13 );
    L15 <= NOT ( A0 );
    L16 <=  ( B0 OR L15 );
    L17 <= NOT ( \A<Bi\ );
    L18 <= NOT ( \A>Bi\ );
    L19 <=  ( N1 OR L4 );
    L20 <=  ( N1 OR N2 OR L6 );
    L21 <=  ( N1 OR N2 OR N3 OR L8 );
    L22 <=  ( N1 OR N2 OR N3 OR N4 OR L17 );
    L23 <=  ( N1 OR L12 );
    L24 <=  ( N1 OR N2 OR L14 );
    L25 <=  ( N1 OR N2 OR N3 OR L16 );
    L26 <=  ( N1 OR N2 OR N3 OR N4 OR L18 );
    L27 <=  ( L2 AND L19 AND L20 AND L21 AND L22 );
    L28 <=  ( L10 AND L23 AND L24 AND L25 AND L26 );
    \A<Bo\ <= NOT ( L27 ) AFTER 960 NS;
    \A=Bo\ <=  ( L27 AND \A=Bi\ AND L28 ) AFTER 960 NS;
    \A>Bo\ <= NOT ( L28 ) AFTER 960 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4068\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
K : OUT  std_logic;
J : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4068\;

ARCHITECTURE model OF \4068\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 );
    K <= NOT ( L1 ) AFTER 260 NS;
    J <=  ( L1 ) AFTER 260 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4069\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4069\;

ARCHITECTURE model OF \4069\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 70 NS;
    O_B <= NOT ( I_B ) AFTER 70 NS;
    O_C <= NOT ( I_C ) AFTER 70 NS;
    O_D <= NOT ( I_D ) AFTER 70 NS;
    O_E <= NOT ( I_E ) AFTER 70 NS;
    O_F <= NOT ( I_F ) AFTER 70 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4071\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4071\;

ARCHITECTURE model OF \4071\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 210 NS;
    O_B <=  ( I0_B OR I1_B ) AFTER 210 NS;
    O_C <=  ( I0_C OR I1_C ) AFTER 210 NS;
    O_D <=  ( I0_D OR I1_D ) AFTER 210 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4072\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4072\;

ARCHITECTURE model OF \4072\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A OR I2_A OR I3_A ) AFTER 210 NS;
    O_B <=  ( I0_B OR I1_B OR I2_B OR I3_B ) AFTER 210 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4073\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4073\;

ARCHITECTURE model OF \4073\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 210 NS;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 210 NS;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 210 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4075\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4075\;

ARCHITECTURE model OF \4075\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A OR I2_A ) AFTER 210 NS;
    O_B <=  ( I0_B OR I1_B OR I2_B ) AFTER 210 NS;
    O_C <=  ( I0_C OR I1_C OR I2_C ) AFTER 210 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4076\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
DDA : IN  std_logic;
DDB : IN  std_logic;
CLK : IN  std_logic;
ODA : IN  std_logic;
ODB : IN  std_logic;
RST : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4076\;

ARCHITECTURE model OF \4076\ IS
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

    BEGIN
    L16 <= NOT ( DDA OR DDB );
    L1 <= NOT ( ODA OR ODB );
    L2 <= NOT ( RST );
    L3 <= NOT ( L16 );
    L4 <=  ( N2 AND L3 );
    L5 <=  ( D0 AND L16 );
    L6 <=  ( L4 OR L5 );
    L7 <=  ( N3 AND L3 );
    L8 <=  ( D1 AND L16 );
    L9 <=  ( L7 OR L8 );
    L10 <=  ( N4 AND L3 );
    L11 <=  ( D2 AND L16 );
    L12 <=  ( L10 OR L11 );
    L13 <=  ( N5 AND L3 );
    L14 <=  ( D3 AND L16 );
    L15 <=  ( L13 OR L14 );
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>190 NS, tfall_clk_q=>190 NS)
      PORT MAP  (q=>N2 , d=>L6 , clk=>CLK , cl=>L2 );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>190 NS, tfall_clk_q=>190 NS)
      PORT MAP  (q=>N3 , d=>L9 , clk=>CLK , cl=>L2 );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>190 NS, tfall_clk_q=>190 NS)
      PORT MAP  (q=>N4 , d=>L12 , clk=>CLK , cl=>L2 );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>190 NS, tfall_clk_q=>190 NS)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>L2 );
    N6 <=  ( N2 ) AFTER 350 NS;
    N7 <=  ( N3 ) AFTER 350 NS;
    N8 <=  ( N4 ) AFTER 350 NS;
    N9 <=  ( N5 ) AFTER 350 NS;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>300 NS, tfall_i1_o=>300 NS, tpd_en_o=>300 NS)
      PORT MAP  (O=>Q0 , i1=>N6 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>300 NS, tfall_i1_o=>300 NS, tpd_en_o=>300 NS)
      PORT MAP  (O=>Q1 , i1=>N7 , en=>L1 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>300 NS, tfall_i1_o=>300 NS, tpd_en_o=>300 NS)
      PORT MAP  (O=>Q2 , i1=>N8 , en=>L1 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>300 NS, tfall_i1_o=>300 NS, tpd_en_o=>300 NS)
      PORT MAP  (O=>Q3 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4077\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4077\;

ARCHITECTURE model OF \4077\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 240 NS;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 240 NS;
    O_C <= NOT ( I0_C XOR I1_C ) AFTER 240 NS;
    O_D <= NOT ( I0_D XOR I1_D ) AFTER 240 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4078\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
K : OUT  std_logic;
J : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4078\;

ARCHITECTURE model OF \4078\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <= NOT ( I0 OR I1 OR I2 OR I3 OR I4 OR I5 OR I6 OR I7 );
    K <= NOT ( L1 ) AFTER 260 NS;
    J <=  ( L1 ) AFTER 260 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4081\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4081\;

ARCHITECTURE model OF \4081\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 210 NS;
    O_B <=  ( I0_B AND I1_B ) AFTER 210 NS;
    O_C <=  ( I0_C AND I1_C ) AFTER 210 NS;
    O_D <=  ( I0_D AND I1_D ) AFTER 210 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4082\ IS PORT(
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
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4082\;

ARCHITECTURE model OF \4082\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 210 NS;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 210 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4085\ IS PORT(
INH_A : IN  std_logic;
INH_B : IN  std_logic;
A_A : IN  std_logic;
A_B : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
C_A : IN  std_logic;
C_B : IN  std_logic;
D_A : IN  std_logic;
D_B : IN  std_logic;
OUT_A : OUT  std_logic;
OUT_B : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4085\;

ARCHITECTURE model OF \4085\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( A_A AND B_A ) AFTER 180 NS;
    N2 <=  ( C_A AND D_A ) AFTER 180 NS;
    N3 <=  ( A_B AND B_B ) AFTER 180 NS;
    N4 <=  ( C_B AND D_B ) AFTER 180 NS;
    OUT_A <= NOT ( N1 OR N2 OR INH_A ) AFTER 460 NS;
    OUT_B <= NOT ( N3 OR N4 OR INH_B ) AFTER 460 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4086\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
\I/E\\\ : IN  std_logic;
\EN/E\\X\\\ : IN  std_logic;
J : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4086\;

ARCHITECTURE model OF \4086\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( \I/E\\\ ) AFTER 60 NS;
    N2 <= NOT ( \EN/E\\X\\\ ) AFTER 60 NS;
    N3 <=  ( A AND B ) AFTER 210 NS;
    N4 <=  ( C AND D ) AFTER 210 NS;
    N5 <=  ( E AND F ) AFTER 210 NS;
    N6 <=  ( G AND H ) AFTER 210 NS;
    J <= NOT ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 ) AFTER 400 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4095\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
J3 : IN  std_logic;
CLK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
K3 : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VDD : IN  std_logic;
S : IN  std_logic;
VSS : IN  std_logic;
R : IN  std_logic);
END \4095\;

ARCHITECTURE model OF \4095\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( J1 AND J2 AND J3 );
    L2 <=  ( K1 AND K2 AND K3 );
    L3 <= NOT ( S );
    L4 <= NOT ( R );
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>460 NS, tfall_clk_q=>460 NS)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , j=>L1 , k=>L2 , clk=>CLK , pr=>L3 , cl=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4096\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
J3 : IN  std_logic;
CLK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
K3 : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VDD : IN  std_logic;
S : IN  std_logic;
VSS : IN  std_logic;
R : IN  std_logic);
END \4096\;

ARCHITECTURE model OF \4096\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <= NOT ( J3 );
    L2 <= NOT ( K3 );
    L3 <= NOT ( S );
    L4 <= NOT ( R );
    L5 <=  ( J1 AND J2 AND L1 );
    L6 <=  ( K1 AND K2 AND L2 );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>460 NS, tfall_clk_q=>460 NS)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , j=>L5 , k=>L6 , clk=>CLK , pr=>L3 , cl=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4502\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
OD : IN  std_logic;
INH : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4502\;

ARCHITECTURE model OF \4502\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( OD );
    N1 <= NOT ( D1 OR INH ) AFTER 340 NS;
    N2 <= NOT ( D2 OR INH ) AFTER 340 NS;
    N3 <= NOT ( D3 OR INH ) AFTER 340 NS;
    N4 <= NOT ( D4 OR INH ) AFTER 340 NS;
    N5 <= NOT ( D5 OR INH ) AFTER 340 NS;
    N6 <= NOT ( D6 OR INH ) AFTER 340 NS;
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>250 NS, tfall_i1_o=>220 NS, tpd_en_o=>250 NS)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>250 NS, tfall_i1_o=>220 NS, tpd_en_o=>250 NS)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>250 NS, tfall_i1_o=>220 NS, tpd_en_o=>250 NS)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>250 NS, tfall_i1_o=>220 NS, tpd_en_o=>250 NS)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>250 NS, tfall_i1_o=>220 NS, tpd_en_o=>250 NS)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>250 NS, tfall_i1_o=>220 NS, tpd_en_o=>250 NS)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \4503\ IS PORT(
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
DA : IN  std_logic;
DB : IN  std_logic;
O1 : OUT  std_logic;
O2 : OUT  std_logic;
O3 : OUT  std_logic;
O4 : OUT  std_logic;
O5 : OUT  std_logic;
O6 : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4503\;

ARCHITECTURE model OF \4503\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( DA );
    L2 <= NOT ( DB );
    N1 <=  ( I1 ) AFTER 132 NS;
    N2 <=  ( I2 ) AFTER 132 NS;
    N3 <=  ( I3 ) AFTER 132 NS;
    N4 <=  ( I4 ) AFTER 132 NS;
    N5 <=  ( I5 ) AFTER 132 NS;
    N6 <=  ( I6 ) AFTER 132 NS;
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>180 NS, tfall_i1_o=>140 NS, tpd_en_o=>180 NS)
      PORT MAP  (O=>O1 , i1=>N1 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>180 NS, tfall_i1_o=>140 NS, tpd_en_o=>180 NS)
      PORT MAP  (O=>O2 , i1=>N2 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>180 NS, tfall_i1_o=>140 NS, tpd_en_o=>180 NS)
      PORT MAP  (O=>O3 , i1=>N3 , en=>L1 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>180 NS, tfall_i1_o=>140 NS, tpd_en_o=>180 NS)
      PORT MAP  (O=>O4 , i1=>N4 , en=>L1 );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>180 NS, tfall_i1_o=>140 NS, tpd_en_o=>180 NS)
      PORT MAP  (O=>O5 , i1=>N5 , en=>L2 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>180 NS, tfall_i1_o=>140 NS, tpd_en_o=>180 NS)
      PORT MAP  (O=>O6 , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4532\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
EIN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
EO : OUT  std_logic;
GS : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4532\;

ARCHITECTURE model OF \4532\ IS
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

    BEGIN
    L1 <= NOT ( D1 );
    L2 <= NOT ( D2 );
    L3 <= NOT ( D3 );
    L4 <= NOT ( D4 );
    L5 <= NOT ( D5 );
    L6 <= NOT ( D6 );
    L7 <= NOT ( D7 );
    L8 <=  ( L1 OR D2 OR D4 OR D6 );
    L9 <=  ( D6 OR D4 OR L3 );
    L10 <=  ( D6 OR L5 );
    L11 <=  ( L2 OR D4 OR D5 );
    L12 <=  ( L3 OR D4 OR D5 );
    N1 <= NOT ( D7 OR D6 OR D5 OR D4 ) AFTER 120 NS;
    N2 <= NOT ( D3 OR D2 OR D1 OR D0 ) AFTER 220 NS;
    N3 <= NOT ( L8 AND L9 AND L10 AND L7 ) AFTER 220 NS;
    N4 <= NOT ( L11 AND L12 AND L6 AND L7 ) AFTER 220 NS;
    N5 <= NOT ( L4 AND L5 AND L6 AND L7 ) AFTER 220 NS;
    L13 <= NOT ( N1 AND N2 );
    EO <=  ( N1 AND N2 AND EIN ) AFTER 180 NS;
    N7 <=  ( EIN ) AFTER 120 NS;
    Q0 <=  ( N3 AND N7 ) AFTER 180 NS;
    Q1 <=  ( N4 AND N7 ) AFTER 180 NS;
    Q2 <=  ( N5 AND N7 ) AFTER 180 NS;
    GS <=  ( L13 AND EIN ) AFTER 180 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4555\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
E_A : IN  std_logic;
E_B : IN  std_logic;
Q0_A : OUT  std_logic;
Q0_B : OUT  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4555\;

ARCHITECTURE model OF \4555\ IS
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
    L1 <= NOT ( E_A );
    N1 <= NOT ( A_A ) AFTER 40 NS;
    N2 <= NOT ( B_A ) AFTER 40 NS;
    N3 <=  ( A_A ) AFTER 40 NS;
    N4 <=  ( B_A ) AFTER 40 NS;
    Q0_A <=  ( N1 AND N2 AND L1 ) AFTER 360 NS;
    Q1_A <=  ( N3 AND N2 AND L1 ) AFTER 360 NS;
    Q2_A <=  ( N1 AND N4 AND L1 ) AFTER 360 NS;
    Q3_A <=  ( N3 AND N4 AND L1 ) AFTER 360 NS;
    L2 <= NOT ( E_B );
    N5 <= NOT ( A_B ) AFTER 40 NS;
    N6 <= NOT ( B_B ) AFTER 40 NS;
    N7 <=  ( A_B ) AFTER 40 NS;
    N8 <=  ( B_B ) AFTER 40 NS;
    Q0_B <=  ( N5 AND N6 AND L2 ) AFTER 360 NS;
    Q1_B <=  ( N7 AND N6 AND L2 ) AFTER 360 NS;
    Q2_B <=  ( N5 AND N8 AND L2 ) AFTER 360 NS;
    Q3_B <=  ( N7 AND N8 AND L2 ) AFTER 360 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4556\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
E_A : IN  std_logic;
E_B : IN  std_logic;
Q0_A : OUT  std_logic;
Q0_B : OUT  std_logic;
Q1_A : OUT  std_logic;
Q1_B : OUT  std_logic;
Q2_A : OUT  std_logic;
Q2_B : OUT  std_logic;
Q3_A : OUT  std_logic;
Q3_B : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4556\;

ARCHITECTURE model OF \4556\ IS
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
    L1 <= NOT ( E_A );
    N1 <= NOT ( A_A ) AFTER 40 NS;
    N2 <= NOT ( B_A ) AFTER 40 NS;
    N3 <=  ( A_A ) AFTER 40 NS;
    N4 <=  ( B_A ) AFTER 40 NS;
    Q0_A <= NOT ( N1 AND N2 AND L1 ) AFTER 360 NS;
    Q1_A <= NOT ( N3 AND N2 AND L1 ) AFTER 360 NS;
    Q2_A <= NOT ( N1 AND N4 AND L1 ) AFTER 360 NS;
    Q3_A <= NOT ( N3 AND N4 AND L1 ) AFTER 360 NS;
    L2 <= NOT ( E_B );
    N5 <= NOT ( A_B ) AFTER 40 NS;
    N6 <= NOT ( B_B ) AFTER 40 NS;
    N7 <=  ( A_B ) AFTER 40 NS;
    N8 <=  ( B_B ) AFTER 40 NS;
    Q0_B <= NOT ( N5 AND N6 AND L2 ) AFTER 360 NS;
    Q1_B <= NOT ( N7 AND N6 AND L2 ) AFTER 360 NS;
    Q2_B <= NOT ( N5 AND N8 AND L2 ) AFTER 360 NS;
    Q3_B <= NOT ( N7 AND N8 AND L2 ) AFTER 360 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \4585\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
\A>Bi\ : IN  std_logic;
\A=Bi\ : IN  std_logic;
\A<Bi\ : IN  std_logic;
\A<Bo\ : OUT  std_logic;
\A=Bo\ : OUT  std_logic;
\A>Bo\ : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \4585\;

ARCHITECTURE model OF \4585\ IS
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

    BEGIN
    N1 <= NOT ( A3 XOR B3 ) AFTER 200 NS;
    N2 <= NOT ( A2 XOR B2 ) AFTER 200 NS;
    N3 <= NOT ( A1 XOR B1 ) AFTER 200 NS;
    N4 <= NOT ( A0 XOR B0 ) AFTER 200 NS;
    L1 <= NOT ( B3 );
    L2 <= NOT ( B2 );
    L3 <= NOT ( B1 );
    L4 <= NOT ( B0 );
    L5 <= NOT ( \A<Bi\ );
    L6 <= NOT ( \A=Bi\ );
    L7 <= NOT ( \A>Bi\ );
    N5 <= NOT ( A3 OR L1 ) AFTER 200 NS;
    N6 <=  ( A2 OR L2 ) AFTER 200 NS;
    N7 <=  ( A1 OR L3 ) AFTER 200 NS;
    N8 <=  ( A0 OR L4 ) AFTER 200 NS;
    L8 <= NOT ( N1 OR N6 );
    L9 <= NOT ( N1 OR N2 OR N7 );
    L10 <= NOT ( N1 OR N2 OR N3 OR N8 );
    L11 <= NOT ( N1 OR N2 OR N3 OR N4 OR L5 );
    L12 <= NOT ( N1 OR N2 OR N3 OR N4 OR L6 );
    \A<Bo\ <=  ( N5 OR L8 OR L9 OR L10 OR L11 ) AFTER 360 NS;
    \A=Bo\ <=  ( L12 ) AFTER 360 NS;
    \A>Bo\ <= NOT ( L12 OR N5 OR L8 OR L9 OR L10 OR L11 OR L7 ) AFTER 360 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \40101\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
D9 : IN  std_logic;
INH : IN  std_logic;
EVE : OUT  std_logic;
ODD : OUT  std_logic;
VDD : IN  std_logic;
VSS : IN  std_logic);
END \40101\;

ARCHITECTURE model OF \40101\ IS
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

    BEGIN
    L1 <= NOT ( D1 XOR D2 );
    L2 <= NOT ( D3 XOR D4 );
    L3 <= NOT ( D5 XOR D6 );
    L4 <= NOT ( D7 XOR D8 );
    L6 <= NOT ( L1 XOR L2 );
    L7 <= NOT ( L3 XOR L4 );
    L8 <= NOT ( L6 XOR L7 );
    L5 <= NOT ( D9 );
    L9 <= NOT ( INH );
    N1 <= NOT ( L8 XOR L5 ) AFTER 420 NS;
    L10 <= NOT ( N1 );
    EVE <=  ( N1 AND L9 ) AFTER 240 NS;
    ODD <=  ( L10 AND L9 ) AFTER 240 NS;
END model;


