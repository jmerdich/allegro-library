--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1998                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:		OrCAD Simulate for Windows
--					VHDL Source File for Xilinx XC9500 EPLDs
-- File:			X9K.VHD
-- Date:			August 7, 1997
-- Version:		v7.10
-- Resource:	Xilinx Simulation Guide, Xilinx Inc., Version 6.1 - 2/20/96

-- Author History	|Last Touched	|Reason: 
--	Kathy Horvath	|11/02/98		| Changed GND port name to "G" and VCC to "P".  
--  RBH             |08/11/98       | Changed GND port name to "O" and VCC to "VCC" to
--                                  | match new synthesis libraries. 
--	Kathy Horvath	|07/06/98		| Added the following component: BUFGTS.   
--	Kathy Horvath	|05/28/98		| Added 1ns timing delay to components output signals.
-- 	Kathy Horvath   |04/10/98		| Removed following components: f, fdcpx1, h, ldcpx1,
--									| startx1, tnm.
--	Jim Davis		|12/05/97		| Added TimeGrp Model.
--	Jim Davis  		|11/26/97		| Modified OBUF primitive to use the TO_X01Z
--									| filter function. This allows high-impedance
--									| states (Z) to pass through to the output.

-- BEGIN PACKAGE X9K_PACK
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE X9K_pack IS

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
I : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OBUF

-- BEGIN COMPONENT OBUFT 
COMPONENT OBUFT  
PORT(
T, I : IN  std_logic;
O    : OUT std_logic);
END COMPONENT;
-- END COMPONENT OBUFT 

-- BEGIN COMPONENT IFDX1
COMPONENT IFDX1
PORT(
D, C, CE : IN  std_logic;
Q    : OUT  std_logic := '0');
END COMPONENT;
-- END COMPONENT IFDX1

-- BEGIN COMPONENT FDCP
COMPONENT FDCP
PORT(
C, D         : IN  std_logic;
PRE, CLR     : IN  std_logic := '0';
Q            : OUT std_logic := '0');
END COMPONENT;
-- END COMPONENT FDCP

-- BEGIN COMPONENT ILD
COMPONENT ILD
PORT(
D, G : IN  std_logic;
Q    : OUT std_logic := '1');
END COMPONENT;
-- END COMPONENT ILD

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

-- BEGIN COMPONENT BUFGSR 
COMPONENT BUFGSR  
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END COMPONENT;
-- END COMPONENT BUFGSR     

-- BEGIN COMPONENT BUFGTS
COMPONENT BUFGTS
PORT(
O : OUT  std_ulogic;
I : IN	std_ulogic);
END COMPONENT;
-- END COMPONENT BUFGTS

-- BEGIN COMPONENT pullup 
COMPONENT pullup  
PORT( O : OUT    std_logic);
END COMPONENT;
-- END COMPONENT pullup 

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

-- BEGIN COMPONENT AND6 
COMPONENT AND6  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND6 

-- BEGIN COMPONENT AND7 
COMPONENT AND7  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND7 

-- BEGIN COMPONENT AND8 
COMPONENT AND8  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND8 

-- BEGIN COMPONENT AND9 
COMPONENT AND9  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT AND9 

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

-- BEGIN COMPONENT NAND6 
COMPONENT NAND6  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND6 

-- BEGIN COMPONENT NAND7 
COMPONENT NAND7  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
 I6 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND7 

-- BEGIN COMPONENT NAND8 
COMPONENT NAND8  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
 I6 : IN  std_logic;
 I7 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND8 

-- BEGIN COMPONENT NAND9 
COMPONENT NAND9  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
 I6 : IN  std_logic;
 I7 : IN  std_logic;
 I8 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NAND9 
    
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

-- BEGIN COMPONENT OR5 
COMPONENT OR5  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR5 

-- BEGIN COMPONENT OR5B1 
COMPONENT OR5B1  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR5B1 

-- BEGIN COMPONENT OR5B2 
COMPONENT OR5B2  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR5B2 

