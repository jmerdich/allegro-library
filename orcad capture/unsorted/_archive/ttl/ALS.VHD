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
-- File:			ALS.VHD
-- Resource:	  National Semiconductor, ALS/AS Logic Databook, 1987
-- Delay units:	  Nanoseconds
-- Characteristics: DM74ALSXXX MIN/MAX, Vcc=5V +/-0.5V 

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 
--		v7.00.01 - Added more components and eliminated Px port names.
--		v7.00.02 - Corrected functionality of transceivers.




LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS00\ IS PORT(
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
END \74ALS00\;

ARCHITECTURE model OF \74ALS00\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 3 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 3 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS01\ IS PORT(
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
END \74ALS01\;

ARCHITECTURE model OF \74ALS01\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 23 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 23 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 28 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 28 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS02\ IS PORT(
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
END \74ALS02\;

ARCHITECTURE model OF \74ALS02\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 3 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 3 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 3 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS03\ IS PORT(
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
END \74ALS03\;

ARCHITECTURE model OF \74ALS03\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 20 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 20 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 20 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS04\ IS PORT(
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
END \74ALS04\;

ARCHITECTURE model OF \74ALS04\ IS

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

ENTITY \74ALS05\ IS PORT(
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
END \74ALS05\;

ARCHITECTURE model OF \74ALS05\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 36 ns;
    O_B <= NOT ( I_B ) AFTER 36 ns;
    O_C <= NOT ( I_C ) AFTER 36 ns;
    O_D <= NOT ( I_D ) AFTER 36 ns;
    O_E <= NOT ( I_E ) AFTER 36 ns;
    O_F <= NOT ( I_F ) AFTER 36 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS08\ IS PORT(
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
END \74ALS08\;

ARCHITECTURE model OF \74ALS08\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 9 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 9 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS09\ IS PORT(
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
END \74ALS09\;

ARCHITECTURE model OF \74ALS09\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 36 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 36 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 36 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 36 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS10\ IS PORT(
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
END \74ALS10\;

ARCHITECTURE model OF \74ALS10\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 6 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS10A\ IS PORT(
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
END \74ALS10A\;

ARCHITECTURE model OF \74ALS10A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 6 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS11\ IS PORT(
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
END \74ALS11\;

ARCHITECTURE model OF \74ALS11\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 8 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 8 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS11A\ IS PORT(
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
END \74ALS11A\;

ARCHITECTURE model OF \74ALS11A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 8 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 8 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS12\ IS PORT(
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
END \74ALS12\;

ARCHITECTURE model OF \74ALS12\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 36 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 36 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 36 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS12A\ IS PORT(
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
END \74ALS12A\;

ARCHITECTURE model OF \74ALS12A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 36 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 36 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 36 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS15\ IS PORT(
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
END \74ALS15\;

ARCHITECTURE model OF \74ALS15\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 27 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 27 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS15A\ IS PORT(
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
END \74ALS15A\;

ARCHITECTURE model OF \74ALS15A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 27 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 27 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS20\ IS PORT(
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
END \74ALS20\;

ARCHITECTURE model OF \74ALS20\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS20A\ IS PORT(
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
END \74ALS20A\;

ARCHITECTURE model OF \74ALS20A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS21\ IS PORT(
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
END \74ALS21\;

ARCHITECTURE model OF \74ALS21\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 21 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 21 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS21A\ IS PORT(
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
END \74ALS21A\;

ARCHITECTURE model OF \74ALS21A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 21 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 21 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS22\ IS PORT(
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
END \74ALS22\;

ARCHITECTURE model OF \74ALS22\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 27 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS22B\ IS PORT(
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
END \74ALS22B\;

ARCHITECTURE model OF \74ALS22B\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 27 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B AND I3_B ) AFTER 27 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS27\ IS PORT(
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
END \74ALS27\;

ARCHITECTURE model OF \74ALS27\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A OR I2_A ) AFTER 10 ns;
    O_B <= NOT ( I0_B OR I1_B OR I2_B ) AFTER 10 ns;
    O_C <= NOT ( I2_C OR I1_C OR I0_C ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS28\ IS PORT(
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
END \74ALS28\;

ARCHITECTURE model OF \74ALS28\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS28A\ IS PORT(
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
END \74ALS28A\;

ARCHITECTURE model OF \74ALS28A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS30\ IS PORT(
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
END \74ALS30\;

ARCHITECTURE model OF \74ALS30\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS30A\ IS PORT(
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
END \74ALS30A\;

ARCHITECTURE model OF \74ALS30A\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS32\ IS PORT(
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
END \74ALS32\;

ARCHITECTURE model OF \74ALS32\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 9 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 9 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS33\ IS PORT(
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
END \74ALS33\;

ARCHITECTURE model OF \74ALS33\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 33 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 33 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 33 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS33A\ IS PORT(
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
END \74ALS33A\;

ARCHITECTURE model OF \74ALS33A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 33 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 33 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 33 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS34\ IS PORT(
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
END \74ALS34\;

ARCHITECTURE model OF \74ALS34\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 10 ns;
    O_B <=  ( I_B ) AFTER 10 ns;
    O_C <=  ( I_C ) AFTER 10 ns;
    O_D <=  ( I_D ) AFTER 10 ns;
    O_E <=  ( I_E ) AFTER 10 ns;
    O_F <=  ( I_F ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS35\ IS PORT(
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
END \74ALS35\;

ARCHITECTURE model OF \74ALS35\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 45 ns;
    O_B <=  ( I_B ) AFTER 45 ns;
    O_C <=  ( I_C ) AFTER 45 ns;
    O_D <=  ( I_D ) AFTER 45 ns;
    O_E <=  ( I_E ) AFTER 45 ns;
    O_F <=  ( I_F ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS35A\ IS PORT(
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
END \74ALS35A\;

ARCHITECTURE model OF \74ALS35A\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 45 ns;
    O_B <=  ( I_B ) AFTER 45 ns;
    O_C <=  ( I_C ) AFTER 45 ns;
    O_D <=  ( I_D ) AFTER 45 ns;
    O_E <=  ( I_E ) AFTER 45 ns;
    O_F <=  ( I_F ) AFTER 45 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS37\ IS PORT(
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
END \74ALS37\;

ARCHITECTURE model OF \74ALS37\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS37A\ IS PORT(
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
END \74ALS37A\;

ARCHITECTURE model OF \74ALS37A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS38\ IS PORT(
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
END \74ALS38\;

ARCHITECTURE model OF \74ALS38\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 33 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 33 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 33 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS38A\ IS PORT(
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
END \74ALS38A\;

ARCHITECTURE model OF \74ALS38A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 33 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 33 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 33 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS40\ IS PORT(
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
END \74ALS40\;

ARCHITECTURE model OF \74ALS40\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 8 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS40A\ IS PORT(
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
END \74ALS40A\;

ARCHITECTURE model OF \74ALS40A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 11 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS74\ IS PORT(
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
END \74ALS74\;

ARCHITECTURE model OF \74ALS74\ IS

    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS74A\ IS PORT(
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
END \74ALS74A\;

ARCHITECTURE model OF \74ALS74A\ IS

    BEGIN
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , d=>D_A , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    DFFPC_3 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , d=>D_B , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS86\ IS PORT(
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
END \74ALS86\;

ARCHITECTURE model OF \74ALS86\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 12 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 12 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 12 ns;
    O_D <=  ( I1_D XOR I0_D ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS109\ IS PORT(
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
END \74ALS109\;

ARCHITECTURE model OF \74ALS109\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_0 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_1 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS109A\ IS PORT(
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
END \74ALS109A\;

ARCHITECTURE model OF \74ALS109A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= NOT ( K_A );
    L2 <= NOT ( K_B );
    JKFFPC_2 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>L1 , clk=>CLK_A , pr=>PR_A , cl=>CL_A );
    JKFFPC_3 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>11 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>L2 , clk=>CLK_B , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS112\ IS PORT(
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
END \74ALS112\;

ARCHITECTURE model OF \74ALS112\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_4 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_5 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS112A\ IS PORT(
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
END \74ALS112A\;

ARCHITECTURE model OF \74ALS112A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFPC_6 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_7 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B , cl=>CL_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS113\ IS PORT(
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
END \74ALS113\;

ARCHITECTURE model OF \74ALS113\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFP_0 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_1 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS113A\ IS PORT(
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
END \74ALS113A\;

ARCHITECTURE model OF \74ALS113A\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    N2 <= NOT ( CLK_B ) AFTER 0 ns;
    JKFFP_2 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A );
    JKFFP_3 :  ORCAD_JKFFP 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N2 , pr=>PR_B );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS114\ IS PORT(
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
END \74ALS114\;

ARCHITECTURE model OF \74ALS114\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    JKFFPC_8 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_9 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS114A\ IS PORT(
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
END \74ALS114A\;

ARCHITECTURE model OF \74ALS114A\ IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT ( CLK_A ) AFTER 0 ns;
    JKFFPC_10 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_A , qNot=>\Q\\_A\ , j=>J_A , k=>K_A , clk=>N1 , pr=>PR_A , cl=>CL_A );
    JKFFPC_11 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>Q_B , qNot=>\Q\\_B\ , j=>J_B , k=>K_B , clk=>N1 , pr=>PR_B , cl=>CL_A );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS131\ IS PORT(
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
END \74ALS131\;

ARCHITECTURE model OF \74ALS131\ IS
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
    N1 <= NOT ( G2 ) AFTER 5 ns;
    N2 <=  ( G1 ) AFTER 7 ns;
    L1 <=  ( N1 AND N2 );
    DQFF_0 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>A , clk=>CLK );
    DQFF_1 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>B , clk=>CLK );
    DQFF_2 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>C , clk=>CLK );
    L6 <= NOT ( N3 );
    L7 <= NOT ( N4 );
    L8 <= NOT ( N5 );
    Y0 <= NOT ( L6 AND L7 AND L8 AND L1 ) AFTER 10 ns;
    Y1 <= NOT ( N3 AND L7 AND L8 AND L1 ) AFTER 10 ns;
    Y2 <= NOT ( L6 AND N4 AND L8 AND L1 ) AFTER 10 ns;
    Y3 <= NOT ( N3 AND N4 AND L8 AND L1 ) AFTER 10 ns;
    Y4 <= NOT ( L6 AND L7 AND N5 AND L1 ) AFTER 10 ns;
    Y5 <= NOT ( N3 AND L7 AND N5 AND L1 ) AFTER 10 ns;
    Y6 <= NOT ( L6 AND N4 AND N5 AND L1 ) AFTER 10 ns;
    Y7 <= NOT ( N3 AND N4 AND N5 AND L1 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS133\ IS PORT(
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
END \74ALS133\;

ARCHITECTURE model OF \74ALS133\ IS

    BEGIN
    O <= NOT ( I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11 AND I12 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS136\ IS PORT(
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
END \74ALS136\;

ARCHITECTURE model OF \74ALS136\ IS

    BEGIN
    O_A <=  ( I0_A XOR I1_A ) AFTER 32 ns;
    O_B <=  ( I0_B XOR I1_B ) AFTER 32 ns;
    O_C <=  ( I1_C XOR I0_C ) AFTER 32 ns;
    O_D <=  ( I0_D XOR I1_D ) AFTER 32 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS137\ IS PORT(
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
END \74ALS137\;

ARCHITECTURE model OF \74ALS137\ IS
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

    BEGIN
    N1 <= NOT ( G2 ) AFTER 5 ns;
    N2 <=  ( G1 ) AFTER 10 ns;
    L1 <=  ( N1 AND N2 );
    L2 <= NOT ( GL );
    DLATCH_0 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>A , enable=>L2 );
    DLATCH_1 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>B , enable=>L2 );
    DLATCH_2 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>C , enable=>L2 );
    N6 <= NOT ( N3 ) AFTER 5 ns;
    N7 <= NOT ( N4 ) AFTER 5 ns;
    N8 <= NOT ( N5 ) AFTER 5 ns;
    N9 <=  ( N3 ) AFTER 5 ns;
    N10 <=  ( N4 ) AFTER 5 ns;
    N11 <=  ( N5 ) AFTER 5 ns;
    Y0 <= NOT ( N6 AND N7 AND N8 AND L1 ) AFTER 5 ns;
    Y1 <= NOT ( N9 AND N7 AND N8 AND L1 ) AFTER 5 ns;
    Y2 <= NOT ( N6 AND N10 AND N8 AND L1 ) AFTER 5 ns;
    Y3 <= NOT ( N9 AND N10 AND N8 AND L1 ) AFTER 5 ns;
    Y4 <= NOT ( N6 AND N7 AND N11 AND L1 ) AFTER 5 ns;
    Y5 <= NOT ( N9 AND N7 AND N11 AND L1 ) AFTER 5 ns;
    Y6 <= NOT ( N6 AND N10 AND N11 AND L1 ) AFTER 5 ns;
    Y7 <= NOT ( N9 AND N10 AND N11 AND L1 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS138\ IS PORT(
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
END \74ALS138\;

ARCHITECTURE model OF \74ALS138\ IS
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
    N1 <=  ( A ) AFTER 12 ns;
    N2 <=  ( B ) AFTER 12 ns;
    N3 <=  ( C ) AFTER 12 ns;
    N4 <= NOT ( A ) AFTER 12 ns;
    N5 <= NOT ( B ) AFTER 12 ns;
    N6 <= NOT ( C ) AFTER 12 ns;
    N7 <=  ( G1 ) AFTER 7 ns;
    N8 <= NOT ( G2A OR G2B ) AFTER 7 ns;
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

ENTITY \74ALS139\ IS PORT(
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
END \74ALS139\;

ARCHITECTURE model OF \74ALS139\ IS
    SIGNAL N1 : std_logic;
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
    N1 <= NOT ( G_A ) AFTER 0 ns;
    N2 <=  ( A_A ) AFTER 2 ns;
    N3 <=  ( B_A ) AFTER 2 ns;
    N4 <= NOT ( A_A ) AFTER 2 ns;
    N5 <= NOT ( B_A ) AFTER 2 ns;
    N6 <= NOT ( G_B ) AFTER 0 ns;
    N7 <=  ( A_B ) AFTER 2 ns;
    N8 <=  ( B_B ) AFTER 2 ns;
    N9 <= NOT ( A_B ) AFTER 2 ns;
    N10 <= NOT ( B_B ) AFTER 2 ns;
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

ENTITY \74ALS151\ IS PORT(
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
END \74ALS151\;

ARCHITECTURE model OF \74ALS151\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( A ) AFTER 9 ns;
    N2 <= NOT ( B ) AFTER 9 ns;
    N3 <= NOT ( C ) AFTER 9 ns;
    N4 <= NOT ( G ) AFTER 8 ns;
    N5 <=  ( G ) AFTER 8 ns;
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
    Y <=  ( N4 AND L12 ) AFTER 13 ns;
    W <=  ( N5 OR L13 ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS153\ IS PORT(
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
END \74ALS153\;

ARCHITECTURE model OF \74ALS153\ IS
    SIGNAL L1 : std_logic;
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
    N1 <= NOT ( \1G\ ) AFTER 8 ns;
    N2 <= NOT ( \2G\ ) AFTER 8 ns;
    N3 <= NOT ( B ) AFTER 11 ns;
    N4 <= NOT ( A ) AFTER 11 ns;
    N5 <=  ( B ) AFTER 11 ns;
    N6 <=  ( A ) AFTER 11 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <=  ( L3 OR L4 OR L5 OR L6 ) AFTER 10 ns;
    \2Y\ <=  ( L7 OR L8 OR L9 OR L10 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS156\ IS PORT(
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
END \74ALS156\;

ARCHITECTURE model OF \74ALS156\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    L1 <= NOT ( \1G\ OR N1 );
    L2 <= NOT ( \2C\ OR \2G\ );
    N1 <= NOT ( \1C\ ) AFTER 12 ns;
    N2 <= NOT ( B ) AFTER 17 ns;
    N3 <= NOT ( A ) AFTER 17 ns;
    N4 <=  ( B ) AFTER 17 ns;
    N5 <=  ( A ) AFTER 17 ns;
    \1Y0\ <= NOT ( N2 AND N3 AND L1 ) AFTER 33 ns;
    \1Y1\ <= NOT ( N2 AND N5 AND L1 ) AFTER 33 ns;
    \1Y2\ <= NOT ( N4 AND N3 AND L1 ) AFTER 33 ns;
    \1Y3\ <= NOT ( N4 AND N5 AND L1 ) AFTER 33 ns;
    \2Y0\ <= NOT ( N2 AND N3 AND L2 ) AFTER 33 ns;
    \2Y1\ <= NOT ( N2 AND N5 AND L2 ) AFTER 33 ns;
    \2Y2\ <= NOT ( N4 AND N3 AND L2 ) AFTER 33 ns;
    \2Y3\ <= NOT ( N4 AND N5 AND L2 ) AFTER 33 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS157\ IS PORT(
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
END \74ALS157\;

ARCHITECTURE model OF \74ALS157\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 2 ns;
    N2 <= NOT ( G ) AFTER 2 ns;
    L1 <= NOT ( N1 );
    L2 <=  ( \1A\ AND N1 AND N2 );
    L3 <=  ( \1B\ AND L1 AND N2 );
    L4 <=  ( \2A\ AND N1 AND N2 );
    L5 <=  ( \2B\ AND L1 AND N2 );
    L6 <=  ( \3A\ AND N1 AND N2 );
    L7 <=  ( \3B\ AND L1 AND N2 );
    L8 <=  ( \4A\ AND N1 AND N2 );
    L9 <=  ( \4B\ AND L1 AND N2 );
    \1Y\ <=  ( L2 OR L3 ) AFTER 3 ns;
    \2Y\ <=  ( L4 OR L5 ) AFTER 3 ns;
    \3Y\ <=  ( L6 OR L7 ) AFTER 3 ns;
    \4Y\ <=  ( L8 OR L9 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS158\ IS PORT(
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
END \74ALS158\;

ARCHITECTURE model OF \74ALS158\ IS
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
    N1 <= NOT ( \A\\/B\ ) AFTER 2 ns;
    N2 <= NOT ( G ) AFTER 2 ns;
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

ENTITY \74ALS160\ IS PORT(
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
END \74ALS160\;

ARCHITECTURE model OF \74ALS160\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( ENT AND ENP ) AFTER 5 ns;
    N2 <=  ( N3 AND N6 ) AFTER 8 ns;
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
    QA <=  ( N3 ) AFTER 7 ns;
    QB <=  ( N4 ) AFTER 7 ns;
    QC <=  ( N5 ) AFTER 7 ns;
    QD <=  ( N6 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS160B\ IS PORT(
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
END \74ALS160B\;

ARCHITECTURE model OF \74ALS160B\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( ENT AND ENP ) AFTER 5 ns;
    N2 <=  ( N3 AND N6 ) AFTER 8 ns;
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
    DQFFC_4 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>L21 , clk=>CLK , cl=>CLR );
    DQFFC_5 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>L22 , clk=>CLK , cl=>CLR );
    DQFFC_6 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_7 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>L24 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 7 ns;
    QB <=  ( N4 ) AFTER 7 ns;
    QC <=  ( N5 ) AFTER 7 ns;
    QD <=  ( N6 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS161\ IS PORT(
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
END \74ALS161\;

ARCHITECTURE model OF \74ALS161\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( ENP AND ENT AND LOAD ) AFTER 5 ns;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 8 ns;
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
    DQFFC_8 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_9 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_10 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_11 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 5 ns;
    QB <=  ( N4 ) AFTER 5 ns;
    QC <=  ( N5 ) AFTER 5 ns;
    QD <=  ( N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS161B\ IS PORT(
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
END \74ALS161B\;

ARCHITECTURE model OF \74ALS161B\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( ENP AND ENT AND LOAD ) AFTER 5 ns;
    N2 <=  ( N3 AND N4 AND N5 AND N6 ) AFTER 8 ns;
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
    DQFFC_12 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLR );
    DQFFC_13 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLR );
    DQFFC_14 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLR );
    DQFFC_15 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLR );
    QA <=  ( N3 ) AFTER 5 ns;
    QB <=  ( N4 ) AFTER 5 ns;
    QC <=  ( N5 ) AFTER 5 ns;
    QD <=  ( N6 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS162\ IS PORT(
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
END \74ALS162\;

ARCHITECTURE model OF \74ALS162\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( ENT AND ENP ) AFTER 10 ns;
    N2 <=  ( N3 AND N6 ) AFTER 0 ns;
    RCO <=  ( ENT AND N2 ) AFTER 12 ns;
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
    DQFF_3 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_4 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_5 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_6 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 2 ns;
    QB <=  ( N4 ) AFTER 2 ns;
    QC <=  ( N5 ) AFTER 2 ns;
    QD <=  ( N6 ) AFTER 2 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS162B\ IS PORT(
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
END \74ALS162B\;

ARCHITECTURE model OF \74ALS162B\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( ENT AND ENP ) AFTER 10 ns;
    N2 <=  ( N3 AND N6 ) AFTER 0 ns;
    RCO <=  ( ENT AND N2 ) AFTER 12 ns;
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
    DQFF_7 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK );
    DQFF_8 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK );
    DQFF_9 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK );
    DQFF_10 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK );
    QA <=  ( N3 ) AFTER 2 ns;
    QB <=  ( N4 ) AFTER 2 ns;
    QC <=  ( N5 ) AFTER 2 ns;
    QD <=  ( N6 ) AFTER 2 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS163\ IS PORT(
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
END \74ALS163\;

ARCHITECTURE model OF \74ALS163\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( ENP AND ENT AND LOAD ) AFTER 10 ns;
    N2 <= NOT ( LOAD ) AFTER 0 ns;
    N3 <= NOT ( CLR ) AFTER 0 ns;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( LOAD OR N3 );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 3 ns;
    RCO <=  ( ENT AND N4 ) AFTER 12 ns;
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
    DQFF_11 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_12 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_13 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_14 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 4 ns;
    QB <=  ( N6 ) AFTER 4 ns;
    QC <=  ( N7 ) AFTER 4 ns;
    QD <=  ( N8 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS163B\ IS PORT(
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
END \74ALS163B\;

ARCHITECTURE model OF \74ALS163B\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( ENP AND ENT AND LOAD ) AFTER 10 ns;
    N2 <= NOT ( LOAD ) AFTER 0 ns;
    N3 <= NOT ( CLR ) AFTER 0 ns;
    L1 <= NOT ( N1 OR N3 );
    L2 <= NOT ( LOAD OR N3 );
    L3 <= NOT ( N2 OR N3 );
    N4 <=  ( N5 AND N6 AND N7 AND N8 ) AFTER 3 ns;
    RCO <=  ( ENT AND N4 ) AFTER 12 ns;
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
    DQFF_15 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK );
    DQFF_16 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK );
    DQFF_17 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK );
    DQFF_18 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>9 ns)
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK );
    QA <=  ( N5 ) AFTER 4 ns;
    QB <=  ( N6 ) AFTER 4 ns;
    QC <=  ( N7 ) AFTER 4 ns;
    QD <=  ( N8 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS168\ IS PORT(
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
END \74ALS168\;

ARCHITECTURE model OF \74ALS168\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N5 <=  ( L2 ) AFTER 6 ns;
    DQFF_19 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK );
    DQFF_20 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_21 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_22 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    QA <=  ( N1 ) AFTER 8 ns;
    QB <=  ( N2 ) AFTER 8 ns;
    QC <=  ( N3 ) AFTER 8 ns;
    QD <=  ( N4 ) AFTER 8 ns;
    RCO <= NOT ( L41 OR L42 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS168B\ IS PORT(
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
END \74ALS168B\;

ARCHITECTURE model OF \74ALS168B\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N5 <=  ( L2 ) AFTER 6 ns;
    DQFF_23 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK );
    DQFF_24 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK );
    DQFF_25 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK );
    DQFF_26 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK );
    QA <=  ( N1 ) AFTER 8 ns;
    QB <=  ( N2 ) AFTER 8 ns;
    QC <=  ( N3 ) AFTER 8 ns;
    QD <=  ( N4 ) AFTER 8 ns;
    RCO <= NOT ( L41 OR L42 ) AFTER 11 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS169\ IS PORT(
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
END \74ALS169\;

ARCHITECTURE model OF \74ALS169\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N3 <= NOT ( ENT ) AFTER 6 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 13 ns;
    N5 <=  ( \U/D\\\ ) AFTER 13 ns;
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
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 10 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 5 ns;
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
    DQFF_27 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_28 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_29 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_30 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 3 ns;
    QB <= NOT ( N8 ) AFTER 3 ns;
    QC <= NOT ( N9 ) AFTER 3 ns;
    QD <= NOT ( N10 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS169B\ IS PORT(
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
END \74ALS169B\;

ARCHITECTURE model OF \74ALS169B\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N3 <= NOT ( ENT ) AFTER 6 ns;
    N4 <= NOT ( \U/D\\\ ) AFTER 13 ns;
    N5 <=  ( \U/D\\\ ) AFTER 13 ns;
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
    N6 <=  ( L3 AND L6 AND L9 AND L12 ) AFTER 10 ns;
    L13 <=  ( N3 AND N4 AND N6 );
    L14 <=  ( N3 AND N5 AND N6 );
    RCO <= NOT ( L13 OR L14 ) AFTER 5 ns;
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
    DQFF_31 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK );
    DQFF_32 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK );
    DQFF_33 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK );
    DQFF_34 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK );
    QA <= NOT ( N7 ) AFTER 3 ns;
    QB <= NOT ( N8 ) AFTER 3 ns;
    QC <= NOT ( N9 ) AFTER 3 ns;
    QD <= NOT ( N10 ) AFTER 3 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS174\ IS PORT(
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
END \74ALS174\;

ARCHITECTURE model OF \74ALS174\ IS

    BEGIN
    DQFFC_16 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_17 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_18 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_19 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_20 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_21 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS175\ IS PORT(
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
END \74ALS175\;

ARCHITECTURE model OF \74ALS175\ IS

    BEGIN
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q1 , qNot=>\Q\\1\\\ , d=>D1 , clk=>CLK , cl=>CLR );
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q2 , qNot=>\Q\\2\\\ , d=>D2 , clk=>CLK , cl=>CLR );
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q3 , qNot=>\Q\\3\\\ , d=>D3 , clk=>CLK , cl=>CLR );
    DFFC_3 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>12 ns)
      PORT MAP (q=>Q4 , qNot=>\Q\\4\\\ , d=>D4 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS190\ IS PORT(
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
END \74ALS190\;

ARCHITECTURE model OF \74ALS190\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( CLK ) AFTER 17 ns;
    N2 <= NOT ( G ) AFTER 15 ns;
    N3 <= NOT ( LOAD ) AFTER 9 ns;
    JKFFPC_12 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L22 , k=>L22 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_13 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L23 , k=>L23 , clk=>CLK , pr=>L8 , cl=>L10 );
    JKFFPC_14 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L24 , k=>L24 , clk=>CLK , pr=>L11 , cl=>L12 );
    JKFFPC_15 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L25 , k=>L25 , clk=>CLK , pr=>L13 , cl=>L14 );
    N12 <=  ( L4 OR L5 ) AFTER 20 ns;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 19 ns;
    QA <=  ( N4 ) AFTER 12 ns;
    QB <=  ( N6 ) AFTER 12 ns;
    QC <=  ( N8 ) AFTER 12 ns;
    QD <=  ( N10 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS191\ IS PORT(
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
END \74ALS191\;

ARCHITECTURE model OF \74ALS191\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( CLK ) AFTER 17 ns;
    N2 <= NOT ( G ) AFTER 15 ns;
    N3 <= NOT ( LOAD ) AFTER 9 ns;
    JKFFPC_16 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7 );
    JKFFPC_17 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9 );
    JKFFPC_18 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11 );
    JKFFPC_19 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>6 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13 );
    N12 <=  ( L4 OR L5 ) AFTER 20 ns;
    \MX/MN\ <=  N12;
    RCO <= NOT ( N1 AND N2 AND N12 ) AFTER 19 ns;
    QA <=  ( N4 ) AFTER 12 ns;
    QB <=  ( N6 ) AFTER 12 ns;
    QC <=  ( N8 ) AFTER 12 ns;
    QD <=  ( N10 ) AFTER 12 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS192\ IS PORT(
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
END \74ALS192\;

ARCHITECTURE model OF \74ALS192\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( CLR ) AFTER 2 ns;
    N2 <= NOT ( LOAD ) AFTER 15 ns;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ns;
    N4 <= NOT ( L8 OR L9 ) AFTER 0 ns;
    N5 <= NOT ( L10 OR L11 ) AFTER 0 ns;
    N6 <= NOT ( L12 OR L13 OR L14 ) AFTER 0 ns;
    JKFFPC_20 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L19 );
    JKFFPC_21 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L20 );
    JKFFPC_22 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L6 , cl=>L21 );
    JKFFPC_23 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L7 , cl=>L22 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 13 ns;
    CO <= NOT ( N7 AND N13 AND L2 ) AFTER 13 ns;
    QA <=  ( N7 ) AFTER 5 ns;
    QB <=  ( N9 ) AFTER 5 ns;
    QC <=  ( N11 ) AFTER 5 ns;
    QD <=  ( N13 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS193\ IS PORT(
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
END \74ALS193\;

ARCHITECTURE model OF \74ALS193\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( CLR ) AFTER 2 ns;
    N2 <= NOT ( LOAD ) AFTER 15 ns;
    N3 <= NOT ( L1 OR L2 ) AFTER 0 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 0 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 0 ns;
    N6 <= NOT ( L11 OR L12 ) AFTER 0 ns;
    JKFFPC_24 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17 );
    JKFFPC_25 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18 );
    JKFFPC_26 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19 );
    JKFFPC_27 :  ORCAD_JKFFPC 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20 );
    BO <= NOT ( L1 AND N8 AND N10 AND N12 AND N14 ) AFTER 13 ns;
    CO <= NOT ( N7 AND N9 AND N11 AND N13 AND L2 ) AFTER 13 ns;
    QA <=  ( N7 ) AFTER 5 ns;
    QB <=  ( N9 ) AFTER 5 ns;
    QC <=  ( N11 ) AFTER 5 ns;
    QD <=  ( N13 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS240\ IS PORT(
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
END \74ALS240\;

ARCHITECTURE model OF \74ALS240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 9 ns;
    N2 <= NOT ( A2_A ) AFTER 9 ns;
    N3 <= NOT ( A3_A ) AFTER 9 ns;
    N4 <= NOT ( A4_A ) AFTER 9 ns;
    N5 <= NOT ( A1_B ) AFTER 9 ns;
    N6 <= NOT ( A2_B ) AFTER 9 ns;
    N7 <= NOT ( A3_B ) AFTER 9 ns;
    N8 <= NOT ( A4_B ) AFTER 9 ns;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_1 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_2 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_3 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_4 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_5 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_6 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_7 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS240A\ IS PORT(
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
END \74ALS240A\;

ARCHITECTURE model OF \74ALS240A\ IS
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
    N1 <= NOT ( A1_A ) AFTER 9 ns;
    N2 <= NOT ( A2_A ) AFTER 9 ns;
    N3 <= NOT ( A3_A ) AFTER 9 ns;
    N4 <= NOT ( A4_A ) AFTER 9 ns;
    N5 <= NOT ( A1_B ) AFTER 9 ns;
    N6 <= NOT ( A2_B ) AFTER 9 ns;
    N7 <= NOT ( A3_B ) AFTER 9 ns;
    N8 <= NOT ( A4_B ) AFTER 9 ns;
    L1 <= NOT ( G_A );
    L2 <= NOT ( G_B );
    TSB_8 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_9 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_10 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_11 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_12 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_13 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_14 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_15 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>13 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS241\ IS PORT(
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
END \74ALS241\;

ARCHITECTURE model OF \74ALS241\ IS
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
    N1 <=  ( \1A1\ ) AFTER 11 ns;
    N2 <=  ( \1A2\ ) AFTER 11 ns;
    N3 <=  ( \1A3\ ) AFTER 11 ns;
    N4 <=  ( \1A4\ ) AFTER 11 ns;
    N5 <=  ( \2A1\ ) AFTER 11 ns;
    N6 <=  ( \2A2\ ) AFTER 11 ns;
    N7 <=  ( \2A3\ ) AFTER 11 ns;
    N8 <=  ( \2A4\ ) AFTER 11 ns;
    L1 <= NOT ( \1G\ );
    TSB_16 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_17 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_18 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_19 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_20 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_21 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_22 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_23 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS241A\ IS PORT(
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
END \74ALS241A\;

ARCHITECTURE model OF \74ALS241A\ IS
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
    N1 <=  ( \1A1\ ) AFTER 11 ns;
    N2 <=  ( \1A2\ ) AFTER 11 ns;
    N3 <=  ( \1A3\ ) AFTER 11 ns;
    N4 <=  ( \1A4\ ) AFTER 11 ns;
    N5 <=  ( \2A1\ ) AFTER 11 ns;
    N6 <=  ( \2A2\ ) AFTER 11 ns;
    N7 <=  ( \2A3\ ) AFTER 11 ns;
    N8 <=  ( \2A4\ ) AFTER 11 ns;
    L1 <= NOT ( \1G\ );
    TSB_24 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_25 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_26 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_27 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_28 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_29 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_30 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_31 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS242\ IS PORT(
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
END \74ALS242\;

ARCHITECTURE model OF \74ALS242\ IS
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
    TSB_32 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_33 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_34 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_35 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_36 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_37 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_38 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_39 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS242B\ IS PORT(
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
END \74ALS242B\;

ARCHITECTURE model OF \74ALS242B\ IS
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
    TSB_40 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_41 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_42 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_43 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_44 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_45 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_46 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_47 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS243\ IS PORT(
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
END \74ALS243\;

ARCHITECTURE model OF \74ALS243\ IS
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
    TSB_48 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_49 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_50 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_51 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_52 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_53 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_54 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_55 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS243A\ IS PORT(
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
END \74ALS243A\;

ARCHITECTURE model OF \74ALS243A\ IS
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
    TSB_56 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_57 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_58 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_59 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_60 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_61 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_62 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_63 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>22 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS244\ IS PORT(
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
END \74ALS244\;

ARCHITECTURE model OF \74ALS244\ IS
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
    TSB_64 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_65 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_66 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_67 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_68 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_69 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_70 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_71 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS244A\ IS PORT(
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
END \74ALS244A\;

ARCHITECTURE model OF \74ALS244A\ IS
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
    TSB_72 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_73 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_74 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_75 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_76 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_77 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_78 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_79 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS245\ IS PORT(
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
END \74ALS245\;

ARCHITECTURE model OF \74ALS245\ IS
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
    TSB_80 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_81 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_82 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_83 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_84 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_85 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_86 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_87 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_88 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_89 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_90 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_91 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_92 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_93 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_94 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_95 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS245A\ IS PORT(
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
END \74ALS245A\;

ARCHITECTURE model OF \74ALS245A\ IS
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
    TSB_96 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_97 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_98 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_99 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_100 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_101 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_102 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_103 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_104 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_105 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_106 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_107 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_108 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_109 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_110 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_111 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS251\ IS PORT(
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
END \74ALS251\;

ARCHITECTURE model OF \74ALS251\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( A ) AFTER 9 ns;
    N2 <= NOT ( B ) AFTER 9 ns;
    N3 <= NOT ( C ) AFTER 9 ns;
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
    N4 <= NOT ( L13 ) AFTER 13 ns;
    N5 <=  ( L13 ) AFTER 13 ns;
    TSB_112 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>Y , i1=>N4 , en=>L1 );
    TSB_113 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>W , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS253\ IS PORT(
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
END \74ALS253\;

ARCHITECTURE model OF \74ALS253\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
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
    N1 <= NOT ( B ) AFTER 11 ns;
    N2 <= NOT ( A ) AFTER 11 ns;
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
    N3 <=  ( L5 OR L6 OR L7 OR L8 ) AFTER 12 ns;
    N4 <=  ( L9 OR L10 OR L11 OR L12 ) AFTER 12 ns;
    TSB_114 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>14 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\1Y\ , i1=>N3 , en=>L1 );
    TSB_115 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>14 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\2Y\ , i1=>N4 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS257\ IS PORT(
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
END \74ALS257\;

ARCHITECTURE model OF \74ALS257\ IS
    SIGNAL L1 : std_logic;
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
    N1 <= NOT ( \A\\/B\ ) AFTER 10 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <=  ( L3 OR L4 ) AFTER 10 ns;
    N3 <=  ( L5 OR L6 ) AFTER 10 ns;
    N4 <=  ( L7 OR L8 ) AFTER 10 ns;
    N5 <=  ( L9 OR L10 ) AFTER 10 ns;
    TSB_116 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_117 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_118 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_119 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS258\ IS PORT(
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
END \74ALS258\;

ARCHITECTURE model OF \74ALS258\ IS
    SIGNAL L1 : std_logic;
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
    N1 <= NOT ( \A\\/B\ ) AFTER 18 ns;
    L2 <= NOT ( N1 );
    L3 <=  ( \1A\ AND N1 );
    L4 <=  ( \1B\ AND L2 );
    L5 <=  ( \2A\ AND N1 );
    L6 <=  ( \2B\ AND L2 );
    L7 <=  ( \3A\ AND N1 );
    L8 <=  ( \3B\ AND L2 );
    L9 <=  ( \4A\ AND N1 );
    L10 <=  ( \4B\ AND L2 );
    N2 <= NOT ( L3 OR L4 ) AFTER 6 ns;
    N3 <= NOT ( L5 OR L6 ) AFTER 6 ns;
    N4 <= NOT ( L7 OR L8 ) AFTER 6 ns;
    N5 <= NOT ( L9 OR L10 ) AFTER 6 ns;
    TSB_120 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\1Y\ , i1=>N2 , en=>L1 );
    TSB_121 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\2Y\ , i1=>N3 , en=>L1 );
    TSB_122 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\3Y\ , i1=>N4 , en=>L1 );
    TSB_123 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>\4Y\ , i1=>N5 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS259\ IS PORT(
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
END \74ALS259\;

ARCHITECTURE model OF \74ALS259\ IS
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
    N1 <= NOT ( S2 ) AFTER 7 ns;
    N2 <= NOT ( S1 ) AFTER 7 ns;
    N3 <= NOT ( S0 ) AFTER 7 ns;
    N4 <=  ( S2 ) AFTER 7 ns;
    N5 <=  ( S1 ) AFTER 7 ns;
    N6 <=  ( S0 ) AFTER 7 ns;
    N7 <= NOT ( G ) AFTER 5 ns;
    L1 <=  ( N4 AND N5 AND N6 AND N7 );
    L2 <=  ( N4 AND N5 AND N3 AND N7 );
    L3 <=  ( N4 AND N2 AND N6 AND N7 );
    L4 <=  ( N4 AND N2 AND N3 AND N7 );
    L5 <=  ( N1 AND N5 AND N6 AND N7 );
    L6 <=  ( N1 AND N5 AND N3 AND N7 );
    L7 <=  ( N1 AND N2 AND N6 AND N7 );
    L8 <=  ( N1 AND N2 AND N3 AND N7 );
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q7 , d=>D , enable=>L1 , pr=>ONE , cl=>CLR );
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q6 , d=>D , enable=>L2 , pr=>ONE , cl=>CLR );
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q5 , d=>D , enable=>L3 , pr=>ONE , cl=>CLR );
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q4 , d=>D , enable=>L4 , pr=>ONE , cl=>CLR );
    DLATCHPC_4 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q3 , d=>D , enable=>L5 , pr=>ONE , cl=>CLR );
    DLATCHPC_5 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q2 , d=>D , enable=>L6 , pr=>ONE , cl=>CLR );
    DLATCHPC_6 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q1 , d=>D , enable=>L7 , pr=>ONE , cl=>CLR );
    DLATCHPC_7 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>19 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>Q0 , d=>D , enable=>L8 , pr=>ONE , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS273\ IS PORT(
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
END \74ALS273\;

ARCHITECTURE model OF \74ALS273\ IS

    BEGIN
    DQFFC_22 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLR );
    DQFFC_23 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLR );
    DQFFC_24 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLR );
    DQFFC_25 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLR );
    DQFFC_26 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLR );
    DQFFC_27 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLR );
    DQFFC_28 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLR );
    DQFFC_29 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLR );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS280\ IS PORT(
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
END \74ALS280\;

ARCHITECTURE model OF \74ALS280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  ( A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I );
    EVEN <= NOT ( L1 ) AFTER 15 ns;
    ODD <=  ( L1 ) AFTER 17 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS299\ IS PORT(
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
END \74ALS299\;

ARCHITECTURE model OF \74ALS299\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( S1 AND S0 ) AFTER 4 ns;
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
    DQFFC_30 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLR );
    DQFFC_31 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLR );
    DQFFC_32 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLR );
    DQFFC_33 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLR );
    DQFFC_34 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLR );
    DQFFC_35 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLR );
    DQFFC_36 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLR );
    DQFFC_37 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLR );
    N15 <=  ( N7 ) AFTER 9 ns;
    N16 <=  ( N8 ) AFTER 9 ns;
    N17 <=  ( N9 ) AFTER 9 ns;
    N18 <=  ( N10 ) AFTER 9 ns;
    N19 <=  ( N11 ) AFTER 9 ns;
    N20 <=  ( N12 ) AFTER 9 ns;
    N21 <=  ( N13 ) AFTER 9 ns;
    N22 <=  ( N14 ) AFTER 9 ns;
    TSB_124 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N15 , en=>L3 );
    TSB_125 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N16 , en=>L3 );
    TSB_126 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N17 , en=>L3 );
    TSB_127 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N18 , en=>L3 );
    TSB_128 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N19 , en=>L3 );
    TSB_129 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N20 , en=>L3 );
    TSB_130 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N21 , en=>L3 );
    TSB_131 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N22 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 8 ns;
    \Q\\H\\\ <=  ( N14 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS323\ IS PORT(
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
END \74ALS323\;

ARCHITECTURE model OF \74ALS323\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <=  ( S1 AND S0 AND N15 ) AFTER 4 ns;
    N2 <=  ( S1 AND L2 AND N15 ) AFTER 0 ns;
    N3 <=  ( L1 AND S0 AND N15 ) AFTER 0 ns;
    N4 <=  ( L1 AND L2 AND N15 ) AFTER 0 ns;
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
    DQFF_35 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_36 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK );
    DQFF_37 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK );
    DQFF_38 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK );
    DQFF_39 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK );
    DQFF_40 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK );
    DQFF_41 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK );
    DQFF_42 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK );
    N16 <=  ( N7 ) AFTER 9 ns;
    N17 <=  ( N8 ) AFTER 9 ns;
    N18 <=  ( N9 ) AFTER 9 ns;
    N19 <=  ( N10 ) AFTER 9 ns;
    N20 <=  ( N11 ) AFTER 9 ns;
    N21 <=  ( N12 ) AFTER 9 ns;
    N22 <=  ( N13 ) AFTER 9 ns;
    N23 <=  ( N14 ) AFTER 9 ns;
    TSB_132 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\A/QA\ , i1=>N7 , en=>L3 );
    TSB_133 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\B/QB\ , i1=>N8 , en=>L3 );
    TSB_134 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\C/QC\ , i1=>N9 , en=>L3 );
    TSB_135 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\D/QD\ , i1=>N10 , en=>L3 );
    TSB_136 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\E/QE\ , i1=>N11 , en=>L3 );
    TSB_137 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\F/QF\ , i1=>N12 , en=>L3 );
    TSB_138 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\G/QG\ , i1=>N13 , en=>L3 );
    TSB_139 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>16 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>\H/QH\ , i1=>N14 , en=>L3 );
    \Q\\A\\\ <=  ( N7 ) AFTER 8 ns;
    \Q\\H\\\ <=  ( N14 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS352\ IS PORT(
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
END \74ALS352\;

ARCHITECTURE model OF \74ALS352\ IS
    SIGNAL L1 : std_logic;
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
    N1 <= NOT ( \1G\ ) AFTER 7 ns;
    N2 <= NOT ( \2G\ ) AFTER 7 ns;
    N3 <= NOT ( B ) AFTER 8 ns;
    N4 <= NOT ( A ) AFTER 8 ns;
    N5 <=  ( B ) AFTER 8 ns;
    N6 <=  ( A ) AFTER 8 ns;
    L3 <=  ( N1 AND N3 AND N4 AND \1C0\ );
    L4 <=  ( N1 AND N3 AND N6 AND \1C1\ );
    L5 <=  ( N1 AND N5 AND N4 AND \1C2\ );
    L6 <=  ( N1 AND N5 AND N6 AND \1C3\ );
    L7 <=  ( \2C0\ AND N3 AND N4 AND N2 );
    L8 <=  ( \2C1\ AND N3 AND N6 AND N2 );
    L9 <=  ( \2C2\ AND N5 AND N4 AND N2 );
    L10 <=  ( \2C3\ AND N5 AND N6 AND N2 );
    \1Y\ <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 13 ns;
    \2Y\ <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 13 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS353\ IS PORT(
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
END \74ALS353\;

ARCHITECTURE model OF \74ALS353\ IS
    SIGNAL L1 : std_logic;
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
    N1 <= NOT ( B ) AFTER 8 ns;
    N2 <= NOT ( A ) AFTER 8 ns;
    N3 <=  ( B ) AFTER 8 ns;
    N4 <=  ( A ) AFTER 8 ns;
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
    N5 <= NOT ( L3 OR L4 OR L5 OR L6 ) AFTER 13 ns;
    N6 <= NOT ( L7 OR L8 OR L9 OR L10 ) AFTER 13 ns;
    TSB_140 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>13 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\1Y\ , i1=>N5 , en=>L1 );
    TSB_141 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>16 ns, tfall_i1_o=>13 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>\2Y\ , i1=>N6 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS373\ IS PORT(
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
END \74ALS373\;

ARCHITECTURE model OF \74ALS373\ IS
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
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>G );
    DLATCH_4 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>G );
    DLATCH_5 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>G );
    DLATCH_6 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>G );
    DLATCH_7 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>G );
    DLATCH_8 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>G );
    DLATCH_9 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>G );
    DLATCH_10 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>11 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>G );
    TSB_142 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_143 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_144 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_145 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_146 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_147 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_148 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_149 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS374\ IS PORT(
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
END \74ALS374\;

ARCHITECTURE model OF \74ALS374\ IS
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
    DQFF_43 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D0 , clk=>CLK );
    DQFF_44 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D1 , clk=>CLK );
    DQFF_45 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D2 , clk=>CLK );
    DQFF_46 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D3 , clk=>CLK );
    DQFF_47 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D4 , clk=>CLK );
    DQFF_48 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D5 , clk=>CLK );
    DQFF_49 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D6 , clk=>CLK );
    DQFF_50 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D7 , clk=>CLK );
    TSB_150 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q0 , i1=>N1 , en=>L1 );
    TSB_151 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q1 , i1=>N2 , en=>L1 );
    TSB_152 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q2 , i1=>N3 , en=>L1 );
    TSB_153 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q3 , i1=>N4 , en=>L1 );
    TSB_154 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q4 , i1=>N5 , en=>L1 );
    TSB_155 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q5 , i1=>N6 , en=>L1 );
    TSB_156 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q6 , i1=>N7 , en=>L1 );
    TSB_157 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Q7 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS465\ IS PORT(
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
END \74ALS465\;

ARCHITECTURE model OF \74ALS465\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    TSB_158 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_159 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_160 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_161 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_162 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_163 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_164 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_165 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS465A\ IS PORT(
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
END \74ALS465A\;

ARCHITECTURE model OF \74ALS465A\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    TSB_166 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_167 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_168 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_169 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_170 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_171 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_172 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_173 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS466\ IS PORT(
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
END \74ALS466\;

ARCHITECTURE model OF \74ALS466\ IS
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
    TSB_174 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_175 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_176 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_177 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_178 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_179 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_180 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_181 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS466A\ IS PORT(
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
END \74ALS466A\;

ARCHITECTURE model OF \74ALS466A\ IS
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
    TSB_182 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_183 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_184 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_185 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_186 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_187 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_188 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_189 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS467\ IS PORT(
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
END \74ALS467\;

ARCHITECTURE model OF \74ALS467\ IS
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
    N1 <=  ( A1_A ) AFTER 11 ns;
    N2 <=  ( A2_A ) AFTER 11 ns;
    N3 <=  ( A3_A ) AFTER 11 ns;
    N4 <=  ( A4_A ) AFTER 11 ns;
    N5 <=  ( A1_B ) AFTER 11 ns;
    N6 <=  ( A2_B ) AFTER 11 ns;
    N7 <=  ( A3_B ) AFTER 11 ns;
    N8 <=  ( A4_B ) AFTER 11 ns;
    TSB_190 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_191 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_192 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_193 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_194 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_195 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_196 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_197 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS467A\ IS PORT(
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
END \74ALS467A\;

ARCHITECTURE model OF \74ALS467A\ IS
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
    N1 <=  ( A1_A ) AFTER 11 ns;
    N2 <=  ( A2_A ) AFTER 11 ns;
    N3 <=  ( A3_A ) AFTER 11 ns;
    N4 <=  ( A4_A ) AFTER 11 ns;
    N5 <=  ( A1_B ) AFTER 11 ns;
    N6 <=  ( A2_B ) AFTER 11 ns;
    N7 <=  ( A3_B ) AFTER 11 ns;
    N8 <=  ( A4_B ) AFTER 11 ns;
    TSB_198 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_199 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_200 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_201 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_202 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_203 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_204 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_205 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>23 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS468\ IS PORT(
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
END \74ALS468\;

ARCHITECTURE model OF \74ALS468\ IS
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
    TSB_206 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_207 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_208 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_209 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_210 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_211 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_212 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_213 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS468A\ IS PORT(
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
END \74ALS468A\;

ARCHITECTURE model OF \74ALS468A\ IS
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
    TSB_214 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_215 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_216 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_217 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_218 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_219 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_220 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_221 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>16 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS518\ IS PORT(
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
END \74ALS518\;

ARCHITECTURE model OF \74ALS518\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;

    BEGIN
    L1 <= NOT ( P0 XOR Q0 );
    L2 <= NOT ( P1 XOR Q1 );
    L3 <= NOT ( P2 XOR Q2 );
    L4 <= NOT ( P3 XOR Q3 );
    L5 <= NOT ( P4 XOR Q4 );
    L6 <= NOT ( P5 XOR Q5 );
    L7 <= NOT ( P6 XOR Q6 );
    L8 <= NOT ( P7 XOR Q7 );
    L9 <= NOT ( G );
    \P=Q\ <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9 ) AFTER 31 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS519\ IS PORT(
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
END \74ALS519\;

ARCHITECTURE model OF \74ALS519\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;

    BEGIN
    L1 <= NOT ( P0 XOR Q0 );
    L2 <= NOT ( P1 XOR Q1 );
    L3 <= NOT ( P2 XOR Q2 );
    L4 <= NOT ( P3 XOR Q3 );
    L5 <= NOT ( P4 XOR Q4 );
    L6 <= NOT ( P5 XOR Q5 );
    L7 <= NOT ( P6 XOR Q6 );
    L8 <= NOT ( P7 XOR Q7 );
    L9 <= NOT ( G );
    \P=Q\ <=  ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9 ) AFTER 31 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS520\ IS PORT(
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
END \74ALS520\;

ARCHITECTURE model OF \74ALS520\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;

    BEGIN
    L1 <= NOT ( P0 XOR Q0 );
    L2 <= NOT ( P1 XOR Q1 );
    L3 <= NOT ( P2 XOR Q2 );
    L4 <= NOT ( P3 XOR Q3 );
    L5 <= NOT ( P4 XOR Q4 );
    L6 <= NOT ( P5 XOR Q5 );
    L7 <= NOT ( P6 XOR Q6 );
    L8 <= NOT ( P7 XOR Q7 );
    L9 <= NOT ( G );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9 ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS521\ IS PORT(
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
END \74ALS521\;

ARCHITECTURE model OF \74ALS521\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;

    BEGIN
    L1 <= NOT ( P0 XOR Q0 );
    L2 <= NOT ( P1 XOR Q1 );
    L3 <= NOT ( P2 XOR Q2 );
    L4 <= NOT ( P3 XOR Q3 );
    L5 <= NOT ( P4 XOR Q4 );
    L6 <= NOT ( P5 XOR Q5 );
    L7 <= NOT ( P6 XOR Q6 );
    L8 <= NOT ( P7 XOR Q7 );
    L9 <= NOT ( G );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9 ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS522\ IS PORT(
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
END \74ALS522\;

ARCHITECTURE model OF \74ALS522\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL L9 : std_logic;

    BEGIN
    L1 <= NOT ( P0 XOR Q0 );
    L2 <= NOT ( P1 XOR Q1 );
    L3 <= NOT ( P2 XOR Q2 );
    L4 <= NOT ( P3 XOR Q3 );
    L5 <= NOT ( P4 XOR Q4 );
    L6 <= NOT ( P5 XOR Q5 );
    L7 <= NOT ( P6 XOR Q6 );
    L8 <= NOT ( P7 XOR Q7 );
    L9 <= NOT ( G );
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS533\ IS PORT(
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
END \74ALS533\;

ARCHITECTURE model OF \74ALS533\ IS
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
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_12 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_13 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_14 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_15 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_16 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_17 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_18 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_0 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_1 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_2 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_3 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_4 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_5 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_6 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_7 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS534\ IS PORT(
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
END \74ALS534\;

ARCHITECTURE model OF \74ALS534\ IS
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
    DQFF_51 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_52 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_53 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_54 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_55 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_56 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_57 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_58 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>14 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_8 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_9 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_10 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_11 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_12 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_13 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_14 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_15 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>17 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS540\ IS PORT(
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
END \74ALS540\;

ARCHITECTURE model OF \74ALS540\ IS
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
    N1 <= NOT ( A1 ) AFTER 7 ns;
    N2 <= NOT ( A2 ) AFTER 7 ns;
    N3 <= NOT ( A3 ) AFTER 7 ns;
    N4 <= NOT ( A4 ) AFTER 7 ns;
    N5 <= NOT ( A5 ) AFTER 7 ns;
    N6 <= NOT ( A6 ) AFTER 7 ns;
    N7 <= NOT ( A7 ) AFTER 7 ns;
    N8 <= NOT ( A8 ) AFTER 7 ns;
    TSB_222 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_223 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_224 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_225 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_226 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_227 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_228 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_229 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS541\ IS PORT(
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
END \74ALS541\;

ARCHITECTURE model OF \74ALS541\ IS
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
    N1 <=  ( A1 ) AFTER 9 ns;
    N2 <=  ( A2 ) AFTER 9 ns;
    N3 <=  ( A3 ) AFTER 9 ns;
    N4 <=  ( A4 ) AFTER 9 ns;
    N5 <=  ( A5 ) AFTER 9 ns;
    N6 <=  ( A6 ) AFTER 9 ns;
    N7 <=  ( A7 ) AFTER 9 ns;
    N8 <=  ( A8 ) AFTER 9 ns;
    TSB_230 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_231 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_232 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_233 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_234 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_235 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_236 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_237 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS560\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
SLOAD : IN  std_logic;
ALOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS560\;

ARCHITECTURE model OF \74ALS560\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( SCLR );
    L3 <= NOT ( ACLR );
    L4 <= NOT ( ALOAD );
    L5 <=  ( ENT AND ENP AND SLOAD );
    L6 <=  ( L5 AND SCLR );
    L7 <=  ( SLOAD AND SCLR );
    L8 <= NOT ( SLOAD OR L2 );
    L9 <= NOT ( L6 );
    L10 <= NOT ( L7 AND N8 );
    L11 <= NOT ( L6 AND N8 );
    L12 <= NOT ( L7 AND N9 );
    L13 <= NOT ( L6 AND N9 AND N8 );
    L14 <= NOT ( L7 AND N10 );
    L15 <= NOT ( L7 AND N11 );
    L16 <=  ( N4 AND L8 );
    L17 <=  ( L7 AND N8 AND L9 );
    L18 <=  ( L6 AND L10 );
    L19 <=  ( N5 AND L8 );
    L20 <=  ( L11 AND N9 AND L7 );
    L21 <= NOT ( N11 );
    L22 <=  ( L6 AND L21 AND N8 AND L12 );
    L23 <=  ( N6 AND L8 );
    L24 <=  ( L13 AND N10 AND L7 );
    L25 <=  ( L6 AND N9 AND N8 AND L14 );
    L26 <=  ( N7 AND L8 );
    L27 <=  ( L11 AND N11 AND L7 );
    L28 <=  ( L6 AND N10 AND N9 AND N8 AND L15 );
    L29 <=  ( L16 OR L17 OR L18 );
    L30 <=  ( L19 OR L20 OR L22 );
    L31 <=  ( L23 OR L24 OR L25 );
    L32 <=  ( L26 OR L27 OR L28 );
    L33 <= NOT ( A AND L4 AND ACLR );
    L34 <=  ( L33 AND L4 );
    L35 <= NOT ( L34 OR L3 );
    L36 <= NOT ( B AND L4 AND ACLR );
    L37 <=  ( L36 AND L4 );
    L38 <= NOT ( L37 OR L3 );
    L39 <= NOT ( C AND L4 AND ACLR );
    L40 <=  ( L39 AND L4 );
    L41 <= NOT ( L40 OR L3 );
    L42 <= NOT ( D AND L4 AND ACLR );
    L43 <=  ( L42 AND L4 );
    L44 <= NOT ( L43 OR L3 );
    N1 <=  ( ENT ) AFTER 14 ns;
    N2 <=  ( ENT ) AFTER 6 ns;
    N3 <= NOT ( CLK ) AFTER 8 ns;
    N4 <=  ( A ) AFTER 18 ns;
    N5 <=  ( B ) AFTER 18 ns;
    N6 <=  ( C ) AFTER 18 ns;
    N7 <=  ( D ) AFTER 18 ns;
    N17 <=  ( N1 AND ENP ) AFTER 4 ns;
    CCO <=  ( N17 AND N3 AND N19) AFTER 13 ns;
    N19 <=  ( N2 AND N18 AND N12 ) AFTER 5 ns;
    RCO <=  N19;
    DQFFPC_0 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L29 , clk=>CLK , pr=>L33 , cl=>L35 );
    DQFFPC_1 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L30 , clk=>CLK , pr=>L36 , cl=>L38 );
    DQFFPC_2 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L31 , clk=>CLK , pr=>L39 , cl=>L41 );
    DQFFPC_3 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L32 , clk=>CLK , pr=>L42 , cl=>L44 );
    N12 <=  ( N8 ) AFTER 14 ns;
    N18 <=  ( N11 ) AFTER 14 ns;
    N13 <=  ( N8 ) AFTER 8 ns;
    N14 <=  ( N9 ) AFTER 8 ns;
    N15 <=  ( N10 ) AFTER 8 ns;
    N16 <=  ( N11 ) AFTER 8 ns;
    TSB_238 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QA , i1=>N13 , en=>L1 );
    TSB_239 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QB , i1=>N14 , en=>L1 );
    TSB_240 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QC , i1=>N15 , en=>L1 );
    TSB_241 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QD , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS560A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
SLOAD : IN  std_logic;
ALOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS560A\;

ARCHITECTURE model OF \74ALS560A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( SCLR );
    L3 <= NOT ( ACLR );
    L4 <= NOT ( ALOAD );
    L5 <=  ( ENT AND ENP AND SLOAD );
    L6 <=  ( L5 AND SCLR );
    L7 <=  ( SLOAD AND SCLR );
    L8 <= NOT ( SLOAD OR L2 );
    L9 <= NOT ( L6 );
    L10 <= NOT ( L7 AND N8 );
    L11 <= NOT ( L6 AND N8 );
    L12 <= NOT ( L7 AND N9 );
    L13 <= NOT ( L6 AND N9 AND N8 );
    L14 <= NOT ( L7 AND N10 );
    L15 <= NOT ( L7 AND N11 );
    L16 <=  ( N4 AND L8 );
    L17 <=  ( L7 AND N8 AND L9 );
    L18 <=  ( L6 AND L10 );
    L19 <=  ( N5 AND L8 );
    L20 <=  ( L11 AND N9 AND L7 );
    L21 <= NOT ( N11 );
    L22 <=  ( L6 AND L21 AND N8 AND L12 );
    L23 <=  ( N6 AND L8 );
    L24 <=  ( L13 AND N10 AND L7 );
    L25 <=  ( L6 AND N9 AND N8 AND L14 );
    L26 <=  ( N7 AND L8 );
    L27 <=  ( L11 AND N11 AND L7 );
    L28 <=  ( L6 AND N10 AND N9 AND N8 AND L15 );
    L29 <=  ( L16 OR L17 OR L18 );
    L30 <=  ( L19 OR L20 OR L22 );
    L31 <=  ( L23 OR L24 OR L25 );
    L32 <=  ( L26 OR L27 OR L28 );
    L33 <= NOT ( A AND L4 AND ACLR );
    L34 <=  ( L33 AND L4 );
    L35 <= NOT ( L34 OR L3 );
    L36 <= NOT ( B AND L4 AND ACLR );
    L37 <=  ( L36 AND L4 );
    L38 <= NOT ( L37 OR L3 );
    L39 <= NOT ( C AND L4 AND ACLR );
    L40 <=  ( L39 AND L4 );
    L41 <= NOT ( L40 OR L3 );
    L42 <= NOT ( D AND L4 AND ACLR );
    L43 <=  ( L42 AND L4 );
    L44 <= NOT ( L43 OR L3 );
    N1 <=  ( ENT ) AFTER 14 ns;
    N2 <=  ( ENT ) AFTER 6 ns;
    N3 <= NOT ( CLK ) AFTER 8 ns;
    N4 <=  ( A ) AFTER 18 ns;
    N5 <=  ( B ) AFTER 18 ns;
    N6 <=  ( C ) AFTER 18 ns;
    N7 <=  ( D ) AFTER 18 ns;
    N17 <=  ( N1 AND ENP ) AFTER 4 ns;
    CCO <=  ( N17 AND N3 AND N19 ) AFTER 13 ns;
    N19 <=  ( N2 AND N18 AND N12 ) AFTER 5 ns;
    RCO <=  N19;
    DQFFPC_4 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L29 , clk=>CLK , pr=>L33 , cl=>L35 );
    DQFFPC_5 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L30 , clk=>CLK , pr=>L36 , cl=>L38 );
    DQFFPC_6 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L31 , clk=>CLK , pr=>L39 , cl=>L41 );
    DQFFPC_7 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L32 , clk=>CLK , pr=>L42 , cl=>L44 );
    N12 <=  ( N8 ) AFTER 14 ns;
    N18 <=  ( N11 ) AFTER 14 ns;
    N13 <=  ( N8 ) AFTER 8 ns;
    N14 <=  ( N9 ) AFTER 8 ns;
    N15 <=  ( N10 ) AFTER 8 ns;
    N16 <=  ( N11 ) AFTER 8 ns;
    TSB_242 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QA , i1=>N13 , en=>L1 );
    TSB_243 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QB , i1=>N14 , en=>L1 );
    TSB_244 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QC , i1=>N15 , en=>L1 );
    TSB_245 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QD , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS561\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
SLOAD : IN  std_logic;
ALOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS561\;

ARCHITECTURE model OF \74ALS561\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;
    SIGNAL N21 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( SCLR );
    L3 <= NOT ( ACLR );
    L4 <= NOT ( ALOAD );
    L5 <=  ( ENT AND ENP AND SLOAD );
    L6 <=  ( L5 AND SCLR );
    L7 <=  ( SLOAD AND SCLR );
    L8 <= NOT ( SLOAD OR L2 );
    L9 <= NOT ( L6 );
    L10 <= NOT ( L7 AND N8 );
    L11 <= NOT ( L6 AND N8 );
    L12 <= NOT ( L7 AND N9 );
    L13 <= NOT ( L6 AND N9 AND N8 );
    L14 <= NOT ( L7 AND N10 );
    L15 <= NOT ( L6 AND N10 AND N9 AND N8 );
    L16 <= NOT ( L7 AND N11 );
    L17 <=  ( N4 AND L8 );
    L18 <=  ( L7 AND N8 AND L9 );
    L19 <=  ( L6 AND L10 );
    L20 <=  ( N5 AND L8 );
    L21 <=  ( L11 AND N9 AND L7 );
    L22 <=  ( L6 AND N8 AND L12 );
    L23 <=  ( N6 AND L8 );
    L24 <=  ( L13 AND N10 AND L7 );
    L25 <=  ( L6 AND N9 AND N8 AND L14 );
    L26 <=  ( N7 AND L8 );
    L27 <=  ( L15 AND N11 AND L7 );
    L28 <=  ( L6 AND N10 AND N9 AND N8 AND L16 );
    L29 <=  ( L17 OR L18 OR L19 );
    L30 <=  ( L20 OR L21 OR L22 );
    L31 <=  ( L23 OR L24 OR L25 );
    L32 <=  ( L26 OR L27 OR L28 );
    L33 <= NOT ( A AND L4 AND ACLR );
    L34 <=  ( L33 AND L4 );
    L35 <= NOT ( L34 OR L3 );
    L36 <= NOT ( B AND L4 AND ACLR );
    L37 <=  ( L36 AND L4 );
    L38 <= NOT ( L37 OR L3 );
    L39 <= NOT ( C AND L4 AND ACLR );
    L40 <=  ( L39 AND L4 );
    L41 <= NOT ( L40 OR L3 );
    L42 <= NOT ( D AND L4 AND ACLR );
    L43 <=  ( L42 AND L4 );
    L44 <= NOT ( L43 OR L3 );
    N1 <=  ( ENT ) AFTER 14 ns;
    N2 <=  ( ENT ) AFTER 6 ns;
    N3 <= NOT ( CLK ) AFTER 8 ns;
    N4 <=  ( A ) AFTER 18 ns;
    N5 <=  ( B ) AFTER 18 ns;
    N6 <=  ( C ) AFTER 18 ns;
    N7 <=  ( D ) AFTER 18 ns;
    N17 <=  ( N1 AND ENP ) AFTER 4 ns;
    CCO <=  ( N17 AND N3 AND N21 ) AFTER 13 ns;
    N21 <=  ( N2 AND N18 AND N19 AND N20 AND N12 ) AFTER 5 ns;
    RCO <=  N21;
    DQFFPC_8 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L29 , clk=>CLK , pr=>L33 , cl=>L35 );
    DQFFPC_9 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L30 , clk=>CLK , pr=>L36 , cl=>L38 );
    DQFFPC_10 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L31 , clk=>CLK , pr=>L39 , cl=>L41 );
    DQFFPC_11 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L32 , clk=>CLK , pr=>L42 , cl=>L44 );
    N12 <=  ( N8 ) AFTER 14 ns;
    N20 <=  ( N9 ) AFTER 14 ns;
    N19 <=  ( N10 ) AFTER 14 ns;
    N18 <=  ( N11 ) AFTER 14 ns;
    N13 <=  ( N8 ) AFTER 8 ns;
    N14 <=  ( N9 ) AFTER 8 ns;
    N15 <=  ( N10 ) AFTER 8 ns;
    N16 <=  ( N11 ) AFTER 8 ns;
    TSB_246 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QA , i1=>N13 , en=>L1 );
    TSB_247 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QB , i1=>N14 , en=>L1 );
    TSB_248 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QC , i1=>N15 , en=>L1 );
    TSB_249 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QD , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS561A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
