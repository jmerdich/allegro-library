--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1995                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:     OrCAD VHDL Source File
-- Version:     x7.00.00
-- Date:        August 20, 1996
-- File:        PLDGATES.VHD
-- Resource:    PLD 386+ SYMBOLS.TXT
-- Delay units: Nanoseconds

-- Rev Notes:
--		x7.00.00 - Handle feedback in correct manner for Simulate v7.0 

 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND2 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic);
END AND2;

ARCHITECTURE model OF AND2 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND3 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic);
END AND3;

ARCHITECTURE model OF AND3 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND4 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic);
END AND4;

ARCHITECTURE model OF AND4 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND5 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic);
END AND5;

ARCHITECTURE model OF AND5 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND6 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic);
END AND6;

ARCHITECTURE model OF AND6 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND7 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic);
END AND7;

ARCHITECTURE model OF AND7 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND8 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic);
END AND8;

ARCHITECTURE model OF AND8 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND9 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic);
END AND9;

ARCHITECTURE model OF AND9 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND10 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic);
END AND10;

ARCHITECTURE model OF AND10 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND11 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic);
END AND11;

ARCHITECTURE model OF AND11 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND12 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic);
END AND12;

ARCHITECTURE model OF AND12 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND13 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic);
END AND13;

ARCHITECTURE model OF AND13 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND14 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic);
END AND14;

ARCHITECTURE model OF AND14 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 AND IN14 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND15 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic);
END AND15;

ARCHITECTURE model OF AND15 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 AND IN14 AND IN15 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND16 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic;
IN16 : IN  std_logic);
END AND16;

ARCHITECTURE model OF AND16 IS

    BEGIN
    \OUT\ <=  ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 AND IN14 AND IN15 AND IN16 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND2 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic);
END NAND2;

ARCHITECTURE model OF NAND2 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND3 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic);
END NAND3;

ARCHITECTURE model OF NAND3 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND4 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic);
END NAND4;

ARCHITECTURE model OF NAND4 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND5 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic);
END NAND5;

ARCHITECTURE model OF NAND5 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND6 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic);
END NAND6;

ARCHITECTURE model OF NAND6 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND7 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic);
END NAND7;

ARCHITECTURE model OF NAND7 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND8 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic);
END NAND8;

ARCHITECTURE model OF NAND8 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND9 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic);
END NAND9;

ARCHITECTURE model OF NAND9 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND10 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic);
END NAND10;

ARCHITECTURE model OF NAND10 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND11 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic);
END NAND11;

ARCHITECTURE model OF NAND11 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND12 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic);
END NAND12;

ARCHITECTURE model OF NAND12 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND13 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic);
END NAND13;

ARCHITECTURE model OF NAND13 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND14 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic);
END NAND14;

ARCHITECTURE model OF NAND14 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 AND IN14 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND15 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic);
END NAND15;

ARCHITECTURE model OF NAND15 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 AND IN14 AND IN15 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND16 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic;
IN16 : IN  std_logic);
END NAND16;

ARCHITECTURE model OF NAND16 IS

    BEGIN
    \OUT\ <= NOT ( IN1 AND IN2 AND IN3 AND IN4 AND IN5 AND IN6 AND IN7 AND IN8 AND IN9 AND IN10 AND IN11 AND IN12 AND IN13 AND IN14 AND IN15 AND IN16 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR2 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic);
END OR2;

ARCHITECTURE model OF OR2 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR3 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic);
END OR3;

ARCHITECTURE model OF OR3 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR4 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic);
END OR4;

ARCHITECTURE model OF OR4 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR5 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic);
END OR5;

ARCHITECTURE model OF OR5 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR6 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic);
END OR6;

ARCHITECTURE model OF OR6 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR7 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic);
END OR7;

ARCHITECTURE model OF OR7 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR8 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic);
END OR8;

ARCHITECTURE model OF OR8 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR9 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic);
END OR9;

ARCHITECTURE model OF OR9 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR10 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic);
END OR10;

ARCHITECTURE model OF OR10 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR11 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic);
END OR11;

ARCHITECTURE model OF OR11 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR12 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic);
END OR12;

ARCHITECTURE model OF OR12 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR13 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic);
END OR13;

ARCHITECTURE model OF OR13 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR14 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic);
END OR14;

ARCHITECTURE model OF OR14 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 OR IN14 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR15 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic);
END OR15;

