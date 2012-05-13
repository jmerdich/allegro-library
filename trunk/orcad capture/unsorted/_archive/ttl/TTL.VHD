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
-- File:			TTL.VHD
-- Resource:	  National, Logic Data Book, 1984
-- Delay units:	  Nanoseconds 
-- Characteristics: 74XXXX MIN/MAX, Vcc=5V +/-0.5 V
 
-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7400\ IS PORT(
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
END \7400\;

ARCHITECTURE model OF \7400\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 22 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7401\ IS PORT(
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
END \7401\;

ARCHITECTURE model OF \7401\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 45 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 45 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 45 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7402\ IS PORT(
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
END \7402\;

ARCHITECTURE model OF \7402\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 22 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 22 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7403\ IS PORT(
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
END \7403\;

ARCHITECTURE model OF \7403\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 45 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 45 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 45 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7404\ IS PORT(
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
END \7404\;

ARCHITECTURE model OF \7404\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 22 ns;
    O_B <= NOT ( I_B ) AFTER 22 ns;
    O_C <= NOT ( I_C ) AFTER 22 ns;
    O_D <= NOT ( I_D ) AFTER 22 ns;
    O_E <= NOT ( I_E ) AFTER 22 ns;
    O_F <= NOT ( I_F ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7405\ IS PORT(
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
END \7405\;

ARCHITECTURE model OF \7405\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 55 ns;
    O_B <= NOT ( I_B ) AFTER 55 ns;
    O_C <= NOT ( I_C ) AFTER 55 ns;
    O_D <= NOT ( I_D ) AFTER 55 ns;
    O_E <= NOT ( I_E ) AFTER 55 ns;
    O_F <= NOT ( I_F ) AFTER 55 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7406\ IS PORT(
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
END \7406\;

ARCHITECTURE model OF \7406\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 23 ns;
    O_B <= NOT ( I_B ) AFTER 23 ns;
    O_C <= NOT ( I_C ) AFTER 23 ns;
    O_D <= NOT ( I_D ) AFTER 23 ns;
    O_E <= NOT ( I_E ) AFTER 23 ns;
    O_F <= NOT ( I_F ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7407\ IS PORT(
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
END \7407\;

ARCHITECTURE model OF \7407\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 30 ns;
    O_B <=  ( I_B ) AFTER 30 ns;
    O_C <=  ( I_C ) AFTER 30 ns;
    O_D <=  ( I_D ) AFTER 30 ns;
    O_E <=  ( I_E ) AFTER 30 ns;
    O_F <=  ( I_F ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7408\ IS PORT(
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
END \7408\;

ARCHITECTURE model OF \7408\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 27 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 27 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 27 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7409\ IS PORT(
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
END \7409\;

ARCHITECTURE model OF \7409\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 32 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 32 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 32 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 32 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7410\ IS PORT(
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
END \7410\;

ARCHITECTURE model OF \7410\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 22 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7411\ IS PORT(
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
END \7411\;

ARCHITECTURE model OF \7411\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 27 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 27 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7412\ IS PORT(
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
END \7412\;

ARCHITECTURE model OF \7412\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 45 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 45 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7413\ IS PORT(
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
END \7413\;

ARCHITECTURE model OF \7413\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 27 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7414\ IS PORT(
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
END \7414\;

ARCHITECTURE model OF \7414\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 22 ns;
    O_B <= NOT ( I_B ) AFTER 22 ns;
    O_C <= NOT ( I_C ) AFTER 22 ns;
    O_D <= NOT ( I_D ) AFTER 22 ns;
    O_E <= NOT ( I_E ) AFTER 22 ns;
    O_F <= NOT ( I_F ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7416\ IS PORT(
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
END \7416\;

ARCHITECTURE model OF \7416\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 23 ns;
    O_B <= NOT ( I_B ) AFTER 23 ns;
    O_C <= NOT ( I_C ) AFTER 23 ns;
    O_D <= NOT ( I_D ) AFTER 23 ns;
    O_E <= NOT ( I_E ) AFTER 23 ns;
    O_F <= NOT ( I_F ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7417\ IS PORT(
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
END \7417\;

ARCHITECTURE model OF \7417\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 30 ns;
    O_B <=  ( I_B ) AFTER 30 ns;
    O_C <=  ( I_C ) AFTER 30 ns;
    O_D <=  ( I_D ) AFTER 30 ns;
    O_E <=  ( I_E ) AFTER 30 ns;
    O_F <=  ( I_F ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7420\ IS PORT(
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
END \7420\;

ARCHITECTURE model OF \7420\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7421\ IS PORT(
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
END \7421\;

ARCHITECTURE model OF \7421\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 27 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7422\ IS PORT(
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
END \7422\;

ARCHITECTURE model OF \7422\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 45 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7425\ IS PORT(
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
G_A : IN  std_logic;
G_B : IN  std_logic;
GND : IN  std_logic);
END \7425\;

ARCHITECTURE model OF \7425\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1 <=  ( I0_A AND G_A );
    L2 <=  ( I1_A AND G_A );
    L3 <=  ( I2_A AND G_A );
    L4 <=  ( I3_A AND G_A );
    L5 <=  ( I0_B AND G_B );
    L6 <=  ( I1_B AND G_B );
    L7 <=  ( I2_B AND G_B );
    L8 <=  ( I3_B AND G_B );
    O_A <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 22 ns;
    O_B <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7426\ IS PORT(
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
END \7426\;

ARCHITECTURE model OF \7426\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 24 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 24 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 24 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 24 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7427\ IS PORT(
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
END \7427\;

ARCHITECTURE model OF \7427\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 15 ns;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 15 ns;
    O_C <= NOT ( I2_C OR I1_C OR I0_C ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7428\ IS PORT(
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
END \7428\;

ARCHITECTURE model OF \7428\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 12 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 12 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 12 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7430\ IS PORT(
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
END \7430\;

ARCHITECTURE model OF \7430\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7432\ IS PORT(
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
END \7432\;

ARCHITECTURE model OF \7432\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 22 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 22 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 22 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7433\ IS PORT(
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
END \7433\;

ARCHITECTURE model OF \7433\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 18 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 18 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 18 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7437\ IS PORT(
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
END \7437\;

ARCHITECTURE model OF \7437\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 22 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7438\ IS PORT(
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
END \7438\;

ARCHITECTURE model OF \7438\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 22 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7439\ IS PORT(
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
END \7439\;

ARCHITECTURE model OF \7439\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 19 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 19 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 19 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7440\ IS PORT(
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
END \7440\;

ARCHITECTURE model OF \7440\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 22 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7442\ IS PORT(
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
END \7442\;

ARCHITECTURE model OF \7442\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 20 ns;
    N3 <= NOT ( B ) AFTER 20 ns;
    N5 <= NOT ( C ) AFTER 20 ns;
    N7 <= NOT ( D ) AFTER 20 ns;
    N2 <=  ( A ) AFTER 25 ns;
    N4 <=  ( B ) AFTER 25 ns;
    N6 <=  ( C ) AFTER 25 ns;
    N8 <=  ( D ) AFTER 25 ns;
    \0\ <= NOT ( N1 AND N3 AND N5 AND N7 ) AFTER 5 ns;
    \1\ <= NOT ( N2 AND N3 AND N5 AND N7 ) AFTER 5 ns;
    \2\ <= NOT ( N1 AND N4 AND N5 AND N7 ) AFTER 5 ns;
    \3\ <= NOT ( N2 AND N4 AND N5 AND N7 ) AFTER 5 ns;
    \4\ <= NOT ( N1 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \5\ <= NOT ( N2 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \6\ <= NOT ( N1 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \7\ <= NOT ( N2 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \8\ <= NOT ( N1 AND N3 AND N5 AND N8 ) AFTER 5 ns;
    \9\ <= NOT ( N2 AND N3 AND N5 AND N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7442A\ IS PORT(
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
END \7442A\;

ARCHITECTURE model OF \7442A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 20 ns;
    N3 <= NOT ( B ) AFTER 20 ns;
    N5 <= NOT ( C ) AFTER 20 ns;
    N7 <= NOT ( D ) AFTER 20 ns;
    N2 <=  ( A ) AFTER 25 ns;
    N4 <=  ( B ) AFTER 25 ns;
    N6 <=  ( C ) AFTER 25 ns;
    N8 <=  ( D ) AFTER 25 ns;
    \0\ <= NOT ( N1 AND N3 AND N5 AND N7 ) AFTER 5 ns;
    \1\ <= NOT ( N2 AND N3 AND N5 AND N7 ) AFTER 5 ns;
    \2\ <= NOT ( N1 AND N4 AND N5 AND N7 ) AFTER 5 ns;
    \3\ <= NOT ( N2 AND N4 AND N5 AND N7 ) AFTER 5 ns;
    \4\ <= NOT ( N1 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \5\ <= NOT ( N2 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \6\ <= NOT ( N1 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \7\ <= NOT ( N2 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \8\ <= NOT ( N1 AND N3 AND N5 AND N8 ) AFTER 5 ns;
    \9\ <= NOT ( N2 AND N3 AND N5 AND N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7443\ IS PORT(
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
END \7443\;

ARCHITECTURE model OF \7443\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 20 ns;
    N3 <= NOT ( B ) AFTER 20 ns;
    N5 <= NOT ( C ) AFTER 20 ns;
    N7 <= NOT ( D ) AFTER 20 ns;
    N2 <=  ( A ) AFTER 25 ns;
    N4 <=  ( B ) AFTER 25 ns;
    N6 <=  ( C ) AFTER 25 ns;
    N8 <=  ( D ) AFTER 25 ns;
    \0\ <= NOT ( N2 AND N4 AND N5 AND N7 ) AFTER 5 ns;
    \1\ <= NOT ( N1 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \2\ <= NOT ( N2 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \3\ <= NOT ( N1 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \4\ <= NOT ( N2 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \5\ <= NOT ( N1 AND N3 AND N5 AND N8 ) AFTER 5 ns;
    \6\ <= NOT ( N2 AND N3 AND N5 AND N8 ) AFTER 5 ns;
    \7\ <= NOT ( N1 AND N4 AND N5 AND N8 ) AFTER 5 ns;
    \8\ <= NOT ( N2 AND N4 AND N5 AND N8 ) AFTER 5 ns;
    \9\ <= NOT ( N1 AND N3 AND N6 AND N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7444\ IS PORT(
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
END \7444\;

ARCHITECTURE model OF \7444\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 20 ns;
    N3 <= NOT ( B ) AFTER 20 ns;
    N5 <= NOT ( C ) AFTER 20 ns;
    N7 <= NOT ( D ) AFTER 20 ns;
    N2 <=  ( A ) AFTER 25 ns;
    N4 <=  ( B ) AFTER 25 ns;
    N6 <=  ( C ) AFTER 25 ns;
    N8 <=  ( D ) AFTER 25 ns;
    \0\ <= NOT ( N1 AND N4 AND N5 AND N7 ) AFTER 5 ns;
    \1\ <= NOT ( N1 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \2\ <= NOT ( N2 AND N4 AND N6 AND N7 ) AFTER 5 ns;
    \3\ <= NOT ( N2 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \4\ <= NOT ( N1 AND N3 AND N6 AND N7 ) AFTER 5 ns;
    \5\ <= NOT ( N1 AND N3 AND N6 AND N8 ) AFTER 5 ns;
    \6\ <= NOT ( N2 AND N3 AND N6 AND N8 ) AFTER 5 ns;
    \7\ <= NOT ( N2 AND N4 AND N6 AND N8 ) AFTER 5 ns;
    \8\ <= NOT ( N1 AND N4 AND N6 AND N8 ) AFTER 5 ns;
    \9\ <= NOT ( N1 AND N4 AND N5 AND N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7445\ IS PORT(
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
END \7445\;

ARCHITECTURE model OF \7445\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <= NOT ( C );
    L4 <= NOT ( D );
    \0\ <= NOT ( L1 AND L2 AND L3 AND L4 ) AFTER 50 ns;
    \1\ <= NOT ( A AND L2 AND L3 AND L4 ) AFTER 50 ns;
    \2\ <= NOT ( L1 AND B AND L3 AND L4 ) AFTER 50 ns;
    \3\ <= NOT ( A AND B AND L3 AND L4 ) AFTER 50 ns;
    \4\ <= NOT ( L1 AND L2 AND C AND L4 ) AFTER 50 ns;
    \5\ <= NOT ( A AND L2 AND C AND L4 ) AFTER 50 ns;
    \6\ <= NOT ( L1 AND B AND C AND L4 ) AFTER 50 ns;
    \7\ <= NOT ( A AND B AND C AND L4 ) AFTER 50 ns;
    \8\ <= NOT ( L1 AND L2 AND L3 AND D ) AFTER 50 ns;
    \9\ <= NOT ( A AND L2 AND L3 AND D ) AFTER 50 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7446\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7446\;

ARCHITECTURE model OF \7446\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <=  ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <=  ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <=  ( L17 OR L18 ) AFTER 100 ns;
    D <=  ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <=  ( L7 OR L22 ) AFTER 100 ns;
    F <=  ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <=  ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7446A\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7446A\;

ARCHITECTURE model OF \7446A\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <=  ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <=  ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <=  ( L17 OR L18 ) AFTER 100 ns;
    D <=  ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <=  ( L7 OR L22 ) AFTER 100 ns;
    F <=  ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <=  ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7447\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7447\;

ARCHITECTURE model OF \7447\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <=  ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <=  ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <=  ( L17 OR L18 ) AFTER 100 ns;
    D <=  ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <=  ( L7 OR L22 ) AFTER 100 ns;
    F <=  ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <=  ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7447A\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7447A\;

ARCHITECTURE model OF \7447A\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <=  ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <=  ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <=  ( L17 OR L18 ) AFTER 100 ns;
    D <=  ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <=  ( L7 OR L22 ) AFTER 100 ns;
    F <=  ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <=  ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7448\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : IN  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7448\;

ARCHITECTURE model OF \7448\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <= NOT ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <= NOT ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <= NOT ( L17 OR L18 ) AFTER 100 ns;
    D <= NOT ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <= NOT ( L7 OR L22 ) AFTER 100 ns;
    F <= NOT ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <= NOT ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7449\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
BI : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7449\;

ARCHITECTURE model OF \7449\ IS
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

    BEGIN
    L1 <= NOT ( \1\ );
    L2 <= NOT ( \2\ );
    L3 <= NOT ( \4\ );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( L1 AND BI );
    L6 <= NOT ( L2 AND BI );
    L7 <= NOT ( L3 AND BI );
    L8 <= NOT ( L4 AND BI );
    L9 <=  ( L6 AND L8 );
    L10 <=  ( L1 AND L7 );
    L11 <=  ( L5 AND L2 AND L3 AND L4 );
    L12 <=  ( L5 AND L2 AND L7 );
    L13 <=  ( L1 AND L6 AND L7 );
    L14 <=  ( L7 AND L8 );
    L15 <=  ( L1 AND L6 AND L3 );
    L16 <=  ( L1 AND L2 AND L7 );
    L17 <=  ( L5 AND L6 AND L7 );
    L18 <=  ( L2 AND L7 );
    L19 <=  ( L5 AND L6 );
    L20 <=  ( L6 AND L3 );
    L21 <=  ( L5 AND L3 AND L4 );
    L22 <=  ( L2 AND L3 AND L4 );
    L23 <=  ( L5 AND L2 AND L3 );
    A <= NOT ( L9 OR L10 OR L11 ) AFTER 100 ns;
    B <= NOT ( L9 OR L12 OR L13 ) AFTER 100 ns;
    C <= NOT ( L14 OR L15 ) AFTER 100 ns;
    D <= NOT ( L23 OR L16 OR L17 ) AFTER 100 ns;
    E <= NOT ( L5 OR L18 ) AFTER 100 ns;
    F <= NOT ( L19 OR L20 OR L21 ) AFTER 100 ns;
    G <= NOT ( L17 OR L22 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7451\ IS PORT(
\1A\ : IN  std_logic;
\1B\ : IN  std_logic;
\1C\ : IN  std_logic;
\1D\ : IN  std_logic;
\2A\ : IN  std_logic;
\2B\ : IN  std_logic;
\2C\ : IN  std_logic;
\2D\ : IN  std_logic;
\1Y\ : OUT  std_logic;
\2Y\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7451\;

ARCHITECTURE model OF \7451\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( \2A\ AND \2B\ );
    L2 <=  ( \2C\ AND \2D\ );
    \2Y\ <= NOT ( L1 OR L2 ) AFTER 22 ns;
    L3 <=  ( \1A\ AND \1B\ );
    L4 <=  ( \1D\ AND \1C\ );
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7454\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7454\;

ARCHITECTURE model OF \7454\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( A AND B );
    L2 <=  ( C AND D );
    L3 <=  ( E AND F );
    L4 <=  ( G AND H );
    Y <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7470\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
J : IN  std_logic;
CLK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
K : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
PRE : IN  std_logic;
GND : IN  std_logic;
CLR : IN  std_logic);
END \7470\;

ARCHITECTURE model OF \7470\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( J );
    L2 <= NOT ( K );
    L3 <=  ( J1 AND J2 AND L1 );
    L4 <=  ( K1 AND K2 AND L2 );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>50 ns, tfall_clk_q=>50 ns)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , j=>L3 , k=>L4 , clk=>CLK , pr=>PRE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7473\ IS PORT(
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
END \7473\;

ARCHITECTURE model OF \7473\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_0 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>40 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_1 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>40 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7474\ IS PORT(
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
END \7474\;

ARCHITECTURE model OF \7474\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>40 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>40 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7475\ IS PORT(
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
END \7475\;

ARCHITECTURE model OF \7475\ IS
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
      GENERIC MAP (trise_clk_q=>40 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\1\\\ , d=>L1 , enable=>C12 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>40 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\2\\\ , d=>L2 , enable=>C12 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>40 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\3\\\ , d=>L3 , enable=>C34 );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>40 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\4\\\ , d=>L4 , enable=>C34 );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q1 , d=>D1 , enable=>C12 );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q2 , d=>D2 , enable=>C12 );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q3 , d=>D3 , enable=>C34 );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q4 , d=>D4 , enable=>C34 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7477\ IS PORT(
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
END \7477\;

ARCHITECTURE model OF \7477\ IS

    BEGIN
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q1 , d=>D1 , enable=>C12 );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q2 , d=>D2 , enable=>C12 );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q3 , d=>D3 , enable=>C34 );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q4 , d=>D4 , enable=>C34 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7482\ IS PORT(
C0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
S1 : OUT  std_logic;
S2 : OUT  std_logic;
C2 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7482\;

ARCHITECTURE model OF \7482\ IS
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
    N1 <= NOT ( B2 ) AFTER 10 ns;
    N2 <= NOT ( A2 ) AFTER 10 ns;
    L1 <=  ( C0 AND N3 );
    L2 <=  ( A1 AND N3 );
    L3 <=  ( B1 AND N3 );
    L4 <=  ( C0 AND A1 AND B1 );
    L5 <=  ( C0 AND A1 );
    L6 <=  ( C0 AND B1 );
    L7 <=  ( B1 AND A1 );
    L8 <=  ( N3 AND N4 );
    L9 <=  ( N2 AND N4 );
    L10 <=  ( N1 AND N4 );
    L11 <=  ( N3 AND N2 AND N1 );
    L12 <=  ( N3 AND N2 );
    L13 <=  ( N3 AND N1 );
    L14 <=  ( N2 AND N1 );
    S1 <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 40 ns;
    N3 <= NOT ( L5 OR L6 OR L7 ) AFTER 12 ns;
    S2 <= NOT ( L8 OR L9 OR L10 OR L11 ) AFTER 30 ns;
    N4 <= NOT ( L12 OR L13 OR L14 ) AFTER 27 ns;
    C2 <= N4;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7483\ IS PORT(
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
END \7483\;

ARCHITECTURE model OF \7483\ IS
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
    N1 <= NOT ( C0 ) AFTER 2 ns;
    N10 <= NOT ( C0 ) AFTER 5 ns;
    N2 <= NOT ( A1 OR B1 ) AFTER 5 ns;
    N3 <= NOT ( A1 AND B1 ) AFTER 5 ns;
    N4 <= NOT ( B2 OR A2 ) AFTER 5 ns;
    N5 <= NOT ( B2 AND A2 ) AFTER 5 ns;
    N6 <= NOT ( A3 OR B3 ) AFTER 5 ns;
    N7 <= NOT ( A3 AND B3 ) AFTER 5 ns;
    N8 <= NOT ( B4 OR A4 ) AFTER 5 ns;
    N9 <= NOT ( B4 AND A4 ) AFTER 5 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <=  ( L2 AND N3 );
    L4 <=  ( N1 AND N3 );
    L5 <= NOT ( N4 );
    L6 <=  ( L5 AND N5 );
    L7 <=  ( N1 AND N3 AND N5 );
    L8 <=  ( N5 AND N2 );
    L9 <= NOT ( N6 );
    L10 <=  ( L9 AND N7 );
    L11 <=  ( N1 AND N3 AND N5 AND N7 );
    L12 <=  ( N5 AND N7 AND N2 );
    L13 <=  ( N7 AND N4 );
    L14 <= NOT ( N8 );
    L15 <=  ( L14 AND N9 );
    L16 <=  ( N10 AND N3 AND N5 AND N7 AND N9 );
    L17 <=  ( N5 AND N7 AND N9 AND N2 );
    L18 <=  ( N7 AND N9 AND N4 );
    L19 <=  ( N9 AND N6 );
    L20 <= NOT ( L4 OR N2 );
    L21 <= NOT ( L7 OR L8 OR N4 );
    L22 <= NOT ( L11 OR L12 OR L13 OR N6 );
    S1 <=  ( L1 XOR L3 ) AFTER 19 ns;
    S2 <=  ( L20 XOR L6 ) AFTER 19 ns;
    S3 <=  ( L21 XOR L10 ) AFTER 19 ns;
    S4 <=  ( L22 XOR L15 ) AFTER 19 ns;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7483A\ IS PORT(
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
END \7483A\;

ARCHITECTURE model OF \7483A\ IS
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
    N1 <= NOT ( C0 ) AFTER 2 ns;
    N10 <= NOT ( C0 ) AFTER 5 ns;
    N2 <= NOT ( A1 OR B1 ) AFTER 5 ns;
    N3 <= NOT ( A1 AND B1 ) AFTER 5 ns;
    N4 <= NOT ( B2 OR A2 ) AFTER 5 ns;
    N5 <= NOT ( B2 AND A2 ) AFTER 5 ns;
    N6 <= NOT ( A3 OR B3 ) AFTER 5 ns;
    N7 <= NOT ( A3 AND B3 ) AFTER 5 ns;
    N8 <= NOT ( B4 OR A4 ) AFTER 5 ns;
    N9 <= NOT ( B4 AND A4 ) AFTER 5 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <=  ( L2 AND N3 );
    L4 <=  ( N1 AND N3 );
    L5 <= NOT ( N4 );
    L6 <=  ( L5 AND N5 );
    L7 <=  ( N1 AND N3 AND N5 );
    L8 <=  ( N5 AND N2 );
    L9 <= NOT ( N6 );
    L10 <=  ( L9 AND N7 );
    L11 <=  ( N1 AND N3 AND N5 AND N7 );
    L12 <=  ( N5 AND N7 AND N2 );
    L13 <=  ( N7 AND N4 );
    L14 <= NOT ( N8 );
    L15 <=  ( L14 AND N9 );
    L16 <=  ( N10 AND N3 AND N5 AND N7 AND N9 );
    L17 <=  ( N5 AND N7 AND N9 AND N2 );
    L18 <=  ( N7 AND N9 AND N4 );
    L19 <=  ( N9 AND N6 );
    L20 <= NOT ( L4 OR N2 );
    L21 <= NOT ( L7 OR L8 OR N4 );
    L22 <= NOT ( L11 OR L12 OR L13 OR N6 );
    S1 <=  ( L1 XOR L3 ) AFTER 19 ns;
    S2 <=  ( L20 XOR L6 ) AFTER 19 ns;
    S3 <=  ( L21 XOR L10 ) AFTER 19 ns;
    S4 <=  ( L22 XOR L15 ) AFTER 19 ns;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7485\ IS PORT(
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
END \7485\;

ARCHITECTURE model OF \7485\ IS
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
    L1 <= NOT ( A3 AND B3 );
    L2 <= NOT ( A2 AND B2 );
    L3 <= NOT ( A1 AND B1 );
    L4 <= NOT ( A0 AND B0 );
    L5 <=  ( A3 AND L1 );
    L6 <=  ( L1 AND B3 );
    L7 <=  ( A2 AND L2 );
    L8 <=  ( L2 AND B2 );
    L9 <=  ( A1 AND L3 );
    L10 <=  ( L3 AND B1 );
    L11 <=  ( A0 AND L4 );
    L12 <=  ( L4 AND B0 );
    N1 <= NOT ( L5 OR L6 ) AFTER 15 ns;
    N2 <= NOT ( L7 OR L8 ) AFTER 15 ns;
    N3 <= NOT ( L9 OR L10 ) AFTER 15 ns;
    N4 <= NOT ( L11 OR L12 ) AFTER 15 ns;
    N5 <=  ( L6 ) AFTER 15 ns;
    N6 <=  ( L5 ) AFTER 15 ns;
    L13 <=  ( B2 AND L2 AND N1 );
    L14 <=  ( B1 AND L3 AND N1 AND N2 );
    L15 <=  ( B0 AND L4 AND N1 AND N2 AND N3 );
    L16 <=  ( N1 AND N2 AND N3 AND N4 AND \A<Bi\ );
    L17 <=  ( N1 AND N2 AND N3 AND N4 AND \A=Bi\ );
    L18 <=  ( \A=Bi\ AND N4 AND N3 AND N2 AND N1 );
    L19 <=  ( \A>Bi\ AND N4 AND N2 AND N3 AND N1 );
    L20 <=  ( N3 AND N2 AND N1 AND L4 AND A0 );
    L21 <=  ( N2 AND N1 AND L3 AND A1 );
    L22 <=  ( N1 AND L2 AND A2 );
    \A>Bo\ <= NOT ( N5 OR L13 OR L14 OR L15 OR L16 OR L17 ) AFTER 17 ns;
    \A<Bo\ <= NOT ( L18 OR L19 OR L20 OR L21 OR L22 OR N6 ) AFTER 17 ns;
    \A=Bo\ <=  ( N1 AND N2 AND \A=Bi\ AND N3 AND N4 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7486\ IS PORT(
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
END \7486\;

ARCHITECTURE model OF \7486\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 30 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 30 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 30 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7490\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
\R9(1)\ : IN  std_logic;
\R9(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7490\;

ARCHITECTURE model OF \7490\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( \R9(1)\ AND \R9(2)\ );
    L2 <= NOT ( \R0(1)\ AND \R0(2)\ );
    L3 <=  ( L2 AND L1 );
    L8 <=  ( N5 AND N7 );
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2 );
    JKFFC_2 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , cl=>L3 );
    JKFFC_3 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , cl=>L3 );
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>22 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L8 , k=>N9 , clk=>N2 , pr=>L1 , cl=>L2 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7490A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
\R9(1)\ : IN  std_logic;
\R9(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7490A\;

ARCHITECTURE model OF \7490A\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( \R9(1)\ AND \R9(2)\ );
    L2 <= NOT ( \R0(1)\ AND \R0(2)\ );
    L3 <=  ( L2 AND L1 );
    L8 <=  ( N5 AND N7 );
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2 );
    JKFFC_4 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , cl=>L3 );
    JKFFC_5 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , cl=>L3 );
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>22 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L8 , k=>N9 , clk=>N2 , pr=>L1 , cl=>L2 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7491\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
CLK : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7491\;

ARCHITECTURE model OF \7491\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    L1 <=  ( A AND B );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK );
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK );
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK );
    DFF_0 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , d=>N7 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7491A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
CLK : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7491A\;

ARCHITECTURE model OF \7491A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    L1 <=  ( A AND B );
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK );
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK );
    DFF_1 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , d=>N7 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7492\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7492\;

ARCHITECTURE model OF \7492\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( \R0(1)\ AND \R0(2)\ );
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    JKFFC_6 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , cl=>L1 );
    JKFFC_7 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N8 , k=>ONE , clk=>N2 , cl=>L1 );
    JKFFC_8 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>N5 , k=>ONE , clk=>N2 , cl=>L1 );
    JKFFC_9 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , cl=>L1 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7492A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7492A\;

ARCHITECTURE model OF \7492A\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( \R0(1)\ AND \R0(2)\ );
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    JKFFC_10 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , cl=>L1 );
    JKFFC_11 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N8 , k=>ONE , clk=>N2 , cl=>L1 );
    JKFFC_12 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>N5 , k=>ONE , clk=>N2 , cl=>L1 );
    JKFFC_13 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , cl=>L1 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7493\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7493\;

ARCHITECTURE model OF \7493\ IS
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
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    L1 <= NOT ( \R0(1)\ AND \R0(2)\ );
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>N3 , qNot=>N4 , d=>N4 , clk=>N1 , cl=>L1 );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N5 , qNot=>N6 , d=>N6 , clk=>N2 , cl=>L1 );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP (q=>N7 , qNot=>N8 , d=>N8 , clk=>N6 , cl=>L1 );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>16 ns)
      PORT MAP (q=>N9 , qNot=>N10 , d=>N10 , clk=>N8 , cl=>L1 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7493A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7493A\;

ARCHITECTURE model OF \7493A\ IS
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
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    L1 <= NOT ( \R0(1)\ AND \R0(2)\ );
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>N3 , qNot=>N4 , d=>N4 , clk=>N1 , cl=>L1 );
    DFFC_5 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N5 , qNot=>N6 , d=>N6 , clk=>N2 , cl=>L1 );
    DFFC_6 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP (q=>N7 , qNot=>N8 , d=>N8 , clk=>N6 , cl=>L1 );
    DFFC_7 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>16 ns)
      PORT MAP (q=>N9 , qNot=>N10 , d=>N10 , clk=>N8 , cl=>L1 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7494\ IS PORT(
P1A : IN  std_logic;
P1B : IN  std_logic;
P1C : IN  std_logic;
P1D : IN  std_logic;
P2A : IN  std_logic;
P2B : IN  std_logic;
P2C : IN  std_logic;
P2D : IN  std_logic;
PE1 : IN  std_logic;
PE2 : IN  std_logic;
CLR : IN  std_logic;
\IN\ : IN  std_logic;
CLK : IN  std_logic;
\OUT\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7494\;

ARCHITECTURE model OF \7494\ IS
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

    BEGIN
    L1 <= NOT ( CLR );
    L2 <=  ( P1A AND PE1 );
    L3 <=  ( PE2 AND P2A );
    L4 <=  ( P1B AND PE1 );
    L5 <=  ( PE2 AND P2B );
    L6 <=  ( P1C AND PE1 );
    L7 <=  ( PE2 AND P2C );
    L8 <=  ( P1D AND PE1 );
    L9 <=  ( PE2 AND P2D );
    L10 <= NOT ( L2 OR L3 );
    L11 <= NOT ( L4 OR L5 );
    L12 <= NOT ( L6 OR L7 );
    L13 <= NOT ( L8 OR L9 );
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>\IN\ , clk=>CLK , pr=>L10 , cl=>L1 );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , pr=>L11 , cl=>L1 );
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , pr=>L12 , cl=>L1 );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>\OUT\ , d=>N3 , clk=>CLK , pr=>L13 , cl=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7495\ IS PORT(
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
END \7495\;

ARCHITECTURE model OF \7495\ IS
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
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>L12 , clk=>N1 );
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L13 , clk=>N1 );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>N1 );
    QA <=  ( N2 ) AFTER 25 ns;
    QB <=  ( N3 ) AFTER 25 ns;
    QC <=  ( N4 ) AFTER 25 ns;
    QD <=  ( N5 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7495A\ IS PORT(
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
END \7495A\;

ARCHITECTURE model OF \7495A\ IS
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
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>L12 , clk=>N1 );
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L13 , clk=>N1 );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>N1 );
    QA <=  ( N2 ) AFTER 25 ns;
    QB <=  ( N3 ) AFTER 25 ns;
    QC <=  ( N4 ) AFTER 25 ns;
    QD <=  ( N5 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \7496\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
CLK : IN  std_logic;
PE : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \7496\;

ARCHITECTURE model OF \7496\ IS
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
    L1 <= NOT ( A AND PE );
    L2 <= NOT ( B AND PE );
    L3 <= NOT ( C AND PE );
    L4 <= NOT ( D AND PE );
    L5 <= NOT ( E AND PE );
    DQFFPC_4 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>SER , clk=>CLK , pr=>L1 , cl=>CLR );
    DQFFPC_5 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , pr=>L2 , cl=>CLR );
    DQFFPC_6 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , pr=>L3 , cl=>CLR );
    DQFFPC_7 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , pr=>L4 , cl=>CLR );
    DQFFPC_8 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , pr=>L5 , cl=>CLR );
    QA <=  ( N1 ) AFTER 30 ns;
    QB <=  ( N2 ) AFTER 30 ns;
    QC <=  ( N3 ) AFTER 30 ns;
    QD <=  ( N4 ) AFTER 30 ns;
    QE <=  ( N5 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74100\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
G_A : IN  std_logic;
G_B : IN  std_logic;
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
END \74100\;

ARCHITECTURE model OF \74100\ IS

    BEGIN
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q1_A , d=>D1_A , enable=>G_A );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q2_A , d=>D2_A , enable=>G_A );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q3_A , d=>D3_A , enable=>G_A );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q4_A , d=>D4_A , enable=>G_A );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q1_B , d=>D1_B , enable=>G_B );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q2_B , d=>D2_B , enable=>G_B );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q3_B , d=>D3_B , enable=>G_B );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q4_B , d=>D4_B , enable=>G_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74104\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
J3 : IN  std_logic;
JK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
K3 : IN  std_logic;
CLK : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
PRE : IN  std_logic;
GND : IN  std_logic;
CLR : IN  std_logic);
END \74104\;

ARCHITECTURE model OF \74104\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( J1 AND J2 AND J3 AND JK );
    L2 <=  ( K1 AND K2 AND K3 AND JK );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , j=>L1 , k=>L2 , clk=>CLK , pr=>PRE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74105\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
J3 : IN  std_logic;
JK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
K3 : IN  std_logic;
CLK : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
PRE : IN  std_logic;
GND : IN  std_logic;
CLR : IN  std_logic);
END \74105\;

ARCHITECTURE model OF \74105\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( J2 );
    L2 <= NOT ( K2 );
    L3 <=  ( J1 AND L1 AND J3 AND JK );
    L4 <=  ( K1 AND L2 AND K3 AND JK );
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q , qNot=>\Q\\\ , j=>L3 , k=>L4 , clk=>CLK , pr=>PRE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74107\ IS PORT(
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
END \74107\;

ARCHITECTURE model OF \74107\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_14 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>40 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_15 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>40 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74109\ IS PORT(
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
END \74109\;

ARCHITECTURE model OF \74109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74116\ IS PORT(
D1_A : IN  std_logic;
D1_B : IN  std_logic;
D2_A : IN  std_logic;
D2_B : IN  std_logic;
D3_A : IN  std_logic;
D3_B : IN  std_logic;
D4_A : IN  std_logic;
D4_B : IN  std_logic;
G1_A : IN  std_logic;
G1_B : IN  std_logic;
G2_A : IN  std_logic;
G2_B : IN  std_logic;
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
END \74116\;

ARCHITECTURE model OF \74116\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( G1_A OR G2_A );
    L2 <= NOT ( G1_B OR G2_B );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q1_A , d=>D1_A , enable=>L1 , pr=>ONE , cl=>CLR_A );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q2_A , d=>D2_A , enable=>L1 , pr=>ONE , cl=>CLR_A );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q3_A , d=>D3_A , enable=>L1 , pr=>ONE , cl=>CLR_A );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q4_A , d=>D4_A , enable=>L1 , pr=>ONE , cl=>CLR_A );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q1_B , d=>D1_B , enable=>L2 , pr=>ONE , cl=>CLR_B );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q2_B , d=>D2_B , enable=>L2 , pr=>ONE , cl=>CLR_B );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q3_B , d=>D3_B , enable=>L2 , pr=>ONE , cl=>CLR_B );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>Q4_B , d=>D4_B , enable=>L2 , pr=>ONE , cl=>CLR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74125\ IS PORT(
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
END \74125\;

ARCHITECTURE model OF \74125\ IS
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
    N1 <=  ( I_A ) AFTER 15 ns;
    N2 <=  ( I_B ) AFTER 15 ns;
    N3 <=  ( I_C ) AFTER 15 ns;
    N4 <=  ( I_D ) AFTER 15 ns;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74126\ IS PORT(
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
END \74126\;

ARCHITECTURE model OF \74126\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 15 ns;
    N2 <=  ( I_B ) AFTER 15 ns;
    N3 <=  ( I_C ) AFTER 15 ns;
    N4 <=  ( I_D ) AFTER 15 ns;
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74128\ IS PORT(
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
END \74128\;

ARCHITECTURE model OF \74128\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 12 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 12 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 12 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74132\ IS PORT(
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
END \74132\;

ARCHITECTURE model OF \74132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 22 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74136\ IS PORT(
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
END \74136\;

ARCHITECTURE model OF \74136\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 55 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 55 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 55 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 55 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74145\ IS PORT(
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
END \74145\;

ARCHITECTURE model OF \74145\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( A );
    L2 <= NOT ( B );
    L3 <= NOT ( C );
    L4 <= NOT ( D );
    \0\ <= NOT ( L1 AND L2 AND L3 AND L4 ) AFTER 50 ns;
    \1\ <= NOT ( A AND L2 AND L3 AND L4 ) AFTER 50 ns;
    \2\ <= NOT ( L1 AND B AND L3 AND L4 ) AFTER 50 ns;
    \3\ <= NOT ( A AND B AND L3 AND L4 ) AFTER 50 ns;
    \4\ <= NOT ( L1 AND L2 AND C AND L4 ) AFTER 50 ns;
    \5\ <= NOT ( A AND L2 AND C AND L4 ) AFTER 50 ns;
    \6\ <= NOT ( L1 AND B AND C AND L4 ) AFTER 50 ns;
    \7\ <= NOT ( A AND B AND C AND L4 ) AFTER 50 ns;
    \8\ <= NOT ( L1 AND L2 AND L3 AND D ) AFTER 50 ns;
    \9\ <= NOT ( A AND L2 AND L3 AND D ) AFTER 50 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74147\ IS PORT(
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
END \74147\;

ARCHITECTURE model OF \74147\ IS
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
    L10 <= NOT ( L1 AND \2\ AND \4\ AND \6\ AND L8 );
    L11 <= NOT ( \4\ AND \6\ AND L3 AND L8 );
    L12 <= NOT ( \6\ AND L5 AND L8 );
    L13 <= NOT ( L7 AND L8 );
    L14 <= NOT ( L2 AND \5\ AND \4\ AND L8 );
    L15 <= NOT ( L3 AND \4\ AND \5\ AND L8 );
    L16 <= NOT ( L6 AND L8 );
    L17 <= NOT ( L4 AND L8 );
    L18 <= NOT ( L5 AND L8 );
    D <=  ( L8 ) AFTER 19 ns;
    C <=  ( L17 AND L18 AND L16 AND L13 ) AFTER 19 ns;
    B <=  ( L14 AND L15 AND L16 AND L13 ) AFTER 19 ns;
    A <=  ( L10 AND L11 AND L12 AND L13 AND \9\ ) AFTER 19 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74148\ IS PORT(
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
END \74148\;

ARCHITECTURE model OF \74148\ IS
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

    BEGIN
    N1 <= NOT ( \1\ ) AFTER 7 ns;
    N2 <= NOT ( \2\ ) AFTER 7 ns;
    N3 <= NOT ( \3\ ) AFTER 7 ns;
    N4 <= NOT ( \4\ ) AFTER 7 ns;
    N5 <= NOT ( \5\ ) AFTER 7 ns;
    N6 <= NOT ( \6\ ) AFTER 7 ns;
    N7 <= NOT ( \7\ ) AFTER 7 ns;
    L1 <= NOT ( EI );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N4 );
    L4 <= NOT ( N5 );
    L5 <= NOT ( N6 );
    L6 <=  ( N1 AND L2 AND L3 AND L5 AND L1 );
    L7 <=  ( N3 AND L3 AND L5 AND L1 );
    L8 <=  ( N5 AND L5 AND L1 );
    L9 <=  ( N7 AND L1 );
    L10 <=  ( N2 AND L3 AND L4 AND L1 );
    L11 <=  ( N3 AND L3 AND L4 AND L1 );
    L12 <=  ( N6 AND L1 );
    L13 <=  ( N7 AND L1 );
    L14 <=  ( N4 AND L1 );
    L15 <=  ( N5 AND L1 );
    L16 <=  ( N6 AND L1 );
    L17 <=  ( N7 AND L1 );
    N8 <=  ( L1 ) AFTER 5 ns;
    N9 <=  ( L1 ) AFTER 4 ns;
    N10 <= NOT ( \0\ AND \1\ AND \2\ AND \3\ AND \4\ AND \5\ AND \6\ AND \7\ AND N8 ) AFTER 22 ns;
    EO <= N10;
    GS <= NOT ( N10 AND N9 ) AFTER 15 ns;
    A0 <= NOT ( L6 OR L7 OR L8 OR L9 ) AFTER 12 ns;
    A1 <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 12 ns;
    A2 <= NOT ( L14 OR L15 OR L16 OR L17 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74150\ IS PORT(
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
END \74150\;

ARCHITECTURE model OF \74150\ IS
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
    N1 <= NOT ( A ) AFTER 21 ns;
    N2 <= NOT ( B ) AFTER 21 ns;
    N3 <= NOT ( C ) AFTER 21 ns;
    N4 <= NOT ( D ) AFTER 21 ns;
    N5 <= NOT ( G ) AFTER 10 ns;
    N6 <=  ( A ) AFTER 21 ns;
    N7 <=  ( B ) AFTER 21 ns;
    N8 <=  ( C ) AFTER 21 ns;
    N9 <=  ( D ) AFTER 21 ns;
    L1 <=  ( E0 AND N1 AND N2 AND N3 AND N4 AND N5 );
    L2 <=  ( E1 AND N6 AND N2 AND N3 AND N4 AND N5 );
    L3 <=  ( E2 AND N1 AND N7 AND N3 AND N4 AND N5 );
    L4 <=  ( E3 AND N6 AND N7 AND N3 AND N4 AND N5 );
    L5 <=  ( E4 AND N1 AND N2 AND N8 AND N4 AND N5 );
    L6 <=  ( E5 AND N6 AND N2 AND N8 AND N4 AND N5 );
    L7 <=  ( E6 AND N1 AND N7 AND N8 AND N4 AND N5 );
    L8 <=  ( E7 AND N6 AND N7 AND N8 AND N4 AND N5 );
    L9 <=  ( E8 AND N1 AND N2 AND N3 AND N9 AND N5 );
    L10 <=  ( E9 AND N6 AND N2 AND N3 AND N9 AND N5 );
    L11 <=  ( E10 AND N1 AND N7 AND N3 AND N9 AND N5 );
    L12 <=  ( E11 AND N6 AND N7 AND N3 AND N9 AND N5 );
    L13 <=  ( E12 AND N1 AND N2 AND N8 AND N9 AND N5 );
    L14 <=  ( E13 AND N6 AND N2 AND N8 AND N9 AND N5 );
    L15 <=  ( E14 AND N1 AND N7 AND N8 AND N9 AND N5 );
    L16 <=  ( E15 AND N6 AND N7 AND N8 AND N9 AND N5 );
    W <= NOT ( L1 OR L2 OR L3 OR L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74151\ IS PORT(
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
END \74151\;

ARCHITECTURE model OF \74151\ IS
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
    N1 <= NOT ( A ) AFTER 15 ns;
    N2 <= NOT ( B ) AFTER 15 ns;
    N3 <= NOT ( C ) AFTER 15 ns;
    N4 <= NOT ( G ) AFTER 9 ns;
    N5 <=  ( G ) AFTER 11 ns;
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
    Y <=  ( N4 AND L12 ) AFTER 24 ns;
    W <=  ( N5 OR L13 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74151A\ IS PORT(
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
END \74151A\;

ARCHITECTURE model OF \74151A\ IS
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
    N1 <= NOT ( A ) AFTER 15 ns;
    N2 <= NOT ( B ) AFTER 15 ns;
    N3 <= NOT ( C ) AFTER 15 ns;
    N4 <= NOT ( G ) AFTER 9 ns;
    N5 <=  ( G ) AFTER 11 ns;
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
    Y <=  ( N4 AND L12 ) AFTER 24 ns;
    W <=  ( N5 OR L13 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74152\ IS PORT(
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
END \74152\;

ARCHITECTURE model OF \74152\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 16 ns;
    N2 <= NOT ( B ) AFTER 16 ns;
    N3 <= NOT ( C ) AFTER 16 ns;
    N4 <=  ( A ) AFTER 16 ns;
    N5 <=  ( B ) AFTER 16 ns;
    N6 <=  ( C ) AFTER 16 ns;
    L4 <=  ( D0 AND N1 AND N2 AND N3 );
    L5 <=  ( D1 AND N4 AND N2 AND N3 );
    L6 <=  ( D2 AND N1 AND N5 AND N3 );
    L7 <=  ( D3 AND N4 AND N5 AND N3 );
    L8 <=  ( D4 AND N1 AND N2 AND N6 );
    L9 <=  ( D5 AND N4 AND N2 AND N6 );
    L10 <=  ( D6 AND N1 AND N5 AND N6 );
    L11 <=  ( D7 AND N4 AND N5 AND N6 );
    W <= NOT ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74153\ IS PORT(
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
END \74153\;

ARCHITECTURE model OF \74153\ IS
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
    N1 <= NOT ( \1G\ ) AFTER 12 ns;
    N2 <= NOT ( \2G\ ) AFTER 12 ns;
    N3 <= NOT ( B ) AFTER 16 ns;
    N4 <= NOT ( A ) AFTER 16 ns;
    N5 <=  ( B ) AFTER 16 ns;
    N6 <=  ( A ) AFTER 16 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <=  ( L3 OR L4 OR L5 OR L6 ) AFTER 23 ns;
    \2Y\ <=  ( L7 OR L8 OR L9 OR L10 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74154\ IS PORT(
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
END \74154\;

ARCHITECTURE model OF \74154\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <= NOT ( A ) AFTER 6 ns;
    N2 <= NOT ( B ) AFTER 6 ns;
    N3 <= NOT ( C ) AFTER 6 ns;
    N4 <= NOT ( D ) AFTER 6 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( G1 OR G2 );
    \0\ <= NOT ( L5 AND N1 AND N2 AND N3 AND N4 ) AFTER 30 ns;
    \1\ <= NOT ( L5 AND L1 AND N2 AND N3 AND N4 ) AFTER 30 ns;
    \2\ <= NOT ( L5 AND N1 AND L2 AND N3 AND N4 ) AFTER 30 ns;
    \3\ <= NOT ( L5 AND L1 AND L2 AND N3 AND N4 ) AFTER 30 ns;
    \4\ <= NOT ( L5 AND N1 AND N2 AND L3 AND N4 ) AFTER 30 ns;
    \5\ <= NOT ( L5 AND L1 AND N2 AND L3 AND N4 ) AFTER 30 ns;
    \6\ <= NOT ( L5 AND N1 AND L2 AND L3 AND N4 ) AFTER 30 ns;
    \7\ <= NOT ( L5 AND L1 AND L2 AND L3 AND N4 ) AFTER 30 ns;
    \8\ <= NOT ( L5 AND N1 AND N2 AND N3 AND L4 ) AFTER 30 ns;
    \9\ <= NOT ( L5 AND L1 AND N2 AND N3 AND L4 ) AFTER 30 ns;
    \10\ <= NOT ( L5 AND N1 AND L2 AND N3 AND L4 ) AFTER 30 ns;
    \11\ <= NOT ( L5 AND L1 AND L2 AND N3 AND L4 ) AFTER 30 ns;
    \12\ <= NOT ( L5 AND N1 AND N2 AND L3 AND L4 ) AFTER 30 ns;
    \13\ <= NOT ( L5 AND L1 AND N2 AND L3 AND L4 ) AFTER 30 ns;
    \14\ <= NOT ( L5 AND N1 AND L2 AND L3 AND L4 ) AFTER 30 ns;
    \15\ <= NOT ( L5 AND L1 AND L2 AND L3 AND L4 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74155\ IS PORT(
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
END \74155\;

ARCHITECTURE model OF \74155\ IS
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
    N1 <= NOT ( \1C\ ) AFTER 4 ns;
    N2 <= NOT ( L1 ) AFTER 12 ns;
    N3 <= NOT ( L2 ) AFTER 12 ns;
    L3 <= NOT ( \1G\ OR N1 );
    L4 <= NOT ( \2G\ OR \2C\ );
    \1Y0\ <= NOT ( L1 AND L2 AND L3 ) AFTER 27 ns;
    \1Y1\ <= NOT ( L1 AND N3 AND L3 ) AFTER 27 ns;
    \1Y2\ <= NOT ( N2 AND L2 AND L3 ) AFTER 27 ns;
    \1Y3\ <= NOT ( N2 AND N3 AND L3 ) AFTER 27 ns;
    \2Y0\ <= NOT ( L1 AND L2 AND L4 ) AFTER 27 ns;
    \2Y1\ <= NOT ( L1 AND N3 AND L4 ) AFTER 27 ns;
    \2Y2\ <= NOT ( N2 AND L2 AND L4 ) AFTER 27 ns;
    \2Y3\ <= NOT ( N2 AND N3 AND L4 ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74156\ IS PORT(
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
END \74156\;

ARCHITECTURE model OF \74156\ IS
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
    N1 <= NOT ( \1C\ ) AFTER 4 ns;
    N2 <= NOT ( L1 ) AFTER 11 ns;
    N3 <= NOT ( L2 ) AFTER 11 ns;
    L3 <= NOT ( \1G\ OR N1 );
    L4 <= NOT ( \2G\ OR \2C\ );
    \1Y0\ <= NOT ( L1 AND L2 AND L3 ) AFTER 30 ns;
    \1Y1\ <= NOT ( L1 AND N3 AND L3 ) AFTER 30 ns;
    \1Y2\ <= NOT ( N2 AND L2 AND L3 ) AFTER 30 ns;
    \1Y3\ <= NOT ( N2 AND N3 AND L3 ) AFTER 30 ns;
    \2Y0\ <= NOT ( L1 AND L2 AND L4 ) AFTER 30 ns;
    \2Y1\ <= NOT ( L1 AND N3 AND L4 ) AFTER 30 ns;
    \2Y2\ <= NOT ( N2 AND L2 AND L4 ) AFTER 30 ns;
    \2Y3\ <= NOT ( N2 AND N3 AND L4 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74157\ IS PORT(
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
END \74157\;

ARCHITECTURE model OF \74157\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 13 ns;
    N2 <= NOT ( G ) AFTER 7 ns;
    L1 <= NOT ( N1 );
    L2 <=  ( \1A\ AND N1 AND N2 );
    L3 <=  ( \1B\ AND L1 AND N2 );
    L4 <=  ( \2A\ AND N1 AND N2 );
    L5 <=  ( \2B\ AND L1 AND N2 );
    L6 <=  ( \3A\ AND N1 AND N2 );
    L7 <=  ( \3B\ AND L1 AND N2 );
    L8 <=  ( \4A\ AND N1 AND N2 );
    L9 <=  ( \4B\ AND L1 AND N2 );
    \1Y\ <=  ( L2 OR L3 ) AFTER 14 ns;
    \2Y\ <=  ( L4 OR L5 ) AFTER 14 ns;
    \3Y\ <=  ( L6 OR L7 ) AFTER 14 ns;
    \4Y\ <=  ( L8 OR L9 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74159\ IS PORT(
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
END \74159\;

ARCHITECTURE model OF \74159\ IS
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
    N1 <= NOT ( A ) AFTER 11 ns;
    N2 <= NOT ( B ) AFTER 11 ns;
    N3 <= NOT ( C ) AFTER 11 ns;
    N4 <= NOT ( D ) AFTER 11 ns;
    N5 <=  ( A ) AFTER 11 ns;
    N6 <=  ( B ) AFTER 11 ns;
    N7 <=  ( C ) AFTER 11 ns;
    N8 <=  ( D ) AFTER 11 ns;
    L1 <= NOT ( G1 OR G2 );
    \0\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N4 ) AFTER 36 ns;
    \1\ <= NOT ( L1 AND N5 AND N2 AND N3 AND N4 ) AFTER 36 ns;
    \2\ <= NOT ( L1 AND N1 AND N6 AND N3 AND N4 ) AFTER 36 ns;
    \3\ <= NOT ( L1 AND N5 AND N6 AND N3 AND N4 ) AFTER 36 ns;
    \4\ <= NOT ( L1 AND N1 AND N2 AND N7 AND N4 ) AFTER 36 ns;
    \5\ <= NOT ( L1 AND N5 AND N2 AND N7 AND N4 ) AFTER 36 ns;
    \6\ <= NOT ( L1 AND N1 AND N6 AND N7 AND N4 ) AFTER 36 ns;
    \7\ <= NOT ( L1 AND N5 AND N6 AND N7 AND N4 ) AFTER 36 ns;
    \8\ <= NOT ( L1 AND N1 AND N2 AND N3 AND N8 ) AFTER 36 ns;
    \9\ <= NOT ( L1 AND N5 AND N2 AND N3 AND N8 ) AFTER 36 ns;
    \10\ <= NOT ( L1 AND N1 AND N6 AND N3 AND N8 ) AFTER 36 ns;
    \11\ <= NOT ( L1 AND N5 AND N6 AND N3 AND N8 ) AFTER 36 ns;
    \12\ <= NOT ( L1 AND N1 AND N2 AND N7 AND N8 ) AFTER 36 ns;
    \13\ <= NOT ( L1 AND N5 AND N2 AND N7 AND N8 ) AFTER 36 ns;
    \14\ <= NOT ( L1 AND N1 AND N6 AND N7 AND N8 ) AFTER 36 ns;
    \15\ <= NOT ( L1 AND N5 AND N6 AND N7 AND N8 ) AFTER 36 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74164\ IS PORT(
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
END \74164\;

ARCHITECTURE model OF \74164\ IS
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
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLR );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLR );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLR );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLR );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLR );
    QA <=  ( N1 ) AFTER 25 ns;
    QB <=  ( N2 ) AFTER 25 ns;
    QC <=  ( N3 ) AFTER 25 ns;
    QD <=  ( N4 ) AFTER 25 ns;
    QE <=  ( N5 ) AFTER 25 ns;
    QF <=  ( N6 ) AFTER 25 ns;
    QG <=  ( N7 ) AFTER 25 ns;
    QH <=  ( N8 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74165\ IS PORT(
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
END \74165\;

ARCHITECTURE model OF \74165\ IS
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
    N1 <= NOT ( \SH/L\\D\\\ ) AFTER 35 ns;
    N2 <=  ( SER ) AFTER 10 ns;
    L1 <=  ( CLK AND \SH/L\\D\\\ );
    N3 <=  ( \SH/L\\D\\\ AND INH ) AFTER 20 ns;
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
    DQFFPC_9 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N5 , d=>N2 , clk=>N4 , pr=>L2 , cl=>L10 );
    DQFFPC_10 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>N4 , pr=>L3 , cl=>L11 );
    DQFFPC_11 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>N4 , pr=>L4 , cl=>L12 );
    DQFFPC_12 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>N4 , pr=>L5 , cl=>L13 );
    DQFFPC_13 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>N4 , pr=>L6 , cl=>L14 );
    DQFFPC_14 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N10 , d=>N9 , clk=>N4 , pr=>L7 , cl=>L15 );
    DQFFPC_15 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N11 , d=>N10 , clk=>N4 , pr=>L8 , cl=>L16 );
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>31 ns)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>N11 , clk=>N4 , pr=>L9 , cl=>L17 );
    QH <=  ( N12 ) AFTER 0 ns;
    \Q\\H\\\ <=  ( N13 ) AFTER 0 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74166\ IS PORT(
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
END \74166\;

ARCHITECTURE model OF \74166\ IS
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
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N5 , d=>L3 , clk=>N4 , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N6 , d=>L6 , clk=>N4 , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N4 , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N8 , d=>L12 , clk=>N4 , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N4 , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N10 , d=>L18 , clk=>N4 , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N11 , d=>L21 , clk=>N4 , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>QH , d=>L24 , clk=>N4 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74167\ IS PORT(
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
CLK : IN  std_logic;
STROBE : IN  std_logic;
ENin : IN  std_logic;
\UNITY/CAS\ : IN  std_logic;
SET9 : IN  std_logic;
CLR : IN  std_logic;
ENout : OUT  std_logic;
Y : OUT  std_logic;
Z : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74167\;

ARCHITECTURE model OF \74167\ IS
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

    BEGIN
    L1 <= NOT ( ENin );
    L2 <= NOT ( N11 );
    L3 <= NOT ( N12 );
    L4 <= NOT ( N13 );
    L5 <= NOT ( N14 );
    L6 <=  ( B3 AND N9 AND L4 );
    L7 <=  ( B2 AND N9 AND N11 );
    L8 <=  ( B1 AND N9 AND L2 AND N12 );
    L9 <=  ( B0 AND N9 AND N13 AND L5 );
    L10 <=  ( B3 AND N10 AND L4 );
    L11 <=  ( B2 AND N10 AND N11 );
    L12 <=  ( B1 AND N10 AND L2 AND N12 );
    L13 <=  ( B0 AND N10 AND N13 AND L5 );
    L14 <= NOT ( CLK );
    L15 <= NOT ( SET9 );
    L16 <= NOT ( CLR );
    L17 <=  ( L1 AND N12 AND N11 );
    L18 <=  ( L1 AND N13 );
    L19 <=  ( L16 AND L15 );
    L20 <=  ( L17 OR L18 );
    N1 <= NOT ( L1 AND L4 AND L14 ) AFTER 0 ns;
    N2 <= NOT ( L1 AND N11 AND L14 ) AFTER 0 ns;
    N3 <= NOT ( L20 AND L14 ) AFTER 0 ns;
    N4 <= NOT ( L1 AND N13 AND L14 ) AFTER 0 ns;
    N5 <=  ( CLK ) AFTER 9 ns;
    N6 <=  ( CLK ) AFTER 5 ns;
    N7 <=  ( STROBE ) AFTER 6 ns;
    N8 <=  ( STROBE ) AFTER 7 ns;
    N9 <= NOT ( N5 OR N7 ) AFTER 7 ns;
    N10 <= NOT ( N6 OR N8 ) AFTER 7 ns;
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N11 , d=>L2 , clk=>N1 , cl=>L19 );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N12 , d=>L3 , clk=>N2 , cl=>L19 );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N13 , d=>L4 , clk=>N3 , cl=>L16 );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N14 , d=>L5 , clk=>N4 , cl=>L16 );
    Z <= NOT ( L6 OR L7 OR L8 OR L9 ) AFTER 13 ns;
    N15 <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 13 ns;
    Y <= NOT ( \UNITY/CAS\ AND N15 ) AFTER 14 ns;
    ENout <= NOT ( L1 AND N13 AND N14 ) AFTER 21 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74173\ IS PORT(
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
END \74173\;

ARCHITECTURE model OF \74173\ IS
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
    N1 <= NOT ( G1 OR G2 ) AFTER 7 ns;
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
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N2 , d=>L6 , clk=>CLK , cl=>L2 );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N3 , d=>L9 , clk=>CLK , cl=>L2 );
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N4 , d=>L12 , clk=>CLK , cl=>L2 );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>L2 );
    N6 <=  ( N2 ) AFTER 23 ns;
    N7 <=  ( N3 ) AFTER 23 ns;
    N8 <=  ( N4 ) AFTER 23 ns;
    N9 <=  ( N5 ) AFTER 23 ns;
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q1 , i1=>N6 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q2 , i1=>N7 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q3 , i1=>N8 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q4 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74174\ IS PORT(
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
END \74174\;

ARCHITECTURE model OF \74174\ IS

    BEGIN
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74175\ IS PORT(
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
END \74175\;

ARCHITECTURE model OF \74175\ IS

    BEGIN
    DFFC_8 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_9 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_10 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_11 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74176\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74176\;

ARCHITECTURE model OF \74176\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( LOAD AND CLR );
    L2 <= NOT ( A AND L1 AND CLR );
    L3 <= NOT ( L2 AND L1 );
    L4 <= NOT ( B AND L1 AND CLR );
    L5 <= NOT ( L4 AND L1 );
    L6 <= NOT ( C AND L1 AND CLR );
    L7 <= NOT ( L6 AND L1 );
    L8 <= NOT ( D AND L1 AND CLR );
    L9 <= NOT ( L8 AND L1 );
    L10 <=  ( N5 AND N7 );
    N1 <= NOT ( CLK1 ) AFTER 0 ns;
    N2 <= NOT ( CLK2 ) AFTER 0 ns;
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>N10 , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L10 , k=>N9 , clk=>N2 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74177\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74177\;

ARCHITECTURE model OF \74177\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( LOAD AND CLR );
    L2 <= NOT ( A AND L1 AND CLR );
    L3 <= NOT ( L2 AND L1 );
    L4 <= NOT ( B AND L1 AND CLR );
    L5 <= NOT ( L4 AND L1 );
    L6 <= NOT ( C AND L1 AND CLR );
    L7 <= NOT ( L6 AND L1 );
    L8 <= NOT ( D AND L1 AND CLR );
    L9 <= NOT ( L8 AND L1 );
    N1 <= NOT ( CLK1 ) AFTER 0 ns;
    N2 <= NOT ( CLK2 ) AFTER 0 ns;
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>ONE , k=>ONE , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_16 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>24 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74178\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
SHIFT : IN  std_logic;
LOAD : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74178\;

ARCHITECTURE model OF \74178\ IS
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

    BEGIN
    L1 <= NOT ( LOAD );
    L2 <= NOT ( SHIFT );
    L3 <=  ( SER AND SHIFT );
    L4 <=  ( L2 AND A AND LOAD );
    L5 <=  ( L2 AND L1 AND N2 );
    L6 <=  ( L3 OR L4 OR L5 );
    L7 <=  ( N2 AND SHIFT );
    L8 <=  ( L2 AND B AND LOAD );
    L9 <=  ( L2 AND L1 AND N3 );
    L10 <=  ( L7 OR L8 OR L9 );
    L11 <=  ( N3 AND SHIFT );
    L12 <=  ( L2 AND C AND LOAD );
    L13 <=  ( L2 AND L1 AND N4 );
    L14 <=  ( L11 OR L12 OR L13 );
    L15 <=  ( N4 AND SHIFT );
    L16 <=  ( L2 AND D AND LOAD );
    L17 <=  ( L2 AND L1 AND N5 );
    L18 <=  ( L15 OR L16 OR L17 );
    N1 <= NOT ( CLK ) AFTER 0 ns;
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>L6 , clk=>N1 );
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>L10 , clk=>N1 );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>L18 , clk=>N1 );
    QA <=  ( N2 ) AFTER 20 ns;
    QB <=  ( N3 ) AFTER 20 ns;
    QC <=  ( N4 ) AFTER 20 ns;
    QD <=  ( N5 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74179\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
SHIFT : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
\Q\\D\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74179\;

ARCHITECTURE model OF \74179\ IS
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

    BEGIN
    L1 <= NOT ( LOAD );
    L2 <= NOT ( SHIFT );
    L3 <=  ( SER AND SHIFT );
    L4 <=  ( L2 AND A AND LOAD );
    L5 <=  ( L2 AND L1 AND N2 );
    L6 <=  ( L3 OR L4 OR L5 );
    L7 <=  ( N2 AND SHIFT );
    L8 <=  ( L2 AND B AND LOAD );
    L9 <=  ( L2 AND L1 AND N3 );
    L10 <=  ( L7 OR L8 OR L9 );
    L11 <=  ( N3 AND SHIFT );
    L12 <=  ( L2 AND C AND LOAD );
    L13 <=  ( L2 AND L1 AND N4 );
    L14 <=  ( L11 OR L12 OR L13 );
    L15 <=  ( N4 AND SHIFT );
    L16 <=  ( L2 AND D AND LOAD );
    L17 <=  ( L2 AND L1 AND N5 );
    L18 <=  ( L15 OR L16 OR L17 );
    N1 <= NOT ( CLK ) AFTER 0 ns;
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>L6 , clk=>N1 , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>L10 , clk=>N1 , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>L18 , clk=>N1 , cl=>CLR );
    QA <=  ( N2 ) AFTER 20 ns;
    QB <=  ( N3 ) AFTER 20 ns;
    QC <=  ( N4 ) AFTER 20 ns;
    QD <=  ( N5 ) AFTER 20 ns;
    \Q\\D\\\ <= NOT ( N5 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74180\ IS PORT(
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
END \74180\;

ARCHITECTURE model OF \74180\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <= NOT ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H );
    L2 <= NOT ( L1 );
    L3 <=  ( L1 AND OI );
    L4 <=  ( L2 AND EI );
    L5 <=  ( EI AND L1 );
    L6 <=  ( L2 AND OI );
    EVEN <= NOT ( L3 OR L4 ) AFTER 20 ns;
    ODD <= NOT ( L5 OR L6 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74181\ IS PORT(
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
END \74181\;

ARCHITECTURE model OF \74181\ IS
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
    N1 <=  ( L22 XOR L23 ) AFTER 29 ns;
    N2 <=  ( L24 XOR L25 ) AFTER 29 ns;
    N3 <=  ( L26 XOR L27 ) AFTER 29 ns;
    N4 <=  ( L28 XOR L29 ) AFTER 29 ns;
    N12 <=  ( L23 ) AFTER 7 ns;
    N5 <=  ( L22 AND L25 ) AFTER 7 ns;
    N6 <=  ( L22 AND L24 AND L27 ) AFTER 7 ns;
    N7 <=  ( L22 AND L24 AND L26 AND L29 ) AFTER 7 ns;
    L30 <= NOT ( L22 AND L24 AND L26 AND L28 AND CN );
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
    N13 <= NOT ( N12 OR N5 OR N6 OR N7 ) AFTER 19 ns;
    G <= N13;
    N8 <=  ( N13 ) AFTER 7 ns;
    \CN+4\ <= NOT ( N8 AND L30 ) AFTER 19 ns;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 25 ns;
    N17 <=  ( N1 XOR L41 ) AFTER 19 ns;
    F3 <= N17;
    N16 <=  ( N2 XOR L42 ) AFTER 19 ns;
    F2 <= N16;
    N15 <=  ( N3 XOR L43 ) AFTER 19 ns;
    F1 <= N15;
    N14 <=  ( N4 XOR L40 ) AFTER 19 ns;
    F0 <= N14;
    N9 <=  ( N17 ) AFTER 29 ns;
    N10 <=  ( N16 ) AFTER 29 ns;
    N11 <=  ( N15 ) AFTER 29 ns;
    \A=B\ <=  ( N9 AND N10 AND N11 AND N14 ) AFTER 16 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74182\ IS PORT(
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
END \74182\;

ARCHITECTURE model OF \74182\ IS
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
    N1 <= NOT ( CN ) AFTER 0 ns;
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
    P <=  ( P3 OR P2 OR P1 OR P0 ) AFTER 22 ns;
    G <=  ( L1 OR L2 OR L3 OR L4 ) AFTER 22 ns;
    \CN+Z\ <= NOT ( L5 OR L6 OR L7 OR L8 ) AFTER 22 ns;
    \CN+Y\ <= NOT ( L9 OR L10 OR L11 ) AFTER 22 ns;
    \CN+X\ <= NOT ( L12 OR L13 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74190\ IS PORT(
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
END \74190\;

ARCHITECTURE model OF \74190\ IS
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
    L2 <= NOT ( \D/U\\\ OR G );
    L3 <= NOT ( G OR L1 );
    L4 <=  ( L1 AND N4 AND N10 );
    L5 <=  ( \D/U\\\ AND N5 AND N7 AND N9 AND N11 );
    L6 <= NOT ( A AND N3 );
    L7 <= NOT ( L6 AND N3 );
    L8 <= NOT ( B AND N3 );
    L9 <= NOT ( N7 AND N9 AND N11 );
    L10 <= NOT ( L8 AND N3 );
    L11 <= NOT ( C AND N3 );
    L12 <= NOT ( L11 AND N3 );
    L13 <= NOT ( D AND N3 );
    L14 <= NOT ( L13 AND N3 );
    L15 <=  ( L3 AND N5 AND L9 );
    L16 <=  ( N4 AND N11 AND L2 );
    L17 <=  ( L9 AND L3 AND N5 AND N7 );
    L18 <=  ( N4 AND N6 AND L2 );
    L19 <=  ( L3 AND N5 AND N7 AND N9 );
    L20 <=  ( N4 AND N10 AND L2 );
    L21 <=  ( N4 AND N6 AND N8 AND L2 );
    L22 <= NOT ( G );
    L23 <=  ( L15 OR L16 );
    L24 <=  ( L17 OR L18 );
    L25 <=  ( L19 OR L20 OR L21 );
    N1 <= NOT ( CLK ) AFTER 18 ns;
    N2 <= NOT ( G ) AFTER 10 ns;
    N3 <= NOT ( LOAD ) AFTER 11 ns;
    JKFFPC_17 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L22 , k=>L22 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_18 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L23 , k=>L23 , clk=>CLK , pr=>L8 , cl=>L10 );
    JKFFPC_19 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L24 , k=>L24 , clk=>CLK , pr=>L11 , cl=>L12 );
    JKFFPC_20 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L25 , k=>L25 , clk=>CLK , pr=>L13 , cl=>L14 );
    N12 <=  ( L4 OR L5 ) AFTER 33 ns;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 12 ns;
    QA <=  ( N4 ) AFTER 17 ns;
    QB <=  ( N6 ) AFTER 17 ns;
    QC <=  ( N8 ) AFTER 17 ns;
    QD <=  ( N10 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74191\ IS PORT(
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
END \74191\;

ARCHITECTURE model OF \74191\ IS
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
    N1 <= NOT ( CLK ) AFTER 18 ns;
    N2 <= NOT ( G ) AFTER 10 ns;
    N3 <= NOT ( LOAD ) AFTER 11 ns;
    JKFFPC_21 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_22 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_23 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_24 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N12 <=  ( L4 OR L5 ) AFTER 33 ns;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 12 ns;
    QA <=  ( N4 ) AFTER 17 ns;
    QB <=  ( N6 ) AFTER 17 ns;
    QC <=  ( N8 ) AFTER 17 ns;
    QD <=  ( N10 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74192\ IS PORT(
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
END \74192\;

ARCHITECTURE model OF \74192\ IS
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
    L3 <= NOT ( A AND N2 AND N1 );
    L4 <= NOT ( B AND N2 AND N1 );
    L5 <= NOT ( N10 AND N12 AND N14 );
    L6 <= NOT ( C AND N2 AND N1 );
    L7 <= NOT ( D AND N2 AND N1 );
    L8 <=  ( L1 AND N8 AND L5 );
    L9 <=  ( N7 AND N14 AND L2 );
    L10 <=  ( L5 AND L1 AND N8 AND N10 );
    L11 <=  ( N7 AND N9 AND L2 );
    L12 <=  ( L1 AND N8 AND N10 AND N12 );
    L13 <=  ( N7 AND N13 AND L2 );
    L14 <=  ( N7 AND N9 AND N11 AND L2 );
    L15 <= NOT ( L3 AND N2 );
    L16 <= NOT ( L4 AND N2 );
    L17 <= NOT ( L6 AND N2 );
    L18 <= NOT ( L7 AND N2 );
    L19 <=  ( N1 AND L15 );
    L20 <=  ( N1 AND L16 );
    L21 <=  ( N1 AND L17 );
    L22 <=  ( N1 AND L18 );
    N1 <= NOT ( CLR ) AFTER 3 ns;
    N2 <= NOT ( LOAD ) AFTER 8 ns;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ns;
    N4 <= NOT ( L8 OR L9 ) AFTER 0 ns;
    N5 <= NOT ( L10 OR L11 ) AFTER 0 ns;
    N6 <= NOT ( L12 OR L13 OR L14 ) AFTER 0 ns;
    JKFFPC_25 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L19 );
    JKFFPC_26 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L20 );
    JKFFPC_27 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L6 , cl=>L21 );
    JKFFPC_28 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L7 , cl=>L22 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 26 ns;
    CO <= NOT ( N7 AND N13 AND L2 ) AFTER 24 ns;
    QA <=  ( N7 ) AFTER 29 ns;
    QB <=  ( N9 ) AFTER 29 ns;
    QC <=  ( N11 ) AFTER 29 ns;
    QD <=  ( N13 ) AFTER 29 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74193\ IS PORT(
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
END \74193\;

ARCHITECTURE model OF \74193\ IS
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
    N1 <= NOT ( CLR ) AFTER 5 ns;
    N2 <= NOT ( LOAD ) AFTER 10 ns;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ns;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ns;
    JKFFPC_29 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_30 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_31 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_32 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 24 ns;
    CO <= NOT ( N7 AND N9 AND N11 AND N13 AND L2 ) AFTER 26 ns;
    QA <=  ( N7 ) AFTER 28 ns;
    QB <=  ( N9 ) AFTER 28 ns;
    QC <=  ( N11 ) AFTER 28 ns;
    QD <=  ( N13 ) AFTER 28 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74194\ IS PORT(
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
END \74194\;

ARCHITECTURE model OF \74194\ IS
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
    N1 <=  ( S1 AND S0 ) AFTER 10 ns;
    N2 <=  ( S1 AND L2 ) AFTER 10 ns;
    N3 <=  ( L1 AND S0 ) AFTER 10 ns;
    N4 <=  ( L1 AND L2 ) AFTER 10 ns;
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
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>L23 , clk=>CLK , cl=>CLR );
    QA <=  ( N5 ) AFTER 17 ns;
    QB <=  ( N6 ) AFTER 17 ns;
    QC <=  ( N7 ) AFTER 17 ns;
    QD <=  ( N8 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74195\ IS PORT(
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
END \74195\;

ARCHITECTURE model OF \74195\ IS
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
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L14 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 21 ns;
    QB <=  ( N4 ) AFTER 21 ns;
    QC <=  ( N5 ) AFTER 21 ns;
    QD <=  ( N6 ) AFTER 21 ns;
    \Q\\D\\\ <= NOT ( N6 ) AFTER 21 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74196\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74196\;

ARCHITECTURE model OF \74196\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( LOAD AND CLR );
    L2 <= NOT ( A AND L1 AND CLR );
    L3 <= NOT ( L2 AND L1 );
    L4 <= NOT ( B AND L1 AND CLR );
    L5 <= NOT ( L4 AND L1 );
    L6 <= NOT ( C AND L1 AND CLR );
    L7 <= NOT ( L6 AND L1 );
    L8 <= NOT ( D AND L1 AND CLR );
    L9 <= NOT ( L8 AND L1 );
    L10 <=  ( N5 AND N7 );
    N1 <= NOT ( CLK1 ) AFTER 0 ns;
    N2 <= NOT ( CLK2 ) AFTER 0 ns;
    JKFFPC_33 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_34 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>N10 , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_35 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_36 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L10 , k=>N9 , clk=>N2 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74197\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LOAD : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74197\;

ARCHITECTURE model OF \74197\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( LOAD AND CLR );
    L2 <= NOT ( A AND L1 AND CLR );
    L3 <= NOT ( L2 AND L1 );
    L4 <= NOT ( B AND L1 AND CLR );
    L5 <= NOT ( L4 AND L1 );
    L6 <= NOT ( C AND L1 AND CLR );
    L7 <= NOT ( L6 AND L1 );
    L8 <= NOT ( D AND L1 AND CLR );
    L9 <= NOT ( L8 AND L1 );
    N1 <= NOT ( CLK1 ) AFTER 0 ns;
    N2 <= NOT ( CLK2 ) AFTER 0 ns;
    JKFFPC_37 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_38 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>ONE , k=>ONE , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_39 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_40 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74198\ IS PORT(
SR : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
SL : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
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
END \74198\;

ARCHITECTURE model OF \74198\ IS
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
    SIGNAL N15: std_logic;
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S0 );
    L3 <=  ( L1 AND L2 );
    L4 <= NOT ( L1 OR L2 );
    L5 <=  ( SR AND L1 );
    L6 <=  ( L4 AND A );
    L7 <=  ( L2 AND N11 );
    L8 <=  ( N10 AND L1 );
    L9 <=  ( L4 AND B );
    L10 <=  ( L2 AND N12 );
    L11 <=  ( N11 AND L1 );
    L12 <=  ( L4 AND C );
    L13 <=  ( L2 AND N13 );
    L14 <=  ( N12 AND L1 );
    L15 <=  ( L4 AND D );
    L16 <=  ( L2 AND N14 );
    L17 <=  ( N13 AND L1 );
    L18 <=  ( L4 AND E );
    L19 <=  ( L2 AND N15 );
    L20 <=  (  N14 AND L1 );
    L21 <=  ( L4 AND F );
    L22 <=  ( L2 AND N16 );
    L23 <=  ( N15 AND L1 );
    L24 <=  ( L4 AND G );
    L25 <=  ( L2 AND N17 );
    L26 <=  ( N16 AND L1 );
    L27 <=  ( L4 AND H );
    L28 <=  ( L2 AND SL );
    L29 <=  ( L5 OR L6 OR L7 );
    L30 <=  ( L8 OR L9 OR L10 );
    L31 <=  ( L11 OR L12 OR L13 );
    L32 <=  ( L14 OR L15 OR L16 );
    L33 <=  ( L17 OR L18 OR L19 );
    L34 <=  ( L20 OR L21 OR L22 );
    L35 <=  ( L23 OR L24 OR L25 );
    L36 <=  ( L26 OR L27 OR L28 );
    N1 <=  ( CLK OR L3 ) AFTER 0 ns;
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N2 , d=>L29 , clk=>N1 , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>L30 , clk=>N1 , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>L31 , clk=>N1 , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>L32 , clk=>N1 , cl=>CLR );
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>L33 , clk=>N1 , cl=>CLR );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>L34 , clk=>N1 , cl=>CLR );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>L35 , clk=>N1 , cl=>CLR );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>L36 , clk=>N1 , cl=>CLR );
    
    N10 <=  ( N2 ) AFTER 20 ns;
    N11 <=  ( N3 ) AFTER 20 ns;
    N12 <=  ( N4 ) AFTER 20 ns;
    N13 <=  ( N5 ) AFTER 20 ns;
    N14 <=  ( N6 ) AFTER 20 ns;
    N15 <=  ( N7 ) AFTER 20 ns;
    N16 <=  ( N8 ) AFTER 20 ns;
    N17 <=  ( N9 ) AFTER 20 ns;
    QA <= N10;
    QB <= N11;
    QC <= N12;
    QD <= N13;
    QE <= N14;
    QF <= N15;
    QG <= N16;
    QH <= N17;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74199\ IS PORT(
J : IN  std_logic;
K : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
CLK : IN  std_logic;
CINH : IN  std_logic;
\SH/L\\D\\\ : IN  std_logic;
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
END \74199\;

ARCHITECTURE model OF \74199\ IS
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
    SIGNAL N15: std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( \SH/L\\D\\\ );
    L2 <= NOT ( N10 );
    L3 <=  ( J AND \SH/L\\D\\\ AND L2 );
    L4 <=  ( L1 AND A );
    L5 <=  ( K AND \SH/L\\D\\\ AND N10 );
    L6 <=  ( N10 AND \SH/L\\D\\\ );
    L7 <=  ( L1 AND B );
    L8 <=  ( N11 AND \SH/L\\D\\\ );
    L9 <=  ( L1 AND C );
    L10 <=  ( N12 AND \SH/L\\D\\\ );
    L11 <=  ( L1 AND D );
    L12 <=  ( N13 AND \SH/L\\D\\\ );
    L13 <=  ( L1 AND E );
    L14 <=  ( N14 AND \SH/L\\D\\\ );
    L15 <=  ( L1 AND F );
    L16 <=  ( N15 AND \SH/L\\D\\\ );
    L17 <=  ( L1 AND G );
    L18 <=  ( N16 AND \SH/L\\D\\\ );
    L19 <=  ( L1 AND H );
    L20 <=  ( L3 OR L4 OR L5 );
    L21 <=  ( L6 OR L7 );
    L22 <=  ( L8 OR L9 );
    L23 <=  ( L10 OR L11 );
    L24 <=  ( L12 OR L13 );
    L25 <=  ( L14 OR L15 );
    L26 <=  ( L16 OR L17 );
    L27 <=  ( L18 OR L19 );
    N1 <=  ( CLK OR CINH ) AFTER 0 ns;
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N2 , d=>L20 , clk=>N1 , cl=>CLR );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>N1 , cl=>CLR );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>N1 , cl=>CLR );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>N1 , cl=>CLR );
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N6 , d=>L24 , clk=>N1 , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N7 , d=>L25 , clk=>N1 , cl=>CLR );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N8 , d=>L26 , clk=>N1 , cl=>CLR );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N9 , d=>L27 , clk=>N1 , cl=>CLR );
    N10 <=  ( N2 ) AFTER 20 ns;
    N11 <=  ( N3 ) AFTER 20 ns;
    N12 <=  ( N4 ) AFTER 20 ns;
    N13 <=  ( N5 ) AFTER 20 ns;
    N14 <=  ( N6 ) AFTER 20 ns;
    N15 <=  ( N7 ) AFTER 20 ns;
    N16 <=  ( N8 ) AFTER 20 ns;
    QA <= N10;
    QB <= N11;
    QC <= N12;
    QD <= N13;
    QE <= N14;
    QF <= N15;
    QG <= N16;
    QH <=  ( N9 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74246\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74246\;

ARCHITECTURE model OF \74246\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L2 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 AND L4 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <=  ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <=  ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <=  ( L17 OR L18 ) AFTER 100 ns;
    D <=  ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <=  ( L7 OR L22 ) AFTER 100 ns;
    F <=  ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <=  ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74247\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74247\;

ARCHITECTURE model OF \74247\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L2 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 AND L4 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <=  ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <=  ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <=  ( L17 OR L18 ) AFTER 100 ns;
    D <=  ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <=  ( L7 OR L22 ) AFTER 100 ns;
    F <=  ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <=  ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74248\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : IN  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74248\;

ARCHITECTURE model OF \74248\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT );
    L7 <= NOT ( L1 AND L6 );
    L8 <= NOT ( L2 AND L6 );
    L9 <= NOT ( L3 AND L6 );
    L10 <= NOT ( L4 AND L6 );
    L11 <=  ( L8 AND L10 );
    L12 <=  ( L1 AND L2 AND L9 );
    L13 <=  ( L7 AND L2 AND L3 AND L4 );
    L14 <=  ( L8 AND L10 );
    L15 <=  ( L7 AND L2 AND L9 );
    L16 <=  ( L1 AND L8 AND L9 );
    L17 <=  ( L9 AND L10 );
    L18 <=  ( L1 AND L8 AND L3 );
    L19 <=  ( L7 AND L2 AND L3 AND L4 );
    L20 <=  ( L1 AND L2 AND L9 );
    L21 <=  ( L7 AND L8 AND L9 );
    L22 <=  ( L2 AND L9 );
    L23 <=  ( L7 AND L8 );
    L24 <=  ( L8 AND L3 );
    L25 <=  ( L7 AND L3 AND L4 );
    L26 <=  ( L7 AND L8 AND L9 );
    L27 <=  ( L2 AND L3 AND L4 AND LT );
    A <= NOT ( L11 OR L12 OR L13 ) AFTER 100 ns;
    B <= NOT ( L14 OR L15 OR L16 ) AFTER 100 ns;
    C <= NOT ( L17 OR L18 ) AFTER 100 ns;
    D <= NOT ( L19 OR L20 OR L21 ) AFTER 100 ns;
    E <= NOT ( L7 OR L22 ) AFTER 100 ns;
    F <= NOT ( L23 OR L24 OR L25 ) AFTER 100 ns;
    G <= NOT ( L26 OR L27 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74249\ IS PORT(
\1\ : IN  std_logic;
\2\ : IN  std_logic;
\4\ : IN  std_logic;
\8\ : IN  std_logic;
\BI/RBO\ : INOUT  std_logic;
RBI : IN  std_logic;
LT : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74249\;

ARCHITECTURE model OF \74249\ IS
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

    BEGIN
    L1 <= NOT ( \1\ AND LT );
    L2 <= NOT ( \2\ AND LT );
    L3 <= NOT ( \4\ AND LT );
    L4 <= NOT ( \8\ );
    L5 <= NOT ( RBI );
    L6 <= NOT ( L1 AND \BI/RBO\ );
    L7 <= NOT ( L2 AND \BI/RBO\ );
    L8 <= NOT ( L3 AND \BI/RBO\ );
    L9 <= NOT ( L4 AND \BI/RBO\ );
    L10 <=  ( L7 AND L9 );
    L11 <=  ( L1 AND L2 AND L8 );
    L12 <=  ( L6 AND L2 AND L3 AND L4 );
    L13 <=  ( L7 AND L9 );
    L14 <=  ( L6 AND L2 AND L8 );
    L15 <=  ( L1 AND L7 AND L8 );
    L16 <=  ( L8 AND L9 );
    L17 <=  ( L1 AND L7 AND L3 );
    L18 <=  ( L6 AND L2 AND L3 AND L4 );
    L19 <=  ( L1 AND L2 AND L8 );
    L20 <=  ( L6 AND L7 AND L8 );
    L21 <=  ( L2 AND L8 );
    L22 <=  ( L6 AND L7 );
    L23 <=  ( L7 AND L3 );
    L24 <=  ( L6 AND L3 AND L4 );
    L25 <=  ( L6 AND L7 AND L8 );
    L26 <=  ( L2 AND L3 AND L4 AND LT );
    \BI/RBO\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND LT ) AFTER 0 ns;
    A <= NOT ( L10 OR L11 OR L12 ) AFTER 100 ns;
    B <= NOT ( L13 OR L14 OR L15 ) AFTER 100 ns;
    C <= NOT ( L16 OR L17 ) AFTER 100 ns;
    D <= NOT ( L18 OR L19 OR L20 ) AFTER 100 ns;
    E <= NOT ( L6 OR L21 ) AFTER 100 ns;
    F <= NOT ( L22 OR L23 OR L24 ) AFTER 100 ns;
    G <= NOT ( L25 OR L26 ) AFTER 100 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74251\ IS PORT(
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
END \74251\;

ARCHITECTURE model OF \74251\ IS
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
    N1 <= NOT ( A ) AFTER 11 ns;
    N2 <= NOT ( B ) AFTER 11 ns;
    N3 <= NOT ( C ) AFTER 11 ns;
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
    N4 <= NOT ( L13 ) AFTER 28 ns;
    N5 <=  ( L13 ) AFTER 15 ns;
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>27 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>27 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74253\ IS PORT(
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
END \74253\;

ARCHITECTURE model OF \74253\ IS
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
    N1 <= NOT ( B ) AFTER 16 ns;
    N2 <= NOT ( A ) AFTER 16 ns;
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 23 ns;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 23 ns;
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74259\ IS PORT(
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
END \74259\;

ARCHITECTURE model OF \74259\ IS
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
    N1 <= NOT ( S2 ) AFTER 8 ns;
    N2 <= NOT ( S1 ) AFTER 8 ns;
    N3 <= NOT ( S0 ) AFTER 8 ns;
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
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q7 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q6 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q5 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q4 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q3 , d=>D , enable=>L9 , pr=>ONE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q2 , d=>D , enable=>L10 , pr=>ONE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q1 , d=>D , enable=>L11 , pr=>ONE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>24 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q0 , d=>D , enable=>L12 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74273\ IS PORT(
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
END \74273\;

ARCHITECTURE model OF \74273\ IS

    BEGIN
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_63 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_64 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_65 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74276\ IS PORT(
\1J\ : IN  std_logic;
\1CLK\ : IN  std_logic;
\1K\ : IN  std_logic;
\2J\ : IN  std_logic;
\2CLK\ : IN  std_logic;
\2K\ : IN  std_logic;
\3J\ : IN  std_logic;
\3CLK\ : IN  std_logic;
\3K\ : IN  std_logic;
\4J\ : IN  std_logic;
\4CLK\ : IN  std_logic;
\4K\ : IN  std_logic;
\1Q\ : OUT  std_logic;
\2Q\ : OUT  std_logic;
\3Q\ : OUT  std_logic;
\4Q\ : OUT  std_logic;
VCC : IN  std_logic;
PR : IN  std_logic;
GND : IN  std_logic;
CL : IN  std_logic);
END \74276\;

ARCHITECTURE model OF \74276\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( \1K\ );
    L2 <= NOT ( \2K\ );
    L3 <= NOT ( \3K\ );
    L4 <= NOT ( \4K\ );
    JKFFPC_41 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>\1Q\ , qNot=>N1 , j=>\1J\ , k=>L1 , clk=>\1CLK\ , pr=>PR , cl=>CL );
    JKFFPC_42 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>\2Q\ , qNot=>N2 , j=>\2J\ , k=>L2 , clk=>\2CLK\ , pr=>PR , cl=>CL );
    JKFFPC_43 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>\3Q\ , qNot=>N3 , j=>\3J\ , k=>L3 , clk=>\3CLK\ , pr=>PR , cl=>CL );
    JKFFPC_44 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>\4Q\ , qNot=>N4 , j=>\4J\ , k=>L4 , clk=>\4CLK\ , pr=>PR , cl=>CL );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74278\ IS PORT(
D4 : IN  std_logic;
D3 : IN  std_logic;
D2 : IN  std_logic;
D1 : IN  std_logic;
P0 : IN  std_logic;
STROBE : IN  std_logic;
Y4 : OUT  std_logic;
Y3 : OUT  std_logic;
Y2 : OUT  std_logic;
Y1 : OUT  std_logic;
P1 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74278\;

ARCHITECTURE model OF \74278\ IS
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
    N5 <= NOT ( N1 ) AFTER 2 ns;
    N6 <= NOT ( N2 ) AFTER 2 ns;
    N7 <= NOT ( N3 ) AFTER 2 ns;
    N8 <= NOT ( N4 ) AFTER 2 ns;
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>STROBE );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>STROBE );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>STROBE );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>STROBE );
    N9 <=  ( N1 ) AFTER 2 ns;
    N10 <=  ( N2 ) AFTER 2 ns;
    N11 <=  ( N3 ) AFTER 2 ns;
    N12 <=  ( N4 ) AFTER 2 ns;
    Y1 <= NOT ( N5 OR P0 ) AFTER 27 ns;
    Y2 <= NOT ( N6 OR N9 OR P0 ) AFTER 27 ns;
    Y3 <= NOT ( N7 OR N9 OR N10 OR P0 ) AFTER 27 ns;
    Y4 <= NOT ( N8 OR N9 OR N10 OR N11 OR P0 ) AFTER 27 ns;
    P1 <=  ( N1 OR N2 OR N3 OR N4 OR P0 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74279\ IS PORT(
\1R\ : IN  std_logic;
\1S1\ : IN  std_logic;
\1S2\ : IN  std_logic;
\2R\ : IN  std_logic;
\2S\ : IN  std_logic;
\3R\ : IN  std_logic;
\3S1\ : IN  std_logic;
\3S2\ : IN  std_logic;
\4R\ : IN  std_logic;
\4S\ : IN  std_logic;
\1Q\ : OUT  std_logic;
\2Q\ : OUT  std_logic;
\3Q\ : OUT  std_logic;
\4Q\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74279\;

ARCHITECTURE model OF \74279\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL ZERO : std_logic := '0';
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <=  ( \1S1\ AND \1S2\ );
    L2 <=  ( \3S1\ AND \3S2\ );
    DQFFPC_16 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N1 , d=>N1 , clk=>ZERO , pr=>L1 , cl=>\1R\ );
    DQFFPC_17 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N2 , d=>N2 , clk=>ZERO , pr=>\2S\ , cl=>\2R\ );
    DQFFPC_18 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N3 , d=>N3 , clk=>ZERO , pr=>L2 , cl=>\3R\ );
    DQFFPC_19 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N4 , d=>N4 , clk=>ZERO , pr=>\4S\ , cl=>\4R\ );
     \1Q\ <= N1;
     \2Q\ <= N2;
     \3Q\ <= N3;
     \4Q\ <= N4;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74283\ IS PORT(
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
END \74283\;

ARCHITECTURE model OF \74283\ IS
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
    N1 <= NOT ( C0 ) AFTER 2 ns;
    N10 <= NOT ( C0 ) AFTER 5 ns;
    N2 <= NOT ( A1 OR B1 ) AFTER 5 ns;
    N3 <= NOT ( A1 AND B1 ) AFTER 5 ns;
    N4 <= NOT ( B2 OR A2 ) AFTER 5 ns;
    N5 <= NOT ( B2 AND A2 ) AFTER 5 ns;
    N6 <= NOT ( A3 OR B3 ) AFTER 5 ns;
    N7 <= NOT ( A3 AND B3 ) AFTER 5 ns;
    N8 <= NOT ( B4 OR A4 ) AFTER 5 ns;
    N9 <= NOT ( B4 AND A4 ) AFTER 5 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <=  ( L2 AND N3 );
    L4 <=  ( N1 AND N3 );
    L5 <= NOT ( N4 );
    L6 <=  ( L5 AND N5 );
    L7 <=  ( N1 AND N3 AND N5 );
    L8 <=  ( N5 AND N2 );
    L9 <= NOT ( N6 );
    L10 <=  ( L9 AND N7 );
    L11 <=  ( N1 AND N3 AND N5 AND N7 );
    L12 <=  ( N5 AND N7 AND N2 );
    L13 <=  ( N7 AND N4 );
    L14 <= NOT ( N8 );
    L15 <=  ( L14 AND N9 );
    L16 <=  ( N10 AND N3 AND N5 AND N7 AND N9 );
    L17 <=  ( N5 AND N7 AND N9 AND N2 );
    L18 <=  ( N7 AND N9 AND N4 );
    L19 <=  ( N9 AND N6 );
    L20 <= NOT ( L4 OR N2 );
    L21 <= NOT ( L7 OR L8 OR N4 );
    L22 <= NOT ( L11 OR L12 OR L13 OR N6 );
    S1 <=  ( L1 XOR L3 ) AFTER 19 ns;
    S2 <=  ( L20 XOR L6 ) AFTER 19 ns;
    S3 <=  ( L21 XOR L10 ) AFTER 19 ns;
    S4 <=  ( L22 XOR L15 ) AFTER 19 ns;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74290\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
\R9(1)\ : IN  std_logic;
\R9(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74290\;

ARCHITECTURE model OF \74290\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( \R9(1)\ AND \R9(2)\ );
    L2 <= NOT ( \R0(1)\ AND \R0(2)\ );
    L3 <=  ( L1 AND L2 );
    L4 <=  ( N7 AND N5 );
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    JKFFPC_45 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2 );
    JKFFPC_46 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , pr=>ONE , cl=>L3 );
    JKFFPC_47 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>ONE , cl=>L3 );
    JKFFPC_48 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>22 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L4 , k=>N9 , clk=>N2 , pr=>L1 , cl=>L2 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74293\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
\R0(1)\ : IN  std_logic;
\R0(2)\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74293\;

ARCHITECTURE model OF \74293\ IS
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

    BEGIN
    N1 <= NOT ( A ) AFTER 0 ns;
    N2 <= NOT ( B ) AFTER 0 ns;
    L1 <= NOT ( \R0(1)\ AND \R0(2)\ );
    L2 <= NOT ( N3 );
    L3 <= NOT ( N4 );
    L4 <= NOT ( N5 );
    L5 <= NOT ( N6 );
    DQFFP_0 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>L2 , clk=>N1 , pr=>L1 );
    DQFFP_1 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N4 , d=>L3 , clk=>N2 , pr=>L1 );
    DQFFP_2 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L4 , clk=>N4 , pr=>L1 );
    DQFFP_3 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>L5 , clk=>N5 , pr=>L1 );
    QA <= NOT ( N3 ) AFTER 10 ns;
    QB <= NOT ( N4 ) AFTER 10 ns;
    QC <= NOT ( N5 ) AFTER 10 ns;
    QD <= NOT ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74298\ IS PORT(
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
END \74298\;

ARCHITECTURE model OF \74298\ IS
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
    N2 <= NOT ( WS ) AFTER 10 ns;
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
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QA , d=>L10 , clk=>N1 );
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QB , d=>L11 , clk=>N1 );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QC , d=>L12 , clk=>N1 );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QD , d=>L13 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74365\ IS PORT(
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
END \74365\;

ARCHITECTURE model OF \74365\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 19 ns;
    N2 <=  ( A2 ) AFTER 19 ns;
    N3 <=  ( A3 ) AFTER 19 ns;
    N4 <=  ( A4 ) AFTER 19 ns;
    N5 <=  ( A5 ) AFTER 19 ns;
    N6 <=  ( A6 ) AFTER 19 ns;
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74365A\ IS PORT(
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
END \74365A\;

ARCHITECTURE model OF \74365A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 19 ns;
    N2 <=  ( A2 ) AFTER 19 ns;
    N3 <=  ( A3 ) AFTER 19 ns;
    N4 <=  ( A4 ) AFTER 19 ns;
    N5 <=  ( A5 ) AFTER 19 ns;
    N6 <=  ( A6 ) AFTER 19 ns;
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74366\ IS PORT(
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
END \74366\;

ARCHITECTURE model OF \74366\ IS
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
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74366A\ IS PORT(
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
END \74366A\;

ARCHITECTURE model OF \74366A\ IS
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
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74367\ IS PORT(
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
END \74367\;

ARCHITECTURE model OF \74367\ IS
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
    N1 <=  ( \1A1\ ) AFTER 19 ns;
    N2 <=  ( \1A2\ ) AFTER 19 ns;
    N3 <=  ( \1A3\ ) AFTER 19 ns;
    N4 <=  ( \1A4\ ) AFTER 19 ns;
    N5 <=  ( \2A1\ ) AFTER 19 ns;
    N6 <=  ( \2A2\ ) AFTER 19 ns;
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74367A\ IS PORT(
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
END \74367A\;

ARCHITECTURE model OF \74367A\ IS
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
    N1 <=  ( \1A1\ ) AFTER 19 ns;
    N2 <=  ( \1A2\ ) AFTER 19 ns;
    N3 <=  ( \1A3\ ) AFTER 19 ns;
    N4 <=  ( \1A4\ ) AFTER 19 ns;
    N5 <=  ( \2A1\ ) AFTER 19 ns;
    N6 <=  ( \2A2\ ) AFTER 19 ns;
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74368\ IS PORT(
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
END \74368\;

ARCHITECTURE model OF \74368\ IS
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
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74368A\ IS PORT(
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
END \74368A\;

ARCHITECTURE model OF \74368A\ IS
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
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>37 ns, tfall_i1_o=>35 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74376\ IS PORT(
J1 : IN  std_logic;
K1 : IN  std_logic;
J2 : IN  std_logic;
K2 : IN  std_logic;
J3 : IN  std_logic;
K3 : IN  std_logic;
J4 : IN  std_logic;
K4 : IN  std_logic;
CLK : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74376\;

ARCHITECTURE model OF \74376\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT ( K1 );
    L2 <= NOT ( K2 );
    L3 <= NOT ( K3 );
    L4 <= NOT ( K4 );
    JKFFC_16 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>35 ns, tfall_clk_q=>35 ns)
      PORT MAP  (q=>Q1 , qNot=>N1 , j=>J1 , k=>L1 , clk=>CLK , cl=>CLR );
    JKFFC_17 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>35 ns, tfall_clk_q=>35 ns)
      PORT MAP  (q=>Q2 , qNot=>N2 , j=>J2 , k=>L2 , clk=>CLK , cl=>CLR );
    JKFFC_18 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>35 ns, tfall_clk_q=>35 ns)
      PORT MAP  (q=>Q3 , qNot=>N3 , j=>J3 , k=>L3 , clk=>CLK , cl=>CLR );
    JKFFC_19 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>35 ns, tfall_clk_q=>35 ns)
      PORT MAP  (q=>Q4 , qNot=>N4 , j=>J4 , k=>L4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74390\ IS PORT(
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
END \74390\;

ARCHITECTURE model OF \74390\ IS
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
    DQFFC_66 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N1 , cl=>L1 );
    DFFC_12 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N8 , qNot=>N15 , d=>L10 , clk=>N3 , cl=>L1 );
    DQFFC_67 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , d=>L11 , clk=>N15 , cl=>L1 );
    DQFFC_68 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N10 , d=>L12 , clk=>N4 , cl=>L1 );
    DQFFC_69 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>L13 , clk=>N2 , cl=>L2 );
    DFFC_13 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N12 , qNot=>N16 , d=>L14 , clk=>N5 , cl=>L2 );
    DQFFC_70 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N13 , d=>L15 , clk=>N16 , cl=>L2 );
    DQFFC_71 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N14 , d=>L16 , clk=>N6 , cl=>L2 );
    QA_A <=  ( N7 ) AFTER 10 ns;
    QB_A <=  ( N8 ) AFTER 10 ns;
    QC_A <=  ( N9 ) AFTER 10 ns;
    QD_A <=  ( N10 ) AFTER 10 ns;
    QA_B <=  ( N11 ) AFTER 10 ns;
    QB_B <=  ( N12 ) AFTER 10 ns;
    QC_B <=  ( N13 ) AFTER 10 ns;
    QD_B <=  ( N14 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74393\ IS PORT(
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
END \74393\;

ARCHITECTURE model OF \74393\ IS
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
    DQFFP_4 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , pr=>L1 );
    DQFFP_5 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>L4 , clk=>N9 , pr=>L1 );
    DQFFP_6 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>L5 , clk=>N10 , pr=>L1 );
    DQFFP_7 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N12 , d=>L6 , clk=>N11 , pr=>L1 );
    DQFFP_8 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>L7 , clk=>N2 , pr=>L2 );
    DQFFP_9 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N14 , d=>L8 , clk=>N13 , pr=>L2 );
    DQFFP_10 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , pr=>L2 );
    DQFFP_11 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
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

ENTITY \74425\ IS PORT(
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
END \74425\;

ARCHITECTURE model OF \74425\ IS
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
    N1 <=  ( I_A ) AFTER 15 ns;
    N2 <=  ( I_B ) AFTER 15 ns;
    N3 <=  ( I_C ) AFTER 15 ns;
    N4 <=  ( I_D ) AFTER 15 ns;
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74426\ IS PORT(
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
END \74426\;

ARCHITECTURE model OF \74426\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 15 ns;
    N2 <=  ( I_B ) AFTER 15 ns;
    N3 <=  ( I_C ) AFTER 15 ns;
    N4 <=  ( I_D ) AFTER 15 ns;
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74490\ IS PORT(
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
END \74490\;

ARCHITECTURE model OF \74490\ IS
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
    L5 <=  ( L3 AND L1 );
    L6 <=  ( L4 AND L2 );
    L13 <= NOT ( N7 );
    L14 <= NOT ( N8 );
    L15 <= NOT ( N9 );
    L16 <= NOT ( N10 );
    L17 <= NOT ( N11 );
    L18 <= NOT ( N12 );
    L19 <= NOT ( N13 );
    L20 <= NOT ( N14 );
    L7 <=  ( L14 AND L16 );
    L8 <=  ( L16 AND L15 );
    L9 <=  ( L18 AND L20 );
    L10 <=  ( L20 AND L19 );
    L11 <= NOT ( L7 OR L8 );
    L12 <= NOT ( L9 OR L10 );
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    N3 <= NOT ( N7 AND L16 ) AFTER 0 ns;
    N4 <= NOT ( N7 AND L11 ) AFTER 0 ns;
    N5 <= NOT ( N11 AND L20 ) AFTER 0 ns;
    N6 <= NOT ( N11 AND L12 ) AFTER 0 ns;
    N15 <= NOT ( N8 ) AFTER 0 ns;
    N16 <= NOT ( N12 ) AFTER 0 ns;
    DQFFPC_20 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N7 , d=>L13 , clk=>N1 , pr=>L1 , cl=>L3 );
    DQFFC_72 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>L14 , clk=>N3 , cl=>L5 );
    DQFFC_73 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N15 , cl=>L5 );
    DQFFPC_21 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N10 , d=>L16 , clk=>N4 , pr=>L1 , cl=>L3 );
    DQFFPC_22 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N11 , d=>L17 , clk=>N2 , pr=>L2 , cl=>L4 );
    DQFFC_74 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N12 , d=>L18 , clk=>N5 , cl=>L6 );
    DQFFC_75 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N13 , d=>L19 , clk=>N16 , cl=>L6 );
    DQFFPC_23 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N14 , d=>L20 , clk=>N6 , pr=>L2 , cl=>L4 );
    QA_A <=  ( N7 ) AFTER 17 ns;
    QB_A <=  ( N8 ) AFTER 17 ns;
    QC_A <=  ( N9 ) AFTER 17 ns;
    QD_A <=  ( N10 ) AFTER 17 ns;
    QA_B <=  ( N11 ) AFTER 17 ns;
    QB_B <=  ( N12 ) AFTER 17 ns;
    QC_B <=  ( N13 ) AFTER 17 ns;
    QD_B <=  ( N14 ) AFTER 17 ns;
END model;