-- BEGIN COMPONENT OR5B3 
COMPONENT OR5B3  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR5B3 

-- BEGIN COMPONENT OR5B4 
COMPONENT OR5B4  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR5B4 

-- BEGIN COMPONENT OR5B5 
COMPONENT OR5B5  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR5B5 

-- BEGIN COMPONENT OR6 
COMPONENT OR6  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR6 

-- BEGIN COMPONENT OR7 
COMPONENT OR7  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR7 

-- BEGIN COMPONENT OR8 
COMPONENT OR8  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR8 

-- BEGIN COMPONENT OR9 
COMPONENT OR9  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT OR9 

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

-- BEGIN COMPONENT NOR5 
COMPONENT NOR5  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR5 

-- BEGIN COMPONENT NOR5B1 
COMPONENT NOR5B1  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR5B1 

-- BEGIN COMPONENT NOR5B2 
COMPONENT NOR5B2  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR5B2 

-- BEGIN COMPONENT NOR5B3 
COMPONENT NOR5B3  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR5B3 

-- BEGIN COMPONENT NOR5B4 
COMPONENT NOR5B4  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR5B4 

-- BEGIN COMPONENT NOR5B5 
COMPONENT NOR5B5  
PORT(
I0, I1, I2, I3, I4 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR5B5 

-- BEGIN COMPONENT NOR6 
COMPONENT NOR6  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR6 

-- BEGIN COMPONENT NOR7 
COMPONENT NOR7  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
 I6 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR7 

-- BEGIN COMPONENT NOR8 
COMPONENT NOR8  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
 I6 : IN  std_logic;
 I7 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR8 

-- BEGIN COMPONENT NOR9 
COMPONENT NOR9  
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
 I5 : IN  std_logic;
 I6 : IN  std_logic;
 I7 : IN  std_logic;
 I8 : IN  std_logic;
O : OUT  std_logic);
END COMPONENT;
-- END COMPONENT NOR9 

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

END X9K_pack;

-- END PACKAGE X9K_PACK


-- BEGIN LIB XC9000

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
    O <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE IBUF


-- BEGIN BEHAVE OBUF 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OBUF IS
PORT(
I : IN  std_logic;
O : OUT  std_logic);
END OBUF;

ARCHITECTURE model OF OBUF IS

    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= ( I );
    O  <= to_x01z ( N1 ) AFTER 1NS;
		   
END model;
-- END BEHAVE OBUF 


-- BEGIN BEHAVE OBUFT
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OBUFT IS
PORT(
T, I : IN  std_logic;
O    : OUT std_logic);
END OBUFT;

ARCHITECTURE model OF OBUFT IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic := '0';

    BEGIN
    N1 <= ( T )  ;
    N2 <= ( I )  ;
    O  <= ( N3 ) AFTER 1NS;

    PROCESS (N1, N2)
    BEGIN
      IF (N1 = '1') THEN N3 <= 'Z';
      ELSE N3 <= to_x01( N2 );
      END IF;
    END PROCESS;

END model;
-- END BEHAVE OBUFT


-- BEGIN BEHAVE IFDX1
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY IFDX1 IS
PORT(
D, C, CE : IN  std_logic;
Q    : OUT  std_logic := '0');
END IFDX1;

ARCHITECTURE model OF IFDX1 IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic := '0';

    BEGIN
      N1 <=     ( D );
      N2 <=     ( C );
	  N3 <= 	  ( CE );
      Q  <=     ( N4 ) AFTER 1NS;

      BEHAVIOR : PROCESS (N2)
      BEGIN
        	IF (N3 = '0') THEN
			IF (N2 = '1') AND N2'EVENT THEN 
				N4 <= TO_X01(N1);
			END IF;
        END IF;
      
      END PROCESS;

END model;
-- END BEHAVE IFDX1


-- BEGIN BEHAVE FDCP
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FDCP IS
PORT(
C, D         : IN  std_logic;
PRE, CLR     : IN  std_logic := '0';
Q            : OUT std_logic := '0');
END FDCP;