SLOAD : IN  std_logic;
ALOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS561A\;

ARCHITECTURE model OF \74ALS561A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N16 : std_logic;
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;
    SIGNAL N19 : std_logic;
    SIGNAL N20 : std_logic;
    SIGNAL N21 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( SCLR );
    L3 <= NOT ( ACLR );
    L4 <= NOT ( ALOAD );
    L5 <=  ( ENT AND ENP AND SLOAD );
    L6 <=  ( L5 AND SCLR );
    L7 <=  ( SLOAD AND SCLR );
    L8 <= NOT ( SLOAD OR L2 );
    L9 <= NOT ( L6 );
    L10 <= NOT ( L7 AND N8 );
    L11 <= NOT ( L6 AND N8 );
    L12 <= NOT ( L7 AND N9 );
    L13 <= NOT ( L6 AND N9 AND N8 );
    L14 <= NOT ( L7 AND N10 );
    L15 <= NOT ( L6 AND N10 AND N9 AND N8 );
    L16 <= NOT ( L7 AND N11 );
    L17 <=  ( N4 AND L8 );
    L18 <=  ( L7 AND N8 AND L9 );
    L19 <=  ( L6 AND L10 );
    L20 <=  ( N5 AND L8 );
    L21 <=  ( L11 AND N9 AND L7 );
    L22 <=  ( L6 AND N8 AND L12 );
    L23 <=  ( N6 AND L8 );
    L24 <=  ( L13 AND N10 AND L7 );
    L25 <=  ( L6 AND N9 AND N8 AND L14 );
    L26 <=  ( N7 AND L8 );
    L27 <=  ( L15 AND N11 AND L7 );
    L28 <=  ( L6 AND N10 AND N9 AND N8 AND L16 );
    L29 <=  ( L17 OR L18 OR L19 );
    L30 <=  ( L20 OR L21 OR L22 );
    L31 <=  ( L23 OR L24 OR L25 );
    L32 <=  ( L26 OR L27 OR L28 );
    L33 <= NOT ( A AND L4 AND ACLR );
    L34 <=  ( L33 AND L4 );
    L35 <= NOT ( L34 OR L3 );
    L36 <= NOT ( B AND L4 AND ACLR );
    L37 <=  ( L36 AND L4 );
    L38 <= NOT ( L37 OR L3 );
    L39 <= NOT ( C AND L4 AND ACLR );
    L40 <=  ( L39 AND L4 );
    L41 <= NOT ( L40 OR L3 );
    L42 <= NOT ( D AND L4 AND ACLR );
    L43 <=  ( L42 AND L4 );
    L44 <= NOT ( L43 OR L3 );
    N1 <=  ( ENT ) AFTER 14 ns;
    N2 <=  ( ENT ) AFTER 6 ns;
    N3 <= NOT ( CLK ) AFTER 8 ns;
    N4 <=  ( A ) AFTER 18 ns;
    N5 <=  ( B ) AFTER 18 ns;
    N6 <=  ( C ) AFTER 18 ns;
    N7 <=  ( D ) AFTER 18 ns;
    N17 <=  ( N1 AND ENP ) AFTER 4 ns;
    CCO <=  ( N17 AND N3 AND N21 ) AFTER 13 ns;
    N21 <=  ( N2 AND N18 AND N19 AND N20 AND N12 ) AFTER 5 ns;
    RCO <=  N21;
    DQFFPC_12 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>L29 , clk=>CLK , pr=>L33 , cl=>L35 );
    DQFFPC_13 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>L30 , clk=>CLK , pr=>L36 , cl=>L38 );
    DQFFPC_14 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>L31 , clk=>CLK , pr=>L39 , cl=>L41 );
    DQFFPC_15 :  ORCAD_DQFFPC 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>L32 , clk=>CLK , pr=>L42 , cl=>L44 );
    N12 <=  ( N8 ) AFTER 14 ns;
    N20 <=  ( N9 ) AFTER 14 ns;
    N19 <=  ( N10 ) AFTER 14 ns;
    N18 <=  ( N11 ) AFTER 14 ns;
    N13 <=  ( N8 ) AFTER 8 ns;
    N14 <=  ( N9 ) AFTER 8 ns;
    N15 <=  ( N10 ) AFTER 8 ns;
    N16 <=  ( N11 ) AFTER 8 ns;
    TSB_250 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QA , i1=>N13 , en=>L1 );
    TSB_251 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QB , i1=>N14 , en=>L1 );
    TSB_252 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QC , i1=>N15 , en=>L1 );
    TSB_253 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>23 ns, tfall_i1_o=>19 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>QD , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS563\ IS PORT(
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
END \74ALS563\;

ARCHITECTURE model OF \74ALS563\ IS
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
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_20 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_21 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_22 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_23 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_24 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_25 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_26 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_16 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_17 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_18 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_19 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_20 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_21 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_22 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_23 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS563A\ IS PORT(
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
END \74ALS563A\;

ARCHITECTURE model OF \74ALS563A\ IS
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
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_28 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_29 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_30 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_31 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_32 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_33 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_34 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_24 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_25 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_26 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_27 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_28 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_29 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_30 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_31 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS564\ IS PORT(
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
END \74ALS564\;

ARCHITECTURE model OF \74ALS564\ IS
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
    DQFF_59 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_60 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_61 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_62 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_63 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_64 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_65 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_66 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_32 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_33 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_34 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_35 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_36 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_37 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_38 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_39 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS564A\ IS PORT(
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
END \74ALS564A\;

ARCHITECTURE model OF \74ALS564A\ IS
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
    DQFF_67 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_68 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_69 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_70 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_71 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_72 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_73 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_74 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_40 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_41 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_42 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_43 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_44 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_45 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_46 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_47 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS568\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
\U/D\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS568\;

ARCHITECTURE model OF \74ALS568\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N1 : std_logic;
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
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( SCLR );
    L4 <= NOT ( ENT );
    L5 <= NOT ( N20 );
    L6 <= NOT ( N3 OR ENP );
    L7 <= NOT ( L3 OR LOAD );
    L8 <=  ( SCLR AND LOAD );
    L9 <= NOT ( ENT OR ENP OR L3 OR L7 );
    L10 <= NOT ( L9 );
    L11 <=  ( N5 AND L2 );
    L12 <=  ( N4 AND N1 );
    L13 <=  ( N7 AND L2 );
    L14 <=  ( N6 AND N1 );
    L15 <=  ( N9 AND L2 );
    L16 <=  ( N8 AND N1 );
    L17 <=  ( N11 AND L2 );
    L18 <=  ( N10 AND N1 );
    L19 <= NOT ( L11 OR L12 );
    L20 <= NOT ( L13 OR L14 );
    L21 <= NOT ( L15 OR L16 );
    L22 <= NOT ( L17 OR L18 );
    L23 <= NOT ( N4 AND L8 );
    L24 <= NOT ( L19 AND L9 );
    L25 <= NOT ( L19 AND L20 AND L9 );
    L26 <= NOT ( N8 AND L8 );
    L27 <= NOT ( L19 AND L9 );
    L28 <= NOT ( N10 AND L8 );
    L29 <= NOT ( L2 AND L22 );
    L30 <= NOT ( N9 AND N1 AND N11 );
    L31 <=  ( A AND L7 );
    L32 <=  ( L8 AND L10 AND N4 );
    L33 <=  ( L9 AND L23 );
    L34 <=  ( B AND L7 );
    L35 <=  ( L24 AND L8 AND N6 );
    L36 <=  ( L19 AND L9 AND L30 AND L29 AND N7 );
    L37 <=  ( C AND L7 );
    L38 <=  ( L25 AND L8 AND N8 );
    L39 <=  ( L20 AND L19 AND L9 AND L26 AND L30 );
    L40 <=  ( D AND L7 );
    L41 <=  ( L27 AND L8 AND N10 );
    L42 <=  ( L21 AND L20 AND L19 AND L9 AND L28 );
    L43 <=  ( L31 OR L32 OR L33 );
    L44 <=  ( L34 OR L35 OR L36 );
    L45 <=  ( L37 OR L38 OR L39 );
    L46 <=  ( L40 OR L41 OR L42 );
    L47 <=  ( L2 AND N15 AND N12 AND L4 );
    L48 <=  ( L4 AND N12 AND N13 AND N14 AND N15 AND N1 );
    N1 <= NOT ( \U/D\\\ ) AFTER 6 ns;
    N2 <= NOT ( CLK ) AFTER 11 ns;
    N3 <=  ( ENT ) AFTER 9 ns;
    DFFC_4 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N4 , qNot=>N5 , d=>L43 , clk=>CLK , cl=>ACLR );
    DFFC_5 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N6 , qNot=>N7 , d=>L44 , clk=>CLK , cl=>ACLR );
    DFFC_6 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N8 , qNot=>N9 , d=>L45 , clk=>CLK , cl=>ACLR );
    DFFC_7 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N10 , qNot=>N11 , d=>L46 , clk=>CLK , cl=>ACLR );
    N12 <=  ( L19 ) AFTER 9 ns;
    N13 <=  ( L20 ) AFTER 9 ns;
    N14 <=  ( L21 ) AFTER 9 ns;
    N15 <=  ( L22 ) AFTER 9 ns;
    N16 <=  ( N4 ) AFTER 7 ns;
    N17 <=  ( N6 ) AFTER 7 ns;
    N18 <=  ( N8 ) AFTER 7 ns;
    N19 <=  ( N10 ) AFTER 7 ns;
    CCO <= NOT ( N2 AND L6 AND L5 ) AFTER 9 ns;
    N20 <= NOT ( L47 OR L48 ) AFTER 10 ns;
    RCO <= N20;
    TSB_254 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QA , i1=>N16 , en=>L1 );
    TSB_255 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QB , i1=>N17 , en=>L1 );
    TSB_256 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QC , i1=>N18 , en=>L1 );
    TSB_257 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QD , i1=>N19 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS568A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
