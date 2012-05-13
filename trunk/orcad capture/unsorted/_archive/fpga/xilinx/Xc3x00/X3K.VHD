--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1998                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--					VHDL Simulation Library for Xilinx XC3000 LCAs
-- File:			X3K.VHD
-- Date:			February 25, 1997
-- Version:	    	v7.00
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 5.10 - 11/30/94
--					Version 6.10 -  2/20/96  
--
--  MODIFIED BY		|DATE			|WHAT     
--	Kathy Horvath	|11/02/98		| Changed GND port name to "G" and VCC to "P".
--  RBH             |08/11/98       | Changed GND port name to "O" and VCC to "VCC" to
--                                  | match new synthesis libraries. 
--  Kathy Horvath	|06/16/98		| Deleted the following components: C, N, P, PIN, S,
--									|  SC, TNM, TS, W, X.
--									|
--	Kathy Horvath	|05/20/98		| Modified all components to contain 1ns delay. This
--									| was done to cure the endless loop error.
--									|
--	Brian Smith		|03/11/98		| Modified the FDCE to remove a signal
--									| that could potentially keep it from clocking. 
--									|
--  Kathy Horvath	|03/11/98		| Modified the CLBMAP, CLB, and IOB models
--								 	| to match the Capture models. This was done
--									| by adding ports that appear on the Capture 
--									| model to the simulation model.
--									|
--	Jim Davis		|02/24/98		| Modified the OSC model to add oscillator
--									| functionality which was acheived by using
--									| generics to pass pulse delay, pulse width
--									| and period timing information. In addition
--									| to adding functionality an assert was added
--									| to handle the error condition of the delay
--									| plus the width being greater than the period.
--									|
--***************************************************************************
-- XILINX XC3000 SIMULATION MODELS

-- BEGIN PACKAGE X3K_PACK
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE X3K_pack IS

-- Global signals initialized
	SIGNAL gr : std_logic := '1';

-- BEGIN COMPONENT clbmap 
COMPONENT clbmap  
  PORT(
     A, B, C, D, E, DI, EC, K, RD : IN std_logic;
		X, Y : IN  std_logic);
END COMPONENT;
-- END COMPONENT clbmap 

-- BEGIN COMPONENT clb 
COMPONENT clb  
  PORT(
     A, B, C, D, E, DI, EC, K, RD : IN std_logic;
		X, Y : OUT  std_logic);
END COMPONENT;
-- END COMPONENT clb           

 -- BEGIN COMPONENT iob 
COMPONENT iob  
  PORT(
     T, O, IK, OK : IN std_logic;
		I, Q : OUT  std_logic);
END COMPONENT;
-- END COMPONENT iob 

-- BEGIN COMPONENT l 
COMPONENT l  
  PORT(
     L : IN std_logic);
END COMPONENT;
-- END COMPONENT l

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