ARCHITECTURE model OF OR15 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 OR IN14 OR IN15 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OR16 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic;
IN16 : IN  std_logic);
END OR16;

ARCHITECTURE model OF OR16 IS

    BEGIN
    \OUT\ <=  ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 OR IN14 OR IN15 OR IN16 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR2 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic);
END NOR2;

ARCHITECTURE model OF NOR2 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR3 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic);
END NOR3;

ARCHITECTURE model OF NOR3 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR4 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic);
END NOR4;

ARCHITECTURE model OF NOR4 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR5 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic);
END NOR5;

ARCHITECTURE model OF NOR5 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR6 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic);
END NOR6;

ARCHITECTURE model OF NOR6 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR7 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic);
END NOR7;

ARCHITECTURE model OF NOR7 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR8 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic);
END NOR8;

ARCHITECTURE model OF NOR8 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR9 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic);
END NOR9;

ARCHITECTURE model OF NOR9 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR10 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic);
END NOR10;

ARCHITECTURE model OF NOR10 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR11 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic);
END NOR11;

ARCHITECTURE model OF NOR11 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR12 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic);
END NOR12;

ARCHITECTURE model OF NOR12 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR13 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic);
END NOR13;

ARCHITECTURE model OF NOR13 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR14 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic);
END NOR14;

ARCHITECTURE model OF NOR14 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 OR IN14 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR15 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic);
END NOR15;

ARCHITECTURE model OF NOR15 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 OR IN14 OR IN15 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOR16 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic;
IN16 : IN  std_logic);
END NOR16;

ARCHITECTURE model OF NOR16 IS

    BEGIN
    \OUT\ <= NOT ( IN1 OR IN2 OR IN3 OR IN4 OR IN5 OR IN6 OR IN7 OR IN8 OR IN9 OR IN10 OR IN11 OR IN12 OR IN13 OR IN14 OR IN15 OR IN16 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR2 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic);
END XOR2;

ARCHITECTURE model OF XOR2 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR3 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic);
END XOR3;

ARCHITECTURE model OF XOR3 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR4 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic);
END XOR4;

ARCHITECTURE model OF XOR4 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR5 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic);
END XOR5;

ARCHITECTURE model OF XOR5 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR6 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic);
END XOR6;

ARCHITECTURE model OF XOR6 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR7 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic);
END XOR7;

ARCHITECTURE model OF XOR7 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR8 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic);
END XOR8;

ARCHITECTURE model OF XOR8 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR9 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic);
END XOR9;

ARCHITECTURE model OF XOR9 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR10 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic);
END XOR10;

ARCHITECTURE model OF XOR10 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR11 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic);
END XOR11;

ARCHITECTURE model OF XOR11 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR12 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic);
END XOR12;

ARCHITECTURE model OF XOR12 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR13 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic);
END XOR13;

ARCHITECTURE model OF XOR13 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR14 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic);
END XOR14;

ARCHITECTURE model OF XOR14 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 XOR IN14 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR15 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic);
END XOR15;

ARCHITECTURE model OF XOR15 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 XOR IN14 XOR IN15 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR16 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic;
IN16 : IN  std_logic);
END XOR16;

ARCHITECTURE model OF XOR16 IS

    BEGIN
    \OUT\ <= ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 XOR IN14 XOR IN15 XOR IN16 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR2 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic);
END XNOR2;

ARCHITECTURE model OF XNOR2 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR3 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic);
END XNOR3;

ARCHITECTURE model OF XNOR3 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR4 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic);
END XNOR4;

ARCHITECTURE model OF XNOR4 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR5 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic);
END XNOR5;

ARCHITECTURE model OF XNOR5 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR6 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic);
END XNOR6;

ARCHITECTURE model OF XNOR6 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR7 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic);
END XNOR7;

ARCHITECTURE model OF XNOR7 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR8 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic);
END XNOR8;

ARCHITECTURE model OF XNOR8 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR9 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic);
END XNOR9;

ARCHITECTURE model OF XNOR9 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR10 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic);
END XNOR10;

ARCHITECTURE model OF XNOR10 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR11 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic);
END XNOR11;

ARCHITECTURE model OF XNOR11 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR12 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic);
END XNOR12;

ARCHITECTURE model OF XNOR12 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR13 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic);
END XNOR13;

ARCHITECTURE model OF XNOR13 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR14 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic);
END XNOR14;

ARCHITECTURE model OF XNOR14 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 XOR IN14 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR15 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic);
END XNOR15;