\U/D\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS568A\;

ARCHITECTURE model OF \74ALS568A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N1 : std_logic;
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
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( SCLR );
    L4 <= NOT ( ENT );
    L5 <= NOT ( N20 );
    L6 <= NOT ( N3 OR ENP );
    L7 <= NOT ( L3 OR LOAD );
    L8 <=  ( SCLR AND LOAD );
    L9 <= NOT ( ENT OR ENP OR L3 OR L7 );
    L10 <= NOT ( L9 );
    L11 <=  ( N5 AND L2 );
    L12 <=  ( N4 AND N1 );
    L13 <=  ( N7 AND L2 );
    L14 <=  ( N6 AND N1 );
    L15 <=  ( N9 AND L2 );
    L16 <=  ( N8 AND N1 );
    L17 <=  ( N11 AND L2 );
    L18 <=  ( N10 AND N1 );
    L19 <= NOT ( L11 OR L12 );
    L20 <= NOT ( L13 OR L14 );
    L21 <= NOT ( L15 OR L16 );
    L22 <= NOT ( L17 OR L18 );
    L23 <= NOT ( N4 AND L8 );
    L24 <= NOT ( L19 AND L9 );
    L25 <= NOT ( L19 AND L20 AND L9 );
    L26 <= NOT ( N8 AND L8 );
    L27 <= NOT ( L19 AND L9 );
    L28 <= NOT ( N10 AND L8 );
    L29 <= NOT ( L2 AND L22 );
    L30 <= NOT ( N9 AND N1 AND N11 );
    L31 <=  ( A AND L7 );
    L32 <=  ( L8 AND L10 AND N4 );
    L33 <=  ( L9 AND L23 );
    L34 <=  ( B AND L7 );
    L35 <=  ( L24 AND L8 AND N6 );
    L36 <=  ( L19 AND L9 AND L30 AND L29 AND N7 );
    L37 <=  ( C AND L7 );
    L38 <=  ( L25 AND L8 AND N8 );
    L39 <=  ( L20 AND L19 AND L9 AND L26 AND L30 );
    L40 <=  ( D AND L7 );
    L41 <=  ( L27 AND L8 AND N10 );
    L42 <=  ( L21 AND L20 AND L19 AND L9 AND L28 );
    L43 <=  ( L31 OR L32 OR L33 );
    L44 <=  ( L34 OR L35 OR L36 );
    L45 <=  ( L37 OR L38 OR L39 );
    L46 <=  ( L40 OR L41 OR L42 );
    L47 <=  ( L2 AND N15 AND N12 AND L4 );
    L48 <=  ( L4 AND N12 AND N13 AND N14 AND N15 AND N1 );
    N1 <= NOT ( \U/D\\\ ) AFTER 6 ns;
    N2 <= NOT ( CLK ) AFTER 11 ns;
    N3 <=  ( ENT ) AFTER 9 ns;
    DFFC_8 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N4 , qNot=>N5 , d=>L43 , clk=>CLK , cl=>ACLR );
    DFFC_9 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N6 , qNot=>N7 , d=>L44 , clk=>CLK , cl=>ACLR );
    DFFC_10 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N8 , qNot=>N9 , d=>L45 , clk=>CLK , cl=>ACLR );
    DFFC_11 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N10 , qNot=>N11 , d=>L46 , clk=>CLK , cl=>ACLR );
    N12 <=  ( L19 ) AFTER 9 ns;
    N13 <=  ( L20 ) AFTER 9 ns;
    N14 <=  ( L21 ) AFTER 9 ns;
    N15 <=  ( L22 ) AFTER 9 ns;
    N16 <=  ( N4 ) AFTER 7 ns;
    N17 <=  ( N6 ) AFTER 7 ns;
    N18 <=  ( N8 ) AFTER 7 ns;
    N19 <=  ( N10 ) AFTER 7 ns;
    CCO <= NOT ( N2 AND L6 AND L5 ) AFTER 9 ns;
    N20 <= NOT ( L47 OR L48 ) AFTER 10 ns;
    RCO <= N20;
    TSB_258 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QA , i1=>N16 , en=>L1 );
    TSB_259 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QB , i1=>N17 , en=>L1 );
    TSB_260 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QC , i1=>N18 , en=>L1 );
    TSB_261 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QD , i1=>N19 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS569\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
