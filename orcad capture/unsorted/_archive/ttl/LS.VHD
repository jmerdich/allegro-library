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
-- File:			LS.VHD
-- Resource:	  National Logic Data Book, 1984
-- Delay units:	  Nanoseconds
-- Characteristics: 74LSXXXX MIN/MAX, Vcc=5V +/-0.5 V

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Fixed components with Px port names.  
--		v7.00.02 - Corrected functionality of transceivers.



LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS00\ IS PORT(
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
END \74LS00\;

ARCHITECTURE model OF \74LS00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 10 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 10 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 10 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS01\ IS PORT(
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
END \74LS01\;

ARCHITECTURE model OF \74LS01\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 20 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 20 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS02\ IS PORT(
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
END \74LS02\;

ARCHITECTURE model OF \74LS02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 13 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 13 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 13 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS03\ IS PORT(
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
END \74LS03\;

ARCHITECTURE model OF \74LS03\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 20 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 20 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS04\ IS PORT(
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
END \74LS04\;

ARCHITECTURE model OF \74LS04\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 10 ns;
    O_B <= NOT ( I_B ) AFTER 10 ns;
    O_C <= NOT ( I_C ) AFTER 10 ns;
    O_D <= NOT ( I_D ) AFTER 10 ns;
    O_E <= NOT ( I_E ) AFTER 10 ns;
    O_F <= NOT ( I_F ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS05\ IS PORT(
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
END \74LS05\;

ARCHITECTURE model OF \74LS05\ IS

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

ENTITY \74LS08\ IS PORT(
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
END \74LS08\;

ARCHITECTURE model OF \74LS08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 13 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 13 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 13 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS09\ IS PORT(
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
END \74LS09\;

ARCHITECTURE model OF \74LS09\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 20 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 20 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 20 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS10\ IS PORT(
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
END \74LS10\;

ARCHITECTURE model OF \74LS10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 10 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 10 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS11\ IS PORT(
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
END \74LS11\;

ARCHITECTURE model OF \74LS11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 13 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 13 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS12\ IS PORT(
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
END \74LS12\;

ARCHITECTURE model OF \74LS12\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 20 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS13\ IS PORT(
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
END \74LS13\;

ARCHITECTURE model OF \74LS13\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 27 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS14\ IS PORT(
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
END \74LS14\;

ARCHITECTURE model OF \74LS14\ IS

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

ENTITY \74LS15\ IS PORT(
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
END \74LS15\;

ARCHITECTURE model OF \74LS15\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 20 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 20 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS18\ IS PORT(
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
END \74LS18\;

ARCHITECTURE model OF \74LS18\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 55 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 55 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS19\ IS PORT(
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
END \74LS19\;

ARCHITECTURE model OF \74LS19\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 30 ns;
    O_B <= NOT ( I_B ) AFTER 30 ns;
    O_C <= NOT ( I_C ) AFTER 30 ns;
    O_D <= NOT ( I_D ) AFTER 30 ns;
    O_E <= NOT ( I_E ) AFTER 30 ns;
    O_F <= NOT ( I_F ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS19A\ IS PORT(
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
END \74LS19A\;

ARCHITECTURE model OF \74LS19A\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 30 ns;
    O_B <= NOT ( I_B ) AFTER 30 ns;
    O_C <= NOT ( I_C ) AFTER 30 ns;
    O_D <= NOT ( I_D ) AFTER 30 ns;
    O_E <= NOT ( I_E ) AFTER 30 ns;
    O_F <= NOT ( I_F ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS20\ IS PORT(
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
END \74LS20\;

ARCHITECTURE model OF \74LS20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 10 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS21\ IS PORT(
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
END \74LS21\;

ARCHITECTURE model OF \74LS21\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 13 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS22\ IS PORT(
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
END \74LS22\;

ARCHITECTURE model OF \74LS22\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS24\ IS PORT(
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
END \74LS24\;

ARCHITECTURE model OF \74LS24\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 40 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 40 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 40 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 40 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS26\ IS PORT(
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
END \74LS26\;

ARCHITECTURE model OF \74LS26\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 32 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 32 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 32 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 32 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS27\ IS PORT(
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
END \74LS27\;

ARCHITECTURE model OF \74LS27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 13 ns;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 13 ns;
    O_C <= NOT ( I2_C OR I1_C OR I0_C ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS28\ IS PORT(
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
END \74LS28\;

ARCHITECTURE model OF \74LS28\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 24 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 24 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 24 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 24 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS30\ IS PORT(
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
END \74LS30\;

ARCHITECTURE model OF \74LS30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS32\ IS PORT(
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
END \74LS32\;

ARCHITECTURE model OF \74LS32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 11 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 11 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 11 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS33\ IS PORT(
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
END \74LS33\;

ARCHITECTURE model OF \74LS33\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 32 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 32 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 32 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 32 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS37\ IS PORT(
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
END \74LS37\;

ARCHITECTURE model OF \74LS37\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 15 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 15 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 15 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS38\ IS PORT(
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
END \74LS38\;

ARCHITECTURE model OF \74LS38\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 22 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS40\ IS PORT(
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
END \74LS40\;

ARCHITECTURE model OF \74LS40\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 15 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS42\ IS PORT(
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
END \74LS42\;

ARCHITECTURE model OF \74LS42\ IS
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

ENTITY \74LS47\ IS PORT(
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
END \74LS47\;

ARCHITECTURE model OF \74LS47\ IS
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

ENTITY \74LS48\ IS PORT(
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
END \74LS48\;

ARCHITECTURE model OF \74LS48\ IS
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

ENTITY \74LS49\ IS PORT(
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
END \74LS49\;

ARCHITECTURE model OF \74LS49\ IS
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

ENTITY \74LS51\ IS PORT(
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
END \74LS51\;

ARCHITECTURE model OF \74LS51\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( \2A\ AND \2B\ );
    L2 <=  ( \2C\ AND \2D\ );
    \2Y\ <= NOT ( L1 OR L2 ) AFTER 13 ns;
    L3 <=  ( \1A\ AND \1C\ AND \1B\ );
    L4 <=  ( \1F\ AND \1E\ AND \1D\ );
    \1Y\ <= NOT ( L3 OR L4 ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS54\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
I : IN  std_logic;
J : IN  std_logic;
Y : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS54\;

ARCHITECTURE model OF \74LS54\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  ( A AND B );
    L2 <=  ( C AND D AND E );
    L3 <=  ( F AND G AND H );
    L4 <=  ( I AND J );
    Y <= NOT ( L1 OR L2 OR L3 OR L4 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS55\ IS PORT(
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
END \74LS55\;

ARCHITECTURE model OF \74LS55\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  ( A AND B AND C AND D );
    L2 <=  ( E AND F AND G AND H );
    Y <= NOT ( L1 OR L2 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS68\ IS PORT(
\1CLKA\ : IN  std_logic;
\1CLKB\ : IN  std_logic;
\1CLR\ : IN  std_logic;
\2CLK\ : IN  std_logic;
\2CLR\ : IN  std_logic;
\1QA\ : OUT  std_logic;
\1QB\ : OUT  std_logic;
\1QC\ : OUT  std_logic;
\1QD\ : OUT  std_logic;
\2QA\ : OUT  std_logic;
\2QB\ : OUT  std_logic;
\2QC\ : OUT  std_logic;
\2QD\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS68\;

ARCHITECTURE model OF \74LS68\ IS
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
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( N5 );
    L6 <= NOT ( N6 );
    L7 <= NOT ( N7 );
    L8 <= NOT ( N8 );
    L9 <=  ( L2 AND L4 );
    L10 <=  ( L3 AND L4 );
    L11 <= NOT ( L9 OR L10 );
    L12 <=  ( L6 AND L8 );
    L13 <=  ( L7 AND L8 );
    L14 <= NOT ( L12 OR L13 );
    N9 <= NOT ( \1CLKB\ AND L4 ) AFTER 0 ns;
    N10 <= NOT ( \1CLKB\ AND L11 ) AFTER 0 ns;
    N11 <= NOT ( N5 AND L8 ) AFTER 0 ns;
    N12 <= NOT ( N5 AND L14 ) AFTER 0 ns;
    N13 <= NOT ( \1CLKA\ ) AFTER 0 ns;
    N14 <= NOT ( \2CLK\ ) AFTER 0 ns;
    DQFFC_0 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>L1 , clk=>N13 , cl=>\1CLR\ );
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N2 , qNot=>N15 , d=>L2 , clk=>N9 , cl=>\1CLR\ );
    DQFFC_1 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>L3 , clk=>N15 , cl=>\1CLR\ );
    DQFFC_2 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , d=>L4 , clk=>N10 , cl=>\1CLR\ );
    DQFFC_3 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L5 , clk=>N14 , cl=>\2CLR\ );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>N6 , qNot=>N16 , d=>L6 , clk=>N11 , cl=>\2CLR\ );
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N7 , d=>L7 , clk=>N16 , cl=>\2CLR\ );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>L8 , clk=>N12 , cl=>\2CLR\ );
    \1QA\ <=  ( N1 ) AFTER 5 ns;
    \1QB\ <=  ( N2 ) AFTER 5 ns;
    \1QC\ <=  ( N3 ) AFTER 5 ns;
    \1QD\ <=  ( N4 ) AFTER 5 ns;
    \2QA\ <=  ( N5 ) AFTER 5 ns;
    \2QB\ <=  ( N6 ) AFTER 5 ns;
    \2QC\ <=  ( N7 ) AFTER 5 ns;
    \2QD\ <=  ( N8 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS69\ IS PORT(
\1CLKA\ : IN  std_logic;
\1CLKB\ : IN  std_logic;
\1CLR\ : IN  std_logic;
\2CLK\ : IN  std_logic;
\2CLR\ : IN  std_logic;
\1QA\ : OUT  std_logic;
\1QB\ : OUT  std_logic;
\1QC\ : OUT  std_logic;
\1QD\ : OUT  std_logic;
\2QA\ : OUT  std_logic;
\2QB\ : OUT  std_logic;
\2QC\ : OUT  std_logic;
\2QD\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS69\;

ARCHITECTURE model OF \74LS69\ IS
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
    N1 <= NOT ( \1CLKA\ ) AFTER 0 ns;
    N2 <= NOT ( \1CLKB\ ) AFTER 0 ns;
    N3 <= NOT ( \2CLK\ ) AFTER 0 ns;
    L3 <= NOT ( N9 );
    L4 <= NOT ( N10 );
    L5 <= NOT ( N11 );
    L6 <= NOT ( N12 );
    L7 <= NOT ( N13 );
    L8 <= NOT ( N14 );
    L9 <= NOT ( N15 );
    L10 <= NOT ( N16 );
    DQFFP_0 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , pr=>\1CLR\ );
    DQFFP_1 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP  (q=>N10 , d=>L4 , clk=>N2 , pr=>\1CLR\ );
    DQFFP_2 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N11 , d=>L5 , clk=>N10 , pr=>\1CLR\ );
    DQFFP_3 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N12 , d=>L6 , clk=>N11 , pr=>\1CLR\ );
    DQFFP_4 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N13 , d=>L7 , clk=>N3 , pr=>\2CLR\ );
    DQFFP_5 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N14 , d=>L8 , clk=>N13 , pr=>\2CLR\ );
    DQFFP_6 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , pr=>\2CLR\ );
    DQFFP_7 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N16 , d=>L10 , clk=>N15 , pr=>\2CLR\ );
    \1QA\ <= NOT ( N9 ) AFTER 5 ns;
    \1QB\ <= NOT ( N10 ) AFTER 5 ns;
    \1QC\ <= NOT ( N11 ) AFTER 5 ns;
    \1QD\ <= NOT ( N12 ) AFTER 5 ns;
    \2QA\ <= NOT ( N13 ) AFTER 5 ns;
    \2QB\ <= NOT ( N14 ) AFTER 5 ns;
    \2QC\ <= NOT ( N15 ) AFTER 5 ns;
    \2QD\ <= NOT ( N16 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS73\ IS PORT(
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
END \74LS73\;

ARCHITECTURE model OF \74LS73\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_0 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_1 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS73A\ IS PORT(
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
END \74LS73A\;

ARCHITECTURE model OF \74LS73A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_2 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_3 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS74\ IS PORT(
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
END \74LS74\;

ARCHITECTURE model OF \74LS74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS74A\ IS PORT(
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
END \74LS74A\;

ARCHITECTURE model OF \74LS74A\ IS

    BEGIN
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_3 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS75\ IS PORT(
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
END \74LS75\;

ARCHITECTURE model OF \74LS75\ IS
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
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\1\\\ , d=>L1 , enable=>C12 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\2\\\ , d=>L2 , enable=>C12 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\3\\\ , d=>L3 , enable=>C34 );
    DLATCH_3 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\Q\\4\\\ , d=>L4 , enable=>C34 );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q1 , d=>D1 , enable=>C12 );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q2 , d=>D2 , enable=>C12 );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q3 , d=>D3 , enable=>C34 );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q4 , d=>D4 , enable=>C34 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS76\ IS PORT(
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
END \74LS76\;

ARCHITECTURE model OF \74LS76\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS76A\ IS PORT(
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
END \74LS76A\;

ARCHITECTURE model OF \74LS76A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS77\ IS PORT(
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
END \74LS77\;

ARCHITECTURE model OF \74LS77\ IS

    BEGIN
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q1 , d=>D1 , enable=>C12 );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q2 , d=>D2 , enable=>C12 );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q3 , d=>D3 , enable=>C34 );
    DLATCH_11 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>Q4 , d=>D4 , enable=>C34 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS78\ IS PORT(
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
END \74LS78\;

ARCHITECTURE model OF \74LS78\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK ) AFTER 0 ns;
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , j=>J1 , k=>K1 , clk=>N1 , pr=>PR1 , cl=>CLR );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , j=>J2 , k=>K2 , clk=>N1 , pr=>PR2 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS78A\ IS PORT(
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
END \74LS78A\;

ARCHITECTURE model OF \74LS78A\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK ) AFTER 0 ns;
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , j=>J1 , k=>K1 , clk=>N1 , pr=>PR1 , cl=>CLR );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , j=>J2 , k=>K2 , clk=>N1 , pr=>PR2 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS83\ IS PORT(
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
END \74LS83\;

ARCHITECTURE model OF \74LS83\ IS
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
    N1 <= NOT ( C0 ) AFTER 3 ns;
    N10 <= NOT ( C0 ) AFTER 8 ns;
    N2 <= NOT ( A1 OR B1 ) AFTER 3 ns;
    N3 <= NOT ( A1 AND B1 ) AFTER 3 ns;
    N4 <= NOT ( B2 OR A2 ) AFTER 3 ns;
    N5 <= NOT ( B2 AND A2 ) AFTER 3 ns;
    N6 <= NOT ( A3 OR B3 ) AFTER 3 ns;
    N7 <= NOT ( A3 AND B3 ) AFTER 3 ns;
    N8 <= NOT ( B4 OR A4 ) AFTER 3 ns;
    N9 <= NOT ( B4 AND A4 ) AFTER 3 ns;
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
    S1 <=  ( L1 XOR L3 ) AFTER 21 ns;
    S2 <=  ( L20 XOR L6 ) AFTER 21 ns;
    S3 <=  ( L21 XOR L10 ) AFTER 21 ns;
    S4 <=  ( L22 XOR L15 ) AFTER 21 ns;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS83A\ IS PORT(
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
END \74LS83A\;

ARCHITECTURE model OF \74LS83A\ IS
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
    N1 <= NOT ( C0 ) AFTER 3 ns;
    N10 <= NOT ( C0 ) AFTER 8 ns;
    N2 <= NOT ( A1 OR B1 ) AFTER 3 ns;
    N3 <= NOT ( A1 AND B1 ) AFTER 3 ns;
    N4 <= NOT ( B2 OR A2 ) AFTER 3 ns;
    N5 <= NOT ( B2 AND A2 ) AFTER 3 ns;
    N6 <= NOT ( A3 OR B3 ) AFTER 3 ns;
    N7 <= NOT ( A3 AND B3 ) AFTER 3 ns;
    N8 <= NOT ( B4 OR A4 ) AFTER 3 ns;
    N9 <= NOT ( B4 AND A4 ) AFTER 3 ns;
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
    S1 <=  ( L1 XOR L3 ) AFTER 21 ns;
    S2 <=  ( L20 XOR L6 ) AFTER 21 ns;
    S3 <=  ( L21 XOR L10 ) AFTER 21 ns;
    S4 <=  ( L22 XOR L15 ) AFTER 21 ns;
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS85\ IS PORT(
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
END \74LS85\;

ARCHITECTURE model OF \74LS85\ IS
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
    N1 <= NOT ( L5 OR L6 ) AFTER 14 ns;
    N2 <= NOT ( L7 OR L8 ) AFTER 14 ns;
    N3 <= NOT ( L9 OR L10 ) AFTER 14 ns;
    N4 <= NOT ( L11 OR L12 ) AFTER 14 ns;
    N5 <=  ( L6 ) AFTER 14 ns;
    N6 <=  ( L5 ) AFTER 14 ns;
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
    \A>Bo\ <= NOT ( N5 OR L13 OR L14 OR L15 OR L16 OR L17 ) AFTER 22 ns;
    \A<Bo\ <= NOT ( L18 OR L19 OR L20 OR L21 OR L22 OR N6 ) AFTER 22 ns;
    \A=Bo\ <=  ( N1 AND N2 AND \A=Bi\ AND N3 AND N4 ) AFTER 32 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS85A\ IS PORT(
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
END \74LS85A\;

ARCHITECTURE model OF \74LS85A\ IS
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
    N1 <= NOT ( L5 OR L6 ) AFTER 14 ns;
    N2 <= NOT ( L7 OR L8 ) AFTER 14 ns;
    N3 <= NOT ( L9 OR L10 ) AFTER 14 ns;
    N4 <= NOT ( L11 OR L12 ) AFTER 14 ns;
    N5 <=  ( L6 ) AFTER 14 ns;
    N6 <=  ( L5 ) AFTER 14 ns;
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
    \A>Bo\ <= NOT ( N5 OR L13 OR L14 OR L15 OR L16 OR L17 ) AFTER 22 ns;
    \A<Bo\ <= NOT ( L18 OR L19 OR L20 OR L21 OR L22 OR N6 ) AFTER 22 ns;
    \A=Bo\ <=  ( N1 AND N2 AND \A=Bi\ AND N3 AND N4 ) AFTER 32 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS86\ IS PORT(
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
END \74LS86\;

ARCHITECTURE model OF \74LS86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 18 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 18 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 18 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS86A\ IS PORT(
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
END \74LS86A\;

ARCHITECTURE model OF \74LS86A\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 18 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 18 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 18 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS90\ IS PORT(
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
END \74LS90\;

ARCHITECTURE model OF \74LS90\ IS
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
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2 );
    JKFFC_4 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , cl=>L3 );
    JKFFC_5 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , cl=>L3 );
    JKFFPC_9 :  ORCAD_JKFFPC 
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

ENTITY \74LS91\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
CLK : IN  std_logic;
Q : OUT  std_logic;
\Q\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS91\;

ARCHITECTURE model OF \74LS91\ IS
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

ENTITY \74LS92\ IS PORT(
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
END \74LS92\;

ARCHITECTURE model OF \74LS92\ IS
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

ENTITY \74LS93\ IS PORT(
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
END \74LS93\;

ARCHITECTURE model OF \74LS93\ IS
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
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP (q=>N3 , qNot=>N4 , d=>N4 , clk=>N1 , cl=>L1 );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N5 , qNot=>N6 , d=>N6 , clk=>N2 , cl=>L1 );
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP (q=>N7 , qNot=>N8 , d=>N8 , clk=>N6 , cl=>L1 );
    DFFC_5 : ORCAD_DFFC 
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

ENTITY \74LS95\ IS PORT(
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
END \74LS95\;

ARCHITECTURE model OF \74LS95\ IS
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
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>L12 , clk=>N1 );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L13 , clk=>N1 );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 );
    DQFF_10 :  ORCAD_DQFF 
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

ENTITY \74LS95B\ IS PORT(
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
END \74LS95B\;

ARCHITECTURE model OF \74LS95B\ IS
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
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>L12 , clk=>N1 );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L13 , clk=>N1 );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 );
    DQFF_14 :  ORCAD_DQFF 
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

ENTITY \74LS96\ IS PORT(
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
END \74LS96\;

ARCHITECTURE model OF \74LS96\ IS
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
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>SER , clk=>CLK , pr=>L1 , cl=>CLR );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , pr=>L2 , cl=>CLR );
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , pr=>L3 , cl=>CLR );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , pr=>L4 , cl=>CLR );
    DQFFPC_4 :  ORCAD_DQFFPC 
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

ENTITY \74LS107\ IS PORT(
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
END \74LS107\;

ARCHITECTURE model OF \74LS107\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_10 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_11 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS107A\ IS PORT(
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
END \74LS107A\;

ARCHITECTURE model OF \74LS107A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFC_12 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , cl=>CL_A );
    JKFFC_13 :  ORCAD_JKFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS109\ IS PORT(
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
END \74LS109\;

ARCHITECTURE model OF \74LS109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS109A\ IS PORT(
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
END \74LS109A\;

ARCHITECTURE model OF \74LS109A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS112\ IS PORT(
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
END \74LS112\;

ARCHITECTURE model OF \74LS112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS112A\ IS PORT(
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
END \74LS112A\;

ARCHITECTURE model OF \74LS112A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_16 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_17 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS113\ IS PORT(
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
END \74LS113\;

ARCHITECTURE model OF \74LS113\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFP_0 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_1 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS113A\ IS PORT(
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
END \74LS113A\;

ARCHITECTURE model OF \74LS113A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFP_2 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_3 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS114\ IS PORT(
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
END \74LS114\;

ARCHITECTURE model OF \74LS114\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    JKFFPC_18 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_19 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS114A\ IS PORT(
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
END \74LS114A\;

ARCHITECTURE model OF \74LS114A\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    JKFFPC_20 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_21 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS125\ IS PORT(
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
END \74LS125\;

ARCHITECTURE model OF \74LS125\ IS
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
    N1 <=  ( I_A ) AFTER 13 ns;
    N2 <=  ( I_B ) AFTER 13 ns;
    N3 <=  ( I_C ) AFTER 13 ns;
    N4 <=  ( I_D ) AFTER 13 ns;
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS125A\ IS PORT(
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
END \74LS125A\;

ARCHITECTURE model OF \74LS125A\ IS
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
    N1 <=  ( I_A ) AFTER 13 ns;
    N2 <=  ( I_B ) AFTER 13 ns;
    N3 <=  ( I_C ) AFTER 13 ns;
    N4 <=  ( I_D ) AFTER 13 ns;
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>L1 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>L3 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS126\ IS PORT(
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
END \74LS126\;

ARCHITECTURE model OF \74LS126\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 13 ns;
    N2 <=  ( I_B ) AFTER 13 ns;
    N3 <=  ( I_C ) AFTER 13 ns;
    N4 <=  ( I_D ) AFTER 13 ns;
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS126A\ IS PORT(
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
END \74LS126A\;

ARCHITECTURE model OF \74LS126A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I_A ) AFTER 13 ns;
    N2 <=  ( I_B ) AFTER 13 ns;
    N3 <=  ( I_C ) AFTER 13 ns;
    N4 <=  ( I_D ) AFTER 13 ns;
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_A , i1=>N1 , en=>OE_A );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_B , i1=>N2 , en=>OE_B );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_C , i1=>N3 , en=>OE_C );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>O_D , i1=>N4 , en=>OE_D );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS132\ IS PORT(
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
END \74LS132\;

ARCHITECTURE model OF \74LS132\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 22 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 22 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 22 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS136\ IS PORT(
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
END \74LS136\;

ARCHITECTURE model OF \74LS136\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 30 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 30 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 30 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS137\ IS PORT(
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
END \74LS137\;

ARCHITECTURE model OF \74LS137\ IS
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
    N1 <= NOT ( G2 ) AFTER 5 ns;
    N2 <=  ( G1 ) AFTER 5 ns;
    L1 <=  ( N1 AND N2 );
    L2 <= NOT ( GL );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>A , enable=>L2 );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>B , enable=>L2 );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>C , enable=>L2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( N5 );
    Y0 <= NOT ( L3 AND L4 AND L5 AND L1 ) AFTER 22 ns;
    Y1 <= NOT ( N3 AND L4 AND L5 AND L1 ) AFTER 22 ns;
    Y2 <= NOT ( L3 AND N4 AND L5 AND L1 ) AFTER 22 ns;
    Y3 <= NOT ( N3 AND N4 AND L5 AND L1 ) AFTER 22 ns;
    Y4 <= NOT ( L3 AND L4 AND N5 AND L1 ) AFTER 22 ns;
    Y5 <= NOT ( N3 AND L4 AND N5 AND L1 ) AFTER 22 ns;
    Y6 <= NOT ( L3 AND N4 AND N5 AND L1 ) AFTER 22 ns;
    Y7 <= NOT ( N3 AND N4 AND N5 AND L1 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS138\ IS PORT(
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
END \74LS138\;

ARCHITECTURE model OF \74LS138\ IS
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
    N1 <=  ( A ) AFTER 34 ns;
    N2 <=  ( B ) AFTER 34 ns;
    N3 <=  ( C ) AFTER 34 ns;
    N4 <= NOT ( A ) AFTER 36 ns;
    N5 <= NOT ( B ) AFTER 36 ns;
    N6 <= NOT ( C ) AFTER 36 ns;
    N7 <=  ( G1 ) AFTER 33 ns;
    N8 <= NOT ( G2A OR G2B ) AFTER 27 ns;
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

ENTITY \74LS139\ IS PORT(
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
END \74LS139\;

ARCHITECTURE model OF \74LS139\ IS
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
    N1 <= NOT ( G_A ) AFTER 27 ns;
    N2 <=  ( A_A ) AFTER 33 ns;
    N3 <=  ( B_A ) AFTER 33 ns;
    N4 <= NOT ( A_A ) AFTER 28 ns;
    N5 <= NOT ( B_A ) AFTER 28 ns;
    N6 <= NOT ( G_B ) AFTER 27 ns;
    N7 <=  ( A_B ) AFTER 33 ns;
    N8 <=  ( B_B ) AFTER 33 ns;
    N9 <= NOT ( A_B ) AFTER 28 ns;
    N10 <= NOT ( B_B ) AFTER 28 ns;
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

ENTITY \74LS139A\ IS PORT(
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
END \74LS139A\;

ARCHITECTURE model OF \74LS139A\ IS
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
    N1 <= NOT ( G_A ) AFTER 27 ns;
    N2 <=  ( A_A ) AFTER 33 ns;
    N3 <=  ( B_A ) AFTER 33 ns;
    N4 <= NOT ( A_A ) AFTER 28 ns;
    N5 <= NOT ( B_A ) AFTER 28 ns;
    N6 <= NOT ( G_B ) AFTER 27 ns;
    N7 <=  ( A_B ) AFTER 33 ns;
    N8 <=  ( B_B ) AFTER 33 ns;
    N9 <= NOT ( A_B ) AFTER 28 ns;
    N10 <= NOT ( B_B ) AFTER 28 ns;
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

ENTITY \74LS145\ IS PORT(
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
END \74LS145\;

ARCHITECTURE model OF \74LS145\ IS
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

ENTITY \74LS147\ IS PORT(
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
END \74LS147\;

ARCHITECTURE model OF \74LS147\ IS
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
    D <=  ( L8 ) AFTER 33 ns;
    C <=  ( L17 AND L18 AND L16 AND L13 ) AFTER 33 ns;
    B <=  ( L14 AND L15 AND L16 AND L13 ) AFTER 33 ns;
    A <=  ( L10 AND L11 AND L12 AND L13 AND \9\ ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS148\ IS PORT(
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
END \74LS148\;

ARCHITECTURE model OF \74LS148\ IS
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

    BEGIN
    N1 <= NOT ( \1\ ) AFTER 14 ns;
    N2 <= NOT ( \2\ ) AFTER 14 ns;
    N3 <= NOT ( \3\ ) AFTER 14 ns;
    N4 <= NOT ( \4\ ) AFTER 14 ns;
    N5 <= NOT ( \5\ ) AFTER 14 ns;
    N6 <= NOT ( \6\ ) AFTER 14 ns;
    N7 <= NOT ( \7\ ) AFTER 14 ns;
    N8 <=  ( \1\ ) AFTER 10 ns;
    N9 <=  ( \2\ ) AFTER 10 ns;
    N10 <=  ( \3\ ) AFTER 10 ns;
    N11 <=  ( \4\ ) AFTER 10 ns;
    N12 <=  ( \5\ ) AFTER 10 ns;
    N13 <=  ( \6\ ) AFTER 10 ns;
    N14 <=  ( \7\ ) AFTER 10 ns;
    N15 <=  ( \0\ ) AFTER 10 ns;
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
    N16 <=  ( L1 ) AFTER 6 ns;
    N17 <=  ( L1 ) AFTER 6 ns;
    N18 <= NOT ( N8 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 AND N16 ) AFTER 30 ns;
    EO <= N18;
    GS <= NOT ( N18 AND N17 ) AFTER 30 ns;
    A0 <= NOT ( L6 OR L7 OR L8 OR L9 ) AFTER 25 ns;
    A1 <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 25 ns;
    A2 <= NOT ( L14 OR L15 OR L16 OR L17 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS151\ IS PORT(
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
END \74LS151\;

ARCHITECTURE model OF \74LS151\ IS
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
    N1 <= NOT ( A ) AFTER 12 ns;
    N2 <= NOT ( B ) AFTER 12 ns;
    N3 <= NOT ( C ) AFTER 12 ns;
    N4 <= NOT ( G ) AFTER 10 ns;
    N5 <=  ( G ) AFTER 10 ns;
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
    Y <=  ( N4 AND L12 ) AFTER 32 ns;
    W <=  ( N5 OR L13 ) AFTER 21 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS152\ IS PORT(
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
END \74LS152\;

ARCHITECTURE model OF \74LS152\ IS
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
    N1 <= NOT ( A ) AFTER 12 ns;
    N2 <= NOT ( B ) AFTER 12 ns;
    N3 <= NOT ( C ) AFTER 12 ns;
    N4 <=  ( A ) AFTER 12 ns;
    N5 <=  ( B ) AFTER 12 ns;
    N6 <=  ( C ) AFTER 12 ns;
    L4 <=  ( D0 AND N1 AND N2 AND N3 );
    L5 <=  ( D1 AND N4 AND N2 AND N3 );
    L6 <=  ( D2 AND N1 AND N5 AND N3 );
    L7 <=  ( D3 AND N4 AND N5 AND N3 );
    L8 <=  ( D4 AND N1 AND N2 AND N6 );
    L9 <=  ( D5 AND N4 AND N2 AND N6 );
    L10 <=  ( D6 AND N1 AND N5 AND N6 );
    L11 <=  ( D7 AND N4 AND N5 AND N6 );
    W <= NOT ( L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 ) AFTER 21 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS153\ IS PORT(
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
END \74LS153\;

ARCHITECTURE model OF \74LS153\ IS
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
    N1 <= NOT ( \1G\ ) AFTER 9 ns;
    N2 <= NOT ( \2G\ ) AFTER 9 ns;
    N3 <= NOT ( B ) AFTER 14 ns;
    N4 <= NOT ( A ) AFTER 14 ns;
    N5 <=  ( B ) AFTER 14 ns;
    N6 <=  ( A ) AFTER 14 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <=  ( L3 OR L4 OR L5 OR L6 ) AFTER 26 ns;
    \2Y\ <=  ( L7 OR L8 OR L9 OR L10 ) AFTER 26 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS154\ IS PORT(
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
END \74LS154\;

ARCHITECTURE model OF \74LS154\ IS
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

ENTITY \74LS155\ IS PORT(
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
END \74LS155\;

ARCHITECTURE model OF \74LS155\ IS
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
    N1 <=  ( \1G\ ) AFTER 20 ns;
    N2 <=  ( \2G\ ) AFTER 20 ns;
    N3 <=  ( \2C\ ) AFTER 20 ns;
    N4 <= NOT ( \1C\ ) AFTER 17 ns;
    N5 <= NOT ( B ) AFTER 20 ns;
    N6 <= NOT ( A ) AFTER 20 ns;
    N7 <=  ( B ) AFTER 20 ns;
    N8 <=  ( A ) AFTER 20 ns;
    L1 <= NOT ( N1 OR N4 );
    L2 <= NOT ( N3 OR N2 );
    \1Y0\ <= NOT ( N5 AND N6 AND L1 ) AFTER 10 ns;
    \1Y1\ <= NOT ( N5 AND N8 AND L1 ) AFTER 10 ns;
    \1Y2\ <= NOT ( N7 AND N6 AND L1 ) AFTER 10 ns;
    \1Y3\ <= NOT ( N7 AND N8 AND L1 ) AFTER 10 ns;
    \2Y0\ <= NOT ( N5 AND N6 AND L2 ) AFTER 10 ns;
    \2Y1\ <= NOT ( N5 AND N8 AND L2 ) AFTER 10 ns;
    \2Y2\ <= NOT ( N7 AND N6 AND L2 ) AFTER 10 ns;
    \2Y3\ <= NOT ( N7 AND N8 AND L2 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS155A\ IS PORT(
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
END \74LS155A\;

ARCHITECTURE model OF \74LS155A\ IS
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
    N1 <=  ( \1G\ ) AFTER 20 ns;
    N2 <=  ( \2G\ ) AFTER 20 ns;
    N3 <=  ( \2C\ ) AFTER 20 ns;
    N4 <= NOT ( \1C\ ) AFTER 17 ns;
    N5 <= NOT ( B ) AFTER 20 ns;
    N6 <= NOT ( A ) AFTER 20 ns;
    N7 <=  ( B ) AFTER 20 ns;
    N8 <=  ( A ) AFTER 20 ns;
    L1 <= NOT ( N1 OR N4 );
    L2 <= NOT ( N3 OR N2 );
    \1Y0\ <= NOT ( N5 AND N6 AND L1 ) AFTER 10 ns;
    \1Y1\ <= NOT ( N5 AND N8 AND L1 ) AFTER 10 ns;
    \1Y2\ <= NOT ( N7 AND N6 AND L1 ) AFTER 10 ns;
    \1Y3\ <= NOT ( N7 AND N8 AND L1 ) AFTER 10 ns;
    \2Y0\ <= NOT ( N5 AND N6 AND L2 ) AFTER 10 ns;
    \2Y1\ <= NOT ( N5 AND N8 AND L2 ) AFTER 10 ns;
    \2Y2\ <= NOT ( N7 AND N6 AND L2 ) AFTER 10 ns;
    \2Y3\ <= NOT ( N7 AND N8 AND L2 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS156\ IS PORT(
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
END \74LS156\;

ARCHITECTURE model OF \74LS156\ IS
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
    N1 <=  ( \1G\ ) AFTER 3 ns;
    N2 <=  ( \2G\ ) AFTER 3 ns;
    N3 <=  ( \2C\ ) AFTER 3 ns;
    N4 <= NOT ( \1C\ ) AFTER 10 ns;
    N5 <= NOT ( B ) AFTER 3 ns;
    N6 <= NOT ( A ) AFTER 3 ns;
    N7 <=  ( B ) AFTER 5 ns;
    N8 <=  ( A ) AFTER 5 ns;
    L1 <= NOT ( N1 OR N4 );
    L2 <= NOT ( N3 OR N2 );
    \1Y0\ <= NOT ( N5 AND N6 AND L1 ) AFTER 48 ns;
    \1Y1\ <= NOT ( N5 AND N8 AND L1 ) AFTER 48 ns;
    \1Y2\ <= NOT ( N7 AND N6 AND L1 ) AFTER 48 ns;
    \1Y3\ <= NOT ( N7 AND N8 AND L1 ) AFTER 48 ns;
    \2Y0\ <= NOT ( N5 AND N6 AND L2 ) AFTER 48 ns;
    \2Y1\ <= NOT ( N5 AND N8 AND L2 ) AFTER 48 ns;
    \2Y2\ <= NOT ( N7 AND N6 AND L2 ) AFTER 48 ns;
    \2Y3\ <= NOT ( N7 AND N8 AND L2 ) AFTER 48 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS156A\ IS PORT(
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
END \74LS156A\;

ARCHITECTURE model OF \74LS156A\ IS
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
    N1 <=  ( \1G\ ) AFTER 3 ns;
    N2 <=  ( \2G\ ) AFTER 3 ns;
    N3 <=  ( \2C\ ) AFTER 3 ns;
    N4 <= NOT ( \1C\ ) AFTER 10 ns;
    N5 <= NOT ( B ) AFTER 3 ns;
    N6 <= NOT ( A ) AFTER 3 ns;
    N7 <=  ( B ) AFTER 5 ns;
    N8 <=  ( A ) AFTER 5 ns;
    L1 <= NOT ( N1 OR N4 );
    L2 <= NOT ( N3 OR N2 );
    \1Y0\ <= NOT ( N5 AND N6 AND L1 ) AFTER 48 ns;
    \1Y1\ <= NOT ( N5 AND N8 AND L1 ) AFTER 48 ns;
    \1Y2\ <= NOT ( N7 AND N6 AND L1 ) AFTER 48 ns;
    \1Y3\ <= NOT ( N7 AND N8 AND L1 ) AFTER 48 ns;
    \2Y0\ <= NOT ( N5 AND N6 AND L2 ) AFTER 48 ns;
    \2Y1\ <= NOT ( N5 AND N8 AND L2 ) AFTER 48 ns;
    \2Y2\ <= NOT ( N7 AND N6 AND L2 ) AFTER 48 ns;
    \2Y3\ <= NOT ( N7 AND N8 AND L2 ) AFTER 48 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS157\ IS PORT(
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
END \74LS157\;

ARCHITECTURE model OF \74LS157\ IS
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

ENTITY \74LS158\ IS PORT(
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
END \74LS158\;

ARCHITECTURE model OF \74LS158\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 12 ns;
    N2 <= NOT ( G ) AFTER 6 ns;
    L1 <= NOT ( N1 );
    L2 <=  ( \1A\ AND N1 AND N2 );
    L3 <=  ( \1B\ AND L1 AND N2 );
    L4 <=  ( \2A\ AND N1 AND N2 );
    L5 <=  ( \2B\ AND L1 AND N2 );
    L6 <=  ( \3A\ AND N1 AND N2 );
    L7 <=  ( \3B\ AND L1 AND N2 );
    L8 <=  ( \4A\ AND N1 AND N2 );
    L9 <=  ( \4B\ AND L1 AND N2 );
    \1Y\ <= NOT ( L2 OR L3 ) AFTER 12 ns;
    \2Y\ <= NOT ( L4 OR L5 ) AFTER 12 ns;
    \3Y\ <= NOT ( L6 OR L7 ) AFTER 12 ns;
    \4Y\ <= NOT ( L8 OR L9 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS160\ IS PORT(
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
END \74LS160\;

ARCHITECTURE model OF \74LS160\ IS
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
    N2 <=  ( N3 AND N6 ) AFTER 7 ns;
    RCO <=  ( ENT AND N2 ) AFTER 14 ns;
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
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N4 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS160A\ IS PORT(
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
END \74LS160A\;

ARCHITECTURE model OF \74LS160A\ IS
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
    N2 <=  ( N3 AND N6 ) AFTER 7 ns;
    RCO <=  ( ENT AND N2 ) AFTER 14 ns;
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
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N4 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS161\ IS PORT(
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
END \74LS161\;

ARCHITECTURE model OF \74LS161\ IS
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
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 7 ns;
    RCO <=  ( ENT AND N2 ) AFTER 14 ns;
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
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N4 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS161A\ IS PORT(
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
END \74LS161A\;

ARCHITECTURE model OF \74LS161A\ IS
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
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 7 ns;
    RCO <=  ( ENT AND N2 ) AFTER 14 ns;
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
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N4 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS162\ IS PORT(
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
END \74LS162\;

ARCHITECTURE model OF \74LS162\ IS
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
    N2 <=  ( N3 AND N6 ) AFTER 7 ns;
    RCO <=  ( ENT AND N2 ) AFTER 14 ns;
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
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N4 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS162A\ IS PORT(
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
END \74LS162A\;

ARCHITECTURE model OF \74LS162A\ IS
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
    N2 <=  ( N3 AND N6 ) AFTER 7 ns;
    RCO <=  ( ENT AND N2 ) AFTER 14 ns;
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
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N4 ) AFTER 10 ns;
    QC <=  ( N5 ) AFTER 10 ns;
    QD <=  ( N6 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS163\ IS PORT(
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
END \74LS163\;

ARCHITECTURE model OF \74LS163\ IS
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
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 7 ns;
    RCO <=  ( ENT AND N4 ) AFTER 14 ns;
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
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 10 ns;
    QB <=  ( N6 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N8 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS163A\ IS PORT(
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
END \74LS163A\;

ARCHITECTURE model OF \74LS163A\ IS
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
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 7 ns;
    RCO <=  ( ENT AND N4 ) AFTER 14 ns;
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
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 10 ns;
    QB <=  ( N6 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N8 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS164\ IS PORT(
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
END \74LS164\;

ARCHITECTURE model OF \74LS164\ IS
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
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLR );
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLR );
    QA <=  ( N1 ) AFTER 22 ns;
    QB <=  ( N2 ) AFTER 22 ns;
    QC <=  ( N3 ) AFTER 22 ns;
    QD <=  ( N4 ) AFTER 22 ns;
    QE <=  ( N5 ) AFTER 22 ns;
    QF <=  ( N6 ) AFTER 22 ns;
    QG <=  ( N7 ) AFTER 22 ns;
    QH <=  ( N8 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS165\ IS PORT(
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
END \74LS165\;

ARCHITECTURE model OF \74LS165\ IS
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
    DQFFPC_5 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N5 , d=>N2 , clk=>N4 , pr=>L2 , cl=>L10 );
    DQFFPC_6 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>N4 , pr=>L3 , cl=>L11 );
    DQFFPC_7 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>N4 , pr=>L4 , cl=>L12 );
    DQFFPC_8 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>N4 , pr=>L5 , cl=>L13 );
    DQFFPC_9 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>N4 , pr=>L6 , cl=>L14 );
    DQFFPC_10 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N10 , d=>N9 , clk=>N4 , pr=>L7 , cl=>L15 );
    DQFFPC_11 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N11 , d=>N10 , clk=>N4 , pr=>L8 , cl=>L16 );
    DFFPC_4 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>N11 , clk=>N4 , pr=>L9 , cl=>L17 );
    QH <=  ( N12 ) AFTER 5 ns;
    \Q\\H\\\ <=  ( N13 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS165A\ IS PORT(
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
END \74LS165A\;

ARCHITECTURE model OF \74LS165A\ IS
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
    DQFFPC_12 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N5 , d=>N2 , clk=>N4 , pr=>L2 , cl=>L10 );
    DQFFPC_13 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>N4 , pr=>L3 , cl=>L11 );
    DQFFPC_14 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>N4 , pr=>L4 , cl=>L12 );
    DQFFPC_15 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>N4 , pr=>L5 , cl=>L13 );
    DQFFPC_16 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>N4 , pr=>L6 , cl=>L14 );
    DQFFPC_17 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N10 , d=>N9 , clk=>N4 , pr=>L7 , cl=>L15 );
    DQFFPC_18 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N11 , d=>N10 , clk=>N4 , pr=>L8 , cl=>L16 );
    DFFPC_5 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N12 , qNot=>N13 , d=>N11 , clk=>N4 , pr=>L9 , cl=>L17 );
    QH <=  ( N12 ) AFTER 5 ns;
    \Q\\H\\\ <=  ( N13 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS166\ IS PORT(
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
END \74LS166\;

ARCHITECTURE model OF \74LS166\ IS
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
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N5 , d=>L3 , clk=>N4 , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N6 , d=>L6 , clk=>N4 , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N4 , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N8 , d=>L12 , clk=>N4 , cl=>CLR );
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N4 , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N10 , d=>L18 , clk=>N4 , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N11 , d=>L21 , clk=>N4 , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QH , d=>L24 , clk=>N4 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS166A\ IS PORT(
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
END \74LS166A\;

ARCHITECTURE model OF \74LS166A\ IS
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
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N5 , d=>L3 , clk=>N4 , cl=>CLR );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N6 , d=>L6 , clk=>N4 , cl=>CLR );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N4 , cl=>CLR );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N8 , d=>L12 , clk=>N4 , cl=>CLR );
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N4 , cl=>CLR );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N10 , d=>L18 , clk=>N4 , cl=>CLR );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N11 , d=>L21 , clk=>N4 , cl=>CLR );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QH , d=>L24 , clk=>N4 , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS168\ IS PORT(
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
END \74LS168\;

ARCHITECTURE model OF \74LS168\ IS
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
    N5 <=  ( L2 ) AFTER 9 ns;
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK );
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    QA <=  ( N1 ) AFTER 8 ns;
    QB <=  ( N2 ) AFTER 8 ns;
    QC <=  ( N3 ) AFTER 8 ns;
    QD <=  ( N4 ) AFTER 8 ns;
    RCO <= NOT ( L41 OR L42 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS169\ IS PORT(
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
END \74LS169\;

ARCHITECTURE model OF \74LS169\ IS
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
    N1 <= NOT ( LOAD ) AFTER 5 ns;
    N2 <=  ( ENT OR ENP ) AFTER 0 ns;
    N3 <= NOT ( ENT ) AFTER 20 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 25 ns;
    N5 <=  ( \U/D\\\ ) AFTER 25 ns;
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
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 0 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 15 ns;
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
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 0 ns;
    QB <= NOT ( N8 ) AFTER 0 ns;
    QC <= NOT ( N9 ) AFTER 0 ns;
    QD <= NOT ( N10 ) AFTER 0 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS169B\ IS PORT(
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
END \74LS169B\;

ARCHITECTURE model OF \74LS169B\ IS
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
    N1 <= NOT ( LOAD ) AFTER 5 ns;
    N2 <=  ( ENT OR ENP ) AFTER 0 ns;
    N3 <= NOT ( ENT ) AFTER 20 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 25 ns;
    N5 <=  ( \U/D\\\ ) AFTER 25 ns;
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
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 0 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 15 ns;
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
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 0 ns;
    QB <= NOT ( N8 ) AFTER 0 ns;
    QC <= NOT ( N9 ) AFTER 0 ns;
    QD <= NOT ( N10 ) AFTER 0 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS171\ IS PORT(
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
END \74LS171\;

ARCHITECTURE model OF \74LS171\ IS

    BEGIN
    DFFC_6 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_7 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_8 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_9 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>25 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS173\ IS PORT(
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
END \74LS173\;

ARCHITECTURE model OF \74LS173\ IS
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
    N1 <= NOT ( G1 OR G2 ) AFTER 18 ns;
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
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>L6 , clk=>CLK , cl=>L2 );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>L9 , clk=>CLK , cl=>L2 );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>L12 , clk=>CLK , cl=>L2 );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>L2 );
    N6 <=  ( N2 ) AFTER 10 ns;
    N7 <=  ( N3 ) AFTER 10 ns;
    N8 <=  ( N4 ) AFTER 10 ns;
    N9 <=  ( N5 ) AFTER 10 ns;
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1 , i1=>N6 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2 , i1=>N7 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3 , i1=>N8 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS173A\ IS PORT(
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
END \74LS173A\;

ARCHITECTURE model OF \74LS173A\ IS
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
    N1 <= NOT ( G1 OR G2 ) AFTER 18 ns;
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
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>L6 , clk=>CLK , cl=>L2 );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>L9 , clk=>CLK , cl=>L2 );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>L12 , clk=>CLK , cl=>L2 );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>L2 );
    N6 <=  ( N2 ) AFTER 10 ns;
    N7 <=  ( N3 ) AFTER 10 ns;
    N8 <=  ( N4 ) AFTER 10 ns;
    N9 <=  ( N5 ) AFTER 10 ns;
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1 , i1=>N6 , en=>L1 );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2 , i1=>N7 , en=>L1 );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3 , i1=>N8 , en=>L1 );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>23 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS174\ IS PORT(
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
END \74LS174\;

ARCHITECTURE model OF \74LS174\ IS

    BEGIN
    DQFFC_54 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_55 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_56 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_57 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_58 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_59 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS175\ IS PORT(
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
END \74LS175\;

ARCHITECTURE model OF \74LS175\ IS

    BEGIN
    DFFC_10 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_11 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_12 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_13 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>30 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS181\ IS PORT(
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
END \74LS181\;

ARCHITECTURE model OF \74LS181\ IS
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
    N1 <=  ( L22 XOR L23 ) AFTER 18 ns;
    N2 <=  ( L24 XOR L25 ) AFTER 18 ns;
    N3 <=  ( L26 XOR L27 ) AFTER 18 ns;
    N4 <=  ( L28 XOR L29 ) AFTER 18 ns;
    N12 <=  ( L23 ) AFTER 22 ns;
    N5 <=  ( L22 AND L25 ) AFTER 22 ns;
    N6 <=  ( L22 AND L24 AND L27 ) AFTER 22 ns;
    N7 <=  ( L22 AND L24 AND L26 AND L29 ) AFTER 22 ns;
    N13 <=  ( CN ) AFTER 22 ns;
    L30 <= NOT ( L22 AND L24 AND L26 AND L28 AND N13 );
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
    N14 <= NOT ( N12 OR N5 OR N6 OR N7 ) AFTER 10 ns;
    G <= N14;
    N8 <=  ( N14 ) AFTER 4 ns;
    \CN+4\ <= NOT ( N8 AND L30 ) AFTER 5 ns;
    P <= NOT ( L22 AND L24 AND L26 AND L28 ) AFTER 33 ns;
    N18 <=  ( N1 XOR L41 ) AFTER 26 ns;
    F3 <= N18;
    N17 <=  ( N2 XOR L42 ) AFTER 26 ns;
    F2 <= N17;
    N16 <=  ( N3 XOR L43 ) AFTER 26 ns;
    F1 <= N16;
    N15 <=  ( N4 XOR L40 ) AFTER 26 ns;
    F0 <= N15;
    N9 <=  ( N18 ) AFTER 18 ns;
    N10 <=  ( N17 ) AFTER 18 ns;
    N11 <=  ( N16 ) AFTER 18 ns;
    \A=B\ <=  ( N9 AND N10 AND N11 AND N15 ) AFTER 24 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS183\ IS PORT(
A_A : IN  std_logic;
A_B : IN  std_logic;
B_A : IN  std_logic;
B_B : IN  std_logic;
CI_A : IN  std_logic;
CI_B : IN  std_logic;
S_A : OUT  std_logic;
S_B : OUT  std_logic;
CO_A : OUT  std_logic;
CO_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS183\;

ARCHITECTURE model OF \74LS183\ IS
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

    BEGIN
    L1 <= NOT ( CI_A );
    L2 <= NOT ( B_A );
    L3 <= NOT ( A_A );
    L4 <= NOT ( CI_B );
    L5 <= NOT ( B_B );
    L6 <= NOT ( A_B );
    L7 <=  ( L1 AND L2 );
    L8 <=  ( L2 AND L3 );
    L9 <=  ( L1 AND L3 );
    L10 <=  ( CI_A AND L2 AND A_A );
    L11 <=  ( L1 AND B_A AND A_A );
    L12 <=  ( L1 AND L2 AND L3 );
    L13 <=  ( CI_A AND B_A AND L3 );
    L14 <=  ( L4 AND L5 );
    L15 <=  ( L5 AND L6 );
    L16 <=  ( L4 AND L6 );
    L17 <=  ( CI_B AND L5 AND A_B );
    L18 <=  ( L4 AND B_B AND A_B );
    L19 <=  ( L4 AND L5 AND L6 );
    L20 <=  ( CI_B AND B_B AND L6 );
    CO_A <= NOT ( L7 OR L8 OR L9 ) AFTER 33 ns;
    S_A <= NOT ( L10 OR L11 OR L12 OR L13 ) AFTER 33 ns;
    CO_B <= NOT ( L14 OR L15 OR L16 ) AFTER 33 ns;
    S_B <= NOT ( L17 OR L18 OR L19 OR L20 ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS190\ IS PORT(
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
END \74LS190\;

ARCHITECTURE model OF \74LS190\ IS
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
    N1 <= NOT ( CLK ) AFTER 12 ns;
    N2 <= NOT ( G ) AFTER 21 ns;
    N3 <= NOT ( LOAD ) AFTER 10 ns;
    JKFFPC_22 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L22 , k=>L22 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_23 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L23 , k=>L23 , clk=>CLK , pr=>L8 , cl=>L10 );
    JKFFPC_24 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L24 , k=>L24 , clk=>CLK , pr=>L11 , cl=>L12 );
    JKFFPC_25 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
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

ENTITY \74LS191\ IS PORT(
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
END \74LS191\;

ARCHITECTURE model OF \74LS191\ IS
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
    N1 <= NOT ( CLK ) AFTER 12 ns;
    N2 <= NOT ( G ) AFTER 21 ns;
    N3 <= NOT ( LOAD ) AFTER 10 ns;
    JKFFPC_26 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_27 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_28 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_29 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
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

ENTITY \74LS192\ IS PORT(
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
END \74LS192\;

ARCHITECTURE model OF \74LS192\ IS
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
    JKFFPC_30 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L19 );
    JKFFPC_31 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L20 );
    JKFFPC_32 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L6 , cl=>L21 );
    JKFFPC_33 :  ORCAD_JKFFPC 
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

ENTITY \74LS193\ IS PORT(
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
END \74LS193\;

ARCHITECTURE model OF \74LS193\ IS
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
    N1 <= NOT ( CLR ) AFTER 3 ns;
    N2 <= NOT ( LOAD ) AFTER 8 ns;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ns;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ns;
    JKFFPC_34 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_35 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_36 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_37 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 24 ns;
    CO <= NOT ( N7 AND N9 AND N11 AND N13 AND L2 ) AFTER 26 ns;
    QA <=  ( N7 ) AFTER 29 ns;
    QB <=  ( N9 ) AFTER 29 ns;
    QC <=  ( N11 ) AFTER 29 ns;
    QD <=  ( N13 ) AFTER 29 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS194\ IS PORT(
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
END \74LS194\;

ARCHITECTURE model OF \74LS194\ IS
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
    DQFFC_60 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_61 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_62 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_63 :  ORCAD_DQFFC 
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

ENTITY \74LS194A\ IS PORT(
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
END \74LS194A\;

ARCHITECTURE model OF \74LS194A\ IS
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
    DQFFC_64 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_65 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_66 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_67 :  ORCAD_DQFFC 
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

ENTITY \74LS195\ IS PORT(
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
END \74LS195\;

ARCHITECTURE model OF \74LS195\ IS
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
    N1 <= NOT ( \S/L\\\ ) AFTER 10 ns;
    N2 <=  ( \S/L\\\ ) AFTER 10 ns;
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
    DQFFC_68 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_69 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_70 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_71 :  ORCAD_DQFFC 
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

ENTITY \74LS195A\ IS PORT(
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
END \74LS195A\;

ARCHITECTURE model OF \74LS195A\ IS
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
    N1 <= NOT ( \S/L\\\ ) AFTER 10 ns;
    N2 <=  ( \S/L\\\ ) AFTER 10 ns;
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
    DQFFC_72 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_73 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_74 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLR );
    DQFFC_75 :  ORCAD_DQFFC 
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

ENTITY \74LS196\ IS PORT(
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
END \74LS196\;

ARCHITECTURE model OF \74LS196\ IS
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
    JKFFPC_38 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_39 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>N10 , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_40 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>29 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_41 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>35 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L10 , k=>N9 , clk=>N2 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS197\ IS PORT(
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
END \74LS197\;

ARCHITECTURE model OF \74LS197\ IS
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
    JKFFPC_42 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3 );
    JKFFPC_43 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>ONE , k=>ONE , clk=>N2 , pr=>L4 , cl=>L5 );
    JKFFPC_44 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7 );
    JKFFPC_45 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , pr=>L8 , cl=>L9 );
    QA <=  ( N3 ) AFTER 10 ns;
    QB <=  ( N5 ) AFTER 10 ns;
    QC <=  ( N7 ) AFTER 10 ns;
    QD <=  ( N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS240\ IS PORT(
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
END \74LS240\;

ARCHITECTURE model OF \74LS240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 18 ns;
    N2 <= NOT ( A2_A ) AFTER 18 ns;
    N3 <= NOT ( A3_A ) AFTER 18 ns;
    N4 <= NOT ( A4_A ) AFTER 18 ns;
    N5 <= NOT ( A1_B ) AFTER 18 ns;
    N6 <= NOT ( A2_B ) AFTER 18 ns;
    N7 <= NOT ( A3_B ) AFTER 18 ns;
    N8 <= NOT ( A4_B ) AFTER 18 ns;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS241\ IS PORT(
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
END \74LS241\;

ARCHITECTURE model OF \74LS241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 18 ns;
    N2 <=  ( \1A2\ ) AFTER 18 ns;
    N3 <=  ( \1A3\ ) AFTER 18 ns;
    N4 <=  ( \1A4\ ) AFTER 18 ns;
    N5 <=  ( \2A1\ ) AFTER 18 ns;
    N6 <=  ( \2A2\ ) AFTER 18 ns;
    N7 <=  ( \2A3\ ) AFTER 18 ns;
    N8 <=  ( \2A4\ ) AFTER 18 ns;
    L1 <= NOT ( \1G\ );
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS242\ IS PORT(
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
END \74LS242\;

ARCHITECTURE model OF \74LS242\ IS
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
    N1 <= NOT ( A1 ) AFTER 18 ns;
    N2 <= NOT ( A2 ) AFTER 18 ns;
    N3 <= NOT ( A3 ) AFTER 18 ns;
    N4 <= NOT ( A4 ) AFTER 18 ns;
    N5 <= NOT ( B4 ) AFTER 18 ns;
    N6 <= NOT ( B3 ) AFTER 18 ns;
    N7 <= NOT ( B2 ) AFTER 18 ns;
    N8 <= NOT ( B1 ) AFTER 18 ns;
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS243\ IS PORT(
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
END \74LS243\;

ARCHITECTURE model OF \74LS243\ IS
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
    N1 <=  ( A1 ) AFTER 18 ns;
    N2 <=  ( A2 ) AFTER 18 ns;
    N3 <=  ( A3 ) AFTER 18 ns;
    N4 <=  ( A4 ) AFTER 18 ns;
    N5 <=  ( B4 ) AFTER 18 ns;
    N6 <=  ( B3 ) AFTER 18 ns;
    N7 <=  ( B2 ) AFTER 18 ns;
    N8 <=  ( B1 ) AFTER 18 ns;
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS244\ IS PORT(
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
END \74LS244\;

ARCHITECTURE model OF \74LS244\ IS
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
    N1 <=  ( \1A1\ ) AFTER 18 ns;
    N2 <=  ( \1A2\ ) AFTER 18 ns;
    N3 <=  ( \1A3\ ) AFTER 18 ns;
    N4 <=  ( \1A4\ ) AFTER 18 ns;
    N5 <=  ( \2A1\ ) AFTER 18 ns;
    N6 <=  ( \2A2\ ) AFTER 18 ns;
    N7 <=  ( \2A3\ ) AFTER 18 ns;
    N8 <=  ( \2A4\ ) AFTER 18 ns;
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>23 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS245\ IS PORT(
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
END \74LS245\;

ARCHITECTURE model OF \74LS245\ IS
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
    N1 <=  ( A1 ) AFTER 12 ns;
    N2 <=  ( A2 ) AFTER 12 ns;
    N3 <=  ( A3 ) AFTER 12 ns;
    N4 <=  ( A4 ) AFTER 12 ns;
    N5 <=  ( A5 ) AFTER 12 ns;
    N6 <=  ( A6 ) AFTER 12 ns;
    N7 <=  ( A7 ) AFTER 12 ns;
    N8 <=  ( A8 ) AFTER 12 ns;
    N9 <=  ( B8 ) AFTER 12 ns;
    N10 <=  ( B7 ) AFTER 12 ns;
    N11 <=  ( B6 ) AFTER 12 ns;
    N12 <=  ( B5 ) AFTER 12 ns;
    N13 <=  ( B4 ) AFTER 12 ns;
    N14 <=  ( B3 ) AFTER 12 ns;
    N15 <=  ( B2 ) AFTER 12 ns;
    N16 <=  ( B1 ) AFTER 12 ns;
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS247\ IS PORT(
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
END \74LS247\;

ARCHITECTURE model OF \74LS247\ IS
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

ENTITY \74LS248\ IS PORT(
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
END \74LS248\;

ARCHITECTURE model OF \74LS248\ IS
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

ENTITY \74LS249\ IS PORT(
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
END \74LS249\;

ARCHITECTURE model OF \74LS249\ IS
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

ENTITY \74LS251\ IS PORT(
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
END \74LS251\;

ARCHITECTURE model OF \74LS251\ IS
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
    N1 <= NOT ( A ) AFTER 18 ns;
    N2 <= NOT ( B ) AFTER 18 ns;
    N3 <= NOT ( C ) AFTER 18 ns;
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
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>45 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>27 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS253\ IS PORT(
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
END \74LS253\;

ARCHITECTURE model OF \74LS253\ IS
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
    N1 <= NOT ( B ) AFTER 20 ns;
    N2 <= NOT ( A ) AFTER 20 ns;
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 25 ns;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 25 ns;
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>18 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>18 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS257\ IS PORT(
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
END \74LS257\;

ARCHITECTURE model OF \74LS257\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 17 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 18 ns;
    N3 <=  ( L5 OR L6 ) AFTER 18 ns;
    N4 <=  ( L7 OR L8 ) AFTER 18 ns;
    N5 <=  ( L9 OR L10 ) AFTER 18 ns;
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS257A\ IS PORT(
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
END \74LS257A\;

ARCHITECTURE model OF \74LS257A\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 17 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 18 ns;
    N3 <=  ( L5 OR L6 ) AFTER 18 ns;
    N4 <=  ( L7 OR L8 ) AFTER 18 ns;
    N5 <=  ( L9 OR L10 ) AFTER 18 ns;
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS258\ IS PORT(
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
END \74LS258\;

ARCHITECTURE model OF \74LS258\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 17 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 18 ns;
    N3 <=  ( L5 OR L6 ) AFTER 18 ns;
    N4 <=  ( L7 OR L8 ) AFTER 18 ns;
    N5 <=  ( L9 OR L10 ) AFTER 18 ns;
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS258A\ IS PORT(
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
END \74LS258A\;

ARCHITECTURE model OF \74LS258A\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 17 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 18 ns;
    N3 <=  ( L5 OR L6 ) AFTER 18 ns;
    N4 <=  ( L7 OR L8 ) AFTER 18 ns;
    N5 <=  ( L9 OR L10 ) AFTER 18 ns;
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS258B\ IS PORT(
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
END \74LS258B\;

ARCHITECTURE model OF \74LS258B\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 17 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 18 ns;
    N3 <=  ( L5 OR L6 ) AFTER 18 ns;
    N4 <=  ( L7 OR L8 ) AFTER 18 ns;
    N5 <=  ( L9 OR L10 ) AFTER 18 ns;
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>15 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS259\ IS PORT(
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
END \74LS259\;

ARCHITECTURE model OF \74LS259\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    N1 <= NOT ( S2 ) AFTER 12 ns;
    N2 <= NOT ( S1 ) AFTER 12 ns;
    N3 <= NOT ( S0 ) AFTER 12 ns;
    N4 <=  ( S2 ) AFTER 12 ns;
    N5 <=  ( S1 ) AFTER 12 ns;
    N6 <=  ( S0 ) AFTER 12 ns;
    N7 <= NOT ( G ) AFTER 9 ns;
    L1 <=  ( N4 AND N5 AND N6 AND N7 );
    L2 <=  ( N4 AND N5 AND N3 AND N7 );
    L3 <=  ( N4 AND N2 AND N6 AND N7 );
    L4 <=  ( N4 AND N2 AND N3 AND N7 );
    L5 <=  ( N1 AND N5 AND N6 AND N7 );
    L6 <=  ( N1 AND N5 AND N3 AND N7 );
    L7 <=  ( N1 AND N2 AND N6 AND N7 );
    L8 <=  ( N1 AND N2 AND N3 AND N7 );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q7 , d=>D , enable=>L1 , pr=>ONE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q6 , d=>D , enable=>L2 , pr=>ONE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q5 , d=>D , enable=>L3 , pr=>ONE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q4 , d=>D , enable=>L4 , pr=>ONE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q3 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q2 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q1 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q0 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS259B\ IS PORT(
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
END \74LS259B\;

ARCHITECTURE model OF \74LS259B\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    N1 <= NOT ( S2 ) AFTER 12 ns;
    N2 <= NOT ( S1 ) AFTER 12 ns;
    N3 <= NOT ( S0 ) AFTER 12 ns;
    N4 <=  ( S2 ) AFTER 12 ns;
    N5 <=  ( S1 ) AFTER 12 ns;
    N6 <=  ( S0 ) AFTER 12 ns;
    N7 <= NOT ( G ) AFTER 9 ns;
    L1 <=  ( N4 AND N5 AND N6 AND N7 );
    L2 <=  ( N4 AND N5 AND N3 AND N7 );
    L3 <=  ( N4 AND N2 AND N6 AND N7 );
    L4 <=  ( N4 AND N2 AND N3 AND N7 );
    L5 <=  ( N1 AND N5 AND N6 AND N7 );
    L6 <=  ( N1 AND N5 AND N3 AND N7 );
    L7 <=  ( N1 AND N2 AND N6 AND N7 );
    L8 <=  ( N1 AND N2 AND N3 AND N7 );
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q7 , d=>D , enable=>L1 , pr=>ONE , cl=>CLR );
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q6 , d=>D , enable=>L2 , pr=>ONE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q5 , d=>D , enable=>L3 , pr=>ONE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q4 , d=>D , enable=>L4 , pr=>ONE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q3 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q2 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q1 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>30 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>Q0 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS261\ IS PORT(
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
M0 : IN  std_logic;
M1 : IN  std_logic;
M2 : IN  std_logic;
G : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS261\;

ARCHITECTURE model OF \74LS261\ IS
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
    SIGNAL N13 : std_logic;

    BEGIN
    L1 <= NOT ( N1 );
    L2 <= NOT ( N2 );
    L3 <= NOT ( N3 );
    L4 <= NOT ( N4 );
    L5 <= NOT ( N5 );
    L6 <= NOT ( N6 OR N7 );
    L7 <= NOT ( G );
    L8 <= NOT ( N8 OR L7 );
    L9 <=  ( L1 AND N6 AND N8 );
    L10 <=  ( N1 AND N7 AND L8 );
    L11 <=  ( L2 AND L6 AND N8 );
    L12 <=  ( N2 AND L6 AND L8 );
    L13 <=  ( L7 AND N9 );
    L14 <=  ( L2 AND N6 AND N8 );
    L15 <=  ( N2 AND N7 AND L8 );
    L16 <=  ( L3 AND L6 AND N8 );
    L17 <=  ( N3 AND L6 AND L8 );
    L18 <=  ( L7 AND N10 );
    L19 <=  ( L3 AND N6 AND N8 );
    L20 <=  ( N3 AND N7 AND L8 );
    L21 <=  ( L4 AND L6 AND N8 );
    L22 <=  ( N4 AND L6 AND L8 );
    L23 <=  ( L7 AND N11 );
    L24 <=  ( L4 AND N8 AND N6 );
    L25 <=  ( N4 AND N7 AND L8 );
    L26 <=  ( L5 AND L6 AND N8 );
    L27 <=  ( L6 AND N5 AND L8 );
    L28 <=  ( L7 AND N12 );
    L29 <=  ( L5 AND N6 AND N8 );
    L30 <=  ( N5 AND N7 AND L8 );
    L31 <=  ( L5 AND L6 AND N8 );
    L32 <=  ( L6 AND N5 AND L8 );
    L33 <= NOT ( N13 );
    L34 <=  ( L7 AND L33 );
    N1 <= NOT ( B0 ) AFTER 7 ns;
    N2 <= NOT ( B1 ) AFTER 7 ns;
    N3 <= NOT ( B2 ) AFTER 7 ns;
    N4 <= NOT ( B3 ) AFTER 7 ns;
    N5 <= NOT ( B4 ) AFTER 7 ns;
    N6 <=  ( M0 AND M1 ) AFTER 5 ns;
    N7 <= NOT ( M0 OR M1 ) AFTER 5 ns;
    N8 <= NOT ( M2 OR L7 ) AFTER 5 ns;
    N9 <=  ( L9 OR L10 OR L11 OR L12 OR L13 ) AFTER 30 ns;
    Q0 <= N9;    
    N10 <=  ( L14 OR L15 OR L16 OR L17 OR L18 ) AFTER 30 ns;
    Q1 <= N10;    
    N11 <=  ( L19 OR L20 OR L21 OR L22 OR L23 ) AFTER 30 ns;
    Q2 <= N11;    
    N12 <=  ( L24 OR L25 OR L26 OR L27 OR L28 ) AFTER 30 ns;
    Q3 <= N12;    
    N13 <= NOT ( L29 OR L30 OR L31 OR L32 OR L34 ) AFTER 30 ns;
    Q4 <= N13;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS266\ IS PORT(
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
END \74LS266\;

ARCHITECTURE model OF \74LS266\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 30 ns;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 30 ns;
    O_C <= NOT ( I0_C XOR I1_C ) AFTER 30 ns;
    O_D <= NOT ( I0_D XOR I1_D ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS273\ IS PORT(
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
END \74LS273\;

ARCHITECTURE model OF \74LS273\ IS

    BEGIN
    DQFFC_76 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_77 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_78 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_79 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_80 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_81 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_82 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_83 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS279\ IS PORT(
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
END \74LS279\;

ARCHITECTURE model OF \74LS279\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL ZERO : std_logic := '0';

    BEGIN
    L1 <=  ( \1S1\ AND \1S2\ );
    L2 <=  ( \3S1\ AND \3S2\ );
    DQFFPC_19 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N1 , d=>N1 , clk=>ZERO , pr=>L1 , cl=>\1R\ );
    DQFFPC_20 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N2 , d=>N2 , clk=>ZERO , pr=>\2S\ , cl=>\2R\ );
    DQFFPC_21 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N3 , d=>N3 , clk=>ZERO , pr=>L2 , cl=>\3R\ );
    DQFFPC_22 :  ORCAD_DQFFPC 
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

ENTITY \74LS279A\ IS PORT(
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
END \74LS279A\;

ARCHITECTURE model OF \74LS279A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL ZERO : std_logic := '0';

    BEGIN
    L1 <=  ( \1S1\ AND \1S2\ );
    L2 <=  ( \3S1\ AND \3S2\ );
    DQFFPC_23 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N1 , d=>N1 , clk=>ZERO , pr=>L1 , cl=>\1R\ );
    DQFFPC_24 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N2 , d=>N2 , clk=>ZERO , pr=>\2S\ , cl=>\2R\ );
    DQFFPC_25 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N3 , d=>N3 , clk=>ZERO , pr=>L2 , cl=>\3R\ );
    DQFFPC_26 :  ORCAD_DQFFPC 
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

ENTITY \74LS280\ IS PORT(
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
END \74LS280\;

ARCHITECTURE model OF \74LS280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 50 ns;
    ODD <=  ( L1 ) AFTER 50 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS283\ IS PORT(
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
END \74LS283\;

ARCHITECTURE model OF \74LS283\ IS
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
    N1 <= NOT ( C0 ) AFTER 5 ns;
    N10 <= NOT ( C0 ) AFTER 10 ns;
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
    C4 <= NOT ( L16 OR L17 OR L18 OR L19 OR N8 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS290\ IS PORT(
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
END \74LS290\;

ARCHITECTURE model OF \74LS290\ IS
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
    JKFFPC_46 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2 );
    JKFFPC_47 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , pr=>ONE , cl=>L3 );
    JKFFPC_48 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>ONE , cl=>L3 );
    JKFFPC_49 :  ORCAD_JKFFPC 
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

ENTITY \74LS293\ IS PORT(
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
END \74LS293\;

ARCHITECTURE model OF \74LS293\ IS
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
    DQFFP_8 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N3 , d=>L2 , clk=>N1 , pr=>L1 );
    DQFFP_9 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>L3 , clk=>N2 , pr=>L1 );
    DQFFP_10 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L4 , clk=>N4 , pr=>L1 );
    DQFFP_11 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>L5 , clk=>N5 , pr=>L1 );
    QA <= NOT ( N3 ) AFTER 5 ns;
    QB <= NOT ( N4 ) AFTER 5 ns;
    QC <= NOT ( N5 ) AFTER 5 ns;
    QD <= NOT ( N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS295\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
\LD/S\\H\\\ : IN  std_logic;
OC : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS295\;

ARCHITECTURE model OF \74LS295\ IS
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
    L1 <= NOT ( \LD/S\\H\\\ );
    L2 <=  ( L1 AND SER );
    L3 <=  ( \LD/S\\H\\\ AND A );
    L4 <=  ( L2 OR L3 );
    L5 <=  ( N2 AND L1 );
    L6 <=  ( \LD/S\\H\\\ AND B );
    L7 <=  ( L5 OR L6 );
    L8 <=  ( N3 AND L1 );
    L9 <=  ( \LD/S\\H\\\ AND C );
    L10 <=  ( L8 OR L9 );
    L11 <=  ( N4 AND L1 );
    L12 <=  ( \LD/S\\H\\\ AND D );
    L13 <=  ( L11 OR L12 );
    N1 <= NOT ( CLK ) AFTER 0 ns;
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>N1 );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L7 , clk=>N1 );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>N1 );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L13 , clk=>N1 );
    N6 <=  ( N2 ) AFTER 20 ns;
    N7 <=  ( N3 ) AFTER 20 ns;
    N8 <=  ( N4 ) AFTER 20 ns;
    N9 <=  ( N5 ) AFTER 20 ns;
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QA , i1=>N6 , en=>OC );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QB , i1=>N7 , en=>OC );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QC , i1=>N8 , en=>OC );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QD , i1=>N9 , en=>OC );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS295B\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
\LD/S\\H\\\ : IN  std_logic;
OC : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS295B\;

ARCHITECTURE model OF \74LS295B\ IS
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
    L1 <= NOT ( \LD/S\\H\\\ );
    L2 <=  ( L1 AND SER );
    L3 <=  ( \LD/S\\H\\\ AND A );
    L4 <=  ( L2 OR L3 );
    L5 <=  ( N2 AND L1 );
    L6 <=  ( \LD/S\\H\\\ AND B );
    L7 <=  ( L5 OR L6 );
    L8 <=  ( N3 AND L1 );
    L9 <=  ( \LD/S\\H\\\ AND C );
    L10 <=  ( L8 OR L9 );
    L11 <=  ( N4 AND L1 );
    L12 <=  ( \LD/S\\H\\\ AND D );
    L13 <=  ( L11 OR L12 );
    N1 <= NOT ( CLK ) AFTER 0 ns;
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>N1 );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L7 , clk=>N1 );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>N1 );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L13 , clk=>N1 );
    N6 <=  ( N2 ) AFTER 20 ns;
    N7 <=  ( N3 ) AFTER 20 ns;
    N8 <=  ( N4 ) AFTER 20 ns;
    N9 <=  ( N5 ) AFTER 20 ns;
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QA , i1=>N6 , en=>OC );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QB , i1=>N7 , en=>OC );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QC , i1=>N8 , en=>OC );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>26 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QD , i1=>N9 , en=>OC );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS298\ IS PORT(
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
END \74LS298\;

ARCHITECTURE model OF \74LS298\ IS
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
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QA , d=>L10 , clk=>N1 );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QB , d=>L11 , clk=>N1 );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QC , d=>L12 , clk=>N1 );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QD , d=>L13 , clk=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS299\ IS PORT(
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
END \74LS299\;

ARCHITECTURE model OF \74LS299\ IS
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
    N1 <=  ( S1 AND S0 ) AFTER 15 ns;
    N2 <=  ( S1 AND L2 ) AFTER 0 ns;
    N3 <=  ( L1 AND S0 ) AFTER 0 ns;
    N4 <=  ( L1 AND L2 ) AFTER 0 ns;
    N5 <= NOT ( S1 AND S0 ) AFTER 0 ns;
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
    DQFFC_84 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_85 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_86 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_87 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_88 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLR );
    DQFFC_89 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_90 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLR );
    DQFFC_91 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLR );
    N15 <=  ( N7 ) AFTER 10 ns;
    N16 <=  ( N8 ) AFTER 10 ns;
    N17 <=  ( N9 ) AFTER 10 ns;
    N18 <=  ( N10 ) AFTER 10 ns;
    N19 <=  ( N11 ) AFTER 10 ns;
    N20 <=  ( N12 ) AFTER 10 ns;
    N21 <=  ( N13 ) AFTER 10 ns;
    N22 <=  ( N14 ) AFTER 10 ns;
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N15 , en=>L3 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N16 , en=>L3 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N17 , en=>L3 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N18 , en=>L3 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N19 , en=>L3 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N20 , en=>L3 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N21 , en=>L3 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N22 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 25 ns;
    \Q\\H\\\ <=  ( N14 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS322\ IS PORT(
SE : IN  std_logic;
DS : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
\A/QA\ : INOUT  std_logic;
\B/QB\ : INOUT  std_logic;
\C/QC\ : INOUT  std_logic;
\D/QD\ : INOUT  std_logic;
\E/QE\ : INOUT  std_logic;
\F/QF\ : INOUT  std_logic;
\G/QG\ : INOUT  std_logic;
\H/QH\ : INOUT  std_logic;
OE : IN  std_logic;
G : IN  std_logic;
CLK : IN  std_logic;
\S/P\\\ : IN  std_logic;
CLR : IN  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS322\;

ARCHITECTURE model OF \74LS322\ IS
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
    N1 <=  ( G ) AFTER 30 ns;
    N18 <=  ( G ) AFTER 30 ns;
    L1 <= NOT ( N1 OR \S/P\\\ );
    L2 <= NOT ( N18 OR L1 );
    L3 <=  ( D1 AND L2 AND SE AND DS );
    L4 <= NOT ( DS );
    L5 <=  ( L4 AND L2 AND SE AND D0 );
    L6 <= NOT ( SE );
    L7 <=  ( L1 AND \A/QA\ );
    L8 <=  ( L6 AND L2 AND N2 );
    L9 <=  ( N1 AND N2 );
    L10 <=  ( N2 AND L2 );
    L11 <=  ( L1 AND \B/QB\ );
    L12 <=  ( N1 AND N3 );
    L13 <=  ( N3 AND L2 );
    L14 <=  ( L1 AND \C/QC\ );
    L15 <=  ( N1 AND N4 );
    L16 <=  ( N4 AND L2 );
    L17 <=  ( L1 AND \D/QD\ );
    L18 <=  ( N1 AND N5 );
    L19 <=  ( N5 AND L2 );
    L20 <=  ( L1 AND \E/QE\ );
    L21 <=  ( N1 AND N6 );
    L22 <=  ( N6 AND L2 );
    L23 <=  ( L1 AND \F/QF\ );
    L24 <=  ( N1 AND N7 );
    L25 <=  ( N7 AND L2 );
    L26 <=  ( L1 AND \G/QG\ );
    L27 <=  ( N1 AND N8 );
    L28 <=  ( N8 AND L2 );
    L29 <=  ( L1 AND \H/QH\ );
    L30 <=  ( N1 AND N9 );
    L31 <=  ( L5 OR L3 OR L7 OR L8 OR L9 );
    L32 <=  ( L10 OR L11 OR L12 );
    L33 <=  ( L13 OR L14 OR L15 );
    L34 <=  ( L16 OR L17 OR L18 );
    L35 <=  ( L19 OR L20 OR L21 );
    L36 <=  ( L22 OR L23 OR L24 );
    L37 <=  ( L25 OR L26 OR L27 );
    L38 <=  ( L28 OR L29 OR L30 );
    L39 <= NOT ( L1 OR OE );
    DQFFC_92 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>L31 , clk=>CLK , cl=>CLR );
    DQFFC_93 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L32 , clk=>CLK , cl=>CLR );
    DQFFC_94 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_95 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L34 , clk=>CLK , cl=>CLR );
    DQFFC_96 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L35 , clk=>CLK , cl=>CLR );
    DQFFC_97 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L36 , clk=>CLK , cl=>CLR );
    DQFFC_98 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L37 , clk=>CLK , cl=>CLR );
    DQFFC_99 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L38 , clk=>CLK , cl=>CLR );
    N10 <=  ( N2 ) AFTER 28 ns;
    N11 <=  ( N3 ) AFTER 28 ns;
    N12 <=  ( N4 ) AFTER 28 ns;
    N13 <=  ( N5 ) AFTER 28 ns;
    N14 <=  ( N6 ) AFTER 28 ns;
    N15 <=  ( N7 ) AFTER 28 ns;
    N16 <=  ( N8 ) AFTER 28 ns;
    N17 <=  ( N9 ) AFTER 28 ns;
    \Q\\H\\\ <=  ( N9 ) AFTER 30 ns;
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N10 , en=>L39 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N11 , en=>L39 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N12 , en=>L39 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N13 , en=>L39 );
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N14 , en=>L39 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N15 , en=>L39 );
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N16 , en=>L39 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N17 , en=>L39 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS322A\ IS PORT(
SE : IN  std_logic;
DS : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
\A/QA\ : INOUT  std_logic;
\B/QB\ : INOUT  std_logic;
\C/QC\ : INOUT  std_logic;
\D/QD\ : INOUT  std_logic;
\E/QE\ : INOUT  std_logic;
\F/QF\ : INOUT  std_logic;
\G/QG\ : INOUT  std_logic;
\H/QH\ : INOUT  std_logic;
OE : IN  std_logic;
G : IN  std_logic;
CLK : IN  std_logic;
\S/P\\\ : IN  std_logic;
CLR : IN  std_logic;
\Q\\H\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS322A\;

ARCHITECTURE model OF \74LS322A\ IS
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
    N1 <=  ( G ) AFTER 30 ns;
    N18 <=  ( G ) AFTER 30 ns;
    L1 <= NOT ( N1 OR \S/P\\\ );
    L2 <= NOT ( N18 OR L1 );
    L3 <=  ( D1 AND L2 AND SE AND DS );
    L4 <= NOT ( DS );
    L5 <=  ( L4 AND L2 AND SE AND D0 );
    L6 <= NOT ( SE );
    L7 <=  ( L1 AND \A/QA\ );
    L8 <=  ( L6 AND L2 AND N2 );
    L9 <=  ( N1 AND N2 );
    L10 <=  ( N2 AND L2 );
    L11 <=  ( L1 AND \B/QB\ );
    L12 <=  ( N1 AND N3 );
    L13 <=  ( N3 AND L2 );
    L14 <=  ( L1 AND \C/QC\ );
    L15 <=  ( N1 AND N4 );
    L16 <=  ( N4 AND L2 );
    L17 <=  ( L1 AND \D/QD\ );
    L18 <=  ( N1 AND N5 );
    L19 <=  ( N5 AND L2 );
    L20 <=  ( L1 AND \E/QE\ );
    L21 <=  ( N1 AND N6 );
    L22 <=  ( N6 AND L2 );
    L23 <=  ( L1 AND \F/QF\ );
    L24 <=  ( N1 AND N7 );
    L25 <=  ( N7 AND L2 );
    L26 <=  ( L1 AND \G/QG\ );
    L27 <=  ( N1 AND N8 );
    L28 <=  ( N8 AND L2 );
    L29 <=  ( L1 AND \H/QH\ );
    L30 <=  ( N1 AND N9 );
    L31 <=  ( L5 OR L3 OR L7 OR L8 OR L9 );
    L32 <=  ( L10 OR L11 OR L12 );
    L33 <=  ( L13 OR L14 OR L15 );
    L34 <=  ( L16 OR L17 OR L18 );
    L35 <=  ( L19 OR L20 OR L21 );
    L36 <=  ( L22 OR L23 OR L24 );
    L37 <=  ( L25 OR L26 OR L27 );
    L38 <=  ( L28 OR L29 OR L30 );
    L39 <= NOT ( L1 OR OE );
    DQFFC_100 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>L31 , clk=>CLK , cl=>CLR );
    DQFFC_101 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L32 , clk=>CLK , cl=>CLR );
    DQFFC_102 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_103 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L34 , clk=>CLK , cl=>CLR );
    DQFFC_104 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L35 , clk=>CLK , cl=>CLR );
    DQFFC_105 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L36 , clk=>CLK , cl=>CLR );
    DQFFC_106 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L37 , clk=>CLK , cl=>CLR );
    DQFFC_107 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L38 , clk=>CLK , cl=>CLR );
    N10 <=  ( N2 ) AFTER 28 ns;
    N11 <=  ( N3 ) AFTER 28 ns;
    N12 <=  ( N4 ) AFTER 28 ns;
    N13 <=  ( N5 ) AFTER 28 ns;
    N14 <=  ( N6 ) AFTER 28 ns;
    N15 <=  ( N7 ) AFTER 28 ns;
    N16 <=  ( N8 ) AFTER 28 ns;
    N17 <=  ( N9 ) AFTER 28 ns;
    \Q\\H\\\ <=  ( N9 ) AFTER 30 ns;
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N10 , en=>L39 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N11 , en=>L39 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N12 , en=>L39 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N13 , en=>L39 );
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N14 , en=>L39 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N15 , en=>L39 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N16 , en=>L39 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N17 , en=>L39 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS323\ IS PORT(
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
END \74LS323\;

ARCHITECTURE model OF \74LS323\ IS
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
    SIGNAL N23 : std_logic;

    BEGIN
    L1 <= NOT ( S1 );
    L2 <= NOT ( S0 );
    N15 <=  ( CLR ) AFTER 0 ns;
    N1 <=  ( S1 AND S0 AND N15 ) AFTER 15 ns;
    N2 <=  ( S1 AND L2 AND N15 ) AFTER 15 ns;
    N3 <=  ( L1 AND S0 AND N15 ) AFTER 15 ns;
    N4 <=  ( L1 AND L2 AND N15 ) AFTER 15 ns;
    N5 <= NOT ( S1 AND S0 ) AFTER 0 ns;
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
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK );
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK );
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK );
    N16 <=  ( N7 ) AFTER 29 ns;
    N17 <=  ( N8 ) AFTER 29 ns;
    N18 <=  ( N9 ) AFTER 29 ns;
    N19 <=  ( N10 ) AFTER 29 ns;
    N20 <=  ( N11 ) AFTER 29 ns;
    N21 <=  ( N12 ) AFTER 29 ns;
    N22 <=  ( N13 ) AFTER 29 ns;
    N23 <=  ( N14 ) AFTER 29 ns;
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N7 , en=>L3 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N8 , en=>L3 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N9 , en=>L3 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N10 , en=>L3 );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N11 , en=>L3 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N12 , en=>L3 );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N13 , en=>L3 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N14 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 34 ns;
    \Q\\H\\\ <=  ( N14 ) AFTER 34 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS348\ IS PORT(
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
E0 : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS348\;

ARCHITECTURE model OF \74LS348\ IS
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
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;
    SIGNAL N21 : std_logic;
    SIGNAL N22 : std_logic;
    SIGNAL N23 : std_logic;
    SIGNAL N24 : std_logic;

    BEGIN
    N1 <=  ( \1\ ) AFTER 35 ns;
    N2 <=  ( \2\ ) AFTER 35 ns;
    N3 <=  ( \3\ ) AFTER 35 ns;
    N4 <=  ( \4\ ) AFTER 35 ns;
    N5 <=  ( \5\ ) AFTER 35 ns;
    N6 <=  ( \6\ ) AFTER 35 ns;
    N7 <=  ( \7\ ) AFTER 35 ns;
    N8 <=  ( \1\ ) AFTER 45 ns;
    N9 <=  ( \2\ ) AFTER 45 ns;
    N10 <=  ( \3\ ) AFTER 45 ns;
    N11 <=  ( \4\ ) AFTER 45 ns;
    N12 <=  ( \5\ ) AFTER 45 ns;
    N13 <=  ( \6\ ) AFTER 45 ns;
    N14 <=  ( \7\ ) AFTER 45 ns;
    N15 <=  ( \0\ ) AFTER 35 ns;
    N16 <=  ( \0\ ) AFTER 45 ns;
    L1 <= NOT ( EI );
    L2 <= NOT ( \1\ );
    L3 <= NOT ( \2\ );
    L4 <= NOT ( \3\ );
    L5 <= NOT ( \4\ );
    L6 <= NOT ( \5\ );
    L7 <= NOT ( \6\ );
    L8 <= NOT ( \7\ );
    L18 <=  ( N17 AND N24 );
    L9 <=  ( L2 AND \2\ AND \4\ AND \6\ AND L18 );
    L10 <=  ( L4 AND \4\ AND \6\ AND L18 );
    L11 <=  ( L6 AND \6\ AND L18 );
    L12 <=  ( L8 AND L18 );
    L13 <=  ( L3 AND \4\ AND \5\ AND L18 );
    L14 <=  ( L4 AND \4\ AND \5\ AND L18 );
    L15 <=  ( L7 AND L18 );
    L16 <=  ( L5 AND L18 );
    L17 <=  ( L6 AND L18 );
    N17 <=  ( L1 ) AFTER 16 ns;
    N18 <=  ( L1 ) AFTER 35 ns;
    N23 <=  ( L1 ) AFTER 31 ns;
    N24 <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N15 AND N18 ) AFTER 5 ns;
    E0 <= N24;
    N19 <= NOT ( N8 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N16 AND N17 ) AFTER 5 ns;
    GS <= NOT ( N19 AND N23 ) AFTER 5 ns;
    N20 <= NOT ( L9 OR L10 OR L11 OR L12 ) AFTER 25 ns;
    N21 <= NOT ( L13 OR L14 OR L15 OR L12 ) AFTER 25 ns;
    N22 <= NOT ( L16 OR L17 OR L15 OR L12 ) AFTER 25 ns;
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>41 ns, tfall_i1_o=>39 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>A0 , i1=>N20 , en=>L18 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>41 ns, tfall_i1_o=>39 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L18 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>41 ns, tfall_i1_o=>39 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L18 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS352\ IS PORT(
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
END \74LS352\;

ARCHITECTURE model OF \74LS352\ IS
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
    N3 <= NOT ( B ) AFTER 12 ns;
    N4 <= NOT ( A ) AFTER 12 ns;
    N5 <=  ( B ) AFTER 12 ns;
    N6 <=  ( A ) AFTER 12 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 26 ns;
    \2Y\ <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 26 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS353\ IS PORT(
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
END \74LS353\;

ARCHITECTURE model OF \74LS353\ IS
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
    N1 <= NOT ( B ) AFTER 20 ns;
    N2 <= NOT ( A ) AFTER 20 ns;
    N3 <=  ( B ) AFTER 20 ns;
    N4 <=  ( A ) AFTER 20 ns;
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
    N5 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 25 ns;
    N6 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 25 ns;
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\1Y\ , i1=>N5 , en=>L1 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>23 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>\2Y\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS354\ IS PORT(
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
END \74LS354\;

ARCHITECTURE model OF \74LS354\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( G3 );
    L3 <= NOT ( G1 OR G2 OR L1 );
    N14 <= NOT ( SC ) AFTER 5 ns;
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N1 , d=>S0 , enable=>N14 );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N2 , d=>S1 , enable=>N14 );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N3 , d=>S2 , enable=>N14 );
    L4 <= NOT ( N1 );
    L5 <= NOT ( N2 );
    L6 <= NOT ( N3 );
    N15 <= NOT ( DC ) AFTER 7 ns;
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D0 , enable=>N15 );
    DLATCH_19 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D1 , enable=>N15 );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D2 , enable=>N15 );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D3 , enable=>N15 );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D4 , enable=>N15 );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>D5 , enable=>N15 );
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>D6 , enable=>N15 );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>D7 , enable=>N15 );
    L8 <=  ( L4 AND L5 AND L6 AND N4 );
    L9 <=  ( N1 AND L5 AND L6 AND N5 );
    L10 <=  ( L4 AND N2 AND L6 AND N6 );
    L11 <=  ( N1 AND N2 AND L6 AND N7 );
    L12 <=  ( L4 AND L5 AND N3 AND N8 );
    L13 <=  ( N1 AND L5 AND N3 AND N9 );
    L14 <=  ( L4 AND N2 AND N3 AND N10 );
    L15 <=  ( N1 AND N2 AND N3 AND N11 );
    N16 <= NOT ( L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 ) AFTER 15 ns;
    N12 <= NOT ( N16 ) AFTER 11 ns;
    N13 <=  ( N16 ) AFTER 19 ns;
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>29 ns, tfall_i1_o=>29 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y , i1=>N12 , en=>L3 );
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>29 ns, tfall_i1_o=>29 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>W , i1=>N13 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS355\ IS PORT(
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
END \74LS355\;

ARCHITECTURE model OF \74LS355\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    N14 <= NOT ( G3 ) AFTER 7 ns;
    L1 <= NOT ( SC );
    N15 <=  ( G1 OR G2 OR N14 ) AFTER 24 ns;
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N1 , d=>S0 , enable=>L1 );
    DLATCH_27 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N2 , d=>S1 , enable=>L1 );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N3 , d=>S2 , enable=>L1 );
    L4 <= NOT ( N1 );
    L5 <= NOT ( N2 );
    L6 <= NOT ( N3 );
    L7 <= NOT ( DC );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D0 , enable=>L7 );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D1 , enable=>L7 );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D2 , enable=>L7 );
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D3 , enable=>L7 );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D4 , enable=>L7 );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>D5 , enable=>L7 );
    DLATCH_35 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>D6 , enable=>L7 );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>D7 , enable=>L7 );
    L8 <=  ( L4 AND L5 AND L6 AND N4 );
    L9 <=  ( N1 AND L5 AND L6 AND N5 );
    L10 <=  ( L4 AND N2 AND L6 AND N6 );
    L11 <=  ( N1 AND N2 AND L6 AND N7 );
    L12 <=  ( L4 AND L5 AND N3 AND N8 );
    L13 <=  ( N1 AND L5 AND N3 AND N9 );
    L14 <=  ( L4 AND N2 AND N3 AND N10 );
    L15 <=  ( N1 AND N2 AND N3 AND N11 );
    N16 <= NOT ( L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 ) AFTER 10 ns;
    N12 <= NOT ( N16 ) AFTER 10 ns;
    N13 <=  ( N16 ) AFTER 21 ns;
    Y <=  ( N12 OR N15 ) AFTER 6 ns;
    W <=  ( N13 OR N15 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS356\ IS PORT(
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
END \74LS356\;

ARCHITECTURE model OF \74LS356\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;

    BEGIN
    L1 <= NOT ( G3 );
    L3 <= NOT ( G1 OR G2 OR L1 );
    N14 <= NOT ( SC ) AFTER 9 ns;
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N1 , d=>S0 , enable=>N14 );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N2 , d=>S1 , enable=>N14 );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N3 , d=>S2 , enable=>N14 );
    L4 <= NOT ( N1 );
    L5 <= NOT ( N2 );
    L6 <= NOT ( N3 );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D0 , clk=>CLK );
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D1 , clk=>CLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D2 , clk=>CLK );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D3 , clk=>CLK );
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D4 , clk=>CLK );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>D5 , clk=>CLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>D6 , clk=>CLK );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>D7 , clk=>CLK );
    L8 <=  ( L4 AND L5 AND L6 AND N4 );
    L9 <=  ( N1 AND L5 AND L6 AND N5 );
    L10 <=  ( L4 AND N2 AND L6 AND N6 );
    L11 <=  ( N1 AND N2 AND L6 AND N7 );
    L12 <=  ( L4 AND L5 AND N3 AND N8 );
    L13 <=  ( N1 AND L5 AND N3 AND N9 );
    L14 <=  ( L4 AND N2 AND N3 AND N10 );
    L15 <=  ( N1 AND N2 AND N3 AND N11 );
    N15 <= NOT ( L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 ) AFTER 15 ns;
    N12 <= NOT ( N15 ) AFTER 25 ns;
    N13 <=  ( N15 ) AFTER 11 ns;
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>27 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y , i1=>N12 , en=>L3 );
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>27 ns, tfall_i1_o=>27 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>W , i1=>N13 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS357\ IS PORT(
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
END \74LS357\;

ARCHITECTURE model OF \74LS357\ IS
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
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;

    BEGIN
    L1 <= NOT ( G3 );
    L2 <= NOT ( SC );
    L3 <=  ( G1 OR G2 OR L1 );
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N1 , d=>S0 , enable=>L2 );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N2 , d=>S1 , enable=>L2 );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N3 , d=>S2 , enable=>L2 );
    L4 <= NOT ( N1 );
    L5 <= NOT ( N2 );
    L6 <= NOT ( N3 );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D0 , clk=>CLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D1 , clk=>CLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D2 , clk=>CLK );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D3 , clk=>CLK );
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D4 , clk=>CLK );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>D5 , clk=>CLK );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>D6 , clk=>CLK );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>D7 , clk=>CLK );
    L8 <=  ( L4 AND L5 AND L6 AND N4 );
    L9 <=  ( N1 AND L5 AND L6 AND N5 );
    L10 <=  ( L4 AND N2 AND L6 AND N6 );
    L11 <=  ( N1 AND N2 AND L6 AND N7 );
    L12 <=  ( L4 AND L5 AND N3 AND N8 );
    L13 <=  ( N1 AND L5 AND N3 AND N9 );
    L14 <=  ( L4 AND N2 AND N3 AND N10 );
    L15 <=  ( N1 AND N2 AND N3 AND N11 );
    N14 <= NOT ( L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 ) AFTER 10 ns;
    N12 <= NOT ( N14 ) AFTER 20 ns;
    N13 <=  ( N14 ) AFTER 17 ns;
    Y <=  ( N12 OR L3 ) AFTER 6 ns;
    W <=  ( N13 OR L3 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS365\ IS PORT(
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
END \74LS365\;

ARCHITECTURE model OF \74LS365\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 17 ns;
    N2 <=  ( A2 ) AFTER 17 ns;
    N3 <=  ( A3 ) AFTER 17 ns;
    N4 <=  ( A4 ) AFTER 17 ns;
    N5 <=  ( A5 ) AFTER 17 ns;
    N6 <=  ( A6 ) AFTER 17 ns;
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS365A\ IS PORT(
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
END \74LS365A\;

ARCHITECTURE model OF \74LS365A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <=  ( A1 ) AFTER 17 ns;
    N2 <=  ( A2 ) AFTER 17 ns;
    N3 <=  ( A3 ) AFTER 17 ns;
    N4 <=  ( A4 ) AFTER 17 ns;
    N5 <=  ( A5 ) AFTER 17 ns;
    N6 <=  ( A6 ) AFTER 17 ns;
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS366\ IS PORT(
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
END \74LS366\;

ARCHITECTURE model OF \74LS366\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <= NOT ( A1 ) AFTER 13 ns;
    N2 <= NOT ( A2 ) AFTER 13 ns;
    N3 <= NOT ( A3 ) AFTER 13 ns;
    N4 <= NOT ( A4 ) AFTER 13 ns;
    N5 <= NOT ( A5 ) AFTER 13 ns;
    N6 <= NOT ( A6 ) AFTER 13 ns;
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS366A\ IS PORT(
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
END \74LS366A\;

ARCHITECTURE model OF \74LS366A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT ( G1 OR G2 );
    N1 <= NOT ( A1 ) AFTER 13 ns;
    N2 <= NOT ( A2 ) AFTER 13 ns;
    N3 <= NOT ( A3 ) AFTER 13 ns;
    N4 <= NOT ( A4 ) AFTER 13 ns;
    N5 <= NOT ( A5 ) AFTER 13 ns;
    N6 <= NOT ( A6 ) AFTER 13 ns;
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS367\ IS PORT(
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
END \74LS367\;

ARCHITECTURE model OF \74LS367\ IS
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
    N1 <=  ( \1A1\ ) AFTER 17 ns;
    N2 <=  ( \1A2\ ) AFTER 17 ns;
    N3 <=  ( \1A3\ ) AFTER 17 ns;
    N4 <=  ( \1A4\ ) AFTER 17 ns;
    N5 <=  ( \2A1\ ) AFTER 17 ns;
    N6 <=  ( \2A2\ ) AFTER 17 ns;
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS367A\ IS PORT(
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
END \74LS367A\;

ARCHITECTURE model OF \74LS367A\ IS
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
    N1 <=  ( \1A1\ ) AFTER 17 ns;
    N2 <=  ( \1A2\ ) AFTER 17 ns;
    N3 <=  ( \1A3\ ) AFTER 17 ns;
    N4 <=  ( \1A4\ ) AFTER 17 ns;
    N5 <=  ( \2A1\ ) AFTER 17 ns;
    N6 <=  ( \2A2\ ) AFTER 17 ns;
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS368\ IS PORT(
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
END \74LS368\;

ARCHITECTURE model OF \74LS368\ IS
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
    N1 <= NOT ( \1A1\ ) AFTER 13 ns;
    N2 <= NOT ( \1A2\ ) AFTER 13 ns;
    N3 <= NOT ( \1A3\ ) AFTER 13 ns;
    N4 <= NOT ( \1A4\ ) AFTER 13 ns;
    N5 <= NOT ( \2A1\ ) AFTER 13 ns;
    N6 <= NOT ( \2A2\ ) AFTER 13 ns;
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS368A\ IS PORT(
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
END \74LS368A\;

ARCHITECTURE model OF \74LS368A\ IS
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
    N1 <= NOT ( \1A1\ ) AFTER 13 ns;
    N2 <= NOT ( \1A2\ ) AFTER 13 ns;
    N3 <= NOT ( \1A3\ ) AFTER 13 ns;
    N4 <= NOT ( \1A4\ ) AFTER 13 ns;
    N5 <= NOT ( \2A1\ ) AFTER 13 ns;
    N6 <= NOT ( \2A2\ ) AFTER 13 ns;
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>35 ns, tpd_en_o=>35 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS373\ IS PORT(
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
END \74LS373\;

ARCHITECTURE model OF \74LS373\ IS
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
    DLATCH_43 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_44 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_45 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_46 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_47 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_48 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_49 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_50 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>36 ns, tfall_i1_o=>28 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS374\ IS PORT(
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
END \74LS374\;

ARCHITECTURE model OF \74LS374\ IS
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
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>28 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>28 ns, tfall_i1_o=>28 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS375\ IS PORT(
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
END \74LS375\;

ARCHITECTURE model OF \74LS375\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT ( \1D\ );
    L2 <= NOT ( \2D\ );
    L3 <= NOT ( \3D\ );
    L4 <= NOT ( \4D\ );
    DLATCH_51 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\1\\Q\\\ , d=>L1 , enable=>\1C2C\ );
    DLATCH_52 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\2\\Q\\\ , d=>L2 , enable=>\1C2C\ );
    DLATCH_53 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\3\\Q\\\ , d=>L3 , enable=>\3C4C\ );
    DLATCH_54 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>\4\\Q\\\ , d=>L4 , enable=>\3C4C\ );
    DLATCH_55 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>\1Q\ , d=>\1D\ , enable=>\1C2C\ );
    DLATCH_56 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>\2Q\ , d=>\2D\ , enable=>\1C2C\ );
    DLATCH_57 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>\3Q\ , d=>\3D\ , enable=>\3C4C\ );
    DLATCH_58 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>17 ns)
      PORT MAP  (q=>\4Q\ , d=>\4D\ , enable=>\3C4C\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS377\ IS PORT(
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
END \74LS377\;

ARCHITECTURE model OF \74LS377\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 5 ns;
    N2 <=  ( N1 AND CLK ) AFTER 0 ns;
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N2 );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N2 );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N2 );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N2 );
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N2 );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N2 );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>N2 );
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS378\ IS PORT(
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
END \74LS378\;

ARCHITECTURE model OF \74LS378\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 25 ns;
    N2 <=  ( N1 AND CLK ) AFTER 0 ns;
    DQFF_95 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N2 );
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N2 );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N2 );
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N2 );
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N2 );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS379\ IS PORT(
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
END \74LS379\;

ARCHITECTURE model OF \74LS379\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 25 ns;
    N2 <=  ( N1 AND CLK ) AFTER 0 ns;
    DFF_1 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>N2 );
    DFF_2 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>N2 );
    DFF_3 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>N2 );
    DFF_4 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>N2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS381\ IS PORT(
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
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
G : OUT  std_logic;
P : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS381\;

ARCHITECTURE model OF \74LS381\ IS
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( S2 );
    L4 <=  ( L3 AND L2 AND S0 );
    L5 <=  ( L3 AND S1 AND L1 );
    L6 <=  ( S2 AND S1 AND S0 );
    L7 <=  ( L2 AND S0 );
    L8 <=  ( S2 AND S0 );
    L9 <=  ( S1 AND L1 );
    L10 <=  ( S1 AND S0 );
    L11 <=  ( S2 AND L2 );
    L12 <=  ( L3 AND S0 );
    L13 <=  ( L3 AND S1 );
    L14 <= NOT ( A0 );
    L15 <= NOT ( B0 );
    L16 <= NOT ( A1 );
    L17 <= NOT ( B1 );
    L18 <= NOT ( A2 );
    L19 <= NOT ( B2 );
    L20 <= NOT ( A3 );
    L21 <= NOT ( B3 );
    L22 <=  ( N3 AND A0 AND L15 );
    L23 <=  ( N2 AND A0 AND B0 );
    L24 <=  ( N3 AND L14 AND B0 );
    L25 <=  ( N1 AND L14 AND L15 );
    L26 <=  ( N6 AND A0 AND L15 );
    L27 <=  ( N5 AND A0 AND B0 );
    L28 <=  ( N4 AND L14 AND B0 );
    L29 <=  ( L14 AND L15 );
    L30 <=  ( N3 AND A1 AND L17 );
    L31 <=  ( N2 AND A1 AND B1 );
    L32 <=  ( N3 AND L16 AND B1 );
    L33 <=  ( N1 AND L16 AND L17 );
    L34 <=  ( N6 AND A1 AND L17 );
    L35 <=  ( N5 AND A1 AND B1 );
    L36 <=  ( N4 AND L16 AND B1 );
    L37 <=  ( L16 AND L17 );
    L38 <=  ( N3 AND A2 AND L19 );
    L39 <=  ( N2 AND A2 AND B2 );
    L40 <=  ( N3 AND L18 AND B2 );
    L41 <=  ( N1 AND L18 AND L19 );
    L42 <=  ( N6 AND A2 AND L19 );
    L43 <=  ( N5 AND A2 AND B2 );
    L44 <=  ( N4 AND L18 AND B2 );
    L45 <=  ( L18 AND L19 );
    L46 <=  ( N3 AND A3 AND L21 );
    L47 <=  ( N2 AND A3 AND B3 );
    L48 <=  ( N3 AND L20 AND B3 );
    L49 <=  ( N1 AND L20 AND L21 );
    L50 <=  ( N6 AND A3 AND L21 );
    L51 <=  ( N5 AND A3 AND B3 );
    L52 <=  ( N4 AND L20 AND B3 );
    L53 <=  ( L20 AND L21 );
    L54 <= NOT ( N7 AND CN );
    L55 <=  ( N7 AND CN AND N8 );
    L56 <=  ( N7 AND N9 );
    L57 <=  ( N7 AND CN AND N8 AND N10 );
    L58 <=  ( N7 AND N10 AND N9 );
    L59 <=  ( N7 AND N11 );
    L60 <=  ( N7 AND CN AND N8 AND N10 AND N12 );
    L61 <=  ( N7 AND N10 AND N12 AND N9 );
    L62 <=  ( N11 AND N12 AND N7 );
    L63 <=  ( N7 AND N13 );
    L64 <=  ( N10 AND N12 AND N14 AND N9 );
    L65 <=  ( N12 AND N14 AND N11 );
    L66 <=  ( N14 AND N13 );
    L67 <= NOT ( L55 OR L56 );
    L68 <= NOT ( L57 OR L58 OR L59 );
    L69 <= NOT ( L60 OR L61 OR L62 OR L63 );
    N1 <= NOT ( L4 OR L5 OR L6 ) AFTER 20 ns;
    N2 <= NOT ( L7 OR L8 OR L9 ) AFTER 20 ns;
    N3 <= NOT ( L10 OR L11 ) AFTER 20 ns;
    N4 <= NOT ( L4 ) AFTER 20 ns;
    N5 <= NOT ( L3 AND S1 AND S0 ) AFTER 20 ns;
    N6 <= NOT ( L5 ) AFTER 20 ns;
    N7 <=  ( L12 OR L13 ) AFTER 20 ns;
    N8 <= NOT ( L22 OR L23 OR L24 OR L25 ) AFTER 3 ns;
    N9 <= NOT ( L26 OR L27 OR L28 OR L29 ) AFTER 3 ns;
    N10 <= NOT ( L30 OR L31 OR L32 OR L33 ) AFTER 3 ns;
    N11 <= NOT ( L34 OR L35 OR L36 OR L37 ) AFTER 3 ns;
    N12 <= NOT ( L38 OR L39 OR L40 OR L41 ) AFTER 3 ns;
    N13 <= NOT ( L42 OR L43 OR L44 OR L45 ) AFTER 3 ns;
    N14 <= NOT ( L46 OR L47 OR L48 OR L49 ) AFTER 3 ns;
    N15 <= NOT ( L50 OR L51 OR L52 OR L53 ) AFTER 3 ns;
    F0 <= NOT ( N8 XOR L54 ) AFTER 27 ns;
    F1 <= NOT ( N10 XOR L67 ) AFTER 27 ns;
    F2 <= NOT ( N12 XOR L68 ) AFTER 27 ns;
    F3 <= NOT ( N14 XOR L69 ) AFTER 27 ns;
    P <= NOT ( N8 AND N10 AND N12 AND N14 ) AFTER 30 ns;
    G <= NOT ( L64 OR L65 OR L66 OR N15 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS381A\ IS PORT(
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
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
G : OUT  std_logic;
P : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS381A\;

ARCHITECTURE model OF \74LS381A\ IS
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( S2 );
    L4 <=  ( L3 AND L2 AND S0 );
    L5 <=  ( L3 AND S1 AND L1 );
    L6 <=  ( S2 AND S1 AND S0 );
    L7 <=  ( L2 AND S0 );
    L8 <=  ( S2 AND S0 );
    L9 <=  ( S1 AND L1 );
    L10 <=  ( S1 AND S0 );
    L11 <=  ( S2 AND L2 );
    L12 <=  ( L3 AND S0 );
    L13 <=  ( L3 AND S1 );
    L14 <= NOT ( A0 );
    L15 <= NOT ( B0 );
    L16 <= NOT ( A1 );
    L17 <= NOT ( B1 );
    L18 <= NOT ( A2 );
    L19 <= NOT ( B2 );
    L20 <= NOT ( A3 );
    L21 <= NOT ( B3 );
    L22 <=  ( N3 AND A0 AND L15 );
    L23 <=  ( N2 AND A0 AND B0 );
    L24 <=  ( N3 AND L14 AND B0 );
    L25 <=  ( N1 AND L14 AND L15 );
    L26 <=  ( N6 AND A0 AND L15 );
    L27 <=  ( N5 AND A0 AND B0 );
    L28 <=  ( N4 AND L14 AND B0 );
    L29 <=  ( L14 AND L15 );
    L30 <=  ( N3 AND A1 AND L17 );
    L31 <=  ( N2 AND A1 AND B1 );
    L32 <=  ( N3 AND L16 AND B1 );
    L33 <=  ( N1 AND L16 AND L17 );
    L34 <=  ( N6 AND A1 AND L17 );
    L35 <=  ( N5 AND A1 AND B1 );
    L36 <=  ( N4 AND L16 AND B1 );
    L37 <=  ( L16 AND L17 );
    L38 <=  ( N3 AND A2 AND L19 );
    L39 <=  ( N2 AND A2 AND B2 );
    L40 <=  ( N3 AND L18 AND B2 );
    L41 <=  ( N1 AND L18 AND L19 );
    L42 <=  ( N6 AND A2 AND L19 );
    L43 <=  ( N5 AND A2 AND B2 );
    L44 <=  ( N4 AND L18 AND B2 );
    L45 <=  ( L18 AND L19 );
    L46 <=  ( N3 AND A3 AND L21 );
    L47 <=  ( N2 AND A3 AND B3 );
    L48 <=  ( N3 AND L20 AND B3 );
    L49 <=  ( N1 AND L20 AND L21 );
    L50 <=  ( N6 AND A3 AND L21 );
    L51 <=  ( N5 AND A3 AND B3 );
    L52 <=  ( N4 AND L20 AND B3 );
    L53 <=  ( L20 AND L21 );
    L54 <= NOT ( N7 AND CN );
    L55 <=  ( N7 AND CN AND N8 );
    L56 <=  ( N7 AND N9 );
    L57 <=  ( N7 AND CN AND N8 AND N10 );
    L58 <=  ( N7 AND N10 AND N9 );
    L59 <=  ( N7 AND N11 );
    L60 <=  ( N7 AND CN AND N8 AND N10 AND N12 );
    L61 <=  ( N7 AND N10 AND N12 AND N9 );
    L62 <=  ( N11 AND N12 AND N7 );
    L63 <=  ( N7 AND N13 );
    L64 <=  ( N10 AND N12 AND N14 AND N9 );
    L65 <=  ( N12 AND N14 AND N11 );
    L66 <=  ( N14 AND N13 );
    L67 <= NOT ( L55 OR L56 );
    L68 <= NOT ( L57 OR L58 OR L59 );
    L69 <= NOT ( L60 OR L61 OR L62 OR L63 );
    N1 <= NOT ( L4 OR L5 OR L6 ) AFTER 20 ns;
    N2 <= NOT ( L7 OR L8 OR L9 ) AFTER 20 ns;
    N3 <= NOT ( L10 OR L11 ) AFTER 20 ns;
    N4 <= NOT ( L4 ) AFTER 20 ns;
    N5 <= NOT ( L3 AND S1 AND S0 ) AFTER 20 ns;
    N6 <= NOT ( L5 ) AFTER 20 ns;
    N7 <=  ( L12 OR L13 ) AFTER 20 ns;
    N8 <= NOT ( L22 OR L23 OR L24 OR L25 ) AFTER 3 ns;
    N9 <= NOT ( L26 OR L27 OR L28 OR L29 ) AFTER 3 ns;
    N10 <= NOT ( L30 OR L31 OR L32 OR L33 ) AFTER 3 ns;
    N11 <= NOT ( L34 OR L35 OR L36 OR L37 ) AFTER 3 ns;
    N12 <= NOT ( L38 OR L39 OR L40 OR L41 ) AFTER 3 ns;
    N13 <= NOT ( L42 OR L43 OR L44 OR L45 ) AFTER 3 ns;
    N14 <= NOT ( L46 OR L47 OR L48 OR L49 ) AFTER 3 ns;
    N15 <= NOT ( L50 OR L51 OR L52 OR L53 ) AFTER 3 ns;
    F0 <= NOT ( N8 XOR L54 ) AFTER 27 ns;
    F1 <= NOT ( N10 XOR L67 ) AFTER 27 ns;
    F2 <= NOT ( N12 XOR L68 ) AFTER 27 ns;
    F3 <= NOT ( N14 XOR L69 ) AFTER 27 ns;
    P <= NOT ( N8 AND N10 AND N12 AND N14 ) AFTER 30 ns;
    G <= NOT ( L64 OR L65 OR L66 OR N15 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS382\ IS PORT(
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
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
OVR : OUT  std_logic;
\CN+4\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS382\;

ARCHITECTURE model OF \74LS382\ IS
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( S2 );
    L4 <=  ( L3 AND L2 AND S0 );
    L5 <=  ( L3 AND S1 AND L1 );
    L6 <=  ( S2 AND S1 AND S0 );
    L7 <=  ( L2 AND S0 );
    L8 <=  ( S2 AND S0 );
    L9 <=  ( S1 AND L1 );
    L10 <=  ( S1 AND S0 );
    L11 <=  ( S2 AND L2 );
    L12 <=  ( L3 AND S0 );
    L13 <=  ( L3 AND S1 );
    L14 <= NOT ( A0 );
    L15 <= NOT ( B0 );
    L16 <= NOT ( A1 );
    L17 <= NOT ( B1 );
    L18 <= NOT ( A2 );
    L19 <= NOT ( B2 );
    L20 <= NOT ( A3 );
    L21 <= NOT ( B3 );
    L22 <=  ( N3 AND A0 AND L15 );
    L23 <=  ( N2 AND A0 AND B0 );
    L24 <=  ( N3 AND L14 AND B0 );
    L25 <=  ( N1 AND L14 AND L15 );
    L26 <=  ( N6 AND A0 AND L15 );
    L27 <=  ( N5 AND A0 AND B0 );
    L28 <=  ( N4 AND L14 AND B0 );
    L29 <=  ( L14 AND L15 );
    L30 <=  ( N3 AND A1 AND L17 );
    L31 <=  ( N2 AND A1 AND B1 );
    L32 <=  ( N3 AND L16 AND B1 );
    L33 <=  ( N1 AND L16 AND L17 );
    L34 <=  ( N6 AND A1 AND L17 );
    L35 <=  ( N5 AND A1 AND B1 );
    L36 <=  ( N4 AND L16 AND B1 );
    L37 <=  ( L16 AND L17 );
    L38 <=  ( N3 AND A2 AND L19 );
    L39 <=  ( N2 AND A2 AND B2 );
    L40 <=  ( N3 AND L18 AND B2 );
    L41 <=  ( N1 AND L18 AND L19 );
    L42 <=  ( N6 AND A2 AND L19 );
    L43 <=  ( N5 AND A2 AND B2 );
    L44 <=  ( N4 AND L18 AND B2 );
    L45 <=  ( L18 AND L19 );
    L46 <=  ( N3 AND A3 AND L21 );
    L47 <=  ( N2 AND A3 AND B3 );
    L48 <=  ( N3 AND L20 AND B3 );
    L49 <=  ( N1 AND L20 AND L21 );
    L50 <=  ( N6 AND A3 AND L21 );
    L51 <=  ( N5 AND A3 AND B3 );
    L52 <=  ( N4 AND L20 AND B3 );
    L53 <=  ( L20 AND L21 );
    L54 <= NOT ( N7 AND N16 );
    L55 <=  ( N7 AND N16 AND N8 );
    L56 <=  ( N7 AND N9 );
    L57 <=  ( N7 AND N16 AND N8 AND N10 );
    L58 <=  ( N7 AND N10 AND N9 );
    L59 <=  ( N7 AND N11 );
    L60 <=  ( N7 AND N16 AND N8 AND N10 AND N12 );
    L61 <=  ( N7 AND N10 AND N12 AND N9 );
    L62 <=  ( N11 AND N12 AND N7 );
    L63 <=  ( N7 AND N13 );
    L64 <=  ( CN AND N8 AND N10 AND N12 AND N14 );
    L65 <=  ( N10 AND N12 AND N14 AND N9 );
    L66 <=  ( N12 AND N14 AND N11 );
    L67 <=  ( N14 AND N13 );
    L68 <= NOT ( L55 OR L56 );
    L69 <= NOT ( L57 OR L58 OR L59 );
    L70 <= NOT ( L60 OR L61 OR L62 OR L63 );
    L71 <= NOT ( L64 OR L65 OR L66 OR L67 OR N15 );
    N1 <= NOT ( L4 OR L5 OR L6 ) AFTER 15 ns;
    N2 <= NOT ( L7 OR L8 OR L9 ) AFTER 15 ns;
    N3 <= NOT ( L10 OR L11 ) AFTER 15 ns;
    N4 <= NOT ( L4 ) AFTER 15 ns;
    N5 <= NOT ( L3 AND S1 AND S0 ) AFTER 15 ns;
    N6 <= NOT ( L5 ) AFTER 15 ns;
    N7 <=  ( L12 OR L13 ) AFTER 15 ns;
    N8 <= NOT ( L22 OR L23 OR L24 OR L25 ) AFTER 21 ns;
    N9 <= NOT ( L26 OR L27 OR L28 OR L29 ) AFTER 21 ns;
    N10 <= NOT ( L30 OR L31 OR L32 OR L33 ) AFTER 21 ns;
    N11 <= NOT ( L34 OR L35 OR L36 OR L37 ) AFTER 21 ns;
    N12 <= NOT ( L38 OR L39 OR L40 OR L41 ) AFTER 21 ns;
    N13 <= NOT ( L42 OR L43 OR L44 OR L45 ) AFTER 21 ns;
    N14 <= NOT ( L46 OR L47 OR L48 OR L49 ) AFTER 21 ns;
    N15 <= NOT ( L50 OR L51 OR L52 OR L53 ) AFTER 21 ns;
    N16 <=  ( CN ) AFTER 18 ns;
    F0 <= NOT ( N8 XOR L54 ) AFTER 9 ns;
    F1 <= NOT ( N10 XOR L68 ) AFTER 9 ns;
    F2 <= NOT ( N12 XOR L69 ) AFTER 9 ns;
    F3 <= NOT ( N14 XOR L70 ) AFTER 9 ns;
    \CN+4\ <= NOT ( L71 ) AFTER 21 ns;
    OVR <=  ( L70 XOR L71 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS382A\ IS PORT(
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
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
OVR : OUT  std_logic;
\CN+4\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS382A\;

ARCHITECTURE model OF \74LS382A\ IS
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
    L1 <= NOT ( S0 );
    L2 <= NOT ( S1 );
    L3 <= NOT ( S2 );
    L4 <=  ( L3 AND L2 AND S0 );
    L5 <=  ( L3 AND S1 AND L1 );
    L6 <=  ( S2 AND S1 AND S0 );
    L7 <=  ( L2 AND S0 );
    L8 <=  ( S2 AND S0 );
    L9 <=  ( S1 AND L1 );
    L10 <=  ( S1 AND S0 );
    L11 <=  ( S2 AND L2 );
    L12 <=  ( L3 AND S0 );
    L13 <=  ( L3 AND S1 );
    L14 <= NOT ( A0 );
    L15 <= NOT ( B0 );
    L16 <= NOT ( A1 );
    L17 <= NOT ( B1 );
    L18 <= NOT ( A2 );
    L19 <= NOT ( B2 );
    L20 <= NOT ( A3 );
    L21 <= NOT ( B3 );
    L22 <=  ( N3 AND A0 AND L15 );
    L23 <=  ( N2 AND A0 AND B0 );
    L24 <=  ( N3 AND L14 AND B0 );
    L25 <=  ( N1 AND L14 AND L15 );
    L26 <=  ( N6 AND A0 AND L15 );
    L27 <=  ( N5 AND A0 AND B0 );
    L28 <=  ( N4 AND L14 AND B0 );
    L29 <=  ( L14 AND L15 );
    L30 <=  ( N3 AND A1 AND L17 );
    L31 <=  ( N2 AND A1 AND B1 );
    L32 <=  ( N3 AND L16 AND B1 );
    L33 <=  ( N1 AND L16 AND L17 );
    L34 <=  ( N6 AND A1 AND L17 );
    L35 <=  ( N5 AND A1 AND B1 );
    L36 <=  ( N4 AND L16 AND B1 );
    L37 <=  ( L16 AND L17 );
    L38 <=  ( N3 AND A2 AND L19 );
    L39 <=  ( N2 AND A2 AND B2 );
    L40 <=  ( N3 AND L18 AND B2 );
    L41 <=  ( N1 AND L18 AND L19 );
    L42 <=  ( N6 AND A2 AND L19 );
    L43 <=  ( N5 AND A2 AND B2 );
    L44 <=  ( N4 AND L18 AND B2 );
    L45 <=  ( L18 AND L19 );
    L46 <=  ( N3 AND A3 AND L21 );
    L47 <=  ( N2 AND A3 AND B3 );
    L48 <=  ( N3 AND L20 AND B3 );
    L49 <=  ( N1 AND L20 AND L21 );
    L50 <=  ( N6 AND A3 AND L21 );
    L51 <=  ( N5 AND A3 AND B3 );
    L52 <=  ( N4 AND L20 AND B3 );
    L53 <=  ( L20 AND L21 );
    L54 <= NOT ( N7 AND N16 );
    L55 <=  ( N7 AND N16 AND N8 );
    L56 <=  ( N7 AND N9 );
    L57 <=  ( N7 AND N16 AND N8 AND N10 );
    L58 <=  ( N7 AND N10 AND N9 );
    L59 <=  ( N7 AND N11 );
    L60 <=  ( N7 AND N16 AND N8 AND N10 AND N12 );
    L61 <=  ( N7 AND N10 AND N12 AND N9 );
    L62 <=  ( N11 AND N12 AND N7 );
    L63 <=  ( N7 AND N13 );
    L64 <=  ( CN AND N8 AND N10 AND N12 AND N14 );
    L65 <=  ( N10 AND N12 AND N14 AND N9 );
    L66 <=  ( N12 AND N14 AND N11 );
    L67 <=  ( N14 AND N13 );
    L68 <= NOT ( L55 OR L56 );
    L69 <= NOT ( L57 OR L58 OR L59 );
    L70 <= NOT ( L60 OR L61 OR L62 OR L63 );
    L71 <= NOT ( L64 OR L65 OR L66 OR L67 OR N15 );
    N1 <= NOT ( L4 OR L5 OR L6 ) AFTER 15 ns;
    N2 <= NOT ( L7 OR L8 OR L9 ) AFTER 15 ns;
    N3 <= NOT ( L10 OR L11 ) AFTER 15 ns;
    N4 <= NOT ( L4 ) AFTER 15 ns;
    N5 <= NOT ( L3 AND S1 AND S0 ) AFTER 15 ns;
    N6 <= NOT ( L5 ) AFTER 15 ns;
    N7 <=  ( L12 OR L13 ) AFTER 15 ns;
    N8 <= NOT ( L22 OR L23 OR L24 OR L25 ) AFTER 21 ns;
    N9 <= NOT ( L26 OR L27 OR L28 OR L29 ) AFTER 21 ns;
    N10 <= NOT ( L30 OR L31 OR L32 OR L33 ) AFTER 21 ns;
    N11 <= NOT ( L34 OR L35 OR L36 OR L37 ) AFTER 21 ns;
    N12 <= NOT ( L38 OR L39 OR L40 OR L41 ) AFTER 21 ns;
    N13 <= NOT ( L42 OR L43 OR L44 OR L45 ) AFTER 21 ns;
    N14 <= NOT ( L46 OR L47 OR L48 OR L49 ) AFTER 21 ns;
    N15 <= NOT ( L50 OR L51 OR L52 OR L53 ) AFTER 21 ns;
    N16 <=  ( CN ) AFTER 18 ns;
    F0 <= NOT ( N8 XOR L54 ) AFTER 9 ns;
    F1 <= NOT ( N10 XOR L68 ) AFTER 9 ns;
    F2 <= NOT ( N12 XOR L69 ) AFTER 9 ns;
    F3 <= NOT ( N14 XOR L70 ) AFTER 9 ns;
    \CN+4\ <= NOT ( L71 ) AFTER 21 ns;
    OVR <=  ( L70 XOR L71 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS386\ IS PORT(
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
END \74LS386\;

ARCHITECTURE model OF \74LS386\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 23 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 23 ns;
    O_C <=  ( I0_C XOR I1_C ) AFTER 23 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS386A\ IS PORT(
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
END \74LS386A\;

ARCHITECTURE model OF \74LS386A\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 23 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 23 ns;
    O_C <=  ( I0_C XOR I1_C ) AFTER 23 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS390\ IS PORT(
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
END \74LS390\;

ARCHITECTURE model OF \74LS390\ IS
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
    DQFFC_108 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>N1 , cl=>L1 );
    DFFC_14 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N8 , qNot=>N15 , d=>L10 , clk=>N3 , cl=>L1 );
    DQFFC_109 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , d=>L11 , clk=>N15 , cl=>L1 );
    DQFFC_110 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N10 , d=>L12 , clk=>N4 , cl=>L1 );
    DQFFC_111 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>L13 , clk=>N2 , cl=>L2 );
    DFFC_15 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>11 ns)
      PORT MAP (q=>N12 , qNot=>N16 , d=>L14 , clk=>N5 , cl=>L2 );
    DQFFC_112 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>18 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N13 , d=>L15 , clk=>N16 , cl=>L2 );
    DQFFC_113 :  ORCAD_DQFFC 
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

ENTITY \74LS393\ IS PORT(
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
END \74LS393\;

ARCHITECTURE model OF \74LS393\ IS
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
    DQFFP_12 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , pr=>L1 );
    DQFFP_13 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>L4 , clk=>N9 , pr=>L1 );
    DQFFP_14 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>L5 , clk=>N10 , pr=>L1 );
    DQFFP_15 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>20 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N12 , d=>L6 , clk=>N11 , pr=>L1 );
    DQFFP_16 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>L7 , clk=>N2 , pr=>L2 );
    DQFFP_17 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N14 , d=>L8 , clk=>N13 , pr=>L2 );
    DQFFP_18 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , pr=>L2 );
    DQFFP_19 :  ORCAD_DQFFP 
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

