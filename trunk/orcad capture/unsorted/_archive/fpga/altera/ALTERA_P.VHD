--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1997                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   
   
-- Purpose:     OrCAD Express for Windows
--              Altera Primitive VHDL Source File
-- File:        ALTERA_P.VHD
-- Date:        July 30, 1997
-- Version:     v7.10
-- Resource:    Altera MAX+PlusII v6.0 On-line Help
-- Delay units: Unit delay 


--*****************************************************************************
-- ALTERA PRIMITIVE MODELS

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gnd IS PORT(
Y    : OUT  std_logic);
END gnd;

ARCHITECTURE model OF gnd IS

    BEGIN
    Y <= '0';
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY vcc IS PORT(
Y    : OUT  std_logic);
END vcc;

ARCHITECTURE model OF vcc IS

    BEGIN
    Y <= '1';
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
Y    : OUT  std_logic);
END and12;

ARCHITECTURE model OF and12 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= IN1  AND IN2  AND IN3;
    L2 <= IN4  AND IN5  AND IN6;
    L3 <= IN7  AND IN8  AND IN9;
    L4 <= IN10 AND IN11 AND IN12;

    Y  <= L1 AND L2 AND L3 AND L4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
Y    : OUT  std_logic);
END and8;

ARCHITECTURE model OF and8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 AND IN2 AND IN3 AND IN4;
    L2 <= IN5 AND IN6 AND IN7 AND IN8;

    Y  <= L1 AND L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
Y    : OUT  std_logic);
END and6;

ARCHITECTURE model OF and6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 AND IN2 AND IN3;
    L2 <= IN4 AND IN5 AND IN6;

    Y  <= L1 AND L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
Y    : OUT  std_logic);
END and4;

ARCHITECTURE model OF and4 IS

    BEGIN
    Y <= IN1 AND IN2 AND IN3 AND IN4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
Y    : OUT  std_logic);
END and3;

ARCHITECTURE model OF and3 IS

    BEGIN
    Y <= IN1 AND IN2 AND IN3 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
Y    : OUT  std_logic);
END and2;

ARCHITECTURE model OF and2 IS

    BEGIN
    Y <= IN1 AND IN2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY band12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
O    : OUT  std_logic);
END band12;

ARCHITECTURE model OF band12 IS
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;
    SIGNAL N9  : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);
    N9  <= NOT (IN9);
    N10 <= NOT (IN10);
    N11 <= NOT (IN11);
    N12 <= NOT (IN12);

    L1 <= N1  AND N2  AND N3;
    L2 <= N4  AND N5  AND N6;
    L3 <= N7  AND N8  AND N9;
    L4 <= N10 AND N11 AND N12;

    O  <= L1 AND L2 AND L3 AND L4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY band8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
O    : OUT  std_logic);
END band8;

ARCHITECTURE model OF band8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);

    L1 <= N1 AND N2 AND N3 AND N4;
    L2 <= N5 AND N6 AND N7 AND N8;

    O  <= L1 AND L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY band6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
O    : OUT  std_logic);
END band6;

ARCHITECTURE model OF band6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);

    L1 <= N1 AND N2 AND N3;
    L2 <= N4 AND N5 AND N6;

    O  <= L1 AND L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY band4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
O    : OUT  std_logic);
END band4;

ARCHITECTURE model OF band4 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);

    O <= N1 AND N2 AND N3 AND N4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY band3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
O    : OUT  std_logic);
END band3;

ARCHITECTURE model OF band3 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);

    O <= N1 AND N2 AND N3 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY band2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
O    : OUT  std_logic);
END band2;

ARCHITECTURE model OF band2 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);

    O <= N1 AND N2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnand12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
O    : OUT  std_logic);
END bnand12;

ARCHITECTURE model OF bnand12 IS
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;
    SIGNAL N9  : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);
    N9  <= NOT (IN9);
    N10 <= NOT (IN10);
    N11 <= NOT (IN11);
    N12 <= NOT (IN12);

    L1 <= N1  AND N2  AND N3;
    L2 <= N4  AND N5  AND N6;
    L3 <= N7  AND N8  AND N9;
    L4 <= N10 AND N11 AND N12;

    O  <= NOT (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnand8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
O    : OUT  std_logic);
END bnand8;