ARCHITECTURE model OF FDCP IS

   SIGNAL N1 : std_logic;
   SIGNAL N2 : std_logic;
   SIGNAL N3 : std_logic;
   SIGNAL N4 : std_logic;
   SIGNAL N5 : std_logic := '0';

   BEGIN
   N1 <=     ( PRE ) ;
   N2 <=     ( D )   ;
   N3 <=     ( C )   ;
   N4 <=     ( CLR ) ;

	Q  <=     ( N5 )  AFTER 1NS;

   BEHAVIOR : PROCESS (N1, N3, N4)
   BEGIN
     IF (N4 = '1') THEN N5 <= '0';
       ELSIF (N1 = '1') THEN N5 <= '1';
       ELSIF (N3 = '1') AND N3'EVENT THEN N5 <= TO_X01(N2);
     END IF;
   END PROCESS;

END model;
-- END BEHAVE FDCP


-- BEGIN BEHAVE ILD
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ILD IS 
PORT(
D, G : IN  std_logic;
Q    : OUT std_logic := '1');
END ILD;

ARCHITECTURE model OF ILD IS

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic := '1';

    BEGIN
    N1 <=     ( D )  ;
    N2 <=     ( G )  ;
    Q  <=     ( N3 ) AFTER 1NS;

    BEHAVIOR : PROCESS (N1, N2)
    BEGIN
    IF (N2 = '1') THEN 
      N3 <= TO_X01(N1);

    END IF;
    END PROCESS;
END model;
-- END BEHAVE ILD

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
    SIGNAL N3 : std_logic;

    BEGIN
    N1 <= ( T )  ;
    N2 <= ( I )  ;
    O  <= ( N3 ) AFTER 1NS;

    PROCESS (N1, N2)
    BEGIN
      IF (N1 = '1') THEN N3 <= 'Z';
      ELSE N3 <= to_x01 ( N2 );
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

-- BEGIN BEHAVE BUFGTS
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFGTS IS
PORT(
O : OUT std_ulogic;
I : IN std_ulogic);
END BUFGTS;

ARCHITECTURE model OF BUFGTS IS
	SIGNAL I_IPD : std_ulogic:='X';

	BEGIN
	O := to_x01(I_ipd) AFTER 1NS;
END model;
-- END BEHAVE BUFGTS


-- BEGIN BEHAVE BUFGSR
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BUFGSR IS
PORT(
O : OUT  std_logic;
I : IN  std_logic);
END BUFGSR;

ARCHITECTURE model OF BUFGSR IS
    SIGNAL N1 : std_logic;

    BEGIN
    N1 <=  ( I ) ;
    O <=  to_x01 ( N1 ) AFTER 1NS;
END model;
-- END BEHAVE BUFGSR


-- BEGIN BEHAVE  pullup
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pullup IS
   PORT( O : OUT  std_logic);
END pullup;

ARCHITECTURE model OF pullup IS
BEGIN
   O <= 'H'AFTER 1NS;
END model;
-- END BEHAVE pullup 


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


-- BEGIN BEHAVE AND6
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND6 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
O : OUT  std_logic);
END AND6;

ARCHITECTURE model OF AND6 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;

    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 ) AFTER 1NS;
END model;
-- END BEHAVE AND6


-- BEGIN BEHAVE AND7
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND7 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
O : OUT  std_logic);
END AND7;

ARCHITECTURE model OF AND7 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;
	SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;

    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 ) AFTER 1NS;
END model;
-- END BEHAVE AND7


-- BEGIN BEHAVE AND8
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND8 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END AND8;

ARCHITECTURE model OF AND8 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;
	SIGNAL N7 : std_logic;
	SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;

    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 1NS;
END model;
-- END BEHAVE AND8


-- BEGIN BEHAVE AND9
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AND9 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
O : OUT  std_logic);
END AND9;

ARCHITECTURE model OF AND9 IS
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
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;
    N9 <=  ( I8 ) ;

    O <=  ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND N9 ) AFTER 1NS;