-- BEGIN COMPONENT IFD 
COMPONENT IFD  
PORT(
D, C : IN  std_logic;
Q    : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT IFD 


-- BEGIN COMPONENT ILD
COMPONENT ILD
PORT(
D, G : IN  std_logic;
Q    : OUT std_logic := '1');
END COMPONENT;
-- END COMPONENT ILD


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

-- BEGIN COMPONENT OFD 
COMPONENT OFD  
PORT(
D, C : IN  std_logic;
Q    : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT OFD 

-- BEGIN COMPONENT OFDT 
COMPONENT OFDT   
PORT(
T, D, C : IN  std_logic;
O       : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT OFDT 

-- BEGIN COMPONENT FDCE 
COMPONENT FDCE   
PORT(
C, D    : IN  std_logic;
CLR     : IN  std_logic := '0';
CE      : IN  std_logic := '1';
Q       : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT FDCE 

-- BEGIN COMPONENT BUFT 
COMPONENT BUFT   
PORT(
T, I : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT BUFT 

-- BEGIN COMPONENT BUF 
COMPONENT BUF  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUF 

-- BEGIN COMPONENT pullup 
COMPONENT pullup  
  PORT( O : OUT    std_logic);
END COMPONENT;
-- END COMPONENT pullup 

-- BEGIN COMPONENT BUFG 
COMPONENT BUFG  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUFG 

-- BEGIN COMPONENT aclk 
 COMPONENT aclk  
  PORT(
      I : IN std_logic;
      O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT aclk 

 -- BEGIN COMPONENT gclk 
 COMPONENT gclk  
  PORT(
      I : IN std_logic;
      O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT gclk 

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

-- BEGIN COMPONENT OSC
COMPONENT OSC 
  Generic (	Period:Time:= 50NS;
			PulseDelay:Time:= 0NS;
			PulseWidth:Time:= 25NS );
PORT( O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OSC


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

END X3K_pack;

-- END PACKAGE X3K_PACK


-- BEGIN LIB XC3000

-- BEGIN BEHAVE clbmap
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY clbmap IS
  PORT(
     A, B, C, D, E, DI, EC, K, RD : IN std_logic;
	  X, Y : IN std_logic);
END clbmap;

ARCHITECTURE model OF clbmap IS
BEGIN
END model;
-- END BEHAVE clbmap 


-- BEGIN BEHAVE clb
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY clb IS
  PORT(
     A, B, C, D, E, DI, EC, K, RD : IN std_logic;
	  X, Y : OUT  std_logic := 'X');
END clb;

ARCHITECTURE model OF clb IS
BEGIN
	PROCESS(A, B, C, D, E, DI, EC, K, RD)
	BEGIN
		ASSERT Now = 0 ns
   	REPORT "Designs using CLB components require PROCESSing in Xilinx XACT software before simulation. "
   	SEVERITY Error;
   END PROCESS;
END model;
-- END BEHAVE clb 


-- BEGIN BEHAVE iob
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY iob IS
  PORT(
     T, O, IK, OK : IN std_logic;
	 I, Q : OUT std_logic);
END iob;

ARCHITECTURE model OF iob IS
BEGIN
	PROCESS(T, O, IK, OK)
	BEGIN
		ASSERT Now = 0 ns
   	REPORT "Designs using IOB components require PROCESSing in Xilinx XACT software before simulation. "
   	SEVERITY Error;
   END PROCESS;
END model;
-- END BEHAVE iob 


-- BEGIN BEHAVE l
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY l IS
  PORT(
     L : IN std_logic);
END l;

ARCHITECTURE model OF l IS
BEGIN
END model;
-- END BEHAVE l 



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
    N1 <= ( I );
    O  <= TO_X01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE IBUF


-- BEGIN BEHAVE IFD
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X3K_pack.ALL;

ENTITY IFD IS
PORT(
D, C : IN std_logic; 
Q : OUT  std_logic := '0');
END IFD;

ARCHITECTURE model OF IFD IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic := '0';

    BEGIN
      N1 <=     ( D )   ;
      N2 <=     ( C )   ;
      N3 <= NOT ( GR )  ;
      Q  <=     ( N4 )  AFTER 1NS;

      BEHAVIOR : PROCESS (N2, N3)
      BEGIN
        IF    (N3 = '1') THEN N4 <= '0' ;
        ELSIF (N2 = '1') AND N2'EVENT THEN
          N4 <= TO_X01(N1);
      
        END IF;
      
      END PROCESS;
      
END model;
-- END BEHAVE IFD


-- BEGIN BEHAVE ILD
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X3K_pack.ALL;

ENTITY ILD IS 
PORT(
D, G : IN  std_logic;
Q    : OUT std_logic := '1');
END ILD;

ARCHITECTURE model OF ILD IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic := '1';

    BEGIN
    N1 <=     ( D ) ;
    N2 <=     ( G ) ;
    N3 <= NOT ( GR );
    Q  <=     ( N4 ) AFTER 1NS;

    BEHAVIOR : PROCESS (N1, N2, N3)
    BEGIN
    IF    (N3 = '1') THEN N4 <= '0';
    ELSIF (N2 = '1') THEN 
     N4 <= TO_X01(N1);

    END IF;
    END PROCESS;
END model;
-- END BEHAVE ILD


-- BEGIN BEHAVE OBUF 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OBUF IS
PORT(
I   : IN  std_logic;
O   : OUT  std_logic);
END OBUF;

ARCHITECTURE model OF OBUF IS

    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= ( I );
    O  <= to_x01 ( N1 )  AFTER 1NS;

END model;
-- END BEHAVE OBUF 


-- BEGIN BEHAVE OBUFT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OBUFT IS
PORT(
T, I : IN  std_logic;
O    : OUT  std_logic);
END OBUFT;

ARCHITECTURE model OF OBUFT IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic := '0';

    BEGIN
    N1 <= ( T ) ;
    N2 <= ( I ) ;

    O  <= ( N3 ) AFTER 1NS;

    PROCESS (N1, N2)
    BEGIN
      IF (N1 = '1') THEN N3 <= 'Z';
      ELSE N3 <= TO_X01(N2);
      END IF;
    END PROCESS;

END model;
-- END BEHAVE OBUFT


-- BEGIN BEHAVE OFD 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X3K_pack.ALL;

ENTITY OFD IS
PORT(
D, C : IN  std_logic;
Q    : OUT std_logic := '0');
END OFD;

ARCHITECTURE model OF OFD IS

    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic := '0';

    BEGIN
    N2 <=     ( D );
    N3 <=     ( C );
    N4 <= NOT ( GR );
    Q  <=     ( N5 ) AFTER 1NS;

    BEHAVIOR : PROCESS (N3, N4)
    BEGIN
      IF    (N4 = '1') THEN N5 <= '0';
      ELSIF (N3 = '1') AND N3'EVENT THEN
         N5 <= N2;
      END IF;
    
    END PROCESS;
    
    END model;
-- END BEHAVE OFD 


-- BEGIN BEHAVE OFDT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X3K_pack.ALL;

ENTITY OFDT IS 
PORT(
T, D, C : IN  std_logic;
O       : OUT std_logic := '0');
END OFDT;

ARCHITECTURE model OF OFDT IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic := '0';

    BEGIN
    N2 <=     ( T );
    N4 <=     ( D );
    N5 <=     ( C );
    N6 <= NOT ( GR );
    O  <=     ( N8 ) AFTER 1NS;

    PROCESS (N2, N7)
    BEGIN
      IF (N2 = '1') THEN N8 <= 'Z';
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

-- BEGIN BEHAVE FDCE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.X3K_pack.ALL;

ENTITY FDCE IS 
PORT(
    C, D    : IN  std_logic;
    CLR     : IN  std_logic := '0';
    CE      : IN  std_logic := '1';
    Q       : OUT std_logic := '0');
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
   N7 <= NOT ( GR ) ;

   N8 <=     ( N6 OR N7 );

   Q  <=     ( N9 ) AFTER 1NS;


   BEHAVIOR : PROCESS (N2, N5, N8)
      BEGIN
     IF    (N8 = '1') THEN N9 <= '0';
     ELSIF (N3 = '1' AND RISING_EDGE(N2)) THEN
        N9 <= TO_X01(N1);
     END IF;
   
   END PROCESS;

END model;
-- END BEHAVE FDCE


-- BEGIN BEHAVE BUFT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFT IS 
PORT(
T, I : IN  std_logic;
O    : OUT std_logic);
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

-- BEGIN BEHAVE aclk
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY aclk IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END aclk;

ARCHITECTURE model OF aclk IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  TO_X01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE aclk

-- BEGIN BEHAVE gclk
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gclk IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END gclk;

ARCHITECTURE model OF gclk IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE gclk


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

-- BEGIN BEHAVE OSC
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OSC IS
  Generic (	Period:Time:= 50NS;
			PulseDelay:Time:= 0NS;
			PulseWidth:Time:= 25NS );
  PORT(	O : OUT  std_logic );
     
Begin
	Assert ( Period - ( PulseDelay + PulseWidth ) ) >= 0
	Report " PulseDelay + PulseWidth greater than Period is not allowed"
	Severity error;
End;

ARCHITECTURE model OF OSC IS

	Signal Node_Osc: Std_Logic:='0';

BEGIN

	O <= Node_Osc AFTER 1NS;

	Proc_Osc: Process 
		Begin

		Wait for PulseDelay;
		Node_Osc <= Not Node_Osc;
		Node_Osc <= Not Node_Osc after PulseWidth;
		Wait for ( Period - ( PulseDelay + PulseWidth ) );

		End Process;
END model;
-- END BEHAVE OSC


-- BEGIN BEHAVE  pullup
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pullup IS
   PORT( O : OUT  std_logic);
END pullup;

ARCHITECTURE model OF pullup IS
BEGIN
   O <= 'H' AFTER 1NS;
END model;
-- END BEHAVE  pullup 


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
    O <=  ( N1 AND N2 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 ) AFTER 1NS;
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
END model;-- END BEHAVE AND3


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
    O <=  ( N1 AND N2 AND N3 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 AND N3 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 AND N3 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  NOT ( N1 AND N2 ) AFTER 1NS;
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
    O <=  NOT ( N1 AND N2 ) AFTER 1NS;
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

    O <=  NOT ( N1 AND N2 AND N3 ) AFTER 1NS;
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

    O <=  NOT ( N1 AND N2 AND N3 ) AFTER 1NS;
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

    O <=  NOT ( N1 AND N2 AND N3 ) AFTER 1NS;
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
    O <=  NOT ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  NOT ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  NOT ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  NOT ( N1 AND N2 AND N3 AND N4 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  ( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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
    O <=  NOT( N1 OR N2 OR N3 OR N4 ) AFTER 1NS;
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


-- END LIB XC3000