ARCHITECTURE model OF bnand8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);

    L1 <= N1 AND N2 AND N3 AND N4;
    L2 <= N5 AND N6 AND N7 AND N8;

    O  <= NOT (L1 AND L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnand6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
O    : OUT  std_logic);
END bnand6;

ARCHITECTURE model OF bnand6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);

    L1 <= N1 AND N2 AND N3;
    L2 <= N4 AND N5 AND N6;

    O  <= NOT (L1 AND L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnand4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
O    : OUT  std_logic);
END bnand4;

ARCHITECTURE model OF bnand4 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);

    O <= NOT (N1 AND N2 AND N3 AND N4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnand3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
O    : OUT  std_logic);
END bnand3;

ARCHITECTURE model OF bnand3 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);

    O <= NOT (N1 AND N2 AND N3) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnand2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
O    : OUT  std_logic);
END bnand2;

ARCHITECTURE model OF bnand2 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);

    O <= NOT (N1 AND N2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnor12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
O    : OUT  std_logic);
END bnor12;

ARCHITECTURE model OF bnor12 IS
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;
    SIGNAL N9  : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);
    N9  <= NOT (IN9);
    N10 <= NOT (IN10);
    N11 <= NOT (IN11);
    N12 <= NOT (IN12);

    L1 <= N1  OR N2  OR N3;
    L2 <= N4  OR N5  OR N6;
    L3 <= N7  OR N8  OR N9;
    L4 <= N10 OR N11 OR N12;

    O  <= NOT (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnor8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
O    : OUT  std_logic);
END bnor8;

ARCHITECTURE model OF bnor8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);

    L1 <= N1 OR N2 OR N3 OR N4;
    L2 <= N5 OR N6 OR N7 OR N8;

    O  <= NOT (L1 OR L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnor6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
O    : OUT  std_logic);
END bnor6;

ARCHITECTURE model OF bnor6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);

    L1 <= N1 OR N2 OR N3;
    L2 <= N4 OR N5 OR N6;

    O  <= NOT (L1 OR L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnor4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
O    : OUT  std_logic);
END bnor4;

ARCHITECTURE model OF bnor4 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);

    O <= NOT (N1 OR N2 OR N3 OR N4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnor3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
O    : OUT  std_logic);
END bnor3;

ARCHITECTURE model OF bnor3 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);

    O <= NOT (N1 OR N2 OR N3) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bnor2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
O    : OUT  std_logic);
END bnor2;

ARCHITECTURE model OF bnor2 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);

    O <= NOT (N1 OR N2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bor12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
O    : OUT  std_logic);
END bor12;

ARCHITECTURE model OF bor12 IS
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;
    SIGNAL N9  : std_logic;
    SIGNAL N10 : std_logic;
    SIGNAL N11 : std_logic;
    SIGNAL N12 : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);
    N9  <= NOT (IN9);
    N10 <= NOT (IN10);
    N11 <= NOT (IN11);
    N12 <= NOT (IN12);

    L1 <= N1  OR N2  OR N3;
    L2 <= N4  OR N5  OR N6;
    L3 <= N7  OR N8  OR N9;
    L4 <= N10 OR N11 OR N12;

    O  <= L1 OR L2 OR L3 OR L4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bor8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
O    : OUT  std_logic);
END bor8;

ARCHITECTURE model OF bor8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;
    SIGNAL N7  : std_logic;
    SIGNAL N8  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);
    N7  <= NOT (IN7);
    N8  <= NOT (IN8);

    L1 <= N1 OR N2 OR N3 OR N4;
    L2 <= N5 OR N6 OR N7 OR N8;

    O  <= L1 OR L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bor6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
O    : OUT  std_logic);
END bor6;