END model;
-- END BEHAVE AND9


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


-- BEGIN BEHAVE NAND6
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND6 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
O : OUT  std_logic);
END NAND6;

ARCHITECTURE model OF NAND6 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;

    O <=  NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 ) AFTER 1NS;
END model;
-- END BEHAVE NAND6


-- BEGIN BEHAVE NAND7
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND7 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
O : OUT  std_logic);
END NAND7;

ARCHITECTURE model OF NAND7 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	 SIGNAL N6 : std_logic;
	 SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;

    O <=  NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 ) AFTER 1NS;
END model;
-- END BEHAVE NAND7


-- BEGIN BEHAVE NAND8
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND8 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END NAND8;

ARCHITECTURE model OF NAND8 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;

    O <=  NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 ) AFTER 1NS;
END model;
-- END BEHAVE NAND8


-- BEGIN BEHAVE NAND9
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NAND9 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
O : OUT  std_logic);
END NAND9;

ARCHITECTURE model OF NAND9 IS
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
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;
    N9 <=  ( I8 ) ;

	 O <=  NOT ( N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND N9 ) AFTER 1NS;
END model;
-- END BEHAVE NAND9


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


-- BEGIN BEHAVE OR6
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR6 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
O : OUT  std_logic);
END OR6;

ARCHITECTURE model OF OR6 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;

    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 ) AFTER 1NS;
END model;
-- END BEHAVE OR6


-- BEGIN BEHAVE OR7
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR7 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
O : OUT  std_logic);
END OR7;

ARCHITECTURE model OF OR7 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;
	SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;

    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 ) AFTER 1NS;
END model;
-- END BEHAVE OR7


-- BEGIN BEHAVE OR8
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR8 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END OR8;

ARCHITECTURE model OF OR8 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
	SIGNAL N6 : std_logic;
	SIGNAL N7 : std_logic;
	SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;

    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 OR N8 ) AFTER 1NS;
END model;
-- END BEHAVE OR8


-- BEGIN BEHAVE OR9
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR9 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
O : OUT  std_logic);
END OR9;

ARCHITECTURE model OF OR9 IS
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
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;
    N9 <=  ( I8 ) ;

    O <=  ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 OR N8 OR N9 ) AFTER 1NS;
END model;
-- END BEHAVE OR9


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


-- BEGIN BEHAVE NOR6
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR6 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
O : OUT  std_logic);
END NOR6;

ARCHITECTURE model OF NOR6 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;

    O <=  NOT ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 ) AFTER 1NS;
END model;
-- END BEHAVE NOR6


-- BEGIN BEHAVE NOR7
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR7 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
O : OUT  std_logic);
END NOR7;

ARCHITECTURE model OF NOR7 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;

    O <=  NOT ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 ) AFTER 1NS;
END model;
-- END BEHAVE NOR7


-- BEGIN BEHAVE NOR8
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR8 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END NOR8;

ARCHITECTURE model OF NOR8 IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;

	 O <=  NOT ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 OR N8 ) AFTER 1NS;
END model;
-- END BEHAVE NOR8


-- BEGIN BEHAVE NOR9
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NOR9 IS
PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
I8 : IN  std_logic;
O : OUT  std_logic);
END NOR9;

ARCHITECTURE model OF NOR9 IS
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
    N1 <=  ( I0 ) ;
    N2 <=  ( I1 ) ;
    N3 <=  ( I2 ) ;
    N4 <=  ( I3 ) ;
    N5 <=  ( I4 ) ;
    N6 <=  ( I5 ) ;
    N7 <=  ( I6 ) ;
    N8 <=  ( I7 ) ;
    N9 <=  ( I8 ) ;

    O <=  NOT ( N1 OR N2 OR N3 OR N4 OR N5 OR N6 OR N7 OR N8 OR N9 ) AFTER 1NS;
END model;
-- END BEHAVE NOR9


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


-- END LIB XC9000

