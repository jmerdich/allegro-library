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
-- File:			ACT.VHD
-- Resource:	  Motorola, FACT Data, Q4/93, DL138, REV 3
-- Delay units:	  Picoseconds 
-- Characteristics: 74ACTXXXX MIN/MAX, Vcc=5V +/-0.5 V

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Added components 05, 08, 10, 11, 112, 113, 125, 126,
--				 132, 14, 20, 273, 646, and 648.




LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT00\ IS PORT(
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
END \74ACT00\;

ARCHITECTURE model OF \74ACT00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2000 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2000 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2000 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT02\ IS PORT(
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
END \74ACT02\;

ARCHITECTURE model OF \74ACT02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT04\ IS PORT(
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
END \74ACT04\;

ARCHITECTURE model OF \74ACT04\ IS

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

ENTITY \74ACT05\ IS PORT(
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
END \74ACT05\;

ARCHITECTURE model OF \74ACT05\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( I_A ) AFTER 1500 ps;
    N2 <= NOT ( I_B ) AFTER 1500 ps;
    N3 <= NOT ( I_C ) AFTER 1500 ps;
    N4 <= NOT ( I_D ) AFTER 1500 ps;
    N5 <= NOT ( I_E ) AFTER 1500 ps;
    N6 <= NOT ( I_F ) AFTER 1500 ps;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>0 ps, tfall_i1_o=>0 ps, tpd_en_o=>0 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>I_A );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>0 ps, tfall_i1_o=>0 ps, tpd_en_o=>0 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>I_B );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>0 ps, tfall_i1_o=>0 ps, tpd_en_o=>0 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>I_C );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>0 ps, tfall_i1_o=>0 ps, tpd_en_o=>0 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>I_D );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>0 ps, tfall_i1_o=>0 ps, tpd_en_o=>0 ps)
      PORT MAP  (O=>O_E , i1=>N5 , en=>I_E );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>0 ps, tfall_i1_o=>0 ps, tpd_en_o=>0 ps)
      PORT MAP  (O=>O_F , i1=>N6 , en=>I_F );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT08\ IS PORT(
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
END \74ACT08\;

ARCHITECTURE model OF \74ACT08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C AND I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D AND I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT10\ IS PORT(
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
END \74ACT10\;

ARCHITECTURE model OF \74ACT10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <= NOT ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT11\ IS PORT(
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
END \74ACT11\;

ARCHITECTURE model OF \74ACT11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 1500 ps;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 1500 ps;
    O_C <=  ( I0_C AND I1_C AND I2_C ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT14\ IS PORT(
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
END \74ACT14\;

ARCHITECTURE model OF \74ACT14\ IS

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

ENTITY \74ACT20\ IS PORT(
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
END \74ACT20\;

ARCHITECTURE model OF \74ACT20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 1500 ps;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT32\ IS PORT(
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
END \74ACT32\;

ARCHITECTURE model OF \74ACT32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B OR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C OR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D OR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT74\ IS PORT(
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
END \74ACT74\;

ARCHITECTURE model OF \74ACT74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>3500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT86\ IS PORT(
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
END \74ACT86\;

ARCHITECTURE model OF \74ACT86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 1500 ps;
    O_B <=  ( I0_B XOR I1_B ) AFTER 1500 ps;
    O_C <=  ( I0_C XOR I1_C ) AFTER 1500 ps;
    O_D <=  ( I0_D XOR I1_D ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT109\ IS PORT(
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
END \74ACT109\;

ARCHITECTURE model OF \74ACT109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    L2 <= NOT ( K_B );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT112\ IS PORT(
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
END \74ACT112\;

ARCHITECTURE model OF \74ACT112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( PR_A ) AFTER 0 ps;
    N3 <= NOT ( PR_B ) AFTER 0 ps;
    N4 <= NOT ( CLK_B ) AFTER 0 ps;
    N5 <= NOT ( CL_B ) AFTER 0 ps;
    N6 <= NOT ( CL_A ) AFTER 0 ps;
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>Q_A , qNot=>N7 , j=>J_A , k=>K_A , clk=>N1 , pr=>N2 , cl=>N6 );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>Q_B , qNot=>N8 , j=>J_B , k=>K_B , clk=>N4 , pr=>N3 , cl=>N5 );
    \Q\\_A\ <= NOT ( N7 ) AFTER 0 ps;
    \Q\\_B\ <= NOT ( N8 ) AFTER 0 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT113\ IS PORT(
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
END \74ACT113\;

ARCHITECTURE model OF \74ACT113\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ps;
    N2 <= NOT ( PR_A ) AFTER 0 ps;
    N3 <= NOT ( PR_B ) AFTER 0 ps;
    N4 <= NOT ( CLK_B ) AFTER 0 ps;
    JKFFP_0 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>Q_A , qNot=>N5 , j=>J_A , k=>K_A , clk=>N1 , pr=>N2 );
    JKFFP_1 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>1000 ps, tfall_clk_q=>1000 ps)
      PORT MAP  (q=>Q_B , qNot=>N6 , j=>J_B , k=>K_B , clk=>N4 , pr=>N3 );
    \Q\\_A\ <= NOT ( N5 ) AFTER 0 ps;
    \Q\\_B\ <= NOT ( N6 ) AFTER 0 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT125\ IS PORT(
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
END \74ACT125\;

ARCHITECTURE model OF \74ACT125\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 1000 ps;
    N2 <=  ( I_B ) AFTER 1000 ps;
    N3 <=  ( I_C ) AFTER 1000 ps;
    N4 <=  ( I_D ) AFTER 1000 ps;
    N5 <= NOT ( OE_A ) AFTER 0 ps;
    N6 <= NOT ( OE_B ) AFTER 0 ps;
    N7 <= NOT ( OE_C ) AFTER 0 ps;
    N8 <= NOT ( OE_D ) AFTER 0 ps;
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1000 ps, tfall_i1_o=>1000 ps, tpd_en_o=>1000 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>N5 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1000 ps, tfall_i1_o=>1000 ps, tpd_en_o=>1000 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>N6 );
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1000 ps, tfall_i1_o=>1000 ps, tpd_en_o=>1000 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>N7 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1000 ps, tfall_i1_o=>1000 ps, tpd_en_o=>1000 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>N8 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT126\ IS PORT(
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
END \74ACT126\;

ARCHITECTURE model OF \74ACT126\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 1500 ps;
    N2 <=  ( I_B ) AFTER 1500 ps;
    N3 <=  ( I_C ) AFTER 1500 ps;
    N4 <=  ( I_D ) AFTER 1500 ps;
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT132\ IS PORT(
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
END \74ACT132\;

ARCHITECTURE model OF \74ACT132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 2000 ps;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 2000 ps;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 2000 ps;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 2000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT138\ IS PORT(
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
END \74ACT138\;

ARCHITECTURE model OF \74ACT138\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
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
    N7 <=  ( G1 ) AFTER 750 ps;
    N8 <= NOT ( G2A OR G2B ) AFTER 750 ps;
    L1 <=  ( N7 AND N8 );
    L2 <=  ( L1 AND N4 );
    L3 <=  ( N5 AND N6 );
    Y0 <= NOT ( L2 AND L3 ) AFTER 750 ps;
    L4 <=  ( L1 AND N1 );
    Y1 <= NOT ( L3 AND L4 ) AFTER 750 ps;
    L5 <=  ( N2 AND N6 );
    Y2 <= NOT ( L2 AND L5 ) AFTER 750 ps;
    Y3 <= NOT ( L4 AND L5 ) AFTER 750 ps;
    L6 <=  ( N3 AND N5 );
    Y4 <= NOT ( L2 AND L6 ) AFTER 750 ps;
    Y5 <= NOT ( L4 AND L6 ) AFTER 750 ps;
    L7 <=  ( N2 AND N3 );
    Y6 <= NOT ( L2 AND L7 ) AFTER 750 ps;
    Y7 <= NOT ( L4 AND L7 ) AFTER 750 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT139\ IS PORT(
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
END \74ACT139\;

ARCHITECTURE model OF \74ACT139\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <= NOT ( G_B ) AFTER 500 ps;
    N2 <= NOT ( A_B ) AFTER 500 ps;
    N3 <= NOT ( B_B ) AFTER 500 ps;
    L1 <= NOT ( G_A );
    L2 <= NOT ( A_A );
    L3 <=  ( L1 AND L2 );
    L4 <= NOT ( B_A );
    Y0_A <= NOT ( L3 AND L4 ) AFTER 3000 ps;
    L5 <=  ( L1 AND A_A );
    Y1_A <= NOT ( L4 AND L5 ) AFTER 3000 ps;
    Y2_A <= NOT ( L3 AND B_A ) AFTER 3000 ps;
    Y3_A <= NOT ( L5 AND B_A ) AFTER 3000 ps;
    L6 <=  ( N1 AND N2 );
    Y0_B <= NOT ( L6 AND N3 ) AFTER 3000 ps;
    L7 <=  ( N1 AND A_B );
    Y1_B <= NOT ( L7 AND N3 ) AFTER 3000 ps;
    Y2_B <= NOT ( L6 AND B_B ) AFTER 3000 ps;
    Y3_B <= NOT ( L7 AND B_B ) AFTER 3000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT151\ IS PORT(
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
END \74ACT151\;

ARCHITECTURE model OF \74ACT151\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 1000 ps;
    N2 <= NOT ( B ) AFTER 1000 ps;
    N3 <= NOT ( C ) AFTER 1000 ps;
    L1 <=  ( N1 AND N2 );
    N4 <=  ( L1 AND N3 AND D0 ) AFTER 0 ps;
    L2 <= NOT ( N1 );
    L3 <=  ( L2 AND N2 );
    N5 <=  ( L3 AND N3 AND D1 ) AFTER 0 ps;
    L4 <= NOT ( N2 );
    L5 <=  ( L4 AND N1 );
    N6 <=  ( L5 AND N3 AND D2 ) AFTER 0 ps;
    L6 <=  ( L2 AND L4 );
    N7 <=  ( L6 AND N3 AND D3 ) AFTER 0 ps;
    L7 <= NOT ( N3 );
    N8 <=  ( L1 AND L7 AND D4 ) AFTER 0 ps;
    N9 <=  ( L3 AND L7 AND D5 ) AFTER 0 ps;
    N10 <=  ( L5 AND L7 AND D6 ) AFTER 0 ps;
    N11 <=  ( L6 AND L7 AND D7 ) AFTER 0 ps;
    L8 <=  ( N4 OR N5 OR N6 OR N7 OR N8 OR N9 OR N10 OR N11 );
    L9 <= NOT ( G );
    Y <=  ( L8 AND L9 ) AFTER 1500 ps;
    L10 <= NOT ( L8 );
    W <=  ( L10 OR G ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT153\ IS PORT(
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
END \74ACT153\;

ARCHITECTURE model OF \74ACT153\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 1000 ps;
    N2 <= NOT ( B ) AFTER 1000 ps;
    N3 <=  ( A ) AFTER 1000 ps;
    N4 <=  ( B ) AFTER 1000 ps;
    L1 <=  ( N3 AND N4 );
    L2 <= NOT ( L1 AND \1C3\ );
    L3 <=  ( N1 AND N4 );
    L4 <= NOT ( L3 AND \1C2\ );
    L5 <=  ( N2 AND N3 );
    L6 <= NOT ( L5 AND \1C1\ );
    L7 <=  ( N1 AND N2 );
    L8 <= NOT ( L7 AND \1C0\ );
    L9 <= NOT ( L1 AND \2C3\ );
    L10 <= NOT ( L3 AND \2C2\ );
    L11 <= NOT ( L5 AND \2C1\ );
    L12 <= NOT ( L7 AND \2C0\ );
    L13 <= NOT ( L2 AND L4 AND L6 AND L8 );
    L14 <= NOT ( L9 AND L10 AND L11 AND L12 );
    L15 <= NOT ( \1G\ );
    \1Y\ <=  ( L13 AND L15 ) AFTER 1500 ps;
    L16 <= NOT ( \2G\ );
    \2Y\ <=  ( L14 AND L16 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT157\ IS PORT(
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
END \74ACT157\;

ARCHITECTURE model OF \74ACT157\ IS
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

    BEGIN
    N1 <= NOT ( \A\\/B\ ) AFTER 0 ps;
    N2 <= NOT ( G ) AFTER 0 ps;
    L1 <=  ( N1 AND N2 );
    L2 <=  ( L1 AND \1A\ );
    L3 <= NOT ( N1 );
    L4 <=  ( L3 AND N2 );
    L5 <=  ( L4 AND \1B\ );
    L6 <=  ( L1 AND \2A\ );
    L7 <=  ( L4 AND \2B\ );
    L8 <=  ( L1 AND \3A\ );
    L9 <=  ( L4 AND \3B\ );
    L10 <=  ( L1 AND \4A\ );
    L11 <=  ( L4 AND \4B\ );
    \1Y\ <=  ( L2 OR L5 ) AFTER 1500 ps;
    \2Y\ <=  ( L6 OR L7 ) AFTER 1500 ps;
    \3Y\ <=  ( L8 OR L9 ) AFTER 1500 ps;
    \4Y\ <=  ( L10 OR L11 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT158\ IS PORT(
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
END \74ACT158\;

ARCHITECTURE model OF \74ACT158\ IS
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

    BEGIN
    N1 <= NOT ( \A\\/B\ ) AFTER 0 ps;
    N2 <= NOT ( G ) AFTER 0 ps;
    L1 <=  ( N1 AND N2 );
    L2 <=  ( L1 AND \1A\ );
    L3 <= NOT ( N1 );
    L4 <=  ( L3 AND N2 );
    L5 <=  ( L4 AND \1B\ );
    L6 <=  ( L1 AND \2A\ );
    L7 <=  ( L4 AND \2B\ );
    L8 <=  ( L1 AND \3A\ );
    L9 <=  ( L4 AND \3B\ );
    L10 <=  ( L1 AND \4A\ );
    L11 <=  ( L4 AND \4B\ );
    \1Y\ <= NOT ( L2 OR L5 ) AFTER 1500 ps;
    \2Y\ <= NOT ( L6 OR L7 ) AFTER 1500 ps;
    \3Y\ <= NOT ( L8 OR L9 ) AFTER 1500 ps;
    \4Y\ <= NOT ( L10 OR L11 ) AFTER 1500 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT163\ IS PORT(
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
END \74ACT163\;

ARCHITECTURE model OF \74ACT163\ IS
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

    BEGIN
    N1 <= NOT ( ENP AND LOAD AND ENT ) AFTER 0 ps;
    N2 <= NOT ( LOAD ) AFTER 0 ps;
    N3 <= NOT ( CLR ) AFTER 0 ps;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( N3 OR LOAD );
    L3 <= NOT ( N2 OR N3 );
    L4 <=  ( N6 AND N7 );
    L5 <=  ( L4 AND N8 );
    N4 <=  ( L5 AND N9 ) AFTER 0 ps;
    N5 <=  ( ENT ) AFTER 1500 ps;
    RCO <=  ( N4 AND N5 ) AFTER 500 ps;
    L6 <=  ( L3 AND N6 );
    L7 <=  ( L1 XOR L6 );
    L8 <=  ( L2 AND A );
    L9 <=  ( L7 OR L8 );
    L10 <=  ( L3 AND N7 );
    L11 <=  ( L1 AND N6 );
    L12 <=  ( L10 XOR L11 );
    L13 <=  ( L2 AND B );
    L14 <=  ( L12 OR L13 );
    L15 <=  ( L3 AND N8 );
    L16 <=  ( L1 AND L4 );
    L17 <=  ( L15 XOR L16 );
    L18 <=  ( L2 AND C );
    L19 <=  ( L17 OR L18 );
    L20 <=  ( L3 AND N9 );
    L21 <=  ( L1 AND L5 );
    L22 <=  ( L20 XOR L21 );
    L23 <=  ( L2 AND D );
    L24 <=  ( L22 OR L23 );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>L9 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>L14 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>L19 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>L24 , clk=>CLK );
    QA <=  ( N6 ) AFTER 0 ps;
    QB <=  ( N7 ) AFTER 0 ps;
    QC <=  ( N8 ) AFTER 0 ps;
    QD <=  ( N9 ) AFTER 0 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT174\ IS PORT(
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
END \74ACT174\;

ARCHITECTURE model OF \74ACT174\ IS

    BEGIN
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT175\ IS PORT(
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
END \74ACT175\;

ARCHITECTURE model OF \74ACT175\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK , cl=>CLR );
    \Q\\1\\\ <= NOT ( N1 ) AFTER 0 ps;
    \Q\\2\\\ <= NOT ( N2 ) AFTER 0 ps;
    \Q\\3\\\ <= NOT ( N3 ) AFTER 0 ps;
    \Q\\4\\\ <= NOT ( N4 ) AFTER 0 ps;
    Q1 <=  ( N1 ) AFTER 0 ps;
    Q2 <=  ( N2 ) AFTER 0 ps;
    Q3 <=  ( N3 ) AFTER 0 ps;
    Q4 <=  ( N4 ) AFTER 0 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT191\ IS PORT(
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
END \74ACT191\;

ARCHITECTURE model OF \74ACT191\ IS
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
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL N9 : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
	SIGNAL N12 : std_logic;

    BEGIN
    L1 <= NOT ( G OR \D/U\\\ );
    L2 <= NOT ( \D/U\\\ );
    L3 <= NOT ( L2 OR G );
    L4 <=  ( N4 AND N6 );
    L5 <=  ( L4 AND N8 );
    L6 <=  ( L2 AND L5 AND N10 );
    L7 <=  ( N5 AND N7 );
    L8 <=  ( L7 AND N9 );
    L9 <=  ( L8 AND N11 AND \D/U\\\ );
    L10 <= NOT ( N3 AND A );
    L11 <= NOT ( L10 AND N3 );
    L12 <= NOT ( N3 AND B );
    L13 <= NOT ( L12 AND N3 );
    L14 <= NOT ( N3 AND C );
    L15 <= NOT ( L14 AND N3 );
    L16 <= NOT ( N3 AND D );
    L17 <= NOT ( L16 AND N3 );
    L18 <=  ( L3 AND N5 );
    L19 <=  ( L1 AND N4 );
    L20 <=  ( L3 AND L7 );
    L21 <=  ( L1 AND L4 );
    L22 <=  ( L3 AND L8 );
    L23 <=  ( L1 AND L5 );
    L24 <=  ( L18 OR L19 );
    L25 <=  ( L20 OR L21 );
    L26 <=  ( L22 OR L23 );
    N1 <= NOT ( CLK ) AFTER 2000 ps;
    N2 <= NOT ( G ) AFTER 2000 ps;
    N3 <= NOT ( LOAD ) AFTER 0 ps;
    L27 <= NOT ( G );
    L28 <= NOT ( G );
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L27 , k=>L28 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L24 , k=>L24 , clk=>CLK , pr=>L12 , cl=>L13 );
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L25 , k=>L25 , clk=>CLK , pr=>L14 , cl=>L15 );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6000 ps, tfall_clk_q=>6000 ps)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L26 , k=>L26 , clk=>CLK , pr=>L16 , cl=>L17 );
    N12 <=  ( L6 OR L9 ) AFTER 12000 ps;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 8000 ps;
    QA <=  ( N4 ) AFTER 8000 ps;
    QB <=  ( N6 ) AFTER 8000 ps;
    QC <=  ( N8 ) AFTER 8000 ps;
    QD <=  ( N10 ) AFTER 8000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT193\ IS PORT(
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
END \74ACT193\;

ARCHITECTURE model OF \74ACT193\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <=  ( N1 AND N2 );
    L2 <= NOT ( L1 AND A );
    L3 <= NOT ( L1 AND B );
    L4 <= NOT ( L1 AND C );
    L5 <= NOT ( L1 AND D );
    L6 <= NOT ( DN );
    L7 <=  ( L6 AND N8 );
    L8 <= NOT ( UP );
    L9 <=  ( L8 AND N7 );
    L10 <=  ( L7 AND N10 );
    L11 <=  ( L9 AND N9 );
    L12 <=  ( L10 AND N12 );
    L13 <=  ( L11 AND N11 );
    L14 <= NOT ( L2 AND N2 );
    L15 <= NOT ( L3 AND N2 );
    L16 <= NOT ( L4 AND N2 );
    L17 <= NOT ( L5 AND N2 );
    L18 <=  ( L14 AND N1 );
    L19 <=  ( L15 AND N1 );
    L20 <=  ( L16 AND N1 );
    L21 <=  ( L17 AND N1 );
    N1 <= NOT ( CLR ) AFTER 3000 ps;
    N2 <= NOT ( LOAD ) AFTER 2000 ps;
    N3 <= NOT ( L6 OR L8 ) AFTER 0 ps;
    N4 <= NOT ( L7 OR L9 ) AFTER 0 ps;
    N5 <= NOT ( L10 OR L11 ) AFTER 0 ps;
    N6 <= NOT ( L12 OR L13 ) AFTER 0 ps;
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L2 , cl=>L18 );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L3 , cl=>L19 );
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L4 , cl=>L20 );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7000 ps, tfall_clk_q=>7000 ps)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L5 , cl=>L21 );
    BO <= NOT ( L10 AND N12 AND N14 ) AFTER 16000 ps;
    CO <= NOT ( L11 AND N11 AND N13 ) AFTER 13000 ps;
    QA <=  ( N7 ) AFTER 8000 ps;
    QB <=  ( N9 ) AFTER 8000 ps;
    QC <=  ( N11 ) AFTER 8000 ps;
    QD <=  ( N13 ) AFTER 8000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT240\ IS PORT(
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
END \74ACT240\;

ARCHITECTURE model OF \74ACT240\ IS
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
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    L2 <= NOT ( G_B );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT241\ IS PORT(
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
END \74ACT241\;

ARCHITECTURE model OF \74ACT241\ IS
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
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT244\ IS PORT(
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
END \74ACT244\;

ARCHITECTURE model OF \74ACT244\ IS
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
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    L2 <= NOT ( \2G\ );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2500 ps)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT245\ IS PORT(
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
END \74ACT245\;

ARCHITECTURE model OF \74ACT245\ IS
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
    L2 <=  ( L1 AND DIR );
    L3 <= NOT ( DIR );
    L4 <=  ( L1 AND L3 );
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
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L2 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L2 );
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L2 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L2 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L2 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L2 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L2 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L2 );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT251\ IS PORT(
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
END \74ACT251\;

ARCHITECTURE model OF \74ACT251\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 0 ps;
    N2 <= NOT ( B ) AFTER 0 ps;
    N3 <= NOT ( C ) AFTER 0 ps;
    L1 <= NOT ( G );
    L2 <=  ( L1 AND N1 );
    L3 <=  ( N2 AND N3 );
    L4 <=  ( L2 AND L3 AND D0 );
    L5 <= NOT ( N1 );
    L6 <=  ( L1 AND L5 );
    L7 <=  ( L3 AND L6 AND D1 );
    L8 <= NOT ( N2 );
    L9 <=  ( L8 AND N3 );
    L10 <=  ( L2 AND L9 AND D2 );
    L11 <=  ( L6 AND L9 AND D3 );
    L12 <= NOT ( N3 );
    L13 <=  ( L12 AND N2 );
    L14 <=  ( L2 AND L13 AND D4 );
    L15 <=  ( L6 AND L13 AND D5 );
    L16 <=  ( L8 AND L12 );
    L17 <=  ( L2 AND L16 AND D6 );
    L18 <=  ( L6 AND L16 AND D7 );
    N4 <= NOT ( L4 OR L7 OR L10 OR L11 OR L14 OR L15 OR L17 OR L18 ) AFTER 1500 ps;
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>W , i1=>N4 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT253\ IS PORT(
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
END \74ACT253\;

ARCHITECTURE model OF \74ACT253\ IS
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

    BEGIN
    N1 <= NOT ( B ) AFTER 500 ps;
    N2 <= NOT ( A ) AFTER 500 ps;
    L1 <= NOT ( \1G\ );
    L2 <=  ( L1 AND N1 );
    L3 <=  ( L2 AND N2 AND \1C0\ );
    L4 <= NOT ( N2 );
    L5 <=  ( L2 AND L4 AND \1C1\ );
    L6 <= NOT ( N1 );
    L7 <=  ( L1 AND L6 );
    L8 <=  ( L7 AND N2 AND \1C2\ );
    L9 <=  ( L4 AND L7 AND \1C3\ );
    L10 <= NOT ( \2G\ );
    L11 <=  ( L10 AND N1 );
    L12 <=  ( L11 AND N2 AND \2C0\ );
    L13 <=  ( L4 AND L11 AND \2C1\ );
    L14 <=  ( L6 AND L10 );
    L15 <=  ( L14 AND N2 AND \2C2\ );
    L16 <=  ( L4 AND L14 AND \2C3\ );
    N3 <=  ( L3 OR L5 OR L8 OR L9 ) AFTER 1500 ps;
    N4 <=  ( L12 OR L13 OR L15 OR L16 ) AFTER 1500 ps;
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L10 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT257\ IS PORT(
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
END \74ACT257\;

ARCHITECTURE model OF \74ACT257\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 0 ps;
    L1 <=  ( N1 AND \1A\ );
    L2 <= NOT ( N1 );
    L3 <=  ( L2 AND \1B\ );
    L4 <=  ( N1 AND \2A\ );
    L5 <=  ( L2 AND \2B\ );
    L6 <=  ( N1 AND \3A\ );
    L7 <=  ( L2 AND \3B\ );
    L8 <=  ( N1 AND \4A\ );
    L9 <=  ( L2 AND \4B\ );
    N2 <=  ( L1 OR L3 ) AFTER 1500 ps;
    N3 <=  ( L4 OR L5 ) AFTER 1500 ps;
    N4 <=  ( L6 OR L7 ) AFTER 1500 ps;
    N5 <=  ( L8 OR L9 ) AFTER 1500 ps;
    L10 <= NOT ( G );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L10 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L10 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L10 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L10 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT258\ IS PORT(
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
END \74ACT258\;

ARCHITECTURE model OF \74ACT258\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 500 ps;
    L1 <=  ( N1 AND \1A\ );
    L2 <= NOT ( N1 );
    L3 <=  ( L2 AND \1B\ );
    L4 <=  ( N1 AND \2A\ );
    L5 <=  ( L2 AND \2B\ );
    L6 <=  ( N1 AND \3A\ );
    L7 <=  ( L2 AND \3B\ );
    L8 <=  ( N1 AND \4A\ );
    L9 <=  ( L2 AND \4B\ );
    N2 <= NOT ( L1 OR L3 ) AFTER 1500 ps;
    N3 <= NOT ( L4 OR L5 ) AFTER 1500 ps;
    N4 <= NOT ( L6 OR L7 ) AFTER 1500 ps;
    N5 <= NOT ( L8 OR L9 ) AFTER 1500 ps;
    L10 <= NOT ( G );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L10 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L10 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L10 );
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>9000 ps)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L10 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT273\ IS PORT(
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
END \74ACT273\;

ARCHITECTURE model OF \74ACT273\ IS

    BEGIN
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>3000 ps, tfall_clk_q=>3000 ps)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT280\ IS PORT(
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
END \74ACT280\;

ARCHITECTURE model OF \74ACT280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( G XOR H XOR I XOR A XOR B XOR C XOR D XOR E XOR F );
    EVEN <= NOT ( L1 ) AFTER 20 ps;
    ODD <=  ( L1 ) AFTER 20 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT283\ IS PORT(
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
END \74ACT283\;

ARCHITECTURE model OF \74ACT283\ IS
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

    BEGIN
    L1 <= NOT ( A1 OR B1 );
    L2 <= NOT ( A1 AND B1 );
    L3 <= NOT ( B2 OR A2 );
    L4 <= NOT ( B2 AND A2 );
    L5 <= NOT ( A3 OR B3 );
    L6 <= NOT ( A3 AND B3 );
    L7 <= NOT ( B4 OR A4 );
    L8 <= NOT ( B4 AND A4 );
    L9 <= NOT ( L1 );
    L10 <=  ( L2 AND L9 );
    L11 <= NOT ( C0 );
    L12 <=  ( L2 AND L11 );
    L13 <= NOT ( L3 );
    L14 <=  ( L4 AND L13 );
    L15 <=  ( L4 AND L12 );
    L16 <=  ( L1 AND L4 );
    L17 <= NOT ( L5 );
    L18 <=  ( L6 AND L17 );
    L19 <=  ( L6 AND L15 );
    L20 <=  ( L6 AND L16 );
    L21 <=  ( L3 AND L6 );
    L22 <= NOT ( L7 );
    L23 <=  ( L8 AND L22 );
    L24 <=  ( L8 AND L19 );
    L25 <=  ( L8 AND L20 );
    L26 <=  ( L8 AND L21 );
    L27 <=  ( L5 AND L8 );
    L28 <= NOT ( L1 OR L12 );
    L29 <= NOT ( L3 OR L15 OR L16 );
    L30 <= NOT ( L5 OR L19 OR L20 OR L21 );
    S1 <=  ( L10 XOR C0 ) AFTER 16000 ps;
    S2 <=  ( L14 XOR L28 ) AFTER 16000 ps;
    S3 <=  ( L18 XOR L29 ) AFTER 16000 ps;
    S4 <=  ( L23 XOR L30 ) AFTER 16000 ps;
    C4 <= NOT ( L7 OR L24 OR L25 OR L26 OR L27 ) AFTER 16000 ps;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT373\ IS PORT(
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
END \74ACT373\;

ARCHITECTURE model OF \74ACT373\ IS
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
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT374\ IS PORT(
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
END \74ACT374\;

ARCHITECTURE model OF \74ACT374\ IS
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
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    L1 <= NOT ( OC );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT533\ IS PORT(
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
END \74ACT533\;

ARCHITECTURE model OF \74ACT533\ IS
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
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>2000 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    L1 <= NOT ( OC );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT534\ IS PORT(
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
END \74ACT534\;

ARCHITECTURE model OF \74ACT534\ IS
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
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2500 ps)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    L1 <= NOT ( OC );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>2500 ps, tfall_i1_o=>2500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT540\ IS PORT(
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
END \74ACT540\;

ARCHITECTURE model OF \74ACT540\ IS
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
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>2000 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT541\ IS PORT(
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
END \74ACT541\;

ARCHITECTURE model OF \74ACT541\ IS
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
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>2000 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT646\ IS PORT(
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
END \74ACT646\;

ARCHITECTURE model OF \74ACT646\ IS
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
    N1 <= NOT ( SBA ) AFTER 2000 ps;
    N2 <= NOT ( SAB ) AFTER 2000 ps;
    N3 <=  ( SBA ) AFTER 2000 ps;
    N4 <=  ( SAB ) AFTER 2000 ps;
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
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2500 ps, tfall_clk_q=>2000 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L4 OR L5 ) AFTER 1500 ps;
    N22 <=  ( L6 OR L7 ) AFTER 1500 ps;
    N23 <=  ( L8 OR L9 ) AFTER 1500 ps;
    N24 <=  ( L10 OR L11 ) AFTER 1500 ps;
    N25 <=  ( L12 OR L13 ) AFTER 1500 ps;
    N26 <=  ( L14 OR L15 ) AFTER 1500 ps;
    N27 <=  ( L16 OR L17 ) AFTER 1500 ps;
    N28 <=  ( L18 OR L19 ) AFTER 1500 ps;
    N29 <=  ( L20 OR L21 ) AFTER 1500 ps;
    N30 <=  ( L22 OR L23 ) AFTER 1500 ps;
    N31 <=  ( L24 OR L25 ) AFTER 1500 ps;
    N32 <=  ( L26 OR L27 ) AFTER 1500 ps;
    N33 <=  ( L28 OR L29 ) AFTER 1500 ps;
    N34 <=  ( L30 OR L31 ) AFTER 1500 ps;
    N35 <=  ( L32 OR L33 ) AFTER 1500 ps;
    N36 <=  ( L34 OR L35 ) AFTER 1500 ps;
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>2000 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L3 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L3 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L3 );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L3 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L3 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L3 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L3 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ACT648\ IS PORT(
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
END \74ACT648\;

ARCHITECTURE model OF \74ACT648\ IS
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
    N1 <= NOT ( SBA ) AFTER 0 ps;
    N2 <= NOT ( SAB ) AFTER 0 ps;
    N3 <=  ( SBA ) AFTER 0 ps;
    N4 <=  ( SAB ) AFTER 0 ps;
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
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N6 , d=>B2 , clk=>CBA );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N7 , d=>B3 , clk=>CBA );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N8 , d=>B4 , clk=>CBA );
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CBA );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N10 , d=>B6 , clk=>CBA );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N11 , d=>B7 , clk=>CBA );
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N12 , d=>B8 , clk=>CBA );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N13 , d=>A1 , clk=>CAB );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N14 , d=>A2 , clk=>CAB );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N15 , d=>A3 , clk=>CAB );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N16 , d=>A4 , clk=>CAB );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N17 , d=>A5 , clk=>CAB );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N18 , d=>A6 , clk=>CAB );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N19 , d=>A7 , clk=>CAB );
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1500 ps, tfall_clk_q=>1500 ps)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L4 OR L5 ) AFTER 1500 ps;
    N22 <= NOT ( L6 OR L7 ) AFTER 1500 ps;
    N23 <= NOT ( L8 OR L9 ) AFTER 1500 ps;
    N24 <= NOT ( L10 OR L11 ) AFTER 1500 ps;
    N25 <= NOT ( L12 OR L13 ) AFTER 1500 ps;
    N26 <= NOT ( L14 OR L15 ) AFTER 1500 ps;
    N27 <= NOT ( L16 OR L17 ) AFTER 1500 ps;
    N28 <= NOT ( L18 OR L19 ) AFTER 1500 ps;
    N29 <= NOT ( L20 OR L21 ) AFTER 1500 ps;
    N30 <= NOT ( L22 OR L23 ) AFTER 1500 ps;
    N31 <= NOT ( L24 OR L25 ) AFTER 1500 ps;
    N32 <= NOT ( L26 OR L27 ) AFTER 1500 ps;
    N33 <= NOT ( L28 OR L29 ) AFTER 1500 ps;
    N34 <= NOT ( L30 OR L31 ) AFTER 1500 ps;
    N35 <= NOT ( L32 OR L33 ) AFTER 1500 ps;
    N36 <= NOT ( L34 OR L35 ) AFTER 1500 ps;
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L1 );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L1 );
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L1 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L3 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L3 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L3 );
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L3 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L3 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L3 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L3 );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1500 ps, tfall_i1_o=>1500 ps, tpd_en_o=>1500 ps)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L3 );
END model;