ENTITY \74LS395\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLR : IN  std_logic;
OC : IN  std_logic;
\LD/S\\H\\\ : IN  std_logic;
CLK : IN  std_logic;
SER : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
\Q\\D\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS395\;

ARCHITECTURE model OF \74LS395\ IS
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

    BEGIN
    N1 <= NOT ( \LD/S\\H\\\ ) AFTER 20 ns;
    N2 <= NOT ( CLK ) AFTER 0 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( OC );
    L3 <=  ( SER AND N1 );
    L4 <=  ( L1 AND A );
    L5 <=  ( N3 AND N1 );
    L6 <=  ( L1 AND B );
    L7 <=  ( N4 AND N1 );
    L8 <=  ( L1 AND C );
    L9 <=  ( N5 AND N1 );
    L10 <=  ( L1 AND D );
    L11 <=  ( L3 OR L4 );
    L12 <=  ( L5 OR L6 );
    L13 <=  ( L7 OR L8 );
    L14 <=  ( L9 OR L10 );
    DQFFC_114 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L11 , clk=>N2 , cl=>CLR );
    DQFFC_115 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L12 , clk=>N2 , cl=>CLR );
    DQFFC_116 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L13 , clk=>N2 , cl=>CLR );
    DQFFC_117 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L14 , clk=>N2 , cl=>CLR );
    N7 <=  ( N3 ) AFTER 15 ns;
    N8 <=  ( N4 ) AFTER 15 ns;
    N9 <=  ( N5 ) AFTER 15 ns;
    \Q\\D\\\ <=  ( N6 ) AFTER 20 ns;
    N10 <= ( N6 ) AFTER 20 ns;
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QA , i1=>N7 , en=>L2 );
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QB , i1=>N8 , en=>L2 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QC , i1=>N9 , en=>L2 );
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QD , i1=>N10 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS395A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLR : IN  std_logic;
OC : IN  std_logic;
\LD/S\\H\\\ : IN  std_logic;
CLK : IN  std_logic;
SER : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
\Q\\D\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS395A\;