\U/D\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS569\;

ARCHITECTURE model OF \74ALS569\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N1 : std_logic;
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
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( SCLR );
    L4 <= NOT ( ENT );
    L5 <= NOT ( N3 OR ENP );
    L6 <= NOT ( L3 OR LOAD );
    L7 <=  ( SCLR AND LOAD );
    L8 <= NOT ( N6 AND L7 );
    L9 <= NOT ( ENT OR ENP OR L3 OR L6 );
    L10 <= NOT ( L9 );
    L11 <=  ( N5 AND L2 );
    L12 <=  ( N4 AND N1 );
    L13 <=  ( N7 AND L2 );
    L14 <=  ( N6 AND N1 );
    L15 <=  ( N9 AND L2 );
    L16 <=  ( N8 AND N1 );
    L17 <=  ( N11 AND L2 );
    L18 <=  ( N10 AND N1 );
    L19 <= NOT ( L11 OR L12 );
    L20 <= NOT ( L13 OR L14 );
    L21 <= NOT ( L15 OR L16 );
    L22 <= NOT ( L17 OR L18 );
    L23 <= NOT ( N4 AND L7 );
    L24 <= NOT ( L19 AND L9 );
    L25 <= NOT ( L19 AND L20 AND L9 );
    L26 <= NOT ( N8 AND L7 );
    L27 <= NOT ( L9 AND L21 AND L20 AND L19 );
    L28 <= NOT ( N10 AND L7 );
    L29 <=  ( A AND L6 );
    L30 <=  ( L7 AND L10 AND N4 );
    L31 <=  ( L9 AND L23 );
    L32 <=  ( B AND L6 );
    L33 <=  ( L24 AND L7 AND N6 );
    L34 <=  ( L19 AND L9 AND L8 );
    L35 <=  ( C AND L6 );
    L36 <=  ( L25 AND L7 AND N8 );
    L37 <=  ( L20 AND L19 AND L9 AND L26 );
    L38 <=  ( D AND L6 );
    L39 <=  ( L27 AND L7 AND N10 );
    L40 <=  ( L21 AND L20 AND L19 AND L9 AND L28 );
    L41 <=  ( L29 OR L30 OR L31 );
    L42 <=  ( L32 OR L33 OR L34 );
    L43 <=  ( L35 OR L36 OR L37 );
    L44 <=  ( L38 OR L39 OR L40 );
    L45 <=  ( L2 AND N15 AND N14 AND N13 AND N12 AND L4 );
    L46 <=  ( L4 AND N12 AND N13 AND N14 AND N15 AND N1 );
    L47 <= NOT ( N20 );
    N1 <= NOT ( \U/D\\\ ) AFTER 6 ns;
    N2 <= NOT ( CLK ) AFTER 11 ns;
    N3 <=  ( ENT ) AFTER 9 ns;
    DFFC_12 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N4 , qNot=>N5 , d=>L41 , clk=>CLK , cl=>ACLR );
    DFFC_13 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N6 , qNot=>N7 , d=>L42 , clk=>CLK , cl=>ACLR );
    DFFC_14 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N8 , qNot=>N9 , d=>L43 , clk=>CLK , cl=>ACLR );
    DFFC_15 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N10 , qNot=>N11 , d=>L44 , clk=>CLK , cl=>ACLR );
    N12 <=  ( L19 ) AFTER 9 ns;
    N13 <=  ( L20 ) AFTER 9 ns;
    N14 <=  ( L21 ) AFTER 9 ns;
    N15 <=  ( L22 ) AFTER 9 ns;
    N16 <=  ( N4 ) AFTER 7 ns;
    N17 <=  ( N6 ) AFTER 7 ns;
    N18 <=  ( N8 ) AFTER 7 ns;
    N19 <=  ( N10 ) AFTER 7 ns;
    CCO <= NOT ( N2 AND L5 AND L47 ) AFTER 9 ns;
    N20 <= NOT ( L45 OR L46 ) AFTER 10 ns;
    RCO <= N20;
    TSB_262 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QA , i1=>N16 , en=>L1 );
    TSB_263 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QB , i1=>N17 , en=>L1 );
    TSB_264 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QC , i1=>N18 , en=>L1 );
    TSB_265 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QD , i1=>N19 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS569A\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CLK : IN  std_logic;
LOAD : IN  std_logic;
SCLR : IN  std_logic;
ACLR : IN  std_logic;
\U/D\\\ : IN  std_logic;
G : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
RCO : OUT  std_logic;
CCO : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS569A\;

