--***************************************************************************
--*                                                                        	*
--*                         Copyright (C) 1987-1998                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:	OrCAD Simulate for Windows
--				VHDL Simulation Library for Xilinx XC4000EX LCAs
-- File:			X4KX.VHD
-- Date:		January 16, 1998
-- Version:		v7.20
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96
--				Xilinx EDIF schematics, Xilinx Inc., Alliance Developer's
--					Toolkit vM1.1 - 5/97

-- Author History		|Last Touched	|Reason:      
--	Kathy Horvath		|11/13/98		| Changed input pin names from "G" and "GE" to "C"
--										| and "CE" on the ILFFX and ILFFXI.
--	Kathy Horvath		|11/02/98		| Changed GND port name to "G" and VCC to "P".
--  RBH					|08/11/98       | Changed GND port name to "O" and VCC to "VCC" to
--										| match new synthesis libraries. 
--	Kathy Horvath		|05/28/98		| Added 1ns timing delay to components output signals.
--	Kathy Horvath		|05/19/98		| Added the component CY4_43.  
--	Kathy Horvath		|04/10/98		| Removed following components: PIN, SC, TNM,
--										| TS, W, X.
--	Brian Smith			|03/11/98		| Modified the FDCE, IFDX, and FDPE to remove a 
--										| signal that could potentially keep them from
--										| clocking. 
--***************************************************************************

-- XILINX XC4000EX SIMULATION MODELS

-- BEGIN PACKAGE X4KEX_PACK
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE X4KEX_pack IS
    
	-- Global signals initialized
	SIGNAL gsr : std_logic := '0';
	SIGNAL gts : std_logic := '0';

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

-- BEGIN COMPONENT opad 
COMPONENT opad  
  PORT(
      OPAD : IN std_logic);
END COMPONENT;
-- END COMPONENT opad 

-- BEGIN COMPONENT ipad 
COMPONENT ipad  
  PORT(
     IPAD : OUT  std_logic);
END COMPONENT;
-- END COMPONENT ipad 

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

--BEGIN COMPONENT BUFFCLK
COMPONENT BUFFCLK
PORT(
O : OUT std_logic;
I : IN std_logic);
END COMPONENT;
-- END COMPONENT BUFFCLK

-- BEGIN COMPONENT BUFGLS
COMPONENT BUFGLS
PORT(
O : OUT std_logic;
I : IN std_logic);
END COMPONENT;
-- END COMPONENT BUFGLS

-- BEGIN COMPONENT BUFGE
COMPONENT BUFGE
PORT(
O : OUT std_logic;
I : IN std_logic);
END COMPONENT;
-- END COMPONENT BUFGE

-- BEGIN COMPONENT ILFFX
COMPONENT ILFFX
PORT(
Q : OUT std_logic;
D : IN std_logic;
GF : IN std_logic;
CE : IN std_logic;
C : IN std_logic);
END COMPONENT;
-- END COMPONENT ILFFX

-- BEGIN COMPONENT ILFFXI
COMPONENT ILFFXI
PORT(
Q : OUT std_logic;
D : IN std_logic;
GF : IN std_logic;
CE : IN std_logic;
C : IN std_logic);
END COMPONENT;
-- END COMPONENT ILFFXI

-- BEGIN COMPONENT ILFLX_1
COMPONENT ILFLX_1
PORT(
Q : OUT std_logic;
D : IN std_logic;
GF : IN std_logic;
GE : IN std_logic;
G : IN std_logic);
END COMPONENT;
-- END COMPONENT ILFLX_1

-- BEGIN COMPONENT ILFLXI_1
COMPONENT ILFLXI_1
PORT(
Q : OUT std_logic;
D : IN std_logic;
GF : IN std_logic;
GE : IN std_logic;
G : IN std_logic);
END COMPONENT;
-- END COMPONENT ILFLXI_1

-- BEGIN COMPONENT LDCE_1
COMPONENT LDCE_1
PORT(
Q : OUT std_logic;
D : IN std_logic;
GE : IN std_logic;
G : IN std_logic;
CLR : IN std_logic);
END COMPONENT;
-- END COMPONENT LDCE_1

-- BEGIN COMPONENT LDPE_1
COMPONENT LDPE_1
PORT(
Q : OUT std_logic;
D : IN std_logic;
GE : IN std_logic;
G : IN std_logic;
PRE : IN std_logic);
END COMPONENT;
-- END COMPONENT LDPE_1

-- BEGIN COMPONENT OAND2
COMPONENT OAND2
PORT(
O : OUT std_logic;
F : IN std_logic;
I0 : IN std_logic);
END COMPONENT;
-- END COMPONENT OAND2

-- BEGIN COMPONENT OMUX2
COMPONENT OMUX2
PORT(
O : OUT std_logic;
D0 : IN std_logic;
D1 : IN std_logic;
S0 : IN std_logic);
END COMPONENT;
-- END COMPONENT OMUX2

-- BEGIN COMPONENT ONAND2
COMPONENT ONAND2
PORT(
O : OUT std_logic;
F : IN std_logic;
I0 : IN std_logic);
END COMPONENT;
-- END COMPONENT ONAND2

-- BEGIN COMPONENT ONOR2
COMPONENT ONOR2
PORT(
O : OUT std_logic;
F : IN std_logic;
I0 : IN std_logic);
END COMPONENT;
-- END COMPONENT ONOR2

-- BEGIN COMPONENT OOR2
COMPONENT OOR2
PORT(
O : OUT std_logic;
F : IN std_logic;
I0 : IN std_logic);
END COMPONENT;
-- END COMPONENT OOR2

-- BEGIN COMPONENT OXOR2
COMPONENT OXOR2
PORT(
O : OUT std_logic;
F : IN std_logic;
I0 : IN std_logic);
END COMPONENT;
-- END COMPONENT OXOR2

-- BEGIN COMPONENT OXNOR2
COMPONENT OXNOR2
PORT(
O : OUT std_logic;
F : IN std_logic;
I0 : IN std_logic);
END COMPONENT;
-- END COMPONENT OXNOR2

-- BEGIN COMPONENT IFDI
COMPONENT IFDI   
PORT(
D, C : IN  std_logic;
Q    : OUT std_logic := '1');
END COMPONENT;
-- END COMPONENT IFDI

-- BEGIN COMPONENT IFDX
COMPONENT IFDX   
PORT(
D, CE, C : IN  std_logic;
Q        : OUT std_logic := '1');
END COMPONENT;
-- END COMPONENT IFDX

-- BEGIN COMPONENT IFDXI
COMPONENT IFDXI   
PORT(
D, CE, C : IN  std_logic;
Q        : OUT std_logic := '1');
END COMPONENT;
-- END COMPONENT IFDXI

-- BEGIN COMPONENT ILDI_1
COMPONENT ILDI_1   
PORT(
D, G : IN  std_logic;
Q : OUT  std_logic   := '1');
END COMPONENT;
-- END COMPONENT ILDI_1