ARCHITECTURE model OF \74LS395A\ IS
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

    BEGIN
    N1 <= NOT ( \LD/S\\H\\\ ) AFTER 20 ns;
    N2 <= NOT ( CLK ) AFTER 0 ns;
    L1 <= NOT ( N1 );
    L2 <= NOT ( OC );
    L3 <=  ( SER AND N1 );
    L4 <=  ( L1 AND A );
    L5 <=  ( N3 AND N1 );
    L6 <=  ( L1 AND B );
    L7 <=  ( N4 AND N1 );
    L8 <=  ( L1 AND C );
    L9 <=  ( N5 AND N1 );
    L10 <=  ( L1 AND D );
    L11 <=  ( L3 OR L4 );
    L12 <=  ( L5 OR L6 );
    L13 <=  ( L7 OR L8 );
    L14 <=  ( L9 OR L10 );
    DQFFC_118 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L11 , clk=>N2 , cl=>CLR );
    DQFFC_119 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L12 , clk=>N2 , cl=>CLR );
    DQFFC_120 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L13 , clk=>N2 , cl=>CLR );
    DQFFC_121 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L14 , clk=>N2 , cl=>CLR );
    N7 <=  ( N3 ) AFTER 15 ns;
    N8 <=  ( N4 ) AFTER 15 ns;
    N9 <=  ( N5 ) AFTER 15 ns;
    \Q\\D\\\ <=  ( N6 ) AFTER 20 ns;
    N10 <= (N6) AFTER 20 ns;
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QA , i1=>N7 , en=>L2 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QB , i1=>N8 , en=>L2 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QC , i1=>N9 , en=>L2 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>20 ns)
      PORT MAP  (O=>QD , i1=>N10 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS398\ IS PORT(
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
\Q\\A\\\ : OUT  std_logic;
QB : OUT  std_logic;
\Q\\B\\\ : OUT  std_logic;
QC : OUT  std_logic;
\Q\\C\\\ : OUT  std_logic;
QD : OUT  std_logic;
\Q\\D\\\ : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS398\;

ARCHITECTURE model OF \74LS398\ IS
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
    N1 <= NOT ( WS ) AFTER 20 ns;
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
    DFF_5 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QA , qNot=>\Q\\A\\\ , d=>L10 , clk=>CLK );
    DFF_6 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QB , qNot=>\Q\\B\\\ , d=>L11 , clk=>CLK );
    DFF_7 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QC , qNot=>\Q\\C\\\ , d=>L12 , clk=>CLK );
    DFF_8 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QD , qNot=>\Q\\D\\\ , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS399\ IS PORT(
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
END \74LS399\;

ARCHITECTURE model OF \74LS399\ IS
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
    N1 <= NOT ( WS ) AFTER 20 ns;
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
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QA , d=>L10 , clk=>CLK );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QB , d=>L11 , clk=>CLK );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QC , d=>L12 , clk=>CLK );
    DQFF_104 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>27 ns, tfall_clk_q=>32 ns)
      PORT MAP  (q=>QD , d=>L13 , clk=>CLK );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS445\ IS PORT(
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
END \74LS445\;

ARCHITECTURE model OF \74LS445\ IS
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

ENTITY \74LS446\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
GBA : IN  std_logic;
GAB : IN  std_logic;
DR1 : IN  std_logic;
DR2 : IN  std_logic;
DR3 : IN  std_logic;
DR4 : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS446\;

ARCHITECTURE model OF \74LS446\ IS
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

    BEGIN
    L1 <= NOT ( GBA );
    L2 <= NOT ( GAB );
    L3 <= NOT ( DR1 );
    L4 <= NOT ( DR2 );
    L5 <= NOT ( DR3 );
    L6 <= NOT ( DR4 );
    L7 <=  ( L2 AND DR1 );
    L8 <=  ( L3 AND L1 );
    L9 <=  ( L2 AND DR2 );
    L10 <=  ( L4 AND L1 );
    L11 <=  ( L2 AND DR3 );
    L12 <=  ( L5 AND L1 );
    L13 <=  ( L2 AND DR4 );
    L14 <=  ( L6 AND L1 );
    N1 <= NOT ( A1 ) AFTER 8 ns;
    N2 <= NOT ( B1 ) AFTER 8 ns;
    N3 <= NOT ( A2 ) AFTER 8 ns;
    N4 <= NOT ( B2 ) AFTER 8 ns;
    N5 <= NOT ( A3 ) AFTER 8 ns;
    N6 <= NOT ( B3 ) AFTER 8 ns;
    N7 <= NOT ( A4 ) AFTER 8 ns;
    N8 <= NOT ( B4 ) AFTER 8 ns;
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L7 );
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L8 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L9 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N4 , en=>L10 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N5 , en=>L11 );
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>L12 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N7 , en=>L13 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N8 , en=>L14 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS447\ IS PORT(
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
END \74LS447\;

ARCHITECTURE model OF \74LS447\ IS
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

ENTITY \74LS449\ IS PORT(
A1 : INOUT  std_logic;
A2 : INOUT  std_logic;
A3 : INOUT  std_logic;
A4 : INOUT  std_logic;
GBA : IN  std_logic;
GAB : IN  std_logic;
DR1 : IN  std_logic;
DR2 : IN  std_logic;
DR3 : IN  std_logic;
DR4 : IN  std_logic;
B1 : INOUT  std_logic;
B2 : INOUT  std_logic;
B3 : INOUT  std_logic;
B4 : INOUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS449\;

ARCHITECTURE model OF \74LS449\ IS
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

    BEGIN
    L1 <= NOT ( GBA );
    L2 <= NOT ( GAB );
    L3 <= NOT ( DR1 );
    L4 <= NOT ( DR2 );
    L5 <= NOT ( DR3 );
    L6 <= NOT ( DR4 );
    L7 <=  ( L2 AND DR1 );
    L8 <=  ( L3 AND L1 );
    L9 <=  ( L2 AND DR2 );
    L10 <=  ( L4 AND L1 );
    L11 <=  ( L2 AND DR3 );
    L12 <=  ( L5 AND L1 );
    L13 <=  ( L2 AND DR4 );
    L14 <=  ( L6 AND L1 );
    N1 <=  ( A1 ) AFTER 12 ns;
    N2 <=  ( B1 ) AFTER 12 ns;
    N3 <=  ( A2 ) AFTER 12 ns;
    N4 <=  ( B2 ) AFTER 12 ns;
    N5 <=  ( A3 ) AFTER 12 ns;
    N6 <=  ( B3 ) AFTER 12 ns;
    N7 <=  ( A4 ) AFTER 12 ns;
    N8 <=  ( B4 ) AFTER 12 ns;
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L7 );
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N2 , en=>L8 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L9 );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N4 , en=>L10 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N5 , en=>L11 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>L12 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N7 , en=>L13 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N8 , en=>L14 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS465\ IS PORT(
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
END \74LS465\;

ARCHITECTURE model OF \74LS465\ IS
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
    N1 <=  ( A1 ) AFTER 13 ns;
    N2 <=  ( A2 ) AFTER 13 ns;
    N3 <=  ( A3 ) AFTER 13 ns;
    N4 <=  ( A4 ) AFTER 13 ns;
    N5 <=  ( A5 ) AFTER 13 ns;
    N6 <=  ( A6 ) AFTER 13 ns;
    N7 <=  ( A7 ) AFTER 13 ns;
    N8 <=  ( A8 ) AFTER 13 ns;
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS466\ IS PORT(
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
END \74LS466\;

ARCHITECTURE model OF \74LS466\ IS
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
    N1 <= NOT ( A1 ) AFTER 10 ns;
    N2 <= NOT ( A2 ) AFTER 10 ns;
    N3 <= NOT ( A3 ) AFTER 10 ns;
    N4 <= NOT ( A4 ) AFTER 10 ns;
    N5 <= NOT ( A5 ) AFTER 10 ns;
    N6 <= NOT ( A6 ) AFTER 10 ns;
    N7 <= NOT ( A7 ) AFTER 10 ns;
    N8 <= NOT ( A8 ) AFTER 10 ns;
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS467\ IS PORT(
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
END \74LS467\;

ARCHITECTURE model OF \74LS467\ IS
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
    N1 <=  ( A1_A ) AFTER 13 ns;
    N2 <=  ( A2_A ) AFTER 13 ns;
    N3 <=  ( A3_A ) AFTER 13 ns;
    N4 <=  ( A4_A ) AFTER 13 ns;
    N5 <=  ( A1_B ) AFTER 13 ns;
    N6 <=  ( A2_B ) AFTER 13 ns;
    N7 <=  ( A3_B ) AFTER 13 ns;
    N8 <=  ( A4_B ) AFTER 13 ns;
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS468\ IS PORT(
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
END \74LS468\;

ARCHITECTURE model OF \74LS468\ IS
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
    N1 <= NOT ( A1_A ) AFTER 10 ns;
    N2 <= NOT ( A2_A ) AFTER 10 ns;
    N3 <= NOT ( A3_A ) AFTER 10 ns;
    N4 <= NOT ( A4_A ) AFTER 10 ns;
    N5 <= NOT ( A1_B ) AFTER 10 ns;
    N6 <= NOT ( A2_B ) AFTER 10 ns;
    N7 <= NOT ( A3_B ) AFTER 10 ns;
    N8 <= NOT ( A4_B ) AFTER 10 ns;
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>45 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS490\ IS PORT(
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
END \74LS490\;

ARCHITECTURE model OF \74LS490\ IS
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
    DQFFPC_27 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L13 , clk=>N1 , pr=>L1 , cl=>L3 );
    DQFFC_122 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N8 , d=>L14 , clk=>N3 , cl=>L5 );
    DQFFC_123 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N9 , d=>L15 , clk=>N15 , cl=>L5 );
    DQFFPC_28 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N10 , d=>L16 , clk=>N4 , pr=>L1 , cl=>L3 );
    DQFFPC_29 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L17 , clk=>N2 , pr=>L2 , cl=>L4 );
    DQFFC_124 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N12 , d=>L18 , clk=>N5 , cl=>L6 );
    DQFFC_125 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N13 , d=>L19 , clk=>N16 , cl=>L6 );
    DQFFPC_30 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>19 ns)
      PORT MAP  (q=>N14 , d=>L20 , clk=>N6 , pr=>L2 , cl=>L4 );
    QA_A <=  ( N7 ) AFTER 15 ns;
    QB_A <=  ( N8 ) AFTER 15 ns;
    QC_A <=  ( N9 ) AFTER 15 ns;
    QD_A <=  ( N10 ) AFTER 15 ns;
    QA_B <=  ( N11 ) AFTER 15 ns;
    QB_B <=  ( N12 ) AFTER 15 ns;
    QC_B <=  ( N13 ) AFTER 15 ns;
    QD_B <=  ( N14 ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS540\ IS PORT(
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
END \74LS540\;

ARCHITECTURE model OF \74LS540\ IS
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
    N1 <= NOT ( A1 ) AFTER 10 ns;
    N2 <= NOT ( A2 ) AFTER 10 ns;
    N3 <= NOT ( A3 ) AFTER 10 ns;
    N4 <= NOT ( A4 ) AFTER 10 ns;
    N5 <= NOT ( A5 ) AFTER 10 ns;
    N6 <= NOT ( A6 ) AFTER 10 ns;
    N7 <= NOT ( A7 ) AFTER 10 ns;
    N8 <= NOT ( A8 ) AFTER 10 ns;
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS541\ IS PORT(
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
END \74LS541\;

ARCHITECTURE model OF \74LS541\ IS
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
    N1 <=  ( A1 ) AFTER 13 ns;
    N2 <=  ( A2 ) AFTER 13 ns;
    N3 <=  ( A3 ) AFTER 13 ns;
    N4 <=  ( A4 ) AFTER 13 ns;
    N5 <=  ( A5 ) AFTER 13 ns;
    N6 <=  ( A6 ) AFTER 13 ns;
    N7 <=  ( A7 ) AFTER 13 ns;
    N8 <=  ( A8 ) AFTER 13 ns;
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>32 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS590\ IS PORT(
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
END \74LS590\;

ARCHITECTURE model OF \74LS590\ IS
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
    DLATCH_59 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N1 , d=>CCLK , enable=>L2 );
    N2 <= NOT ( N9 AND L3 ) AFTER 0 ns;
    N3 <= NOT ( N9 AND L3 AND N10 ) AFTER 0 ns;
    N4 <= NOT ( N9 AND L3 AND N10 AND N11 ) AFTER 0 ns;
    N5 <= NOT ( N9 AND L3 AND N10 AND N11 AND N12 ) AFTER 0 ns;
    N6 <= NOT ( N9 AND L3 AND N10 AND N11 AND N12 AND N13 ) AFTER 0 ns;
    N7 <= NOT ( N9 AND L3 AND N10 AND N11 AND N12 AND N13 AND N14 ) AFTER 0 ns;
    N8 <= NOT ( N9 AND L3 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 ) AFTER 0 ns;
    DQFFC_126 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L4 , clk=>N1 , cl=>CCLR );
    DQFFC_127 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L5 , clk=>N2 , cl=>CCLR );
    DQFFC_128 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L6 , clk=>N3 , cl=>CCLR );
    DQFFC_129 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>L7 , clk=>N4 , cl=>CCLR );
    DQFFC_130 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>L8 , clk=>N5 , cl=>CCLR );
    DQFFC_131 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>L9 , clk=>N6 , cl=>CCLR );
    DQFFC_132 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N15 , d=>L10 , clk=>N7 , cl=>CCLR );
    DQFFC_133 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N16 , d=>L11 , clk=>N8 , cl=>CCLR );
    DQFF_105 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    DQFF_106 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N18 , d=>N10 , clk=>RCLK );
    DQFF_107 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N19 , d=>N11 , clk=>RCLK );
    DQFF_108 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N20 , d=>N12 , clk=>RCLK );
    DQFF_109 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N21 , d=>N13 , clk=>RCLK );
    DQFF_110 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N22 , d=>N14 , clk=>RCLK );
    DQFF_111 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N23 , d=>N15 , clk=>RCLK );
    DQFF_112 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N24 , d=>N16 , clk=>RCLK );
    N25 <=  ( N17 ) AFTER 15 ns;
    N26 <=  ( N18 ) AFTER 15 ns;
    N27 <=  ( N19 ) AFTER 15 ns;
    N28 <=  ( N20 ) AFTER 15 ns;
    N29 <=  ( N21 ) AFTER 15 ns;
    N30 <=  ( N22 ) AFTER 15 ns;
    N31 <=  ( N23 ) AFTER 15 ns;
    N32 <=  ( N24 ) AFTER 15 ns;
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QA , i1=>N25 , en=>L1 );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QB , i1=>N26 , en=>L1 );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QC , i1=>N27 , en=>L1 );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QD , i1=>N28 , en=>L1 );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QE , i1=>N29 , en=>L1 );
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QF , i1=>N30 , en=>L1 );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QG , i1=>N31 , en=>L1 );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>38 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QH , i1=>N32 , en=>L1 );
    RCO <= NOT ( N16 AND N15 AND N14 AND N13 AND N12 AND N11 AND N10 AND N9 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS591\ IS PORT(
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
END \74LS591\;

ARCHITECTURE model OF \74LS591\ IS
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
    L1 <= NOT ( CCLKEN );
    L2 <= NOT ( N1 );
    L3 <= NOT ( N9 );
    L4 <= NOT ( N10 );
    L5 <= NOT ( N11 );
    L6 <= NOT ( N12 );
    L7 <= NOT ( N13 );
    L8 <= NOT ( N14 );
    L9 <= NOT ( N15 );
    L10 <= NOT ( N16 );
    DLATCH_60 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N1 , d=>CCLK , enable=>L1 );
    N2 <= NOT ( N9 AND L2 ) AFTER 0 ns;
    N3 <= NOT ( N9 AND L2 AND N10 ) AFTER 0 ns;
    N4 <= NOT ( N9 AND L2 AND N10 AND N11 ) AFTER 0 ns;
    N5 <= NOT ( N9 AND L2 AND N10 AND N11 AND N12 ) AFTER 0 ns;
    N6 <= NOT ( N9 AND L2 AND N10 AND N11 AND N12 AND N13 ) AFTER 0 ns;
    N7 <= NOT ( N9 AND L2 AND N10 AND N11 AND N12 AND N13 AND N14 ) AFTER 0 ns;
    N8 <= NOT ( N9 AND L2 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 ) AFTER 0 ns;
    DQFFC_134 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , cl=>CCLR );
    DQFFC_135 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N10 , d=>L4 , clk=>N2 , cl=>CCLR );
    DQFFC_136 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N11 , d=>L5 , clk=>N3 , cl=>CCLR );
    DQFFC_137 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N12 , d=>L6 , clk=>N4 , cl=>CCLR );
    DQFFC_138 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N13 , d=>L7 , clk=>N5 , cl=>CCLR );
    DQFFC_139 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N14 , d=>L8 , clk=>N6 , cl=>CCLR );
    DQFFC_140 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N15 , d=>L9 , clk=>N7 , cl=>CCLR );
    DQFFC_141 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N16 , d=>L10 , clk=>N8 , cl=>CCLR );
    DQFF_113 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    DQFF_114 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N18 , d=>N10 , clk=>RCLK );
    DQFF_115 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N19 , d=>N11 , clk=>RCLK );
    DQFF_116 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N20 , d=>N12 , clk=>RCLK );
    DQFF_117 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N21 , d=>N13 , clk=>RCLK );
    DQFF_118 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N22 , d=>N14 , clk=>RCLK );
    DQFF_119 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N23 , d=>N15 , clk=>RCLK );
    DQFF_120 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>23 ns, tfall_clk_q=>27 ns)
      PORT MAP  (q=>N24 , d=>N16 , clk=>RCLK );
    N25 <=  ( G ) AFTER 35 ns;
    QA <=  ( N17 OR N25 ) AFTER 10 ns;
    QB <=  ( N18 OR N25 ) AFTER 10 ns;
    QC <=  ( N19 OR N25 ) AFTER 10 ns;
    QD <=  ( N20 OR N25 ) AFTER 10 ns;
    QE <=  ( N21 OR N25 ) AFTER 10 ns;
    QF <=  ( N22 OR N25 ) AFTER 10 ns;
    QG <=  ( N23 OR N25 ) AFTER 10 ns;
    QH <=  ( N24 OR N25 ) AFTER 10 ns;
    RCO <= NOT ( N16 AND N15 AND N14 AND N13 AND N12 AND N11 AND N10 AND N9 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS594\ IS PORT(
SER : IN  std_logic;
SRCLK : IN  std_logic;
SRCLR : IN  std_logic;
RCLK : IN  std_logic;
RCLR : IN  std_logic;
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
END \74LS594\;

ARCHITECTURE model OF \74LS594\ IS
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
    N1 <=  ( SRCLR ) AFTER 20 ns;
    DQFFC_142 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N2 , d=>SER , clk=>SRCLK , cl=>N1 );
    DQFFC_143 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>N1 );
    DQFFC_144 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>N1 );
    DQFFC_145 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>N1 );
    DQFFC_146 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>N1 );
    DQFFC_147 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>N1 );
    DQFFC_148 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>N1 );
    DQFFC_149 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>SRCLK , cl=>N1 );
    DQFFC_150 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QA , d=>N2 , clk=>RCLK , cl=>RCLR );
    DQFFC_151 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QB , d=>N3 , clk=>RCLK , cl=>RCLR );
    DQFFC_152 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QC , d=>N4 , clk=>RCLK , cl=>RCLR );
    DQFFC_153 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QD , d=>N5 , clk=>RCLK , cl=>RCLR );
    DQFFC_154 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QE , d=>N6 , clk=>RCLK , cl=>RCLR );
    DQFFC_155 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QF , d=>N7 , clk=>RCLK , cl=>RCLR );
    DQFFC_156 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QG , d=>N8 , clk=>RCLK , cl=>RCLR );
    DQFFC_157 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>QH , d=>N9 , clk=>RCLK , cl=>RCLR );
    \Q\\H\\\ <=  ( N9 ) AFTER 0 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS595\ IS PORT(
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
END \74LS595\;

ARCHITECTURE model OF \74LS595\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( SRCLR );
    DQFFC_158 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N1 , d=>SER , clk=>SRCLK , cl=>L2 );
    DQFFC_159 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N2 , d=>N1 , clk=>SRCLK , cl=>L2 );
    DQFFC_160 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>L2 );
    DQFFC_161 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>L2 );
    DQFFC_162 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>L2 );
    DQFFC_163 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>L2 );
    DQFFC_164 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>L2 );
    DQFFC_165 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>L2 );
    DQFF_121 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N9 , d=>N1 , clk=>RCLK );
    DQFF_122 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_123 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK );
    DQFF_124 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK );
    DQFF_125 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK );
    DQFF_126 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK );
    DQFF_127 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK );
    DQFF_128 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>13 ns, tfall_clk_q=>30 ns)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK );
    \Q\\H\\\ <=  ( N8 ) AFTER 5 ns;
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QA , i1=>N9 , en=>L1 );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QB , i1=>N10 , en=>L1 );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QC , i1=>N11 , en=>L1 );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QD , i1=>N12 , en=>L1 );
    TSB_289 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QE , i1=>N13 , en=>L1 );
    TSB_290 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QF , i1=>N14 , en=>L1 );
    TSB_291 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QG , i1=>N15 , en=>L1 );
    TSB_292 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>30 ns, tpd_en_o=>38 ns)
      PORT MAP  (O=>QH , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS596\ IS PORT(
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
END \74LS596\;

ARCHITECTURE model OF \74LS596\ IS
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
    N18 <=  ( G ) AFTER 50 ns;
    N1 <=  ( SRCLR ) AFTER 20 ns;
    DQFFC_166 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N2 , d=>SER , clk=>SRCLK , cl=>N1 );
    DQFFC_167 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>N1 );
    DQFFC_168 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>N1 );
    DQFFC_169 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>N1 );
    DQFFC_170 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>N1 );
    DQFFC_171 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>N1 );
    DQFFC_172 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>28 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>N1 );
    DQFFC_173 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>23 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>SRCLK , cl=>N1 );
    DQFF_129 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_130 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK );
    DQFF_131 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK );
    DQFF_132 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK );
    DQFF_133 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK );
    DQFF_134 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK );
    DQFF_135 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK );
    DQFF_136 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>32 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK );
    \Q\\H\\\ <=  ( N9 ) AFTER 5 ns;
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