ARCHITECTURE model OF \74ALS569A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N1 : std_logic;
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
    L1 <= NOT ( G );
    L2 <= NOT ( N1 );
    L3 <= NOT ( SCLR );
    L4 <= NOT ( ENT );
    L5 <= NOT ( N3 OR ENP );
    L6 <= NOT ( L3 OR LOAD );
    L7 <=  ( SCLR AND LOAD );
    L8 <= NOT ( N6 AND L7 );
    L9 <= NOT ( ENT OR ENP OR L3 OR L6 );
    L10 <= NOT ( L9 );
    L11 <=  ( N5 AND L2 );
    L12 <=  ( N4 AND N1 );
    L13 <=  ( N7 AND L2 );
    L14 <=  ( N6 AND N1 );
    L15 <=  ( N9 AND L2 );
    L16 <=  ( N8 AND N1 );
    L17 <=  ( N11 AND L2 );
    L18 <=  ( N10 AND N1 );
    L19 <= NOT ( L11 OR L12 );
    L20 <= NOT ( L13 OR L14 );
    L21 <= NOT ( L15 OR L16 );
    L22 <= NOT ( L17 OR L18 );
    L23 <= NOT ( N4 AND L7 );
    L24 <= NOT ( L19 AND L9 );
    L25 <= NOT ( L19 AND L20 AND L9 );
    L26 <= NOT ( N8 AND L7 );
    L27 <= NOT ( L9 AND L21 AND L20 AND L19 );
    L28 <= NOT ( N10 AND L7 );
    L29 <=  ( A AND L6 );
    L30 <=  ( L7 AND L10 AND N4 );
    L31 <=  ( L9 AND L23 );
    L32 <=  ( B AND L6 );
    L33 <=  ( L24 AND L7 AND N6 );
    L34 <=  ( L19 AND L9 AND L8 );
    L35 <=  ( C AND L6 );
    L36 <=  ( L25 AND L7 AND N8 );
    L37 <=  ( L20 AND L19 AND L9 AND L26 );
    L38 <=  ( D AND L6 );
    L39 <=  ( L27 AND L7 AND N10 );
    L40 <=  ( L21 AND L20 AND L19 AND L9 AND L28 );
    L41 <=  ( L29 OR L30 OR L31 );
    L42 <=  ( L32 OR L33 OR L34 );
    L43 <=  ( L35 OR L36 OR L37 );
    L44 <=  ( L38 OR L39 OR L40 );
    L45 <=  ( L2 AND N15 AND N14 AND N13 AND N12 AND L4 );
    L46 <=  ( L4 AND N12 AND N13 AND N14 AND N15 AND N1 );
    L47 <= NOT ( N20 );
    N1 <= NOT ( \U/D\\\ ) AFTER 6 ns;
    N2 <= NOT ( CLK ) AFTER 11 ns;
    N3 <=  ( ENT ) AFTER 9 ns;
    DFFC_16 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N4 , qNot=>N5 , d=>L41 , clk=>CLK , cl=>ACLR );
    DFFC_17 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N6 , qNot=>N7 , d=>L42 , clk=>CLK , cl=>ACLR );
    DFFC_18 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N8 , qNot=>N9 , d=>L43 , clk=>CLK , cl=>ACLR );
    DFFC_19 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>4 ns)
      PORT MAP (q=>N10 , qNot=>N11 , d=>L44 , clk=>CLK , cl=>ACLR );
    N12 <=  ( L19 ) AFTER 9 ns;
    N13 <=  ( L20 ) AFTER 9 ns;
    N14 <=  ( L21 ) AFTER 9 ns;
    N15 <=  ( L22 ) AFTER 9 ns;
    N16 <=  ( N4 ) AFTER 7 ns;
    N17 <=  ( N6 ) AFTER 7 ns;
    N18 <=  ( N8 ) AFTER 7 ns;
    N19 <=  ( N10 ) AFTER 7 ns;
    CCO <= NOT ( N2 AND L5 AND L47 ) AFTER 9 ns;
    N20 <= NOT ( L45 OR L46 ) AFTER 10 ns;
    RCO <= N20;
    TSB_266 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QA , i1=>N16 , en=>L1 );
    TSB_267 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QB , i1=>N17 , en=>L1 );
    TSB_268 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QC , i1=>N18 , en=>L1 );
    TSB_269 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>QD , i1=>N19 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS574\ IS PORT(
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
END \74ALS574\;

ARCHITECTURE model OF \74ALS574\ IS
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
    DQFF_75 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_76 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_77 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_78 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_79 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_80 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_81 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_82 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_270 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_271 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_272 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_273 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_274 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_275 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_276 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_277 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS574A\ IS PORT(
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
END \74ALS574A\;

ARCHITECTURE model OF \74ALS574A\ IS
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
    DQFF_83 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_84 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_85 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_86 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_87 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_88 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_89 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_90 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    TSB_278 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_279 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_280 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_281 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_282 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_283 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_284 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_285 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS575\ IS PORT(
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
END \74ALS575\;

ARCHITECTURE model OF \74ALS575\ IS
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
    DQFF_91 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_92 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_93 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_94 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_95 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_96 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_97 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_98 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    TSB_286 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_287 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_288 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_289 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_290 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_291 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_292 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_293 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS575A\ IS PORT(
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
END \74ALS575A\;

ARCHITECTURE model OF \74ALS575A\ IS
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
    DQFF_99 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_100 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_101 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_102 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_103 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_104 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_105 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_106 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    TSB_294 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_295 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_296 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_297 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_298 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_299 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_300 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_301 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS576\ IS PORT(
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
END \74ALS576\;

ARCHITECTURE model OF \74ALS576\ IS
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
    DQFF_107 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_108 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_109 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_110 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_111 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_112 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_113 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_114 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_48 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_49 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_50 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_51 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_52 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_53 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_54 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_55 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS576A\ IS PORT(
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
END \74ALS576A\;

ARCHITECTURE model OF \74ALS576A\ IS
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
    DQFF_115 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK );
    DQFF_116 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK );
    DQFF_117 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK );
    DQFF_118 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK );
    DQFF_119 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK );
    DQFF_120 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK );
    DQFF_121 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK );
    DQFF_122 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK );
    ITSB_56 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_57 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_58 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_59 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_60 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_61 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_62 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_63 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS577\ IS PORT(
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
END \74ALS577\;

ARCHITECTURE model OF \74ALS577\ IS
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
    DQFF_123 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_124 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_125 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_126 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_127 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_128 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_129 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_130 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    ITSB_64 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_65 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_66 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_67 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_68 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_69 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_70 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_71 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS577A\ IS PORT(
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
END \74ALS577A\;

ARCHITECTURE model OF \74ALS577A\ IS
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
    DQFF_131 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>L2 , clk=>CLK );
    DQFF_132 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>L3 , clk=>CLK );
    DQFF_133 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>L4 , clk=>CLK );
    DQFF_134 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>L5 , clk=>CLK );
    DQFF_135 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>L6 , clk=>CLK );
    DQFF_136 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>L7 , clk=>CLK );
    DQFF_137 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK );
    DQFF_138 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>L9 , clk=>CLK );
    ITSB_72 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_73 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_74 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_75 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_76 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_77 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_78 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_79 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS580\ IS PORT(
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
END \74ALS580\;

ARCHITECTURE model OF \74ALS580\ IS
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
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_36 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_37 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_38 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_39 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_40 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_41 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_42 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>9 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_80 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_81 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_82 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_83 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_84 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_85 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_86 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_87 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS580A\ IS PORT(
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
END \74ALS580A\;

ARCHITECTURE model OF \74ALS580A\ IS
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
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_44 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_45 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_46 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_47 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_48 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_49 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_50 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    ITSB_88 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_89 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_90 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_91 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_92 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_93 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_94 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_95 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS620\ IS PORT(
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
END \74ALS620\;

ARCHITECTURE model OF \74ALS620\ IS
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
    N1 <= NOT ( A1 ) AFTER 8 ns;
    N2 <= NOT ( A2 ) AFTER 8 ns;
    N3 <= NOT ( A3 ) AFTER 8 ns;
    N4 <= NOT ( A4 ) AFTER 8 ns;
    N5 <= NOT ( A5 ) AFTER 8 ns;
    N6 <= NOT ( A6 ) AFTER 8 ns;
    N7 <= NOT ( A7 ) AFTER 8 ns;
    N8 <= NOT ( A8 ) AFTER 8 ns;
    N9 <= NOT ( B8 ) AFTER 8 ns;
    N10 <= NOT ( B7 ) AFTER 8 ns;
    N11 <= NOT ( B6 ) AFTER 8 ns;
    N12 <= NOT ( B5 ) AFTER 8 ns;
    N13 <= NOT ( B4 ) AFTER 8 ns;
    N14 <= NOT ( B3 ) AFTER 8 ns;
    N15 <= NOT ( B2 ) AFTER 8 ns;
    N16 <= NOT ( B1 ) AFTER 8 ns;
    L1 <= NOT ( GBA );
    TSB_302 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_303 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_304 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_305 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_306 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_307 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_308 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_309 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_310 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_311 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_312 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_313 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_314 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_315 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_316 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_317 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS620A\ IS PORT(
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
END \74ALS620A\;

ARCHITECTURE model OF \74ALS620A\ IS
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
    N1 <= NOT ( A1 ) AFTER 8 ns;
    N2 <= NOT ( A2 ) AFTER 8 ns;
    N3 <= NOT ( A3 ) AFTER 8 ns;
    N4 <= NOT ( A4 ) AFTER 8 ns;
    N5 <= NOT ( A5 ) AFTER 8 ns;
    N6 <= NOT ( A6 ) AFTER 8 ns;
    N7 <= NOT ( A7 ) AFTER 8 ns;
    N8 <= NOT ( A8 ) AFTER 8 ns;
    N9 <= NOT ( B8 ) AFTER 8 ns;
    N10 <= NOT ( B7 ) AFTER 8 ns;
    N11 <= NOT ( B6 ) AFTER 8 ns;
    N12 <= NOT ( B5 ) AFTER 8 ns;
    N13 <= NOT ( B4 ) AFTER 8 ns;
    N14 <= NOT ( B3 ) AFTER 8 ns;
    N15 <= NOT ( B2 ) AFTER 8 ns;
    N16 <= NOT ( B1 ) AFTER 8 ns;
    L1 <= NOT ( GBA );
    TSB_318 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_319 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_320 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_321 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_322 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_323 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_324 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>18 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>17 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS621\ IS PORT(
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
END \74ALS621\;

ARCHITECTURE model OF \74ALS621\ IS
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

ENTITY \74ALS621A\ IS PORT(
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
END \74ALS621A\;

ARCHITECTURE model OF \74ALS621A\ IS
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
    TSB_B325 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_B326 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_B327 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_B328 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_B329 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_B330 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_B331 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_B332 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_B333 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_B334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_B335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_B336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_B337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_B338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_B339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_B340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>7 ns, tfall_i1_o=>6 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS622\ IS PORT(
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
END \74ALS622\;

ARCHITECTURE model OF \74ALS622\ IS
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

ENTITY \74ALS622A\ IS PORT(
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
END \74ALS622A\;

ARCHITECTURE model OF \74ALS622A\ IS
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
    TSB_B600 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_B601 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_B602 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_B603 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_B604 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_B605 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_B606 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_B607 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_B608 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_B609 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_B610 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_B611 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_B612 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_B613 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_B614 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_B615 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS623\ IS PORT(
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
END \74ALS623\;

ARCHITECTURE model OF \74ALS623\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    N9 <=  ( B8 ) AFTER 11 ns;
    N10 <=  ( B7 ) AFTER 11 ns;
    N11 <=  ( B6 ) AFTER 11 ns;
    N12 <=  ( B5 ) AFTER 11 ns;
    N13 <=  ( B4 ) AFTER 11 ns;
    N14 <=  ( B3 ) AFTER 11 ns;
    N15 <=  ( B2 ) AFTER 11 ns;
    N16 <=  ( B1 ) AFTER 11 ns;
    TSB_334 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_335 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_336 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_337 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_338 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_339 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_340 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_341 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_342 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_343 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_344 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_345 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_346 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_347 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_348 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_349 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS623A\ IS PORT(
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
END \74ALS623A\;

ARCHITECTURE model OF \74ALS623A\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    N9 <=  ( B8 ) AFTER 11 ns;
    N10 <=  ( B7 ) AFTER 11 ns;
    N11 <=  ( B6 ) AFTER 11 ns;
    N12 <=  ( B5 ) AFTER 11 ns;
    N13 <=  ( B4 ) AFTER 11 ns;
    N14 <=  ( B3 ) AFTER 11 ns;
    N15 <=  ( B2 ) AFTER 11 ns;
    N16 <=  ( B1 ) AFTER 11 ns;
    TSB_350 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>GAB );
    TSB_351 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>GAB );
    TSB_352 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>GAB );
    TSB_353 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>GAB );
    TSB_354 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>GAB );
    TSB_355 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>GAB );
    TSB_356 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>GAB );
    TSB_357 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>GAB );
    TSB_358 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L1 );
    TSB_359 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L1 );
    TSB_360 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L1 );
    TSB_361 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L1 );
    TSB_362 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L1 );
    TSB_363 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L1 );
    TSB_364 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L1 );
    TSB_365 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS638\ IS PORT(
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
END \74ALS638\;

ARCHITECTURE model OF \74ALS638\ IS
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

    TSB_B632 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_B633 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_B634 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_B635 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_B636 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_B637 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_B638 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_B639 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_B640 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_B641 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_B642 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_B643 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_B644 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_B645 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_B646 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_B647 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS638A\ IS PORT(
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
END \74ALS638A\;

ARCHITECTURE model OF \74ALS638A\ IS
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

ENTITY \74ALS639\ IS PORT(
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
END \74ALS639\;

ARCHITECTURE model OF \74ALS639\ IS
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

ENTITY \74ALS639A\ IS PORT(
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
END \74ALS639A\;

ARCHITECTURE model OF \74ALS639A\ IS
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


    TSB_B648 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_B649 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_B650 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_B651 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_B652 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_B653 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_B654 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_B656 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_B657 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_B658 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_B659 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_B660 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_B661 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_B662 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_B663 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_B664 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS640\ IS PORT(
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
END \74ALS640\;

ARCHITECTURE model OF \74ALS640\ IS
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
    N1 <= NOT ( A1 ) AFTER 9 ns;
    N2 <= NOT ( A2 ) AFTER 9 ns;
    N3 <= NOT ( A3 ) AFTER 9 ns;
    N4 <= NOT ( A4 ) AFTER 9 ns;
    N5 <= NOT ( A5 ) AFTER 9 ns;
    N6 <= NOT ( A6 ) AFTER 9 ns;
    N7 <= NOT ( A7 ) AFTER 9 ns;
    N8 <= NOT ( A8 ) AFTER 9 ns;
    N9 <= NOT ( B8 ) AFTER 9 ns;
    N10 <= NOT ( B7 ) AFTER 9 ns;
    N11 <= NOT ( B6 ) AFTER 9 ns;
    N12 <= NOT ( B5 ) AFTER 9 ns;
    N13 <= NOT ( B4 ) AFTER 9 ns;
    N14 <= NOT ( B3 ) AFTER 9 ns;
    N15 <= NOT ( B2 ) AFTER 9 ns;
    N16 <= NOT ( B1 ) AFTER 9 ns;
    TSB_398 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_399 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_400 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_401 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_402 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_403 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_404 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_405 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_406 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_407 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_408 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_409 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_410 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_411 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_412 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_413 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS640A\ IS PORT(
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
END \74ALS640A\;

ARCHITECTURE model OF \74ALS640A\ IS
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
    N1 <= NOT ( A1 ) AFTER 9 ns;
    N2 <= NOT ( A2 ) AFTER 9 ns;
    N3 <= NOT ( A3 ) AFTER 9 ns;
    N4 <= NOT ( A4 ) AFTER 9 ns;
    N5 <= NOT ( A5 ) AFTER 9 ns;
    N6 <= NOT ( A6 ) AFTER 9 ns;
    N7 <= NOT ( A7 ) AFTER 9 ns;
    N8 <= NOT ( A8 ) AFTER 9 ns;
    N9 <= NOT ( B8 ) AFTER 9 ns;
    N10 <= NOT ( B7 ) AFTER 9 ns;
    N11 <= NOT ( B6 ) AFTER 9 ns;
    N12 <= NOT ( B5 ) AFTER 9 ns;
    N13 <= NOT ( B4 ) AFTER 9 ns;
    N14 <= NOT ( B3 ) AFTER 9 ns;
    N15 <= NOT ( B2 ) AFTER 9 ns;
    N16 <= NOT ( B1 ) AFTER 9 ns;
    TSB_414 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_415 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_416 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_417 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_418 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_419 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_420 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_421 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_422 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_423 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_424 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_425 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_426 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_427 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_428 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_429 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>24 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS641\ IS PORT(
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
END \74ALS641\;

ARCHITECTURE model OF \74ALS641\ IS
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

ENTITY \74ALS641A\ IS PORT(
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
END \74ALS641A\;

ARCHITECTURE model OF \74ALS641A\ IS
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


    TSB_B665 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_B666 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_B667 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_B668 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_B669 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_B670 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_B671 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_B672 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );

    TSB_B673 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_B674 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_B675 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_B676 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_B677 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_B678 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_B679 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_B680 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS642\ IS PORT(
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
END \74ALS642\;

ARCHITECTURE model OF \74ALS642\ IS
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

ENTITY \74ALS642A\ IS PORT(
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
END \74ALS642A\;

ARCHITECTURE model OF \74ALS642A\ IS
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

    TSB_B681 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_B682 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_B683 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_B684 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_B685 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_B686 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_B687 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_B688 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );
	    
    TSB_B689 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A1 , i1=>N10 , en=>L4 );
    TSB_B690 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A2 , i1=>N11 , en=>L4 );
    TSB_B691 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A3 , i1=>N12 , en=>L4 );
    TSB_B692 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_B693 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A5 , i1=>N14 , en=>L4 );
    TSB_B694 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A6 , i1=>N15 , en=>L4 );
    TSB_B695 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A7 , i1=>N16 , en=>L4 );
    TSB_B696 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>40 ns, tfall_i1_o=>40 ns, tpd_en_o=>25 ns)
      PORT MAP  (O=>A8 , i1=>N17 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS643\ IS PORT(
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
END \74ALS643\;

ARCHITECTURE model OF \74ALS643\ IS
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
    TSB_430 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_431 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_432 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_433 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_434 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_435 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_436 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_437 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_438 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_439 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_440 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_441 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_442 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_443 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_444 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_445 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS643A\ IS PORT(
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
END \74ALS643A\;

ARCHITECTURE model OF \74ALS643A\ IS
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
    TSB_446 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_447 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_448 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_449 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_450 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_451 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_452 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_453 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>10 ns, tfall_i1_o=>10 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_454 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_455 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_456 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_457 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_458 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_459 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_460 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_461 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>11 ns, tfall_i1_o=>11 ns, tpd_en_o=>11 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS644\ IS PORT(
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
END \74ALS644\;

ARCHITECTURE model OF \74ALS644\ IS
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

ENTITY \74ALS644A\ IS PORT(
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
END \74ALS644A\;

ARCHITECTURE model OF \74ALS644A\ IS
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

ENTITY \74ALS645\ IS PORT(
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
END \74ALS645\;

ARCHITECTURE model OF \74ALS645\ IS
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
    TSB_462 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_463 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_464 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_465 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_466 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_467 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_468 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_469 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_470 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_471 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_472 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_473 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_474 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_475 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_476 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_477 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS645A\ IS PORT(
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
END \74ALS645A\;

ARCHITECTURE model OF \74ALS645A\ IS
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
    TSB_478 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_479 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_480 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_481 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_482 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_483 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_484 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_485 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_486 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_487 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_488 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_489 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_490 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_491 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_492 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_493 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS646\ IS PORT(
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
END \74ALS646\;

ARCHITECTURE model OF \74ALS646\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 15 ns;
    N2 <= NOT ( SAB ) AFTER 15 ns;
    N3 <=  ( SBA ) AFTER 15 ns;
    N4 <=  ( SAB ) AFTER 15 ns;
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
    DQFF_139 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_140 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_141 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_142 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_143 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_144 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_145 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_146 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_147 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_148 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_149 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_150 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_151 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_152 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_153 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_154 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>5 ns)
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
    TSB_494 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_495 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_496 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_497 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_498 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_499 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_500 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_501 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_502 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_503 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_504 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_505 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_506 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_507 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_508 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_509 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>30 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS647\ IS PORT(
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
END \74ALS647\;

ARCHITECTURE model OF \74ALS647\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 35 ns;
    N2 <= NOT ( SAB ) AFTER 35 ns;
    N3 <=  ( SBA ) AFTER 35 ns;
    N4 <=  ( SAB ) AFTER 35 ns;
    N21 <=  ( G ) AFTER 7 ns;
    N22 <=  ( DIR ) AFTER 9 ns;
    L33 <=  ( N21 OR N22 );
    L34 <= NOT ( N21 );
    L35 <= NOT ( L34 AND N22 );
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
    N23 <=  ( B1 ) AFTER 29 ns;
    N24 <=  ( B2 ) AFTER 29 ns;
    N25 <=  ( B3 ) AFTER 29 ns;
    N26 <=  ( B4 ) AFTER 29 ns;
    N27 <=  ( B5 ) AFTER 29 ns;
    N28 <=  ( B6 ) AFTER 29 ns;
    N29 <=  ( B7 ) AFTER 29 ns;
    N30 <=  ( B8 ) AFTER 29 ns;
    N31 <=  ( A1 ) AFTER 29 ns;
    N32 <=  ( A2 ) AFTER 29 ns;
    N33 <=  ( A3 ) AFTER 29 ns;
    N34 <=  ( A4 ) AFTER 29 ns;
    N35 <=  ( A5 ) AFTER 29 ns;
    N36 <=  ( A6 ) AFTER 29 ns;
    N37 <=  ( A7 ) AFTER 29 ns;
    N38 <=  ( A8 ) AFTER 29 ns;
    DQFF_155 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>N23 , clk=>CBA );
    DQFF_156 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>N24 , clk=>CBA );
    DQFF_157 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N9 , d=>N25 , clk=>CBA );
    DQFF_158 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N11 , d=>N26 , clk=>CBA );
    DQFF_159 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N13 , d=>N27 , clk=>CBA );
    DQFF_160 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N15 , d=>N28 , clk=>CBA );
    DQFF_161 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N17 , d=>N29 , clk=>CBA );
    DQFF_162 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N19 , d=>N30 , clk=>CBA );
    DQFF_163 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>N31 , clk=>CAB );
    DQFF_164 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>N32 , clk=>CAB );
    DQFF_165 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N10 , d=>N33 , clk=>CAB );
    DQFF_166 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N12 , d=>N34 , clk=>CAB );
    DQFF_167 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N14 , d=>N35 , clk=>CAB );
    DQFF_168 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N16 , d=>N36 , clk=>CAB );
    DQFF_169 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N18 , d=>N37 , clk=>CAB );
    DQFF_170 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>33 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N20 , d=>N38 , clk=>CAB );
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
    A1 <=  ( L36 OR L33 ) AFTER 20 ns;
    A2 <=  ( L37 OR L33 ) AFTER 20 ns;
    A3 <=  ( L38 OR L33 ) AFTER 20 ns;
    A4 <=  ( L39 OR L33 ) AFTER 20 ns;
    A5 <=  ( L40 OR L33 ) AFTER 20 ns;
    A6 <=  ( L41 OR L33 ) AFTER 20 ns;
    A7 <=  ( L42 OR L33 ) AFTER 20 ns;
    A8 <=  ( L43 OR L33 ) AFTER 20 ns;
    B1 <=  ( L44 OR L35 ) AFTER 20 ns;
    B2 <=  ( L45 OR L35 ) AFTER 20 ns;
    B3 <=  ( L46 OR L35 ) AFTER 20 ns;
    B4 <=  ( L47 OR L35 ) AFTER 20 ns;
    B5 <=  ( L48 OR L35 ) AFTER 20 ns;
    B6 <=  ( L49 OR L35 ) AFTER 20 ns;
    B7 <=  ( L50 OR L35 ) AFTER 20 ns;
    B8 <=  ( L51 OR L35 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS648\ IS PORT(
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
END \74ALS648\;

ARCHITECTURE model OF \74ALS648\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 11 ns;
    N2 <= NOT ( SAB ) AFTER 11 ns;
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
    DQFF_171 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_172 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_173 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_174 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_175 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_176 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_177 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_178 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_179 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_180 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_181 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_182 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_183 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_184 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_185 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_186 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 12 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 12 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 12 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 12 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 12 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 12 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 12 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 12 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 12 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 12 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 12 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 12 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 12 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 12 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 12 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 12 ns;
    TSB_510 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_511 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_512 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_513 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_514 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_515 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_516 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_517 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_518 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>L35 );
    TSB_519 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>L35 );
    TSB_520 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>L35 );
    TSB_521 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>L35 );
    TSB_522 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>L35 );
    TSB_523 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>L35 );
    TSB_524 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>L35 );
    TSB_525 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>27 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>L35 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS649\ IS PORT(
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
END \74ALS649\;

ARCHITECTURE model OF \74ALS649\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 42 ns;
    N2 <= NOT ( SAB ) AFTER 42 ns;
    N3 <=  ( SBA ) AFTER 42 ns;
    N4 <=  ( SAB ) AFTER 42 ns;
    N21 <=  ( G ) AFTER 12 ns;
    N22 <=  ( DIR ) AFTER 12 ns;
    N23 <=  ( B1 ) AFTER 37 ns;
    N24 <=  ( B2 ) AFTER 37 ns;
    N25 <=  ( B3 ) AFTER 37 ns;
    N26 <=  ( B4 ) AFTER 37 ns;
    N27 <=  ( B5 ) AFTER 37 ns;
    N28 <=  ( B6 ) AFTER 37 ns;
    N29 <=  ( B7 ) AFTER 37 ns;
    N30 <=  ( B8 ) AFTER 37 ns;
    N31 <=  ( A1 ) AFTER 37 ns;
    N32 <=  ( A2 ) AFTER 37 ns;
    N33 <=  ( A3 ) AFTER 37 ns;
    N34 <=  ( A4 ) AFTER 37 ns;
    N35 <=  ( A5 ) AFTER 37 ns;
    N36 <=  ( A6 ) AFTER 37 ns;
    N37 <=  ( A7 ) AFTER 37 ns;
    N38 <=  ( A8 ) AFTER 37 ns;
    L33 <=  ( N21 OR N22 );
    L34 <= NOT ( N21 );
    L35 <= NOT ( L34 AND N22 );
    L1 <=  ( N3 AND N5 );
    L2 <=  ( N1 AND N23 );
    L3 <=  ( N3 AND N7 );
    L4 <=  ( N1 AND N24 );
    L5 <=  ( N3 AND N9 );
    L6 <=  ( N1 AND N25 );
    L7 <=  ( N3 AND N11 );
    L8 <=  ( N1 AND N26 );
    L9 <=  ( N3 AND N13 );
    L10 <=  ( N1 AND N27 );
    L11 <=  ( N3 AND N15 );
    L12 <=  ( N1 AND N28 );
    L13 <=  ( N3 AND N17 );
    L14 <=  ( N1 AND N29 );
    L15 <=  ( N3 AND N19 );
    L16 <=  ( N1 AND N30 );
    L17 <=  ( N4 AND N6 );
    L18 <=  ( N2 AND N31 );
    L19 <=  ( N4 AND N8 );
    L20 <=  ( N2 AND N32 );
    L21 <=  ( N4 AND N10 );
    L22 <=  ( N2 AND N33 );
    L23 <=  ( N4 AND N12 );
    L24 <=  ( N2 AND N34 );
    L25 <=  ( N4 AND N14 );
    L26 <=  ( N2 AND N35 );
    L27 <=  ( N4 AND N16 );
    L28 <=  ( N2 AND N36 );
    L29 <=  ( N4 AND N18 );
    L30 <=  ( N2 AND N37 );
    L31 <=  ( N4 AND N20 );
    L32 <=  ( N2 AND N38 );
    DQFF_187 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_188 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_189 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_190 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_191 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_192 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_193 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_194 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_195 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_196 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_197 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_198 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_199 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_200 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_201 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_202 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>49 ns)
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
    A1 <= NOT ( L36 OR L33 ) AFTER 8 ns;
    A2 <= NOT ( L37 OR L33 ) AFTER 8 ns;
    A3 <= NOT ( L38 OR L33 ) AFTER 8 ns;
    A4 <= NOT ( L39 OR L33 ) AFTER 8 ns;
    A5 <= NOT ( L40 OR L33 ) AFTER 8 ns;
    A6 <= NOT ( L41 OR L33 ) AFTER 8 ns;
    A7 <= NOT ( L42 OR L33 ) AFTER 8 ns;
    A8 <= NOT ( L43 OR L33 ) AFTER 8 ns;
    B1 <= NOT ( L44 OR L35 ) AFTER 8 ns;
    B2 <= NOT ( L45 OR L35 ) AFTER 8 ns;
    B3 <= NOT ( L46 OR L35 ) AFTER 8 ns;
    B4 <= NOT ( L47 OR L35 ) AFTER 8 ns;
    B5 <= NOT ( L48 OR L35 ) AFTER 8 ns;
    B6 <= NOT ( L49 OR L35 ) AFTER 8 ns;
    B7 <= NOT ( L50 OR L35 ) AFTER 8 ns;
    B8 <= NOT ( L51 OR L35 ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS651\ IS PORT(
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
END \74ALS651\;

ARCHITECTURE model OF \74ALS651\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 20 ns;
    N2 <= NOT ( SAB ) AFTER 20 ns;
    N3 <=  ( SBA ) AFTER 20 ns;
    N4 <=  ( SAB ) AFTER 20 ns;
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
    DQFF_203 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_204 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_205 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_206 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_207 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_208 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_209 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_210 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_211 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_212 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_213 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_214 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_215 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_216 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_217 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_218 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    N21 <= NOT ( L1 OR L2 ) AFTER 13 ns;
    N22 <= NOT ( L3 OR L4 ) AFTER 13 ns;
    N23 <= NOT ( L5 OR L6 ) AFTER 13 ns;
    N24 <= NOT ( L7 OR L8 ) AFTER 13 ns;
    N25 <= NOT ( L9 OR L10 ) AFTER 13 ns;
    N26 <= NOT ( L11 OR L12 ) AFTER 13 ns;
    N27 <= NOT ( L13 OR L14 ) AFTER 13 ns;
    N28 <= NOT ( L15 OR L16 ) AFTER 13 ns;
    N29 <= NOT ( L17 OR L18 ) AFTER 13 ns;
    N30 <= NOT ( L19 OR L20 ) AFTER 13 ns;
    N31 <= NOT ( L21 OR L22 ) AFTER 13 ns;
    N32 <= NOT ( L23 OR L24 ) AFTER 13 ns;
    N33 <= NOT ( L25 OR L26 ) AFTER 13 ns;
    N34 <= NOT ( L27 OR L28 ) AFTER 13 ns;
    N35 <= NOT ( L29 OR L30 ) AFTER 13 ns;
    N36 <= NOT ( L31 OR L32 ) AFTER 13 ns;
    TSB_526 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_527 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_528 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_529 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_530 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_531 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_532 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_533 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_534 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_535 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_536 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_537 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_538 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_539 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_540 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_541 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS652\ IS PORT(
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
END \74ALS652\;

ARCHITECTURE model OF \74ALS652\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    DQFF_219 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_220 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_221 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_222 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_223 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_224 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_225 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_226 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_227 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_228 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_229 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_230 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_231 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_232 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_233 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_234 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>12 ns)
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
    TSB_542 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A1 , i1=>N21 , en=>L33 );
    TSB_543 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A2 , i1=>N22 , en=>L33 );
    TSB_544 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A3 , i1=>N23 , en=>L33 );
    TSB_545 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A4 , i1=>N24 , en=>L33 );
    TSB_546 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A5 , i1=>N25 , en=>L33 );
    TSB_547 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A6 , i1=>N26 , en=>L33 );
    TSB_548 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A7 , i1=>N27 , en=>L33 );
    TSB_549 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A8 , i1=>N28 , en=>L33 );
    TSB_550 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B1 , i1=>N29 , en=>GAB );
    TSB_551 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B2 , i1=>N30 , en=>GAB );
    TSB_552 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B3 , i1=>N31 , en=>GAB );
    TSB_553 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B4 , i1=>N32 , en=>GAB );
    TSB_554 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B5 , i1=>N33 , en=>GAB );
    TSB_555 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B6 , i1=>N34 , en=>GAB );
    TSB_556 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B7 , i1=>N35 , en=>GAB );
    TSB_557 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B8 , i1=>N36 , en=>GAB );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS653\ IS PORT(
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
END \74ALS653\;

ARCHITECTURE model OF \74ALS653\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 10 ns;
    N2 <= NOT ( SAB ) AFTER 17 ns;
    N3 <=  ( SBA ) AFTER 10 ns;
    N4 <=  ( SAB ) AFTER 17 ns;
    N29 <=  ( GBA ) AFTER 9 ns;
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
    DQFF_235 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_236 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_237 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_238 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_239 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_240 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_241 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_242 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>7 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_243 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_244 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_245 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_246 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_247 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_248 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_249 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_250 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>2 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    L34 <= NOT ( L1 OR L2 );
    L35 <= NOT ( L3 OR L4 );
    L36 <= NOT ( L5 OR L6 );
    L37 <= NOT ( L7 OR L8 );
    L38 <= NOT ( L9 OR L10 );
    L39 <= NOT ( L11 OR L12 );
    L40 <= NOT ( L13 OR L14 );
    L41 <= NOT ( L15 OR L16 );
    N21 <= NOT ( L17 OR L18 ) AFTER 13 ns;
    N22 <= NOT ( L19 OR L20 ) AFTER 13 ns;
    N23 <= NOT ( L21 OR L22 ) AFTER 13 ns;
    N24 <= NOT ( L23 OR L24 ) AFTER 13 ns;
    N25 <= NOT ( L25 OR L26 ) AFTER 13 ns;
    N26 <= NOT ( L27 OR L28 ) AFTER 13 ns;
    N27 <= NOT ( L29 OR L30 ) AFTER 13 ns;
    N28 <= NOT ( L31 OR L32 ) AFTER 13 ns;
    TSB_558 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B1 , i1=>N21 , en=>GAB );
    TSB_559 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B2 , i1=>N22 , en=>GAB );
    TSB_560 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B3 , i1=>N23 , en=>GAB );
    TSB_561 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B4 , i1=>N24 , en=>GAB );
    TSB_562 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B5 , i1=>N25 , en=>GAB );
    TSB_563 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B6 , i1=>N26 , en=>GAB );
    TSB_564 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B7 , i1=>N27 , en=>GAB );
    TSB_565 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B8 , i1=>N28 , en=>GAB );
    A1 <=  ( L34 OR N29 ) AFTER 51 ns;
    A2 <=  ( L35 OR N29 ) AFTER 51 ns;
    A3 <=  ( L36 OR N29 ) AFTER 51 ns;
    A4 <=  ( L37 OR N29 ) AFTER 51 ns;
    A5 <=  ( L38 OR N29 ) AFTER 51 ns;
    A6 <=  ( L39 OR N29 ) AFTER 51 ns;
    A7 <=  ( L40 OR N29 ) AFTER 51 ns;
    A8 <=  ( L41 OR N29 ) AFTER 51 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS654\ IS PORT(
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
END \74ALS654\;

ARCHITECTURE model OF \74ALS654\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( SBA ) AFTER 10 ns;
    N2 <= NOT ( SAB ) AFTER 17 ns;
    N3 <=  ( SBA ) AFTER 10 ns;
    N4 <=  ( SAB ) AFTER 17 ns;
    N29 <=  ( GBA ) AFTER 9 ns;
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
    DQFF_251 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N5 , d=>B1 , clk=>CBA );
    DQFF_252 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N7 , d=>B2 , clk=>CBA );
    DQFF_253 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N9 , d=>B3 , clk=>CBA );
    DQFF_254 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N11 , d=>B4 , clk=>CBA );
    DQFF_255 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N13 , d=>B5 , clk=>CBA );
    DQFF_256 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N15 , d=>B6 , clk=>CBA );
    DQFF_257 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N17 , d=>B7 , clk=>CBA );
    DQFF_258 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>7 ns)
      PORT MAP  (q=>N19 , d=>B8 , clk=>CBA );
    DQFF_259 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N6 , d=>A1 , clk=>CAB );
    DQFF_260 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N8 , d=>A2 , clk=>CAB );
    DQFF_261 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N10 , d=>A3 , clk=>CAB );
    DQFF_262 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N12 , d=>A4 , clk=>CAB );
    DQFF_263 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N14 , d=>A5 , clk=>CAB );
    DQFF_264 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N16 , d=>A6 , clk=>CAB );
    DQFF_265 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N18 , d=>A7 , clk=>CAB );
    DQFF_266 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>2 ns)
      PORT MAP  (q=>N20 , d=>A8 , clk=>CAB );
    L34 <=  ( L1 OR L2 );
    L35 <=  ( L3 OR L4 );
    L36 <=  ( L5 OR L6 );
    L37 <=  ( L7 OR L8 );
    L38 <=  ( L9 OR L10 );
    L39 <=  ( L11 OR L12 );
    L40 <=  ( L13 OR L14 );
    L41 <=  ( L15 OR L16 );
    N21 <=  ( L17 OR L18 ) AFTER 13 ns;
    N22 <=  ( L19 OR L20 ) AFTER 13 ns;
    N23 <=  ( L21 OR L22 ) AFTER 13 ns;
    N24 <=  ( L23 OR L24 ) AFTER 13 ns;
    N25 <=  ( L25 OR L26 ) AFTER 13 ns;
    N26 <=  ( L27 OR L28 ) AFTER 13 ns;
    N27 <=  ( L29 OR L30 ) AFTER 13 ns;
    N28 <=  ( L31 OR L32 ) AFTER 13 ns;
    TSB_566 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B1 , i1=>N21 , en=>GAB );
    TSB_567 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B2 , i1=>N22 , en=>GAB );
    TSB_568 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B3 , i1=>N23 , en=>GAB );
    TSB_569 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B4 , i1=>N24 , en=>GAB );
    TSB_570 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B5 , i1=>N25 , en=>GAB );
    TSB_571 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B6 , i1=>N26 , en=>GAB );
    TSB_572 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B7 , i1=>N27 , en=>GAB );
    TSB_573 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>B8 , i1=>N28 , en=>GAB );
    A1 <=  ( L34 OR N29 ) AFTER 51 ns;
    A2 <=  ( L35 OR N29 ) AFTER 51 ns;
    A3 <=  ( L36 OR N29 ) AFTER 51 ns;
    A4 <=  ( L37 OR N29 ) AFTER 51 ns;
    A5 <=  ( L38 OR N29 ) AFTER 51 ns;
    A6 <=  ( L39 OR N29 ) AFTER 51 ns;
    A7 <=  ( L40 OR N29 ) AFTER 51 ns;
    A8 <=  ( L41 OR N29 ) AFTER 51 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS677\ IS PORT(
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
END \74ALS677\;

ARCHITECTURE model OF \74ALS677\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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

    BEGIN
    N1 <= NOT ( P0 ) AFTER 8 ns;
    N2 <= NOT ( P1 ) AFTER 8 ns;
    N3 <= NOT ( P2 ) AFTER 8 ns;
    N4 <= NOT ( P3 ) AFTER 8 ns;
    N5 <= NOT ( G ) AFTER 5 ns;
    N6 <=  ( P3 ) AFTER 8 ns;
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
    L17 <= NOT ( L8 OR L7 OR L9 );
    L18 <= NOT ( N4 OR L10 );
    L19 <= NOT ( N4 OR L11 );
    L20 <= NOT ( L11 OR N4 OR L12 );
    L21 <= NOT ( N3 OR N4 );
    L22 <= NOT ( N4 OR N3 OR L13 );
    L23 <= NOT ( N2 OR N3 OR N4 );
    L24 <= NOT ( N1 OR N2 OR N3 OR N4 );
    L25 <=  ( L1 XOR A1 );
    L26 <=  ( L2 XOR A2 );
    L27 <=  ( L14 XOR A3 );
    L28 <=  ( L5 XOR A4 );
    L29 <=  ( L15 XOR A5 );
    L30 <=  ( L16 XOR A6 );
    L31 <=  ( L17 XOR A7 );
    L32 <=  ( N6 XOR A8 );
    L33 <=  ( L18 XOR A9 );
    L34 <=  ( L19 XOR A10 );
    L35 <=  ( L20 XOR A11 );
    L36 <=  ( L21 XOR A12 );
    L37 <=  ( L22 XOR A13 );
    L38 <=  ( L23 XOR A14 );
    L39 <=  ( L24 XOR A15 );
    L40 <=  ( L25 AND L26 AND L27 AND L28 AND L29 AND L30 AND L31 AND L32 );
    L41 <=  ( L33 AND L34 AND L35 AND L36 AND L37 AND L38 AND L39 AND A16 );
    Y <= NOT ( L40 AND L41 AND N5 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS677A\ IS PORT(
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
END \74ALS677A\;

ARCHITECTURE model OF \74ALS677A\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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

    BEGIN
    N1 <= NOT ( P0 ) AFTER 8 ns;
    N2 <= NOT ( P1 ) AFTER 8 ns;
    N3 <= NOT ( P2 ) AFTER 8 ns;
    N4 <= NOT ( P3 ) AFTER 8 ns;
    N5 <= NOT ( G ) AFTER 5 ns;
    N6 <=  ( P3 ) AFTER 8 ns;
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
    L17 <= NOT ( L8 OR L7 OR L9 );
    L18 <= NOT ( N4 OR L10 );
    L19 <= NOT ( N4 OR L11 );
    L20 <= NOT ( L11 OR N4 OR L12 );
    L21 <= NOT ( N3 OR N4 );
    L22 <= NOT ( N4 OR N3 OR L13 );
    L23 <= NOT ( N2 OR N3 OR N4 );
    L24 <= NOT ( N1 OR N2 OR N3 OR N4 );
    L25 <=  ( L1 XOR A1 );
    L26 <=  ( L2 XOR A2 );
    L27 <=  ( L14 XOR A3 );
    L28 <=  ( L5 XOR A4 );
    L29 <=  ( L15 XOR A5 );
    L30 <=  ( L16 XOR A6 );
    L31 <=  ( L17 XOR A7 );
    L32 <=  ( N6 XOR A8 );
    L33 <=  ( L18 XOR A9 );
    L34 <=  ( L19 XOR A10 );
    L35 <=  ( L20 XOR A11 );
    L36 <=  ( L21 XOR A12 );
    L37 <=  ( L22 XOR A13 );
    L38 <=  ( L23 XOR A14 );
    L39 <=  ( L24 XOR A15 );
    L40 <=  ( L25 AND L26 AND L27 AND L28 AND L29 AND L30 AND L31 AND L32 );
    L41 <=  ( L33 AND L34 AND L35 AND L36 AND L37 AND L38 AND L39 AND A16 );
    Y <= NOT ( L40 AND L41 AND N5 ) AFTER 25 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS678\ IS PORT(
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
END \74ALS678\;

ARCHITECTURE model OF \74ALS678\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= NOT ( P0 ) AFTER 8 ns;
    N2 <= NOT ( P1 ) AFTER 8 ns;
    N3 <= NOT ( P2 ) AFTER 8 ns;
    N4 <= NOT ( P3 ) AFTER 8 ns;
    N6 <=  ( P3 ) AFTER 8 ns;
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
    L17 <= NOT ( L8 OR L7 OR L9 );
    L18 <= NOT ( N4 OR L10 );
    L19 <= NOT ( N4 OR L11 );
    L20 <= NOT ( L11 OR N4 OR L12 );
    L21 <= NOT ( N3 OR N4 );
    L22 <= NOT ( N4 OR N3 OR L13 );
    L23 <= NOT ( N2 OR N3 OR N4 );
    L24 <= NOT ( N1 OR N2 OR N3 OR N4 );
    L25 <=  ( L1 XOR A1 );
    L26 <=  ( L2 XOR A2 );
    L27 <=  ( L14 XOR A3 );
    L28 <=  ( L5 XOR A4 );
    L29 <=  ( L15 XOR A5 );
    L30 <=  ( L16 XOR A6 );
    L31 <=  ( L17 XOR A7 );
    L32 <=  ( N6 XOR A8 );
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
    DLATCH_51 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>26 ns)
      PORT MAP  (q=>N5 , d=>L42 , enable=>C );
    Y <=  ( N5 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS679\ IS PORT(
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
END \74ALS679\;

ARCHITECTURE model OF \74ALS679\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N17 : std_logic;
    SIGNAL N18 : std_logic;

    BEGIN
    N1 <= NOT ( P0 ) AFTER 5 ns;
    N2 <= NOT ( P1 ) AFTER 5 ns;
    N3 <= NOT ( P2 ) AFTER 5 ns;
    N4 <= NOT ( P3 ) AFTER 5 ns;
    N5 <=  ( P3 ) AFTER 5 ns;
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
    N7 <=  ( L1 XOR A1 ) AFTER 9 ns;
    N8 <=  ( L2 XOR A2 ) AFTER 9 ns;
    N9 <=  ( L11 XOR A3 ) AFTER 9 ns;
    N10 <=  ( L5 XOR A4 ) AFTER 9 ns;
    N11 <=  ( L12 XOR A5 ) AFTER 9 ns;
    N12 <=  ( L13 XOR A6 ) AFTER 9 ns;
    N13 <=  ( L14 XOR A7 ) AFTER 9 ns;
    N14 <=  ( N5 XOR A8 ) AFTER 9 ns;
    N15 <=  ( L15 XOR A9 ) AFTER 9 ns;
    N16 <=  ( L16 XOR A10 ) AFTER 9 ns;
    N17 <=  ( L17 XOR A11 ) AFTER 9 ns;
    N18 <=  ( L18 XOR A12 ) AFTER 9 ns;
    L20 <=  ( N7 AND N8 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15 AND N16 AND N17 AND N18 );
    Y <= NOT ( L20 AND L19 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS680\ IS PORT(
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
END \74ALS680\;

ARCHITECTURE model OF \74ALS680\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    N1 <= NOT ( P0 ) AFTER 13 ns;
    N2 <= NOT ( P1 ) AFTER 13 ns;
    N3 <= NOT ( P2 ) AFTER 13 ns;
    N4 <= NOT ( P3 ) AFTER 13 ns;
    N5 <=  ( P3 ) AFTER 13 ns;
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
    DLATCH_52 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>16 ns)
      PORT MAP  (q=>N5 , d=>L31 , enable=>C );
    Y <=  ( N5 ) AFTER 4 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS688\ IS PORT(
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
END \74ALS688\;

ARCHITECTURE model OF \74ALS688\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( Q7 XOR P7 );
    L2 <= NOT ( Q6 XOR P6 );
    L3 <= NOT ( Q5 XOR P5 );
    L4 <= NOT ( Q4 XOR P4 );
    L5 <= NOT ( Q3 XOR P3 );
    L6 <= NOT ( Q2 XOR P2 );
    L7 <= NOT ( Q1 XOR P1 );
    L8 <= NOT ( Q0 XOR P0 );
    N1 <= NOT ( G ) AFTER 2 ns;
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND N1 ) AFTER 18 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS689\ IS PORT(
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
END \74ALS689\;

ARCHITECTURE model OF \74ALS689\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT ( Q7 XOR P7 );
    L2 <= NOT ( Q6 XOR P6 );
    L3 <= NOT ( Q5 XOR P5 );
    L4 <= NOT ( Q4 XOR P4 );
    L5 <= NOT ( Q3 XOR P3 );
    L6 <= NOT ( Q2 XOR P2 );
    L7 <= NOT ( Q1 XOR P1 );
    L8 <= NOT ( Q0 XOR P0 );
    N1 <= NOT ( G ) AFTER 2 ns;
    \P=Q\ <= NOT ( L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND N1 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS746\ IS PORT(
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
END \74ALS746\;

ARCHITECTURE model OF \74ALS746\ IS
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
    N1 <= NOT ( A1 ) AFTER 7 ns;
    N2 <= NOT ( A2 ) AFTER 7 ns;
    N3 <= NOT ( A3 ) AFTER 7 ns;
    N4 <= NOT ( A4 ) AFTER 7 ns;
    N5 <= NOT ( A5 ) AFTER 7 ns;
    N6 <= NOT ( A6 ) AFTER 7 ns;
    N7 <= NOT ( A7 ) AFTER 7 ns;
    N8 <= NOT ( A8 ) AFTER 7 ns;
    TSB_574 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_575 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_576 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_577 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_578 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_579 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_580 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_581 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS747\ IS PORT(
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
END \74ALS747\;

ARCHITECTURE model OF \74ALS747\ IS
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
    N1 <=  ( A1 ) AFTER 9 ns;
    N2 <=  ( A2 ) AFTER 9 ns;
    N3 <=  ( A3 ) AFTER 9 ns;
    N4 <=  ( A4 ) AFTER 9 ns;
    N5 <=  ( A5 ) AFTER 9 ns;
    N6 <=  ( A6 ) AFTER 9 ns;
    N7 <=  ( A7 ) AFTER 9 ns;
    N8 <=  ( A8 ) AFTER 9 ns;
    TSB_582 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_583 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_584 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_585 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_586 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_587 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_588 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_589 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS756\ IS PORT(
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
END \74ALS756\;

ARCHITECTURE model OF \74ALS756\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G_A ) AFTER 10 ns;
    N2 <= NOT ( G_B ) AFTER 10 ns;
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

ENTITY \74ALS758\ IS PORT(
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
END \74ALS758\;

ARCHITECTURE model OF \74ALS758\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( GAB ) AFTER 9 ns;
    N2 <=  ( GBA ) AFTER 9 ns;
    B1 <= NOT ( N1 AND A1 ) AFTER 23 ns;
    B2 <= NOT ( N1 AND A2 ) AFTER 23 ns;
    B3 <= NOT ( N1 AND A3 ) AFTER 23 ns;
    B4 <= NOT ( N1 AND A4 ) AFTER 23 ns;
    A1 <= NOT ( N2 AND B1 ) AFTER 23 ns;
    A2 <= NOT ( N2 AND B2 ) AFTER 23 ns;
    A3 <= NOT ( N2 AND B3 ) AFTER 23 ns;
    A4 <= NOT ( N2 AND B4 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS763\ IS PORT(
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
END \74ALS763\;

ARCHITECTURE model OF \74ALS763\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G1_A ) AFTER 12 ns;
    N2 <=  ( G2_B ) AFTER 12 ns;
    Y1_A <= NOT ( A1_A AND N1 ) AFTER 20 ns;
    Y2_A <= NOT ( A2_A AND N1 ) AFTER 20 ns;
    Y3_A <= NOT ( A3_A AND N1 ) AFTER 20 ns;
    Y4_A <= NOT ( A4_A AND N1 ) AFTER 20 ns;
    Y1_B <= NOT ( A1_B AND N2 ) AFTER 20 ns;
    Y2_B <= NOT ( A2_B AND N2 ) AFTER 20 ns;
    Y3_B <= NOT ( A3_B AND N2 ) AFTER 20 ns;
    Y4_B <= NOT ( A4_B AND N2 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS804\ IS PORT(
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
END \74ALS804\;

ARCHITECTURE model OF \74ALS804\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 5 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 5 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 5 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 5 ns;
    O_E <= NOT ( I1_E AND I0_E ) AFTER 5 ns;
    O_F <= NOT ( I1_F AND I0_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS804A\ IS PORT(
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
END \74ALS804A\;

ARCHITECTURE model OF \74ALS804A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 6 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 6 ns;
    O_E <= NOT ( I1_E AND I0_E ) AFTER 6 ns;
    O_F <= NOT ( I1_F AND I0_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS804B\ IS PORT(
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
END \74ALS804B\;

ARCHITECTURE model OF \74ALS804B\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 6 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 6 ns;
    O_E <= NOT ( I1_E AND I0_E ) AFTER 6 ns;
    O_F <= NOT ( I1_F AND I0_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS805A\ IS PORT(
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
END \74ALS805A\;

ARCHITECTURE model OF \74ALS805A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 6 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 6 ns;
    O_D <= NOT ( I1_D OR I0_D ) AFTER 6 ns;
    O_E <= NOT ( I1_E OR I0_E ) AFTER 6 ns;
    O_F <= NOT ( I1_F OR I0_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS805\ IS PORT(
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
END \74ALS805\;

ARCHITECTURE model OF \74ALS805\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 5 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 5 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 5 ns;
    O_D <= NOT ( I1_D OR I0_D ) AFTER 5 ns;
    O_E <= NOT ( I1_E OR I0_E ) AFTER 5 ns;
    O_F <= NOT ( I1_F OR I0_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS808\ IS PORT(
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
END \74ALS808\;

ARCHITECTURE model OF \74ALS808\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 6 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 6 ns;
    O_E <=  ( I1_E AND I0_E ) AFTER 6 ns;
    O_F <=  ( I1_F AND I0_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS808A\ IS PORT(
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
END \74ALS808A\;

ARCHITECTURE model OF \74ALS808A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 7 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 7 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 7 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 7 ns;
    O_E <=  ( I1_E AND I0_E ) AFTER 7 ns;
    O_F <=  ( I1_F AND I0_F ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS810\ IS PORT(
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
END \74ALS810\;

ARCHITECTURE model OF \74ALS810\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 15 ns;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 15 ns;
    O_C <= NOT ( I1_C XOR I0_C ) AFTER 15 ns;
    O_D <= NOT ( I1_D XOR I0_D ) AFTER 15 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS811\ IS PORT(
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
END \74ALS811\;

ARCHITECTURE model OF \74ALS811\ IS

    BEGIN
    O_A <= NOT ( I0_A XOR I1_A ) AFTER 50 ns;
    O_B <= NOT ( I0_B XOR I1_B ) AFTER 50 ns;
    O_C <= NOT ( I1_C XOR I0_C ) AFTER 50 ns;
    O_D <= NOT ( I1_D XOR I0_D ) AFTER 50 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS832\ IS PORT(
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
END \74ALS832\;

ARCHITECTURE model OF \74ALS832\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 6 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 6 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 6 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 6 ns;
    O_E <=  ( I1_E OR I0_E ) AFTER 6 ns;
    O_F <=  ( I1_F OR I0_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS832A\ IS PORT(
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
END \74ALS832A\;

ARCHITECTURE model OF \74ALS832A\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 7 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 7 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 7 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 7 ns;
    O_E <=  ( I1_E OR I0_E ) AFTER 7 ns;
    O_F <=  ( I1_F OR I0_F ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS841\ IS PORT(
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
END \74ALS841\;

ARCHITECTURE model OF \74ALS841\ IS
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
    DLATCH_53 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_54 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_55 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_56 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_57 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_58 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_59 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_60 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_61 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_62 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    TSB_590 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_591 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_592 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_593 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_594 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_595 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_596 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_597 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_598 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    TSB_599 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS842\ IS PORT(
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
END \74ALS842\;

ARCHITECTURE model OF \74ALS842\ IS
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
    DLATCH_63 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C );
    DLATCH_64 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C );
    DLATCH_65 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C );
    DLATCH_66 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C );
    DLATCH_67 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C );
    DLATCH_68 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C );
    DLATCH_69 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C );
    DLATCH_70 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C );
    DLATCH_71 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C );
    DLATCH_72 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N10 , d=>D10 , enable=>C );
    ITSB_96 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_97 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_98 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_99 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_100 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_101 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_102 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_103 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_104 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
    ITSB_105 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>12 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q10 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS843\ IS PORT(
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
END \74ALS843\;

ARCHITECTURE model OF \74ALS843\ IS
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
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_16 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_600 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_601 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_602 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_603 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_604 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_605 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_606 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_607 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    TSB_608 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>14 ns, tfall_i1_o=>12 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS844\ IS PORT(
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
END \74ALS844\;

ARCHITECTURE model OF \74ALS844\ IS
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
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_18 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_19 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_20 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_21 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_22 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_23 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_24 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_25 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N9 , d=>D9 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_106 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_107 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_108 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_109 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_110 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_111 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_112 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_113 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
    ITSB_114 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q9 , i1=>N9 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS845\ IS PORT(
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
END \74ALS845\;

ARCHITECTURE model OF \74ALS845\ IS
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
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_27 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_28 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_29 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_30 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_31 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_32 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_33 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>8 ns, tfall_clk_q=>13 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    TSB_609 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    TSB_610 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    TSB_611 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    TSB_612 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    TSB_613 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    TSB_614 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    TSB_615 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    TSB_616 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS846\ IS PORT(
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
END \74ALS846\;

ARCHITECTURE model OF \74ALS846\ IS
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
    DLATCHPC_34 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N1 , d=>D1 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_35 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N2 , d=>D2 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_36 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N3 , d=>D3 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_37 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N4 , d=>D4 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_38 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N5 , d=>D5 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_39 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N6 , d=>D6 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_40 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N7 , d=>D7 , enable=>C , pr=>PRE , cl=>CLR );
    DLATCHPC_41 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>10 ns, tfall_clk_q=>15 ns)
      PORT MAP  (q=>N8 , d=>D8 , enable=>C , pr=>PRE , cl=>CLR );
    ITSB_115 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1 );
    ITSB_116 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1 );
    ITSB_117 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1 );
    ITSB_118 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1 );
    ITSB_119 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1 );
    ITSB_120 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1 );
    ITSB_121 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1 );
    ITSB_122 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS857\ IS PORT(
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
END \74ALS857\;

ARCHITECTURE model OF \74ALS857\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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
    SIGNAL N1 : std_logic;
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
    N1 <= NOT ( S0 ) AFTER 15 ns;
    N2 <= NOT ( S1 ) AFTER 15 ns;
    N3 <=  ( S0 ) AFTER 15 ns;
    L1 <= NOT ( S0 AND S1 AND COMP );
    L2 <= NOT ( S0 );
    L3 <= NOT ( S1 );
    L4 <=  ( L2 AND S1 );
    L5 <=  ( S1 AND COMP );
    L6 <= NOT ( L4 OR L5 );
    L7 <=  ( \1A\ AND N1 AND N2 );
    L8 <=  ( N3 AND N2 AND \1B\ );
    L9 <=  ( \1A\ AND \1B\ AND N1 );
    L10 <=  ( \2A\ AND N1 AND N2 );
    L11 <=  ( N3 AND N2 AND \2B\ );
    L12 <=  ( \2A\ AND \2B\ AND N1 );
    L13 <=  ( \3A\ AND N1 AND N2 );
    L14 <=  ( N3 AND N2 AND \3B\ );
    L15 <=  ( \3A\ AND \3B\ AND N1 );
    L16 <=  ( \4A\ AND N1 AND N2 );
    L17 <=  ( N3 AND N2 AND \4B\ );
    L18 <=  ( \4A\ AND \4B\ AND N1 );
    L19 <=  ( \5A\ AND N1 AND N2 );
    L20 <=  ( N3 AND N2 AND \5B\ );
    L21 <=  ( \5A\ AND \5B\ AND N1 );
    L22 <=  ( \6A\ AND N1 AND N2 );
    L23 <=  ( N3 AND N2 AND \6B\ );
    L24 <=  ( \6A\ AND \6B\ AND N1 );
    L25 <=  ( L7 OR L8 OR L9 );
    L26 <=  ( L10 OR L11 OR L12 );
    L27 <=  ( L13 OR L14 OR L15 );
    L28 <=  ( L16 OR L17 OR L18 );
    L29 <=  ( L19 OR L20 OR L21 );
    L30 <=  ( L22 OR L23 OR L24 );
    L31 <=  ( S0 AND L3 AND N4 );
    L32 <=  ( L2 AND L3 AND N5 );
    N4 <= NOT ( \6B\ OR \5B\ OR \4B\ OR \3B\ OR \2B\ OR \1B\ ) AFTER 14 ns;
    N5 <= NOT ( \6A\ OR \5A\ OR \4A\ OR \3A\ OR \2A\ OR \1A\ ) AFTER 14 ns;
    N6 <=  ( COMP XOR L25 ) AFTER 13 ns;
    N7 <=  ( COMP XOR L26 ) AFTER 13 ns;
    N8 <=  ( COMP XOR L27 ) AFTER 13 ns;
    N9 <=  ( COMP XOR L28 ) AFTER 13 ns;
    N10 <=  ( COMP XOR L29 ) AFTER 13 ns;
    N11 <=  ( COMP XOR L30 ) AFTER 13 ns;
    N12 <=  ( L31 OR L32 ) AFTER 18 ns;
    TSB_617 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\1Y\ , i1=>N6 , en=>L1 );
    TSB_618 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\2Y\ , i1=>N7 , en=>L1 );
    TSB_619 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\3Y\ , i1=>N8 , en=>L1 );
    TSB_620 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\4Y\ , i1=>N9 , en=>L1 );
    TSB_621 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\5Y\ , i1=>N10 , en=>L1 );
    TSB_622 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>35 ns, tfall_i1_o=>35 ns, tpd_en_o=>23 ns)
      PORT MAP  (O=>\6Y\ , i1=>N11 , en=>L1 );
    TSB_623 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>27 ns)
      PORT MAP  (O=>OPER , i1=>N12 , en=>L6 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS873\ IS PORT(
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
END \74ALS873\;

ARCHITECTURE model OF \74ALS873\ IS
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
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_43 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_44 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_45 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_46 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_47 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_48 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_49 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    TSB_624 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_625 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_626 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_627 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_628 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_629 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_630 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_631 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS873B\ IS PORT(
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
END \74ALS873B\;

ARCHITECTURE model OF \74ALS873B\ IS
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
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_51 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_52 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_53 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , enable=>C_A , pr=>ONE , cl=>CLR_A );
    DLATCHPC_54 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_55 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_56 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    DLATCHPC_57 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , enable=>C_B , pr=>ONE , cl=>CLR_B );
    TSB_632 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_633 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_634 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_635 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_636 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_637 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_638 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_639 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS874\ IS PORT(
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
END \74ALS874\;

ARCHITECTURE model OF \74ALS874\ IS
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
    DQFFC_38 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_39 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_40 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_41 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_42 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_43 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_44 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_45 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , cl=>CLR_B );
    TSB_640 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_641 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_642 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_643 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_644 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_645 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_646 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_647 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS874B\ IS PORT(
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
END \74ALS874B\;

ARCHITECTURE model OF \74ALS874B\ IS
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
    DQFFC_46 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_47 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_48 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_49 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , cl=>CLR_A );
    DQFFC_50 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_51 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_52 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , cl=>CLR_B );
    DQFFC_53 :  ORCAD_DQFFC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , cl=>CLR_B );
    TSB_648 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_649 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_650 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_651 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_652 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_653 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_654 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_655 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS876\ IS PORT(
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
END \74ALS876\;

ARCHITECTURE model OF \74ALS876\ IS
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
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_1 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_2 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_3 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_4 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_5 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_6 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_7 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , pr=>PRE_B );
    ITSB_123 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_124 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_125 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_126 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_127 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_128 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_129 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_130 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS876A\ IS PORT(
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
END \74ALS876A\;

ARCHITECTURE model OF \74ALS876A\ IS
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
    DQFFP_8 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_9 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_10 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_11 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_12 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_13 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_14 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_15 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , pr=>PRE_B );
    ITSB_131 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_132 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_133 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_134 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_135 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_136 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_137 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_138 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS876B\ IS PORT(
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
END \74ALS876B\;

ARCHITECTURE model OF \74ALS876B\ IS
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
    DQFFP_16 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N1 , d=>D1_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_17 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N2 , d=>D2_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_18 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N3 , d=>D3_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_19 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N4 , d=>D4_A , clk=>CLK_A , pr=>PRE_A );
    DQFFP_20 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N5 , d=>D1_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_21 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N6 , d=>D2_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_22 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N7 , d=>D3_B , clk=>CLK_B , pr=>PRE_B );
    DQFFP_23 :  ORCAD_DQFFP 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>12 ns)
      PORT MAP  (q=>N8 , d=>D4_B , clk=>CLK_B , pr=>PRE_B );
    ITSB_139 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_140 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_141 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_142 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_143 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_144 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_145 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_146 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS878\ IS PORT(
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
END \74ALS878\;

ARCHITECTURE model OF \74ALS878\ IS
    SIGNAL L1 : std_logic;
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
    DQFF_267 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>L3 , clk=>CLK_A );
    DQFF_268 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>CLK_A );
    DQFF_269 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK_A );
    DQFF_270 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>L6 , clk=>CLK_A );
    DQFF_271 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK_B );
    DQFF_272 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>L8 , clk=>CLK_B );
    DQFF_273 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>CLK_B );
    DQFF_274 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>L10 , clk=>CLK_B );
    TSB_656 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_657 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_658 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_659 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_660 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_661 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_662 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_663 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS878A\ IS PORT(
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
END \74ALS878A\;

ARCHITECTURE model OF \74ALS878A\ IS
    SIGNAL L1 : std_logic;
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
    DQFF_275 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>L3 , clk=>CLK_A );
    DQFF_276 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>CLK_A );
    DQFF_277 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK_A );
    DQFF_278 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>L6 , clk=>CLK_A );
    DQFF_279 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK_B );
    DQFF_280 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>L8 , clk=>CLK_B );
    DQFF_281 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>CLK_B );
    DQFF_282 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>L10 , clk=>CLK_B );
    TSB_664 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    TSB_665 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    TSB_666 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    TSB_667 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    TSB_668 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    TSB_669 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    TSB_670 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    TSB_671 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS879\ IS PORT(
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
END \74ALS879\;

ARCHITECTURE model OF \74ALS879\ IS
    SIGNAL L1 : std_logic;
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
    DQFF_283 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>L3 , clk=>CLK_A );
    DQFF_284 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>CLK_A );
    DQFF_285 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK_A );
    DQFF_286 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>L6 , clk=>CLK_A );
    DQFF_287 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK_B );
    DQFF_288 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>L8 , clk=>CLK_B );
    DQFF_289 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>CLK_B );
    DQFF_290 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>L10 , clk=>CLK_B );
    ITSB_147 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_148 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_149 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_150 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_151 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_152 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_153 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_154 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS879A\ IS PORT(
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
END \74ALS879A\;

ARCHITECTURE model OF \74ALS879A\ IS
    SIGNAL L1 : std_logic;
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
    DQFF_291 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N1 , d=>L3 , clk=>CLK_A );
    DQFF_292 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N2 , d=>L4 , clk=>CLK_A );
    DQFF_293 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK_A );
    DQFF_294 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N4 , d=>L6 , clk=>CLK_A );
    DQFF_295 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK_B );
    DQFF_296 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N6 , d=>L8 , clk=>CLK_B );
    DQFF_297 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N7 , d=>L9 , clk=>CLK_B );
    DQFF_298 :  ORCAD_DQFF 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>14 ns)
      PORT MAP  (q=>N8 , d=>L10 , clk=>CLK_B );
    ITSB_155 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_156 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_157 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_158 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_159 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_160 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_161 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_162 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS880\ IS PORT(
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
END \74ALS880\;

ARCHITECTURE model OF \74ALS880\ IS
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
    DLATCHPC_58 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N1 , d=>D1_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_59 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N2 , d=>D2_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_60 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N3 , d=>D3_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_61 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N4 , d=>D4_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_62 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N5 , d=>D1_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_63 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N6 , d=>D2_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_64 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , d=>D3_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_65 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>D4_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    ITSB_163 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_164 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_165 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_166 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_167 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_168 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_169 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_170 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS880A\ IS PORT(
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
END \74ALS880A\;

ARCHITECTURE model OF \74ALS880A\ IS
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
    DLATCHPC_66 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N1 , d=>D1_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_67 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N2 , d=>D2_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_68 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N3 , d=>D3_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_69 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N4 , d=>D4_A , enable=>C_A , pr=>PRE_A , cl=>ONE );
    DLATCHPC_70 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N5 , d=>D1_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_71 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N6 , d=>D2_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_72 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N7 , d=>D3_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    DLATCHPC_73 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>12 ns, tfall_clk_q=>18 ns)
      PORT MAP  (q=>N8 , d=>D4_B , enable=>C_B , pr=>PRE_B , cl=>ONE );
    ITSB_171 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1_A , i1=>N1 , en=>L1 );
    ITSB_172 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2_A , i1=>N2 , en=>L1 );
    ITSB_173 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3_A , i1=>N3 , en=>L1 );
    ITSB_174 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4_A , i1=>N4 , en=>L1 );
    ITSB_175 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q1_B , i1=>N5 , en=>L2 );
    ITSB_176 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q2_B , i1=>N6 , en=>L2 );
    ITSB_177 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q3_B , i1=>N7 , en=>L2 );
    ITSB_178 :  ORCAD_ITSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>Q4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS990\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