ARCHITECTURE model OF bor6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;
    SIGNAL N6  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);
    N5  <= NOT (IN5);
    N6  <= NOT (IN6);

    L1 <= N1 OR N2 OR N3;
    L2 <= N4 OR N5 OR N6;

    O  <= L1 OR L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bor4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
O    : OUT  std_logic);
END bor4;

ARCHITECTURE model OF bor4 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);
    N4  <= NOT (IN4);

    O <= N1 OR N2 OR N3 OR N4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bor3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
O    : OUT  std_logic);
END bor3;

ARCHITECTURE model OF bor3 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);
    N3  <= NOT (IN3);

    O <= N1 OR N2 OR N3 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bor2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
O    : OUT  std_logic);
END bor2;

ARCHITECTURE model OF bor2 IS
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;

    BEGIN
    N1  <= NOT (IN1);
    N2  <= NOT (IN2);

    O <= N1 OR N2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
O    : OUT  std_logic);
END nand12;

ARCHITECTURE model OF nand12 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= IN1  AND IN2  AND IN3;
    L2 <= IN4  AND IN5  AND IN6;
    L3 <= IN7  AND IN8  AND IN9;
    L4 <= IN10 AND IN11 AND IN12;

    O  <= NOT (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
O    : OUT  std_logic);
END nand8;

ARCHITECTURE model OF nand8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 AND IN2 AND IN3 AND IN4;
    L2 <= IN5 AND IN6 AND IN7 AND IN8;

    O  <= NOT (L1 AND L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
O    : OUT  std_logic);
END nand6;

ARCHITECTURE model OF nand6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 AND IN2 AND IN3;
    L2 <= IN4 AND IN5 AND IN6;

    O  <= NOT (L1 AND L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
Y    : OUT  std_logic);
END nand4;

ARCHITECTURE model OF nand4 IS

    BEGIN
    Y <= NOT (IN1 AND IN2 AND IN3 AND IN4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
Y    : OUT  std_logic);
END nand3;

ARCHITECTURE model OF nand3 IS

    BEGIN
    Y <= NOT (IN1 AND IN2 AND IN3) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
Y    : OUT  std_logic);
END nand2;

ARCHITECTURE model OF nand2 IS

    BEGIN
    Y <= NOT (IN1 AND IN2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
O    : OUT  std_logic);
END nor12;

ARCHITECTURE model OF nor12 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= IN1  OR IN2  OR IN3;
    L2 <= IN4  OR IN5  OR IN6;
    L3 <= IN7  OR IN8  OR IN9;
    L4 <= IN10 OR IN11 OR IN12;

    O  <= NOT (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
O    : OUT  std_logic);
END nor8;

ARCHITECTURE model OF nor8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 OR IN2 OR IN3 OR IN4;
    L2 <= IN5 OR IN6 OR IN7 OR IN8;

    O  <= NOT (L1 OR L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
O    : OUT  std_logic);
END nor6;

ARCHITECTURE model OF nor6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 OR IN2 OR IN3;
    L2 <= IN4 OR IN5 OR IN6;

    O  <= NOT (L1 OR L2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
Y    : OUT  std_logic);
END nor4;

ARCHITECTURE model OF nor4 IS

    BEGIN
    Y <= NOT (IN1 OR IN2 OR IN3 OR IN4) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
Y    : OUT  std_logic);
END nor3;

ARCHITECTURE model OF nor3 IS

    BEGIN
    Y <= NOT (IN1 OR IN2 OR IN3) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
Y    : OUT  std_logic);
END nor2;

ARCHITECTURE model OF nor2 IS

    BEGIN
    Y <= NOT (IN1 OR IN2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or12 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
IN9  : IN  std_logic;
IN10 : IN  std_logic;
IN11 : IN  std_logic;
IN12 : IN  std_logic;
Y    : OUT  std_logic);
END or12;

ARCHITECTURE model OF or12 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= IN1  OR IN2  OR IN3;
    L2 <= IN4  OR IN5  OR IN6;
    L3 <= IN7  OR IN8  OR IN9;
    L4 <= IN10 OR IN11 OR IN12;

    Y  <= L1 OR L2 OR L3 OR L4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or8 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