ENTITY \74LS599\ IS PORT(
SER : IN  std_logic;
SRCLK : IN  std_logic;
SRCLR : IN  std_logic;
RCLK : IN  std_logic;
RCLR : IN  std_logic;
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
END \74LS599\;

ARCHITECTURE model OF \74LS599\ IS
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
    N1 <=  ( SRCLR ) AFTER 20 ns;
    DQFFC_174 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N2 , d=>SER , clk=>SRCLK , cl=>N1 );
    DQFFC_175 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>N1 );
    DQFFC_176 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>N1 );
    DQFFC_177 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>N1 );
    DQFFC_178 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>N1 );
    DQFFC_179 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>N1 );
    DQFFC_180 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>16 ns, tfall_clk_q=>21 ns)
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>N1 );
    DQFFC_181 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , d=>N8 , clk=>SRCLK , cl=>N1 );
    DQFFC_182 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK , cl=>RCLR );
    DQFFC_183 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK , cl=>RCLR );
    DQFFC_184 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK , cl=>RCLR );
    DQFFC_185 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK , cl=>RCLR );
    DQFFC_186 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK , cl=>RCLR );
    DQFFC_187 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK , cl=>RCLR );
    DQFFC_188 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK , cl=>RCLR );
    DQFFC_189 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK , cl=>RCLR );
    QA <=  ( N10 ) AFTER 5 ns;
    QB <=  ( N11 ) AFTER 5 ns;
    QC <=  ( N12 ) AFTER 5 ns;
    QD <=  ( N13 ) AFTER 5 ns;
    QE <=  ( N14 ) AFTER 5 ns;
    QF <=  ( N15 ) AFTER 5 ns;
    QG <=  ( N16 ) AFTER 5 ns;
    QH <=  ( N17 ) AFTER 5 ns;
    \Q\\H\\\ <=  ( N9 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS604\ IS PORT(
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
END \74LS604\;

ARCHITECTURE model OF \74LS604\ IS
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
    DLATCH_61 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N1 , d=>B1 , enable=>CLK );
    DLATCH_62 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N2 , d=>A1 , enable=>CLK );
    DLATCH_63 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N3 , d=>B2 , enable=>CLK );
    DLATCH_64 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N4 , d=>A2 , enable=>CLK );
    DLATCH_65 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N5 , d=>B3 , enable=>CLK );
    DLATCH_66 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N6 , d=>A3 , enable=>CLK );
    DLATCH_67 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N7 , d=>B4 , enable=>CLK );
    DLATCH_68 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N8 , d=>A4 , enable=>CLK );
    DLATCH_69 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N9 , d=>B5 , enable=>CLK );
    DLATCH_70 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N10 , d=>A5 , enable=>CLK );
    DLATCH_71 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N11 , d=>B6 , enable=>CLK );
    DLATCH_72 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N12 , d=>A6 , enable=>CLK );
    DLATCH_73 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N13 , d=>B7 , enable=>CLK );
    DLATCH_74 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N14 , d=>A7 , enable=>CLK );
    DLATCH_75 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N15 , d=>B8 , enable=>CLK );
    DLATCH_76 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>25 ns)
      PORT MAP  (q=>N16 , d=>A8 , enable=>CLK );
    N17 <=  ( N1 AND L1 ) AFTER 10 ns;
    N19 <=  ( N3 AND L1 ) AFTER 10 ns;
    N21 <=  ( N5 AND L1 ) AFTER 10 ns;
    N23 <=  ( N7 AND L1 ) AFTER 10 ns;
    N25 <=  ( N9 AND L1 ) AFTER 10 ns;
    N27 <=  ( N11 AND L1 ) AFTER 10 ns;
    N29 <=  ( N13 AND L1 ) AFTER 10 ns;
    N31 <=  ( N15 AND L1 ) AFTER 10 ns;
    N18 <=  ( N2 AND CLK ) AFTER 15 ns;
    N20 <=  ( N4 AND CLK ) AFTER 15 ns;
    N22 <=  ( N6 AND CLK ) AFTER 15 ns;
    N24 <=  ( N8 AND CLK ) AFTER 15 ns;
    N26 <=  ( N10 AND CLK ) AFTER 15 ns;
    N28 <=  ( N12 AND CLK ) AFTER 15 ns;
    N30 <=  ( N14 AND CLK ) AFTER 15 ns;
    N32 <=  ( N16 AND CLK ) AFTER 15 ns;
    L2 <=  ( N17 OR N18 );
    L3 <=  ( N19 OR N20 );
    L4 <=  ( N21 OR N22 );
    L5 <=  ( N23 OR N24 );
    L6 <=  ( N25 OR N26 );
    L7 <=  ( N27 OR N28 );
    L8 <=  ( N29 OR N30 );
    L9 <=  ( N31 OR N32 );
    TSB_293 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y1 , i1=>L2 , en=>\A/B\\\ );
    TSB_294 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y2 , i1=>L3 , en=>\A/B\\\ );
    TSB_295 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y3 , i1=>L4 , en=>\A/B\\\ );
    TSB_296 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y4 , i1=>L5 , en=>\A/B\\\ );
    TSB_297 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y5 , i1=>L6 , en=>\A/B\\\ );
    TSB_298 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y6 , i1=>L7 , en=>\A/B\\\ );
    TSB_299 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y7 , i1=>L8 , en=>\A/B\\\ );
    TSB_300 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>30 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y8 , i1=>L9 , en=>\A/B\\\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS605\ IS PORT(
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
END \74LS605\;

ARCHITECTURE model OF \74LS605\ IS
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
    SIGNAL N33 : std_logic;

    BEGIN
    L1 <= NOT ( \A/B\\\ );
    N33 <= NOT ( CLK ) AFTER 35 ns;
    DQFF_137 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>B1 , clk=>CLK );
    DQFF_138 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>A1 , clk=>CLK );
    DQFF_139 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>B2 , clk=>CLK );
    DQFF_140 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>A2 , clk=>CLK );
    DQFF_141 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>B3 , clk=>CLK );
    DQFF_142 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>A3 , clk=>CLK );
    DQFF_143 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>B4 , clk=>CLK );
    DQFF_144 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>A4 , clk=>CLK );
    DQFF_145 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CLK );
    DQFF_146 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>A5 , clk=>CLK );
    DQFF_147 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>B6 , clk=>CLK );
    DQFF_148 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N12 , d=>A6 , clk=>CLK );
    DQFF_149 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>B7 , clk=>CLK );
    DQFF_150 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N14 , d=>A7 , clk=>CLK );
    DQFF_151 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N15 , d=>B8 , clk=>CLK );
    DQFF_152 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N16 , d=>A8 , clk=>CLK );
    N17 <=  ( N1 AND L1 ) AFTER 20 ns;
    N19 <=  ( N3 AND L1 ) AFTER 20 ns;
    N21 <=  ( N5 AND L1 ) AFTER 20 ns;
    N23 <=  ( N7 AND L1 ) AFTER 20 ns;
    N25 <=  ( N9 AND L1 ) AFTER 20 ns;
    N27 <=  ( N11 AND L1 ) AFTER 20 ns;
    N29 <=  ( N13 AND L1 ) AFTER 20 ns;
    N31 <=  ( N15 AND L1 ) AFTER 20 ns;
    N18 <=  ( N2 AND \A/B\\\ ) AFTER 40 ns;
    N20 <=  ( N4 AND \A/B\\\ ) AFTER 40 ns;
    N22 <=  ( N6 AND \A/B\\\ ) AFTER 40 ns;
    N24 <=  ( N8 AND \A/B\\\ ) AFTER 40 ns;
    N26 <=  ( N10 AND \A/B\\\ ) AFTER 40 ns;
    N28 <=  ( N12 AND \A/B\\\ ) AFTER 40 ns;
    N30 <=  ( N14 AND \A/B\\\ ) AFTER 40 ns;
    N32 <=  ( N16 AND \A/B\\\ ) AFTER 40 ns;
    L2 <=  ( N17 OR N18 );
    L3 <=  ( N19 OR N20 );
    L4 <=  ( N21 OR N22 );
    L5 <=  ( N23 OR N24 );
    L6 <=  ( N25 OR N26 );
    L7 <=  ( N27 OR N28 );
    L8 <=  ( N29 OR N30 );
    L9 <=  ( N31 OR N32 );
    Y1 <=  ( L2 OR N33 ) AFTER 5 ns;
    Y2 <=  ( L3 OR N33 ) AFTER 5 ns;
    Y3 <=  ( L4 OR N33 ) AFTER 5 ns;
    Y4 <=  ( L5 OR N33 ) AFTER 5 ns;
    Y5 <=  ( L6 OR N33 ) AFTER 5 ns;
    Y6 <=  ( L7 OR N33 ) AFTER 5 ns;
    Y7 <=  ( L8 OR N33 ) AFTER 5 ns;
    Y8 <=  ( L9 OR N33 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS606\ IS PORT(
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
END \74LS606\;

ARCHITECTURE model OF \74LS606\ IS
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
    L1 <= NOT ( CLK );
    DLATCH_77 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N1 , d=>B1 , enable=>\A/B\\\ );
    DLATCH_78 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N2 , d=>A1 , enable=>\A/B\\\ );
    DLATCH_79 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N3 , d=>B2 , enable=>\A/B\\\ );
    DLATCH_80 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N4 , d=>A2 , enable=>\A/B\\\ );
    DLATCH_81 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N5 , d=>B3 , enable=>\A/B\\\ );
    DLATCH_82 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N6 , d=>A3 , enable=>\A/B\\\ );
    DLATCH_83 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N7 , d=>B4 , enable=>\A/B\\\ );
    DLATCH_84 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N8 , d=>A4 , enable=>\A/B\\\ );
    DLATCH_85 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N9 , d=>B5 , enable=>\A/B\\\ );
    DLATCH_86 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N10 , d=>A5 , enable=>\A/B\\\ );
    DLATCH_87 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N11 , d=>B6 , enable=>\A/B\\\ );
    DLATCH_88 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N12 , d=>A6 , enable=>\A/B\\\ );
    DLATCH_89 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N13 , d=>B7 , enable=>\A/B\\\ );
    DLATCH_90 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N14 , d=>A7 , enable=>\A/B\\\ );
    DLATCH_91 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N15 , d=>B8 , enable=>\A/B\\\ );
    DLATCH_92 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>20 ns)
      PORT MAP  (q=>N16 , d=>A8 , enable=>\A/B\\\ );
    N17 <=  ( N1 AND L1 ) AFTER 15 ns;
    N19 <=  ( N3 AND L1 ) AFTER 15 ns;
    N21 <=  ( N5 AND L1 ) AFTER 15 ns;
    N23 <=  ( N7 AND L1 ) AFTER 15 ns;
    N25 <=  ( N9 AND L1 ) AFTER 15 ns;
    N27 <=  ( N11 AND L1 ) AFTER 15 ns;
    N29 <=  ( N13 AND L1 ) AFTER 15 ns;
    N31 <=  ( N15 AND L1 ) AFTER 15 ns;
    N18 <=  ( N2 AND CLK ) AFTER 30 ns;
    N20 <=  ( N4 AND CLK ) AFTER 30 ns;
    N22 <=  ( N6 AND CLK ) AFTER 30 ns;
    N24 <=  ( N8 AND CLK ) AFTER 30 ns;
    N26 <=  ( N10 AND CLK ) AFTER 30 ns;
    N28 <=  ( N12 AND CLK ) AFTER 30 ns;
    N30 <=  ( N14 AND CLK ) AFTER 30 ns;
    N32 <=  ( N16 AND CLK ) AFTER 30 ns;
    L2 <=  ( N17 OR N18 );
    L3 <=  ( N19 OR N20 );
    L4 <=  ( N21 OR N22 );
    L5 <=  ( N23 OR N24 );
    L6 <=  ( N25 OR N26 );
    L7 <=  ( N27 OR N28 );
    L8 <=  ( N29 OR N30 );
    L9 <=  ( N31 OR N32 );
    TSB_301 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y1 , i1=>L2 , en=>\A/B\\\ );
    TSB_302 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y2 , i1=>L3 , en=>\A/B\\\ );
    TSB_303 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y3 , i1=>L4 , en=>\A/B\\\ );
    TSB_304 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y4 , i1=>L5 , en=>\A/B\\\ );
    TSB_305 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y5 , i1=>L6 , en=>\A/B\\\ );
    TSB_306 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y6 , i1=>L7 , en=>\A/B\\\ );
    TSB_307 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y7 , i1=>L8 , en=>\A/B\\\ );
    TSB_308 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>50 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>Y8 , i1=>L9 , en=>\A/B\\\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS607\ IS PORT(
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
END \74LS607\;

ARCHITECTURE model OF \74LS607\ IS
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
    SIGNAL N33 : std_logic;

    BEGIN
    L1 <= NOT ( \A/B\\\ );
    N33 <= NOT ( CLK ) AFTER 30 ns;
    DQFF_153 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>B1 , clk=>CLK );
    DQFF_154 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>A1 , clk=>CLK );
    DQFF_155 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>B2 , clk=>CLK );
    DQFF_156 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>A2 , clk=>CLK );
    DQFF_157 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>B3 , clk=>CLK );
    DQFF_158 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>A3 , clk=>CLK );
    DQFF_159 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>B4 , clk=>CLK );
    DQFF_160 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>A4 , clk=>CLK );
    DQFF_161 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>B5 , clk=>CLK );
    DQFF_162 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>A5 , clk=>CLK );
    DQFF_163 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>B6 , clk=>CLK );
    DQFF_164 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N12 , d=>A6 , clk=>CLK );
    DQFF_165 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>B7 , clk=>CLK );
    DQFF_166 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N14 , d=>A7 , clk=>CLK );
    DQFF_167 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N15 , d=>B8 , clk=>CLK );
    DQFF_168 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N16 , d=>A8 , clk=>CLK );
    N17 <=  ( N1 AND L1 ) AFTER 50 ns;
    N19 <=  ( N3 AND L1 ) AFTER 50 ns;
    N21 <=  ( N5 AND L1 ) AFTER 50 ns;
    N23 <=  ( N7 AND L1 ) AFTER 50 ns;
    N25 <=  ( N9 AND L1 ) AFTER 50 ns;
    N27 <=  ( N11 AND L1 ) AFTER 50 ns;
    N29 <=  ( N13 AND L1 ) AFTER 50 ns;
    N31 <=  ( N15 AND L1 ) AFTER 50 ns;
    N18 <=  ( N2 AND \A/B\\\ ) AFTER 20 ns;
    N20 <=  ( N4 AND \A/B\\\ ) AFTER 20 ns;
    N22 <=  ( N6 AND \A/B\\\ ) AFTER 20 ns;
    N24 <=  ( N8 AND \A/B\\\ ) AFTER 20 ns;
    N26 <=  ( N10 AND \A/B\\\ ) AFTER 20 ns;
    N28 <=  ( N12 AND \A/B\\\ ) AFTER 20 ns;
    N30 <=  ( N14 AND \A/B\\\ ) AFTER 20 ns;
    N32 <=  ( N16 AND \A/B\\\ ) AFTER 20 ns;
    L2 <=  ( N17 OR N18 );
    L3 <=  ( N19 OR N20 );
    L4 <=  ( N21 OR N22 );
    L5 <=  ( N23 OR N24 );
    L6 <=  ( N25 OR N26 );
    L7 <=  ( N27 OR N28 );
    L8 <=  ( N29 OR N30 );
    L9 <=  ( N31 OR N32 );
    Y1 <=  ( L2 OR N33 ) AFTER 5 ns;
    Y2 <=  ( L3 OR N33 ) AFTER 5 ns;
    Y3 <=  ( L4 OR N33 ) AFTER 5 ns;
    Y4 <=  ( L5 OR N33 ) AFTER 5 ns;
    Y5 <=  ( L6 OR N33 ) AFTER 5 ns;
    Y6 <=  ( L7 OR N33 ) AFTER 5 ns;
    Y7 <=  ( L8 OR N33 ) AFTER 5 ns;
    Y8 <=  ( L9 OR N33 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS620\ IS PORT(
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
END \74LS620\;

ARCHITECTURE model OF \74LS620\ IS
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
    L1 <=  NOT ( GBA );
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
    TSB_309 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_310 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_311 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_312 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_313 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_314 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_315 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_316 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_317 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_318 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_319 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_320 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_321 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_322 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_323 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_324 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS621\ IS PORT(
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
END \74LS621\;

ARCHITECTURE model OF \74LS621\ IS
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
    TSB_325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS622\ IS PORT(
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
END \74LS622\;

ARCHITECTURE model OF \74LS622\ IS
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
    TSB_600 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_601 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_602 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_603 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_604 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_605 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_606 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_607 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_608 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_609 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_610 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_611 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_612 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_613 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_614 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_615 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS623\ IS PORT(
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
END \74LS623\;

ARCHITECTURE model OF \74LS623\ IS
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
    TSB_616 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_617 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_618 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_619 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_620 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_621 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_622 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_623 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_624 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_625 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_626 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_627 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_628 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_629 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_630 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_631 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS638\ IS PORT(
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
END \74LS638\;

ARCHITECTURE model OF \74LS638\ IS
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

    TSB_632 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_633 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_634 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_635 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_636 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_637 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_638 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_639 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_640 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_641 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_642 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_643 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_644 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_645 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_646 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_647 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS639\ IS PORT(
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
END \74LS639\;

ARCHITECTURE model OF \74LS639\ IS
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


    TSB_648 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_649 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_650 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_651 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_652 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_653 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_654 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_656 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_657 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_658 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_659 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_660 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_661 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_662 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_663 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_664 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS640\ IS PORT(
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
END \74LS640\;

ARCHITECTURE model OF \74LS640\ IS
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
    L4 <=  ( L1 AND DIR );
    L3 <=  ( L1 AND L2 );
    N1 <= NOT ( A1 ) AFTER 10 ns;
    N2 <= NOT ( A2 ) AFTER 10 ns;
    N3 <= NOT ( A3 ) AFTER 10 ns;
    N4 <= NOT ( A4 ) AFTER 10 ns;
    N5 <= NOT ( A5 ) AFTER 10 ns;
    N6 <= NOT ( A6 ) AFTER 10 ns;
    N7 <= NOT ( A7 ) AFTER 10 ns;
    N8 <= NOT ( A8 ) AFTER 10 ns;
    N9 <= NOT ( B8 ) AFTER 10 ns;
    N10 <= NOT ( B7 ) AFTER 10 ns;
    N11 <= NOT ( B6 ) AFTER 10 ns;
    N12 <= NOT ( B5 ) AFTER 10 ns;
    N13 <= NOT ( B4 ) AFTER 10 ns;
    N14 <= NOT ( B3 ) AFTER 10 ns;
    N15 <= NOT ( B2 ) AFTER 10 ns;
    N16 <= NOT ( B1 ) AFTER 10 ns;
    TSB_357 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_358 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_359 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_360 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_361 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_362 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_363 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_364 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_365 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_366 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_367 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_368 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_369 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_370 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_371 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_372 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS641\ IS PORT(
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
END \74LS641\;

ARCHITECTURE model OF \74LS641\ IS
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


    TSB_665 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_666 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_667 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_668 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_669 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_670 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_671 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_672 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_673 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_674 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_675 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_676 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_677 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_678 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_679 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_680 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS642\ IS PORT(
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
END \74LS642\;

ARCHITECTURE model OF \74LS642\ IS
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

    TSB_681 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_682 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_683 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_684 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_685 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_686 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_687 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_688 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_689 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_690 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_691 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_692 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_693 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_694 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_695 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_696 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS643\ IS PORT(
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
END \74LS643\;

ARCHITECTURE model OF \74LS643\ IS
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
    N1 <= NOT ( A1 ) AFTER 10 ns;
    N2 <= NOT ( A2 ) AFTER 10 ns;
    N3 <= NOT ( A3 ) AFTER 10 ns;
    N4 <= NOT ( A4 ) AFTER 10 ns;
    N5 <= NOT ( A5 ) AFTER 10 ns;
    N6 <= NOT ( A6 ) AFTER 10 ns;
    N7 <= NOT ( A7 ) AFTER 10 ns;
    N8 <= NOT ( A8 ) AFTER 10 ns;
    N9 <=  ( B8 ) AFTER 10 ns;
    N10 <=  ( B7 ) AFTER 10 ns;
    N11 <=  ( B6 ) AFTER 10 ns;
    N12 <=  ( B5 ) AFTER 10 ns;
    N13 <=  ( B4 ) AFTER 10 ns;
    N14 <=  ( B3 ) AFTER 10 ns;
    N15 <=  ( B2 ) AFTER 10 ns;
    N16 <=  ( B1 ) AFTER 10 ns;
    TSB_373 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_374 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_375 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_376 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_377 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_378 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_379 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_380 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_381 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_382 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_383 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_384 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_385 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_386 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_387 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_388 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS644\ IS PORT(
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
END \74LS644\;

ARCHITECTURE model OF \74LS644\ IS
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
    TSB_697 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_698 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_699 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_700 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_701 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_702 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_703 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_704 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_705 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_706 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_707 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_708 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_709 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_710 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_711 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_712 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS645\ IS PORT(
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
END \74LS645\;

ARCHITECTURE model OF \74LS645\ IS
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
    TSB_389 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_390 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_391 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_392 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_393 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_394 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_395 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_396 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_397 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_398 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_399 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_400 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_401 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_402 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_403 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_404 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS646\ IS PORT(
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
END \74LS646\;

ARCHITECTURE model OF \74LS646\ IS
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
    N1 <= NOT ( SBA ) AFTER 12 ns;
    N2 <= NOT ( SAB ) AFTER 12 ns;
    N3 <=  ( SBA ) AFTER 32 ns;
    N4 <=  ( SAB ) AFTER 32 ns;
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
    DQFF_169 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_170 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_171 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_172 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_173 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_174 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_175 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_176 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_177 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_178 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_179 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_180 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_181 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_182 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_183 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_184 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L1 OR L2 ) AFTER 15 ns;
    N22 <=  ( L3 OR L4 ) AFTER 15 ns;
    N23 <=  ( L5 OR L6 ) AFTER 15 ns;
    N24 <=  ( L7 OR L8 ) AFTER 15 ns;
    N25 <=  ( L9 OR L10 ) AFTER 15 ns;
    N26 <=  ( L11 OR L12 ) AFTER 15 ns;
    N27 <=  ( L13 OR L14 ) AFTER 15 ns;
    N28 <=  ( L15 OR L16 ) AFTER 15 ns;
    N29 <=  ( L17 OR L18 ) AFTER 15 ns;
    N30 <=  ( L19 OR L20 ) AFTER 15 ns;
    N31 <=  ( L21 OR L22 ) AFTER 15 ns;
    N32 <=  ( L23 OR L24 ) AFTER 15 ns;
    N33 <=  ( L25 OR L26 ) AFTER 15 ns;
    N34 <=  ( L27 OR L28 ) AFTER 15 ns;
    N35 <=  ( L29 OR L30 ) AFTER 15 ns;
    N36 <=  ( L31 OR L32 ) AFTER 15 ns;
    TSB_405 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_406 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_407 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_408 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_409 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_410 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_411 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_412 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_413 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_414 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_415 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_416 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_417 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_418 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_419 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_420 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS647\ IS PORT(
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
END \74LS647\;

ARCHITECTURE model OF \74LS647\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 24 ns;
    N2 <= NOT ( SAB ) AFTER 24 ns;
    N3 <=  ( SBA ) AFTER 34 ns;
    N4 <=  ( SAB ) AFTER 34 ns;
    N37 <=  ( G ) AFTER 23 ns;
    N38 <=  ( DIR ) AFTER 13 ns;
    N39 <=  ( DIR ) AFTER 13 ns;
    L33 <=  ( N37 OR N38 );
    L34 <= NOT ( N37 );
    L35 <= NOT ( L34 AND N39 );
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
    DQFF_185 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_186 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_187 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_188 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_189 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_190 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_191 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_192 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_193 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_194 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_195 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_196 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_197 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_198 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_199 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_200 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    L36 <=  ( L1 OR L2 );
    L37 <=  ( L3 OR L4 );
    L38 <=  ( L5 OR L6 );
    L39 <=  ( L7 OR L8 );
    L40 <=  ( L9 OR L10 );
    L41 <=  ( L11 OR L12 );
    L42 <=  ( L13 OR L14 );
    L43 <=  ( L15 OR L16 );
    L44 <=  ( L17 OR L18 );
    L45 <=  ( L19 OR L20 );
    L46 <=  ( L21 OR L22 );
    L47 <=  ( L23 OR L24 );
    L48 <=  ( L25 OR L26 );
    L49 <=  ( L27 OR L28 );
    L50 <=  ( L29 OR L30 );
    L51 <=  ( L31 OR L32 );
    A1 <=  ( L36 OR L33 ) AFTER 22 ns;
    A2 <=  ( L37 OR L33 ) AFTER 22 ns;
    A3 <=  ( L38 OR L33 ) AFTER 22 ns;
    A4 <=  ( L39 OR L33 ) AFTER 22 ns;
    A5 <=  ( L40 OR L33 ) AFTER 22 ns;
    A6 <=  ( L41 OR L33 ) AFTER 22 ns;
    A7 <=  ( L42 OR L33 ) AFTER 22 ns;
    A8 <=  ( L43 OR L33 ) AFTER 22 ns;
    B1 <=  ( L44 OR L35 ) AFTER 22 ns;
    B2 <=  ( L45 OR L35 ) AFTER 22 ns;
    B3 <=  ( L46 OR L35 ) AFTER 22 ns;
    B4 <=  ( L47 OR L35 ) AFTER 22 ns;
    B5 <=  ( L48 OR L35 ) AFTER 22 ns;
    B6 <=  ( L49 OR L35 ) AFTER 22 ns;
    B7 <=  ( L50 OR L35 ) AFTER 22 ns;
    B8 <=  ( L51 OR L35 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS648\ IS PORT(
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
END \74LS648\;

ARCHITECTURE model OF \74LS648\ IS
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
    N1 <= NOT ( SBA ) AFTER 37 ns;
    N2 <= NOT ( SAB ) AFTER 37 ns;
    N3 <=  ( SBA ) AFTER 22 ns;
    N4 <=  ( SAB ) AFTER 22 ns;
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
    DQFF_201 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_202 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_203 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_204 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_205 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_206 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_207 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_208 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_209 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_210 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_211 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_212 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_213 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_214 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_215 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_216 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 20 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 20 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 20 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 20 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 20 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 20 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 20 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 20 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 20 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 20 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 20 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 20 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 20 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 20 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 20 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 20 ns;
    TSB_421 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_422 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_423 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_424 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_425 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_426 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_427 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_428 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_429 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_430 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_431 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_432 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_433 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_434 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_435 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_436 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>45 ns, tfall_i1_o=>40 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS649\ IS PORT(
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
END \74LS649\;

ARCHITECTURE model OF \74LS649\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 30 ns;
    N2 <= NOT ( SAB ) AFTER 30 ns;
    N3 <=  ( SBA ) AFTER 20 ns;
    N4 <=  ( SAB ) AFTER 20 ns;
    N37 <=  ( G ) AFTER 20 ns;
    N38 <=  ( DIR ) AFTER 15 ns;
    L33 <=  ( N37 OR N38 );
    L34 <= NOT ( N37 );
    L35 <= NOT ( L34 AND N38 );
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
    DQFF_217 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_218 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_219 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_220 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_221 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_222 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_223 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_224 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_225 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_226 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_227 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_228 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_229 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_230 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_231 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_232 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    L36 <=  ( L1 OR L2 );
    L37 <=  ( L3 OR L4 );
    L38 <=  ( L5 OR L6 );
    L39 <=  ( L7 OR L8 );
    L40 <=  ( L9 OR L10 );
    L41 <=  ( L11 OR L12 );
    L42 <=  ( L13 OR L14 );
    L43 <=  ( L15 OR L16 );
    L44 <=  ( L17 OR L18 );
    L45 <=  ( L19 OR L20 );
    L46 <=  ( L21 OR L22 );
    L47 <=  ( L23 OR L24 );
    L48 <=  ( L25 OR L26 );
    L49 <=  ( L27 OR L28 );
    L50 <=  ( L29 OR L30 );
    L51 <=  ( L31 OR L32 );
    A1 <= NOT ( L36 OR L33 ) AFTER 25 ns;
    A2 <= NOT ( L37 OR L33 ) AFTER 25 ns;
    A3 <= NOT ( L38 OR L33 ) AFTER 25 ns;
    A4 <= NOT ( L39 OR L33 ) AFTER 25 ns;
    A5 <= NOT ( L40 OR L33 ) AFTER 25 ns;
    A6 <= NOT ( L41 OR L33 ) AFTER 25 ns;
    A7 <= NOT ( L42 OR L33 ) AFTER 25 ns;
    A8 <= NOT ( L43 OR L33 ) AFTER 25 ns;
    B1 <= NOT ( L44 OR L35 ) AFTER 25 ns;
    B2 <= NOT ( L45 OR L35 ) AFTER 25 ns;
    B3 <= NOT ( L46 OR L35 ) AFTER 25 ns;
    B4 <= NOT ( L47 OR L35 ) AFTER 25 ns;
    B5 <= NOT ( L48 OR L35 ) AFTER 25 ns;
    B6 <= NOT ( L49 OR L35 ) AFTER 25 ns;
    B7 <= NOT ( L50 OR L35 ) AFTER 25 ns;
    B8 <= NOT ( L51 OR L35 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS651\ IS PORT(
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
END \74LS651\;

ARCHITECTURE model OF \74LS651\ IS
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
    N1 <= NOT ( SBA ) AFTER 29 ns;
    N2 <= NOT ( SAB ) AFTER 29 ns;
    N3 <=  ( SBA ) AFTER 29 ns;
    N4 <=  ( SAB ) AFTER 29 ns;
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
    DQFF_233 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_234 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_235 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_236 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_237 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_238 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_239 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_240 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_241 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_242 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_243 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_244 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_245 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_246 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_247 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_248 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 25 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 25 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 25 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 25 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 25 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 25 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 25 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 25 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 25 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 25 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 25 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 25 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 25 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 25 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 25 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 25 ns;
    TSB_437 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_438 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_439 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_440 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_441 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_442 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_443 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_444 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_445 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_446 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_447 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_448 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_449 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_450 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_451 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_452 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>60 ns, tfall_i1_o=>44 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS652\ IS PORT(
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
END \74LS652\;

ARCHITECTURE model OF \74LS652\ IS
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
    N1 <= NOT ( SBA ) AFTER 17 ns;
    N2 <= NOT ( SAB ) AFTER 17 ns;
    N3 <=  ( SBA ) AFTER 17 ns;
    N4 <=  ( SAB ) AFTER 17 ns;
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
    DQFF_249 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_250 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_251 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_252 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_253 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_254 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_255 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_256 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_257 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_258 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_259 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_260 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_261 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_262 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_263 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_264 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <=  ( L1 OR L2 ) AFTER 15 ns;
    N22 <=  ( L3 OR L4 ) AFTER 15 ns;
    N23 <=  ( L5 OR L6 ) AFTER 15 ns;
    N24 <=  ( L7 OR L8 ) AFTER 15 ns;
    N25 <=  ( L9 OR L10 ) AFTER 15 ns;
    N26 <=  ( L11 OR L12 ) AFTER 15 ns;
    N27 <=  ( L13 OR L14 ) AFTER 15 ns;
    N28 <=  ( L15 OR L16 ) AFTER 15 ns;
    N29 <=  ( L17 OR L18 ) AFTER 15 ns;
    N30 <=  ( L19 OR L20 ) AFTER 15 ns;
    N31 <=  ( L21 OR L22 ) AFTER 15 ns;
    N32 <=  ( L23 OR L24 ) AFTER 15 ns;
    N33 <=  ( L25 OR L26 ) AFTER 15 ns;
    N34 <=  ( L27 OR L28 ) AFTER 15 ns;
    N35 <=  ( L29 OR L30 ) AFTER 15 ns;
    N36 <=  ( L31 OR L32 ) AFTER 15 ns;
    TSB_453 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_454 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_455 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_456 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_457 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_458 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_459 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_460 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_461 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_462 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_463 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_464 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_465 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_466 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_467 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_468 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>54 ns, tfall_i1_o=>45 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS653\ IS PORT(
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
END \74LS653\;

ARCHITECTURE model OF \74LS653\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 19 ns;
    N2 <= NOT ( SAB ) AFTER 18 ns;
    N3 <=  ( SBA ) AFTER 19 ns;
    N4 <=  ( SAB ) AFTER 18 ns;
    N29 <=  ( GBA ) AFTER 31 ns;
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
    DQFF_265 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_266 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_267 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_268 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_269 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_270 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_271 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_272 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>15 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_273 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_274 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_275 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_276 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_277 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_278 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_279 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_280 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    L34 <= NOT ( L1 OR L2 );
    L35 <= NOT ( L3 OR L4 );
    L36 <= NOT ( L5 OR L6 );
    L37 <= NOT ( L7 OR L8 );
    L38 <= NOT ( L9 OR L10 );
    L39 <= NOT ( L11 OR L12 );
    L40 <= NOT ( L13 OR L14 );
    L41 <= NOT ( L15 OR L16 );
    N21 <= NOT ( L17 OR L18 ) AFTER 25 ns;
    N22 <= NOT ( L19 OR L20 ) AFTER 25 ns;
    N23 <= NOT ( L21 OR L22 ) AFTER 25 ns;
    N24 <= NOT ( L23 OR L24 ) AFTER 25 ns;
    N25 <= NOT ( L25 OR L26 ) AFTER 25 ns;
    N26 <= NOT ( L27 OR L28 ) AFTER 25 ns;
    N27 <= NOT ( L29 OR L30 ) AFTER 25 ns;
    N28 <= NOT ( L31 OR L32 ) AFTER 25 ns;
    TSB_469 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B1 , i1=>N21 , en=>GAB );
    TSB_470 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B2 , i1=>N22 , en=>GAB );
    TSB_471 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B3 , i1=>N23 , en=>GAB );
    TSB_472 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B4 , i1=>N24 , en=>GAB );
    TSB_473 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B5 , i1=>N25 , en=>GAB );
    TSB_474 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B6 , i1=>N26 , en=>GAB );
    TSB_475 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B7 , i1=>N27 , en=>GAB );
    TSB_476 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>38 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B8 , i1=>N28 , en=>GAB );
    A1 <=  ( L34 OR N29 ) AFTER 27 ns;
    A2 <=  ( L35 OR N29 ) AFTER 27 ns;
    A3 <=  ( L36 OR N29 ) AFTER 27 ns;
    A4 <=  ( L37 OR N29 ) AFTER 27 ns;
    A5 <=  ( L38 OR N29 ) AFTER 27 ns;
    A6 <=  ( L39 OR N29 ) AFTER 27 ns;
    A7 <=  ( L40 OR N29 ) AFTER 27 ns;
    A8 <=  ( L41 OR N29 ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS654\ IS PORT(
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
END \74LS654\;

ARCHITECTURE model OF \74LS654\ IS
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

    BEGIN
    N1 <= NOT ( SBA ) AFTER 21 ns;
    N2 <= NOT ( SAB ) AFTER 17 ns;
    N3 <=  ( SBA ) AFTER 21 ns;
    N4 <=  ( SAB ) AFTER 17 ns;
    N29 <=  ( GBA ) AFTER 32 ns;
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
    DQFF_281 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_282 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_283 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_284 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_285 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_286 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_287 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_288 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_289 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_290 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_291 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_292 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_293 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_294 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_295 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_296 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>3 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    L34 <=  ( L1 OR L2 );
    L35 <=  ( L3 OR L4 );
    L36 <=  ( L5 OR L6 );
    L37 <=  ( L7 OR L8 );
    L38 <=  ( L9 OR L10 );
    L39 <=  ( L11 OR L12 );
    L40 <=  ( L13 OR L14 );
    L41 <=  ( L15 OR L16 );
    N21 <=  ( L17 OR L18 ) AFTER 25 ns;
    N22 <=  ( L19 OR L20 ) AFTER 25 ns;
    N23 <=  ( L21 OR L22 ) AFTER 25 ns;
    N24 <=  ( L23 OR L24 ) AFTER 25 ns;
    N25 <=  ( L25 OR L26 ) AFTER 25 ns;
    N26 <=  ( L27 OR L28 ) AFTER 25 ns;
    N27 <=  ( L29 OR L30 ) AFTER 25 ns;
    N28 <=  ( L31 OR L32 ) AFTER 25 ns;
    TSB_477 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B1 , i1=>N21 , en=>GAB );
    TSB_478 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B2 , i1=>N22 , en=>GAB );
    TSB_479 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B3 , i1=>N23 , en=>GAB );
    TSB_480 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B4 , i1=>N24 , en=>GAB );
    TSB_481 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B5 , i1=>N25 , en=>GAB );
    TSB_482 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B6 , i1=>N26 , en=>GAB );
    TSB_483 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B7 , i1=>N27 , en=>GAB );
    TSB_484 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>33 ns, tfall_i1_o=>29 ns, tpd_en_o=>29 ns)
      PORT MAP  (O=>B8 , i1=>N28 , en=>GAB );
    A1 <=  ( L34 OR N29 ) AFTER 22 ns;
    A2 <=  ( L35 OR N29 ) AFTER 22 ns;
    A3 <=  ( L36 OR N29 ) AFTER 22 ns;
    A4 <=  ( L37 OR N29 ) AFTER 22 ns;
    A5 <=  ( L38 OR N29 ) AFTER 22 ns;
    A6 <=  ( L39 OR N29 ) AFTER 22 ns;
    A7 <=  ( L40 OR N29 ) AFTER 22 ns;
    A8 <=  ( L41 OR N29 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS668\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
\U/D\\\ : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS668\;

ARCHITECTURE model OF \74LS668\ IS
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
    L1 <= NOT ( \U/D\\\ );
    L2 <= NOT ( LOAD );
    L3 <= NOT ( ENP );
    L4 <= NOT ( ENT );
    L5 <=  ( LOAD AND L3 AND L4 );
    L6 <=  ( L2 AND A );
    L7 <=  ( L2 AND B );
    L8 <=  ( L2 AND C );
    L9 <=  ( L2 AND D );
    L10 <=  ( N2 AND N11 );
    L11 <=  ( N10 AND N3 );
    L12 <= NOT ( L10 OR L11 );
    L13 <=  ( N4 AND N11 );
    L14 <=  ( N5 AND N10 );
    L15 <= NOT ( L13 OR L14 );
    L16 <=  ( N6 AND N11 );
    L17 <=  ( N7 AND N10 );
    L18 <= NOT ( L16 OR L17 );
    L19 <=  ( N8 AND N11 );
    L20 <=  ( N9 AND N10 );
    L21 <= NOT ( L19 OR L20 );
    L22 <=  ( L21 AND L12 AND N12 AND N1 );
    L23 <=  ( L21 AND L18 AND L15 AND L12 AND N11 AND N1 );
    L24 <= NOT ( N10 AND L21 );
    L25 <= NOT ( L21 AND L18 AND L15 AND L12 AND N11 );
    L26 <= NOT ( L5 );
    L27 <= NOT ( L5 AND L12 );
    L28 <= NOT ( L5 AND L12 AND L15 );
    L29 <= NOT ( L5 AND L12 );
    L30 <=  ( N2 AND L26 AND LOAD );
    L31 <=  ( L5 AND N3 );
    L32 <=  ( N4 AND LOAD AND L27 );
    L33 <=  ( L12 AND L5 AND L24 AND L25 AND N5 );
    L34 <=  ( N6 AND LOAD AND L28 );
    L35 <=  ( L5 AND L25 AND L15 AND L12 AND N7 );
    L36 <=  ( N8 AND LOAD AND L29 );
    L37 <=  ( L5 AND L18 AND L15 AND L12 AND N9 );
    L38 <=  ( L30 OR L31 OR L6 );
    L39 <=  ( L32 OR L33 OR L7 );
    L40 <=  ( L34 OR L35 OR L8 );
    L41 <=  ( L36 OR L37 OR L9 );
    N1 <=  ( L4 ) AFTER 11 ns;
    N10 <=  ( \U/D\\\ ) AFTER 21 ns;
    N11 <=  ( L1 ) AFTER 21 ns;
    N12 <=  ( \U/D\\\ ) AFTER 21 ns;
    DFF_9 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N2 , qNot=>N3 , d=>L38 , clk=>CLK );
    DFF_10 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , d=>L39 , clk=>CLK );
    DFF_11 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , d=>L40 , clk=>CLK );
    DFF_12 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>26 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , d=>L41 , clk=>CLK );
    QA <=  ( N2 ) AFTER 1 ns;
    QB <=  ( N4 ) AFTER 1 ns;
    QC <=  ( N6 ) AFTER 1 ns;
    QD <=  ( N8 ) AFTER 1 ns;
    RCO <= NOT ( L22 OR L23 ) AFTER 34 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS671\ IS PORT(
SERR : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
SERL : IN  std_logic;
SRCLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
SRCLR : IN  std_logic;
G : IN  std_logic;
\R/S\\\ : IN  std_logic;
RCLK : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
CASC : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS671\;

ARCHITECTURE model OF \74LS671\ IS
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
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( S0 );
    L3 <= NOT ( S1 );
    L4 <=  ( A AND S1 AND S0 );
    L5 <=  ( S1 AND L2 AND N3 );
    L6 <=  ( SERR AND L3 AND S0 );
    L7 <=  ( L3 AND L2 AND N2 );
    L8 <=  ( B AND S1 AND S0 );
    L9 <=  ( S1 AND L2 AND N4 );
    L10 <=  ( L3 AND S0 AND N2 );
    L11 <=  ( L3 AND L2 AND N3 );
    L12 <=  ( C AND S1 AND S0 );
    L13 <=  ( S1 AND L2 AND N5 );
    L14 <=  ( L3 AND S0 AND N3 );
    L15 <=  ( L3 AND L2 AND N4 );
    L16 <=  ( D AND S1 AND S0 );
    L17 <=  ( SERL AND S1 AND L2 );
    L18 <=  ( L3 AND S0 AND N4 );
    L19 <=  ( L3 AND L2 AND N5 );
    L20 <=  ( L4 OR L5 OR L6 OR L7 );
    L21 <=  ( L8 OR L9 OR L10 OR L11 );
    L22 <=  ( L12 OR L13 OR L14 OR L15 );
    L23 <=  ( L16 OR L17 OR L18 OR L19 );
    N1 <= NOT ( \R/S\\\ ) AFTER 10 ns;
    N16 <=  ( \R/S\\\ ) AFTER 10 ns;
    DQFFC_190 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>L20 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_191 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_192 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>SRCLK , cl=>SRCLR );
    DQFFC_193 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>SRCLK , cl=>SRCLR );
    DQFF_297 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N6 , d=>N2 , clk=>RCLK );
    DQFF_298 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK );
    DQFF_299 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK );
    DQFF_300 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK );
    N10 <= NOT ( N2 ) AFTER 20 ns;
    N11 <= NOT ( N5 ) AFTER 20 ns;
    L24 <=  ( N6 AND N16 );
    L25 <=  ( N2 AND N1 );
    L26 <=  ( N7 AND N16 );
    L27 <=  ( N3 AND N1 );
    L28 <=  ( N8 AND N16 );
    L29 <=  ( N4 AND N1 );
    L30 <=  ( N9 AND N16 );
    L31 <=  ( N5 AND N1 );
    L32 <=  ( N11 AND S0 AND L3 );
    L34 <=  ( N10 AND L2 AND S1 );
    N12 <=  ( L24 OR L25 ) AFTER 15 ns;
    N13 <=  ( L26 OR L27 ) AFTER 15 ns;
    N14 <=  ( L28 OR L29 ) AFTER 15 ns;
    N15 <=  ( L30 OR L31 ) AFTER 15 ns;
    CASC <= NOT ( L32 OR L34 ) AFTER 20 ns;
    TSB_485 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QA , i1=>N12 , en=>L1 );
    TSB_486 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QB , i1=>N13 , en=>L1 );
    TSB_487 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QC , i1=>N14 , en=>L1 );
    TSB_488 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QD , i1=>N15 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS672\ IS PORT(
SERR : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
SERL : IN  std_logic;
SRCLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
SRCLR : IN  std_logic;
G : IN  std_logic;
\R/S\\\ : IN  std_logic;
RCLK : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
CASC : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS672\;

ARCHITECTURE model OF \74LS672\ IS
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
    SIGNAL N13 : std_logic;
    SIGNAL N14 : std_logic;
    SIGNAL N15 : std_logic;
    SIGNAL N16 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( S0 );
    L3 <= NOT ( S1 );
    L4 <=  ( SRCLR AND A AND S1 AND S0 );
    L5 <=  ( SRCLR AND S1 AND L2 AND N3 );
    L6 <=  ( SRCLR AND SERR AND L3 AND S0 );
    L7 <=  ( SRCLR AND L3 AND L2 AND N2 );
    L8 <=  ( SRCLR AND B AND S1 AND S0 );
    L9 <=  ( SRCLR AND S1 AND L2 AND N4 );
    L10 <=  ( SRCLR AND L3 AND S0 AND N2 );
    L11 <=  ( SRCLR AND L3 AND L2 AND N3 );
    L12 <=  ( SRCLR AND C AND S1 AND S0 );
    L13 <=  ( SRCLR AND S1 AND L2 AND N5 );
    L14 <=  ( SRCLR AND L3 AND S0 AND N3 );
    L15 <=  ( SRCLR AND L3 AND L2 AND N4 );
    L16 <=  ( SRCLR AND D AND S1 AND S0 );
    L17 <=  ( SRCLR AND SERL AND S1 AND L2 );
    L18 <=  ( SRCLR AND L3 AND S0 AND N4 );
    L19 <=  ( SRCLR AND L3 AND L2 AND N5 );
    L20 <=  ( L4 OR L5 OR L6 OR L7 );
    L21 <=  ( L8 OR L9 OR L10 OR L11 );
    L22 <=  ( L12 OR L13 OR L14 OR L15 );
    L23 <=  ( L16 OR L17 OR L18 OR L19 );
    N1 <= NOT ( \R/S\\\ ) AFTER 10 ns;
    N16 <=  ( \R/S\\\ ) AFTER 10 ns;
    DQFF_301 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>L20 , clk=>SRCLK );
    DQFF_302 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>SRCLK );
    DQFF_303 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>SRCLK );
    DQFF_304 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>SRCLK );
    DQFF_305 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N6 , d=>N2 , clk=>RCLK );
    DQFF_306 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK );
    DQFF_307 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK );
    DQFF_308 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>1 ns)
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK );
    N10 <= NOT ( N2 ) AFTER 20 ns;
    N11 <= NOT ( N5 ) AFTER 20 ns;
    L24 <=  ( N6 AND N16 );
    L25 <=  ( N2 AND N1 );
    L26 <=  ( N7 AND N16 );
    L27 <=  ( N3 AND N1 );
    L28 <=  ( N8 AND N16 );
    L29 <=  ( N4 AND N1 );
    L30 <=  ( N9 AND N16 );
    L31 <=  ( N5 AND N1 );
    L32 <=  ( N11 AND S0 AND L3 );
    L34 <=  ( N10 AND L2 AND S1 );
    N12 <=  ( L24 OR L25 ) AFTER 15 ns;
    N13 <=  ( L26 OR L27 ) AFTER 15 ns;
    N14 <=  ( L28 OR L29 ) AFTER 15 ns;
    N15 <=  ( L30 OR L31 ) AFTER 15 ns;
    CASC <= NOT ( L32 OR L34 ) AFTER 20 ns;
    TSB_489 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QA , i1=>N12 , en=>L1 );
    TSB_490 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QB , i1=>N13 , en=>L1 );
    TSB_491 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QC , i1=>N14 , en=>L1 );
    TSB_492 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>25 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>QD , i1=>N15 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS682\ IS PORT(
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
END \74LS682\;

ARCHITECTURE model OF \74LS682\ IS
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
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 20 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS683\ IS PORT(
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
END \74LS683\;

ARCHITECTURE model OF \74LS683\ IS
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
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 40 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 40 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS684\ IS PORT(
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
END \74LS684\;

ARCHITECTURE model OF \74LS684\ IS
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
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 20 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS685\ IS PORT(
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
END \74LS685\;

ARCHITECTURE model OF \74LS685\ IS
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
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 40 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 40 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS686\ IS PORT(
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
END \74LS686\;

ARCHITECTURE model OF \74LS686\ IS
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

    BEGIN
    N1 <= NOT ( P7 XOR Q7 ) AFTER 5 ns;
    N2 <= NOT ( P6 XOR Q6 ) AFTER 5 ns;
    N3 <= NOT ( P5 XOR Q5 ) AFTER 5 ns;
    N4 <= NOT ( P4 XOR Q4 ) AFTER 5 ns;
    N5 <= NOT ( P3 XOR Q3 ) AFTER 5 ns;
    N6 <= NOT ( P2 XOR Q2 ) AFTER 5 ns;
    N7 <= NOT ( P1 XOR Q1 ) AFTER 5 ns;
    N8 <= NOT ( P0 XOR Q0 ) AFTER 5 ns;
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
    L9 <=  ( L18 AND N7 AND N6 AND N5 AND N4 AND N3 AND N2 AND N1 AND P0 AND L1 );
    L10 <=  ( L18 AND N6 AND N5 AND N4 AND N3 AND N2 AND N1 AND P1 AND L2 );
    L11 <=  ( L18 AND N5 AND N4 AND N3 AND N2 AND N1 AND P2 AND L3 );
    L12 <=  ( L18 AND N4 AND N3 AND N2 AND N1 AND P3 AND L4 );
    L13 <=  ( L18 AND N3 AND N2 AND N1 AND P4 AND L5 );
    L14 <=  ( L18 AND N2 AND N1 AND P5 AND L6 );
    L15 <=  ( L18 AND N1 AND P6 AND L7 );
    L16 <=  ( L18 AND P7 AND L8 );
    \P=Q\ <= NOT ( L17 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 25 ns;
    \P>Q\ <= NOT ( L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS687\ IS PORT(
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
END \74LS687\;

ARCHITECTURE model OF \74LS687\ IS
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
    L25 <= NOT ( G1 );
    L26 <= NOT ( G2 );
    L17 <=  ( L26 AND L7 AND L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P0 AND L9 );
    L18 <=  ( L26 AND L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P1 AND L10 );
    L19 <=  ( L26 AND L5 AND L4 AND L3 AND L2 AND L1 AND P2 AND L11 );
    L20 <=  ( L26 AND L4 AND L3 AND L2 AND L1 AND P3 AND L12 );
    L21 <=  ( L26 AND L3 AND L2 AND L1 AND P4 AND L13 );
    L22 <=  ( L26 AND L2 AND L1 AND P5 AND L14 );
    L23 <=  ( L26 AND L1 AND P6 AND L15 );
    L24 <=  ( L26 AND P7 AND L16 );
    \P=Q\ <= NOT ( L25 AND L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 ) AFTER 30 ns;
    \P>Q\ <= NOT ( L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS688\ IS PORT(
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
END \74LS688\;

ARCHITECTURE model OF \74LS688\ IS
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
    N1 <= NOT ( Q7 XOR P7 ) AFTER 10 ns;
    N2 <= NOT ( Q6 XOR P6 ) AFTER 10 ns;
    N3 <= NOT ( Q5 XOR P5 ) AFTER 10 ns;
    N4 <= NOT ( Q4 XOR P4 ) AFTER 10 ns;
    N5 <= NOT ( Q3 XOR P3 ) AFTER 10 ns;
    N6 <= NOT ( Q2 XOR P2 ) AFTER 10 ns;
    N7 <= NOT ( Q1 XOR P1 ) AFTER 10 ns;
    N8 <= NOT ( Q0 XOR P0 ) AFTER 10 ns;
    L1 <= NOT ( G );
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS689\ IS PORT(
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
END \74LS689\;

ARCHITECTURE model OF \74LS689\ IS
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
    \P=Q\ <= NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1 ) AFTER 30 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS690\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LOAD : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
RCLR : IN  std_logic;
\R/C\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS690\;

ARCHITECTURE model OF \74LS690\ IS
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
    L1 <= NOT ( G );
    L2 <=  ( LOAD AND ENP AND ENT );
    L3 <= NOT ( LOAD OR A );
    L4 <= NOT ( LOAD OR B );
    L5 <= NOT ( LOAD OR C );
    L6 <= NOT ( LOAD OR D );
    L7 <= NOT ( L2 );
    L8 <= NOT ( N3 );
    L9 <= NOT ( N4 );
    L10 <= NOT ( N5 );
    L11 <= NOT ( N6 );
    L12 <= NOT ( L2 AND N3 );
    L13 <= NOT ( L2 AND N3 AND N4 );
    L14 <= NOT ( L2 AND N3 AND N4 AND N5 );
    L15 <=  ( N3 AND L2 );
    L16 <=  ( L7 AND LOAD AND L8 );
    L17 <=  ( N4 AND L2 AND N3 );
    L18 <=  ( N6 AND L2 AND N3 AND L10 );
    L19 <=  ( L12 AND LOAD AND L9 );
    L20 <=  ( N5 AND L2 AND N3 AND N4 );
    L21 <=  ( L2 AND N3 AND N4 AND N6 );
    L22 <=  ( L13 AND LOAD AND L10 );
    L23 <=  ( N6 AND L2 AND N3 );
    L24 <=  ( L14 AND LOAD AND L11 );
    L25 <= NOT ( L15 OR L16 OR L3 );
    L26 <= NOT ( L17 OR L18 OR L19 OR L4 );
    L27 <= NOT ( L20 OR L21 OR L22 OR L5 );
    L28 <= NOT ( L23 OR L24 OR L6 );
    L29 <=  ( N2 AND N7 );
    L30 <=  ( N1 AND N3 );
    L31 <=  ( N2 AND N8 );
    L32 <=  ( N1 AND N4 );
    L33 <=  ( N2 AND N9 );
    L34 <=  ( N1 AND N5 );
    L35 <=  ( N2 AND N10 );
    L36 <=  ( N1 AND N6 );
    L37 <= NOT ( ENT );
    N1 <= NOT ( \R/C\\\ ) AFTER 10 ns;
    N2 <=  ( \R/C\\\ ) AFTER 10 ns;
    DQFFC_194 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L25 , clk=>CCLK , cl=>CCLR );
    DQFFC_195 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L26 , clk=>CCLK , cl=>CCLR );
    DQFFC_196 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L27 , clk=>CCLK , cl=>CCLR );
    DQFFC_197 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L28 , clk=>CCLK , cl=>CCLR );
    DQFFC_198 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK , cl=>RCLR );
    DQFFC_199 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK , cl=>RCLR );
    DQFFC_200 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK , cl=>RCLR );
    DQFFC_201 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>N6 , clk=>RCLK , cl=>RCLR );
    N11 <=  ( L29 OR L30 ) AFTER 15 ns;
    N12 <=  ( L31 OR L32 ) AFTER 15 ns;
    N13 <=  ( L33 OR L34 ) AFTER 15 ns;
    N14 <=  ( L35 OR L36 ) AFTER 15 ns;
    TSB_493 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QA , i1=>N11 , en=>L1 );
    TSB_494 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QB , i1=>N12 , en=>L1 );
    TSB_495 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QC , i1=>N13 , en=>L1 );
    TSB_496 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QD , i1=>N14 , en=>L1 );
    N15 <= NOT ( N3 AND N6 ) AFTER 20 ns;
    RCO <= NOT ( L37 OR N15 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS691\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LOAD : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
RCLR : IN  std_logic;
\R/C\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS691\;

ARCHITECTURE model OF \74LS691\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <=  ( LOAD AND ENP AND ENT );
    L3 <= NOT ( LOAD OR A );
    L4 <= NOT ( LOAD OR B );
    L5 <= NOT ( LOAD OR C );
    L6 <= NOT ( LOAD OR D );
    L7 <= NOT ( L2 );
    L8 <= NOT ( N3 );
    L9 <= NOT ( N4 );
    L10 <= NOT ( N5 );
    L11 <= NOT ( N6 );
    L12 <= NOT ( L2 AND N3 );
    L13 <= NOT ( L2 AND N3 AND N4 );
    L14 <= NOT ( L2 AND N3 AND N4 AND N5 );
    L15 <=  ( N3 AND L2 );
    L16 <=  ( L7 AND LOAD AND L8 );
    L17 <=  ( N4 AND L2 AND N3 );
    L18 <=  ( L12 AND LOAD AND L9 );
    L19 <=  ( N5 AND L2 AND N3 AND N4 );
    L20 <=  ( L13 AND LOAD AND L10 );
    L21 <=  ( N6 AND L2 AND N3 AND N4 AND N5 );
    L22 <=  ( L14 AND LOAD AND L11 );
    L23 <= NOT ( L15 OR L16 OR L3 );
    L24 <= NOT ( L17 OR L18 OR L4 );
    L25 <= NOT ( L19 OR L20 OR L5 );
    L26 <= NOT ( L21 OR L22 OR L6 );
    L27 <=  ( N2 AND N7 );
    L28 <=  ( N1 AND N3 );
    L29 <=  ( N2 AND N8 );
    L30 <=  ( N1 AND N4 );
    L31 <=  ( N2 AND N9 );
    L32 <=  ( N1 AND N5 );
    L33 <=  ( N2 AND N10 );
    L34 <=  ( N1 AND N6 );
    L35 <= NOT ( ENT );
    N1 <= NOT ( \R/C\\\ ) AFTER 10 ns;
    N2 <=  ( \R/C\\\ ) AFTER 10 ns;
    DQFFC_202 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CCLK , cl=>CCLR );
    DQFFC_203 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CCLK , cl=>CCLR );
    DQFFC_204 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CCLK , cl=>CCLR );
    DQFFC_205 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CCLK , cl=>CCLR );
    DQFFC_206 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK , cl=>RCLR );
    DQFFC_207 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK , cl=>RCLR );
    DQFFC_208 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK , cl=>RCLR );
    DQFFC_209 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>N6 , clk=>RCLK , cl=>RCLR );
    N11 <=  ( L27 OR L28 ) AFTER 15 ns;
    N12 <=  ( L29 OR L30 ) AFTER 15 ns;
    N13 <=  ( L31 OR L32 ) AFTER 15 ns;
    N14 <=  ( L33 OR L34 ) AFTER 15 ns;
    TSB_497 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QA , i1=>N11 , en=>L1 );
    TSB_498 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QB , i1=>N12 , en=>L1 );
    TSB_499 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QC , i1=>N13 , en=>L1 );
    TSB_500 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QD , i1=>N14 , en=>L1 );
    N15 <= NOT ( N3 AND N4 AND N5 AND N6 ) AFTER 20 ns;
    RCO <= NOT ( L35 OR N15 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS692\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LOAD : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
RCLR : IN  std_logic;
\R/C\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS692\;

ARCHITECTURE model OF \74LS692\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <=  ( LOAD AND ENP AND ENT );
    L3 <= NOT ( LOAD OR A );
    L4 <= NOT ( LOAD OR B );
    L5 <= NOT ( LOAD OR C );
    L6 <= NOT ( LOAD OR D );
    L7 <= NOT ( L2 );
    L8 <= NOT ( N3 );
    L9 <= NOT ( N4 );
    L10 <= NOT ( N5 );
    L11 <= NOT ( N6 );
    L12 <= NOT ( L2 AND N3 );
    L13 <= NOT ( L2 AND N3 AND N4 );
    L14 <= NOT ( L2 AND N3 AND N4 AND N5 );
    L15 <=  ( N3 AND L2 );
    L16 <=  ( L7 AND LOAD AND L8 );
    L17 <=  ( N4 AND L2 AND N3 );
    L18 <=  ( N6 AND L2 AND N3 AND L10 );
    L19 <=  ( L12 AND LOAD AND L9 );
    L20 <=  ( N5 AND L2 AND N3 AND N4 );
    L21 <=  ( L2 AND N3 AND N4 AND N6 );
    L22 <=  ( L13 AND LOAD AND L10 );
    L23 <=  ( N6 AND L2 AND N3 );
    L24 <=  ( L14 AND LOAD AND L11 );
    L25 <= NOT ( CCLR );
    L26 <=  ( L25 OR L3 );
    L27 <=  ( L25 OR L4 );
    L28 <=  ( L25 OR L5 );
    L29 <=  ( L25 OR L6 );
    L30 <= NOT ( L15 OR L16 OR L26 );
    L31 <= NOT ( L17 OR L18 OR L19 OR L27 );
    L32 <= NOT ( L20 OR L21 OR L22 OR L28 );
    L33 <= NOT ( L23 OR L24 OR L29 );
    L34 <=  ( N2 AND N7 );
    L35 <=  ( N1 AND N3 );
    L36 <=  ( N2 AND N8 );
    L37 <=  ( N1 AND N4 );
    L38 <=  ( N2 AND N9 );
    L39 <=  ( N1 AND N5 );
    L40 <=  ( N2 AND N10 );
    L41 <=  ( N1 AND N6 );
    L42 <= NOT ( ENT );
    L43 <=  ( N3 AND RCLR );
    L44 <=  ( N4 AND RCLR );
    L45 <=  ( N5 AND RCLR );
    L46 <=  ( N6 AND RCLR );
    N1 <= NOT ( \R/C\\\ ) AFTER 10 ns;
    N2 <=  ( \R/C\\\ ) AFTER 10 ns;
    DQFF_309 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L30 , clk=>CCLK );
    DQFF_310 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L31 , clk=>CCLK );
    DQFF_311 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L32 , clk=>CCLK );
    DQFF_312 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L33 , clk=>CCLK );
    DQFF_313 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L43 , clk=>RCLK );
    DQFF_314 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L44 , clk=>RCLK );
    DQFF_315 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L45 , clk=>RCLK );
    DQFF_316 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L46 , clk=>RCLK );
    N11 <=  ( L34 OR L35 ) AFTER 15 ns;
    N12 <=  ( L36 OR L37 ) AFTER 15 ns;
    N13 <=  ( L38 OR L39 ) AFTER 15 ns;
    N14 <=  ( L40 OR L41 ) AFTER 15 ns;
    TSB_501 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QA , i1=>N11 , en=>L1 );
    TSB_502 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QB , i1=>N12 , en=>L1 );
    TSB_503 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QC , i1=>N13 , en=>L1 );
    TSB_504 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QD , i1=>N14 , en=>L1 );
    N15 <= NOT ( N3 AND N6 ) AFTER 20 ns;
    RCO <= NOT ( L42 OR N15 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS693\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LOAD : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
RCLR : IN  std_logic;
\R/C\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS693\;

ARCHITECTURE model OF \74LS693\ IS
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
    L1 <= NOT ( G );
    L2 <=  ( LOAD AND ENP AND ENT );
    L3 <= NOT ( LOAD OR A );
    L4 <= NOT ( LOAD OR B );
    L5 <= NOT ( LOAD OR C );
    L6 <= NOT ( LOAD OR D );
    L7 <= NOT ( L2 );
    L8 <= NOT ( N3 );
    L9 <= NOT ( N4 );
    L10 <= NOT ( N5 );
    L11 <= NOT ( N6 );
    L12 <= NOT ( L2 AND N3 );
    L13 <= NOT ( L2 AND N3 AND N4 );
    L14 <= NOT ( L2 AND N3 AND N4 AND N5 );
    L15 <=  ( N3 AND L2 );
    L16 <=  ( L7 AND LOAD AND L8 );
    L17 <=  ( N4 AND L2 AND N3 );
    L18 <=  ( L12 AND LOAD AND L9 );
    L19 <=  ( N5 AND L2 AND N3 AND N4 );
    L20 <=  ( L13 AND LOAD AND L10 );
    L21 <=  ( N6 AND L2 AND N3 AND N4 AND N5 );
    L22 <=  ( L14 AND LOAD AND L11 );
    L23 <= NOT ( CCLR );
    L24 <=  ( L23 OR L3 );
    L25 <=  ( L23 OR L4 );
    L26 <=  ( L23 OR L5 );
    L27 <=  ( L23 OR L6 );
    L28 <= NOT ( L15 OR L16 OR L24 );
    L29 <= NOT ( L17 OR L18 OR L25 );
    L30 <= NOT ( L19 OR L20 OR L26 );
    L31 <= NOT ( L21 OR L22 OR L27 );
    L32 <=  ( N2 AND N7 );
    L33 <=  ( N1 AND N3 );
    L34 <=  ( N2 AND N8 );
    L35 <=  ( N1 AND N4 );
    L36 <=  ( N2 AND N9 );
    L37 <=  ( N1 AND N5 );
    L38 <=  ( N2 AND N10 );
    L39 <=  ( N1 AND N6 );
    L40 <= NOT ( ENT );
    L41 <=  ( N3 AND RCLR );
    L42 <=  ( N4 AND RCLR );
    L43 <=  ( N5 AND RCLR );
    L44 <=  ( N6 AND RCLR );
    N1 <= NOT ( \R/C\\\ ) AFTER 10 ns;
    N2 <=  ( \R/C\\\ ) AFTER 10 ns;
    DQFF_317 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L28 , clk=>CCLK );
    DQFF_318 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L29 , clk=>CCLK );
    DQFF_319 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L30 , clk=>CCLK );
    DQFF_320 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L31 , clk=>CCLK );
    DQFF_321 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L41 , clk=>RCLK );
    DQFF_322 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L42 , clk=>RCLK );
    DQFF_323 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L43 , clk=>RCLK );
    DQFF_324 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L44 , clk=>RCLK );
    N11 <=  ( L32 OR L33 ) AFTER 15 ns;
    N12 <=  ( L34 OR L35 ) AFTER 15 ns;
    N13 <=  ( L36 OR L37 ) AFTER 15 ns;
    N14 <=  ( L38 OR L39 ) AFTER 15 ns;
    TSB_505 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QA , i1=>N11 , en=>L1 );
    TSB_506 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QB , i1=>N12 , en=>L1 );
    TSB_507 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QC , i1=>N13 , en=>L1 );
    TSB_508 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QD , i1=>N14 , en=>L1 );
    N15 <= NOT ( N3 AND N4 AND N5 AND N6 ) AFTER 20 ns;
    RCO <= NOT ( L40 OR N15 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS697\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LOAD : IN  std_logic;
\U/D\\\ : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
\R/C\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS697\;

ARCHITECTURE model OF \74LS697\ IS
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
    L1 <= NOT ( G );
    L2 <= NOT ( \U/D\\\ );
    L3 <= NOT ( LOAD );
    L4 <= NOT ( L3 OR ENP OR ENT );
    L5 <= NOT ( ENT );
    L6 <= NOT ( LOAD OR A );
    L7 <= NOT ( LOAD OR B );
    L8 <= NOT ( LOAD OR C );
    L9 <= NOT ( LOAD OR D );
    L10 <=  ( N2 AND L2 );
    L11 <=  ( \U/D\\\ AND N3 );
    L12 <=  ( N4 AND L2 );
    L13 <=  ( \U/D\\\ AND N5 );
    L14 <=  ( N6 AND L2 );
    L15 <=  ( \U/D\\\ AND N7 );
    L16 <=  ( N8 AND L2 );
    L17 <=  ( \U/D\\\ AND N9 );
    L18 <= NOT ( L4 );
    L19 <= NOT ( L4 AND N19 );
    L20 <= NOT ( L4 AND N19 AND N20 );
    L21 <= NOT ( L4 AND N19 AND N20 AND N21 );
    L22 <=  ( N2 AND L4 );
    L23 <=  ( L18 AND LOAD AND N3 );
    L24 <=  ( N4 AND L4 AND N19 );
    L25 <=  ( L19 AND LOAD AND N5 );
    L26 <=  ( N6 AND L4 AND N19 AND N20 );
    L27 <=  ( L20 AND LOAD AND N7 );
    L28 <=  ( N8 AND L4 AND N19 AND N20 AND N21 );
    L29 <=  ( L21 AND LOAD AND N9 );
    L30 <= NOT ( L22 OR L23 OR L6 );
    L31 <= NOT ( L24 OR L25 OR L7 );
    L32 <= NOT ( L26 OR L27 OR L8 );
    L33 <= NOT ( L28 OR L29 OR L9 );
    L34 <=  ( N18 AND N10 );
    L35 <=  ( N1 AND N2 );
    L36 <=  ( N18 AND N11 );
    L37 <=  ( N1 AND N4 );
    L38 <=  ( N18 AND N12 );
    L39 <=  ( N1 AND N6 );
    L40 <=  ( N18 AND N13 );
    L41 <=  ( N1 AND N8 );
    N19 <= NOT ( L10 OR L11 ) AFTER 15 ns;
    N20 <= NOT ( L12 OR L13 ) AFTER 15 ns;
    N21 <= NOT ( L14 OR L15 ) AFTER 15 ns;
    N22 <= NOT ( L16 OR L17 ) AFTER 15 ns;
    N1 <= NOT ( \R/C\\\ ) AFTER 10 ns;
    N18 <=  ( \R/C\\\ ) AFTER 10 ns;
    DFFC_16 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP (q=>N2 , qNot=>N3 , d=>L30 , clk=>CCLK , cl=>CCLR );
    DFFC_17 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP (q=>N4 , qNot=>N5 , d=>L31 , clk=>CCLK , cl=>CCLR );
    DFFC_18 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP (q=>N6 , qNot=>N7 , d=>L32 , clk=>CCLK , cl=>CCLR );
    DFFC_19 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP (q=>N8 , qNot=>N9 , d=>L33 , clk=>CCLK , cl=>CCLR );
    DQFF_325 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_326 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>N4 , clk=>RCLK );
    DQFF_327 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N12 , d=>N6 , clk=>RCLK );
    DQFF_328 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>N8 , clk=>RCLK );
    N14 <=  ( L34 OR L35 ) AFTER 10 ns;
    N15 <=  ( L36 OR L37 ) AFTER 10 ns;
    N16 <=  ( L38 OR L39 ) AFTER 10 ns;
    N17 <=  ( L40 OR L41 ) AFTER 10 ns;
    TSB_509 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QA , i1=>N14 , en=>L1 );
    TSB_510 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QB , i1=>N15 , en=>L1 );
    TSB_511 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QC , i1=>N16 , en=>L1 );
    TSB_512 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QD , i1=>N17 , en=>L1 );
    RCO <= NOT ( N19 AND N20 AND N21 AND N22 AND L5 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74LS698\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LOAD : IN  std_logic;
\U/D\\\ : IN  std_logic;
CCLR : IN  std_logic;
RCLK : IN  std_logic;
\R/C\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74LS698\;

ARCHITECTURE model OF \74LS698\ IS
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

    BEGIN
    L51 <= NOT ( CCLR );
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( \U/D\\\ );
    L4 <= NOT ( LOAD );
    L5 <= NOT ( L4 OR ENP OR ENT );
    L6 <= NOT ( ENT );
    L7 <= NOT ( LOAD OR A );
    L8 <= NOT ( LOAD OR B );
    L9 <= NOT ( LOAD OR C );
    L10 <= NOT ( LOAD OR D );
    L11 <=  ( L51 OR L7 );
    L12 <=  ( L51 OR L8 );
    L13 <=  ( L51 OR L9 );
    L14 <=  ( L51 OR L10 );
    L15 <=  ( N2 AND L3 );
    L16 <=  ( \U/D\\\ AND N3 );
    L17 <=  ( N4 AND L3 );
    L18 <=  ( \U/D\\\ AND N5 );
    L19 <=  ( N6 AND L3 );
    L20 <=  ( \U/D\\\ AND N7 );
    L21 <=  ( N8 AND L3 );
    L22 <=  ( \U/D\\\ AND N9 );
    L23 <= NOT ( L5 );
    L24 <= NOT ( L5 AND N18 );
    L25 <= NOT ( L5 AND N18 AND N19 );
    L26 <= NOT ( L5 AND N18 AND N19 AND N20 );
    L27 <=  ( N2 AND L5 );
    L28 <=  ( L23 AND LOAD AND N3 );
    L29 <=  ( N4 AND L5 AND N18 );
    L30 <=  ( N7 AND L5 AND N18 AND N21 );
    L31 <=  ( L24 AND LOAD AND N5 );
    L32 <=  ( N6 AND L5 AND N18 AND N19 );
    L33 <=  ( L5 AND N18 AND N19 AND N21 );
    L34 <=  ( L25 AND LOAD AND N7 );
    L35 <=  ( N8 AND L5 AND N18 );
    L36 <=  ( L26 AND LOAD AND N9 );
    L37 <=  ( \U/D\\\ AND N18 AND N21 AND L6 );
    L38 <=  ( L6 AND N18 AND N19 AND N20 AND N21 AND L3 );
    L39 <= NOT ( L27 OR L28 OR L11 );
    L40 <= NOT ( L29 OR L30 OR L31 OR L12 );
    L41 <= NOT ( L32 OR L33 OR L34 OR L13 );
    L42 <= NOT ( L35 OR L36 OR L14 );
    L43 <=  ( L2 AND N10 );
    L44 <=  ( N1 AND N2 );
    L45 <=  ( L2 AND N11 );
    L46 <=  ( N1 AND N4 );
    L47 <=  ( L2 AND N12 );
    L48 <=  ( N1 AND N6 );
    L49 <=  ( L2 AND N13 );
    L50 <=  ( N1 AND N8 );
    N18 <= NOT ( L15 OR L16 ) AFTER 15 ns;
    N19 <= NOT ( L17 OR L18 ) AFTER 15 ns;
    N20 <= NOT ( L19 OR L20 ) AFTER 15 ns;
    N21 <= NOT ( L21 OR L22 ) AFTER 15 ns;
    N1 <= NOT ( \R/C\\\ ) AFTER 10 ns;
    DFF_13 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , qNot=>N3 , d=>L39 , clk=>CCLK );
    DFF_14 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , d=>L40 , clk=>CCLK );
    DFF_15 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , d=>L41 , clk=>CCLK );
    DFF_16 :  ORCAD_DFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , d=>L42 , clk=>CCLK );
    DQFF_329 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK );
    DQFF_330 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N11 , d=>N4 , clk=>RCLK );
    DQFF_331 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N12 , d=>N6 , clk=>RCLK );
    DQFF_332 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N13 , d=>N8 , clk=>RCLK );
    N14 <=  ( L43 OR L44 ) AFTER 10 ns;
    N15 <=  ( L45 OR L46 ) AFTER 10 ns;
    N16 <=  ( L47 OR L48 ) AFTER 10 ns;
    N17 <=  ( L49 OR L50 ) AFTER 10 ns;
    TSB_513 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QA , i1=>N14 , en=>L1 );
    TSB_514 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QB , i1=>N15 , en=>L1 );
    TSB_515 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QC , i1=>N16 , en=>L1 );
    TSB_516 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>30 ns, tfall_i1_o=>30 ns, tpd_en_o=>30 ns)
      PORT MAP  (O=>QD , i1=>N17 , en=>L1 );
    RCO <= NOT ( L37 OR L38 ) AFTER 20 ns;
END model;