ARCHITECTURE model OF XNOR15 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 XOR IN14 XOR IN15 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XNOR16 IS PORT(
\OUT\ : OUT  std_logic;
IN1 : IN  std_logic;
IN2 : IN  std_logic;
IN3 : IN  std_logic;
IN4 : IN  std_logic;
IN5 : IN  std_logic;
IN6 : IN  std_logic;
IN7 : IN  std_logic;
IN8 : IN  std_logic;
IN9 : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
IN13 : IN  std_logic;
IN14 : IN  std_logic;
IN15 : IN  std_logic;
IN16 : IN  std_logic);
END XNOR16;

ARCHITECTURE model OF XNOR16 IS

    BEGIN
    \OUT\ <= NOT ( IN1 XOR IN2 XOR IN3 XOR IN4 XOR IN5 XOR IN6 XOR IN7 XOR IN8 XOR IN9 XOR IN10 XOR IN11 XOR IN12 XOR IN13 XOR IN14 XOR IN15 XOR IN16 ) AFTER 1 NS;
END model;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY DFF IS PORT(
Q : OUT  std_logic;
D : IN  std_logic;
CLK : IN  std_logic);
END DFF;

ARCHITECTURE model OF DFF IS

    SIGNAL N1 : std_logic;
    SIGNAL IPL:  std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPL<='0';
     WAIT FOR 10 ns;
     IPL<='1';
     WAIT;
    END PROCESS;
    DFFC_0 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP (q=>Q , qNot=>N1 , d=>D , clk=>CLK , cl=>IPL );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY DFF2 IS PORT(
Q : OUT  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
CL : IN  std_logic);
END DFF2;

ARCHITECTURE model OF DFF2 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL IPH :  std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPH<='1';
     WAIT FOR 10 ns;
     IPH<='0';
     WAIT;
    END PROCESS;
    N2 <= ( CL NOR IPH ) AFTER 1 NS;
    DFFC_1 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP (q=>Q , qNot=>N1 , d=>D , clk=>CLK , cl=>N2 );
END model;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY DFF3 IS PORT(
Q : OUT  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
PR : IN  std_logic;
CL : IN  std_logic);
END DFF3;

