--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1998                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--					VHDL Simulation Library for Xilinx XC5200 LCAs
-- File:			X5K.VHD
-- Date:			November 12, 1997
-- Version:		v7.11
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96

-- Author History		|Last Touched	|Reason:  
--	Kathy Horvath	|11/02/98		| Changed GND port name to "G" and VCC to "P".  
--  RBH             |08/11/98       | Changed GND port name to "O" and VCC to "VCC" to
--                                  | match new synthesis libraries. 
--	Kathy Horvath	|06/17/98		| Added the following components: BUFGP, BUFGS.
--	Kathy Horvath	|06/16/98		| Removed the following component: CY4.   
--	Kathy Horvath	|05/28/98		| Added 1ns timing delay to all output signals.
--	Kathy Horvath	|05/07/98		| Added the following components: BYPOSC.
--	Kathy Horvath	|04/10/98		| Removed following components from file:
--									| CY4_01..CY4_42, OFDI, PIN, RAM16X1, RAM32X1,
--									| ROM16X1, ROM32X1, SC, TNM, TS, W, X.
--	Kathy Horvath	|03/13/98		| Changed the OSC52 model.
--	Brian Smith		|03/11/98		| Modified the FDCE to remove a signal
--									|  that could potentially keep it from clocking. 
--									|
--***************************************************************************
-- XILINX XC5200 SIMULATION MODELS

-- BEGIN PACKAGE X52K_PACK
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE X52K_pack IS

-- Global signals initialized
SIGNAL gr  : std_logic := '0';
SIGNAL gts : std_logic := '0';


-- BEGIN COMPONENT f5map 
	COMPONENT f5map PORT (
		i5         : IN         std_logic;
		i4         : IN         std_logic;
		i3         : IN         std_logic;
		i2         : IN         std_logic;
		i1         : IN         std_logic;
		o          : IN         std_logic);
	END COMPONENT;
-- END COMPONENT f5map

-- BEGIN COMPONENT tck 
COMPONENT tck  
  PORT(
     I : OUT std_logic);
END COMPONENT;
-- END COMPONENT tck

-- BEGIN COMPONENT tdi
COMPONENT tdi  
  PORT(
     I : OUT std_logic);
END COMPONENT;
-- END COMPONENT tdi

-- BEGIN COMPONENT tdo 
COMPONENT tdo  
  PORT(
     O : OUT std_logic);
END COMPONENT;
-- END COMPONENT tdo

-- BEGIN COMPONENT tms 
COMPONENT tms  
  PORT(
     I : OUT std_logic);
END COMPONENT;
-- END COMPONENT tms

-- BEGIN COMPONENT timegrp 
COMPONENT timegrp  
  PORT(
     DUMMY : IN std_logic);
END COMPONENT;
-- END COMPONENT timegrp

-- BEGIN COMPONENT timespec 
COMPONENT timespec  
  PORT(
     DUMMY : IN std_logic);
END COMPONENT;
-- END COMPONENT timespec

-- BEGIN COMPONENT ipad 
COMPONENT ipad  
  PORT(
     IPAD : OUT  std_logic);
END COMPONENT;
-- END COMPONENT ipad 

-- BEGIN COMPONENT opad 
COMPONENT opad  
  PORT(
      OPAD : IN std_logic);
END COMPONENT;
-- END COMPONENT opad 

-- BEGIN COMPONENT iopad 
COMPONENT iopad  
  PORT(
     IOPAD : INOUT   std_logic);
END COMPONENT;
-- END COMPONENT iopad 

-- BEGIN COMPONENT upad 
COMPONENT upad  
  PORT(
      UPAD : INOUT   std_logic);
END COMPONENT;
-- END COMPONENT upad 

-- BEGIN COMPONENT IBUF
COMPONENT IBUF
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT IBUF