-- BEGIN COMPONENT ILDX_1
COMPONENT ILDX_1   
PORT(
D, G, GE : IN  std_logic;
Q        : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT ILDX_1

 -- BEGIN COMPONENT ILDXI_1
COMPONENT ILDXI_1   
PORT(
D, G, GE : IN  std_logic;
Q        : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT ILDXI_1

-- BEGIN COMPONENT OBUF
COMPONENT OBUF  
PORT(
I   : IN  std_logic; 
O   : OUT std_logic);
END COMPONENT;
-- END COMPONENT OBUF

-- BEGIN COMPONENT OBUFT 
COMPONENT OBUFT  
PORT(
T, I : IN  std_logic;
O    : OUT std_logic);
END COMPONENT;
-- END COMPONENT OBUFT 

-- BEGIN COMPONENT OFDX 
COMPONENT OFDX  
PORT(
D, C, CE : IN  std_logic;
Q        : OUT std_logic := 'Z');
END COMPONENT;
-- END COMPONENT OFDX 

-- BEGIN COMPONENT OFDXI 
COMPONENT OFDXI  
PORT(
D, C, CE : IN  std_logic;
Q        : OUT std_logic := 'Z');
END COMPONENT;
-- END COMPONENT OFDXI 

-- BEGIN COMPONENT OFDT 
COMPONENT OFDT   
PORT(
T, D, C  : IN  std_logic;
O        : OUT std_logic := 'Z');
END COMPONENT;
-- END COMPONENT OFDT 

-- BEGIN COMPONENT OFDTI 
COMPONENT OFDTI   
PORT(
T, D, C  : IN  std_logic;
O        : OUT std_logic := 'Z');
END COMPONENT;
-- END COMPONENT OFDTI 

-- BEGIN COMPONENT OFDTX 
COMPONENT OFDTX   
PORT(
T, D, C, CE  : IN  std_logic;
O            : OUT std_logic := 'Z');
END COMPONENT;
-- END COMPONENT OFDTX 

-- BEGIN COMPONENT OFDTXI
COMPONENT OFDTXI
PORT(
T, D, C, CE  : IN  std_logic;
O            : OUT std_logic := 'Z');
END COMPONENT;
-- END COMPONENT OFDTXI

-- BEGIN COMPONENT FDCE 
COMPONENT FDCE   
PORT(
C, D : IN  std_logic;
CLR  : IN  std_logic := '0';
CE   : IN  std_logic := '1';
Q    : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT FDCE 

-- BEGIN COMPONENT FDPE 
COMPONENT FDPE   
PORT(
D, C : IN  std_logic;
PRE  : IN  std_logic := '0';
CE   : IN  std_logic := '1';
Q    : OUT std_logic := '1');
END COMPONENT;
-- END COMPONENT FDPE 

-- BEGIN COMPONENT RAM16X1
COMPONENT RAM16X1
GENERIC (
INIT    : std_logic_vector(15 downto 0) := x"0000");
PORT (
WE, D, A0, A1, A2, A3 : IN  std_logic;
O  : OUT  std_logic := '0' );

END COMPONENT;
-- END COMPONENT RAM16X1

-- BEGIN COMPONENT RAM16X1S
COMPONENT RAM16X1S
GENERIC (
INIT    : std_logic_vector(15 downto 0) := x"0000");
PORT (
WCLK, WE, D, A0, A1, A2, A3 : IN  std_logic;
O                           : OUT  std_logic := '0');

END COMPONENT;
-- END COMPONENT RAM16X1S

-- BEGIN COMPONENT RAM16X1D
COMPONENT RAM16X1D
GENERIC (
INIT    : std_logic_vector(15 downto 0) := x"0000");
PORT (
WCLK, WE, D, A0, A1, A2, A3 : IN  std_logic;
DPRA0, DPRA1, DPRA2, DPRA3  : IN  std_logic;
SPO, DPO                    : OUT  std_logic := '0');

END COMPONENT;
-- END COMPONENT RAM16X1D

-- BEGIN COMPONENT RAM32X1
COMPONENT RAM32X1
GENERIC (
INIT    : std_logic_vector(31 downto 0) := x"00000000");
PORT (
WE, D, A0, A1, A2, A3, A4 : IN  std_logic;
O  : OUT  std_logic := '0' );

END COMPONENT;
-- END COMPONENT RAM32X1

-- BEGIN COMPONENT RAM32X1S
COMPONENT RAM32X1S
GENERIC (
INIT    : std_logic_vector(31 downto 0) := x"00000000");
PORT (
WCLK, WE, D, A0, A1, A2, A3, A4 : IN  std_logic;
O : OUT  std_logic := '0');

END COMPONENT;
-- END COMPONENT RAM32X1S

-- BEGIN COMPONENT ROM16X1
COMPONENT ROM16X1
GENERIC (
INIT    : std_logic_vector(15 downto 0) := x"0000");
PORT (
A0, A1, A2, A3 : IN  std_logic;
O              : OUT  std_logic := '1'
);

END COMPONENT;
-- END COMPONENT ROM16X1

-- BEGIN BEHAVE ROM32X1
COMPONENT ROM32X1
GENERIC (
INIT    : std_logic_vector(31 downto 0) := x"00000000");
PORT (
A0, A1, A2, A3, A4 : IN  std_logic;
O                  : OUT  std_logic := '1'
);

END COMPONENT;
-- END COMPONENT ROM32X1

-- BEGIN COMPONENT BUFT 
COMPONENT BUFT   
PORT(
T, I : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT BUFT 

-- BEGIN COMPONENT WAND1 
COMPONENT WAND1   
PORT(
I : IN  std_logic;
O : OUT std_logic);
END COMPONENT;
-- END COMPONENT WAND1 

-- BEGIN COMPONENT WOR2AND 
COMPONENT WOR2AND   
PORT(
I0, I1 : IN  std_logic;
O      : OUT  std_logic);
END COMPONENT;
-- END COMPONENT WOR2AND 

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

-- BEGIN COMPONENT OSC4
COMPONENT OSC4   PORT(
F8M,   
F500K, 
F16K,  
F490,  
F15 : OUT  std_logic := '0');
END COMPONENT;
-- END COMPONENT OSC4


-- BEGIN COMPONENT BUF 
COMPONENT BUF  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUF 


-- BEGIN COMPONENT CY4 
COMPONENT CY4  
PORT(
A0, B0, 
A1, B1, 
ADD,
C7, C6, C5, C4, C3, C2, C1, C0, 
CIN   : IN    std_logic := '0';
COUT0 : OUT   std_logic := '0';
COUT  : OUT   std_logic := '0');
END COMPONENT;
-- END COMPONENT CY4 


-- BEGIN COMPONENT CY4_01
COMPONENT cy4_01
PORT(
  C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_01

-- BEGIN COMPONENT CY4_02
COMPONENT cy4_02
PORT(
  C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_02

-- BEGIN COMPONENT CY4_03
COMPONENT cy4_03
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_03

-- BEGIN COMPONENT CY4_04
COMPONENT cy4_04
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- EN COMPONENT CY4_04

-- BEGIN COMPONENT CY4_05
COMPONENT cy4_05
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_05

-- BEGIN COMPONENT CY4_06
COMPONENT cy4_06
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_06

-- BEGIN COMPONENT CY4_07
COMPONENT cy4_07
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_07

-- BEGIN COMPONENT CY4_08
COMPONENT cy4_08
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_08

-- BEGIN COMPONENT CY4_09
COMPONENT cy4_09
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_09

-- BEGIN COMPONENT CY4_10
COMPONENT cy4_10
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_10

-- BEGIN COMPONENT CY4_11
COMPONENT cy4_11
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_11

-- BEGIN COMPONENT CY4_12
COMPONENT cy4_12
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT CY4_12

-- BEGIN COMPONENT  cy4_13
COMPONENT cy4_13
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_13 


-- BEGIN COMPONENT  cy4_14 
COMPONENT cy4_14
PORT(C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_14 


-- BEGIN COMPONENT  cy4_15 
COMPONENT cy4_15  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_15 


-- BEGIN COMPONENT  cy4_16 
COMPONENT cy4_16  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_16 


-- BEGIN COMPONENT  cy4_17 
COMPONENT cy4_17  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_17 


-- BEGIN COMPONENT  cy4_18 
COMPONENT cy4_18  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_18 


-- BEGIN COMPONENT  cy4_19 
COMPONENT cy4_19  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_19 


-- BEGIN COMPONENT  cy4_20 
COMPONENT cy4_20  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_20 


-- BEGIN COMPONENT  cy4_21 
COMPONENT cy4_21  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_21 


-- BEGIN COMPONENT  cy4_22 
COMPONENT cy4_22  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_22 


-- BEGIN COMPONENT  cy4_23 
COMPONENT cy4_23  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_23 


-- BEGIN COMPONENT  cy4_24 
COMPONENT cy4_24  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_24 


-- BEGIN COMPONENT  cy4_25 
COMPONENT cy4_25  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_25 


-- BEGIN COMPONENT  cy4_26 
COMPONENT cy4_26  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_26 


-- BEGIN COMPONENT  cy4_27 
COMPONENT cy4_27  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_27 


-- BEGIN COMPONENT  cy4_28 
COMPONENT cy4_28  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_28 


-- BEGIN COMPONENT  cy4_29 
COMPONENT cy4_29  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_29 


-- BEGIN COMPONENT  cy4_30 
COMPONENT cy4_30  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_30 


-- BEGIN COMPONENT  cy4_31 
COMPONENT cy4_31  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_31 


-- BEGIN COMPONENT  cy4_32 
COMPONENT cy4_32  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_32 


-- BEGIN COMPONENT  cy4_33 
COMPONENT cy4_33  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_33 


-- BEGIN COMPONENT  cy4_34 
COMPONENT cy4_34  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_34 


-- BEGIN COMPONENT  cy4_35 
COMPONENT cy4_35  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_35 


-- BEGIN COMPONENT  cy4_36 
COMPONENT cy4_36  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_36 


-- BEGIN COMPONENT  cy4_37 
COMPONENT cy4_37  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_37 


-- BEGIN COMPONENT  cy4_38 
COMPONENT cy4_38  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_38 


-- BEGIN COMPONENT  cy4_39 
COMPONENT cy4_39  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_39 


-- BEGIN COMPONENT  cy4_40 
COMPONENT cy4_40  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_40 


-- BEGIN COMPONENT  cy4_41 
COMPONENT cy4_41  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_41 


-- BEGIN COMPONENT  cy4_42 
COMPONENT cy4_42  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_42 

-- BEGIN COMPONENT  cy4_43 
COMPONENT cy4_43  
PORT( C7,C6,C5,C4,C3,C2,C1,C0 : OUT    std_logic);
END COMPONENT;
-- END COMPONENT  cy4_43 

-- BEGIN COMPONENT BSCAN
COMPONENT BSCAN
PORT(
  TDI, TMS, TCK, TDO1, TDO2	: IN std_logic;
  TDO : OUT  std_logic := 'H';
  DRCK, IDLE, SEL1, SEL2 : OUT  std_logic := 'L'
  );
END COMPONENT;
-- END COMPONENT BSCAN

-- BEGIN COMPONENT STARTUP
COMPONENT STARTUP
PORT(
  CLK, GTS, GSR 	    : IN std_logic;
  Q2, Q3, Q1Q4, DONEIN : OUT  std_logic := 'H'
  );
END COMPONENT;
-- END COMPONENT STARTUP

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

-- BEGIN COMPONENT GND 
COMPONENT GND   
PORT(
G : OUT  std_logic  );
END COMPONENT;
-- END COMPONENT GND I

-- BEGIN COMPONENT VCC 
COMPONENT VCC   
PORT(
P : OUT  std_logic  );
END COMPONENT;
-- END COMPONENT VCC 

-- BEGIN COMPONENT rdclk 
 COMPONENT rdclk  
  PORT(
      I : IN std_logic);
END COMPONENT;
-- END COMPONENT rdclk 

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

-- BEGIN COMPONENT RDBK
COMPONENT RDBK
  PORT(
  TRIG      : IN std_logic;
  DATA : OUT  std_logic := 'H';
  RIP  : OUT  std_logic := 'L'
  );
END COMPONENT;
-- END COMPONENT RDBK

-- BEGIN COMPONENT FMAP
COMPONENT FMAP
PORT(
  I1, I2, I3, I4 : IN std_logic := 'L';
  O : IN  std_logic
  );
END COMPONENT;
-- END COMPONENT FMAP

-- BEGIN COMPONENT HMAP
COMPONENT HMAP
PORT(
  I1, I2, I3 : IN std_logic := 'L';
  O : IN  std_logic
  );
END COMPONENT;
-- END COMPONENT HMAP

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

	-- BEGIN COMPONENT AND5 
	COMPONENT AND5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT AND5 

	-- BEGIN COMPONENT AND5B1 
	COMPONENT AND5B1  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT AND5B1 

	-- BEGIN COMPONENT AND5B2 
	COMPONENT AND5B2  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT AND5B2 

	-- BEGIN COMPONENT AND5B3 
	COMPONENT AND5B3  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT AND5B3 

	-- BEGIN COMPONENT AND5B4 
	COMPONENT AND5B4  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT AND5B4 

	-- BEGIN COMPONENT AND5B5 
	COMPONENT AND5B5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT AND5B5 

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
			IO, I1, I2 : IN std_logic;
			O : OUT std_logic);
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

	-- BEGIN COMPONENT NAND5 
	COMPONENT NAND5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NAND5 

	-- BEGIN COMPONENT NAND5B1 
	COMPONENT NAND5B1  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NAND5B1 

	-- BEGIN COMPONENT NAND5B2 
	COMPONENT NAND5B2  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NAND5B2 

	-- BEGIN COMPONENT NAND5B3 
	COMPONENT NAND5B3  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NAND5B3 

	-- BEGIN COMPONENT NAND5B4 
	COMPONENT NAND5B4  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NAND5B4 

	-- BEGIN COMPONENT NAND5B5 
	COMPONENT NAND5B5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NAND5B5 

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
			IO, I1, I2 : IN std_logic;
			O : OUT std_logic);
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

	-- BEGIN COMPONENT OR5 
	COMPONENT OR5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT OR5 

	-- BEGIN COMPONENT OR5B1 
	COMPONENT OR5B1  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT OR5B1 

	-- BEGIN COMPONENT OR5B2 
	COMPONENT OR5B2  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT OR5B2 

	-- BEGIN COMPONENT OR5B3 
	COMPONENT OR5B3  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT OR5B3 

	-- BEGIN COMPONENT OR5B4 
	COMPONENT OR5B4  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT OR5B4 

	-- BEGIN COMPONENT OR5B5 
	COMPONENT OR5B5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT OR5B5 

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
			IO, I1, I2 : IN std_logic;
			O : OUT std_logic);
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

	-- BEGIN COMPONENT NOR5 
	COMPONENT NOR5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NOR5 

	-- BEGIN COMPONENT NOR5B1 
	COMPONENT NOR5B1  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NOR5B1 

	-- BEGIN COMPONENT NOR5B2 
	COMPONENT NOR5B2  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NOR5B2 

	-- BEGIN COMPONENT NOR5B3 
	COMPONENT NOR5B3  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NOR5B3 

	-- BEGIN COMPONENT NOR5B4 
	COMPONENT NOR5B4  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NOR5B4 

	-- BEGIN COMPONENT NOR5B5 
	COMPONENT NOR5B5  
		PORT(
			I0 : IN  std_logic;
			I1 : IN  std_logic;
			I2 : IN  std_logic;
			I3 : IN  std_logic;
			I4 : IN  std_logic;
			O : OUT  std_logic);
	END COMPONENT;
	-- END COMPONENT NOR5B5 

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

-- BEGIN COMPONENT XOR5 
COMPONENT XOR5  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XOR5 

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

-- BEGIN COMPONENT XNOR5 
COMPONENT XNOR5  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT XNOR5 


END X4KEX_pack;

-- END PACKAGE X4KEX_PACK


-- BEGIN LIB XC4000E


-- BEGIN BEHAVE pin
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pin IS
  PORT(
     PIN : IN std_logic);
END pin;

ARCHITECTURE model OF pin IS
BEGIN
END model;
-- END BEHAVE pin 


-- BEGIN BEHAVE sc
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sc IS
  PORT(
     SC : IN std_logic);
END sc;

ARCHITECTURE model OF sc IS
BEGIN
END model;
-- END BEHAVE sc 


-- BEGIN BEHAVE w
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY w IS
  PORT(
     W : IN std_logic);
END w;

ARCHITECTURE model OF w IS
BEGIN
END model;
-- END BEHAVE w 


-- BEGIN BEHAVE x
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY x IS
  PORT(
     X : IN std_logic);
END x;

ARCHITECTURE model OF x IS
BEGIN
END model;
-- END BEHAVE x 


-- BEGIN BEHAVE tnm
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tnm IS
  PORT(
     TNM : IN std_logic);
END tnm;

ARCHITECTURE model OF tnm IS
BEGIN
END model;
-- END BEHAVE tnm 


-- BEGIN BEHAVE ts
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ts IS
  PORT(
     TS : IN std_logic);
END ts;

ARCHITECTURE model OF ts IS
BEGIN
END model;
-- END BEHAVE ts 


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
    O : OUT std_logic;
    I : IN  std_logic);
END IBUF;

ARCHITECTURE model OF IBUF IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  TO_X01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE IBUF


-- BEGIN BEHAVE BUFFCLK
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY BUFFCLK IS 
PORT(
    I : IN  std_logic;
    O  : OUT std_logic);
END BUFFCLK;

ARCHITECTURE model OF BUFFCLK IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  TO_X01 ( N1 ) AFTER 1NS;

END model;
-- END BEHAVE BUFFCLK


-- BEGIN BEHAVE BUFGLS
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY BUFGLS IS 
PORT(
    I : IN  std_logic;
    O  : OUT std_logic);
END BUFGLS;

ARCHITECTURE model OF BUFGLS IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  TO_X01 ( N1 ) AFTER 1NS;

END model;
-- END BEHAVE BUFGLS


-- BEGIN BEHAVE BUFGE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY BUFGE IS 
PORT(
    I : IN  std_logic;
    O  : OUT std_logic);
END BUFGE;

ARCHITECTURE model OF BUFGE IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  TO_X01 ( N1 ) AFTER 1NS;

END model;
-- END BEHAVE BUFGE


-- BEGIN BEHAVE ILFFX
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILFFX IS 
PORT(
    D, GF, CE, C : IN  std_logic;
    Q  : OUT std_logic);
END ILFFX;

ARCHITECTURE model OF ILFFX IS

	BEGIN

	BEHAVIOR : PROCESS (D, GF, CE, C)
		VARIABLE INODE : std_logic := 'X';
		VARIABLE GF_delayed : std_logic := 'X';
		VARIABLE C_delayed : std_logic := 'X';
		VARIABLE D_delayed : std_logic := 'X';

		BEGIN

			IF (GF = '0') THEN
				INODE := D;
			END IF;
			
			IF (GSR='1') THEN
				Q <= '0' AFTER 1NS;
			ELSIF (C_delayed='0') AND (CE='1') AND (C='1') THEN
				IF (INODE='1') AND (D_delayed='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='1') AND (GF_delayed='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (D_delayed='1') AND (GF_delayed='0') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='0') AND (D_delayed='0') THEN
					Q <= '0';
				ELSIF (INODE='0') AND (GF_delayed='1') THEN
					Q <= '0' AFTER 1NS;
				ELSIF (D_delayed='0') AND (GF_delayed='0') THEN
					Q <= '0' AFTER 1NS;
				END IF;				
			END IF;
			
			GF_delayed := GF;
			C_delayed := C;
			D_delayed := D;

END PROCESS;

END model;
-- END BEHAVE ILFFX


-- BEGIN BEHAVE ILFFXI
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILFFXI IS 
PORT(
    D, GF, CE, C : IN  std_logic;
    Q  : OUT std_logic);
END ILFFXI;

ARCHITECTURE model OF ILFFXI IS

	BEGIN

	BEHAVIOR : PROCESS (D, GF, CE, C)
		VARIABLE INODE : std_logic := 'X';
		VARIABLE GF_delayed : std_logic := 'X';
		VARIABLE C_delayed : std_logic := 'X';
		VARIABLE D_delayed : std_logic := 'X';

		BEGIN

			IF (GF = '0') THEN
				INODE := D;
			END IF;

			IF (GSR='1') THEN
				Q <= '1' AFTER 1NS;
			ELSIF (C_delayed='0') AND (CE='1') AND (C='1') THEN
				IF (INODE='1') AND (D_delayed='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='1') AND (GF_delayed='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (D_delayed='1') AND (GF_delayed='0') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='0') AND (D_delayed='0') THEN
					Q <= '0' AFTER 1NS;
				ELSIF (INODE='0') AND (GF_delayed='1') THEN
					Q <= '0' AFTER 1NS; 
				ELSIF (D_delayed='0') AND (GF_delayed='0') THEN
					Q <= '0' AFTER 1NS;
				END IF;				
			END IF;
			
			GF_delayed := GF;
			C_delayed := C;
			D_delayed := D;

END PROCESS;

END model;
-- END BEHAVE ILFFXI


-- BEGIN BEHAVE ILFLX_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILFLX_1 IS 
PORT(
    D, GF, GE, G : IN  std_logic;
    Q  : OUT std_logic);
END ILFLX_1;

ARCHITECTURE model OF ILFLX_1 IS

	BEGIN

	BEHAVIOR : PROCESS (D, GF, GE, G)
		VARIABLE INODE : std_logic := 'X';

		BEGIN

			IF (GF = '0') THEN
				INODE := D;
			END IF;

			IF (GSR='1') THEN
				Q <= '0' AFTER 1NS;
			ELSIF (G='0') AND (GE='1') THEN
				IF (INODE='1') AND (D='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='1') AND (GF='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (D='1') AND (GF='0') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='0') AND (D='0') THEN
					Q <= '0' AFTER 1NS;
				ELSIF (INODE='0') AND (GF='1') THEN
					Q <= '0' AFTER 1NS;
				ELSIF (D='0') AND (GF='0') THEN
					Q <= '0' AFTER 1NS;
				END IF;				
			END IF;

END PROCESS;

END model;
-- END BEHAVE ILFLX_1


-- BEGIN BEHAVE ILFLXI_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILFLXI_1 IS 
PORT(
    D, GF, GE, G : IN  std_logic;
    Q  : OUT std_logic);
END ILFLXI_1;

ARCHITECTURE model OF ILFLXI_1 IS

	BEGIN

	BEHAVIOR : PROCESS (D, GF, GE, G)
		VARIABLE INODE : std_logic := 'X';

		BEGIN

			IF (GF = '0') THEN
				INODE := D;
			END IF;

			IF (GSR='1') THEN
				Q <= '1' AFTER 1NS;
			ELSIF (G='0') AND (GE='1') THEN
				IF (INODE='1') AND (D='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='1') AND (GF='1') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (D='1') AND (GF='0') THEN
					Q <= '1' AFTER 1NS;
				ELSIF (INODE='0') AND (D='0') THEN
					Q <= '0' AFTER 1NS;
				ELSIF (INODE='0') AND (GF='1') THEN
					Q <= '0' AFTER 1NS;
				ELSIF (D='0') AND (GF='0') THEN
					Q <= '0' AFTER 1NS;
				END IF;				
			END IF;

END PROCESS;

END model;
-- END BEHAVE ILFLXI_1


-- BEGIN BEHAVE LDCE_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY LDCE_1 IS 
PORT(
    D, GE, G : IN  std_logic;
    CLR      : IN  std_logic := '0';
    Q        : OUT std_logic := '0');
END LDCE_1;

ARCHITECTURE model OF LDCE_1 IS

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
    N3 <=  NOT ( G )   ;
    N4 <= ( CLR ) ;
    N5 <= ( GSR )  ;

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
-- END BEHAVE LDCE_1


-- BEGIN BEHAVE LDPE_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY LDPE_1 IS 
PORT(
    D, GE, G : IN  std_logic;
    PRE      : IN  std_logic := '0';
    Q        : OUT std_logic := '0');
END LDPE_1;

ARCHITECTURE model OF LDPE_1 IS

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
    N3 <=  NOT ( G )   ;
    N4 <= ( PRE ) ;
    N5 <= ( GSR )  ;

    N6 <= ( N4 OR N5);
    N7 <= ( N2 AND N3);

    Q  <= ( N8 )  AFTER 1NS;

    BEHAVIOR : PROCESS (N1, N7)
    BEGIN
    IF    (N6 = '1') THEN N8 <= '1';
    ELSIF (N7 = '1') THEN 
        N8 <= TO_X01(N1);
    END IF;
    END PROCESS;
END model;
-- END BEHAVE LDPE_1


-- BEGIN BEHAVE OAND2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OAND2 IS
PORT(
I0, F : IN  std_logic;
O : OUT  std_logic);
END OAND2;

ARCHITECTURE model OF OAND2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( F ) ;
    O <=  ( N1 AND N2 ) AFTER 1NS;
END model;
-- END BEHAVE OAND2


-- BEGIN BEHAVE ONAND2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ONAND2 IS
PORT(
I0, F : IN  std_logic;
O : OUT  std_logic);
END ONAND2;

ARCHITECTURE model OF ONAND2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( F ) ;
    O <=  ( N1 NAND N2 ) AFTER 1NS;
END model;
-- END BEHAVE ONAND2


-- BEGIN BEHAVE OOR2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OOR2 IS
PORT(
I0, F : IN  std_logic;
O : OUT  std_logic);
END OOR2;

ARCHITECTURE model OF OOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( F ) ;
    O <=  ( N1 OR N2 ) AFTER 1NS;
END model;
-- END BEHAVE OOR2


-- BEGIN BEHAVE ONOR2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ONOR2 IS
PORT(
I0, F : IN  std_logic;
O : OUT  std_logic);
END ONOR2;

ARCHITECTURE model OF ONOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( F ) ;
    O <=  ( N1 NOR N2 ) AFTER 1NS;
END model;
-- END BEHAVE ONOR2


-- BEGIN BEHAVE OXOR2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OXOR2 IS
PORT(
I0, F : IN  std_logic;
O : OUT  std_logic);
END OXOR2;

ARCHITECTURE model OF OXOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( F ) ;
    O <=  ( N1 XOR N2 ) AFTER 1NS;
END model;
-- END BEHAVE OXOR2


-- BEGIN BEHAVE OXNOR2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OXNOR2 IS
PORT(
I0, F : IN  std_logic;
O : OUT  std_logic);
END OXNOR2;

ARCHITECTURE model OF OXNOR2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( F ) ;
    O <=  ( N1 XNOR N2 ) AFTER 1NS;
END model;
-- END BEHAVE OXNOR2


-- BEGIN BEHAVE OMUX2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OMUX2 IS
PORT(
D0, D1, S0 : IN  std_logic;
O : OUT  std_logic);
END OMUX2;

ARCHITECTURE model OF OMUX2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( D0 ) ;
    N2 <=  ( D1 ) ;
    N3 <=  ( S0 ) ;

    BEHAVIOR : PROCESS (N1, N2, N3)
    BEGIN
    	IF ( S0 = '1') THEN
    		O <= (N2) AFTER 1NS;
   	 ELSIF (S0 = '0') THEN
    		O <= (N1) AFTER 1NS;
    	END IF;
    END PROCESS;
END model;
-- END BEHAVE OMUX2


-- BEGIN BEHAVE IFDI
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY IFDI IS 
PORT(
    D, C : IN  std_logic;
    Q    : OUT std_logic := '1');
END IFDI;

ARCHITECTURE model OF IFDI IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic := '0';

    BEGIN
    N1 <= NOT ( D )   ;
    N2 <=     ( C )   ;
    N3 <=     ( GSR ) ;
    Q  <= NOT ( N4 )  AFTER 1NS;

      BEHAVIOR : PROCESS (N2, N3)
      BEGIN
        IF    (N3 = '1') THEN N4 <= '0';
        ELSIF (N2 = '1') AND N2'EVENT THEN
          N4 <= TO_X01(N1);
        END IF;
        END PROCESS;
      
END model;
-- END BEHAVE IFDI


-- BEGIN BEHAVE IFDX
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY IFDX IS 
    PORT(
    D, CE, C : IN  std_logic;
    Q        : OUT std_logic := '1');
END IFDX;

ARCHITECTURE model OF IFDX IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic := '0';
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <= ( D )   ;
    N2 <= ( CE )  ;
    N3 <= ( C )   ;
    N4 <= ( GSR ) ;
    N6 <= ( N2 AND N3 );

    Q  <= ( N5 )  AFTER 1NS;

      BEHAVIOR : PROCESS (N3, N4, N6)
      BEGIN
        IF    (N4 = '1') THEN N5 <= '0';
        ELSIF (N2 = '1' AND RISING_EDGE(N3)) THEN
          N5 <= TO_X01(N1);
        END IF;
        END PROCESS;
      
END model;
-- END BEHAVE IFDX



-- BEGIN BEHAVE IFDXI
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY IFDXI IS 
    PORT(
    D, CE, C : IN  std_logic;
    Q        : OUT std_logic := '1');
END IFDXI;

ARCHITECTURE model OF IFDXI IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic := '0';

    BEGIN
    N1 <= NOT ( D )   ;
    N2 <=     ( CE )  ;
    N3 <=     ( C )   ;
    N4 <=     ( GSR ) ;

    Q  <= NOT ( N5 )  AFTER 1NS;

      BEHAVIOR : PROCESS (N3, N4)
      BEGIN
        IF    (N4 = '1') THEN N5 <= '0';
        ELSIF (RISING_EDGE(N3) AND N2 = '1') THEN
          N5 <= TO_X01(N1);
        END IF;
        END PROCESS;
      
END model;
-- END BEHAVE IFDXI


-- BEGIN BEHAVE ILDI_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILDI_1 IS 
PORT(
    D, G : IN  std_logic;
    Q    : OUT std_logic := '1');
END ILDI_1;

ARCHITECTURE model OF ILDI_1 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic := '0';

    BEGIN
    N1 <= NOT ( D )   ;
    N2 <= NOT ( G )   ;
    N3 <= ( GSR ) ;
    Q  <= NOT ( N4 )  AFTER 1NS;

    BEHAVIOR : PROCESS (N1, N2, N3)
    BEGIN
    IF    (N3 = '1') THEN N4 <= '0';
    ELSIF (N2 = '1') THEN 
      N4 <= TO_X01(N1);
    END IF;
    END PROCESS;

END model;
-- END BEHAVE ILDI_1


-- BEGIN BEHAVE ILDX_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILDX_1 IS 
PORT(
    D, G, GE : IN  std_logic;
    Q        : OUT std_logic := '0');
END ILDX_1;

ARCHITECTURE model OF ILDX_1 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=     ( D )   ;
    N2 <=     ( GE )  ;
    N3 <= NOT ( G )   ;
    N4 <=     ( GSR ) ;

    N5 <=     ( N2 AND N3 );

    BEHAVIOR : PROCESS (N1, N4, N5)
    BEGIN
    IF    (N4 = '1') THEN Q <= '0'  AFTER 1NS;
    ELSIF (N5 = '1') THEN 
      Q <= TO_X01( N1 ) AFTER 1NS;
    END IF;
    END PROCESS;
END model;
-- END BEHAVE ILDX_1


-- BEGIN BEHAVE ILDXI_1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY ILDXI_1 IS 
PORT(
    D, G, GE : IN  std_logic;
    Q        : OUT std_logic := '0');
END ILDXI_1;

ARCHITECTURE model OF ILDXI_1 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=     ( D )   ;
    N2 <=     ( GE )  ;
    N3 <= NOT ( G )   ;
    N4 <=     ( GSR ) ;

    N5 <=     ( N2 AND N3 );

    BEHAVIOR : PROCESS (N1, N4, N5)
    BEGIN
    IF    (N4 = '1') THEN Q <= '1' AFTER 1NS;
    ELSIF (N5 = '1') THEN 
      Q <= TO_X01( N1 ) AFTER 1NS;
    END IF;
    END PROCESS;
END model;
-- END BEHAVE ILDXI_1


-- BEGIN BEHAVE OBUF 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

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
USE work.X4KEX_pack.ALL;

ENTITY OBUFT IS
PORT(
    T, I : IN  std_logic;
    O    : OUT std_logic
);
END OBUFT;

ARCHITECTURE model OF OBUFT IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( T )   ;
    N3 <= ( I )   ;
    N4 <= ( N1 OR N2 );

    PROCESS (N3, N4)
    BEGIN
      IF (N4 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= TO_X01(N3) AFTER 1NS;
      END IF;
    END PROCESS;

END model;
-- END BEHAVE OBUFT


-- BEGIN BEHAVE OFDX 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY OFDX IS
PORT(
    D, C, CE : IN  std_logic := '0';
    Q        : OUT std_logic := '0');
END OFDX;

ARCHITECTURE model OF OFDX IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

	 BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( D )   ;
    N3 <= ( CE )  ;
    N4 <= ( C )   ;
    N5 <= ( GSR ) ;

    PROCESS (N1, N6)
    BEGIN
      IF (N1 = '1') THEN Q <= 'Z' AFTER 1NS;
      ELSE Q <= ( N6 ) AFTER 1NS;
      END IF;
    END PROCESS;

    BEHAVIOR : PROCESS (N4, N5)
    BEGIN
      IF    (N5 = '1') THEN N6 <= '0';
      ELSIF (RISING_EDGE(N4) AND N3 = '1') THEN
        N6 <= to_X01( N2 );
      END IF;
    
    END PROCESS;
    
    END model;
-- END BEHAVE OFDX 


-- BEGIN BEHAVE OFDXI 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY OFDXI IS
PORT(
    D, C, CE : IN  std_logic := '0';
    Q        : OUT std_logic := '0');
END OFDXI;

ARCHITECTURE model OF OFDXI IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;

    BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( D )   ;
    N3 <= ( CE )  ;
    N4 <= ( C )   ;
    N5 <= ( GSR ) ;

    PROCESS (N1, N6)
    BEGIN
      IF (N1 = '1') THEN Q <= 'Z' AFTER 1NS;
      ELSE Q <= ( N6 ) AFTER 1NS;
      END IF;
    END PROCESS;

    BEHAVIOR : PROCESS (N4, N5)
    BEGIN
      IF    (N5 = '1') THEN N6 <= '1';
      ELSIF (RISING_EDGE(N4) AND N3 = '1') THEN
        N6 <= to_X01( N2 );
      END IF;
    
    END PROCESS;
    
    END model;
-- END BEHAVE OFDXI 


-- BEGIN BEHAVE OFDT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY OFDT IS 
PORT(
    T, D, C : IN  std_logic := '0';
    O       : OUT std_logic := 'Z'
);
 END OFDT;

ARCHITECTURE model OF OFDT IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;
    SIGNAL ZERO :  std_logic := '0';

    BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( T )   ;
    N3 <= ( N1 OR N2 );   
    N4 <= ( D )   ;
    N5 <= ( C )   ;
    N6 <= ( GSR ) ;
    O  <= ( N8 )  AFTER 1NS;

    PROCESS (N3, N7)
    BEGIN
      IF (N3 = '1') THEN N8 <= 'Z';
      ELSE N8 <= TO_X01(N7);
      END IF;
    END PROCESS;

    BEHAVIOR : PROCESS (N5, N6)
    BEGIN
      IF    (N6 = '1') THEN N7 <= '0';
      ELSIF (N5 = '1') AND N5'EVENT THEN
        N7 <= N4;
      END IF;
    
    END PROCESS;
    
END model;
-- END BEHAVE OFDT


-- BEGIN BEHAVE OFDTI
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY OFDTI IS 
PORT(
    T, D, C : IN  std_logic := '0';
    O       : OUT std_logic := 'Z'
);
END OFDTI;

ARCHITECTURE model OF OFDTI IS

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
    N1 <=     ( GTS ) ;
    N2 <=     ( T )   ;
    N3 <=     ( N1 OR N2 );
    N4 <= NOT ( D )   ;
    N5 <=     ( C )   ;
    N6 <=     ( GSR ) ;
    N8 <= NOT ( N7 );
    O  <=     ( N9 ) AFTER 1NS;

    PROCESS (N3, N8)
    BEGIN
      IF (N3 = '1') THEN N9 <= 'Z';
      ELSE N9 <= TO_X01(N8);
      END IF;
    END PROCESS;

    BEHAVIOR : PROCESS (N5, N6)
    BEGIN
      IF    (N6 = '1') THEN N7 <= '0';
      ELSIF (N5 = '1') AND N5'EVENT THEN
        N7 <= N4;
      END IF;
    
    END PROCESS;

END model;
-- END BEHAVE OFDTI


-- BEGIN BEHAVE OFDTX
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY OFDTX IS 
PORT(
    T, D, C, CE : IN  std_logic := '0';
    O           : OUT std_logic := 'Z');
 END OFDTX;

ARCHITECTURE model OF OFDTX IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( T )   ;
    N3 <= ( N1 OR N2 );   
    N4 <= ( D )   ;
    N5 <= ( C )   ;
    N6 <= ( GSR ) ;
    N7 <= ( CE )  ;

    PROCESS (N3, N8)
    BEGIN
      IF (N3 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= ( N8 ) AFTER 1NS;
      END IF;
    END PROCESS;

    BEHAVIOR : PROCESS (N5, N6)
    BEGIN
      IF    (N6 = '1') THEN N8 <= '0';
      ELSIF (RISING_EDGE(N5) AND N7 = '1')THEN
        N8 <= to_x01( N4 );
      END IF;
    
    END PROCESS;
    
END model;
-- END BEHAVE OFDTX


-- BEGIN BEHAVE OFDTXI
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY OFDTXI IS 
PORT(
    T, D, C, CE : IN  std_logic := '0';
    O           : OUT std_logic := 'Z');
 END OFDTXI;

ARCHITECTURE model OF OFDTXI IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= ( GTS ) ;
    N2 <= ( T )   ;
    N3 <= ( N1 OR N2 );   
    N4 <= ( D )   ;
    N5 <= ( C )   ;
    N6 <= ( GSR ) ;
    N7 <= ( CE )  ;

    PROCESS (N3, N8)
    BEGIN
      IF (N3 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= ( N8 ) AFTER 1NS;
      END IF;
    END PROCESS;

    BEHAVIOR : PROCESS (N5, N6)
    BEGIN
      IF    (N6 = '1') THEN N8 <= '1';
      ELSIF (RISING_EDGE(N5) AND N7 = '1') THEN
       N8 <= to_x01( N4 );
      END IF;
    
    END PROCESS;
    
END model;
-- END BEHAVE OFDTXI


-- BEGIN BEHAVE FDCE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY FDCE IS 
PORT(
    C, D : IN  std_logic;
    CLR  : IN  std_logic := '0';
    CE   : IN  std_logic := '1';
    Q    : OUT std_logic := '0'
);
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
   N7 <=     ( GSR ) ;

   N8 <=     ( N6 OR N7 );

   Q  <=     ( N9 )  AFTER 1NS;

   BEHAVIOR : PROCESS (N2, N5, N8)
   BEGIN
     IF    (N8 = '1') THEN N9 <= '0';
     ELSIF (N3 = '1') AND RISING_EDGE(N2) THEN
       N9 <= TO_X01(N1);
     END IF;
   
   END PROCESS;

END model;
-- END BEHAVE FDCE


-- BEGIN BEHAVE FDPE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X4KEX_pack.ALL;

ENTITY FDPE IS 
PORT(
    D, C : IN  std_logic;
    PRE  : IN  std_logic := '0';
    CE   : IN  std_logic := '1';
    Q    : OUT std_logic := '1');
END FDPE;

ARCHITECTURE model OF FDPE IS

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
    N1 <= ( GSR ) ;
    N2 <= ( PRE ) ;

    N3 <= ( N1 OR N2 );

    N4 <= ( D )   ;
    N5 <= ( C )   ;
    N6 <= ( CE )  ;
    N8 <= ( N5 AND N6 );

    Q  <= ( N9 )  AFTER 1NS;

   BEHAVIOR : PROCESS (N5, N8, N3)
     BEGIN
     IF    (N3 = '1') THEN N9 <= '1';
     ELSIF (N6 = '1' AND RISING_EDGE(N5)) THEN
       N9 <= TO_X01(N4);
     END IF;
   
   END PROCESS;

END model;
-- END BEHAVE FDPE


-- BEGIN BEHAVE RAM16X1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RAM16X1 IS
  GENERIC (
  INIT    : std_logic_vector(15 downto 0) := x"0000");
  PORT (
  WE, D, A0, A1, A2, A3 : IN  std_logic;
  O  : OUT  std_logic := '0' );

END RAM16X1;

------------------------------------------------------------------

ARCHITECTURE model OF RAM16X1 IS

  SIGNAL A_ipd  : std_logic_vector(3 downto 0);
  SIGNAL O_ilo  : std_logic;
  SIGNAL WE_ipd : std_logic;
  SIGNAL D_ipd  : std_logic;

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;
    
    WE_ipd <= WE ;
    D_ipd  <= D ;
    
    O      <= O_ilo AFTER 1NS;
    

    BEHAVIOR : PROCESS (WE_ipd, A_ipd, D_ipd)
    VARIABLE data_write : std_logic;
  	VARIABLE RAM : std_logic_vector(15 downto 0) := INIT;

    BEGIN

      IF (WE_ipd = '1') THEN data_write := TO_X01(D_ipd);
    
          IF      (A_ipd = "0000") THEN RAM(0) := data_write;
            ELSIF (A_ipd = "0001") THEN RAM(1) := data_write;
            ELSIF (A_ipd = "0010") THEN RAM(2) := data_write;
            ELSIF (A_ipd = "0011") THEN RAM(3) := data_write;
            ELSIF (A_ipd = "0100") THEN RAM(4) := data_write;
            ELSIF (A_ipd = "0101") THEN RAM(5) := data_write;
            ELSIF (A_ipd = "0110") THEN RAM(6) := data_write;
            ELSIF (A_ipd = "0111") THEN RAM(7) := data_write;
            ELSIF (A_ipd = "1000") THEN RAM(8) := data_write;
            ELSIF (A_ipd = "1001") THEN RAM(9) := data_write;
            ELSIF (A_ipd = "1010") THEN RAM(10) := data_write;
            ELSIF (A_ipd = "1011") THEN RAM(11) := data_write;
            ELSIF (A_ipd = "1100") THEN RAM(12) := data_write;
            ELSIF (A_ipd = "1101") THEN RAM(13) := data_write;
            ELSIF (A_ipd = "1110") THEN RAM(14) := data_write;
            ELSIF (A_ipd = "1111") THEN RAM(15) := data_write;
          END IF;
      END IF;
    
      IF      (A_ipd = "0000") THEN O_ilo <= RAM(0); 
        ELSIF (A_ipd = "0001") THEN O_ilo <= RAM(1); 
        ELSIF (A_ipd = "0010") THEN O_ilo <= RAM(2); 
        ELSIF (A_ipd = "0011") THEN O_ilo <= RAM(3); 
        ELSIF (A_ipd = "0100") THEN O_ilo <= RAM(4); 
        ELSIF (A_ipd = "0101") THEN O_ilo <= RAM(5); 
        ELSIF (A_ipd = "0110") THEN O_ilo <= RAM(6); 
        ELSIF (A_ipd = "0111") THEN O_ilo <= RAM(7); 
        ELSIF (A_ipd = "1000") THEN O_ilo <= RAM(8); 
        ELSIF (A_ipd = "1001") THEN O_ilo <= RAM(9); 
        ELSIF (A_ipd = "1010") THEN O_ilo <= RAM(10);
        ELSIF (A_ipd = "1011") THEN O_ilo <= RAM(11);
        ELSIF (A_ipd = "1100") THEN O_ilo <= RAM(12);
        ELSIF (A_ipd = "1101") THEN O_ilo <= RAM(13);
        ELSIF (A_ipd = "1110") THEN O_ilo <= RAM(14);
        ELSIF (A_ipd = "1111") THEN O_ilo <= RAM(15);
      END IF;

   END PROCESS;
   	
END model;

-- END BEHAVE RAM16X1


-- BEGIN BEHAVE RAM16X1S

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RAM16X1S IS
  GENERIC (
  INIT    : std_logic_vector(15 downto 0) := x"0000");
  PORT (
  WCLK, WE, D, A0, A1, A2, A3 : IN  std_logic;
  O                           : OUT  std_logic := '0' );

END RAM16X1S;

------------------------------------------------------------------

ARCHITECTURE model OF RAM16X1S IS

  SIGNAL A_ipd    : std_logic_vector(3 downto 0);
  SIGNAL O_ilo    : std_logic := '0';
  SIGNAL WE_ipd   : std_logic;
  SIGNAL D_ipd    : std_logic;
  SIGNAL WCLK_ipd : std_logic;

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;
    
    WE_ipd   <= WE ;
    D_ipd    <= D ;
    WCLK_ipd <= WCLK ;

    O        <= O_ilo AFTER 1NS;
    
    BEHAVIOR : PROCESS (WE_ipd, WCLK_ipd, A_ipd, D_ipd)
    VARIABLE data_write : std_logic := '0';
    VARIABLE RAM : std_logic_vector(15 downto 0) := INIT;

    BEGIN

      IF ((WE_ipd = '1')  AND (WCLK_ipd = '1') AND WCLK_ipd'EVENT) THEN data_write := to_x01(D_ipd);
	    IF      (A_ipd = "0000") THEN RAM(0) := data_write;
            ELSIF (A_ipd = "0001") THEN RAM(1) := data_write;
            ELSIF (A_ipd = "0010") THEN RAM(2) := data_write;
            ELSIF (A_ipd = "0011") THEN RAM(3) := data_write;
            ELSIF (A_ipd = "0100") THEN RAM(4) := data_write;
            ELSIF (A_ipd = "0101") THEN RAM(5) := data_write;
            ELSIF (A_ipd = "0110") THEN RAM(6) := data_write;
            ELSIF (A_ipd = "0111") THEN RAM(7) := data_write;
            ELSIF (A_ipd = "1000") THEN RAM(8) := data_write;
            ELSIF (A_ipd = "1001") THEN RAM(9) := data_write;
            ELSIF (A_ipd = "1010") THEN RAM(10) := data_write;
            ELSIF (A_ipd = "1011") THEN RAM(11) := data_write;
            ELSIF (A_ipd = "1100") THEN RAM(12) := data_write;
            ELSIF (A_ipd = "1101") THEN RAM(13) := data_write;
            ELSIF (A_ipd = "1110") THEN RAM(14) := data_write;
            ELSIF (A_ipd = "1111") THEN RAM(15) := data_write;
          END IF;						    
      END IF;
    
      IF      (A_ipd = "0000") THEN O_ilo <= RAM(0); 
        ELSIF (A_ipd = "0001") THEN O_ilo <= RAM(1); 
        ELSIF (A_ipd = "0010") THEN O_ilo <= RAM(2); 
        ELSIF (A_ipd = "0011") THEN O_ilo <= RAM(3); 
        ELSIF (A_ipd = "0100") THEN O_ilo <= RAM(4); 
        ELSIF (A_ipd = "0101") THEN O_ilo <= RAM(5); 
        ELSIF (A_ipd = "0110") THEN O_ilo <= RAM(6); 
        ELSIF (A_ipd = "0111") THEN O_ilo <= RAM(7); 
        ELSIF (A_ipd = "1000") THEN O_ilo <= RAM(8); 
        ELSIF (A_ipd = "1001") THEN O_ilo <= RAM(9); 
        ELSIF (A_ipd = "1010") THEN O_ilo <= RAM(10);
        ELSIF (A_ipd = "1011") THEN O_ilo <= RAM(11);
        ELSIF (A_ipd = "1100") THEN O_ilo <= RAM(12);
        ELSIF (A_ipd = "1101") THEN O_ilo <= RAM(13);
        ELSIF (A_ipd = "1110") THEN O_ilo <= RAM(14);
        ELSIF (A_ipd = "1111") THEN O_ilo <= RAM(15);
      END IF;

   END PROCESS;
    	
END model;

-- END BEHAVE RAM16X1S


-- BEGIN BEHAVE RAM16X1D

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RAM16X1D IS
  GENERIC (
  INIT    : std_logic_vector(15 downto 0) := x"0000");
  PORT (
  WCLK, WE, D, A0, A1, A2, A3 : IN  std_logic;
  DPRA0, DPRA1, DPRA2, DPRA3  : IN  std_logic;
  SPO, DPO                    : OUT  std_logic := '0');

END RAM16X1D;

------------------------------------------------------------------

ARCHITECTURE model OF RAM16X1D IS

  SIGNAL A_ipd    : std_logic_vector(3 downto 0);
  SIGNAL DPRA_ipd : std_logic_vector(3 downto 0);
  SIGNAL DPO_ilo  : std_logic;
  SIGNAL SPO_ilo  : std_logic;
  SIGNAL WE_ipd   : std_logic;
  SIGNAL D_ipd    : std_logic;
  SIGNAL WCLK_ipd : std_logic;

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;
    
    DPRA_ipd(0) <= DPRA0 ;
    DPRA_ipd(1) <= DPRA1 ;
    DPRA_ipd(2) <= DPRA2 ;
    DPRA_ipd(3) <= DPRA3 ;
 
    WE_ipd   <= WE ;
    D_ipd    <= D ;
    WCLK_ipd <= WCLK ;

    DPO      <= DPO_ilo AFTER 1NS;
    SPO      <= SPO_ilo AFTER 1NS;

    READ_WRITE_BEHAVIOR : PROCESS (WCLK_ipd, A_ipd, WE_ipd, D_ipd, DPRA_ipd)
    VARIABLE data_write : std_logic;
    VARIABLE RAM : std_logic_vector(15 downto 0) := INIT;

    BEGIN

      IF (WE_ipd = '1') AND (WCLK_ipd = '1') AND WCLK_ipd'EVENT THEN data_write := TO_X01(D_ipd);
    	    IF      (A_ipd = "0000") THEN RAM(0) := data_write;
            ELSIF (A_ipd = "0001") THEN RAM(1) := data_write;
            ELSIF (A_ipd = "0010") THEN RAM(2) := data_write;
            ELSIF (A_ipd = "0011") THEN RAM(3) := data_write;
            ELSIF (A_ipd = "0100") THEN RAM(4) := data_write;
            ELSIF (A_ipd = "0101") THEN RAM(5) := data_write;
            ELSIF (A_ipd = "0110") THEN RAM(6) := data_write;
            ELSIF (A_ipd = "0111") THEN RAM(7) := data_write;
            ELSIF (A_ipd = "1000") THEN RAM(8) := data_write;
            ELSIF (A_ipd = "1001") THEN RAM(9) := data_write;
            ELSIF (A_ipd = "1010") THEN RAM(10) := data_write;
            ELSIF (A_ipd = "1011") THEN RAM(11) := data_write;
            ELSIF (A_ipd = "1100") THEN RAM(12) := data_write;
            ELSIF (A_ipd = "1101") THEN RAM(13) := data_write;
            ELSIF (A_ipd = "1110") THEN RAM(14) := data_write;
            ELSIF (A_ipd = "1111") THEN RAM(15) := data_write;
          END IF;
      END IF;
    
      IF      (A_ipd = "0000") THEN SPO_ilo <= RAM(0); 
        ELSIF (A_ipd = "0001") THEN SPO_ilo <= RAM(1); 
        ELSIF (A_ipd = "0010") THEN SPO_ilo <= RAM(2); 
        ELSIF (A_ipd = "0011") THEN SPO_ilo <= RAM(3); 
        ELSIF (A_ipd = "0100") THEN SPO_ilo <= RAM(4); 
        ELSIF (A_ipd = "0101") THEN SPO_ilo <= RAM(5); 
        ELSIF (A_ipd = "0110") THEN SPO_ilo <= RAM(6); 
        ELSIF (A_ipd = "0111") THEN SPO_ilo <= RAM(7); 
        ELSIF (A_ipd = "1000") THEN SPO_ilo <= RAM(8); 
        ELSIF (A_ipd = "1001") THEN SPO_ilo <= RAM(9); 
        ELSIF (A_ipd = "1010") THEN SPO_ilo <= RAM(10);
        ELSIF (A_ipd = "1011") THEN SPO_ilo <= RAM(11);
        ELSIF (A_ipd = "1100") THEN SPO_ilo <= RAM(12);
        ELSIF (A_ipd = "1101") THEN SPO_ilo <= RAM(13);
        ELSIF (A_ipd = "1110") THEN SPO_ilo <= RAM(14);
        ELSIF (A_ipd = "1111") THEN SPO_ilo <= RAM(15);
      END IF;

      IF      (DPRA_ipd = "0000") THEN DPO_ilo <= RAM(0); 
        ELSIF (DPRA_ipd = "0001") THEN DPO_ilo <= RAM(1); 
        ELSIF (DPRA_ipd = "0010") THEN DPO_ilo <= RAM(2); 
        ELSIF (DPRA_ipd = "0011") THEN DPO_ilo <= RAM(3); 
        ELSIF (DPRA_ipd = "0100") THEN DPO_ilo <= RAM(4); 
        ELSIF (DPRA_ipd = "0101") THEN DPO_ilo <= RAM(5); 
        ELSIF (DPRA_ipd = "0110") THEN DPO_ilo <= RAM(6); 
        ELSIF (DPRA_ipd = "0111") THEN DPO_ilo <= RAM(7); 
        ELSIF (DPRA_ipd = "1000") THEN DPO_ilo <= RAM(8); 
        ELSIF (DPRA_ipd = "1001") THEN DPO_ilo <= RAM(9); 
        ELSIF (DPRA_ipd = "1010") THEN DPO_ilo <= RAM(10);
        ELSIF (DPRA_ipd = "1011") THEN DPO_ilo <= RAM(11);
        ELSIF (DPRA_ipd = "1100") THEN DPO_ilo <= RAM(12);
        ELSIF (DPRA_ipd = "1101") THEN DPO_ilo <= RAM(13);
        ELSIF (DPRA_ipd = "1110") THEN DPO_ilo <= RAM(14);
        ELSIF (DPRA_ipd = "1111") THEN DPO_ilo <= RAM(15);
      END IF;

   END PROCESS;

END model;

-- END BEHAVE RAM16X1D


-- BEGIN BEHAVE RAM32X1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RAM32X1 IS
  GENERIC (
  INIT    : std_logic_vector(31 downto 0) := x"00000000");
  PORT (
  WE, D, A0, A1, A2, A3, A4 : IN  std_logic;
  O  : OUT  std_logic := '0' );

END RAM32X1;

ARCHITECTURE model OF RAM32X1 IS

  SIGNAL A_ipd  : std_logic_vector(4 downto 0);
  SIGNAL O_ilo  : std_logic;
  SIGNAL WE_ipd : std_logic;
  SIGNAL D_ipd  : std_logic;

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;
    A_ipd(4) <= A4 ;
    
    WE_ipd <= WE ;
    D_ipd  <= D ;
    
    O      <= O_ilo AFTER 1NS;
    

    BEHAVIOR : PROCESS (WE_ipd, A_ipd, D_ipd)
    VARIABLE data_write : std_logic;
  	VARIABLE RAM : std_logic_vector(31  downto 0) := INIT;

    BEGIN

        IF (WE_ipd = '1') THEN data_write := TO_X01(D_ipd);
    
          IF      (A_ipd = "00000") THEN RAM(0) := data_write;
            ELSIF (A_ipd = "00001") THEN RAM(1) := data_write;
            ELSIF (A_ipd = "00010") THEN RAM(2) := data_write;
            ELSIF (A_ipd = "00011") THEN RAM(3) := data_write;
            ELSIF (A_ipd = "00100") THEN RAM(4) := data_write;
            ELSIF (A_ipd = "00101") THEN RAM(5) := data_write;
            ELSIF (A_ipd = "00110") THEN RAM(6) := data_write;
            ELSIF (A_ipd = "00111") THEN RAM(7) := data_write;
            ELSIF (A_ipd = "01000") THEN RAM(8) := data_write;
            ELSIF (A_ipd = "01001") THEN RAM(9) := data_write;
            ELSIF (A_ipd = "01010") THEN RAM(10) := data_write;
            ELSIF (A_ipd = "01011") THEN RAM(11) := data_write;
            ELSIF (A_ipd = "01100") THEN RAM(12) := data_write;
            ELSIF (A_ipd = "01101") THEN RAM(13) := data_write;
            ELSIF (A_ipd = "01110") THEN RAM(14) := data_write;
            ELSIF (A_ipd = "01111") THEN RAM(15) := data_write;
            ELSIF (A_ipd = "10000") THEN RAM(16) := data_write;
            ELSIF (A_ipd = "10001") THEN RAM(17) := data_write;
            ELSIF (A_ipd = "10010") THEN RAM(18) := data_write;
            ELSIF (A_ipd = "10011") THEN RAM(19) := data_write;
            ELSIF (A_ipd = "10100") THEN RAM(20) := data_write;
            ELSIF (A_ipd = "10101") THEN RAM(21) := data_write;
            ELSIF (A_ipd = "10110") THEN RAM(22) := data_write;
            ELSIF (A_ipd = "10111") THEN RAM(23) := data_write;
            ELSIF (A_ipd = "11000") THEN RAM(24) := data_write;
            ELSIF (A_ipd = "11001") THEN RAM(25) := data_write;
            ELSIF (A_ipd = "11010") THEN RAM(26) := data_write;
            ELSIF (A_ipd = "11011") THEN RAM(27) := data_write;
            ELSIF (A_ipd = "11100") THEN RAM(28) := data_write;
            ELSIF (A_ipd = "11101") THEN RAM(29) := data_write;
            ELSIF (A_ipd = "11110") THEN RAM(30) := data_write;
            ELSIF (A_ipd = "11111") THEN RAM(31) := data_write;
          END IF;
        END IF;


      IF      (A_ipd = "00000") THEN O_ilo <= RAM(0); 
        ELSIF (A_ipd = "00001") THEN O_ilo <= RAM(1); 
        ELSIF (A_ipd = "00010") THEN O_ilo <= RAM(2); 
        ELSIF (A_ipd = "00011") THEN O_ilo <= RAM(3); 
        ELSIF (A_ipd = "00100") THEN O_ilo <= RAM(4); 
        ELSIF (A_ipd = "00101") THEN O_ilo <= RAM(5); 
        ELSIF (A_ipd = "00110") THEN O_ilo <= RAM(6); 
        ELSIF (A_ipd = "00111") THEN O_ilo <= RAM(7); 
        ELSIF (A_ipd = "01000") THEN O_ilo <= RAM(8); 
        ELSIF (A_ipd = "01001") THEN O_ilo <= RAM(9); 
        ELSIF (A_ipd = "01010") THEN O_ilo <= RAM(10);
        ELSIF (A_ipd = "01011") THEN O_ilo <= RAM(11);
        ELSIF (A_ipd = "01100") THEN O_ilo <= RAM(12);
        ELSIF (A_ipd = "01101") THEN O_ilo <= RAM(13);
        ELSIF (A_ipd = "01110") THEN O_ilo <= RAM(14);
        ELSIF (A_ipd = "01111") THEN O_ilo <= RAM(15);
        ELSIF (A_ipd = "10000") THEN O_ilo <= RAM(16);
        ELSIF (A_ipd = "10001") THEN O_ilo <= RAM(17);
        ELSIF (A_ipd = "10010") THEN O_ilo <= RAM(18);
        ELSIF (A_ipd = "10011") THEN O_ilo <= RAM(19);
        ELSIF (A_ipd = "10100") THEN O_ilo <= RAM(20);
        ELSIF (A_ipd = "10101") THEN O_ilo <= RAM(21);
        ELSIF (A_ipd = "10110") THEN O_ilo <= RAM(22);
        ELSIF (A_ipd = "10111") THEN O_ilo <= RAM(23);
        ELSIF (A_ipd = "11000") THEN O_ilo <= RAM(24);
        ELSIF (A_ipd = "11001") THEN O_ilo <= RAM(25);
        ELSIF (A_ipd = "11010") THEN O_ilo <= RAM(26);
        ELSIF (A_ipd = "11011") THEN O_ilo <= RAM(27);
        ELSIF (A_ipd = "11100") THEN O_ilo <= RAM(28);
        ELSIF (A_ipd = "11101") THEN O_ilo <= RAM(29);
        ELSIF (A_ipd = "11110") THEN O_ilo <= RAM(30);
        ELSIF (A_ipd = "11111") THEN O_ilo <= RAM(31);
      END IF;		  

   END PROCESS;
 
END model;

-- END BEHAVE RAM32X1


-- BEGIN BEHAVE RAM32X1S

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RAM32X1S IS
  GENERIC (
  INIT    : std_logic_vector(31 downto 0) := x"00000000");
  PORT (
  WCLK, WE, D, A0, A1, A2, A3, A4 : IN  std_logic;
  O  : OUT  std_logic := '0' );

END RAM32X1S;

ARCHITECTURE model OF RAM32X1S IS

  SIGNAL A_ipd    : std_logic_vector(4 downto 0);
  SIGNAL O_ilo    : std_logic;
  SIGNAL WE_ipd   : std_logic;
  SIGNAL D_ipd    : std_logic;
  SIGNAL WCLK_ipd : std_logic;
 

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;
    A_ipd(4) <= A4 ;
    
    WE_ipd   <= WE ;
    D_ipd    <= D ;
    WCLK_ipd <= WCLK ;

    O        <= O_ilo AFTER 1NS;

    BEHAVIOR : PROCESS (WE_ipd, WCLK_ipd, A_ipd, D_ipd)
    VARIABLE data_write : std_logic;  
    VARIABLE RAM : std_logic_vector(31  downto 0) := INIT;

    BEGIN

        IF (WE_ipd = '1') AND (WCLK_ipd = '1') AND WCLK_ipd'EVENT THEN data_write := TO_X01(D_ipd);
	     IF      (A_ipd = "00000") THEN RAM(0) := data_write;
            ELSIF (A_ipd = "00001") THEN RAM(1) := data_write;
            ELSIF (A_ipd = "00010") THEN RAM(2) := data_write;
            ELSIF (A_ipd = "00011") THEN RAM(3) := data_write;
            ELSIF (A_ipd = "00100") THEN RAM(4) := data_write;
            ELSIF (A_ipd = "00101") THEN RAM(5) := data_write;
            ELSIF (A_ipd = "00110") THEN RAM(6) := data_write;
            ELSIF (A_ipd = "00111") THEN RAM(7) := data_write;
            ELSIF (A_ipd = "01000") THEN RAM(8) := data_write;
            ELSIF (A_ipd = "01001") THEN RAM(9) := data_write;
            ELSIF (A_ipd = "01010") THEN RAM(10) := data_write;
            ELSIF (A_ipd = "01011") THEN RAM(11) := data_write;
            ELSIF (A_ipd = "01100") THEN RAM(12) := data_write;
            ELSIF (A_ipd = "01101") THEN RAM(13) := data_write;
            ELSIF (A_ipd = "01110") THEN RAM(14) := data_write;
            ELSIF (A_ipd = "01111") THEN RAM(15) := data_write;
            ELSIF (A_ipd = "10000") THEN RAM(16) := data_write;
            ELSIF (A_ipd = "10001") THEN RAM(17) := data_write;
            ELSIF (A_ipd = "10010") THEN RAM(18) := data_write;
            ELSIF (A_ipd = "10011") THEN RAM(19) := data_write;
            ELSIF (A_ipd = "10100") THEN RAM(20) := data_write;
            ELSIF (A_ipd = "10101") THEN RAM(21) := data_write;
            ELSIF (A_ipd = "10110") THEN RAM(22) := data_write;
            ELSIF (A_ipd = "10111") THEN RAM(23) := data_write;
            ELSIF (A_ipd = "11000") THEN RAM(24) := data_write;
            ELSIF (A_ipd = "11001") THEN RAM(25) := data_write;
            ELSIF (A_ipd = "11010") THEN RAM(26) := data_write;
            ELSIF (A_ipd = "11011") THEN RAM(27) := data_write;
            ELSIF (A_ipd = "11100") THEN RAM(28) := data_write;
            ELSIF (A_ipd = "11101") THEN RAM(29) := data_write;
            ELSIF (A_ipd = "11110") THEN RAM(30) := data_write;
            ELSIF (A_ipd = "11111") THEN RAM(31) := data_write;
          END IF;
        END IF;


      IF      (A_ipd = "00000") THEN O_ilo <= RAM(0); 
        ELSIF (A_ipd = "00001") THEN O_ilo <= RAM(1); 
        ELSIF (A_ipd = "00010") THEN O_ilo <= RAM(2); 
        ELSIF (A_ipd = "00011") THEN O_ilo <= RAM(3); 
        ELSIF (A_ipd = "00100") THEN O_ilo <= RAM(4); 
        ELSIF (A_ipd = "00101") THEN O_ilo <= RAM(5); 
        ELSIF (A_ipd = "00110") THEN O_ilo <= RAM(6); 
        ELSIF (A_ipd = "00111") THEN O_ilo <= RAM(7); 
        ELSIF (A_ipd = "01000") THEN O_ilo <= RAM(8); 
        ELSIF (A_ipd = "01001") THEN O_ilo <= RAM(9); 
        ELSIF (A_ipd = "01010") THEN O_ilo <= RAM(10);
        ELSIF (A_ipd = "01011") THEN O_ilo <= RAM(11);
        ELSIF (A_ipd = "01100") THEN O_ilo <= RAM(12);
        ELSIF (A_ipd = "01101") THEN O_ilo <= RAM(13);
        ELSIF (A_ipd = "01110") THEN O_ilo <= RAM(14);
        ELSIF (A_ipd = "01111") THEN O_ilo <= RAM(15);
        ELSIF (A_ipd = "10000") THEN O_ilo <= RAM(16);
        ELSIF (A_ipd = "10001") THEN O_ilo <= RAM(17);
        ELSIF (A_ipd = "10010") THEN O_ilo <= RAM(18);
        ELSIF (A_ipd = "10011") THEN O_ilo <= RAM(19);
        ELSIF (A_ipd = "10100") THEN O_ilo <= RAM(20);
        ELSIF (A_ipd = "10101") THEN O_ilo <= RAM(21);
        ELSIF (A_ipd = "10110") THEN O_ilo <= RAM(22);
        ELSIF (A_ipd = "10111") THEN O_ilo <= RAM(23);
        ELSIF (A_ipd = "11000") THEN O_ilo <= RAM(24);
        ELSIF (A_ipd = "11001") THEN O_ilo <= RAM(25);
        ELSIF (A_ipd = "11010") THEN O_ilo <= RAM(26);
        ELSIF (A_ipd = "11011") THEN O_ilo <= RAM(27);
        ELSIF (A_ipd = "11100") THEN O_ilo <= RAM(28);
        ELSIF (A_ipd = "11101") THEN O_ilo <= RAM(29);
        ELSIF (A_ipd = "11110") THEN O_ilo <= RAM(30);
        ELSIF (A_ipd = "11111") THEN O_ilo <= RAM(31);
      END IF;		  

   END PROCESS;
 
END model;

-- END BEHAVE RAM32X1S


-- BEGIN BEHAVE ROM16X1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ROM16X1 IS
  GENERIC (
  INIT    : std_logic_vector(15 downto 0) := x"0000");
  PORT (
  A0, A1, A2, A3 : IN  std_logic;
  O  : OUT  std_logic := '1'
  );

END ROM16X1;

ARCHITECTURE model OF ROM16X1 IS

  SIGNAL A_ipd         : std_logic_vector(3 downto 0);
  SIGNAL O_ilo         : std_logic;

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;

    O <= O_ilo AFTER 1NS;

    PROCESS (A_ipd)
    BEGIN
      IF      (A_ipd = "0000") THEN O_ilo <= INIT(0);
        ELSIF (A_ipd = "0001") THEN O_ilo <= INIT(1);
        ELSIF (A_ipd = "0010") THEN O_ilo <= INIT(2);
        ELSIF (A_ipd = "0011") THEN O_ilo <= INIT(3);
        ELSIF (A_ipd = "0100") THEN O_ilo <= INIT(4);
        ELSIF (A_ipd = "0101") THEN O_ilo <= INIT(5);
        ELSIF (A_ipd = "0110") THEN O_ilo <= INIT(6);
        ELSIF (A_ipd = "0111") THEN O_ilo <= INIT(7);
        ELSIF (A_ipd = "1000") THEN O_ilo <= INIT(8);
        ELSIF (A_ipd = "1001") THEN O_ilo <= INIT(9);
        ELSIF (A_ipd = "1010") THEN O_ilo <= INIT(10);
        ELSIF (A_ipd = "1011") THEN O_ilo <= INIT(11);
        ELSIF (A_ipd = "1100") THEN O_ilo <= INIT(12);
        ELSIF (A_ipd = "1101") THEN O_ilo <= INIT(13);
        ELSIF (A_ipd = "1110") THEN O_ilo <= INIT(14);
        ELSIF (A_ipd = "1111") THEN O_ilo <= INIT(15);
      END IF;

  END PROCESS;
	
END model;
	
-- END BEHAVE ROM16X1


-- BEGIN BEHAVE ROM32X1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ROM32X1 IS
  GENERIC (
  INIT    : std_logic_vector(31 downto 0) := x"00000000");
  PORT (
  A0, A1, A2, A3, A4 : IN  std_logic;
  O                  : OUT  std_logic := '1'
  );

END ROM32X1;

------------------------------------------------------------------

ARCHITECTURE model OF ROM32X1 IS

  SIGNAL A_ipd         : std_logic_vector(4 downto 0);
  SIGNAL O_ilo         : std_logic;

  BEGIN

    A_ipd(0) <= A0 ;
    A_ipd(1) <= A1 ;
    A_ipd(2) <= A2 ;
    A_ipd(3) <= A3 ;
    A_ipd(4) <= A4 ;

    O <= O_ilo AFTER 1NS;

    PROCESS (A_ipd)
    BEGIN
      IF      (A_ipd = "00000") THEN O_ilo <= INIT(0);
        ELSIF (A_ipd = "00001") THEN O_ilo <= INIT(1);
        ELSIF (A_ipd = "00010") THEN O_ilo <= INIT(2);
        ELSIF (A_ipd = "00011") THEN O_ilo <= INIT(3);
        ELSIF (A_ipd = "00100") THEN O_ilo <= INIT(4);
        ELSIF (A_ipd = "00101") THEN O_ilo <= INIT(5);
        ELSIF (A_ipd = "00110") THEN O_ilo <= INIT(6);
        ELSIF (A_ipd = "00111") THEN O_ilo <= INIT(7);
        ELSIF (A_ipd = "01000") THEN O_ilo <= INIT(8);
        ELSIF (A_ipd = "01001") THEN O_ilo <= INIT(9);
        ELSIF (A_ipd = "01010") THEN O_ilo <= INIT(10);
        ELSIF (A_ipd = "01011") THEN O_ilo <= INIT(11);
        ELSIF (A_ipd = "01100") THEN O_ilo <= INIT(12);
        ELSIF (A_ipd = "01101") THEN O_ilo <= INIT(13);
        ELSIF (A_ipd = "01110") THEN O_ilo <= INIT(14);
        ELSIF (A_ipd = "01111") THEN O_ilo <= INIT(15);

        ELSIF (A_ipd = "10000") THEN O_ilo <= INIT(16);
        ELSIF (A_ipd = "10001") THEN O_ilo <= INIT(17);
        ELSIF (A_ipd = "10010") THEN O_ilo <= INIT(18);
        ELSIF (A_ipd = "10011") THEN O_ilo <= INIT(19);
        ELSIF (A_ipd = "10100") THEN O_ilo <= INIT(20);
        ELSIF (A_ipd = "10101") THEN O_ilo <= INIT(21);
        ELSIF (A_ipd = "10110") THEN O_ilo <= INIT(22);
        ELSIF (A_ipd = "10111") THEN O_ilo <= INIT(23);
        ELSIF (A_ipd = "11000") THEN O_ilo <= INIT(24);
        ELSIF (A_ipd = "11001") THEN O_ilo <= INIT(25);
        ELSIF (A_ipd = "11010") THEN O_ilo <= INIT(26);
        ELSIF (A_ipd = "11011") THEN O_ilo <= INIT(27);
        ELSIF (A_ipd = "11100") THEN O_ilo <= INIT(28);
        ELSIF (A_ipd = "11101") THEN O_ilo <= INIT(29);
        ELSIF (A_ipd = "11110") THEN O_ilo <= INIT(30);
        ELSIF (A_ipd = "11111") THEN O_ilo <= INIT(31);
      END IF;		   
     END PROCESS;
	
END model;

-- END BEHAVE ROM32X1


-- BEGIN BEHAVE BUFT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFT IS 
PORT(
    T, I : IN  std_logic;
    O : OUT  std_logic
);
END BUFT;

ARCHITECTURE model OF BUFT IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= ( T )  ;
    N2 <= ( I )  ;

    PROCESS (N1, N2)
    BEGIN
      IF (N1 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= TO_X01(N2) AFTER 1NS;
      END IF;
    END PROCESS;

END model;
-- END BEHAVE BUFT


-- BEGIN BEHAVE WAND1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY WAND1 IS 
PORT(
I : IN  std_logic;
O : OUT std_logic);
END WAND1;

ARCHITECTURE model OF WAND1 IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= ( I )  ;

    P1: PROCESS (N1)
    BEGIN
    	if (N1='1' OR N1='H') THEN O <= 'Z' AFTER 1NS;
   	else O <= TO_X01(N1) AFTER 1NS;
      END IF;
    END PROCESS P1;

END model;
-- END BEHAVE WAND1


-- BEGIN BEHAVE WOR2AND
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY WOR2AND IS 
PORT(
I0, I1 : IN  std_logic;
O      : OUT  std_logic);
END WOR2AND;

ARCHITECTURE model OF WOR2AND IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <=  ( I1 ) ;
    N2 <=  ( I0 ) ;
    N3 <=  ( N1 OR N2 );

    PROCESS (N2, N3)
    BEGIN
      IF (N3 = '1') THEN O <= 'Z' AFTER 1NS;
      ELSE O <= TO_X01(N2) AFTER 1NS;
      END IF;
    END PROCESS;

END model;
-- END BEHAVE WOR2AND


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
    O <=  TO_X01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUFG


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
    O <=  TO_X01 ( N1 ) AFTER 1NS;
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
    O <=  TO_X01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUFGS


-- BEGIN BEHAVE OSC4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OSC4 IS PORT(
F8M,   
F500K, 
F16K,  
F490,  
F15 : OUT  std_logic := '0');
END OSC4;

ARCHITECTURE model OF OSC4 IS
BEGIN

 PROCESS
 VARIABLE sig_F8M : std_logic :='0';
 BEGIN
 wait for 62500 ps;
 sig_F8M := NOT sig_F8M;
 F8M <= sig_F8M AFTER 1NS;
 END PROCESS;

 PROCESS
 VARIABLE sig_F500K : std_logic :='0';
 BEGIN
 wait for 1000 ns;
 sig_F500K := NOT sig_F500K;
 F500K <= sig_F500K AFTER 1NS;
 END PROCESS;

 PROCESS
 VARIABLE sig_F16K : std_logic :='0';
 BEGIN
 wait for 31250 ns;
 sig_F16K := NOT sig_F16K;
 F16K <= sig_F16K AFTER 1NS;
 END PROCESS;

 PROCESS
 VARIABLE sig_F490 : std_logic :='0';
 BEGIN
 wait for 1020400 ns;
 sig_F490 := NOT sig_F490;
 F490 <= sig_F490 AFTER 1NS;
 END PROCESS;

 PROCESS
 VARIABLE sig_F15 : std_logic :='0';
 BEGIN
 wait for 33333333 ns;
 sig_F15 := NOT sig_F15;
 F15 <= sig_F15 AFTER 1NS;
 END PROCESS;
END model;
-- END BEHAVE OSC4 


-- BEGIN BEHAVE BUF
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUF IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END BUF;

ARCHITECTURE model OF BUF IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  TO_X01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUF


-- BEGIN BEHAVE CY4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CY4 IS
PORT(
A0, A1, 
B0, B1,
ADD,
C0, C1, C2, C3, C4, C5, C6, C7, 
CIN   : IN    std_logic := '0';
COUT  : OUT   std_logic;
COUT0 : OUT   std_logic);
END CY4;

ARCHITECTURE model OF CY4 IS

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
    SIGNAL N7 : std_logic := '0';
    SIGNAL N8 : std_logic := '0';

    BEGIN
    N1 <=  ( A0 )    ;
    N2 <=  ( B0 )    ;
    N3 <=  ( A1 )    ;
    N4 <= NOT ( B1 ) ;
    N5 <=  ( ADD )   ;
    N6 <=  ( CIN )   ;

    L7 <= NOT ( C0 );
    L8 <=  ( C1 AND L7 );
    L9 <=  ( N5 AND C0 );
    L10 <= NOT ( N5 );
    L11 <= NOT ( C7 );
    L12 <= NOT ( N2 );

    L13 <=  ( L11 OR N4 );
    L14 <=  ( L8 OR L9 );
    L15 <=  ( L11 OR L12 );

    L16 <=  ( L13 XOR L14 );
    L17 <=  ( L14 XOR L15 );
    L18 <=  ( N3 XOR L16 );

    L19 <= NOT ( C5 );
    L20 <= NOT ( C4 );

    L21 <=  ( L17 XOR N1 );
    L22 <= NOT ( C6 );
    L23 <=  ( L18 AND C6 );
    L24 <= NOT ( L22 OR L23 );

    L25 <=  ( L19 AND L20 AND C7 );
    L26 <=  ( C5 AND L20 AND L10 );
    L27 <=  ( C5 AND C4 AND N1 );

    L28 <= NOT ( C3 );

    L30 <= NOT ( L24 );
    L31 <=  ( L25 OR L26 OR L27 );
    L32 <=  ( C2 AND L28 );
    L33 <=  ( L21 AND C3 );
    L34 <=  ( L32 OR L33 );
    L35 <= NOT ( L34 );


    N8 <= (N3 AND L24)
       OR (N7 AND L30);

    N7 <= (L31 AND L35)
       OR (N6  AND L34);

    COUT <=  ( N8 )  AFTER 1NS;
    COUT0 <=  ( N7 ) AFTER 1NS;
END model;

-- END BEHAVE CY4


-- BEGIN BEHAVE  cy4_01 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
				
ENTITY cy4_01 IS
   PORT(
      C7 : OUT    std_logic := '1';
      C6 : OUT    std_logic := '0';
      C5 : OUT    std_logic := '1';
      C4 : OUT    std_logic := '1';
      C3 : OUT    std_logic := '1';
      C2 : OUT    std_logic := '0';
      C1 : OUT    std_logic := '1';
      C0 : OUT    std_logic := '0');
END cy4_01;

ARCHITECTURE cy4_01_V OF cy4_01 IS
BEGIN
END cy4_01_V;
-- END BEHAVE  cy4_01


-- BEGIN BEHAVE  cy4_02 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY cy4_02 IS
PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_02;

ARCHITECTURE cy4_02_V OF cy4_02 IS
BEGIN
END cy4_02_V;
-- END BEHAVE cy4_02_V


-- BEGIN BEHAVE  cy4_03 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_03 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_03;

ARCHITECTURE cy4_03_V OF cy4_03 IS
BEGIN
END cy4_03_V;
-- END BEHAVE cy4_03_V


-- BEGIN BEHAVE  cy4_04
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY cy4_04 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_04;

-- ARCHITECTURE body --
ARCHITECTURE cy4_04_V OF cy4_04 IS
BEGIN
END cy4_04_V;


-- BEGIN BEHAVE  cy4_05 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY cy4_05 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_05;

ARCHITECTURE cy4_05_V OF cy4_05 IS
BEGIN
END cy4_05_V;
-- END BEHAVE  cy4_05 -----


-- BEGIN BEHAVE  cy4_06 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_06 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_06;

-- ARCHITECTURE body --
ARCHITECTURE cy4_06_V OF cy4_06 IS
BEGIN
END cy4_06_V;
-- END BEHAVE  cy4_06 -----


-- BEGIN BEHAVE  cy4_07 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_07 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_07;

-- ARCHITECTURE body --
ARCHITECTURE cy4_07_V OF cy4_07 IS
BEGIN
END cy4_07_V;
-- END BEHAVE  cy4_07 -----


-- BEGIN BEHAVE  cy4_08 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_08 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_08;

-- ARCHITECTURE body --
ARCHITECTURE cy4_08_V OF cy4_08 IS
BEGIN
END cy4_08_V;
-- END BEHAVE  cy4_08 -----


-- BEGIN BEHAVE  cy4_09 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_09 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_09;

-- ARCHITECTURE body --
ARCHITECTURE cy4_09_V OF cy4_09 IS
BEGIN
END cy4_09_V;
-- END BEHAVE  cy4_09 -----


-- BEGIN BEHAVE  cy4_10 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_10 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_10;

-- ARCHITECTURE body --
ARCHITECTURE cy4_10_V OF cy4_10 IS
BEGIN
END cy4_10_V;
-- END BEHAVE  cy4_10 -----


-- BEGIN BEHAVE  cy4_11 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_11 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_11;

-- ARCHITECTURE body --
ARCHITECTURE cy4_11_V OF cy4_11 IS
BEGIN
END cy4_11_V;
-- END BEHAVE  cy4_11 -----


-- BEGIN BEHAVE  cy4_12 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_12 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_12;

-- ARCHITECTURE body --
ARCHITECTURE cy4_12_V OF cy4_12 IS
BEGIN
END cy4_12_V;
-- END BEHAVE  cy4_12 -----


-- BEGIN BEHAVE  cy4_13 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_13 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_13;

-- ARCHITECTURE body --
ARCHITECTURE cy4_13_V OF cy4_13 IS
BEGIN
END cy4_13_V;
-- END BEHAVE  cy4_13 -----


-- BEGIN BEHAVE  cy4_14 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_14 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_14;

-- ARCHITECTURE body --
ARCHITECTURE cy4_14_V OF cy4_14 IS
BEGIN
END cy4_14_V;
-- END BEHAVE  cy4_14 -----


-- BEGIN BEHAVE  cy4_15 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_15 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_15;

-- ARCHITECTURE body --
ARCHITECTURE cy4_15_V OF cy4_15 IS
BEGIN
END cy4_15_V;
-- END BEHAVE  cy4_15 -----


-- BEGIN BEHAVE  cy4_16 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_16 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_16;

-- ARCHITECTURE body --
ARCHITECTURE cy4_16_V OF cy4_16 IS
BEGIN
END cy4_16_V;
-- END BEHAVE  cy4_16 -----


-- BEGIN BEHAVE  cy4_17 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_17 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_17;

-- ARCHITECTURE body --
ARCHITECTURE cy4_17_V OF cy4_17 IS
BEGIN
END cy4_17_V;
-- END BEHAVE  cy4_17 -----


-- BEGIN BEHAVE  cy4_18 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_18 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_18;

-- ARCHITECTURE body --
ARCHITECTURE cy4_18_V OF cy4_18 IS
BEGIN
END cy4_18_V;
-- END BEHAVE  cy4_18 -----


-- BEGIN BEHAVE  cy4_19 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_19 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_19;

-- ARCHITECTURE body --
ARCHITECTURE cy4_19_V OF cy4_19 IS
BEGIN
END cy4_19_V;
-- END BEHAVE  cy4_19 -----


-- BEGIN BEHAVE  cy4_20 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_20 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_20;

-- ARCHITECTURE body --
ARCHITECTURE cy4_20_V OF cy4_20 IS
BEGIN
END cy4_20_V;
-- END BEHAVE  cy4_20 -----


-- BEGIN BEHAVE  cy4_21 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_21 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_21;

-- ARCHITECTURE body --
ARCHITECTURE cy4_21_V OF cy4_21 IS
BEGIN
END cy4_21_V;
-- END BEHAVE  cy4_21 -----


-- BEGIN BEHAVE  cy4_22 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_22 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_22;

-- ARCHITECTURE body --
ARCHITECTURE cy4_22_V OF cy4_22 IS
BEGIN
END cy4_22_V;
-- END BEHAVE  cy4_22 -----


-- BEGIN BEHAVE  cy4_23 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_23 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '1';
      C0                             :	out   std_logic := '0');
END cy4_23;

-- ARCHITECTURE body --
ARCHITECTURE cy4_23_V OF cy4_23 IS
BEGIN
END cy4_23_V;
-- END BEHAVE  cy4_23 -----


-- BEGIN BEHAVE  cy4_24 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_24 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_24;

-- ARCHITECTURE body --
ARCHITECTURE cy4_24_V OF cy4_24 IS
BEGIN
END cy4_24_V;
-- END BEHAVE  cy4_24 -----


-- BEGIN BEHAVE  cy4_25 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_25 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_25;

-- ARCHITECTURE body --
ARCHITECTURE cy4_25_V OF cy4_25 IS
BEGIN
END cy4_25_V;
-- END BEHAVE  cy4_25 -----


-- BEGIN BEHAVE  cy4_26 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_26 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_26;

-- ARCHITECTURE body --
ARCHITECTURE cy4_26_V OF cy4_26 IS
BEGIN
END cy4_26_V;
-- END BEHAVE  cy4_26 -----


-- BEGIN BEHAVE  cy4_27 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_27 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_27;

-- ARCHITECTURE body --
ARCHITECTURE cy4_27_V OF cy4_27 IS
BEGIN
END cy4_27_V;
-- END BEHAVE  cy4_27 -----


-- BEGIN BEHAVE  cy4_28 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_28 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_28;

-- ARCHITECTURE body --
ARCHITECTURE cy4_28_V OF cy4_28 IS
BEGIN
END cy4_28_V;
-- END BEHAVE  cy4_28 -----


-- BEGIN BEHAVE  cy4_29 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_29 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_29;

-- ARCHITECTURE body --
ARCHITECTURE cy4_29_V OF cy4_29 IS
BEGIN
END cy4_29_V;
-- END BEHAVE  cy4_29 -----


-- BEGIN BEHAVE  cy4_30 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_30 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_30;

-- ARCHITECTURE body --
ARCHITECTURE cy4_30_V OF cy4_30 IS
BEGIN
END cy4_30_V;
-- END BEHAVE  cy4_30 -----


-- BEGIN BEHAVE  cy4_31 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_31 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_31;

-- ARCHITECTURE body --
ARCHITECTURE cy4_31_V OF cy4_31 IS
BEGIN
END cy4_31_V;
-- END BEHAVE  cy4_31 -----


-- BEGIN BEHAVE  cy4_32 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_32 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '1';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_32;

-- ARCHITECTURE body --
ARCHITECTURE cy4_32_V OF cy4_32 IS
BEGIN
END cy4_32_V;
-- END BEHAVE  cy4_32 -----


-- BEGIN BEHAVE  cy4_33 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_33 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_33;

-- ARCHITECTURE body --
ARCHITECTURE cy4_33_V OF cy4_33 IS
BEGIN
END cy4_33_V;
-- END BEHAVE  cy4_33 -----


-- BEGIN BEHAVE  cy4_34 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_34 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_34;

-- ARCHITECTURE body --
ARCHITECTURE cy4_34_V OF cy4_34 IS
BEGIN
END cy4_34_V;
-- END BEHAVE  cy4_34 -----


-- BEGIN BEHAVE  cy4_35 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_35 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_35;

-- ARCHITECTURE body --
ARCHITECTURE cy4_35_V OF cy4_35 IS
BEGIN
END cy4_35_V;
-- END BEHAVE  cy4_35 -----


-- BEGIN BEHAVE  cy4_36 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_36 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '1');
END cy4_36;

-- ARCHITECTURE body --
ARCHITECTURE cy4_36_V OF cy4_36 IS
BEGIN
END cy4_36_V;
-- END BEHAVE  cy4_36 -----


-- BEGIN BEHAVE  cy4_37 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_37 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_37;

-- ARCHITECTURE body --
ARCHITECTURE cy4_37_V OF cy4_37 IS
BEGIN
END cy4_37_V;
-- END BEHAVE  cy4_37 -----


-- BEGIN BEHAVE  cy4_38 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_38 IS

   PORT(
      C7                             :	out   std_logic := '1';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_38;

-- ARCHITECTURE body --
ARCHITECTURE cy4_38_V OF cy4_38 IS
BEGIN
END cy4_38_V;
-- END BEHAVE  cy4_38 -----


-- BEGIN BEHAVE  cy4_39 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_39 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '1';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_39;

-- ARCHITECTURE body --
ARCHITECTURE cy4_39_V OF cy4_39 IS
BEGIN
END cy4_39_V;
-- END BEHAVE  cy4_39 -----


-- BEGIN BEHAVE  cy4_40 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_40 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_40;

-- ARCHITECTURE body --
ARCHITECTURE cy4_40_V OF cy4_40 IS
BEGIN
END cy4_40_V;
-- END BEHAVE  cy4_40 -----


-- BEGIN BEHAVE  cy4_41 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_41 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '1';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '0';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_41;

-- ARCHITECTURE body --
ARCHITECTURE cy4_41_V OF cy4_41 IS
BEGIN
END cy4_41_V;
-- END BEHAVE  cy4_41 -----


-- BEGIN BEHAVE  cy4_42 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_42 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '0';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_42;

-- ARCHITECTURE body --
ARCHITECTURE cy4_42_V OF cy4_42 IS
BEGIN
END cy4_42_V;
-- END BEHAVE  cy4_42 -----

-- BEGIN BEHAVE  cy4_43 -----
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- ENTITY declaration --
ENTITY cy4_43 IS

   PORT(
      C7                             :	out   std_logic := '0';
      C6                             :	out   std_logic := '1';
      C5                             :	out   std_logic := '0';
      C4                             :	out   std_logic := '0';
      C3                             :	out   std_logic := '0';
      C2                             :	out   std_logic := '1';
      C1                             :	out   std_logic := '0';
      C0                             :	out   std_logic := '0');
END cy4_43;

-- ARCHITECTURE body --
ARCHITECTURE cy4_43_V OF cy4_43 IS
BEGIN
END cy4_43_V;
-- END BEHAVE  cy4_43 -----

-- BEGIN BEHAVE BSCAN
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BSCAN IS
    PORT(
      TDI, TMS, TCK, TDO1, TDO2	: IN std_logic;
      TDO : OUT  std_logic := 'H';
      DRCK, IDLE, SEL1, SEL2 : OUT  std_logic := 'L'
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


-- BEGIN BEHAVE STARTUP
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY STARTUP IS
    PORT(
      CLK, GTS, GSR 	   : IN std_logic;
      Q2, Q3, Q1Q4, DONEIN : OUT  std_logic := 'H'
      );
END STARTUP;

ARCHITECTURE model OF STARTUP IS
BEGIN
END model;
-- END BEHAVE STARTUP


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

-- BEGIN BEHAVE HMAP
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY HMAP IS
PORT(
I1, I2, I3 : IN std_logic := 'L';
O : IN std_logic 
);
END HMAP;
ARCHITECTURE model OF HMAP IS
BEGIN
END model;
-- END BEHAVE HMAP


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


-- BEGIN BEHAVE AND5
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND5 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END AND5;

ARCHITECTURE model OF AND5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE AND5


-- BEGIN BEHAVE AND5B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND5B1 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END AND5B1;

ARCHITECTURE model OF AND5B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE AND5B1


-- BEGIN BEHAVE AND5B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND5B2 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END AND5B2;

ARCHITECTURE model OF AND5B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE AND5B2


-- BEGIN BEHAVE AND5B3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND5B3 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END AND5B3;

ARCHITECTURE model OF AND5B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE AND5B3


-- BEGIN BEHAVE AND5B4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND5B4 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END AND5B4;

ARCHITECTURE model OF AND5B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE AND5B4


-- BEGIN BEHAVE AND5B5
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND5B5 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END AND5B5;
 
ARCHITECTURE model OF AND5B5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  NOT ( I4 ) ;
    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE AND5B5


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


-- BEGIN BEHAVE NAND5
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND5 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END NAND5;

ARCHITECTURE model OF NAND5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE NAND5


-- BEGIN BEHAVE NAND5B1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND5B1 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END NAND5B1;

ARCHITECTURE model OF NAND5B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE NAND5B1


-- BEGIN BEHAVE NAND5B2
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND5B2 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END NAND5B2;

ARCHITECTURE model OF NAND5B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE NAND5B2


-- BEGIN BEHAVE NAND5B3
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND5B3 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END NAND5B3;

ARCHITECTURE model OF NAND5B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE NAND5B3


-- BEGIN BEHAVE NAND5B4
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND5B4 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END NAND5B4;

ARCHITECTURE model OF NAND5B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE NAND5B4


-- BEGIN BEHAVE NAND5B5
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND5B5 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
O : OUT  std_logic);
END NAND5B5;

ARCHITECTURE model OF NAND5B5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  NOT ( I4 ) ;
    O <=  NOT( N1 AND N2 AND N3 AND N4 AND N5 ) AFTER 1NS;
END model;
-- END BEHAVE NAND5B5


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


-- BEGIN BEHAVE OR5 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR5 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR5;

ARCHITECTURE model OF OR5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE OR5 


-- BEGIN BEHAVE OR5B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR5B1 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR5B1;

ARCHITECTURE model OF OR5B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE OR5B1 


-- BEGIN BEHAVE OR5B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR5B2 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR5B2;

ARCHITECTURE model OF OR5B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE OR5B2 


-- BEGIN BEHAVE OR5B3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR5B3 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR5B3;

ARCHITECTURE model OF OR5B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE OR5B3 


-- BEGIN BEHAVE OR5B4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR5B4 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR5B4;

ARCHITECTURE model OF OR5B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE OR5B4 


-- BEGIN BEHAVE OR5B5 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR5B5 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END OR5B5;

ARCHITECTURE model OF OR5B5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  NOT ( I4 ) ;
    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE OR5B5 


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
    O <=  NOT( N1 OR N2 OR N3 )  AFTER 1NS;
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


-- BEGIN BEHAVE NOR5 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR5 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR5;

ARCHITECTURE model OF NOR5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE NOR5 


-- BEGIN BEHAVE NOR5B1 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR5B1 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR5B1;

ARCHITECTURE model OF NOR5B1 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE NOR5B1 


-- BEGIN BEHAVE NOR5B2 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR5B2 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR5B2;

ARCHITECTURE model OF NOR5B2 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE NOR5B2 


-- BEGIN BEHAVE NOR5B3 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR5B3 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR5B3;

ARCHITECTURE model OF NOR5B3 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE NOR5B3 


-- BEGIN BEHAVE NOR5B4 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR5B4 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR5B4;

ARCHITECTURE model OF NOR5B4 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE NOR5B4 


-- BEGIN BEHAVE NOR5B5 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR5B5 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END NOR5B5;

ARCHITECTURE model OF NOR5B5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  NOT ( I0 ) ;
    N2 <=  NOT ( I1 ) ;
    N3 <=  NOT ( I2 ) ;
    N4 <=  NOT ( I3 ) ;
    N5 <=  NOT ( I4 ) ;
    O <=  NOT( N1 OR N2 OR N3 OR N4 OR N5 ) AFTER 1NS;
END model;
-- END BEHAVE NOR5B5 


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
    O <=   ( N1 XOR N2 ) AFTER 1NS;
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
    O <=   ( N1 XOR N2 XOR N3 XOR N4 ) AFTER 1NS;
END model;
-- END BEHAVE XOR4 


-- BEGIN BEHAVE XOR5 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XOR5 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O  : OUT std_logic);
END XOR5;

ARCHITECTURE model OF XOR5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=   ( N1 XOR N2 XOR N3 XOR N4 XOR N5 ) AFTER 1NS;
END model;
-- END BEHAVE XOR5 


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
    O <=   NOT ( N1 XOR N2 ) AFTER 1NS;
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


-- BEGIN BEHAVE XNOR5 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY XNOR5 IS
PORT(
I4, 
I3, 
I2, 
I1, 
I0 : IN  std_logic;
O : OUT  std_logic);
END XNOR5;

ARCHITECTURE model OF XNOR5 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    O <=   NOT( N1 XOR N2 XOR N3 XOR N4 XOR N5 ) AFTER 1NS;
END model;
-- END BEHAVE XNOR5 

-- END LIB XC4000EX