OERB : IN  std_logic;
C : IN  std_logic;
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
END \74ALS990\;

ARCHITECTURE model OF \74ALS990\ IS
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
    L1 <= NOT ( OERB );
    DLATCH_73 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>C );
    DLATCH_74 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>C );
    DLATCH_75 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>C );
    DLATCH_76 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>C );
    DLATCH_77 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>C );
    DLATCH_78 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>C );
    DLATCH_79 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>C );
    DLATCH_80 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>C );
    TSB_672 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D0 , i1=>N1 , en=>L1 );
    TSB_673 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D1 , i1=>N2 , en=>L1 );
    TSB_674 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D2 , i1=>N3 , en=>L1 );
    TSB_675 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D3 , i1=>N4 , en=>L1 );
    TSB_676 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D4 , i1=>N5 , en=>L1 );
    TSB_677 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D5 , i1=>N6 , en=>L1 );
    TSB_678 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D6 , i1=>N7 , en=>L1 );
    TSB_679 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>19 ns)
      PORT MAP  (O=>D7 , i1=>N8 , en=>L1 );
    Q0 <=  ( N1 ) AFTER 14 ns;
    Q1 <=  ( N2 ) AFTER 14 ns;
    Q2 <=  ( N3 ) AFTER 14 ns;
    Q3 <=  ( N4 ) AFTER 14 ns;
    Q4 <=  ( N5 ) AFTER 14 ns;
    Q5 <=  ( N6 ) AFTER 14 ns;
    Q6 <=  ( N7 ) AFTER 14 ns;
    Q7 <=  ( N8 ) AFTER 14 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS991\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
OERB : IN  std_logic;
C : IN  std_logic;
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
END \74ALS991\;