IN7  : IN  std_logic;
IN8  : IN  std_logic;
Y    : OUT  std_logic);
END or8;

ARCHITECTURE model OF or8 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 OR IN2 OR IN3 OR IN4;
    L2 <= IN5 OR IN6 OR IN7 OR IN8;

    Y  <= L1 OR L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or6 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
IN5  : IN  std_logic;
IN6  : IN  std_logic;
Y    : OUT  std_logic);
END or6;

ARCHITECTURE model OF or6 IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= IN1 OR IN2 OR IN3;
    L2 <= IN4 OR IN5 OR IN6;

    Y  <= L1 OR L2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or4 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
IN4  : IN  std_logic;
Y    : OUT  std_logic);
END or4;

ARCHITECTURE model OF or4 IS

    BEGIN
    Y <= IN1 OR IN2 OR IN3 OR IN4 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or3 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
IN3  : IN  std_logic;
Y    : OUT  std_logic);
END or3;

ARCHITECTURE model OF or3 IS

    BEGIN
    Y <= IN1 OR IN2 OR IN3 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
Y    : OUT  std_logic);
END or2;

ARCHITECTURE model OF or2 IS

    BEGIN
    Y <= IN1 OR IN2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY inv IS PORT(
in1 : IN  std_logic;
y : OUT  std_logic);
END inv;

ARCHITECTURE model OF inv IS

    BEGIN
    y <= NOT (in1) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xor2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
Y    : OUT  std_logic);
END xor2;

ARCHITECTURE model OF xor2 IS

    BEGIN
    Y <= IN1 XOR IN2 AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xnor2 IS PORT(
IN1  : IN  std_logic;
IN2  : IN  std_logic;
O    : OUT  std_logic);
END xnor2;

ARCHITECTURE model OF xnor2 IS

    BEGIN
    O <= NOT (IN1 XOR IN2) AFTER 1 ns;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY carry IS PORT(
A_IN : IN   std_logic;
A_OUT : OUT  std_logic);
END carry;

ARCHITECTURE model OF carry IS

    BEGIN
    A_OUT <= A_IN;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cascade IS PORT(
A_IN : IN   std_logic;
A_OUT : OUT  std_logic);
END cascade;

ARCHITECTURE model OF cascade IS

    BEGIN
    A_OUT <= A_IN;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exp IS PORT(
IN1 : IN   std_logic;
Y : OUT  std_logic);
END exp;

ARCHITECTURE model OF exp IS

    BEGIN
    Y <= NOT (IN1);
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY global IS PORT(
A_IN : IN   std_logic;
A_OUT : OUT  std_logic);
END global;

ARCHITECTURE model OF global IS

    BEGIN
    A_OUT <= A_IN;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lcell IS PORT(
A_IN : IN   std_logic;
A_OUT : OUT  std_logic);
END lcell;

ARCHITECTURE model OF lcell IS

BEGIN
    A_OUT <= A_IN;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY opndrn IS PORT(
IN1 : IN   std_logic;
Y : OUT  std_logic);
END opndrn;

ARCHITECTURE model OF opndrn IS

    BEGIN
    Y <= IN1;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY soft IS PORT(
A_IN : IN   std_logic;
A_OUT : OUT  std_logic);
END soft;

ARCHITECTURE model OF soft IS

    BEGIN
    A_OUT <= A_IN;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tri IS PORT(
\IN\  : IN   std_logic;
OE : IN   std_logic;
\OUT\  : OUT  std_logic);
END tri;

ARCHITECTURE model OF tri IS

    BEGIN
    PROCESS(OE, \IN\)
    
    BEGIN
    IF(OE = '1') THEN
         \OUT\ <= \IN\ AFTER 1 ns;
    ELSE
         \OUT\ <= 'Z' AFTER 1 ns;
    END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY wire IS PORT(
IN1 : IN   std_logic;
Y : OUT  std_logic);
END wire;