-- BEGIN COMPONENT OBUF
COMPONENT OBUF  
PORT(
I   : IN  std_logic;
O   : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OBUF

-- BEGIN COMPONENT OBUFT 
COMPONENT OBUFT  
PORT(
T, I : IN  std_logic;
O    : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OBUFT 

-- BEGIN COMPONENT pullup 
COMPONENT pullup  
  PORT(O : OUT    std_logic := 'H');
END COMPONENT;
-- END COMPONENT pullup 

-- BEGIN COMPONENT pulldown
COMPONENT pulldown
  PORT(O : OUT    std_logic := 'L');
END COMPONENT;
-- END COMPONENT pulldown

-- BEGIN COMPONENT FDCE 
COMPONENT FDCE   
PORT(
C, D : IN  std_logic;
CLR  : IN  std_logic := '0';
CE   : IN  std_logic := '1';
Q    : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT FDCE 

-- BEGIN COMPONENT LDCE
COMPONENT LDCE
PORT(
D, GE, G : IN  std_logic;
CLR      : IN  std_logic := '0';
Q        : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT LDCE

-- BEGIN COMPONENT F5_MUX
COMPONENT F5_MUX
PORT(
I1, I2, DI : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT F5_MUX

-- BEGIN COMPONENT CY_MUX
COMPONENT CY_MUX
PORT(
DI, CI, S : IN  std_logic;
CO : OUT  std_logic);
END COMPONENT;
-- END COMPONENT CY_MUX

-- BEGIN COMPONENT BUFT 
COMPONENT BUFT   
PORT(
T, I : IN  std_logic;
O    : OUT std_logic);
END COMPONENT;
-- END COMPONENT BUFT 

-- BEGIN COMPONENT OSC52 
COMPONENT OSC52
GENERIC(
OSC        : string(1 to 8) := "internal";
DIVIDE1_BY : integer := 4; 
DIVIDE2_BY : integer := 2);
PORT(
C          : std_logic;
OSC1, OSC2 : OUT  std_logic := '0');
END COMPONENT;
-- END COMPONENT OSC52


-- BEGIN COMPONENT BSCAN
COMPONENT BSCAN
PORT(
  TDI, TMS, TCK, TDO1, TDO2	: IN std_logic;
  TDO : OUT  std_logic := 'H';
  DRCK, IDLE, RESET : OUT  std_logic := '1';
  SEL1, SEL2, UPDATE, SHIFT : OUT  std_logic := '0'
  );
END COMPONENT;
-- END COMPONENT BSCAN

-- BEGIN COMPONENT rdclk 
COMPONENT rdclk  
  PORT(
      I : IN std_logic);
END COMPONENT;
-- END COMPONENT rdclk 

-- BEGIN COMPONENT RDBK
COMPONENT RDBK
  PORT(
  TRIG      : IN std_logic;
  DATA : OUT  std_logic := 'H';
   RIP  : OUT  std_logic := 'L'
  );
END COMPONENT;
-- END COMPONENT RDBK

-- BEGIN COMPONENT STARTUP
COMPONENT STARTUP
PORT(
CLK, GTS, GR 		  : IN  std_logic;
Q2, Q3, Q1Q4, DONEIN : OUT  std_logic := '1'
);
END COMPONENT;
-- END COMPONENT STARTUP

-- BEGIN COMPONENT BUF 
COMPONENT BUF  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUF 

-- BEGIN COMPONENT BUFG 
COMPONENT BUFG  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUFG     

-- BEGIN COMPONENT BUFGP 
COMPONENT BUFGP  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUFGP 

-- BEGIN COMPONENT BUFGS 
COMPONENT BUFGS  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUFGS 
 
-- BEGIN COMPONENT GND 
COMPONENT GND   
PORT(
G : OUT  std_logic  );
END COMPONENT;
-- END COMPONENT GND

-- BEGIN COMPONENT VCC 
COMPONENT VCC   
PORT(
P : OUT  std_logic  );
END COMPONENT;
-- END COMPONENT VCC 

-- BEGIN COMPONENT md0 
COMPONENT md0  
  PORT(
      I : IN std_logic);
END COMPONENT;
-- END COMPONENT md0 

-- BEGIN COMPONENT md1 
COMPONENT md1  
  PORT(
      O : OUT  std_logic := 'H');
END COMPONENT;
-- END COMPONENT md1 

-- BEGIN COMPONENT md2
COMPONENT md2
  PORT(
      I : IN std_logic);
END COMPONENT;
-- END COMPONENT md2

-- BEGIN COMPONENT FMAP
COMPONENT FMAP
PORT(
  I1, I2, I3, I4 : IN std_logic := 'L';
  O : IN  std_logic
  );
END COMPONENT;
-- END COMPONENT FMAP

-- BEGIN COMPONENT INV 
COMPONENT INV  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT INV 

-- BEGIN COMPONENT AND2 
COMPONENT AND2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND2 

-- BEGIN COMPONENT AND2B1 
COMPONENT AND2B1
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND2B1

-- BEGIN COMPONENT AND2B2
COMPONENT AND2B2
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND2B2

-- BEGIN COMPONENT AND3 
COMPONENT AND3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND3 

-- BEGIN COMPONENT AND3B1 
COMPONENT AND3B1
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND3B1

-- BEGIN COMPONENT AND3B2 
COMPONENT AND3B2  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND3B2 
 
-- BEGIN COMPONENT AND3B3
COMPONENT AND3B3
PORT(
IO, I1, I2 : IN std_logic;
O : OUT std_logic);
END COMPONENT;
-- END COMPONENT AND3B3


-- BEGIN COMPONENT AND4 
COMPONENT AND4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND4 

-- BEGIN COMPONENT AND4B1 
COMPONENT AND4B1  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND4B1 

-- BEGIN COMPONENT AND4B2 
COMPONENT AND4B2  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND4B2 

-- BEGIN COMPONENT AND4B3 
COMPONENT AND4B3  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND4B3 

-- BEGIN COMPONENT AND4B4 
COMPONENT AND4B4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND4B4 

-- BEGIN COMPONENT NAND2 
COMPONENT NAND2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND2 

-- BEGIN COMPONENT NAND2B1 
COMPONENT NAND2B1  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND2B1 

-- BEGIN COMPONENT NAND2B2 
COMPONENT NAND2B2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND2B2 
 
-- BEGIN COMPONENT NAND3 
COMPONENT NAND3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND3 

-- BEGIN COMPONENT NAND3B1 
COMPONENT NAND3B1  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND3B1 

-- BEGIN COMPONENT NAND3B2 
COMPONENT NAND3B2  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND3B2 

-- BEGIN COMPONENT NAND3B3 
COMPONENT NAND3B3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND3B3 

-- BEGIN COMPONENT NAND4 
COMPONENT NAND4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND4 

-- BEGIN COMPONENT NAND4B1 
COMPONENT NAND4B1  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND4B1 

-- BEGIN COMPONENT NAND4B2 
COMPONENT NAND4B2  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND4B2 

-- BEGIN COMPONENT NAND4B3 
COMPONENT NAND4B3  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND4B3 

-- BEGIN COMPONENT NAND4B4 
COMPONENT NAND4B4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND4B4 

-- BEGIN COMPONENT OR2 
COMPONENT OR2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR2 

 -- BEGIN COMPONENT OR2B1 
COMPONENT OR2B1
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR2B1

 -- BEGIN COMPONENT OR2B2 
COMPONENT OR2B2
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR2B2
 
-- BEGIN COMPONENT OR3 
COMPONENT OR3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR3 

-- BEGIN COMPONENT OR3B1 
COMPONENT OR3B1  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR3B1 

-- BEGIN COMPONENT OR3B2 
COMPONENT OR3B2  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR3B2 

-- BEGIN COMPONENT OR3B3 
COMPONENT OR3B3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR3B3 

-- BEGIN COMPONENT OR4 
COMPONENT OR4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR4 

-- BEGIN COMPONENT OR4B1 
COMPONENT OR4B1  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR4B1 

-- BEGIN COMPONENT OR4B2 
COMPONENT OR4B2  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR4B2 

-- BEGIN COMPONENT OR4B3 
COMPONENT OR4B3  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR4B3 

-- BEGIN COMPONENT OR4B4 
COMPONENT OR4B4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR4B4 

-- BEGIN COMPONENT NOR2 
COMPONENT NOR2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR2 

-- BEGIN COMPONENT NOR2B1 
COMPONENT NOR2B1  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR2B1 

-- BEGIN COMPONENT NOR2B2 
COMPONENT NOR2B2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR2B2 
 
-- BEGIN COMPONENT NOR3 
COMPONENT NOR3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR3 

-- BEGIN COMPONENT NOR3B1 
COMPONENT NOR3B1  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR3B1 

-- BEGIN COMPONENT NOR3B2 
COMPONENT NOR3B2  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR3B2 

-- BEGIN COMPONENT NOR3B3 
COMPONENT NOR3B3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR3B3 

-- BEGIN COMPONENT NOR4 
COMPONENT NOR4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR4 

 -- BEGIN COMPONENT NOR4B1 
COMPONENT NOR4B1  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR4B1 

 -- BEGIN COMPONENT NOR4B2 
COMPONENT NOR4B2  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR4B2 

 -- BEGIN COMPONENT NOR4B3 
COMPONENT NOR4B3  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR4B3 

 -- BEGIN COMPONENT NOR4B4 
COMPONENT NOR4B4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR4B4 

-- BEGIN COMPONENT XOR2 
COMPONENT XOR2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XOR2 

-- BEGIN COMPONENT XOR3 
COMPONENT XOR3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XOR3 

-- BEGIN COMPONENT XOR4 
COMPONENT XOR4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XOR4 

-- BEGIN COMPONENT XNOR2 
COMPONENT XNOR2  
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XNOR2 

-- BEGIN COMPONENT XNOR3 
COMPONENT XNOR3  
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XNOR3 

-- BEGIN COMPONENT XNOR4 
COMPONENT XNOR4  
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XNOR4 

-- BEGIN COMPONENT byposc 
COMPONENT byposc  
  PORT(
     I : IN std_logic);
END COMPONENT;
-- END COMPONENT byposc

END X52K_pack;

-- END PACKAGE X52K_PACK


-- BEGIN LIB XC5200


-- BEGIN BEHAVE f5map
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY f5map IS PORT (
	i5         : IN         std_logic;
	i4         : IN         std_logic;
	i3         : IN         std_logic;
	i2         : IN         std_logic;
	i1         : IN         std_logic;
	o          : IN         std_logic);
END f5map;

ARCHITECTURE model OF f5map IS
BEGIN
END model;
-- END BEHAVE f5map 

-- BEGIN BEHAVE tck
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tck IS
  PORT(
     I : OUT std_logic);
END tck;

ARCHITECTURE model OF tck IS
BEGIN
END model;
-- END BEHAVE tck 


-- BEGIN BEHAVE tdi
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tdi IS
  PORT(
     I : OUT std_logic);
END tdi;

ARCHITECTURE model OF tdi IS
BEGIN
END model;
-- END BEHAVE tdi 


-- BEGIN BEHAVE tdo
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tdo IS
  PORT(
     O : OUT std_logic);
END tdo;

ARCHITECTURE model OF tdo IS
BEGIN
END model;
-- END BEHAVE tdo 


-- BEGIN BEHAVE tms
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tms IS
  PORT(
     I : OUT std_logic);
END tms;

ARCHITECTURE model OF tms IS
BEGIN
END model;
-- END BEHAVE tms 


-- BEGIN BEHAVE timegrp
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY timegrp IS
  PORT(
     DUMMY : IN std_logic);
END timegrp;

ARCHITECTURE model OF timegrp IS
BEGIN
END model;
-- END BEHAVE timegrp 


-- BEGIN BEHAVE timespec
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY timespec IS
  PORT(
     DUMMY : IN std_logic);
END timespec;

ARCHITECTURE model OF timespec IS
BEGIN
END model;
-- END BEHAVE timespec 


-- BEGIN BEHAVE IPAD
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ipad IS
  PORT(
     IPAD : OUT  std_logic := 'L');
END ipad;

ARCHITECTURE model OF ipad IS
BEGIN
END model;
-- END BEHAVE IPAD 


-- BEGIN BEHAVE OPAD 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY opad IS
  PORT(
      OPAD : IN std_logic);
END opad;

ARCHITECTURE model OF opad IS
BEGIN
END model;
-- END BEHAVE OPAD


-- BEGIN BEHAVE IOPAD
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY iopad IS
  PORT(
     IOPAD : INOUT   std_logic := 'L');
END iopad;

ARCHITECTURE model OF iopad IS
BEGIN
END model;
-- END BEHAVE IOPAD 


-- BEGIN BEHAVE UPAD 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY upad IS
  PORT(
      UPAD : INOUT   std_logic := 'L');
END upad;

ARCHITECTURE model OF upad IS
BEGIN
END model;
-- END BEHAVE UPAD


-- BEGIN BEHAVE IBUF
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY IBUF IS
PORT(	     
O : OUT  std_logic;
I : IN  std_logic);
END IBUF;

ARCHITECTURE model OF IBUF IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O  <= to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE IBUF


-- BEGIN BEHAVE OBUF 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X52K_pack.ALL;

ENTITY OBUF IS
PORT(
I   : IN  std_logic;
O   : OUT std_logic);
END OBUF;

ARCHITECTURE model OF OBUF IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( I )   ;
    O  <= ( N3 )  AFTER 1NS;
		   
    PROCESS (N1, N2)
    BEGIN
      IF (N1 = '1') THEN N3 <= 'Z';
      ELSE N3 <= TO_X01(N2);
      END IF;
    END PROCESS;

END model;
-- END BEHAVE OBUF 


-- BEGIN BEHAVE OBUFT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X52K_pack.ALL;

ENTITY OBUFT IS
PORT(
T, I : IN  std_logic;
O    : OUT  std_logic);
END OBUFT;

ARCHITECTURE model OF OBUFT IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( GTS ) ;
    N2 <=  ( T )   ;
    N3 <=  ( I )   ;
    N4 <=  ( N1 OR N2);

    PROCESS (N3, N4)
    BEGIN
      IF (N4 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= to_x01 ( N3 ) AFTER 1NS;
      END IF;
    END PROCESS;

END model;
-- END BEHAVE OBUFT

-- BEGIN BEHAVE  pullup -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pullup IS
   PORT(O : OUT  std_logic := 'H');
END pullup;

ARCHITECTURE model OF pullup IS
BEGIN
O <= 'H' AFTER 1NS;
END model;
-- END BEHAVE  pullup -----

-- BEGIN BEHAVE  pulldown -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pulldown IS
   PORT(O : OUT  std_logic := 'L');
END pulldown;

ARCHITECTURE model OF pulldown IS
BEGIN
O <= 'L' AFTER 1NS;
END model;
-- END BEHAVE  pulldown

-- BEGIN BEHAVE FDCE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X52K_pack.ALL;

ENTITY FDCE IS 
PORT(
    C, D : IN  std_logic;
    CLR  : IN  std_logic := '0';
    CE   : IN  std_logic := '1';
    Q    : OUT std_logic := '0');
END FDCE;

ARCHITECTURE model OF FDCE IS

   SIGNAL N1 : std_logic;
   SIGNAL N2 : std_logic;
   SIGNAL N3 : std_logic;
   SIGNAL N4 : std_logic;
   SIGNAL N5 : std_logic;
   SIGNAL N6 : std_logic;
   SIGNAL N7 : std_logic;
   SIGNAL N8 : std_logic;
   SIGNAL N9 : std_logic := '0';

   BEGIN
   N1 <=     ( D )   ;
   N2 <=     ( C )   ;
   N3 <=     ( CE )  ;
   N5 <= ( N2 AND N3 );

   N6 <=     ( CLR ) ;
   N7 <=     ( GR )  ;

   N8 <=     ( N6 OR N7 );

   Q  <=     ( N9 )  AFTER 1NS;

   BEHAVIOR : PROCESS (N2, N5, N8)
      BEGIN
     IF    (N8 = '1') THEN N9 <= '0';
     ELSIF (N3 = '1' AND RISING_EDGE(N2)) THEN
        N9 <= TO_X01(N1);
     END IF;
	END PROCESS;

END model;
-- END BEHAVE FDCE


-- BEGIN BEHAVE LDCE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X52K_pack.ALL;

ENTITY LDCE IS 
PORT(
    D, GE, G : IN  std_logic;
    CLR      : IN  std_logic := '0';
    Q        : OUT std_logic := '0');
END LDCE;

ARCHITECTURE model OF LDCE IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic := '0';

    BEGIN
    N1 <= ( D )   ;
    N2 <= ( GE )  ;
    N3 <= ( G )   ;
    N4 <= ( CLR ) ;
    N5 <= ( GR )  ;

    N6 <= ( N4 OR N5);
    N7 <= ( N2 AND N3);

    Q  <= ( N8 )  AFTER 1NS;

    BEHAVIOR : PROCESS (N1, N7)
    BEGIN
    IF    (N6 = '1') THEN N8 <= '0';
    ELSIF (N7 = '1') THEN 
        N8 <= TO_X01(N1);
    END IF;
    END PROCESS;
END model;
-- END BEHAVE LDCE


-- BEGIN BEHAVE F5_MUX
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F5_MUX IS
PORT(
I1, I2, DI : IN  std_logic;
O : OUT  std_logic);
END F5_MUX;

ARCHITECTURE model OF F5_MUX IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I1 ) ;
    N2 <=  ( I2 ) ;
    N3 <=  ( DI ) ;
    O  <=  ( N4 ) AFTER 1NS;

    MUX : PROCESS (N1, N2, N3) 
    BEGIN 
       IF      (N3 = '0') THEN N4 <= N1;
         ELSIF (N3 = '1') THEN N4 <= N2;
       END IF;
    END PROCESS MUX;

END model;
-- END BEHAVE F5_MUX


-- BEGIN BEHAVE CY_MUX
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CY_MUX IS
PORT(
DI, CI, S : IN  std_logic;
CO : OUT  std_logic);
END CY_MUX;

ARCHITECTURE model OF CY_MUX IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( DI ) ;
    N2 <=  ( CI ) ;
    N3 <=  ( S  ) ;
    CO <=  ( N4 ) AFTER 1NS;

    MUX : PROCESS (N1, N2, N3) 
    BEGIN 

       IF    (N3 = '0') THEN N4 <= N1;
       ELSIF (N3 = '1') THEN N4 <= N2;
       END IF;
       
    END PROCESS MUX;

END model;
-- END BEHAVE CY_MUX

-- BEGIN BEHAVE BUFT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFT IS 
PORT(
T, I : IN  std_logic;
O    : OUT  std_logic);
END BUFT;

ARCHITECTURE model OF BUFT IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( T )  ;
    N2 <=  ( I )  ;

    PROCESS (N1, N2)
    BEGIN
      IF (N1 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= TO_X01(N2) AFTER 1NS;
      END IF;
    END PROCESS;

END model;
-- END BEHAVE BUFT   

-- BEGIN BEHAVE BUFGP
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFGP IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END BUFGP;

ARCHITECTURE model OF BUFGP IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O  <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUFGP


-- BEGIN BEHAVE BUFGS
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFGS IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END BUFGS;

ARCHITECTURE model OF BUFGS IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUFGS


-- BEGIN BEHAVE OSC52 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OSC52 IS
GENERIC(
OSC        : string(1 to 8);
DIVIDE1_BY : integer; 
DIVIDE2_BY : integer);
PORT(
  C          : IN std_logic;
  OSC1, OSC2 : OUT  std_logic := '0');
END OSC52;

ARCHITECTURE model OF OSC52 IS
BEGIN

 OSC1_OUT : PROCESS
 VARIABLE FIRST_EDGE : integer := 0;
 VARIABLE FREQ1 : std_logic := '0';
 VARIABLE SIG_OSC1 : std_logic := '1';
 VARIABLE INT_CLK : time := 31250 ps;
 VARIABLE CNT1 : integer := 0;

 BEGIN

   -- Clock Divider
   IF (OSC="USEr_clk") THEN
     wait until ((c = '1') AND c'EVENT);

     IF (DIVIDE1_BY=4) THEN           -- Divide by 4
       CNT1 := CNT1 + 1;

       IF (CNT1=3) THEN
         CNT1 := 1;
         FREQ1 := NOT (FREQ1);
         OSC1 <= FREQ1 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE1_BY=16) THEN       -- Divide by 16
       CNT1 := CNT1 + 1;

       IF (CNT1=9) THEN
         CNT1 := 1;
         FREQ1 := NOT (FREQ1);
         OSC1 <= FREQ1 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE1_BY=64) THEN       -- Divide by 64
       CNT1 := CNT1 + 1;

       IF (CNT1=33) THEN
         CNT1 := 1;
         FREQ1 := NOT (FREQ1);
         OSC1 <= FREQ1 AFTER 1NS;
       END IF;
        
     ELSIF (DIVIDE1_BY=256) THEN      -- Divide by 256
       CNT1 := CNT1 + 1;

       IF (CNT1=129) THEN
         CNT1 := 1;
         FREQ1 := NOT (FREQ1);
         OSC1 <= FREQ1 AFTER 1NS;
       END IF;
     END IF;
            	
   -- Internal 16MHz Clock
   ELSIF (OSC="internal") THEN

     IF (FIRST_EDGE = 0) THEN
       FIRST_EDGE := 1;
       SIG_OSC1 := NOT (SIG_OSC1);
       OSC1 <= SIG_OSC1 AFTER 1NS;
       WAIT for 1 ns;
     ELSE

       IF (DIVIDE1_BY=4) THEN         -- Divide by 4
         SIG_OSC1 := NOT (SIG_OSC1);
         OSC1 <= SIG_OSC1 AFTER 1NS;
         WAIT for INT_CLK*4;

       ELSIF (DIVIDE1_BY=16) THEN     -- Divide by 16
         SIG_OSC1 := NOT (SIG_OSC1);
         OSC1 <= SIG_OSC1 AFTER 1NS;
         WAIT for INT_CLK*16;

       ELSIF (DIVIDE1_BY=64) THEN     -- Divide by 64
         SIG_OSC1 := NOT (SIG_OSC1);
         OSC1 <= SIG_OSC1 AFTER 1NS;
         WAIT for INT_CLK*64;

       ELSIF (DIVIDE1_BY=256) THEN    -- Divide by 256
         SIG_OSC1 := NOT (SIG_OSC1);
         OSC1 <= SIG_OSC1 AFTER 1NS;
         WAIT for INT_CLK*256;       
       END IF;

     END IF;

   END IF;

 END PROCESS OSC1_OUT;


 OSC2_OUT : PROCESS
 VARIABLE FIRST_EDGE : integer := 0;
 VARIABLE FREQ2 : std_logic := '0';
 VARIABLE SIG_OSC2 : std_logic := '1';
 VARIABLE INT_CLK : time := 31250 ps;
 VARIABLE CNT2 : integer := 0;

 BEGIN
   -- Clock Divider
   IF (OSC="USEr_clk") THEN
     wait until ((c = '1') AND c'EVENT);

     IF (DIVIDE2_BY=2) THEN           -- Divide by 2
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;

     ELSIF (DIVIDE2_BY=8) THEN        -- Divide by 8
       CNT2 := CNT2 + 1;

       IF (CNT2=5) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE2_BY=32) THEN       -- Divide by 32
       CNT2 := CNT2 + 1;

       IF (CNT2=17) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;
        
     ELSIF (DIVIDE2_BY=128) THEN      -- Divide by 128
       CNT2 := CNT2 + 1;

       IF (CNT2=65) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE2_BY=1024) THEN     -- Divide by 1024
       CNT2 := CNT2 + 1;

       IF (CNT2=513) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE2_BY=4096) THEN     -- Divide by 4096
       CNT2 := CNT2 + 1;

       IF (CNT2=2049) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE2_BY=16384) THEN    -- Divide by 16384
       CNT2 := CNT2 + 1;

       IF (CNT2=8193) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;

     ELSIF (DIVIDE2_BY=65536) THEN    -- Divide by 65536
       CNT2 := CNT2 + 1;

       IF (CNT2=32769) THEN
         CNT2 := 1;
         FREQ2 := NOT (FREQ2);
         OSC2 <= FREQ2 AFTER 1NS;
       END IF;
     END IF;

   -- Internal 16MHz Clock
   ELSIF (OSC="internal") THEN

     IF (FIRST_EDGE = 0) THEN
       FIRST_EDGE := 1;
       SIG_OSC2 := NOT (SIG_OSC2);
       OSC2 <= SIG_OSC2 after 1ns;
     ELSE

       IF (DIVIDE2_BY=2) THEN         -- Divide by 2
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*2;

       ELSIF (DIVIDE2_BY=8) THEN      -- Divide by 8
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*8;

       ELSIF (DIVIDE2_BY=32) THEN     -- Divide by 32
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*32;

       ELSIF (DIVIDE2_BY=128) THEN    -- Divide by 128
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*128;

       ELSIF (DIVIDE2_BY=1024) THEN   -- Divide by 1024
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*1024;
 
       ELSIF (DIVIDE2_BY=4096) THEN   -- Divide by 4096
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*4096;
 
       ELSIF (DIVIDE2_BY=16384) THEN  -- Divide by 16384
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*16384;      

       ELSIF (DIVIDE2_BY=65536) THEN  -- Divide by 65536
         SIG_OSC2 := NOT (SIG_OSC2);
         OSC2 <= SIG_OSC2 AFTER 1NS;
		 wait for INT_CLK*65536;    
       END IF;

     END IF;

   END IF;

  END PROCESS OSC2_OUT;

END model;
-- END BEHAVE OSC52 


-- BEGIN BEHAVE BSCAN
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BSCAN IS
  PORT(
      TDI, TMS, TCK, TDO1, TDO2	: IN std_logic;
      TDO                       : OUT  std_logic := 'H';
      DRCK, IDLE, RESET         : OUT  std_logic := '1';
      SEL1, SEL2, UPDATE, SHIFT : OUT  std_logic := '0'
      );
END BSCAN;

ARCHITECTURE model OF BSCAN IS
BEGIN
END model;
-- END BEHAVE BSCAN


-- BEGIN BEHAVE RDBK
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RDBK IS
      PORT(
      TRIG : IN std_logic;
      DATA : OUT  std_logic := 'H';
	   RIP  : OUT  std_logic := 'L'
      );
END RDBK;

ARCHITECTURE model OF RDBK IS
BEGIN
END model;
-- END BEHAVE RDBK


-- BEGIN BEHAVE rdclk 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rdclk IS
  PORT(
      I	: IN std_logic);
END rdclk;

ARCHITECTURE model OF rdclk IS
BEGIN
END model;
-- END BEHAVE rdclk 


-- BEGIN BEHAVE STARTUP
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY STARTUP IS
  PORT(
      CLK, GTS, GR 	   : IN std_logic;
      Q2, Q3, Q1Q4, DONEIN : OUT  std_logic := '1'
      );
END STARTUP;

ARCHITECTURE model OF STARTUP IS
BEGIN
END model;
-- END BEHAVE STARTUP


-- BEGIN BEHAVE BUF
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUF IS
PORT(
O : OUT std_logic;
I : IN  std_logic);
END BUF;

ARCHITECTURE model OF BUF IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUF


-- BEGIN BEHAVE BUFG
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFG IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END BUFG;

ARCHITECTURE model OF BUFG IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUFG

-- BEGIN BEHAVE GND
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY GND IS 
PORT(
G : OUT  std_logic := '0');
END GND;

ARCHITECTURE model OF GND IS
    BEGIN
END model;
-- END BEHAVE GND

-- BEGIN BEHAVE VCC
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY VCC IS 
PORT(
P : OUT  std_logic := '1');
END VCC;

ARCHITECTURE model OF VCC IS
    BEGIN
END model;
-- END BEHAVE VCC


-- BEGIN BEHAVE MD0 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY md0 IS
  PORT(
      I	: IN std_logic);
END md0;

ARCHITECTURE model OF md0 IS
BEGIN
END model;
-- END BEHAVE MD0 


-- BEGIN BEHAVE MD1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY md1 IS
  PORT(
      O	: OUT  std_logic);
END md1;

ARCHITECTURE model OF md1 IS
BEGIN
END model;
-- END BEHAVE MD1 

-- BEGIN BEHAVE MD2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY md2 IS
  PORT(
      I	: IN std_logic);
END md2;

ARCHITECTURE model OF md2 IS
BEGIN
END model;
-- END BEHAVE MD2


-- BEGIN BEHAVE INV
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY INV IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END INV;

ARCHITECTURE model OF INV IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <= NOT ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE INV


-- BEGIN BEHAVE FMAP
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY FMAP IS
PORT(
I1, I2, I3, I4 : IN std_logic := 'L';
O : IN  std_logic
);
END FMAP;
ARCHITECTURE model OF FMAP IS
BEGIN
END model;
-- END BEHAVE FMAP


-- BEGIN BEHAVE AND2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND2 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END AND2;

ARCHITECTURE model OF AND2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=  ( N1 AND N2 ) AFTER 1NS;
END model;
-- END BEHAVE AND2


-- BEGIN BEHAVE AND2B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND2B1 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END AND2B1;

ARCHITECTURE model OF AND2B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <= ( I1 ) ;
    O <=  ( N1 AND N2 )  AFTER 1NS;
END model;
-- END BEHAVE AND2B1


-- BEGIN BEHAVE AND2B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND2B2 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END AND2B2;

ARCHITECTURE model OF AND2B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    O <=  ( N1 AND N2 )  AFTER 1NS;
END model;
-- END BEHAVE AND2B2



-- BEGIN BEHAVE AND3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND3 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END AND3;

ARCHITECTURE model OF AND3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  ( N1 AND N2 AND N3 ) AFTER 1NS;
END model;
-- END BEHAVE AND3


-- BEGIN BEHAVE AND3B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND3B1 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END AND3B1;

ARCHITECTURE model OF AND3B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;

    O <=  ( N1 AND N2 AND N3 )  AFTER 1NS;
END model;
-- END BEHAVE AND3B1


-- BEGIN BEHAVE AND3B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND3B2 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END AND3B2;

ARCHITECTURE model OF AND3B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;

    O <=  ( N1 AND N2 AND N3 )  AFTER 1NS;
END model;
-- END BEHAVE AND3B2


-- BEGIN BEHAVE AND3B3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND3B3 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END AND3B3;

ARCHITECTURE model OF AND3B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
 	N3 <=  NOT ( I2 ) ;

    O <=  ( N1 AND N2 AND N3 )  AFTER 1NS;
END model;
-- END BEHAVE AND3B3


-- BEGIN BEHAVE AND4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND4 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END AND4;

ARCHITECTURE model OF AND4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
END model;
-- END BEHAVE AND4


-- BEGIN BEHAVE AND4B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND4B1 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END AND4B1;

ARCHITECTURE model OF AND4B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE AND4B1


-- BEGIN BEHAVE AND4B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND4B2 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END AND4B2;

ARCHITECTURE model OF AND4B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE AND4B2


-- BEGIN BEHAVE AND4B3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND4B3 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END AND4B3;

ARCHITECTURE model OF AND4B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE AND4B3


-- BEGIN BEHAVE AND4B4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND4B4 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END AND4B4;

ARCHITECTURE model OF AND4B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE AND4B4


-- BEGIN BEHAVE NAND2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND2 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END NAND2;

ARCHITECTURE model OF NAND2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=  NOT ( N1 AND N2 ) AFTER 1NS;
END model;
-- END BEHAVE NAND2


-- BEGIN BEHAVE NAND2B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND2B1 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END NAND2B1;

ARCHITECTURE model OF NAND2B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <= ( I1 ) ;
    O <=  NOT ( N1 AND N2 )  AFTER 1NS;
END model;
-- END BEHAVE NAND2B1


-- BEGIN BEHAVE NAND2B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND2B2 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END NAND2B2;

ARCHITECTURE model OF NAND2B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    O <=  NOT ( N1 AND N2 )  AFTER 1NS;
END model;
-- END BEHAVE NAND2B2


-- BEGIN BEHAVE NAND3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND3 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END NAND3;

ARCHITECTURE model OF NAND3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  NOT ( N1 AND N2 AND N3 ) AFTER 1NS;
END model;
-- END BEHAVE NAND3


-- BEGIN BEHAVE NAND3B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND3B1 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END NAND3B1;

ARCHITECTURE model OF NAND3B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;

    O <=  NOT ( N1 AND N2 AND N3 )  AFTER 1NS;
END model;
-- END BEHAVE NAND3B1


-- BEGIN BEHAVE NAND3B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND3B2 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END NAND3B2;

ARCHITECTURE model OF NAND3B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;

    O <=  NOT ( N1 AND N2 AND N3 )  AFTER 1NS;
END model;
-- END BEHAVE NAND3B2


-- BEGIN BEHAVE NAND3B3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND3B3 IS
PORT(
I0, I1, I2 : IN  std_logic;
O : OUT  std_logic);
END NAND3B3;

ARCHITECTURE model OF NAND3B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
	N3 <=  NOT ( I2 ) ;

    O <=  NOT ( N1 AND N2 AND N3 )  AFTER 1NS;
END model;
-- END BEHAVE NAND3B3


-- BEGIN BEHAVE NAND4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND4 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END NAND4;

ARCHITECTURE model OF NAND4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  NOT ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
END model;
-- END BEHAVE NAND4


-- BEGIN BEHAVE NAND4B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND4B1 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END NAND4B1;

ARCHITECTURE model OF NAND4B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  NOT ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE NAND4B1


-- BEGIN BEHAVE NAND4B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND4B2 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END NAND4B2;

ARCHITECTURE model OF NAND4B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  NOT ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE NAND4B2


-- BEGIN BEHAVE NAND4B3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND4B3 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END NAND4B3;

ARCHITECTURE model OF NAND4B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=  NOT ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE NAND4B3


-- BEGIN BEHAVE NAND4B4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND4B4 IS
PORT(
I0, I1, I2, I3 : IN  std_logic;
O : OUT  std_logic);
END NAND4B4;

ARCHITECTURE model OF NAND4B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    O <=  NOT ( N1 AND N2 AND N3 AND N4 )  AFTER 1NS;
END model;
-- END BEHAVE NAND4B4


-- BEGIN BEHAVE OR2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR2 IS
PORT(
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR2;

ARCHITECTURE model OF OR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=  ( N1 OR N2 ) AFTER 1NS;
END model;
-- END BEHAVE OR2 


-- BEGIN BEHAVE OR2B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR2B1 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END OR2B1;

ARCHITECTURE model OF OR2B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <= ( I1 ) ;
    O <=  ( N1 OR N2 )  AFTER 1NS;
END model;
-- END BEHAVE OR2B1


-- BEGIN BEHAVE OR2B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR2B2 IS
PORT(
I0, I1 : IN  std_logic;
O : OUT  std_logic);
END OR2B2;

ARCHITECTURE model OF OR2B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT ( I0 ) ;
    N2 <= NOT ( I1 ) ;
    O <=  ( N1 OR N2 )  AFTER 1NS;
END model;
-- END BEHAVE OR2B2


-- BEGIN BEHAVE OR3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR3 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR3;

ARCHITECTURE model OF OR3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  ( N1 OR N2 OR N3 ) AFTER 1NS;
END model;
-- END BEHAVE OR3 


-- BEGIN BEHAVE OR3B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR3B1 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR3B1;

ARCHITECTURE model OF OR3B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  ( N1 OR N2 OR N3 )  AFTER 1NS;
END model;
-- END BEHAVE OR3B1 


-- BEGIN BEHAVE OR3B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR3B2 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR3B2;

ARCHITECTURE model OF OR3B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  ( N1 OR N2 OR N3 )  AFTER 1NS;
END model;
-- END BEHAVE OR3B2 


-- BEGIN BEHAVE OR3B3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR3B3 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR3B3;

ARCHITECTURE model OF OR3B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    O <=  ( N1 OR N2 OR N3 )  AFTER 1NS;
END model;
-- END BEHAVE OR3B3 


-- BEGIN BEHAVE OR4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR4 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR4;

ARCHITECTURE model OF OR4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  ( I3 ) ;
    N3 <=  ( I2 ) ;
    N2 <=  ( I1 ) ;
    N1 <=  ( I0 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
END model;
-- END BEHAVE OR4 


-- BEGIN BEHAVE OR4B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR4B1 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR4B1;

ARCHITECTURE model OF OR4B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I0 ) ;
    N3 <=  ( I1 ) ;
    N2 <=  ( I2 ) ;
    N1 <=  ( I3 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE OR4B1 


-- BEGIN BEHAVE OR4B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR4B2 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR4B2;

ARCHITECTURE model OF OR4B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I0 ) ;
    N3 <=  NOT ( I1 ) ;
    N2 <=  ( I2 ) ;
    N1 <=  ( I3 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE OR4B2 


-- BEGIN BEHAVE OR4B3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR4B3 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR4B3;

ARCHITECTURE model OF OR4B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I0 ) ;
    N3 <=  NOT ( I1 ) ;
    N2 <=  NOT ( I2 ) ;
    N1 <=  ( I3 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE OR4B3 


-- BEGIN BEHAVE OR4B4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR4B4 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR4B4;

ARCHITECTURE model OF OR4B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I3 ) ;
    N3 <=  NOT ( I2 ) ;
    N2 <=  NOT ( I1 ) ;
    N1 <=  NOT ( I0 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE OR4B4 


-- BEGIN BEHAVE NOR2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR2 IS
PORT(
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR2;

ARCHITECTURE model OF NOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=  NOT( N1 OR N2 ) AFTER 1NS;
END model;
-- END BEHAVE NOR2 


-- BEGIN BEHAVE NOR2B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR2B1 IS
PORT(
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR2B1;

ARCHITECTURE model OF NOR2B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=  NOT( N1 OR N2 )  AFTER 1NS;
END model;
-- END BEHAVE NOR2B1 


-- BEGIN BEHAVE NOR2B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR2B2 IS
PORT(
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR2B2;

ARCHITECTURE model OF NOR2B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    O <=  NOT( N1 OR N2 )  AFTER 1NS;
END model;
-- END BEHAVE NOR2B2 


-- BEGIN BEHAVE NOR3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR3 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR3;

ARCHITECTURE model OF NOR3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  NOT( N1 OR N2 OR N3 ) AFTER 1NS;
END model;
-- END BEHAVE NOR3 


-- BEGIN BEHAVE NOR3B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR3B1 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR3B1;

ARCHITECTURE model OF NOR3B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  NOT( N1 OR N2 OR N3 )  AFTER 1NS;
END model;
-- END BEHAVE NOR3B1 


-- BEGIN BEHAVE NOR3B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR3B2 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR3B2;

ARCHITECTURE model OF NOR3B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    O <=  NOT( N1 OR N2 OR N3 )  AFTER 2NS;
END model;
-- END BEHAVE NOR3B2 


-- BEGIN BEHAVE NOR3B3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR3B3 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR3B3;

ARCHITECTURE model OF NOR3B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    O <=  NOT( N1 OR N2 OR N3 )  AFTER 1NS;
END model;
-- END BEHAVE NOR3B3 


-- BEGIN BEHAVE NOR4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR4 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR4;

ARCHITECTURE model OF NOR4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  ( I3 ) ;
    N3 <=  ( I2 ) ;
    N2 <=  ( I1 ) ;
    N1 <=  ( I0 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
END model;
-- END BEHAVE NOR4 


-- BEGIN BEHAVE NOR4B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR4B1 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR4B1;

ARCHITECTURE model OF NOR4B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I0 ) ;
    N3 <=  ( I1 ) ;
    N2 <=  ( I2 ) ;
    N1 <=  ( I3 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE NOR4B1 


-- BEGIN BEHAVE NOR4B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR4B2 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR4B2;

ARCHITECTURE model OF NOR4B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I0 ) ;
    N3 <=  NOT ( I1 ) ;
    N2 <=  ( I2 ) ;
    N1 <=  ( I3 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE NOR4B2 


-- BEGIN BEHAVE NOR4B3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR4B3 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR4B3;

ARCHITECTURE model OF NOR4B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I0 ) ;
    N3 <=  NOT ( I1 ) ;
    N2 <=  NOT ( I2 ) ;
    N1 <=  ( I3 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE NOR4B3 


-- BEGIN BEHAVE NOR4B4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR4B4 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR4B4;

ARCHITECTURE model OF NOR4B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N4 <=  NOT ( I3 ) ;
    N3 <=  NOT ( I2 ) ;
    N2 <=  NOT ( I1 ) ;
    N1 <=  NOT ( I0 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 )  AFTER 1NS;
END model;
-- END BEHAVE NOR4B4 


-- BEGIN BEHAVE XOR2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XOR2 IS
PORT(
I1, 
I0 : IN  std_logic;
O  : OUT std_logic);
END XOR2;

ARCHITECTURE model OF XOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=   ( N1 XOR N2 ) AFTER 2NS;
END model;
-- END BEHAVE XOR2 


-- BEGIN BEHAVE XOR3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XOR3 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O  : OUT std_logic);
END XOR3;

ARCHITECTURE model OF XOR3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O  <=  ( N1 XOR N2 XOR N3 ) AFTER 1NS;
END model;
-- END BEHAVE XOR3 


-- BEGIN BEHAVE XOR4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XOR4 IS
PORT(
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O  : OUT std_logic);
END XOR4;

ARCHITECTURE model OF XOR4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=   ( N1 XOR N2 XOR N3 XOR N4 ) AFTER 2NS;
END model;
-- END BEHAVE XOR4 


-- BEGIN BEHAVE XNOR2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XNOR2 IS
PORT(
I1,
I0 : IN  std_logic;
O : OUT  std_logic);
END XNOR2;

ARCHITECTURE model OF XNOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    O <=   NOT ( N1 XOR N2 ) AFTER 2NS;
END model;
-- END BEHAVE XNOR2 


-- BEGIN BEHAVE XNOR3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XNOR3 IS
PORT(
I2, 
I1, 
I0 : IN  std_logic;
O  : OUT std_logic);
END XNOR3;

ARCHITECTURE model OF XNOR3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    O  <=  NOT( N1 XOR N2 XOR N3 ) AFTER 1NS;
END model;
-- END BEHAVE XNOR3 


-- BEGIN BEHAVE XNOR4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XNOR4 IS
PORT(
I3,
I2,
I1,
I0 : IN  std_logic;
O : OUT  std_logic);
END XNOR4;

ARCHITECTURE model OF XNOR4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    O <=   NOT( N1 XOR N2 XOR N3 XOR N4 ) AFTER 1NS;
END model;
-- END BEHAVE XNOR4 

-- BEGIN BEHAVE byposc
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY byposc IS
  PORT(
     I : IN std_logic);
END byposc;

ARCHITECTURE model OF byposc IS
BEGIN
END model;
-- END BEHAVE byposc 


-- END LIB XC5200