ARCHITECTURE model OF \74ALS991\ IS
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
    L1 <= NOT ( OERB );
    DLATCH_81 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>C );
    DLATCH_82 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>C );
    DLATCH_83 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>C );
    DLATCH_84 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>C );
    DLATCH_85 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>C );
    DLATCH_86 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>C );
    DLATCH_87 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>C );
    DLATCH_88 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>C );
    TSB_680 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D0 , i1=>N1 , en=>L1 );
    TSB_681 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D1 , i1=>N2 , en=>L1 );
    TSB_682 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D2 , i1=>N3 , en=>L1 );
    TSB_683 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D3 , i1=>N4 , en=>L1 );
    TSB_684 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D4 , i1=>N5 , en=>L1 );
    TSB_685 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D5 , i1=>N6 , en=>L1 );
    TSB_686 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D6 , i1=>N7 , en=>L1 );
    TSB_687 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>17 ns)
      PORT MAP  (O=>D7 , i1=>N8 , en=>L1 );
    Q0 <= NOT ( N1 ) AFTER 10 ns;
    Q1 <= NOT ( N2 ) AFTER 10 ns;
    Q2 <= NOT ( N3 ) AFTER 10 ns;
    Q3 <= NOT ( N4 ) AFTER 10 ns;
    Q4 <= NOT ( N5 ) AFTER 10 ns;
    Q5 <= NOT ( N6 ) AFTER 10 ns;
    Q6 <= NOT ( N7 ) AFTER 10 ns;
    Q7 <= NOT ( N8 ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS992\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
OERB : IN  std_logic;
C : IN  std_logic;
CLR : IN  std_logic;
OEQ : IN  std_logic;
Q0 : OUT  std_logic;
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
END \74ALS992\;

ARCHITECTURE model OF \74ALS992\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( OERB );
    L2 <= NOT ( OEQ );
    DLATCHPC_74 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_75 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_76 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_77 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_78 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_79 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_80 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_81 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_82 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>3 ns, tfall_clk_q=>5 ns)
      PORT MAP  (q=>N9 , d=>D8 , enable=>C , pr=>ONE , cl=>CLR );
    TSB_688 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D0 , i1=>N1 , en=>L1 );
    TSB_689 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D1 , i1=>N2 , en=>L1 );
    TSB_690 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D2 , i1=>N3 , en=>L1 );
    TSB_691 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D3 , i1=>N4 , en=>L1 );
    TSB_692 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D4 , i1=>N5 , en=>L1 );
    TSB_693 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D5 , i1=>N6 , en=>L1 );
    TSB_694 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D6 , i1=>N7 , en=>L1 );
    TSB_695 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D7 , i1=>N8 , en=>L1 );
    TSB_696 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D8 , i1=>N9 , en=>L1 );
    N10 <=  ( N1 ) AFTER 6 ns;
    N11 <=  ( N2 ) AFTER 6 ns;
    N12 <=  ( N3 ) AFTER 6 ns;
    N13 <=  ( N4 ) AFTER 6 ns;
    N14 <=  ( N5 ) AFTER 6 ns;
    N15 <=  ( N6 ) AFTER 6 ns;
    N16 <=  ( N7 ) AFTER 6 ns;
    N17 <=  ( N8 ) AFTER 6 ns;
    N18 <=  ( N9 ) AFTER 6 ns;
    TSB_697 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q0 , i1=>N10 , en=>L2 );
    TSB_698 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q1 , i1=>N11 , en=>L2 );
    TSB_699 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q2 , i1=>N12 , en=>L2 );
    TSB_700 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q3 , i1=>N13 , en=>L2 );
    TSB_701 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q4 , i1=>N14 , en=>L2 );
    TSB_702 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q5 , i1=>N15 , en=>L2 );
    TSB_703 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q6 , i1=>N16 , en=>L2 );
    TSB_704 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q7 , i1=>N17 , en=>L2 );
    TSB_705 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>18 ns, tfall_i1_o=>18 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>Q8 , i1=>N18 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS993\ IS PORT(
D0 : INOUT  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
OERB : IN  std_logic;
C : IN  std_logic;
CLR : IN  std_logic;
OEQ : IN  std_logic;
Q0 : OUT  std_logic;
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
END \74ALS993\;

ARCHITECTURE model OF \74ALS993\ IS
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
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT ( OERB );
    L2 <= NOT ( OEQ );
    DLATCHPC_83 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_84 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_85 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_86 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_87 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_88 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_89 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_90 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>C , pr=>ONE , cl=>CLR );
    DLATCHPC_91 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 ns, tfall_clk_q=>6 ns)
      PORT MAP  (q=>N9 , d=>D8 , enable=>C , pr=>ONE , cl=>CLR );
    TSB_706 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D0 , i1=>N1 , en=>L1 );
    TSB_707 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D1 , i1=>N2 , en=>L1 );
    TSB_708 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D2 , i1=>N3 , en=>L1 );
    TSB_709 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D3 , i1=>N4 , en=>L1 );
    TSB_710 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D4 , i1=>N5 , en=>L1 );
    TSB_711 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D5 , i1=>N6 , en=>L1 );
    TSB_712 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D6 , i1=>N7 , en=>L1 );
    TSB_713 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D7 , i1=>N8 , en=>L1 );
    TSB_714 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>D8 , i1=>N9 , en=>L1 );
    N10 <= NOT ( N1 ) AFTER 9 ns;
    N11 <= NOT ( N2 ) AFTER 9 ns;
    N12 <= NOT ( N3 ) AFTER 9 ns;
    N13 <= NOT ( N4 ) AFTER 9 ns;
    N14 <= NOT ( N5 ) AFTER 9 ns;
    N15 <= NOT ( N6 ) AFTER 9 ns;
    N16 <= NOT ( N7 ) AFTER 9 ns;
    N17 <= NOT ( N8 ) AFTER 9 ns;
    N18 <= NOT ( N9 ) AFTER 9 ns;
    TSB_715 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q0 , i1=>N10 , en=>L2 );
    TSB_716 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q1 , i1=>N11 , en=>L2 );
    TSB_717 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q2 , i1=>N12 , en=>L2 );
    TSB_718 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q3 , i1=>N13 , en=>L2 );
    TSB_719 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q4 , i1=>N14 , en=>L2 );
    TSB_720 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q5 , i1=>N15 , en=>L2 );
    TSB_721 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q6 , i1=>N16 , en=>L2 );
    TSB_722 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q7 , i1=>N17 , en=>L2 );
    TSB_723 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>20 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Q8 , i1=>N18 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS994\ IS PORT(
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
OERB : IN  std_logic;
C : IN  std_logic;
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
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS994\;

ARCHITECTURE model OF \74ALS994\ IS
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
    L1 <= NOT ( OERB );
    DLATCH_89 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>C );
    DLATCH_90 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>C );
    DLATCH_91 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>C );
    DLATCH_92 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>C );
    DLATCH_93 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>C );
    DLATCH_94 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>C );
    DLATCH_95 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>C );
    DLATCH_96 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>C );
    DLATCH_97 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N9 , d=>D8 , enable=>C );
    DLATCH_98 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>4 ns, tfall_clk_q=>8 ns)
      PORT MAP  (q=>N10 , d=>D9 , enable=>C );
    TSB_724 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D0 , i1=>N1 , en=>L1 );
    TSB_725 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D1 , i1=>N2 , en=>L1 );
    TSB_726 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D2 , i1=>N3 , en=>L1 );
    TSB_727 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D3 , i1=>N4 , en=>L1 );
    TSB_728 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D4 , i1=>N5 , en=>L1 );
    TSB_729 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D5 , i1=>N6 , en=>L1 );
    TSB_730 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D6 , i1=>N7 , en=>L1 );
    TSB_731 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D7 , i1=>N8 , en=>L1 );
    TSB_732 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D8 , i1=>N9 , en=>L1 );
    TSB_733 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>D9 , i1=>N10 , en=>L1 );
    Q0 <=  ( N1 ) AFTER 5 ns;
    Q1 <=  ( N2 ) AFTER 5 ns;
    Q2 <=  ( N3 ) AFTER 5 ns;
    Q3 <=  ( N4 ) AFTER 5 ns;
    Q4 <=  ( N5 ) AFTER 5 ns;
    Q5 <=  ( N6 ) AFTER 5 ns;
    Q6 <=  ( N7 ) AFTER 5 ns;
    Q7 <=  ( N8 ) AFTER 5 ns;
    Q8 <=  ( N9 ) AFTER 5 ns;
    Q9 <=  ( N10 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS995\ IS PORT(
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
OERB : IN  std_logic;
C : IN  std_logic;
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
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS995\;

ARCHITECTURE model OF \74ALS995\ IS
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
    L1 <= NOT ( OERB );
    DLATCH_99 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N1 , d=>D0 , enable=>C );
    DLATCH_100 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N2 , d=>D1 , enable=>C );
    DLATCH_101 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N3 , d=>D2 , enable=>C );
    DLATCH_102 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N4 , d=>D3 , enable=>C );
    DLATCH_103 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N5 , d=>D4 , enable=>C );
    DLATCH_104 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N6 , d=>D5 , enable=>C );
    DLATCH_105 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N7 , d=>D6 , enable=>C );
    DLATCH_106 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N8 , d=>D7 , enable=>C );
    DLATCH_107 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N9 , d=>D8 , enable=>C );
    DLATCH_108 :  ORCAD_DLATCH 
      GENERIC MAP (trise_clk_q=>5 ns, tfall_clk_q=>10 ns)
      PORT MAP  (q=>N10 , d=>D9 , enable=>C );
    TSB_734 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D0 , i1=>N1 , en=>L1 );
    TSB_735 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D1 , i1=>N2 , en=>L1 );
    TSB_736 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D2 , i1=>N3 , en=>L1 );
    TSB_737 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D3 , i1=>N4 , en=>L1 );
    TSB_738 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D4 , i1=>N5 , en=>L1 );
    TSB_739 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D5 , i1=>N6 , en=>L1 );
    TSB_740 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D6 , i1=>N7 , en=>L1 );
    TSB_741 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D7 , i1=>N8 , en=>L1 );
    TSB_742 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D8 , i1=>N9 , en=>L1 );
    TSB_743 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>21 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>D9 , i1=>N10 , en=>L1 );
    Q0 <= NOT ( N1 ) AFTER 5 ns;
    Q1 <= NOT ( N2 ) AFTER 5 ns;
    Q2 <= NOT ( N3 ) AFTER 5 ns;
    Q3 <= NOT ( N4 ) AFTER 5 ns;
    Q4 <= NOT ( N5 ) AFTER 5 ns;
    Q5 <= NOT ( N6 ) AFTER 5 ns;
    Q6 <= NOT ( N7 ) AFTER 5 ns;
    Q7 <= NOT ( N8 ) AFTER 5 ns;
    Q8 <= NOT ( N9 ) AFTER 5 ns;
    Q9 <= NOT ( N10 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1000\ IS PORT(
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
END \74ALS1000\;

ARCHITECTURE model OF \74ALS1000\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 6 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1000A\ IS PORT(
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
END \74ALS1000A\;

ARCHITECTURE model OF \74ALS1000A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 6 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 6 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1002\ IS PORT(
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
END \74ALS1002\;

ARCHITECTURE model OF \74ALS1002\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 6 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 6 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1002A\ IS PORT(
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
END \74ALS1002A\;

ARCHITECTURE model OF \74ALS1002A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 6 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 6 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1003\ IS PORT(
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
END \74ALS1003\;

ARCHITECTURE model OF \74ALS1003\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 31 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 31 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 31 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 31 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1003A\ IS PORT(
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
END \74ALS1003A\;

ARCHITECTURE model OF \74ALS1003A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 31 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 31 ns;
    O_C <= NOT ( I1_C AND I0_C ) AFTER 31 ns;
    O_D <= NOT ( I1_D AND I0_D ) AFTER 31 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1004\ IS PORT(
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
END \74ALS1004\;

ARCHITECTURE model OF \74ALS1004\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 5 ns;
    O_B <= NOT ( I_B ) AFTER 5 ns;
    O_C <= NOT ( I_C ) AFTER 5 ns;
    O_D <= NOT ( I_D ) AFTER 5 ns;
    O_E <= NOT ( I_E ) AFTER 5 ns;
    O_F <= NOT ( I_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1004A\ IS PORT(
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
END \74ALS1004A\;

ARCHITECTURE model OF \74ALS1004A\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 5 ns;
    O_B <= NOT ( I_B ) AFTER 5 ns;
    O_C <= NOT ( I_C ) AFTER 5 ns;
    O_D <= NOT ( I_D ) AFTER 5 ns;
    O_E <= NOT ( I_E ) AFTER 5 ns;
    O_F <= NOT ( I_F ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1005\ IS PORT(
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
END \74ALS1005\;

ARCHITECTURE model OF \74ALS1005\ IS

    BEGIN
    O_A <= NOT ( I_A ) AFTER 28 ns;
    O_B <= NOT ( I_B ) AFTER 28 ns;
    O_C <= NOT ( I_C ) AFTER 28 ns;
    O_D <= NOT ( I_D ) AFTER 28 ns;
    O_E <= NOT ( I_E ) AFTER 28 ns;
    O_F <= NOT ( I_F ) AFTER 28 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1008\ IS PORT(
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
END \74ALS1008\;

ARCHITECTURE model OF \74ALS1008\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 7 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 7 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 7 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1008A\ IS PORT(
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
END \74ALS1008A\;

ARCHITECTURE model OF \74ALS1008A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 7 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 7 ns;
    O_C <=  ( I1_C AND I0_C ) AFTER 7 ns;
    O_D <=  ( I1_D AND I0_D ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1010\ IS PORT(
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
END \74ALS1010\;

ARCHITECTURE model OF \74ALS1010\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 6 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1010A\ IS PORT(
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
END \74ALS1010A\;

ARCHITECTURE model OF \74ALS1010A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A ) AFTER 6 ns;
    O_B <= NOT ( I0_B AND I1_B AND I2_B ) AFTER 6 ns;
    O_C <= NOT ( I2_C AND I1_C AND I0_C ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1011\ IS PORT(
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
END \74ALS1011\;

ARCHITECTURE model OF \74ALS1011\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 8 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 8 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1011A\ IS PORT(
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
END \74ALS1011A\;

ARCHITECTURE model OF \74ALS1011A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A AND I2_A ) AFTER 8 ns;
    O_B <=  ( I0_B AND I1_B AND I2_B ) AFTER 8 ns;
    O_C <=  ( I2_C AND I1_C AND I0_C ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1020\ IS PORT(
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
END \74ALS1020\;

ARCHITECTURE model OF \74ALS1020\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 6 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1020A\ IS PORT(
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
END \74ALS1020A\;

ARCHITECTURE model OF \74ALS1020A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A AND I2_A AND I3_A ) AFTER 6 ns;
    O_B <= NOT ( I3_B AND I2_B AND I1_B AND I0_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1032\ IS PORT(
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
END \74ALS1032\;

ARCHITECTURE model OF \74ALS1032\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 10 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 10 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 10 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1032A\ IS PORT(
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
END \74ALS1032A\;

ARCHITECTURE model OF \74ALS1032A\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 10 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 10 ns;
    O_C <=  ( I1_C OR I0_C ) AFTER 10 ns;
    O_D <=  ( I1_D OR I0_D ) AFTER 10 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1034\ IS PORT(
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
END \74ALS1034\;

ARCHITECTURE model OF \74ALS1034\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 6 ns;
    O_B <=  ( I_B ) AFTER 6 ns;
    O_C <=  ( I_C ) AFTER 6 ns;
    O_D <=  ( I_D ) AFTER 6 ns;
    O_E <=  ( I_E ) AFTER 6 ns;
    O_F <=  ( I_F ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1035\ IS PORT(
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
END \74ALS1035\;

ARCHITECTURE model OF \74ALS1035\ IS

    BEGIN
    O_A <=  ( I_A ) AFTER 28 ns;
    O_B <=  ( I_B ) AFTER 28 ns;
    O_C <=  ( I_C ) AFTER 28 ns;
    O_D <=  ( I_D ) AFTER 28 ns;
    O_E <=  ( I_E ) AFTER 28 ns;
    O_F <=  ( I_F ) AFTER 28 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1240\ IS PORT(
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
END \74ALS1240\;

ARCHITECTURE model OF \74ALS1240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 6 ns;
    N2 <= NOT ( A2_A ) AFTER 6 ns;
    N3 <= NOT ( A3_A ) AFTER 6 ns;
    N4 <= NOT ( A4_A ) AFTER 6 ns;
    TSB_744 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_745 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_746 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_747 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    L2 <= NOT ( G_B );
    N5 <= NOT ( A1_B ) AFTER 6 ns;
    N6 <= NOT ( A2_B ) AFTER 6 ns;
    N7 <= NOT ( A3_B ) AFTER 6 ns;
    N8 <= NOT ( A4_B ) AFTER 6 ns;
    TSB_748 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_749 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_750 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_751 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>18 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1241\ IS PORT(
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
END \74ALS1241\;

ARCHITECTURE model OF \74ALS1241\ IS
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
    L1 <= NOT ( \1G\ );
    N1 <=  ( \1A1\ ) AFTER 10 ns;
    N2 <=  ( \1A2\ ) AFTER 10 ns;
    N3 <=  ( \1A3\ ) AFTER 10 ns;
    N4 <=  ( \1A4\ ) AFTER 10 ns;
    TSB_752 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_753 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_754 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_755 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    N5 <=  ( \2A1\ ) AFTER 10 ns;
    N6 <=  ( \2A2\ ) AFTER 10 ns;
    N7 <=  ( \2A3\ ) AFTER 10 ns;
    N8 <=  ( \2A4\ ) AFTER 10 ns;
    TSB_756 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>\2G\ );
    TSB_757 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>\2G\ );
    TSB_758 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>\2G\ );
    TSB_759 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>\2G\ );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1242\ IS PORT(
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
END \74ALS1242\;

ARCHITECTURE model OF \74ALS1242\ IS
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
    N1 <= NOT ( A1 ) AFTER 6 ns;
    N2 <= NOT ( A2 ) AFTER 6 ns;
    N3 <= NOT ( A3 ) AFTER 6 ns;
    N4 <= NOT ( A4 ) AFTER 6 ns;
    N5 <= NOT ( B4 ) AFTER 6 ns;
    N6 <= NOT ( B3 ) AFTER 6 ns;
    N7 <= NOT ( B2 ) AFTER 6 ns;
    N8 <= NOT ( B1 ) AFTER 6 ns;
    TSB_760 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>20 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_761 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>20 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_762 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>20 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_763 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>19 ns, tfall_i1_o=>20 ns, tpd_en_o=>10 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_764 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_765 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_766 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_767 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>21 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1243\ IS PORT(
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
END \74ALS1243\;

ARCHITECTURE model OF \74ALS1243\ IS
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
    N1 <=  ( A1 ) AFTER 10 ns;
    N2 <=  ( A2 ) AFTER 10 ns;
    N3 <=  ( A3 ) AFTER 10 ns;
    N4 <=  ( A4 ) AFTER 10 ns;
    N5 <=  ( B4 ) AFTER 10 ns;
    N6 <=  ( B3 ) AFTER 10 ns;
    N7 <=  ( B2 ) AFTER 10 ns;
    N8 <=  ( B1 ) AFTER 10 ns;
    TSB_768 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>22 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_769 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>22 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_770 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>22 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_771 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>22 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_772 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_773 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_774 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_775 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>22 ns, tpd_en_o=>16 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1244\ IS PORT(
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
END \74ALS1244\;

ARCHITECTURE model OF \74ALS1244\ IS
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
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    N1 <=  ( \1A1\ ) AFTER 12 ns;
    N2 <=  ( \1A2\ ) AFTER 12 ns;
    N3 <=  ( \1A3\ ) AFTER 12 ns;
    N4 <=  ( \1A4\ ) AFTER 12 ns;
    N5 <=  ( \2A1\ ) AFTER 12 ns;
    N6 <=  ( \2A2\ ) AFTER 12 ns;
    N7 <=  ( \2A3\ ) AFTER 12 ns;
    N8 <=  ( \2A4\ ) AFTER 12 ns;
    TSB_776 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_777 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_778 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_779 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_780 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_781 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_782 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_783 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1244A\ IS PORT(
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
END \74ALS1244A\;

ARCHITECTURE model OF \74ALS1244A\ IS
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
    L1 <= NOT ( \1G\ );
    L2 <= NOT ( \2G\ );
    N1 <=  ( \1A1\ ) AFTER 11 ns;
    N2 <=  ( \1A2\ ) AFTER 11 ns;
    N3 <=  ( \1A3\ ) AFTER 11 ns;
    N4 <=  ( \1A4\ ) AFTER 11 ns;
    N5 <=  ( \2A1\ ) AFTER 11 ns;
    N6 <=  ( \2A2\ ) AFTER 11 ns;
    N7 <=  ( \2A3\ ) AFTER 11 ns;
    N8 <=  ( \2A4\ ) AFTER 11 ns;
    TSB_784 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y1\ , i1=>N1 , en=>L1 );
    TSB_785 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y2\ , i1=>N2 , en=>L1 );
    TSB_786 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y3\ , i1=>N3 , en=>L1 );
    TSB_787 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\1Y4\ , i1=>N4 , en=>L1 );
    TSB_788 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y1\ , i1=>N5 , en=>L2 );
    TSB_789 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y2\ , i1=>N6 , en=>L2 );
    TSB_790 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y3\ , i1=>N7 , en=>L2 );
    TSB_791 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>22 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>\2Y4\ , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1245\ IS PORT(
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
END \74ALS1245\;

ARCHITECTURE model OF \74ALS1245\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    N9 <=  ( B8 ) AFTER 11 ns;
    N10 <=  ( B7 ) AFTER 11 ns;
    N11 <=  ( B6 ) AFTER 11 ns;
    N12 <=  ( B5 ) AFTER 11 ns;
    N13 <=  ( B4 ) AFTER 11 ns;
    N14 <=  ( B3 ) AFTER 11 ns;
    N15 <=  ( B2 ) AFTER 11 ns;
    N16 <=  ( B1 ) AFTER 11 ns;
    TSB_792 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_793 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_794 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_795 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_796 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_797 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_798 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_799 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_800 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_801 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_802 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_803 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_804 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_805 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_806 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_807 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1245A\ IS PORT(
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
END \74ALS1245A\;

ARCHITECTURE model OF \74ALS1245A\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    N9 <=  ( B8 ) AFTER 11 ns;
    N10 <=  ( B7 ) AFTER 11 ns;
    N11 <=  ( B6 ) AFTER 11 ns;
    N12 <=  ( B5 ) AFTER 11 ns;
    N13 <=  ( B4 ) AFTER 11 ns;
    N14 <=  ( B3 ) AFTER 11 ns;
    N15 <=  ( B2 ) AFTER 11 ns;
    N16 <=  ( B1 ) AFTER 11 ns;
    TSB_808 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_809 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_810 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_811 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_812 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_813 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_814 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_815 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_816 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_817 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_818 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_819 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_820 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_821 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_822 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_823 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1638\ IS PORT(
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
END \74ALS1638\;

ARCHITECTURE model OF \74ALS1638\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( DIR );
    L3 <=  ( L1 AND DIR );
    N1 <=  ( L1 AND L2 ) AFTER 17 ns;
    N2 <= NOT ( A1 ) AFTER 19 ns;
    N3 <= NOT ( A2 ) AFTER 19 ns;
    N4 <= NOT ( A3 ) AFTER 19 ns;
    N5 <= NOT ( A4 ) AFTER 19 ns;
    N6 <= NOT ( A5 ) AFTER 19 ns;
    N7 <= NOT ( A6 ) AFTER 19 ns;
    N8 <= NOT ( A7 ) AFTER 19 ns;
    N9 <= NOT ( A8 ) AFTER 19 ns;
    TSB_824 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_825 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_826 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_827 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_828 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_829 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_830 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_831 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>12 ns, tpd_en_o=>7 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );
    A1 <= NOT ( N1 AND B1 ) AFTER 6 ns;
    A2 <= NOT ( N1 AND B2 ) AFTER 6 ns;
    A3 <= NOT ( N1 AND B3 ) AFTER 6 ns;
    A4 <= NOT ( N1 AND B4 ) AFTER 6 ns;
    A5 <= NOT ( N1 AND B5 ) AFTER 6 ns;
    A6 <= NOT ( N1 AND B6 ) AFTER 6 ns;
    A7 <= NOT ( N1 AND B7 ) AFTER 6 ns;
    A8 <= NOT ( N1 AND B8 ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1639\ IS PORT(
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
END \74ALS1639\;

ARCHITECTURE model OF \74ALS1639\ IS
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

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( DIR );
    L3 <=  ( L1 AND DIR );
    N1 <= NOT ( L1 AND L2 ) AFTER 16 ns;
    N2 <=  ( A1 ) AFTER 19 ns;
    N3 <=  ( A2 ) AFTER 19 ns;
    N4 <=  ( A3 ) AFTER 19 ns;
    N5 <=  ( A4 ) AFTER 19 ns;
    N6 <=  ( A5 ) AFTER 19 ns;
    N7 <=  ( A6 ) AFTER 19 ns;
    N8 <=  ( A7 ) AFTER 19 ns;
    N9 <=  ( A8 ) AFTER 19 ns;
    TSB_832 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L3 );
    TSB_833 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L3 );
    TSB_834 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L3 );
    TSB_835 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L3 );
    TSB_836 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L3 );
    TSB_837 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L3 );
    TSB_838 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L3 );
    TSB_839 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>17 ns, tfall_i1_o=>14 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L3 );
    A1 <=  ( N1 OR B1 ) AFTER 7 ns;
    A2 <=  ( N1 OR B2 ) AFTER 7 ns;
    A3 <=  ( N1 OR B3 ) AFTER 7 ns;
    A4 <=  ( N1 OR B4 ) AFTER 7 ns;
    A5 <=  ( N1 OR B5 ) AFTER 7 ns;
    A6 <=  ( N1 OR B6 ) AFTER 7 ns;
    A7 <=  ( N1 OR B7 ) AFTER 7 ns;
    A8 <=  ( N1 OR B8 ) AFTER 7 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1640\ IS PORT(
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
END \74ALS1640\;

ARCHITECTURE model OF \74ALS1640\ IS
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
    N1 <= NOT ( A1 ) AFTER 13 ns;
    N2 <= NOT ( A2 ) AFTER 13 ns;
    N3 <= NOT ( A3 ) AFTER 13 ns;
    N4 <= NOT ( A4 ) AFTER 13 ns;
    N5 <= NOT ( A5 ) AFTER 13 ns;
    N6 <= NOT ( A6 ) AFTER 13 ns;
    N7 <= NOT ( A7 ) AFTER 13 ns;
    N8 <= NOT ( A8 ) AFTER 13 ns;
    N9 <= NOT ( B8 ) AFTER 13 ns;
    N10 <= NOT ( B7 ) AFTER 13 ns;
    N11 <= NOT ( B6 ) AFTER 13 ns;
    N12 <= NOT ( B5 ) AFTER 13 ns;
    N13 <= NOT ( B4 ) AFTER 13 ns;
    N14 <= NOT ( B3 ) AFTER 13 ns;
    N15 <= NOT ( B2 ) AFTER 13 ns;
    N16 <= NOT ( B1 ) AFTER 13 ns;
    TSB_840 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_841 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_842 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_843 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_844 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_845 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_846 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_847 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_848 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_849 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_850 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_851 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_852 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_853 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_854 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_855 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1640A\ IS PORT(
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
END \74ALS1640A\;

ARCHITECTURE model OF \74ALS1640A\ IS
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
    TSB_856 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_857 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_858 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_859 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_860 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_861 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_862 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_863 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_864 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_865 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_866 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_867 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_868 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_869 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_870 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_871 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>22 ns, tfall_i1_o=>20 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1641\ IS PORT(
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
END \74ALS1641\;

ARCHITECTURE model OF \74ALS1641\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 12 ns;
    N2 <= NOT ( DIR ) AFTER 12 ns;
    L1 <= NOT ( N1 AND N2 );
    L2 <= NOT ( N1 AND DIR );
    B1 <=  ( A1 OR L2 ) AFTER 20 ns;
    B2 <=  ( A2 OR L2 ) AFTER 20 ns;
    B3 <=  ( A3 OR L2 ) AFTER 20 ns;
    B4 <=  ( A4 OR L2 ) AFTER 20 ns;
    B5 <=  ( A5 OR L2 ) AFTER 20 ns;
    B6 <=  ( A6 OR L2 ) AFTER 20 ns;
    B7 <=  ( A7 OR L2 ) AFTER 20 ns;
    B8 <=  ( A8 OR L2 ) AFTER 20 ns;
    A8 <=  ( B8 OR L1 ) AFTER 20 ns;
    A7 <=  ( B7 OR L1 ) AFTER 20 ns;
    A6 <=  ( B6 OR L1 ) AFTER 20 ns;
    A5 <=  ( B5 OR L1 ) AFTER 20 ns;
    A4 <=  ( B4 OR L1 ) AFTER 20 ns;
    A3 <=  ( B3 OR L1 ) AFTER 20 ns;
    A2 <=  ( B2 OR L1 ) AFTER 20 ns;
    A1 <=  ( B1 OR L1 ) AFTER 20 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1642\ IS PORT(
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
END \74ALS1642\;

ARCHITECTURE model OF \74ALS1642\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( G ) AFTER 16 ns;
    N2 <= NOT ( DIR ) AFTER 16 ns;
    L1 <=  ( N1 AND N2 );
    L2 <=  ( N1 AND DIR );
    B1 <= NOT ( A1 AND L2 ) AFTER 23 ns;
    B2 <= NOT ( A2 AND L2 ) AFTER 23 ns;
    B3 <= NOT ( A3 AND L2 ) AFTER 23 ns;
    B4 <= NOT ( A4 AND L2 ) AFTER 23 ns;
    B5 <= NOT ( A5 AND L2 ) AFTER 23 ns;
    B6 <= NOT ( A6 AND L2 ) AFTER 23 ns;
    B7 <= NOT ( A7 AND L2 ) AFTER 23 ns;
    B8 <= NOT ( A8 AND L2 ) AFTER 23 ns;
    A8 <= NOT ( B8 AND L1 ) AFTER 23 ns;
    A7 <= NOT ( B7 AND L1 ) AFTER 23 ns;
    A6 <= NOT ( B6 AND L1 ) AFTER 23 ns;
    A5 <= NOT ( B5 AND L1 ) AFTER 23 ns;
    A4 <= NOT ( B4 AND L1 ) AFTER 23 ns;
    A3 <= NOT ( B3 AND L1 ) AFTER 23 ns;
    A2 <= NOT ( B2 AND L1 ) AFTER 23 ns;
    A1 <= NOT ( B1 AND L1 ) AFTER 23 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1643\ IS PORT(
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
END \74ALS1643\;

ARCHITECTURE model OF \74ALS1643\ IS
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
    N1 <= NOT ( A1 ) AFTER 5 ns;
    N2 <= NOT ( A2 ) AFTER 5 ns;
    N3 <= NOT ( A3 ) AFTER 5 ns;
    N4 <= NOT ( A4 ) AFTER 5 ns;
    N5 <= NOT ( A5 ) AFTER 5 ns;
    N6 <= NOT ( A6 ) AFTER 5 ns;
    N7 <= NOT ( A7 ) AFTER 5 ns;
    N8 <= NOT ( A8 ) AFTER 5 ns;
    N9 <=  ( B8 ) AFTER 6 ns;
    N10 <=  ( B7 ) AFTER 6 ns;
    N11 <=  ( B6 ) AFTER 6 ns;
    N12 <=  ( B5 ) AFTER 6 ns;
    N13 <=  ( B4 ) AFTER 6 ns;
    N14 <=  ( B3 ) AFTER 6 ns;
    N15 <=  ( B2 ) AFTER 6 ns;
    N16 <=  ( B1 ) AFTER 6 ns;
    TSB_872 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L4 );
    TSB_873 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L4 );
    TSB_874 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L4 );
    TSB_875 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L4 );
    TSB_876 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L4 );
    TSB_877 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L4 );
    TSB_878 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L4 );
    TSB_879 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L4 );
    TSB_880 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L3 );
    TSB_881 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L3 );
    TSB_882 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L3 );
    TSB_883 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L3 );
    TSB_884 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L3 );
    TSB_885 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L3 );
    TSB_886 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L3 );
    TSB_887 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>21 ns, tfall_i1_o=>18 ns, tpd_en_o=>13 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L3 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1644\ IS PORT(
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
END \74ALS1644\;

ARCHITECTURE model OF \74ALS1644\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    L1 <= NOT ( G );
    L2 <= NOT ( DIR );
    N1 <=  ( L1 AND DIR ) AFTER 11 ns;
    N2 <= NOT ( L1 AND L2 ) AFTER 10 ns;
    B1 <= NOT ( A1 AND N1 ) AFTER 25 ns;
    B2 <= NOT ( A2 AND N1 ) AFTER 25 ns;
    B3 <= NOT ( A3 AND N1 ) AFTER 25 ns;
    B4 <= NOT ( A4 AND N1 ) AFTER 25 ns;
    B5 <= NOT ( A5 AND N1 ) AFTER 25 ns;
    B6 <= NOT ( A6 AND N1 ) AFTER 25 ns;
    B7 <= NOT ( A7 AND N1 ) AFTER 25 ns;
    B8 <= NOT ( A8 AND N1 ) AFTER 25 ns;
    A8 <=  ( B8 OR N2 ) AFTER 22 ns;
    A7 <=  ( B7 OR N2 ) AFTER 22 ns;
    A6 <=  ( B6 OR N2 ) AFTER 22 ns;
    A5 <=  ( B5 OR N2 ) AFTER 22 ns;
    A4 <=  ( B4 OR N2 ) AFTER 22 ns;
    A3 <=  ( B3 OR N2 ) AFTER 22 ns;
    A2 <=  ( B2 OR N2 ) AFTER 22 ns;
    A1 <=  ( B1 OR N2 ) AFTER 22 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1645\ IS PORT(
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
END \74ALS1645\;

ARCHITECTURE model OF \74ALS1645\ IS
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
    N1 <=  ( A1 ) AFTER 11 ns;
    N2 <=  ( A2 ) AFTER 11 ns;
    N3 <=  ( A3 ) AFTER 11 ns;
    N4 <=  ( A4 ) AFTER 11 ns;
    N5 <=  ( A5 ) AFTER 11 ns;
    N6 <=  ( A6 ) AFTER 11 ns;
    N7 <=  ( A7 ) AFTER 11 ns;
    N8 <=  ( A8 ) AFTER 11 ns;
    N9 <=  ( B8 ) AFTER 11 ns;
    N10 <=  ( B7 ) AFTER 11 ns;
    N11 <=  ( B6 ) AFTER 11 ns;
    N12 <=  ( B5 ) AFTER 11 ns;
    N13 <=  ( B4 ) AFTER 11 ns;
    N14 <=  ( B3 ) AFTER 11 ns;
    N15 <=  ( B2 ) AFTER 11 ns;
    N16 <=  ( B1 ) AFTER 11 ns;
    TSB_888 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_889 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_890 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_891 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_892 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_893 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_894 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_895 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_896 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_897 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_898 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_899 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_900 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_901 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_902 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_903 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1645A\ IS PORT(
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
END \74ALS1645A\;

ARCHITECTURE model OF \74ALS1645A\ IS
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
    TSB_904 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L3 );
    TSB_905 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L3 );
    TSB_906 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L3 );
    TSB_907 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L3 );
    TSB_908 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B5 , i1=>N5 , en=>L3 );
    TSB_909 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B6 , i1=>N6 , en=>L3 );
    TSB_910 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B7 , i1=>N7 , en=>L3 );
    TSB_911 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>B8 , i1=>N8 , en=>L3 );
    TSB_912 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A8 , i1=>N9 , en=>L4 );
    TSB_913 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A7 , i1=>N10 , en=>L4 );
    TSB_914 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A6 , i1=>N11 , en=>L4 );
    TSB_915 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A5 , i1=>N12 , en=>L4 );
    TSB_916 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A4 , i1=>N13 , en=>L4 );
    TSB_917 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A3 , i1=>N14 , en=>L4 );
    TSB_918 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A2 , i1=>N15 , en=>L4 );
    TSB_919 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>25 ns, tfall_i1_o=>25 ns, tpd_en_o=>18 ns)
      PORT MAP  (O=>A1 , i1=>N16 , en=>L4 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1804\ IS PORT(
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
END \74ALS1804\;

ARCHITECTURE model OF \74ALS1804\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 8 ns;
    O_E <= NOT ( I0_E AND I1_E ) AFTER 8 ns;
    O_F <= NOT ( I0_F AND I1_F ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1804A\ IS PORT(
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
END \74ALS1804A\;

ARCHITECTURE model OF \74ALS1804A\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B AND I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C AND I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D AND I1_D ) AFTER 8 ns;
    O_E <= NOT ( I0_E AND I1_E ) AFTER 8 ns;
    O_F <= NOT ( I0_F AND I1_F ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1805\ IS PORT(
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
END \74ALS1805\;

ARCHITECTURE model OF \74ALS1805\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 8 ns;
    O_E <= NOT ( I0_E OR I1_E ) AFTER 8 ns;
    O_F <= NOT ( I0_F OR I1_F ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1805A\ IS PORT(
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
END \74ALS1805A\;

ARCHITECTURE model OF \74ALS1805A\ IS

    BEGIN
    O_A <= NOT ( I0_A OR I1_A ) AFTER 8 ns;
    O_B <= NOT ( I0_B OR I1_B ) AFTER 8 ns;
    O_C <= NOT ( I0_C OR I1_C ) AFTER 8 ns;
    O_D <= NOT ( I0_D OR I1_D ) AFTER 8 ns;
    O_E <= NOT ( I0_E OR I1_E ) AFTER 8 ns;
    O_F <= NOT ( I0_F OR I1_F ) AFTER 8 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1808\ IS PORT(
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
END \74ALS1808\;

ARCHITECTURE model OF \74ALS1808\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 9 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 9 ns;
    O_D <=  ( I0_D AND I1_D ) AFTER 9 ns;
    O_E <=  ( I0_E AND I1_E ) AFTER 9 ns;
    O_F <=  ( I0_F AND I1_F ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1808A\ IS PORT(
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
END \74ALS1808A\;

ARCHITECTURE model OF \74ALS1808A\ IS

    BEGIN
    O_A <=  ( I0_A AND I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B AND I1_B ) AFTER 9 ns;
    O_C <=  ( I0_C AND I1_C ) AFTER 9 ns;
    O_D <=  ( I0_D AND I1_D ) AFTER 9 ns;
    O_E <=  ( I0_E AND I1_E ) AFTER 9 ns;
    O_F <=  ( I0_F AND I1_F ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1832\ IS PORT(
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
END \74ALS1832\;

ARCHITECTURE model OF \74ALS1832\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 9 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 9 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 9 ns;
    O_E <=  ( I0_E OR I1_E ) AFTER 9 ns;
    O_F <=  ( I0_F OR I1_F ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS1832A\ IS PORT(
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
END \74ALS1832A\;

ARCHITECTURE model OF \74ALS1832A\ IS

    BEGIN
    O_A <=  ( I0_A OR I1_A ) AFTER 9 ns;
    O_B <=  ( I0_B OR I1_B ) AFTER 9 ns;
    O_C <=  ( I0_C OR I1_C ) AFTER 9 ns;
    O_D <=  ( I0_D OR I1_D ) AFTER 9 ns;
    O_E <=  ( I0_E OR I1_E ) AFTER 9 ns;
    O_F <=  ( I0_F OR I1_F ) AFTER 9 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS2240\ IS PORT(
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
END \74ALS2240\;

ARCHITECTURE model OF \74ALS2240\ IS
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
    N1 <= NOT ( A1_A ) AFTER 5 ns;
    N2 <= NOT ( A2_A ) AFTER 5 ns;
    N3 <= NOT ( A3_A ) AFTER 5 ns;
    N4 <= NOT ( A4_A ) AFTER 5 ns;
    N5 <= NOT ( A1_B ) AFTER 5 ns;
    N6 <= NOT ( A2_B ) AFTER 5 ns;
    N7 <= NOT ( A3_B ) AFTER 5 ns;
    N8 <= NOT ( A4_B ) AFTER 5 ns;
    TSB_920 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y1_A , i1=>N1 , en=>L1 );
    TSB_921 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y2_A , i1=>N2 , en=>L1 );
    TSB_922 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y3_A , i1=>N3 , en=>L1 );
    TSB_923 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y4_A , i1=>N4 , en=>L1 );
    TSB_924 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y1_B , i1=>N5 , en=>L2 );
    TSB_925 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y2_B , i1=>N6 , en=>L2 );
    TSB_926 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y3_B , i1=>N7 , en=>L2 );
    TSB_927 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>17 ns, tpd_en_o=>15 ns)
      PORT MAP  (O=>Y4_B , i1=>N8 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS2242\ IS PORT(
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
END \74ALS2242\;

ARCHITECTURE model OF \74ALS2242\ IS
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
    N1 <= NOT ( A1 ) AFTER 6 ns;
    N2 <= NOT ( A2 ) AFTER 6 ns;
    N3 <= NOT ( A3 ) AFTER 6 ns;
    N4 <= NOT ( A4 ) AFTER 6 ns;
    N5 <= NOT ( B4 ) AFTER 6 ns;
    N6 <= NOT ( B3 ) AFTER 6 ns;
    N7 <= NOT ( B2 ) AFTER 6 ns;
    N8 <= NOT ( B1 ) AFTER 6 ns;
    TSB_928 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B1 , i1=>N1 , en=>L1 );
    TSB_929 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B2 , i1=>N2 , en=>L1 );
    TSB_930 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B3 , i1=>N3 , en=>L1 );
    TSB_931 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>B4 , i1=>N4 , en=>L1 );
    TSB_932 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A4 , i1=>N5 , en=>GBA );
    TSB_933 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A3 , i1=>N6 , en=>GBA );
    TSB_934 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A2 , i1=>N7 , en=>GBA );
    TSB_935 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>16 ns, tpd_en_o=>14 ns)
      PORT MAP  (O=>A1 , i1=>N8 , en=>GBA );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS2540\ IS PORT(
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
END \74ALS2540\;

ARCHITECTURE model OF \74ALS2540\ IS
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
    N1 <= NOT ( A1 ) AFTER 7 ns;
    N2 <= NOT ( A2 ) AFTER 7 ns;
    N3 <= NOT ( A3 ) AFTER 7 ns;
    N4 <= NOT ( A4 ) AFTER 7 ns;
    N5 <= NOT ( A5 ) AFTER 7 ns;
    N6 <= NOT ( A6 ) AFTER 7 ns;
    N7 <= NOT ( A7 ) AFTER 7 ns;
    N8 <= NOT ( A8 ) AFTER 7 ns;
    TSB_936 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_937 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_938 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_939 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_940 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_941 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_942 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_943 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS2541\ IS PORT(
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
END \74ALS2541\;

ARCHITECTURE model OF \74ALS2541\ IS
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
    N1 <=  ( A1 ) AFTER 10 ns;
    N2 <=  ( A2 ) AFTER 10 ns;
    N3 <=  ( A3 ) AFTER 10 ns;
    N4 <=  ( A4 ) AFTER 10 ns;
    N5 <=  ( A5 ) AFTER 10 ns;
    N6 <=  ( A6 ) AFTER 10 ns;
    N7 <=  ( A7 ) AFTER 10 ns;
    N8 <=  ( A8 ) AFTER 10 ns;
    TSB_944 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1 );
    TSB_945 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1 );
    TSB_946 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1 );
    TSB_947 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1 );
    TSB_948 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1 );
    TSB_949 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1 );
    TSB_950 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1 );
    TSB_951 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>20 ns, tfall_i1_o=>15 ns, tpd_en_o=>12 ns)
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS8003\ IS PORT(
I0_A : IN  std_logic;
I0_B : IN  std_logic;
I1_A : IN  std_logic;
I1_B : IN  std_logic;
O_A : OUT  std_logic;
O_B : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS8003\;

ARCHITECTURE model OF \74ALS8003\ IS

    BEGIN
    O_A <= NOT ( I0_A AND I1_A ) AFTER 6 ns;
    O_B <= NOT ( I1_B AND I0_B ) AFTER 6 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29809\ IS PORT(
P0 : IN  std_logic;
P1 : IN  std_logic;
P2 : IN  std_logic;
P3 : IN  std_logic;
P4 : IN  std_logic;
P5 : IN  std_logic;
P6 : IN  std_logic;
P7 : IN  std_logic;
P8 : IN  std_logic;
Q0 : IN  std_logic;
Q1 : IN  std_logic;
Q2 : IN  std_logic;
Q3 : IN  std_logic;
Q4 : IN  std_logic;
Q5 : IN  std_logic;
Q6 : IN  std_logic;
Q7 : IN  std_logic;
Q8 : IN  std_logic;
G : IN  std_logic;
C : IN  std_logic;
\P=Q\ : OUT  std_logic;
ACK : OUT  std_logic;
VCC : IN  std_logic;
GND : IN  std_logic);
END \74ALS29809\;

ARCHITECTURE model OF \74ALS29809\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
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

    BEGIN
    N1 <= NOT ( G ) AFTER 1 ns;
    L1 <= NOT ( P0 XOR Q0 );
    L2 <= NOT ( P1 XOR Q1 );
    L3 <= NOT ( P2 XOR Q2 );
    L4 <= NOT ( P3 XOR Q3 );
    L5 <= NOT ( P4 XOR Q4 );
    L6 <= NOT ( P5 XOR Q5 );
    L7 <= NOT ( P6 XOR Q6 );
    L8 <= NOT ( P7 XOR Q7 );
    L9 <= NOT ( P8 XOR Q8 );
    \P=Q\ <= NOT ( N1 AND L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9 ) AFTER 8 ns;
    N2 <= NOT ( G ) AFTER 1 ns;
    L11 <= NOT ( P0 XOR Q0 );
    L12 <= NOT ( P1 XOR Q1 );
    L13 <= NOT ( P2 XOR Q2 );
    L14 <= NOT ( P3 XOR Q3 );
    L15 <= NOT ( P4 XOR Q4 );
    L16 <= NOT ( P5 XOR Q5 );
    L17 <= NOT ( P6 XOR Q6 );
    L18 <= NOT ( P7 XOR Q7 );
    L19 <= NOT ( P8 XOR Q8 );
    N10 <= NOT ( N2 AND L11 AND L12 AND L13 AND L14 AND L15 AND L16 AND L17 AND L18 AND L19 ) AFTER 8 ns;
    L10 <= NOT ( N10 );
    N3 <= NOT ( C ) AFTER 9 ns;
    ACK <= NOT ( L10 AND N3 ) AFTER 5 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29827\ IS PORT(
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
END \74ALS29827\;

ARCHITECTURE model OF \74ALS29827\ IS
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
    N1 <=  ( D0 ) AFTER 10 ns;
    N2 <=  ( D1 ) AFTER 10 ns;
    N3 <=  ( D2 ) AFTER 10 ns;
    N4 <=  ( D3 ) AFTER 10 ns;
    N5 <=  ( D4 ) AFTER 10 ns;
    N6 <=  ( D5 ) AFTER 10 ns;
    N7 <=  ( D6 ) AFTER 10 ns;
    N8 <=  ( D7 ) AFTER 10 ns;
    N9 <=  ( D8 ) AFTER 10 ns;
    N10 <=  ( D9 ) AFTER 10 ns;
    TSB_952 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_953 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_954 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_955 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_956 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_957 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_958 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_959 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_960 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_961 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29828\ IS PORT(
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
END \74ALS29828\;

ARCHITECTURE model OF \74ALS29828\ IS
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
    N1 <= NOT ( D0 ) AFTER 8 ns;
    N2 <= NOT ( D1 ) AFTER 8 ns;
    N3 <= NOT ( D2 ) AFTER 8 ns;
    N4 <= NOT ( D3 ) AFTER 8 ns;
    N5 <= NOT ( D4 ) AFTER 8 ns;
    N6 <= NOT ( D5 ) AFTER 8 ns;
    N7 <= NOT ( D6 ) AFTER 8 ns;
    N8 <= NOT ( D7 ) AFTER 8 ns;
    N9 <= NOT ( D8 ) AFTER 8 ns;
    N10 <= NOT ( D9 ) AFTER 8 ns;
    TSB_962 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O0 , i1=>N1 , en=>L1 );
    TSB_963 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O1 , i1=>N2 , en=>L1 );
    TSB_964 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O2 , i1=>N3 , en=>L1 );
    TSB_965 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O3 , i1=>N4 , en=>L1 );
    TSB_966 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O4 , i1=>N5 , en=>L1 );
    TSB_967 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O5 , i1=>N6 , en=>L1 );
    TSB_968 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O6 , i1=>N7 , en=>L1 );
    TSB_969 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O7 , i1=>N8 , en=>L1 );
    TSB_970 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O8 , i1=>N9 , en=>L1 );
    TSB_971 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>O9 , i1=>N10 , en=>L1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29861\ IS PORT(
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
END \74ALS29861\;

ARCHITECTURE model OF \74ALS29861\ IS
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
    L1 <= NOT ( OEAB );
    L2 <= NOT ( OEBA );
    N1 <=  ( A0 ) AFTER 8 ns;
    N2 <=  ( A1 ) AFTER 8 ns;
    N3 <=  ( A2 ) AFTER 8 ns;
    N4 <=  ( A3 ) AFTER 8 ns;
    N5 <=  ( A4 ) AFTER 8 ns;
    N6 <=  ( A5 ) AFTER 8 ns;
    N7 <=  ( A6 ) AFTER 8 ns;
    N8 <=  ( A7 ) AFTER 8 ns;
    N9 <=  ( A8 ) AFTER 8 ns;
    N10 <=  ( A9 ) AFTER 8 ns;
    N11 <=  ( B9 ) AFTER 8 ns;
    N12 <=  ( B8 ) AFTER 8 ns;
    N13 <=  ( B7 ) AFTER 8 ns;
    N14 <=  ( B6 ) AFTER 8 ns;
    N15 <=  ( B5 ) AFTER 8 ns;
    N16 <=  ( B4 ) AFTER 8 ns;
    N17 <=  ( B3 ) AFTER 8 ns;
    N18 <=  ( B2 ) AFTER 8 ns;
    N19 <=  ( B1 ) AFTER 8 ns;
    N20 <=  ( B0 ) AFTER 8 ns;
    TSB_972 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B0 , i1=>N1 , en=>L1 );
    TSB_973 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L1 );
    TSB_974 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L1 );
    TSB_975 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L1 );
    TSB_976 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L1 );
    TSB_977 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L1 );
    TSB_978 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L1 );
    TSB_979 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L1 );
    TSB_980 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L1 );
    TSB_981 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B9 , i1=>N10 , en=>L1 );
    TSB_982 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A9 , i1=>N11 , en=>L2 );
    TSB_983 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A8 , i1=>N12 , en=>L2 );
    TSB_984 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A7 , i1=>N13 , en=>L2 );
    TSB_985 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A6 , i1=>N14 , en=>L2 );
    TSB_986 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A5 , i1=>N15 , en=>L2 );
    TSB_987 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A4 , i1=>N16 , en=>L2 );
    TSB_988 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A3 , i1=>N17 , en=>L2 );
    TSB_989 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A2 , i1=>N18 , en=>L2 );
    TSB_990 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A1 , i1=>N19 , en=>L2 );
    TSB_991 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A0 , i1=>N20 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29862\ IS PORT(
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
END \74ALS29862\;

ARCHITECTURE model OF \74ALS29862\ IS
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
    L1 <= NOT ( OEAB );
    L2 <= NOT ( OEBA );
    N1 <= NOT ( A0 ) AFTER 8 ns;
    N2 <= NOT ( A1 ) AFTER 8 ns;
    N3 <= NOT ( A2 ) AFTER 8 ns;
    N4 <= NOT ( A3 ) AFTER 8 ns;
    N5 <= NOT ( A4 ) AFTER 8 ns;
    N6 <= NOT ( A5 ) AFTER 8 ns;
    N7 <= NOT ( A6 ) AFTER 8 ns;
    N8 <= NOT ( A7 ) AFTER 8 ns;
    N9 <= NOT ( A8 ) AFTER 8 ns;
    N10 <= NOT ( A9 ) AFTER 8 ns;
    N11 <= NOT ( B9 ) AFTER 8 ns;
    N12 <= NOT ( B8 ) AFTER 8 ns;
    N13 <= NOT ( B7 ) AFTER 8 ns;
    N14 <= NOT ( B6 ) AFTER 8 ns;
    N15 <= NOT ( B5 ) AFTER 8 ns;
    N16 <= NOT ( B4 ) AFTER 8 ns;
    N17 <= NOT ( B3 ) AFTER 8 ns;
    N18 <= NOT ( B2 ) AFTER 8 ns;
    N19 <= NOT ( B1 ) AFTER 8 ns;
    N20 <= NOT ( B0 ) AFTER 8 ns;
    TSB_992 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B0 , i1=>N1 , en=>L1 );
    TSB_993 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L1 );
    TSB_994 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L1 );
    TSB_995 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L1 );
    TSB_996 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L1 );
    TSB_997 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L1 );
    TSB_998 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L1 );
    TSB_999 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L1 );
    TSB_1000 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L1 );
    TSB_1001 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B9 , i1=>N10 , en=>L1 );
    TSB_1002 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A9 , i1=>N11 , en=>L2 );
    TSB_1003 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A8 , i1=>N12 , en=>L2 );
    TSB_1004 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A7 , i1=>N13 , en=>L2 );
    TSB_1005 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A6 , i1=>N14 , en=>L2 );
    TSB_1006 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A5 , i1=>N15 , en=>L2 );
    TSB_1007 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A4 , i1=>N16 , en=>L2 );
    TSB_1008 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A3 , i1=>N17 , en=>L2 );
    TSB_1009 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A2 , i1=>N18 , en=>L2 );
    TSB_1010 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A1 , i1=>N19 , en=>L2 );
    TSB_1011 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A0 , i1=>N20 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29863\ IS PORT(
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
END \74ALS29863\;

ARCHITECTURE model OF \74ALS29863\ IS
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
    L1 <= NOT ( OEAB1 OR OEAB0 );
    L2 <= NOT ( OEBA0 OR OEBA1 );
    N1 <=  ( A0 ) AFTER 10 ns;
    N2 <=  ( A1 ) AFTER 10 ns;
    N3 <=  ( A2 ) AFTER 10 ns;
    N4 <=  ( A3 ) AFTER 10 ns;
    N5 <=  ( A4 ) AFTER 10 ns;
    N6 <=  ( A5 ) AFTER 10 ns;
    N7 <=  ( A6 ) AFTER 10 ns;
    N8 <=  ( A7 ) AFTER 10 ns;
    N9 <=  ( A8 ) AFTER 10 ns;
    N10 <=  ( B8 ) AFTER 10 ns;
    N11 <=  ( B7 ) AFTER 10 ns;
    N12 <=  ( B6 ) AFTER 10 ns;
    N13 <=  ( B5 ) AFTER 10 ns;
    N14 <=  ( B4 ) AFTER 10 ns;
    N15 <=  ( B3 ) AFTER 10 ns;
    N16 <=  ( B2 ) AFTER 10 ns;
    N17 <=  ( B1 ) AFTER 10 ns;
    N18 <=  ( B0 ) AFTER 10 ns;
    TSB_1012 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B0 , i1=>N1 , en=>L1 );
    TSB_1013 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L1 );
    TSB_1014 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L1 );
    TSB_1015 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L1 );
    TSB_1016 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L1 );
    TSB_1017 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L1 );
    TSB_1018 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L1 );
    TSB_1019 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L1 );
    TSB_1020 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L1 );
    TSB_1021 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A8 , i1=>N10 , en=>L2 );
    TSB_1022 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A7 , i1=>N11 , en=>L2 );
    TSB_1023 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A6 , i1=>N12 , en=>L2 );
    TSB_1024 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A5 , i1=>N13 , en=>L2 );
    TSB_1025 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A4 , i1=>N14 , en=>L2 );
    TSB_1026 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A3 , i1=>N15 , en=>L2 );
    TSB_1027 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A2 , i1=>N16 , en=>L2 );
    TSB_1028 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A1 , i1=>N17 , en=>L2 );
    TSB_1029 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A0 , i1=>N18 , en=>L2 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.orcad_prims.all;