ARCHITECTURE model OF wire IS

    BEGIN
    Y <= IN1;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sclk IS PORT(
\in\ : IN   std_logic;
\out\ : OUT  std_logic);
END sclk;

ARCHITECTURE model OF sclk IS

    BEGIN
    \out\ <= \in\;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mcell IS PORT(
IN1 : IN   std_logic;
Y : OUT  std_logic);
END mcell;

ARCHITECTURE model OF mcell IS

    BEGIN
    Y <= IN1;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dffe IS PORT(
D    : IN   std_logic;
ENA  : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END dffe;

ARCHITECTURE model OF dffe IS

   BEGIN
   PROCESS (CLRN, CLK, PRN)

   BEGIN
	IF(CLRN = '0' ) THEN
	     Q <= '0' AFTER 1 ns;

	ELSIF (PRN = '0' ) THEN
	     Q <= '1' AFTER 1 ns;

	ELSIF (CLK = '1' AND ENA = '1') AND CLK'EVENT THEN
	     IF D = '0' THEN
              Q <= '0' AFTER 1 ns;
	     ELSIF D = '1' THEN
              Q <= '1' AFTER 1 ns;
        ELSE
              Q <= TO_X01(D) AFTER 1 ns;
        END IF;
	END IF;
   END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dff IS PORT(
D    : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END dff;

ARCHITECTURE model OF dff IS

    BEGIN
    PROCESS (CLRN, CLK, PRN)

    BEGIN
	IF(CLRN = '0' ) THEN
	     Q <= '0' AFTER 1 ns;

	ELSIF (PRN = '0' ) THEN
	     Q <= '1' AFTER 1 ns;

	ELSIF (CLK = '1') AND CLK'EVENT THEN
	     IF D = '0' THEN
              Q <= '0' AFTER 1 ns;
	     ELSIF D = '1' THEN
              Q <= '1' AFTER 1 ns;
         ELSE
              Q <= TO_X01(D) AFTER 1 ns;
         END IF;
	END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY jkff IS PORT(
J    : IN   std_logic;
K    : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END jkff;

ARCHITECTURE model OF jkff IS

	Signal IntQNode: Std_Logic;

    BEGIN

	Q <= IntQNode;

    PROCESS (CLRN, CLK, J, K, PRN)

    BEGIN
	IF(CLRN = '0') THEN
		IntQNode <= '0' AFTER 1 ns;
	ELSIF(PRN = '0') THEN
		IntQNode <= '1' AFTER 1 ns;
	ELSIF (CLK = '1') AND CLK'EVENT THEN
		IF(J = '1') AND (K = '1') THEN
		    	 IntQNode <= NOT (IntQNode) AFTER 1 ns;
		ELSIF K = '1' THEN
             	 IntQNode <= '0' AFTER 1 ns;
		ELSIF J = '1' THEN
             	 IntQNode <= '1' AFTER 1 ns;
         END IF;
	END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY jkffe IS PORT(
J    : IN   std_logic;
K    : IN   std_logic;
ENA  : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END jkffe;

ARCHITECTURE model OF jkffe IS

	Signal IntQNode: Std_Logic;

    BEGIN

	Q <= IntQNode;

    PROCESS (CLRN, CLK, ENA, J, K, PRN)

    BEGIN
	IF(CLRN = '0') THEN
		IntQNode <= '0' AFTER 1 ns;
	ELSIF(PRN = '0') THEN
		IntQNode <= '1' AFTER 1 ns;
	ELSIF (CLK = '1' AND ENA = '1') AND CLK'EVENT THEN
		IF(J = '1') AND (K = '1') THEN
		     	IntQNode <= NOT (IntQNode) AFTER 1 ns;
		ELSIF K = '1' THEN
              	IntQNode <= '0' AFTER 1 ns;
		ELSIF J = '1' THEN
             	 IntQNode <= '1' AFTER 1 ns;
         	END IF;
	END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch IS PORT(
D   : IN   std_logic;
ENA : IN   std_logic;
Q   : OUT  std_logic);
END latch;

ARCHITECTURE model OF latch IS

    BEGIN
    PROCESS (D, ENA)

    BEGIN
	IF (ENA = '1') THEN
	     IF D = '0' THEN
              Q <= '0' AFTER 1 ns;
	     ELSIF D = '1' THEN
              Q <= '1' AFTER 1 ns;
         END IF;
	END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY srff IS PORT(
S    : IN   std_logic;
R    : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END srff;

ARCHITECTURE model OF srff IS

	Signal IntQNode: Std_Logic;

    BEGIN

	Q <= IntQNode;

    PROCESS (CLRN, CLK, PRN, S, R)

    BEGIN
	IF(CLRN = '0') THEN
		IntQNode <= '0' AFTER 1 ns;
	ELSIF(PRN = '0') THEN
		IntQNode <= '1' AFTER 1 ns;
	ELSIF (CLK = '1') AND CLK'EVENT THEN
		IF(S = '1') AND (R = '1') THEN
		     IntQNode <= NOT (IntQNode) AFTER 1 ns;
		ELSIF R = '1' THEN
              IntQNode <= '0' AFTER 1 ns;
		ELSIF S = '1' THEN
              IntQNode <= '1' AFTER 1 ns;
         END IF;
	END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY srffe IS PORT(
S    : IN   std_logic;
R    : IN   std_logic;
ENA  : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END srffe;

ARCHITECTURE model OF srffe IS

	Signal IntQNode: Std_Logic;

    BEGIN

	Q <= IntQNode;

    PROCESS (CLRN, CLK, ENA, PRN, R, S)

    BEGIN
	IF(CLRN = '0') THEN
		 IntQNode <= '0' AFTER 1 ns;
	ELSIF(PRN = '0') THEN
		 IntQNode <= '1' AFTER 1 ns;
	ELSIF (CLK = '1' AND ENA = '1') AND CLK'EVENT THEN
		IF(S = '1') AND (R = '1') THEN
			IntQNode <= NOT ( IntQNode) AFTER 1 ns;
		ELSIF R = '1' THEN
              	IntQNode <= '0' AFTER 1 ns;
		ELSIF S = '1' THEN
               	IntQNode <= '1' AFTER 1 ns;
         END IF;
	END IF;
    END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tff IS PORT(
   T,CLK,PRN,CLRN: IN std_logic;
   Q: OUT std_logic);
END tff;

ARCHITECTURE model OF tff IS
   SIGNAL QN: std_logic:='0';
BEGIN
   PROCESS (T,CLK,PRN,CLRN) BEGIN
      IF (CLRN='0') THEN
         QN <= '0' AFTER 1 ns;
      ELSIF (PRN='0') THEN
         QN <= '1' AFTER 1 ns;
      ELSIF (CLK='1') AND CLK'EVENT THEN
         IF (T='0') THEN
            QN <= QN AFTER 1 ns;
         ELSIF (T='1') THEN
            QN <= not(QN) AFTER 1 ns;
         ELSE
            QN <= QN AFTER 1 ns;
         END IF;
      END IF;
   END PROCESS;
   Q<=QN;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tffe IS PORT(
T,ENA,CLK,PRN,CLRN: IN   std_logic;
Q    : OUT  std_logic);
END tffe;

ARCHITECTURE model OF tffe IS
   SIGNAL QN: std_logic:='0';
BEGIN
   PROCESS (T,ENA,CLK,PRN,CLRN) BEGIN
      IF (CLRN='0') THEN
         QN <= '0' AFTER 1 ns;
      ELSIF (PRN='0') THEN
         QN <= '1' AFTER 1 ns;
      ELSIF (CLK='1' AND ENA='1') AND CLK'EVENT THEN
         IF (T='0') THEN
            QN <= QN AFTER 1 ns;
         ELSIF (T='1') THEN
            QN <= not(QN) AFTER 1 ns;
         ELSE
            QN <= QN AFTER 1 ns;
         END IF;
      END IF;
   END PROCESS;
   Q<=QN;
END model;

