ARCHITECTURE model OF DFF3 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL IPH :  std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPH<='1';
     WAIT FOR 10 ns;
     IPH<='0';
     WAIT;
    END PROCESS;
    N5 <= ( CL NOR IPH ) AFTER 1 NS;
    N6 <= NOT ( PR ) AFTER 1 NS;
    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP  (q=>Q , qNot=>N1 , d=>D , clk=>CLK , pr=>N6 , cl=>N5 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY TFF IS PORT(
Q : OUT  std_logic;
T : IN  std_logic;
CLK : IN  std_logic);
END TFF;

ARCHITECTURE model OF TFF IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL IPL : std_logic;
	 SIGNAL FB1 : std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPL<='0';
     WAIT FOR 10 ns;
     IPL<='1';
     WAIT;
    END PROCESS;
    N1 <= ( T XOR FB1 ) AFTER 1 NS;
    DFFC_2 : ORCAD_DFFC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP (q=>FB1 , qNot=>N2 , d=>N1 , clk=>CLK , cl=>IPL );
    Q <= FB1;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY TFF2 IS PORT(
Q : OUT  std_logic;
T : IN  std_logic;
CLK : IN  std_logic;
CL : IN  std_logic);
END TFF2;

ARCHITECTURE model OF TFF2 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL ONE :  std_logic := '1';
    SIGNAL IPH :  std_logic;
	 SIGNAL FB1 : std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPH<='1';
     WAIT FOR 10 ns;
     IPH<='0';
     WAIT;
    END PROCESS;
    N1 <= ( T XOR FB1 ) AFTER 1 NS;
    N3 <= ( CL NOR IPH ) AFTER 1 NS;
    DFFPC_1 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP  (q=>FB1 , qNot=>N2 , d=>N1 , clk=>CLK , pr=>ONE , cl=>N3 );
	 Q <= FB1;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY TFF3 IS PORT(
Q : OUT  std_logic;
T : IN  std_logic;
CLK : IN  std_logic;
PR : IN  std_logic;
CL : IN  std_logic);
END TFF3;

ARCHITECTURE model OF TFF3 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL IPH : std_logic;
	 SIGNAL FB1 : std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPH<='1'; WAIT FOR 10 ns;
     IPH<='0'; WAIT;
    END PROCESS;
    N3 <= NOT (PR )        AFTER 1 NS;
    N4 <=     (CL NOR IPH) AFTER 1 NS;
    N1 <=     (T XOR FB1 )   AFTER 1 NS;
    DFFPC_2 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP  (q=>FB1 , qNot=>N2 , d=>N1 , clk=>CLK , pr=>N3 , cl=>N4 );
	 Q <= FB1;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY DLAT IS PORT(
Q : OUT  std_logic;
D : IN  std_logic;
G : IN  std_logic);
END DLAT;

ARCHITECTURE model OF DLAT IS

    SIGNAL ONE :  std_logic := '1';
    SIGNAL IPL :  std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPL<='0';
     WAIT FOR 10 ns;
     IPL<='1';
     WAIT;
    END PROCESS;
    DLATCHPC_0 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP  (q=>Q , d=>D , enable=>G , pr=>ONE , cl=>IPL );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY DLAT2 IS PORT(
Q : OUT  std_logic;
D : IN  std_logic;
G : IN  std_logic;
CL : IN  std_logic);
END DLAT2;

ARCHITECTURE model OF DLAT2 IS

    SIGNAL N1 : std_logic;
    SIGNAL ONE :  std_logic := '1';
    SIGNAL IPH :  std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPH<='1';
     WAIT FOR 10 ns;
     IPH<='0';
     WAIT;
    END PROCESS;
    N1 <= ( CL NOR IPH ) AFTER 1 NS;
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP  (q=>Q , d=>D , enable=>G , pr=>ONE , cl=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY DLAT3 IS PORT(
Q : OUT  std_logic;
D : IN  std_logic;
G : IN  std_logic;
PR : IN  std_logic;
CL : IN  std_logic);
END DLAT3;

ARCHITECTURE model OF DLAT3 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL IPH :  std_logic;

    BEGIN

    PROCESS
    BEGIN
     IPH<='1';
     WAIT FOR 10 ns;
     IPH<='0';
     WAIT;
    END PROCESS;
    N1 <=     ( CL NOR IPH ) AFTER 1 NS;
    N2 <= NOT ( PR ) AFTER 1 NS;
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP  (q=>Q , d=>D , enable=>G , pr=>N2 , cl=>N1 );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY \TRI\ IS PORT(
O : OUT  std_logic;
I : IN  std_logic;
OE : IN  std_logic);
END \TRI\;

ARCHITECTURE model OF \TRI\ IS

BEGIN
    TSB_0 :  ORCAD_TSB 
      GENERIC MAP (trise_i1_o=>1 NS, tfall_i1_o=>1 NS, tpd_en_o=>1 NS)
      PORT MAP  (O=>O , i1=>I , en=>OE );
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY INV IS PORT(
O : OUT  std_logic;
I : IN  std_logic);
END INV;

ARCHITECTURE model OF INV IS

    BEGIN
    O <= NOT ( I ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \NOT\ IS PORT(
O : OUT  std_logic;
I : IN  std_logic);
END \NOT\;

ARCHITECTURE model OF \NOT\ IS

    BEGIN
    O <= NOT ( I ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY \BUF\ IS PORT(
P1 : OUT  std_logic;
P2 : IN  std_logic);
END \BUF\;

ARCHITECTURE model OF \BUF\ IS

    BEGIN
    P1 <=  ( P2 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY G08 IS PORT(
O : OUT  std_logic;
I0 : IN  std_logic;
I1 : IN  std_logic);
END G08;

ARCHITECTURE model OF G08 IS

    BEGIN
    O <=  ( I0 AND I1 ) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY G11 IS PORT(
O : OUT  std_logic;
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
\-\ : IN std_logic);
END G11;

ARCHITECTURE model OF G11 IS

    BEGIN
    O <=  ( I0 AND I1 AND I2) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY G21 IS PORT(
O : OUT  std_logic;
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
\-\ : IN std_logic);
END G21;

ARCHITECTURE model OF G21 IS

    BEGIN
    O <=  ( I0 AND I1 AND I2 AND I3) AFTER 1 NS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.orcad_prims.all;

ENTITY G74 IS PORT(
D, CLK, PR, CL : IN  std_logic;
Q, \Q\\\ : OUT  std_logic);
END G74;

ARCHITECTURE model OF G74 IS

   SIGNAL N1  : std_logic;
	SIGNAL FB1 : std_logic;
 
   BEGIN

    \Q\\\ <= NOT ( FB1 ) AFTER 1 ns;

    DFFPC_0 : ORCAD_DFFPC 
      GENERIC MAP (trise_clk_q=>1 NS, tfall_clk_q=>1 NS)
      PORT MAP (q=>FB1 , qNot=> N1, d=>D , clk=>CLK , pr=>PR, cl=>CL );
	 Q <= FB1;
END model;