ENTITY \74ALS29864\ IS PORT(
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
END \74ALS29864\;

ARCHITECTURE model OF \74ALS29864\ IS
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
    L1 <= NOT ( OEAB1 OR OEAB0 );
    L2 <= NOT ( OEBA0 OR OEBA1 );
    N1 <= NOT ( A0 ) AFTER 8 ns;
    N2 <= NOT ( A1 ) AFTER 8 ns;
    N3 <= NOT ( A2 ) AFTER 8 ns;
    N4 <= NOT ( A3 ) AFTER 8 ns;
    N5 <= NOT ( A4 ) AFTER 8 ns;
    N6 <= NOT ( A5 ) AFTER 8 ns;
    N7 <= NOT ( A6 ) AFTER 8 ns;
    N8 <= NOT ( A7 ) AFTER 8 ns;
    N9 <= NOT ( A8 ) AFTER 8 ns;
    N10 <= NOT ( B8 ) AFTER 8 ns;
    N11 <= NOT ( B7 ) AFTER 8 ns;
    N12 <= NOT ( B6 ) AFTER 8 ns;
    N13 <= NOT ( B5 ) AFTER 8 ns;
    N14 <= NOT ( B4 ) AFTER 8 ns;
    N15 <= NOT ( B3 ) AFTER 8 ns;
    N16 <= NOT ( B2 ) AFTER 8 ns;
    N17 <= NOT ( B1 ) AFTER 8 ns;
    N18 <= NOT ( B0 ) AFTER 8 ns;
    TSB_1030 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B0 , i1=>N1 , en=>L1 );
    TSB_1031 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B1 , i1=>N2 , en=>L1 );
    TSB_1032 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B2 , i1=>N3 , en=>L1 );
    TSB_1033 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B3 , i1=>N4 , en=>L1 );
    TSB_1034 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B4 , i1=>N5 , en=>L1 );
    TSB_1035 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B5 , i1=>N6 , en=>L1 );
    TSB_1036 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B6 , i1=>N7 , en=>L1 );
    TSB_1037 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B7 , i1=>N8 , en=>L1 );
    TSB_1038 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>B8 , i1=>N9 , en=>L1 );
    TSB_1039 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A8 , i1=>N10 , en=>L2 );
    TSB_1040 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A7 , i1=>N11 , en=>L2 );
    TSB_1041 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A6 , i1=>N12 , en=>L2 );
    TSB_1042 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A5 , i1=>N13 , en=>L2 );
    TSB_1043 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A4 , i1=>N14 , en=>L2 );
    TSB_1044 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A3 , i1=>N15 , en=>L2 );
    TSB_1045 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A2 , i1=>N16 , en=>L2 );
    TSB_1046 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A1 , i1=>N17 , en=>L2 );
    TSB_1047 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>15 ns, tfall_i1_o=>15 ns, tpd_en_o=>9 ns)
      PORT MAP  (O=>A0 , i1=>N18 , en=>L2 );
END model;

