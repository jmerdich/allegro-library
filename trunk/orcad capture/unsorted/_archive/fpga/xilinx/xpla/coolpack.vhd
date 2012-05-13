-- FILENAME     :    coolpack.vhd
-- FILE CONTENTS:    Xilinx CoolRunner Package
-- DATE CREATED :    Tue Aug 15 14:02:56 2000
-- Created By   :    Cadence PSD 
-- LIBRARY      :    COOLPACK
-- DATE ENTERED :    Tues Aug 15 16:22:19 2000
-- REVISION     :    1.0.0
-- TECHNOLOGY   :    fpga
-- LOGIC SYSTEM :    IEEE-1164, Xilinx & Synospsy Synthesis package
-- NOTES        :    This package support Xilix CoolRunner XPLA simulation and synthesis.
--              			   	
-- HISTORY      :    1.  The First release created on 08/15/00 by FM

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
  
PACKAGE COOLPACK IS

  -- COMPONENTS

COMPONENT ADD1C
	PORT (
	A0 : IN std_logic;
	S0 : OUT std_logic;
	B0 : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4UL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16UR
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG8RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT ADD4
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG16SE
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG8S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT AND2
	PORT (
	Z : OUT std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic
	); END COMPONENT;

COMPONENT ADD4C
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	CI : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	CO : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4ULE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16URE
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT PSREG8SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT ADD8
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4ULR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16US
	PORT (
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B1
	PORT (
	Z : OUT std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16USE
	PORT (
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT ADD8C
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	CI : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	CO : OUT std_logic
	); END COMPONENT;

COMPONENT AND10
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2D
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT AND2B2
	PORT (
	Z : OUT std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic
	); END COMPONENT;

COMPONENT AND11
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT XR3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND12
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT XR4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT XR5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT XR6
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT XR7
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT TFF
	PORT (
	T : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT DFFR
	PORT (
	D : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic;
	RST : IN std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT NR5B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT XR8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DFFRE
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	QN : OUT std_logic;
	RST : IN std_logic
	); END COMPONENT;

COMPONENT NR5B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT TFFE
	PORT (
	Q : OUT std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	QN : OUT std_logic;
	T : INOUT std_logic
	); END COMPONENT;

COMPONENT AND5B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT TFFR
	PORT (
	T : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic;
	RST : IN std_logic
	); END COMPONENT;

COMPONENT NR5B4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND4B1
	PORT (
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DFFS
	PORT (
	D : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT TFFRE
	PORT (
	Q : OUT std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	QN : OUT std_logic;
	RST : IN std_logic;
	T : IN std_logic
	); END COMPONENT;

COMPONENT NR5B5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DFFSE
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	QN : OUT std_logic;
	PRE : IN std_logic
	); END COMPONENT;

COMPONENT ND4B2
	PORT (
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic;
	IN1 : IN std_logic
	); END COMPONENT;

COMPONENT NR6
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DEC416E
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic;
	Z8 : OUT std_logic;
	Z9 : OUT std_logic;
	Z10 : OUT std_logic;
	Z11 : OUT std_logic;
	Z12 : OUT std_logic;
	Z13 : OUT std_logic;
	Z14 : OUT std_logic;
	Z15 : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT AND5B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND4B3
	PORT (
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT INV
	PORT (
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT TFFS
	PORT (
	T : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic;
	PRE : IN std_logic
	); END COMPONENT;

COMPONENT NR7
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT TFFSE
	PORT (
	Q : OUT std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	QN : OUT std_logic;
	PRE : IN std_logic;
	T : INOUT std_logic
	); END COMPONENT;

COMPONENT GND
	PORT (
	O : OUT std_logic
	); END COMPONENT;

COMPONENT ND4B4
	PORT (
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT INV16
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	IN12 : IN std_logic;
	IN13 : IN std_logic;
	IN14 : IN std_logic;
	IN15 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic;
	Z8 : OUT std_logic;
	Z9 : OUT std_logic;
	Z10 : OUT std_logic;
	Z11 : OUT std_logic;
	Z12 : OUT std_logic;
	Z13 : OUT std_logic;
	Z14 : OUT std_logic;
	Z15 : OUT std_logic
	); END COMPONENT;

COMPONENT JKFF
	PORT (
	J : IN std_logic;
	K : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT TRI
	PORT (
	E : IN std_logic;
	O : OUT std_logic;
	IN0 : IN std_logic
	); END COMPONENT;

COMPONENT AND5B4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND5
	PORT (
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND5B1
	PORT (
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT INV2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic
	); END COMPONENT;

COMPONENT NR9
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT JKFFR
	PORT (
	J : IN std_logic;
	Q : OUT std_logic;
	K : IN std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic;
	RST : IN std_logic
	); END COMPONENT;

COMPONENT JKFFS
	PORT (
	J : IN std_logic;
	Q : OUT std_logic;
	K : IN std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic;
	PRE : IN std_logic
	); END COMPONENT;

COMPONENT AND5B5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT INV4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic
	); END COMPONENT;

COMPONENT ND5B2
	PORT (
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR10
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND5B3
	PORT (
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR11
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT LATR
	PORT (
	D : IN std_logic;
	E : IN std_logic;
	Q : OUT std_logic;
	RST : IN std_logic
	); END COMPONENT;

COMPONENT INV8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic
	); END COMPONENT;

COMPONENT AND6
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND5B4
	PORT (
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT JKFFE
	PORT (
	J : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	K : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT TRI4
	PORT (
	E : IN std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic
	); END COMPONENT;

COMPONENT JKFFRE
	PORT (
	J : IN std_logic;
	K : IN std_logic;
	RST : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT ND5B5
	PORT (
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT JKFFSE
	PORT (
	J : IN std_logic;
	K : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT TRI8
	PORT (
	E : IN std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic
	); END COMPONENT;

COMPONENT VDD
	PORT (
	O : OUT std_logic
	); END COMPONENT;

COMPONENT LAT
	PORT (
	D : IN std_logic;
	E : IN std_logic;
	Q : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG2
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG2E
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG2R
	PORT (
	SI : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4ULRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT REG16
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG2RE
	PORT (
	SI : IN std_logic;
	RST : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4ULS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT REG16E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG2S
	PORT (
	SI : IN std_logic;
	PRE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT REG16R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4ULSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT OR5B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT OR5B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DLE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CE : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT REG16RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG2SE
	PORT (
	SI : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR6
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4UR
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT AND9
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DLR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT OR5B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT REG16S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG4
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4URE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR7
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ACC16
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT BUF16
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	IN12 : IN std_logic;
	IN13 : IN std_logic;
	IN14 : IN std_logic;
	IN15 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic;
	Z8 : OUT std_logic;
	Z9 : OUT std_logic;
	Z10 : OUT std_logic;
	Z11 : OUT std_logic;
	Z12 : OUT std_logic;
	Z13 : OUT std_logic;
	Z14 : OUT std_logic;
	Z15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DLRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT SPREG4E
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4US
	PORT (
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT XNR8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR5B4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ACC2
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT REG16SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT BUF2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG4R
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT OR5B5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DLS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4USE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT ACC4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT REG2
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT OR9
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DLSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT SPREG4RE
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT BUF4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic
	); END COMPONENT;

COMPONENT ACC8
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8D
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT REG2E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2U
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT REG2R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT BUF8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG16
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT ADD16
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	S11 : OUT std_logic;
	S12 : OUT std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	S15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2UL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16D
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT REG2RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG16E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT XR2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG16R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16DE
	PORT (
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2ULE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CE : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2ULR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG16RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16DL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DLE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DLR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT ND2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR12
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND6
	PORT (
	IN5 : IN std_logic;
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR2B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND2B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND7
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND7
	PORT (
	IN6 : IN std_logic;
	IN5 : IN std_logic;
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND8
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT LAT16
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	E : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT ND2B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND8
	PORT (
	IN7 : IN std_logic;
	IN6 : IN std_logic;
	IN5 : IN std_logic;
	IN4 : IN std_logic;
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT LAT2
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	E : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT ND9
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR3B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT BUF
	PORT (
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR4B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT LAT4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	E : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT NR10
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8UE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT OR4B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR11
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8UL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT LAT8
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	E : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT OR2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR12
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT MCOMP16
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	AEQB : OUT std_logic;
	AGTB : OUT std_logic;
	BGTA : OUT std_logic
	); END COMPONENT;

COMPONENT AND3B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR4B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DE
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	CE : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8ULE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT NR2B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DR
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	RST : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT MCOMP2
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	AEQB : OUT std_logic;
	AGTB : OUT std_logic;
	BGTA : OUT std_logic
	); END COMPONENT;

COMPONENT OR4B4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8ULR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	RST : IN std_logic
	); END COMPONENT;

COMPONENT CNTB8ULRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT MCOMP4
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	AEQB : OUT std_logic;
	AGTB : OUT std_logic;
	BGTA : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DRE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	RST : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT AND4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR2B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DS
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	PRE : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT MCOMP8
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	AEQB : OUT std_logic;
	AGTB : OUT std_logic;
	BGTA : OUT std_logic
	); END COMPONENT;

COMPONENT NR3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8ULS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	PRE : IN std_logic
	); END COMPONENT;

COMPONENT MUX161
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	SEL0 : IN std_logic;
	SEL1 : IN std_logic;
	SEL2 : IN std_logic;
	Z : OUT std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	IN12 : IN std_logic;
	IN13 : IN std_logic;
	IN14 : IN std_logic;
	IN15 : IN std_logic;
	SEL3 : IN std_logic
	); END COMPONENT;

COMPONENT AND4B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8ULSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8UR
	PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT MUX21
	PORT (
	SEL : IN std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG4S
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8URE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG4SE
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DLE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT REG2S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG8
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8US
	PORT (
	PRE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG8E
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DLR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	RST : IN std_logic
	); END COMPONENT;

COMPONENT REG2SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DLRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT REG4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2ULRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT PSREG16S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT SPREG8R
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2ULS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DLS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	PRE : IN std_logic
	); END COMPONENT;

COMPONENT REG4E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG8RE
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG16SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT PSREG2
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB2ULSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT SPREG8S
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DLSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT REG4R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DLRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG8SE
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT REG4RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DLS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DR
	PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG2E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB4D
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DRE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DLSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DE
	PORT (
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG2R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT REG4S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT SRFF
	PORT (
	S : IN std_logic;
	CLK : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT SRFFE
	PORT (
	S : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8DS
	PORT (
	PRE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DR
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT REG4SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG2RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	RST : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16DRE
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT CNTB4DLE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT CNTB8DSE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT REG8
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG2S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT PSREG2SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT REG8E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DLR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8U
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DS
	PORT (
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG4
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB4DLRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16DSE
	PORT (
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic;
	CE : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16U
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG4E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB4DLS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	LD : IN std_logic
	); END COMPONENT;

COMPONENT CNTB16UE
	PORT (
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16UL
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT OR3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR3B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2DSE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	PRE : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT NR3B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2UE
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	CE : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT NR3B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT MUX41
	PORT (
	SEL0 : IN std_logic;
	SEL1 : IN std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2UR
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	RST : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT OR5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2URE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	RST : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT NR4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT MUX81
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	SEL0 : IN std_logic;
	SEL1 : IN std_logic;
	SEL2 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB2US
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	PRE : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT ND10
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR6
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB8USE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT NR4B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND11
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT COMP16
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	EQ : OUT std_logic
	); END COMPONENT;

COMPONENT NR4B2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic;
	IN2 : IN std_logic
	); END COMPONENT;

COMPONENT CNTB2USE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	PRE : IN std_logic;
	Q1 : OUT std_logic
	); END COMPONENT;

COMPONENT AND4B4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR4B3
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND12
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT OR7
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DEC12
	PORT (
	IN0 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic
	); END COMPONENT;

COMPONENT COMP2
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	EQ : OUT std_logic
	); END COMPONENT;

COMPONENT DEC12E
	PORT (
	IN0 : IN std_logic;
	E : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic
	); END COMPONENT;

COMPONENT COMP4
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	EQ : OUT std_logic
	); END COMPONENT;

COMPONENT ND3
	PORT (
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR4B4
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT COMP8
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	EQ : OUT std_logic
	); END COMPONENT;

COMPONENT ND3B1
	PORT (
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DFF
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT NR5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT AND5
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DEC24
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic
	); END COMPONENT;

COMPONENT ND3B2
	PORT (
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT NR5B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DFFE
	PORT (
	D : IN std_logic;
	Q : OUT std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT DEC24E
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT AND5B1
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT ND3B3
	PORT (
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT DEC38
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic
	); END COMPONENT;

COMPONENT SRFFR
	PORT (
	S : IN std_logic;
	CLK : IN std_logic;
	R : IN std_logic;
	RST : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT ND4
	PORT (
	IN3 : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	Z : OUT std_logic
	); END COMPONENT;

COMPONENT SRFFRE
	PORT (
	S : IN std_logic;
	R : IN std_logic;
	RST : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT DEC38E
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic;
	E : IN std_logic
	); END COMPONENT;

COMPONENT SRFFS
	PORT (
	S : IN std_logic;
	CLK : IN std_logic;
	R : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic;
	PRE : IN std_logic
	); END COMPONENT;

COMPONENT DEC416
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	Z0 : OUT std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic;
	Z4 : OUT std_logic;
	Z5 : OUT std_logic;
	Z6 : OUT std_logic;
	Z7 : OUT std_logic;
	Z8 : OUT std_logic;
	Z9 : OUT std_logic;
	Z10 : OUT std_logic;
	Z11 : OUT std_logic;
	Z12 : OUT std_logic;
	Z13 : OUT std_logic;
	Z14 : OUT std_logic;
	Z15 : OUT std_logic
	); END COMPONENT;

COMPONENT REG8R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT REG8RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT SRFFSE
	PORT (
	S : IN std_logic;
	R : IN std_logic;
	PRE : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic;
	QN : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DLSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT REG8S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG4R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT SUB16
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	S11 : OUT std_logic;
	S12 : OUT std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	S15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DR
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT SUB2
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG4RE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT REG8SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	); END COMPONENT;

COMPONENT SUB4
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16ULE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DRE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG16
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG4S
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT PSREG4SE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB4DS
	PORT (
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16ULR
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG16E
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SUB8
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16ULRE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4DSE
	PORT (
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT TRI16
	PORT (
	E : IN std_logic;
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	IN5 : IN std_logic;
	IN6 : IN std_logic;
	IN7 : IN std_logic;
	IN8 : IN std_logic;
	IN9 : IN std_logic;
	IN10 : IN std_logic;
	IN11 : IN std_logic;
	IN12 : IN std_logic;
	IN13 : IN std_logic;
	IN14 : IN std_logic;
	IN15 : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	O9 : OUT std_logic;
	O10 : OUT std_logic;
	O11 : OUT std_logic;
	O12 : OUT std_logic;
	O13 : OUT std_logic;
	O14 : OUT std_logic;
	O15 : OUT std_logic
	); END COMPONENT;

COMPONENT ADD16C
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	A6 : IN std_logic;
	A7 : IN std_logic;
	A8 : IN std_logic;
	A9 : IN std_logic;
	A10 : IN std_logic;
	A11 : IN std_logic;
	A12 : IN std_logic;
	A13 : IN std_logic;
	A14 : IN std_logic;
	A15 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	B5 : IN std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	B8 : IN std_logic;
	B9 : IN std_logic;
	B10 : IN std_logic;
	B11 : IN std_logic;
	B12 : IN std_logic;
	B13 : IN std_logic;
	B14 : IN std_logic;
	B15 : IN std_logic;
	CI : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic;
	S10 : OUT std_logic;
	S11 : OUT std_logic;
	S12 : OUT std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	S15 : OUT std_logic;
	CO : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG16R
	PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic;
	SI : IN std_logic
	); END COMPONENT;

COMPONENT PSREG8
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT CNTB4U
	PORT (
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG8E
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

COMPONENT ADD2
	PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG16RE
	PORT (
	SI : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT TRI2
	PORT (
	IN0 : IN std_logic;
	IN1 : IN std_logic;
	E : IN std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16ULS
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT ADD2C
	PORT (
	CI : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	CO : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB4UE
	PORT (
	CLK : IN std_logic;
	CE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic
	); END COMPONENT;

COMPONENT CNTB16ULSE
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	LD : IN std_logic;
	CE : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT SPREG16S
	PORT (
	SI : IN std_logic;
	CLK : IN std_logic;
	PRE : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	); END COMPONENT;

COMPONENT PSREG8R
	PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	Q0 : OUT std_logic;
	S_L : IN std_logic
	); END COMPONENT;

 END COOLPACK;

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

entity ACC16 is 
	port (RST,CLK : in std_logic ;
D15,D14,D13,D12,D11,D10,D9,D8,D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic) ;
end ACC16 ;

architecture v1 of ACC16 is 
signal Q_i : unsigned (15 downto 0) ;
signal D_i : unsigned (15 downto 0) ;
begin
D_i <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
process(RST,CLK)
begin
if RST = '1' then
Q_i <= (others => '0') ;
elsif CLK'event and CLK = '1' then
Q_i <= Q_i + D_i ;
end if ;
end process ;

Q15 <= Q_i(15)  ;
Q14 <= Q_i(14)  ;
Q13 <= Q_i(13)  ;
Q12 <= Q_i(12)  ;
Q11 <= Q_i(11)  ;
Q10 <= Q_i(10)  ;
Q9 <= Q_i(9)  ;
Q8 <= Q_i(8)  ;
Q7 <= Q_i(7)  ;
Q6 <= Q_i(6)  ;
Q5 <= Q_i(5)  ;
Q4 <= Q_i(4)  ;
Q3 <= Q_i(3)  ;
Q2 <= Q_i(2)  ;
Q1 <= Q_i(1)  ;
Q0 <= Q_i(0)  ;

end v1;


-- 2-bit Accumulator 

-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

entity ACC2 is 
	port (RST,CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic) ;
end ACC2 ;

architecture v1 of ACC2 is 
signal Q_i : unsigned (1 downto 0) ;
signal D_i : unsigned (1 downto 0) ;
begin

D_i <= D1 & D0 ;

process(RST,CLK)
begin
if RST = '1' then
Q_i <= (others => '0') ;
elsif CLK'event and CLK = '1' then
Q_i <= Q_i + D_i ;
end if ;
end process ;

Q1 <= Q_i(1)  ;
Q0 <= Q_i(0)  ;

end v1;


-- 4-bit Accumulator 

-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

entity ACC4 is 
	port (RST,CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic) ;
end ACC4 ;

architecture v1 of ACC4 is 
signal Q_i : std_logic_vector (3 downto 0) ;
signal D_i : std_logic_vector (3 downto 0) ;
begin

D_i <= D3 & D2 & D1 & D0 ;

process(RST,CLK)
begin
if RST = '1' then
Q_i <= (others => '0') ;
elsif CLK'event and CLK = '1' then
Q_i <= Q_i + D_i ;
end if ;
end process ;

Q3 <= Q_i(3)  ;
Q2 <= Q_i(2)  ;
Q1 <= Q_i(1)  ;
Q0 <= Q_i(0)  ;

end v1;


-- 8-bit Accumulator 

-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

entity ACC8 is 
	port (RST,CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic) ;
end ACC8 ;

architecture v1 of ACC8 is 
signal Q_i : unsigned (7 downto 0) ;
signal D_i : unsigned (7 downto 0) ;
begin

D_i <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
process(RST,CLK)
begin
if RST = '1' then
Q_i <= (others => '0') ;
elsif CLK'event and CLK = '1' then
Q_i <= Q_i + D_i ;
end if ;
end process ;

Q7 <= Q_i(7)  ;
Q6 <= Q_i(6)  ;
Q5 <= Q_i(5)  ;
Q4 <= Q_i(4)  ;
Q3 <= Q_i(3)  ;
Q2 <= Q_i(2)  ;
Q1 <= Q_i(1)  ;
Q0 <= Q_i(0)  ;

end v1;


-- 16-bit Adder 
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD16 is 
	port (A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic ;
		A8,A9,A10,A11,A12,A13,A14,A15 : in std_logic ;
		B0,B1,B2,B3,B4,B5,B6,B7 : in std_logic ;
		B8,B9,B10,B11,B12,B13,B14,B15 : in std_logic ;
		S8,S9,S10,S11,S12,S13,S14,S15 : out std_logic ;
		S7,S6,S5,S4,S3,S2,S1,S0 : out std_logic) ;
end ADD16 ;

architecture v1 of ADD16 is 
signal A_i : unsigned (15 downto 0) ;
signal B_i : unsigned (15 downto 0) ;
signal S_i : unsigned (15 downto 0) ;

begin
A_i <= A15 & A14 & A13 & A12 & A11 & A10 & A9 & A8 & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= B15 & B14 & B13 & B12 & B11 & B10 & B9 & B8 & B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0  ;

S_i  <= A_i + B_i ;

S15 <= S_i(15)  ;
S14 <= S_i(14)  ;
S13 <= S_i(13)  ;
S12 <= S_i(12)  ;
S11 <= S_i(11)  ;
S10 <= S_i(10)  ;
S9 <= S_i(9)  ;
S8 <= S_i(8)  ;
S7 <= S_i(7)  ;
S6 <= S_i(6)  ;
S5 <= S_i(5)  ;
S4 <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- 16-bit Adder with carry in and carry out
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD16C is 
	port (CI,A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic ;
		A8,A9,A10,A11,A12,A13,A14,A15 : in std_logic ;
		B0,B1,B2,B3,B4,B5,B6,B7 : in std_logic ;
		B8,B9,B10,B11,B12,B13,B14,B15 : in std_logic ;
		S8,S9,S10,S11,S12,S13,S14,S15 : out std_logic ;
		S7,S6,S5,S4,S3,S2,S1,S0,CO: out std_logic) ;
end ADD16C ;

architecture v1 of ADD16C is 
signal A_i : unsigned (16 downto 0) ;
signal B_i : unsigned (16 downto 0) ;
signal S_i : unsigned (16 downto 0) ;

begin
A_i <= '0' & A15 & A14 & A13 & A12 & A11 & A10 & A9 & A8 & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= '0' & B15 & B14 & B13 & B12 & B11 & B10 & B9 & B8 & B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0  ;

S_i  <= A_i + B_i + CI ;

CO <= S_i(16)  ;
S15 <= S_i(15)  ;
S14 <= S_i(14)  ;
S13 <= S_i(13)  ;
S12 <= S_i(12)  ;
S11 <= S_i(11)  ;
S10 <= S_i(10)  ;
S9 <= S_i(9)  ;
S8 <= S_i(8)  ;
S7 <= S_i(7)  ;
S6 <= S_i(6)  ;
S5 <= S_i(5)  ;
S4 <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- Adder with carry in and carry out
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD1C is 
	port (CI,A0 : in std_logic ;
		B0 : in std_logic ;
		S0,CO: out std_logic) ;
end ADD1C ;

architecture v1 of ADD1C is 
signal A_i : unsigned (1 downto 0) ;
signal B_i : unsigned (1 downto 0) ;
signal S_i : unsigned (1 downto 0) ;

begin
A_i <= '0' & A0  ;
B_i <= '0' & B0  ;

S_i  <= A_i + B_i + CI  ;

CO <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- 2-bit Adder 
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD2 is 
	port (A0,A1 : in std_logic ;
		B0,B1 : in std_logic ;
		S1,S0: out std_logic) ;
end ADD2 ;

architecture v1 of ADD2 is 
signal A_i : unsigned (1 downto 0) ;
signal B_i : unsigned (1 downto 0) ;
signal S_i : unsigned (1 downto 0) ;

begin
A_i <= A1 & A0 ;
B_i <= B1 & B0  ;

S_i  <= A_i + B_i ;

S1 <= S_i(1)  ;
S0 <= S_i(0)  ;

end v1;


-- 2-bit Adder with carry in and carry out
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD2C is 
	port (CI,A0,A1 : in std_logic ;
		B0,B1 : in std_logic ;
		S1,S0,CO: out std_logic) ;
end ADD2C ;

architecture v1 of ADD2C is 
signal A_i : unsigned (2 downto 0) ;
signal B_i : unsigned (2 downto 0) ;
signal S_i : unsigned (2 downto 0) ;

begin
A_i <= '0' & A1 & A0  ;
B_i <= '0' & B1 & B0  ;

S_i  <= A_i + B_i + CI ;

CO <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- 4-bit Adder 

-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD4 is 
	port (A0,A1,A2,A3 : in std_logic ;
		B0,B1,B2,B3 : in std_logic ;
		S3,S2,S1,S0 : out std_logic) ;
end ADD4 ;

architecture v1 of ADD4 is 
signal A_i : unsigned (3 downto 0) ;
signal B_i : unsigned (3 downto 0) ;
signal S_i : unsigned (3 downto 0) ;

begin
A_i <= A3 & A2 & A1 & A0 ;
B_i <= B3 & B2 & B1 & B0  ;

S_i  <= A_i + B_i ;

S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;

end v1;


-- 4-bit Adder with carry in and carry out

-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD4C is 
	port (CI,A0,A1,A2,A3 : in std_logic ;
		B0,B1,B2,B3 : in std_logic ;
		S3,S2,S1,S0,CO: out std_logic) ;
end ADD4C ;

architecture v1 of ADD4C is 
signal A_i : unsigned (4 downto 0) ;
signal B_i : unsigned (4 downto 0) ;
signal S_i : unsigned (4 downto 0) ;

begin
A_i <= '0' & A3 & A2 & A1 & A0   ;
B_i <= '0' & B3 & B2 & B1 & B0  ;

S_i  <= A_i + B_i + CI ;

CO <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- 8-bit Adder 
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD8 is 
	port (A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic ;
		B0,B1,B2,B3,B4,B5,B6,B7 : in std_logic ;
		S7,S6,S5,S4,S3,S2,S1,S0 : out std_logic) ;
end ADD8 ;

architecture v1 of ADD8 is 
signal A_i : unsigned (7 downto 0) ;
signal B_i : unsigned (7 downto 0) ;
signal S_i : unsigned (7 downto 0) ;

begin
A_i <= A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0  ;

S_i  <= A_i + B_i ;

S7 <= S_i(7)  ;
S6 <= S_i(6)  ;
S5 <= S_i(5)  ;
S4 <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;

end v1;


-- 8-bit Adder with carry in and carry out
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity ADD8C is 
	port (CI,A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic ;
		B0,B1,B2,B3,B4,B5,B6,B7 : in std_logic ;
		S7,S6,S5,S4,S3,S2,S1,S0,CO: out std_logic) ;
end ADD8C ;

architecture v1 of ADD8C is 
signal A_i : unsigned (8 downto 0) ;
signal B_i : unsigned (8 downto 0) ;
signal S_i : unsigned (8 downto 0) ;

begin
A_i <= '0' & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0  ;
B_i <= '0' & B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0  ;

S_i  <= A_i + B_i + CI ;

CO <= S_i(8)  ;
S7 <= S_i(7)  ;
S6 <= S_i(6)  ;
S5 <= S_i(5)  ;
S4 <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- 10-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND10 is
	port (  
		IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND10 ;

architecture v1 of AND10 is

begin
Z <= IN9 and IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 11-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND11 is
	port (  
		IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND11 ;

architecture v1 of AND11 is

begin
Z <= IN10 and IN9 and IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 12-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND12 is
	port (  
	IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND12 ;

architecture v1 of AND12 is

begin
Z <= IN11 and IN10 and IN9 and IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 2-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND2 ;

architecture v1 of AND2 is

begin
	Z <= IN1 and IN0  ;

end v1;

-- 2-input AND2  w one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND2B1 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND2B1 ;

architecture v1 of AND2B1 is

begin
	Z <= IN1 and (not IN0)  ;

end v1;

-- 2-input AND w inverted inputs
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND2B2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND2B2 ;

architecture v1 of AND2B2 is

begin
	Z <= ((not IN1) and (not IN0))  ;

end v1;

-- 3-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND3 ;

architecture v1 of AND3 is

begin
	Z <= IN2 and IN1 and IN0  ;

end v1;

-- 3-input AND with 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND3B1 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND3B1 ;

architecture v1 of AND3B1 is

begin
	Z <= (IN2 and IN1 and (not IN0))  ;

end v1;

-- 3-input AND w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND3B2 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND3B2 ;

architecture v1 of AND3B2 is

begin
	Z <= (IN2 and (not IN1) and (not IN0))  ;

end v1;

-- 3-input AND w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND3B3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND3B3 ;

architecture v1 of AND3B3 is

begin
	Z <= ((not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 4-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND4 ;

architecture v1 of AND4 is

begin
	Z <= IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 4-input AND with one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND4B1 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND4B1 ;

architecture v1 of AND4B1 is

begin
	Z <= (IN3 and IN2 and IN1 and (not IN0))  ;

end v1;

-- 4-input AND  with 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND4B2 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND4B2 ;

architecture v1 of AND4B2 is

begin
	Z <= (IN3 and IN2 and (not IN1) and (not IN0))  ;

end v1;

-- 4-input AND w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND4B3 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND4B3 ;

architecture v1 of AND4B3 is

begin
	Z <= (IN3 and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 4-input AND w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND4B4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND4B4 ;

architecture v1 of AND4B4 is

begin
	Z <= ((not IN3) and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 5-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND5 ;

architecture v1 of AND5 is

begin
	Z <= IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 5-input AND w 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND5B1 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND5B1 ;

architecture v1 of AND5B1 is

begin
	Z <= (IN4 and IN3 and IN2 and IN1 and (not IN0))  ;

end v1;

-- 5-input AND w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND5B2 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND5B2 ;

architecture v1 of AND5B2 is

begin
	Z <= (IN4 and IN3 and IN2 and (not IN1) and (not IN0))  ;

end v1;

-- 5-input AND w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND5B3 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND5B3 ;

architecture v1 of AND5B3 is

begin
Z <= (IN4 and IN3 and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 5-input AND w 4 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND5B4 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND5B4 ;

architecture v1 of AND5B4 is

begin
Z <= (IN4 and (not IN3) and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 5-input AND w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND5B5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND5B5 ;

architecture v1 of AND5B5 is

begin
Z <= ((not IN4) and (not IN3) and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 6-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND6 is
	port (  
		IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND6 ;

architecture v1 of AND6 is

begin
	Z <= IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 7-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND7 is
	port (  
		IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND7 ;

architecture v1 of AND7 is

begin
	Z <= IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 8-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND8 ;

architecture v1 of AND8 is

begin
Z <= IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- 9-input AND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity AND9 is
	port (  
		IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end AND9 ;

architecture v1 of AND9 is

begin
Z <= IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0  ;

end v1;

-- Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity BUF is
	port (  
		IN0 : in std_logic ;
		Z : out std_logic
	) ;
end BUF ;

architecture v1 of BUF is

begin
	Z <= IN0  ;

end v1;

-- 16-bit Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity BUF16 is
	port (  
		IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8,
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic
	) ;
end BUF16 ;

architecture v1 of BUF16 is

begin
	Z15 <= IN15  ;
	Z14 <= IN14  ;
	Z13 <= IN13  ;
	Z12 <= IN12  ;
	Z11 <= IN11  ;
	Z10 <= IN10  ;
	Z9 <= IN9  ;
	Z8 <= IN8  ;
	Z7 <= IN7  ;
	Z6 <= IN6  ;
	Z5 <= IN5  ;
	Z4 <= IN4  ;
	Z3 <= IN3  ;
	Z2 <= IN2  ;
	Z1 <= IN1  ;
	Z0 <= IN0  ;

end v1;

-- 2-bit Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity BUF2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z1,Z0 : out std_logic
	) ;
end BUF2 ;

architecture v1 of BUF2 is

begin
	Z1 <= IN1  ;
	Z0 <= IN0  ;

end v1;

-- 4-bit Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity BUF4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z3,Z2,Z1,Z0 : out std_logic
	) ;
end BUF4 ;

architecture v1 of BUF4 is

begin
	Z3 <= IN3  ;
	Z2 <= IN2  ;
	Z1 <= IN1  ;
	Z0 <= IN0  ;

end v1;

-- 8-bit Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity BUF8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic
	) ;
end BUF8 ;

architecture v1 of BUF8 is

begin
	Z7 <= IN7  ;
	Z6 <= IN6  ;
	Z5 <= IN5  ;
	Z4 <= IN4  ;
	Z3 <= IN3  ;
	Z2 <= IN2  ;
	Z1 <= IN1  ;
	Z0 <= IN0  ;

end v1;

-- 16-bit Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16D is
    port( CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16D ;

architecture v1 of CNTB16D is
signal count_i : unsigned (15 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DE is
    port(CE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DE ;

architecture v1 of CNTB16DE is
signal count_i : unsigned (15 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DL is
    port( CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DL ;

architecture v1 of CNTB16DL is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DLE is
    port(CE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DLE ;

architecture v1 of CNTB16DLE is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DLR is
    port( RST,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DLR ;

architecture v1 of CNTB16DLR is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(RST,CLK,LD,data_i,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DLRE is
    port( RST,CE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DLRE ;

architecture v1 of CNTB16DLRE is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(RST,CLK,LD,data_i,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DLS is
    port( PRE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DLS ;

architecture v1 of CNTB16DLS is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(PRE,CLK,LD,data_i,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DLSE is
    port( PRE,CE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DLSE ;

architecture v1 of CNTB16DLSE is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(PRE,CLK,LD,data_i,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DR is
    port( RST,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DR ;

architecture v1 of CNTB16DR is
signal count_i : unsigned (15 downto 0) ;
begin

process(RST,CLK,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DRE is
    port( RST,CE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DRE ;

architecture v1 of CNTB16DRE is
signal count_i : unsigned (15 downto 0) ;
begin

process(RST,CLK,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DS is
    port( PRE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DS ;

architecture v1 of CNTB16DS is
signal count_i : unsigned (15 downto 0) ;
begin

process(PRE,CLK,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16DSE is
    port( PRE,CE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16DSE ;

architecture v1 of CNTB16DSE is
signal count_i : unsigned (15 downto 0) ;
begin

process(PRE,CLK,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16U is
    port( CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16U ;

architecture v1 of CNTB16U is
signal count_i : unsigned (15 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16UE is
    port(CE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16UE ;

architecture v1 of CNTB16UE is
signal count_i : unsigned (15 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16UL is
    port( CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16UL ;

architecture v1 of CNTB16UL is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16ULE is
    port(CE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16ULE ;

architecture v1 of CNTB16ULE is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16ULR is
    port( RST,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16ULR ;

architecture v1 of CNTB16ULR is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(RST,CLK,LD,data_i,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16ULRE is
    port( RST,CE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16ULRE ;

architecture v1 of CNTB16ULRE is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(RST,CLK,LD,data_i,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16ULS is
    port( PRE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16ULS ;

architecture v1 of CNTB16ULS is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(PRE,CLK,LD,data_i,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Loadable Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16ULSE is
    port( PRE,CE,CLK,LD : in std_logic;
        D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16ULSE ;

architecture v1 of CNTB16ULSE is
signal data,data_i,count_i : unsigned (15 downto 0) ;
begin

data <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 &
D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(PRE,CLK,LD,data_i,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16UR is
    port( RST,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16UR ;

architecture v1 of CNTB16UR is
signal count_i : unsigned (15 downto 0) ;
begin

process(RST,CLK,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16URE is
    port( RST,CE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16URE ;

architecture v1 of CNTB16URE is
signal count_i : unsigned (15 downto 0) ;
begin

process(RST,CLK,count_i)   
begin
if RST = '1' then
count_i <= x"0000" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16US is
    port( PRE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16US ;

architecture v1 of CNTB16US is
signal count_i : unsigned (15 downto 0) ;
begin

process(PRE,CLK,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 16-bit Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB16USE is
    port( PRE,CE,CLK : in std_logic;
        Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
        Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB16USE ;

architecture v1 of CNTB16USE is
signal count_i : unsigned (15 downto 0) ;
begin

process(PRE,CLK,count_i)   
begin
if PRE = '1' then
count_i <= x"FFFF" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q15 <= count_i(15)  ;
Q14 <= count_i(14)  ;
Q13 <= count_i(13)  ;
Q12 <= count_i(12)  ;
Q11 <= count_i(11)  ;
Q10 <= count_i(10)  ;
Q9 <= count_i(9)  ;
Q8 <= count_i(8)  ;
Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2D is
    port( CLK : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2D ;

architecture v1 of CNTB2D is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DE is
    port( CLK,CE : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2DE ;

architecture v1 of CNTB2DE is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,CE,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DL is
    port( CLK,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2DL ;

architecture v1 of CNTB2DL is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DLE is
    port( CLK,CE,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2DLE ;

architecture v1 of CNTB2DLE is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DLR is
    port( CLK,RST,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2DLR ;

architecture v1 of CNTB2DLR is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DLRE is
    port( CLK,CE,RST,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2DLRE ;

architecture v1 of CNTB2DLRE is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DLS is
    port( CLK,PRE,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2DLS ;

architecture v1 of CNTB2DLS is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Down Binary Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DLSE is
    port( CLK,CE,PRE,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2DLSE ;

architecture v1 of CNTB2DLSE is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DR is
    port( CLK,RST : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2DR ;

architecture v1 of CNTB2DR is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DRE is
    port( CLK,CE,RST : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2DRE ;

architecture v1 of CNTB2DRE is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DS is
    port( CLK,PRE : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2DS ;

architecture v1 of CNTB2DS is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2DSE is
    port( CLK,CE,PRE : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2DSE ;

architecture v1 of CNTB2DSE is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2U is
    port( CLK : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2U ;

architecture v1 of CNTB2U is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2UE is
    port( CLK,CE : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2UE ;

architecture v1 of CNTB2UE is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,CE,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2UL is
    port( CLK,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2UL ;

architecture v1 of CNTB2UL is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2ULE is
    port( CLK,CE,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2ULE ;

architecture v1 of CNTB2ULE is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2ULR is
    port( CLK,RST,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2ULR ;

architecture v1 of CNTB2ULR is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2ULRE is
    port( CLK,CE,RST,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2ULRE ;

architecture v1 of CNTB2ULRE is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2ULS is
    port( CLK,PRE,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2ULS ;

architecture v1 of CNTB2ULS is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Loadable Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2ULSE is
    port( CLK,CE,PRE,LD : in std_logic;
          D1,D0 : in std_logic ;
          Q1,Q0 : out std_logic
) ;
end CNTB2ULSE ;

architecture v1 of CNTB2ULSE is
signal data,data_i,count_i : unsigned (1 downto 0) ;
begin

data <= D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2UR is
    port( CLK,RST : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2UR ;

architecture v1 of CNTB2UR is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2URE is
    port( CLK,CE,RST : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2URE ;

architecture v1 of CNTB2URE is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= "00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2US is
    port( CLK,PRE : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2US ;

architecture v1 of CNTB2US is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 2-bit Binary Up  Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB2USE is
    port( CLK,CE,PRE : in std_logic;
          Q1,Q0 : out std_logic
) ;
end CNTB2USE ;

architecture v1 of CNTB2USE is
signal count_i : unsigned (1 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= "11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4D is
    port( CLK : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4D ;

architecture v1 of CNTB4D is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DE is
    port( CLK,CE: in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DE ;

architecture v1 of CNTB4DE is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DL is
    port( CLK,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DL ;

architecture v1 of CNTB4DL is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DLE is
    port( CLK,CE,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DLE ;

architecture v1 of CNTB4DLE is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DLR is
    port( CLK,RST,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DLR ;

architecture v1 of CNTB4DLR is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DLRE is
    port( CLK,CE,RST,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DLRE ;

architecture v1 of CNTB4DLRE is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DLS is
    port( CLK,PRE,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DLS ;

architecture v1 of CNTB4DLS is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DLSE is
    port( CLK,CE,PRE,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DLSE ;

architecture v1 of CNTB4DLSE is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DR is
    port( CLK,RST : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DR ;

architecture v1 of CNTB4DR is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DRE is
    port( CLK,CE,RST : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DRE ;

architecture v1 of CNTB4DRE is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DS is
    port( CLK,PRE : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DS ;

architecture v1 of CNTB4DS is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4DSE is
    port( CLK,CE,PRE : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4DSE ;

architecture v1 of CNTB4DSE is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4U is
    port( CLK : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4U ;

architecture v1 of CNTB4U is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4UE is
    port( CLK,CE: in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4UE ;

architecture v1 of CNTB4UE is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4UL is
    port( CLK,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4UL ;

architecture v1 of CNTB4UL is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4ULE is
    port( CLK,CE,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4ULE ;

architecture v1 of CNTB4ULE is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4ULR is
    port( CLK,RST,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4ULR ;

architecture v1 of CNTB4ULR is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4ULRE is
    port( CLK,CE,RST,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4ULRE ;

architecture v1 of CNTB4ULRE is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4ULS is
    port( CLK,PRE,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4ULS ;

architecture v1 of CNTB4ULS is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Loadable Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4ULSE is
    port( CLK,CE,PRE,LD : in std_logic;
          D3,D2,D1,D0 : in std_logic ;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4ULSE ;

architecture v1 of CNTB4ULSE is
signal data,data_i,count_i : unsigned (3 downto 0) ;
begin

data <= D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4UR is
    port( CLK,RST : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4UR ;

architecture v1 of CNTB4UR is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4URE is
    port( CLK,CE,RST : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4URE ;

architecture v1 of CNTB4URE is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"0" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4US is
    port( CLK,PRE : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4US ;

architecture v1 of CNTB4US is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 4-bit Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB4USE is
    port( CLK,CE,PRE : in std_logic;
          Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB4USE ;

architecture v1 of CNTB4USE is
signal count_i : unsigned (3 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"F" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8D is
    port( CLK : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8D ;

architecture v1 of CNTB8D is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DE is
    port( CLK,CE: in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DE ;

architecture v1 of CNTB8DE is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then 
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Down Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DL is
    port( CLK,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DL ;

architecture v1 of CNTB8DL is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Down Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DLE is
    port( CLK,CE,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DLE ;

architecture v1 of CNTB8DLE is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then 
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DLR is
    port( CLK,RST,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DLR ;

architecture v1 of CNTB8DLR is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DLRE is
    port( CLK,CE,RST,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DLRE ;

architecture v1 of CNTB8DLRE is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DLS is
    port( CLK,PRE,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DLS ;

architecture v1 of CNTB8DLS is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"11" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DLSE is
    port( CLK,CE,PRE,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DLSE ;

architecture v1 of CNTB8DLSE is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i - "1" ;
end if;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Down Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DR is
    port( CLK,RST : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DR ;

architecture v1 of CNTB8DR is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Down Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DRE is
    port( CLK,CE,RST : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DRE ;

architecture v1 of CNTB8DRE is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Down Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DS is
    port( CLK,PRE : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DS ;

architecture v1 of CNTB8DS is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"FF" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i - "1" ;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Down Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8DSE is
    port( CLK,CE,PRE : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8DSE ;

architecture v1 of CNTB8DSE is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
count_i <= count_i - "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8U is
    port( CLK : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8U ;

architecture v1 of CNTB8U is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8UE is
    port( CLK,CE: in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8UE ;

architecture v1 of CNTB8UE is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then 
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Up Counter 
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8UL is
    port( CLK,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8UL ;

architecture v1 of CNTB8UL is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Up Counter 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8ULE is
    port( CLK,CE,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8ULE ;

architecture v1 of CNTB8ULE is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,LD,data_i,count_i)   
begin
if (CLK = '1' and CLK'event) then
if CE = '1' then 
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8ULR is
    port( CLK,RST,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8ULR ;

architecture v1 of CNTB8ULR is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8ULRE is
    port( CLK,CE,RST,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8ULRE ;

architecture v1 of CNTB8ULRE is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,RST,LD,data_i,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8ULS is
    port( CLK,PRE,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8ULS ;

architecture v1 of CNTB8ULS is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"11" ;
elsif (CLK = '1' and CLK'event) then
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Loadable Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8ULSE is
    port( CLK,CE,PRE,LD : in std_logic;
          D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8ULSE ;

architecture v1 of CNTB8ULSE is
signal data,data_i,count_i : unsigned (7 downto 0) ;
begin

data <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;
data_i <= unsigned(data) ;

process(CLK,PRE,LD,data_i,count_i)   
begin
if (PRE='1') then
count_i <= x"11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
if (LD='1') then
count_i <= data_i ;
else
count_i <= count_i + "1" ;
end if;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Up Counter with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8UR is
    port( CLK,RST : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8UR ;

architecture v1 of CNTB8UR is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Up Counter 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8URE is
    port( CLK,CE,RST : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8URE ;

architecture v1 of CNTB8URE is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,RST,count_i)   
begin
if (RST='1') then
count_i <= x"00" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Up Counter with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8US is
    port( CLK,PRE : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8US ;

architecture v1 of CNTB8US is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"FF" ;
elsif (CLK = '1' and CLK'event) then
count_i <= count_i + "1" ;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- 8-bit Binary Up Counter 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CNTB8USE is
    port( CLK,CE,PRE : in std_logic;
          Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
) ;
end CNTB8USE ;

architecture v1 of CNTB8USE is
signal count_i : unsigned (7 downto 0) ;
begin

process(CLK,PRE,count_i)   
begin
if (PRE='1') then
count_i <= x"11" ;
elsif (CLK = '1' and CLK'event) then
if CE = '1' then 
count_i <= count_i + "1" ;
end if;
end if;
end process;

Q7 <= count_i(7)  ;
Q6 <= count_i(6)  ;
Q5 <= count_i(5)  ;
Q4 <= count_i(4)  ;
Q3 <= count_i(3)  ;
Q2 <= count_i(2)  ;
Q1 <= count_i(1)  ;
Q0 <= count_i(0)  ;

end v1;

-- Philips CPLD Applications
-- 16-bit Equality comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity COMP16 is
    port(A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0 :in std_logic ;
	B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0: in std_logic ;
         EQ: out  std_logic);

end COMP16;

architecture v1 of COMP16 is
signal A_i,B_i : std_logic_vector (15 downto 0) ;
begin
A_i <= A15 & A14 & A13 & A12 & A11 & A10 & A9 & A8 & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;          

B_i <= B15 & B14 & B13 & B12 & B11 & B10 & B9 & B8 & B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0 ;

    EQ <= '1'  when (A_i = B_i) else '0';

end v1;

-- Philips CPLD Applications
-- 2-bit Equality comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity COMP2 is
    port(A1,A0,B1,B0: in std_logic ;
         EQ: out  std_logic);

end COMP2;

architecture v1 of COMP2 is
signal A_i,B_i : std_logic_vector (1 downto 0) ;
begin
A_i <= A1 & A0 ;
B_i <= B1 & B0 ;

    EQ <= '1'  when (A_i = B_i) else '0';

end v1;

-- Philips CPLD Applications
-- 4-bit Equality comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity COMP4 is
    port(A3,A2,A1,A0,B3,B2,B1,B0: in std_logic ;
         EQ: out  std_logic);

end COMP4;

architecture v1 of COMP4 is
signal A_i,B_i : std_logic_vector (3 downto 0) ;
begin
A_i <= A3 & A2 & A1 & A0 ;
B_i <= B3 & B2 & B1 & B0 ;

    EQ <= '1'  when (A_i = B_i) else '0';

end v1;

-- Philips CPLD Applications
-- 8-bit Equality comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity COMP8 is
    port(A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0: in std_logic ;
         EQ: out  std_logic);

end COMP8;

architecture v1 of COMP8 is
signal A_i,B_i : std_logic_vector (7 downto 0) ;
begin
A_i <= A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0 ;

    EQ <= '1'  when (A_i = B_i) else '0';

end v1;

-- Done by VHDL I-Team
-- 1 to 2-bit Decoder
-- Sep 25, 2000

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC12 is
	port (  
		IN0 : in std_logic ;
		Z1,Z0 : out std_logic
	) ;
end DEC12 ;

architecture v1 of DEC12 is

begin
process(IN0)
begin
Z1 <= IN0; 
Z0 <= not IN0;
end process ;
 
end v1;


-- Done by VHDL I-Team
-- 1 to 2-bit Decoder with Enable
-- sep 25, 2000

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC12E is
	port (  
		E,IN0 : in std_logic ;
		Z1,Z0 : out std_logic
	) ;
end DEC12E ;

architecture v1 of DEC12E is

begin
process(E,IN0)
begin
Z1 <= E and IN0  ;
Z0 <= E and (not IN0)  ;
end process ;
 
end v1;



-- 2 to 4-bit Decoder
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC24 is
	port (  
		IN1,IN0 : in std_logic ;
		Z3,Z2,Z1,Z0 : out std_logic
	) ;
end DEC24 ;

architecture v1 of DEC24 is

begin
process(IN1,IN0)
begin
Z3 <= IN1 and IN0  ;
Z2 <= IN1 and (not IN0)  ;
Z1 <= (not IN1) and IN0  ;
Z0 <= (not IN1) and (not IN0)  ;
end process ;
 
end v1;

-- 2 to 4-bit Decoder with Enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC24E is
	port (  
		E,IN1,IN0 : in std_logic ;
		Z3,Z2,Z1,Z0 : out std_logic
	) ;
end DEC24E ;

architecture v1 of DEC24E is

begin
process(E,IN1,IN0)
begin
Z3 <= E and IN1 and IN0  ;
Z2 <= E and IN1 and (not IN0)  ;
Z1 <= E and (not IN1) and IN0  ;
Z0 <= E and (not IN1) and (not IN0)  ;
end process ;
 
end v1;

-- 3 to 8-bit Decoder
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC38 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic
	) ;
end DEC38 ;

architecture v1 of DEC38 is

begin
process(IN2,IN1,IN0)
begin
Z7 <= IN2 and IN1 and IN0  ;
Z6 <= IN2 and IN1 and (not IN0)  ;
Z5 <= IN2 and (not IN1) and IN0  ;
Z4 <= IN2 and (not IN1) and (not IN0)  ;
Z3 <= (not IN2) and IN1 and IN0  ;
Z2 <= (not IN2) and IN1 and (not IN0)  ;
Z1 <= (not IN2) and (not IN1) and IN0  ;
Z0 <= (not IN2) and (not IN1) and (not IN0)  ;
end process ;
 
end v1;

-- 3 to 8-bit Decoder with Enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC38E is
	port (  
		E,IN2,IN1,IN0 : in std_logic ;
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic
	) ;
end DEC38E ;

architecture v1 of DEC38E is

begin
process(E,IN2,IN1,IN0)
begin
Z7 <= E and IN2 and IN1 and IN0  ;
Z6 <= E and IN2 and IN1 and (not IN0)  ;
Z5 <= E and IN2 and (not IN1) and IN0  ;
Z4 <= E and IN2 and (not IN1) and (not IN0)  ;
Z3 <= E and (not IN2) and IN1 and IN0  ;
Z2 <= E and (not IN2) and IN1 and (not IN0)  ;
Z1 <= E and (not IN2) and (not IN1) and IN0  ;
Z0 <= E and (not IN2) and (not IN1) and (not IN0)  ;
end process ;
 
end v1;

-- 4 to 16-bit Decoder
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC416 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic ;
		Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8 : out std_logic 
	) ;
end DEC416 ;

architecture v1 of DEC416 is

begin
process(IN3,IN2,IN1,IN0)
begin
Z15 <= IN3 and IN2 and IN1 and IN0  ;
Z14 <= IN3 and IN2 and IN1 and (not IN0)  ;
Z13 <= IN3 and IN2 and (not IN1) and IN0  ;
Z12 <= IN3 and IN2 and (not IN1) and (not IN0)  ;
Z11 <= IN3 and (not IN2) and IN1 and IN0  ;
Z10 <= IN3 and (not IN2) and IN1 and (not IN0)  ;
Z9 <= IN3 and (not IN2) and (not IN1) and IN0  ;
Z8 <= IN3 and (not IN2) and (not IN1) and (not IN0)  ;
Z7 <= (not IN3) and IN2 and IN1 and IN0  ;
Z6 <= (not IN3) and IN2 and IN1 and (not IN0)  ;
Z5 <= (not IN3) and IN2 and (not IN1) and IN0  ;
Z4 <= (not IN3) and IN2 and (not IN1) and (not IN0)  ;
Z3 <= (not IN3) and (not IN2) and IN1 and IN0  ;
Z2 <= (not IN3) and (not IN2) and IN1 and (not IN0)  ;
Z1 <= (not IN3) and (not IN2) and (not IN1) and IN0  ;
Z0 <= (not IN3) and (not IN2) and (not IN1) and (not IN0)  ;
end process ;
 
end v1;

-- 4 to 16-bit Decoder with Enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity DEC416E is
	port (  
		E,IN3,IN2,IN1,IN0 : in std_logic ;
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic ;
		Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8 : out std_logic 
	) ;
end DEC416E ;

architecture v1 of DEC416E is

begin
process(E,IN3,IN2,IN1,IN0)
begin
Z15 <= E and IN3 and IN2 and IN1 and IN0  ;
Z14 <= E and IN3 and IN2 and IN1 and (not IN0)  ;
Z13 <= E and IN3 and IN2 and (not IN1) and IN0  ;
Z12 <= E and IN3 and IN2 and (not IN1) and (not IN0)  ;
Z11 <= E and IN3 and (not IN2) and IN1 and IN0  ;
Z10 <= E and IN3 and (not IN2) and IN1 and (not IN0)  ;
Z9 <= E and IN3 and (not IN2) and (not IN1) and IN0  ;
Z8 <= E and IN3 and (not IN2) and (not IN1) and (not IN0)  ;
Z7 <= E and (not IN3) and IN2 and IN1 and IN0  ;
Z6 <= E and (not IN3) and IN2 and IN1 and (not IN0)  ;
Z5 <= E and (not IN3) and IN2 and (not IN1) and IN0  ;
Z4 <= E and (not IN3) and IN2 and (not IN1) and (not IN0)  ;
Z3 <= E and (not IN3) and (not IN2) and IN1 and IN0  ;
Z2 <= E and (not IN3) and (not IN2) and IN1 and (not IN0)  ;
Z1 <= E and (not IN3) and (not IN2) and (not IN1) and IN0  ;
Z0 <= E and (not IN3) and (not IN2) and (not IN1) and (not IN0)  ;
end process ;
 
end v1;

-- D Flip Flop
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity DFF is
port (CLK : in std_logic ;
	D : in std_logic ;
	Q : out std_logic  ;
	QN : out std_logic 
	) ;
end DFF ;

architecture v1 of DFF is 
signal n1 : std_logic ;
begin
process (CLK)
begin
if (CLK'event and CLK='1') then
n1 <= D  ;
end if ;
end process ;
Q <= n1  ;
QN <= not n1  ;
end v1;


-- D Flip Flop w clock enable
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity DFFE is
port (CE : in std_logic ;
	CLK : in std_logic ;
	D : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end DFFE ;

architecture v1 of DFFE is 
signal n1 : std_logic ;
begin
process (CE,CLK)
begin
if (CLK'event and CLK='1') then
if CE = '1' then
n1 <= D  ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;


-- D Flip Flop w asynchronous reset
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity DFFR is
port (RST : in std_logic ;
	CLK : in std_logic ;
	D : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end DFFR ;

architecture v1 of DFFR is 
signal n1 : std_logic ;
begin
process (RST,CLK)
begin
if RST = '1' then
n1 <= '0'  ;
elsif (CLK'event and CLK='1') then
n1 <= D  ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;


-- D Flip Flop w asynchronous reset and clock enable
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity DFFRE is
port (RST : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	D : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end DFFRE ;

architecture v1 of DFFRE is 
signal n1 : std_logic ;
begin
process (RST,CLK)
begin
if RST = '1' then
n1 <= '0'  ;
elsif (CLK'event and CLK='1') then
if CE = '1' then
n1 <= D  ;
end if ;
end if ;
end process ;

Q <= n1   ;
QN <= not n1   ;

end v1;


-- D Flip Flop w asynchronous reset and synchronous set

library ieee ;
use ieee.std_logic_1164.all ;

entity DFFRS is
port (RST : in std_logic ;
	PRE : in std_logic ;
	CLK : in std_logic ;
	D : in std_logic ;
	Q : inout std_logic ;
	QN : out std_logic 
	) ;
end DFFRS ;

architecture v1 of DFFRS is 
begin
process (RST,CLK)
begin
if RST = '1' then
Q <= '0'  ;
elsif (CLK'event and CLK='1') then
if PRE = '1' then
Q <= '1'  ;
else 
Q <= D ;
end if ;
end if ;
end process ;

QN <= not Q ;

end v1;


-- D Flip Flop w asynchronous set
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity DFFS is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	D : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end DFFS ;

architecture v1 of DFFS is 
signal n1 : std_logic ;
begin
process (PRE,CLK)
begin
if PRE = '1' then
n1 <= '1'  ;
elsif (CLK'event and CLK='1') then
n1 <= D  ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;


-- D Flip Flop w asynchronous set and clock enable
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity DFFSE is
port (PRE : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	D : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end DFFSE ;

architecture v1 of DFFSE is 
signal n1 : std_logic ;
begin
process (PRE,CLK)
begin
if PRE = '1' then
n1 <= '1'  ;
elsif (CLK'event and CLK='1') then
if CE = '1' then
n1 <= D  ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;


-- Philips CPLD Applications
-- Sep 11, 1998
-- Ground

library ieee ;
use ieee.std_logic_1164.all ;

entity GND is port (
O : out std_logic
) ;
end GND ;

architecture v1 of GND is
begin
O <= '0' ;
end v1;


-- Inverter
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity INV is
	port (  
		IN0 : in std_logic ;
		Z : out std_logic
	) ;
end INV ;

architecture v1 of INV is

begin
	Z <= not IN0  ;

end v1;

-- 16-bit Inverter
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity INV16 is
	port (  
		IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8,
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic
	) ;
end INV16 ;

architecture v1 of INV16 is

begin
	Z15 <= not IN15  ;
	Z14 <= not IN14  ;
	Z13 <= not IN13  ;
	Z12 <= not IN12  ;
	Z11 <= not IN11  ;
	Z10 <= not IN10  ;
	Z9 <= not IN9  ;
	Z8 <= not IN8  ;
	Z7 <= not IN7  ;
	Z6 <= not IN6  ;
	Z5 <= not IN5  ;
	Z4 <= not IN4  ;
	Z3 <= not IN3  ;
	Z2 <= not IN2  ;
	Z1 <= not IN1  ;
	Z0 <= not IN0  ;

end v1;

-- 2-bit Inverter
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity INV2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z1,Z0 : out std_logic
	) ;
end INV2 ;

architecture v1 of INV2 is

begin
	Z1 <= not IN1  ;
	Z0 <= not IN0  ;

end v1;

-- 4-bit Inverter
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity INV4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z3,Z2,Z1,Z0 : out std_logic
	) ;
end INV4 ;

architecture v1 of INV4 is

begin
	Z3 <= not IN3  ;
	Z2 <= not IN2  ;
	Z1 <= not IN1  ;
	Z0 <= not IN0  ;

end v1;

-- 8-bit Inverter
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity INV8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0 : out std_logic
	) ;
end INV8 ;

architecture v1 of INV8 is

begin
	Z7 <= not IN7  ;
	Z6 <= not IN6  ;
	Z5 <= not IN5  ;
	Z4 <= not IN4  ;
	Z3 <= not IN3  ;
	Z2 <= not IN2  ;
	Z1 <= not IN1  ;
	Z0 <= not IN0  ;

end v1;

-- JK Flip flop
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;

entity JKFF IS PORT(
J    : IN   std_logic;
K    : IN   std_logic;
CLK  : IN   std_logic;
Q    : OUT  std_logic;
QN   : OUT std_logic ) ;
END JKFF;

architecture v1 of JKFF is
signal n1: std_logic;
begin
process(CLK,J,K) 
begin
if CLK = '1' and CLK'event then
if (J = '1') and (K = '1') then
n1 <= not n1 ;
elsif K = '1' then
n1 <= '0' ;
elsif J = '1' then
n1 <= '1' ;
end if ;
end if ;
end process ;
Q <= n1  ;
QN <= not n1  ;
end v1;


-- JK Flip Flop with clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;

entity JKFFE IS PORT(
	CE,CLK,J,K : in   std_logic;
	Q    : out  std_logic;
	QN    : out  std_logic);
END JKFFE;

architecture v1 of JKFFE is
signal n1: std_logic;
begin
process(CE,CLK,J,K) 
begin
if CE = '1' then
if CLK = '1' and CLK'event then
if (J = '1') and (K = '1') then
n1 <= not n1 ;
elsif K = '1' then
n1 <= '0' ;
elsif J = '1' then
n1 <= '1' ;
end if ;
end if ;
end if ;
end process ;

Q <= n1 ;
QN <= not n1  ;
end v1;


-- JK Flip Flop with asynchronous reset
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;

entity JKFFR IS PORT(
	RST,CLK,J,K : in   std_logic;
	Q    : out  std_logic;
	QN    : out  std_logic);
END JKFFR;

architecture v1 of JKFFR is
signal n1: std_logic;
begin
process(RST,CLK,J,K) 
begin
if RST = '1' then
n1 <= '0' ;
elsif CLK = '1' and CLK'event then
if (J = '1') and (K = '1') then
n1 <= not n1 ;
elsif K = '1' then
n1 <= '0' ;
elsif J = '1' then
n1 <= '1' ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;


-- JK Flip Flop with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;

entity JKFFRE IS PORT(
	RST,CE,CLK,J,K : in   std_logic;
	Q    : out  std_logic;
	QN    : out  std_logic);
END JKFFRE;

architecture v1 of JKFFRE is
signal n1: std_logic;
begin
process(RST,CLK,J,K) 
begin
if RST = '1' then
n1 <= '0' ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
if (J = '1') and (K = '1') then
n1 <= not n1 ;
elsif K = '1' then
n1 <= '0' ;
elsif J = '1' then
n1 <= '1' ;
end if ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;
end v1;


-- JK Flip Flop with asynchronous set
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;

entity JKFFS IS PORT(
	PRE,CLK,J,K : in   std_logic;
	Q    : out  std_logic;
	QN    : out  std_logic);
END JKFFS;

architecture v1 of JKFFS is
signal n1: std_logic;
begin
process(PRE,CLK,J,K) 
begin
if PRE = '1' then
n1 <= '1' ;
elsif CLK = '1' and CLK'event then
if (J = '1') and (K = '1') then
n1 <= not n1 ;
elsif K = '1' then
n1 <= '0' ;
elsif J = '1' then
n1 <= '1' ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;
end v1;


-- JK Flip Flop with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26,1998

library ieee;
use ieee.std_logic_1164.all;

entity JKFFSE IS PORT(
	PRE,CE,CLK,J,K : in   std_logic;
	Q    : out  std_logic;
	QN    : out  std_logic);
END JKFFSE;

architecture v1 of JKFFSE is
signal n1: std_logic;
begin
process(PRE,CLK,J,K) 
begin
if PRE = '1' then
n1 <= '1' ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
if (J = '1') and (K = '1') then
n1 <= not n1 ;
elsif K = '1' then
n1 <= '0' ;
elsif J = '1' then
n1 <= '1' ;
end if ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1   ;
end v1;


-- Philips CPLD Applications
-- Latch
-- 31 Oct 1997

library ieee ;
use ieee.std_logic_1164.all ;

entity LAT is
port (E,D : in std_logic ;
	Q : inout std_logic
) ;
end LAT ;

architecture v1 of LAT is 
begin 

Q <= (D and E) or (Q and not E) or (D and Q)  ;

end v1;

-- Philips CPLD Applications
-- 16-input Latch
-- 31 Oct 1997

library ieee ;
use ieee.std_logic_1164.all ;

entity LAT16 is
port (E,D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : inout std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : inout std_logic
) ;
end LAT16 ;

architecture v1 of LAT16 is 
begin 

Q15 <= (D15 and E) or (Q15 and not E) or (D15 and Q15)  ;
Q14 <= (D14 and E) or (Q14 and not E) or (D14 and Q14)  ;
Q13 <= (D13 and E) or (Q13 and not E) or (D13 and Q13)  ;
Q12 <= (D12 and E) or (Q12 and not E) or (D12 and Q12)  ;
Q11 <= (D11 and E) or (Q11 and not E) or (D11 and Q11)  ;
Q10 <= (D10 and E) or (Q10 and not E) or (D10 and Q10)  ;
Q9 <= (D9 and E) or (Q9 and not E) or (D9 and Q9)  ;
Q8 <= (D8 and E) or (Q8 and not E) or (D8 and Q8)  ;
Q7 <= (D7 and E) or (Q7 and not E) or (D7 and Q7)  ;
Q6 <= (D6 and E) or (Q6 and not E) or (D6 and Q6)  ;
Q5 <= (D5 and E) or (Q5 and not E) or (D5 and Q5)  ;
Q4 <= (D4 and E) or (Q4 and not E) or (D4 and Q4)  ;
Q3 <= (D3 and E) or (Q3 and not E) or (D3 and Q3)  ;
Q2 <= (D2 and E) or (Q2 and not E) or (D2 and Q2)  ;
Q1 <= (D1 and E) or (Q1 and not E) or (D1 and Q1)  ;
Q0 <= (D0 and E) or (Q0 and not E) or (D0 and Q0)  ;

end v1;

-- Philips CPLD Applications
-- 2-input Latch
-- 31 Oct 1997

library ieee ;
use ieee.std_logic_1164.all ;

entity LAT2 is
port (E,D1,D0 : in std_logic ;
	Q1,Q0 : inout std_logic
) ;
end LAT2 ;

architecture v1 of LAT2 is 
begin 

Q1 <= (D1 and E) or (Q1 and not E) or (D1 and Q1)  ;
Q0 <= (D0 and E) or (Q0 and not E) or (D0 and Q0)  ;

end v1;

-- Philips CPLD Applications
-- 4-input Latch
-- 31 Oct 1997

library ieee ;
use ieee.std_logic_1164.all ;

entity LAT4 is
port (E,D3,D2,D1,D0 : in std_logic ;
	Q3,Q2,Q1,Q0 : inout std_logic
) ;
end LAT4 ;

architecture v1 of LAT4 is 
begin 

Q3 <= (D3 and E) or (Q3 and not E) or (D3 and Q3)  ;
Q2 <= (D2 and E) or (Q2 and not E) or (D2 and Q2)  ;
Q1 <= (D1 and E) or (Q1 and not E) or (D1 and Q1)  ;
Q0 <= (D0 and E) or (Q0 and not E) or (D0 and Q0)  ;

end v1;

-- Philips CPLD Applications
-- 8-input Latch
-- 31 Oct 1997

library ieee ;
use ieee.std_logic_1164.all ;

entity LAT8 is
port (E,D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : inout std_logic
) ;
end LAT8 ;

architecture v1 of LAT8 is 
begin 

Q7 <= (D7 and E) or (Q7 and not E) or (D7 and Q7)  ;
Q6 <= (D6 and E) or (Q6 and not E) or (D6 and Q6)  ;
Q5 <= (D5 and E) or (Q5 and not E) or (D5 and Q5)  ;
Q4 <= (D4 and E) or (Q4 and not E) or (D4 and Q4)  ;
Q3 <= (D3 and E) or (Q3 and not E) or (D3 and Q3)  ;
Q2 <= (D2 and E) or (Q2 and not E) or (D2 and Q2)  ;
Q1 <= (D1 and E) or (Q1 and not E) or (D1 and Q1)  ;
Q0 <= (D0 and E) or (Q0 and not E) or (D0 and Q0)  ;

end v1;

-- Philips CPLD Applications
-- Latch with reset
-- 31 Oct 1997

library ieee ;
use ieee.std_logic_1164.all ;

entity LATR is
port (E,D,RST : in std_logic ;
	Q : inout std_logic
) ;
end LATR ;

architecture v1 of LATR is 
begin 

Q <= (((D and E) or (Q and not E) or (D and Q)) and not RST)  ;

end v1;

-- Philips CPLD Applications
-- 16-bit Magnitude comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity MCOMP16 is
    port(A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0 :in std_logic ;
	B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0: in std_logic ;
         AGTB,AEQB,BGTA : out  std_logic);

end MCOMP16;

architecture v1 of MCOMP16 is
signal A_i,B_i : std_logic_vector (15 downto 0) ;
begin
A_i <= A15 & A14 & A13 & A12 & A11 & A10 & A9 & A8 & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;

B_i <= B15 & B14 & B13 & B12 & B11 & B10 & B9 & B8 & B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0 ;

    AGTB <= '1'  when (A_i > B_i) else '0';
    AEQB <= '1'  when (A_i = B_i) else '0';
    BGTA <= '1'  when (B_i > A_i) else '0';

end v1;

-- Philips CPLD Applications
-- 2-bit Magnitude comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity MCOMP2 is
    port(A1,A0,B1,B0: in std_logic ;
         AGTB,AEQB,BGTA : out  std_logic);

end MCOMP2;

architecture v1 of MCOMP2 is
signal A_i,B_i : std_logic_vector (1 downto 0) ;
begin
A_i <=  A1 & A0 ;
B_i <=  B1 & B0 ;

    AGTB <= '1'  when (A_i > B_i) else '0';
    AEQB <= '1'  when (A_i = B_i) else '0';
    BGTA <= '1'  when (B_i > A_i) else '0';

end v1;

-- Philips CPLD Applications
-- 4-bit Magnitude comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity MCOMP4 is
    port(A3,A2,A1,A0,B3,B2,B1,B0: in std_logic ;
         AGTB,AEQB,BGTA : out  std_logic);

end MCOMP4;

architecture v1 of MCOMP4 is
signal A_i,B_i : std_logic_vector (3 downto 0) ;
begin
A_i <= A3 & A2 & A1 & A0 ;
B_i <= B3 & B2 & B1 & B0 ;

    AGTB <= '1'  when (A_i > B_i) else '0';
    AEQB <= '1'  when (A_i = B_i) else '0';
    BGTA <= '1'  when (B_i > A_i) else '0';

end v1;

-- Philips CPLD Applications
-- 8-bit Magnitude comparator
-- Nov 28, 1996


library ieee;
use ieee.std_logic_1164.all;

entity MCOMP8 is
    port(A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0: in std_logic ;
         AGTB,AEQB,BGTA : out  std_logic);

end MCOMP8;

architecture v1 of MCOMP8 is
signal A_i,B_i : std_logic_vector (7 downto 0) ;
begin
A_i <= A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0 ;

    AGTB <= '1'  when (A_i > B_i) else '0';
    AEQB <= '1'  when (A_i = B_i) else '0';
    BGTA <= '1'  when (B_i > A_i) else '0';

end v1;

-- Philips CPLD Applications
-- 16-1 Multiplexer
-- Aug 26,1998

library ieee ;
use ieee.std_logic_1164.all ;

entity MUX161 is
port (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,
IN10,IN11,IN12,IN13,IN14,IN15,SEL0,SEL1,SEL2,SEL3 : in std_logic ;
	Z  : out std_logic 
) ;
end MUX161 ;

architecture v1 of MUX161 is
signal SEL : std_logic_vector(3 downto 0) ;
begin
SEL<= SEL3 & SEL2 & SEL1 & SEL0 ;
Z <= IN0  when SEL = "0000" else 
	IN1 when SEL = "0001" else
	IN2 when SEL = "0010" else
	IN3 when SEL = "0011" else
	IN4 when SEL = "0100" else
	IN5 when SEL = "0101" else
	IN6 when SEL = "0110" else
	IN7 when SEL = "0111" else
	IN8 when SEL = "1000" else
	IN9 when SEL = "1001" else
	IN10 when SEL = "1010" else
	IN11 when SEL = "1011" else
	IN12 when SEL = "1100" else
	IN13 when SEL = "1101" else
	IN14 when SEL = "1110" else
	IN15 ;


end ;

-- Philips CPLD Applications
-- 2-1 Multiplexer
-- Aug 26,1998

library ieee ;
use ieee.std_logic_1164.all ;

entity MUX21 is
port (IN0,IN1,SEL : in std_logic ;
	Z  : out std_logic 
) ;
end MUX21 ;

architecture v1 of MUX21 is

begin

Z <=  IN0  when SEL = '0' else IN1 ;

end ;

-- Philips CPLD Applications
-- 4-1 Multiplexer
-- Aug 26,1998

library ieee ;
use ieee.std_logic_1164.all ;

entity MUX41 is
port (IN0,IN1,IN2,IN3,SEL0,SEL1 : in std_logic ;
	Z  : out std_logic 
) ;
end MUX41 ;

architecture v1 of MUX41 is
signal SEL : std_logic_vector(1 downto 0) ;
begin
SEL <= SEL1 & SEL0 ;
Z <= IN0 when SEL = "00" else 
	IN1 when SEL = "01" else
	IN2 when SEL = "10" else
	IN3 ;

end ;

-- Philips CPLD Applications
-- 8-1 Multiplexer
-- Aug 26,1998

library ieee ;
use ieee.std_logic_1164.all ;

entity MUX81 is
port (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,SEL0,SEL1,SEL2 : in std_logic ;
	Z  : out std_logic 
) ;
end MUX81 ;

architecture v1 of MUX81 is
signal SEL : std_logic_vector(2 downto 0) ;
begin
SEL <= SEL2 & SEL1 & SEL0 ;
Z <= IN0  when SEL = "000" else 
	IN1 when SEL = "001" else
	IN2 when SEL = "010" else
	IN3 when SEL = "011" else
	IN4 when SEL = "100" else
	IN5 when SEL = "101" else
	IN6 when SEL = "110" else
	IN7 ;

end ;

-- 10-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND10 is
	port (  
		IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND10 ;

architecture v1 of ND10 is

begin
Z <= not (IN9 and IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 11-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND11 is
	port (  
		IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND11 ;

architecture v1 of ND11 is

begin
Z <= not (IN10 and IN9 and IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 12-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND12 is
	port (  
	IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND12 ;

architecture v1 of ND12 is

begin
Z <= not (IN11 and IN10 and IN9 and IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 2-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND2 ;

architecture v1 of ND2 is

begin
	Z <= not (IN1 and IN0)  ;

end v1;

-- 2-input ND2  w one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND2B1 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND2B1 ;

architecture v1 of ND2B1 is

begin
	Z <= not (IN1 and (not IN0))  ;

end v1;

-- 2-input NAND w inverted inputs
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND2B2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND2B2 ;

architecture v1 of ND2B2 is

begin
	Z <= not ((not IN1) and (not IN0))  ;

end v1;

-- 3-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND3 ;

architecture v1 of ND3 is

begin
	Z <= not (IN2 and IN1 and IN0)  ;

end v1;

-- 3-input NAND with 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND3B1 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND3B1 ;

architecture v1 of ND3B1 is

begin
	Z <= not (IN2 and IN1 and (not IN0))  ;

end v1;

-- 3-input NAND w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND3B2 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND3B2 ;

architecture v1 of ND3B2 is

begin
	Z <= not (IN2 and (not IN1) and (not IN0))  ;

end v1;

-- 3-input NAND w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND3B3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND3B3 ;

architecture v1 of ND3B3 is

begin
	Z <= not ((not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 4-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND4 ;

architecture v1 of ND4 is

begin
	Z <= not (IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 4-input NAND with one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND4B1 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND4B1 ;

architecture v1 of ND4B1 is

begin
	Z <= not (IN3 and IN2 and IN1 and (not IN0))  ;

end v1;

-- 4-input NAND  with 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND4B2 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND4B2 ;

architecture v1 of ND4B2 is

begin
	Z <= not (IN3 and IN2 and (not IN1) and (not IN0))  ;

end v1;

-- 4-input NAND w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND4B3 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND4B3 ;

architecture v1 of ND4B3 is

begin
	Z <= not (IN3 and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 4-input NAND w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND4B4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND4B4 ;

architecture v1 of ND4B4 is

begin
Z <= not ((not IN3) and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 5-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND5 ;

architecture v1 of ND5 is

begin
	Z <= not (IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 5-input NAND w 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND5B1 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND5B1 ;

architecture v1 of ND5B1 is

begin
	Z <= not (IN4 and IN3 and IN2 and IN1 and (not IN0))  ;

end v1;

-- 5-input NAND w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND5B2 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND5B2 ;

architecture v1 of ND5B2 is

begin
	Z <= not (IN4 and IN3 and IN2 and (not IN1) and (not IN0))  ;

end v1;

-- 5-input NAND w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND5B3 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND5B3 ;

architecture v1 of ND5B3 is

begin
Z <= not (IN4 and IN3 and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 5-input NAND w 4 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND5B4 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND5B4 ;

architecture v1 of ND5B4 is

begin
Z <= not (IN4 and (not IN3) and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 5-input NAND w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND5B5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND5B5 ;

architecture v1 of ND5B5 is

begin
Z <= not ((not IN4) and (not IN3) and (not IN2) and (not IN1) and (not IN0))  ;

end v1;

-- 6-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND6 is
	port (  
		IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND6 ;

architecture v1 of ND6 is

begin
	Z <= not (IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 7-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND7 is
	port (  
		IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND7 ;

architecture v1 of ND7 is

begin
Z <= not (IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 8-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND8 ;

architecture v1 of ND8 is

begin
Z <= not (IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 9-input NAND 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity ND9 is
	port (  
		IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end ND9 ;

architecture v1 of ND9 is

begin
Z <= not (IN8 and IN7 and IN6 and IN5 and IN4 and IN3 and IN2 and IN1 and IN0)  ;

end v1;

-- 10-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR10 is
	port (  
		IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR10 ;

architecture v1 of NR10 is

begin
Z <= not (IN9 or IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 11-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR11 is
	port (  
		IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR11 ;

architecture v1 of NR11 is

begin
Z <= not (IN10 or IN9 or IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 12-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR12 is
	port (  
	IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR12 ;

architecture v1 of NR12 is

begin
Z <= not (IN11 or IN10 or IN9 or IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 2-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR2 ;

architecture v1 of NR2 is

begin
	Z <= not (IN1 or IN0)  ;

end v1;

-- 2-input NOR  w one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR2B1 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR2B1 ;

architecture v1 of NR2B1 is

begin
	Z <= not (IN1 or (not IN0))  ;

end v1;

-- 2-input NOR w inverted inputs
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR2B2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR2B2 ;

architecture v1 of NR2B2 is

begin
	Z <= not ((not IN1) or (not IN0))  ;

end v1;

-- 3-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR3 ;

architecture v1 of NR3 is

begin
	Z <= not (IN2 or IN1 or IN0)  ;

end v1;

-- 3-input NOR with 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR3B1 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR3B1 ;

architecture v1 of NR3B1 is

begin
	Z <= not (IN2 or IN1 or (not IN0))  ;

end v1;

-- 3-input NOR w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR3B2 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR3B2 ;

architecture v1 of NR3B2 is

begin
	Z <= not (IN2 or (not IN1) or (not IN0))  ;

end v1;

-- 3-input NOR w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR3B3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR3B3 ;

architecture v1 of NR3B3 is

begin
	Z <= not ((not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 4-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR4 ;

architecture v1 of NR4 is

begin
	Z <= not (IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 4-input NOR with one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR4B1 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR4B1 ;

architecture v1 of NR4B1 is

begin
	Z <= not (IN3 or IN2 or IN1 or (not IN0))  ;

end v1;

-- 4-input NOR  with 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR4B2 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR4B2 ;

architecture v1 of NR4B2 is

begin
	Z <= not (IN3 or IN2 or (not IN1) or (not IN0))  ;

end v1;

-- 4-input NOR w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR4B3 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR4B3 ;

architecture v1 of NR4B3 is

begin
	Z <= not (IN3 or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 4-input NOR w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR4B4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR4B4 ;

architecture v1 of NR4B4 is

begin
	Z <= not ((not IN3) or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 5-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR5 ;

architecture v1 of NR5 is

begin
	Z <= not (IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 5-input NOR w 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR5B1 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR5B1 ;

architecture v1 of NR5B1 is

begin
	Z <= not (IN4 or IN3 or IN2 or IN1 or (not IN0))  ;

end v1;

-- 5-input NOR w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR5B2 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR5B2 ;

architecture v1 of NR5B2 is

begin
	Z <= not (IN4 or IN3 or IN2 or (not IN1) or (not IN0))  ;

end v1;

-- 5-input NOR w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR5B3 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR5B3 ;

architecture v1 of NR5B3 is

begin
Z <= not (IN4 or IN3 or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 5-input NOR w 4 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR5B4 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR5B4 ;

architecture v1 of NR5B4 is

begin
Z <= not (IN4 or (not IN3) or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 5-input NOR w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR5B5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR5B5 ;

architecture v1 of NR5B5 is

begin
Z <= not ((not IN4) or (not IN3) or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 6-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR6 is
	port (  
		IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR6 ;

architecture v1 of NR6 is

begin
	Z <= not (IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 7-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR7 is
	port (  
		IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR7 ;

architecture v1 of NR7 is

begin
	Z <= not (IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 8-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR8 ;

architecture v1 of NR8 is

begin
Z <= not (IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 9-input NOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity NR9 is
	port (  
		IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end NR9 ;

architecture v1 of NR9 is

begin
Z <= not (IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0)  ;

end v1;

-- 10-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR10 is
	port (  
		IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR10 ;

architecture v1 of OR10 is

begin
Z <= IN9 or IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 11-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR11 is
	port (  
		IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR11 ;

architecture v1 of OR11 is

begin
Z <= IN10 or IN9 or IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 12-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR12 is
	port (  
	IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR12 ;

architecture v1 of OR12 is

begin
Z <= IN11 or IN10 or IN9 or IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 2-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR2 ;

architecture v1 of OR2 is

begin
	Z <= IN1 or IN0  ;

end v1;

-- 2-input OR2  w one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR2B1 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR2B1 ;

architecture v1 of OR2B1 is

begin
	Z <= IN1 or (not IN0)  ;

end v1;

-- 2-input OR w inverted inputs
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR2B2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR2B2 ;

architecture v1 of OR2B2 is

begin
	Z <= ((not IN1) or (not IN0))  ;

end v1;

-- 3-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR3 ;

architecture v1 of OR3 is

begin
	Z <= IN2 or IN1 or IN0  ;

end v1;

-- 3-input OR with 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR3B1 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR3B1 ;

architecture v1 of OR3B1 is

begin
	Z <= (IN2 or IN1 or (not IN0))  ;

end v1;

-- 3-input OR w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR3B2 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR3B2 ;

architecture v1 of OR3B2 is

begin
	Z <= (IN2 or (not IN1) or (not IN0))  ;

end v1;

-- 3-input OR w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR3B3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR3B3 ;

architecture v1 of OR3B3 is

begin
	Z <= ((not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 4-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR4 ;

architecture v1 of OR4 is

begin
	Z <= IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 4-input OR with one input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR4B1 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR4B1 ;

architecture v1 of OR4B1 is

begin
	Z <= (IN3 or IN2 or IN1 or (not IN0))  ;

end v1;

-- 4-input OR  with 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR4B2 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR4B2 ;

architecture v1 of OR4B2 is

begin
	Z <= (IN3 or IN2 or (not IN1) or (not IN0))  ;

end v1;

-- 4-input OR w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR4B3 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR4B3 ;

architecture v1 of OR4B3 is

begin
	Z <= (IN3 or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 4-input OR w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR4B4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR4B4 ;

architecture v1 of OR4B4 is

begin
	Z <= ((not IN3) or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 5-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR5 ;

architecture v1 of OR5 is

begin
	Z <= IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 5-input OR w 1 input inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR5B1 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR5B1 ;

architecture v1 of OR5B1 is

begin
	Z <= (IN4 or IN3 or IN2 or IN1 or (not IN0))  ;

end v1;

-- 5-input OR w 2 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR5B2 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR5B2 ;

architecture v1 of OR5B2 is

begin
	Z <= (IN4 or IN3 or IN2 or (not IN1) or (not IN0))  ;

end v1;

-- 5-input OR w 3 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR5B3 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR5B3 ;

architecture v1 of OR5B3 is

begin
Z <= (IN4 or IN3 or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 5-input OR w 4 inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR5B4 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR5B4 ;

architecture v1 of OR5B4 is

begin
Z <= (IN4 or (not IN3) or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 5-input OR w inputs inverted
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR5B5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR5B5 ;

architecture v1 of OR5B5 is

begin
Z <= ((not IN4) or (not IN3) or (not IN2) or (not IN1) or (not IN0))  ;

end v1;

-- 6-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR6 is
	port (  
		IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR6 ;

architecture v1 of OR6 is

begin
	Z <= IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 7-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR7 is
	port (  
		IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR7 ;

architecture v1 of OR7 is

begin
	Z <= IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 8-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR8 ;

architecture v1 of OR8 is

begin
Z <= IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 9-input OR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity OR9 is
	port (  
		IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end OR9 ;

architecture v1 of OR9 is

begin
Z <= IN8 or IN7 or IN6 or IN5 or IN4 or IN3 or IN2 or IN1 or IN0  ;

end v1;

-- 16-bit Parallel to serial shift register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG16 is
port (
	CLK : in std_logic ;
	S_L : in std_logic ;
	D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;	
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG16 ;

architecture v1 of PSREG16 is
signal reg16 : std_logic_vector (15 downto 0) ;
signal din : std_logic_vector (15 downto 0) ;

begin

din <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (CLK,S_L)
begin
if CLK = '1' and CLK'event then
if S_L = '0' then
reg16 <= din ; 
else
reg16 <= '0' & reg16(15 downto 1)  ;
end if ;
end if ;
end process ;

Q0 <= reg16(0)  ;

end v1;




-- 16-bit Parallel to serial shift register 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG16E is
port (
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;	
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG16E ;

architecture v1 of PSREG16E is
signal reg16 : std_logic_vector (15 downto 0) ;
signal din : std_logic_vector (15 downto 0) ;

begin

din <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (CE,CLK,S_L)
begin
if CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg16 <= din ; 
else
reg16 <= '0' & reg16(15 downto 1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg16(0)  ;

end v1;




-- 16-bit Parallel to serial shift register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG16R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;	
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG16R ;

architecture v1 of PSREG16R is
signal reg16 : std_logic_vector (15 downto 0) ;
signal din : std_logic_vector (15 downto 0) ;

begin

din <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg16 <= (others => '0')  ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg16 <= din ; 
else
reg16 <= '0' & reg16(15 downto 1)  ;
end if ;
end if ;
end process ;

Q0 <= reg16(0)  ;

end v1;




-- 16-bit Parallel to serial shift register 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG16RE is
port (RST : in std_logic ;
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;	
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG16RE ;

architecture v1 of PSREG16RE is
signal reg16 : std_logic_vector (15 downto 0) ;
signal din : std_logic_vector (15 downto 0) ;

begin

din <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg16 <= (others => '0')  ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg16 <= din ; 
else
reg16 <= '0' & reg16(15 downto 1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg16(0)  ;

end v1;




-- 16-bit Parallel to serial shift register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG16S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;	
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG16S ;

architecture v1 of PSREG16S is
signal reg16 : std_logic_vector (15 downto 0) ;
signal din : std_logic_vector (15 downto 0) ;

begin

din <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg16 <= (others => '1')  ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg16 <= din ; 
else
reg16 <= '0' & reg16(15 downto 1)  ;
end if ;
end if ;
end process ;

Q0 <= reg16(0)  ;

end v1;




-- 16-bit Parallel to serial shift register 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG16SE is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;	
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG16SE ;

architecture v1 of PSREG16SE is
signal reg16 : std_logic_vector (15 downto 0) ;
signal din : std_logic_vector (15 downto 0) ;

begin

din <= D15 & D14 & D13 & D12 & D11 & D10 & D9 & D8 & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg16 <= (others => '1')  ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg16 <= din ; 
else
reg16 <= '0' & reg16(15 downto 1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg16(0)  ;

end v1;




-- 2-bit Parallel to serial shift register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG2 is
port (
	CLK : in std_logic ;
	S_L : in std_logic ;
	D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG2 ;

architecture v1 of PSREG2 is
signal reg2 : std_logic_vector (1 downto 0) ;
signal din : std_logic_vector (1 downto 0) ;

begin

din <=  D1 & D0 ;

process (CLK,S_L)
begin
if CLK = '1' and CLK'event then
if S_L = '0' then
reg2 <= din ; 
else
reg2 <= '0' & reg2(1)  ;
end if ;
end if ;
end process ;

Q0 <= reg2(0)  ;

end v1;




-- 2-bit Parallel to serial shift register 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG2E is
port (
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG2E ;

architecture v1 of PSREG2E is
signal reg2 : std_logic_vector (1 downto 0) ;
signal din : std_logic_vector (1 downto 0) ;

begin

din <=  D1 & D0 ;

process (CE,CLK,S_L)
begin
if CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg2 <= din ; 
else
reg2 <= '0' & reg2(1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg2(0)  ;

end v1;




-- 2-bit Parallel to serial shift register with asychronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG2R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG2R ;

architecture v1 of PSREG2R is
signal reg2 : std_logic_vector (1 downto 0) ;
signal din : std_logic_vector (1 downto 0) ;

begin

din <=  D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg2 <= "00" ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg2 <= din ; 
else
reg2 <= '0' & reg2(1)  ;
end if ;
end if ;
end process ;

Q0 <= reg2(0)  ;

end v1;




-- 2-bit Parallel to serial shift register 
-- with asychronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG2RE is
port (RST : in std_logic ;
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG2RE ;

architecture v1 of PSREG2RE is
signal reg2 : std_logic_vector (1 downto 0) ;
signal din : std_logic_vector (1 downto 0) ;

begin

din <=  D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg2 <= "00" ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg2 <= din ; 
else
reg2 <= '0' & reg2(1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg2(0)  ;

end v1;




-- 2-bit Parallel to serial shift register with asychronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG2S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG2S ;

architecture v1 of PSREG2S is
signal reg2 : std_logic_vector (1 downto 0) ;
signal din : std_logic_vector (1 downto 0) ;

begin

din <=  D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg2 <= "11" ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg2 <= din ; 
else
reg2 <= '0' & reg2(1)  ;
end if ;
end if ;
end process ;

Q0 <= reg2(0)  ;

end v1;




-- 2-bit Parallel to serial shift register 
-- with asychronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG2SE is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG2SE ;

architecture v1 of PSREG2SE is
signal reg2 : std_logic_vector (1 downto 0) ;
signal din : std_logic_vector (1 downto 0) ;

begin

din <=  D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg2 <= "11" ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg2 <= din ; 
else
reg2 <= '0' & reg2(1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg2(0)  ;

end v1;




-- 4-bit Parallel to serial shift register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG4 is
port (
	CLK : in std_logic ;
	S_L : in std_logic ;
	D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG4 ;

architecture v1 of PSREG4 is
signal reg4 : std_logic_vector (3 downto 0) ;
signal din : std_logic_vector (3 downto 0) ;

begin

din <=  D3 & D2 & D1 & D0 ;

process (CLK,S_L)
begin
if CLK = '1' and CLK'event then
if S_L = '0' then
reg4 <= din ; 
else
reg4 <= '0' & reg4(3 downto 1)  ;
end if ;
end if ;
end process ;

Q0 <= reg4(0)  ;

end v1;




-- 4-bit Parallel to serial shift register 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG4E is
port (
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG4E ;

architecture v1 of PSREG4E is
signal reg4 : std_logic_vector (3 downto 0) ;
signal din : std_logic_vector (3 downto 0) ;

begin

din <= D3 & D2 & D1 & D0 ;

process (CE,CLK,S_L)
begin
if CLK = '1' and CLK'event then
if CE = '1' then
if S_L = '0' then
reg4 <= din ; 
else
reg4 <= '0' & reg4(3 downto 1) ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg4(0)  ;

end v1;


-- 4-bit Parallel to serial shift register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG4R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG4R ;

architecture v1 of PSREG4R is
signal reg4 : std_logic_vector (3 downto 0) ;
signal din : std_logic_vector (3 downto 0) ;

begin

din <= D3 & D2 & D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg4 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg4 <= din ; 
else
reg4 <= '0' & reg4(3 downto 1) ;
end if ;
end if ;
end process ;

Q0 <= reg4(0)  ;

end v1;


-- 4-bit Parallel to serial shift register 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG4RE is
port (RST : in std_logic ;
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG4RE ;

architecture v1 of PSREG4RE is
signal reg4 : std_logic_vector (3 downto 0) ;
signal din : std_logic_vector (3 downto 0) ;

begin

din <= D3 & D2 & D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg4 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
if S_L = '0' then
reg4 <= din ; 
else
reg4 <= '0' & reg4(3 downto 1) ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg4(0)  ;

end v1;


-- 4-bit Parallel to serial shift register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG4S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG4S ;

architecture v1 of PSREG4S is
signal reg4 : std_logic_vector (3 downto 0) ;
signal din : std_logic_vector (3 downto 0) ;

begin

din <= D3 & D2 & D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg4 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg4 <= din ; 
else
reg4 <= '0' & reg4(3 downto 1) ;
end if ;
end if ;
end process ;

Q0 <= reg4(0)  ;

end v1;


-- 4-bit Parallel to serial shift register 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG4SE is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	CE : in std_logic ;
	S_L : in std_logic ;
	D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG4SE ;

architecture v1 of PSREG4SE is
signal reg4 : std_logic_vector (3 downto 0) ;
signal din : std_logic_vector (3 downto 0) ;

begin

din <= D3 & D2 & D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg4 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
if S_L = '0' then
reg4 <= din ; 
else
reg4 <= '0' & reg4(3 downto 1) ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg4(0)  ;

end v1;


-- 8-bit Parallel to serial shift register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG8 is
port (
	CLK : in std_logic ;
	S_L : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG8 ;

architecture v1 of PSREG8 is
signal reg8 : std_logic_vector (7 downto 0) ;
signal din : std_logic_vector (7 downto 0) ;

begin

din <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (CLK,S_L)
begin
if CLK = '1' and CLK'event then
if S_L = '0' then
reg8 <= din ; 
else
reg8 <= '0' & reg8(7 downto 1)  ;
end if ;
end if ;
end process ;

Q0 <= reg8(0)  ;

end v1;




-- 8-bit Parallel to serial shift register 
-- with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG8E is
port (
	CE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG8E ;

architecture v1 of PSREG8E is
signal reg8 : std_logic_vector (7 downto 0) ;
signal din : std_logic_vector (7 downto 0) ;

begin

din <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (CE,CLK,S_L)
begin
if CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg8 <= din ; 
else
reg8 <= '0' & reg8(7 downto 1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg8(0)  ;

end v1;




-- 8-bit Parallel to serial shift register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG8R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG8R ;

architecture v1 of PSREG8R is
signal reg8 : std_logic_vector (7 downto 0) ;
signal din : std_logic_vector (7 downto 0) ;

begin

din <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg8 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg8 <= din ; 
else
reg8 <= '0' & reg8(7 downto 1) ;
end if ;
end if ;
end process ;

Q0 <= reg8(0)  ;

end v1;




-- 8-bit Parallel to serial shift register 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG8RE is
port (RST : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG8RE ;

architecture v1 of PSREG8RE is
signal reg8 : std_logic_vector (7 downto 0) ;
signal din : std_logic_vector (7 downto 0) ;

begin

din <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (RST,CLK,S_L)
begin
if RST = '1' then
reg8 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg8 <= din ; 
else
reg8 <= '0' & reg8(7 downto 1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg8(0)  ;

end v1;




-- 8-bit Parallel to serial shift register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG8S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG8S ;

architecture v1 of PSREG8S is
signal reg8 : std_logic_vector (7 downto 0) ;
signal din : std_logic_vector (7 downto 0) ;

begin

din <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg8 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if S_L = '0' then
reg8 <= din ; 
else
reg8 <= '0' & reg8(7 downto 1)  ;
end if ;
end if ;
end process ;

Q0 <= reg8(0)  ;

end v1;


-- 8-bit Parallel to serial shift register 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity PSREG8SE is
port (PRE : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	S_L : in std_logic ;
	D7,D6,D5,D4,D3,D2,D1,D0 :  in std_logic ;
	Q0 :  out std_logic 
) ;
end PSREG8SE ;

architecture v1 of PSREG8SE is
signal reg8 : std_logic_vector (7 downto 0) ;
signal din : std_logic_vector (7 downto 0) ;

begin

din <= D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 ;

process (PRE,CLK,S_L)
begin
if PRE = '1' then
reg8 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
if S_L = '0' then
reg8 <= din ; 
else
reg8 <= '0' & reg8(7 downto 1)  ;
end if ;
end if ;
end if ;
end process ;

Q0 <= reg8(0)  ;

end v1;




-- 16-bit Data Register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG16 is
	port (  
		CLK : in std_logic ;
		D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG16 ;


architecture v1 of REG16 is

begin

process (CLK)
begin
	if (CLK'event and CLK='1') then
	Q15 <= D15  ;
	Q14 <= D14  ;
	Q13 <= D13  ;
	Q12 <= D12  ;
	Q11 <= D11  ;
	Q10 <= D10  ;
	Q9 <= D9  ;
	Q8 <= D8  ;
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 16-bit Data Register with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG16E is
	port (  
		CE : in std_logic ;
		CLK : in std_logic ;
		D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG16E ;


architecture v1 of REG16E is

begin

process (CE, CLK)
begin
	if (CLK'event and CLK='1') then
	if CE = '1' then
	Q15 <= D15  ;
	Q14 <= D14  ;
	Q13 <= D13  ;
	Q12 <= D12  ;
	Q11 <= D11  ;
	Q10 <= D10  ;
	Q9 <= D9  ;
	Q8 <= D8  ;
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 16-bit Data Register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG16R is
	port (  RST : in std_logic ;
		CLK : in std_logic ;
		D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG16R ;


architecture v1 of REG16R is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q15 <= '0'  ;
	Q14 <= '0'  ;
	Q13 <= '0'  ;
	Q12 <= '0'  ;
	Q11 <= '0'  ;
	Q10 <= '0'  ;
	Q9 <= '0'  ;
	Q8 <= '0'  ;
	Q7 <= '0'  ;
	Q6 <= '0'  ;
	Q5 <= '0'  ;
	Q4 <= '0'  ;
	Q3 <= '0'  ;
	Q2 <= '0'  ;
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	Q15 <= D15  ;
	Q14 <= D14  ;
	Q13 <= D13  ;
	Q12 <= D12  ;
	Q11 <= D11  ;
	Q10 <= D10  ;
	Q9 <= D9  ;
	Q8 <= D8  ;
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 16-bit Data Register with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG16RE is
	port (  RST : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG16RE ;


architecture v1 of REG16RE is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q15 <= '0'  ;
	Q14 <= '0'  ;
	Q13 <= '0'  ;
	Q12 <= '0'  ;
	Q11 <= '0'  ;
	Q10 <= '0'  ;
	Q9 <= '0'  ;
	Q8 <= '0'  ;
	Q7 <= '0'  ;
	Q6 <= '0'  ;
	Q5 <= '0'  ;
	Q4 <= '0'  ;
	Q3 <= '0'  ;
	Q2 <= '0'  ;
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q15 <= D15  ;
	Q14 <= D14  ;
	Q13 <= D13  ;
	Q12 <= D12  ;
	Q11 <= D11  ;
	Q10 <= D10  ;
	Q9 <= D9  ;
	Q8 <= D8  ;
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 16-bit Data Register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG16S is
	port (  PRE : in std_logic ;
		CLK : in std_logic ;
		D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG16S ;


architecture v1 of REG16S is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q15 <= '1'  ;
	Q14 <= '1'  ;
	Q13 <= '1'  ;
	Q12 <= '1'  ;
	Q11 <= '1'  ;
	Q10 <= '1'  ;
	Q9 <= '1'  ;
	Q8 <= '1'  ;
	Q7 <= '1'  ;
	Q6 <= '1'  ;
	Q5 <= '1'  ;
	Q4 <= '1'  ;
	Q3 <= '1'  ;
	Q2 <= '1'  ;
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	Q15 <= D15  ;
	Q14 <= D14  ;
	Q13 <= D13  ;
	Q12 <= D12  ;
	Q11 <= D11  ;
	Q10 <= D10  ;
	Q9 <= D9  ;
	Q8 <= D8  ;
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 16-bit Data Register with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG16SE is
	port (  PRE : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D15,D14,D13,D12,D11,D10,D9,D8 : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 : out std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG16SE ;


architecture v1 of REG16SE is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q15 <= '1'  ;
	Q14 <= '1'  ;
	Q13 <= '1'  ;
	Q12 <= '1'  ;
	Q11 <= '1'  ;
	Q10 <= '1'  ;
	Q9 <= '1'  ;
	Q8 <= '1'  ;
	Q7 <= '1'  ;
	Q6 <= '1'  ;
	Q5 <= '1'  ;
	Q4 <= '1'  ;
	Q3 <= '1'  ;
	Q2 <= '1'  ;
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q15 <= D15  ;
	Q14 <= D14  ;
	Q13 <= D13  ;
	Q12 <= D12  ;
	Q11 <= D11  ;
	Q10 <= D10  ;
	Q9 <= D9  ;
	Q8 <= D8  ;
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 2-bit Data Register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG2 is
	port (  
		CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic
	) ;

end REG2 ;


architecture v1 of REG2 is

begin

process (CLK)
begin
	if (CLK'event and CLK='1') then
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 2-bit Data Register with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG2E is
	port (  
		CE : in std_logic ;
		CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic
	) ;

end REG2E ;


architecture v1 of REG2E is

begin

process (CE, CLK)
begin
	if (CLK'event and CLK='1') then
	if CE = '1' then
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 2-bit Data Register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG2R is
	port (  RST : in std_logic ;
		CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic
	) ;

end REG2R ;


architecture v1 of REG2R is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 2-bit Data Register with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG2RE is
	port (  RST : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic
	) ;

end REG2RE ;


architecture v1 of REG2RE is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 2-bit Data Register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG2S is
	port (  PRE : in std_logic ;
		CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic
	) ;

end REG2S ;


architecture v1 of REG2S is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 2-bit Data Register with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG2SE is
	port (  PRE : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D1,D0 : in std_logic ;
		Q1,Q0 : out std_logic
	) ;

end REG2SE ;


architecture v1 of REG2SE is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 4-bit Data Register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG4 is
	port (  
		CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG4 ;


architecture v1 of REG4 is

begin

process (CLK)
begin
	if (CLK'event and CLK='1') then
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 4-bit Data Register with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG4E is
	port (  
		CE : in std_logic ;
		CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG4E ;


architecture v1 of REG4E is

begin

process (CE, CLK)
begin
	if (CLK'event and CLK='1') then
	if CE = '1' then
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 4-bit Data Register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG4R is
	port (  RST : in std_logic ;
		CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG4R ;


architecture v1 of REG4R is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q3 <= '0'  ;
	Q2 <= '0'  ;
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 4-bit Data Register with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG4RE is
	port (  RST : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG4RE ;


architecture v1 of REG4RE is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q3 <= '0'  ;
	Q2 <= '0'  ;
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 4-bit Data Register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG4S is
	port (  PRE : in std_logic ;
		CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG4S ;


architecture v1 of REG4S is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q3 <= '1'  ;
	Q2 <= '1'  ;
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 4-bit Data Register with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG4SE is
	port (  PRE : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D3,D2,D1,D0 : in std_logic ;
		Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG4SE ;


architecture v1 of REG4SE is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q3 <= '1'  ;
	Q2 <= '1'  ;
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 8-bit Data Register 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG8 is
	port (  
		CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG8 ;


architecture v1 of REG8 is

begin

process (CLK)
begin
	if (CLK'event and CLK='1') then
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 8-bit Data Register with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG8E is
	port (  
		CE : in std_logic ;
		CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG8E ;


architecture v1 of REG8E is

begin

process (CE, CLK)
begin
	if (CLK'event and CLK='1') then
	if CE = '1' then
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 8-bit Data Register with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG8R is
	port (  RST : in std_logic ;
		CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG8R ;


architecture v1 of REG8R is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q7 <= '0'  ;
	Q6 <= '0'  ;
	Q5 <= '0'  ;
	Q4 <= '0'  ;
	Q3 <= '0'  ;
	Q2 <= '0'  ;
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 8-bit Data Register with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG8RE is
	port (  RST : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG8RE ;


architecture v1 of REG8RE is

begin

process (RST, CLK)
begin
	if (RST = '1') then
	Q7 <= '0'  ;
	Q6 <= '0'  ;
	Q5 <= '0'  ;
	Q4 <= '0'  ;
	Q3 <= '0'  ;
	Q2 <= '0'  ;
	Q1 <= '0'  ;
	Q0 <= '0'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 8-bit Data Register with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG8S is
	port (  PRE : in std_logic ;
		CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG8S ;


architecture v1 of REG8S is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q7 <= '1'  ;
	Q6 <= '1'  ;
	Q5 <= '1'  ;
	Q4 <= '1'  ;
	Q3 <= '1'  ;
	Q2 <= '1'  ;
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
end process ;

end v1;

-- 8-bit Data Register with asynchronous set and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity REG8SE is
	port (  PRE : in std_logic ;
		CE : in std_logic ;
		CLK : in std_logic ;
		D7,D6,D5,D4,D3,D2,D1,D0 : in std_logic ;
		Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 : out std_logic
	) ;

end REG8SE ;


architecture v1 of REG8SE is

begin

process (PRE, CLK)
begin
	if (PRE = '1') then
	Q7 <= '1'  ;
	Q6 <= '1'  ;
	Q5 <= '1'  ;
	Q4 <= '1'  ;
	Q3 <= '1'  ;
	Q2 <= '1'  ;
	Q1 <= '1'  ;
	Q0 <= '1'  ;
	elsif (CLK'event and CLK='1') then
	if CE = '1' then
	Q7 <= D7  ;
	Q6 <= D6  ;
	Q5 <= D5  ;
	Q4 <= D4  ;
	Q3 <= D3  ;
	Q2 <= D2  ;
	Q1 <= D1  ;
	Q0 <= D0  ;
	end if ;
	end if ;
end process ;

end v1;

-- 16-bit Serial to Parallel Shift Register 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG16 is
port (
	CLK : in std_logic ;
	SI : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 :  out std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG16 ;

architecture v1 of SPREG16 is
signal sreg16 : std_logic_vector (15 downto 0) ;

begin

process (CLK)
begin
if CLK = '1' and CLK'event then
sreg16 <= sreg16(14 downto 0) & SI ;
end if ;
end process ;

Q15 <= sreg16(15)  ;
Q14 <= sreg16(14)  ;
Q13 <= sreg16(13)  ;
Q12 <= sreg16(12)  ;
Q11 <= sreg16(11)  ;
Q10 <= sreg16(10)  ;
Q9 <= sreg16(9)  ;
Q8 <= sreg16(8)  ;
Q7 <= sreg16(7)  ;
Q6 <= sreg16(6)  ;
Q5 <= sreg16(5)  ;
Q4 <= sreg16(4)  ;
Q3 <= sreg16(3)  ;
Q2 <= sreg16(2)  ;
Q1 <= sreg16(1)  ;
Q0 <= sreg16(0)  ;

end v1;




-- 16-bit Serial to Parallel Shift Register 
-- with clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG16E is
port (  
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 :  out std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG16E ;

architecture v1 of SPREG16E is
signal sreg16 : std_logic_vector (15 downto 0) ;

begin

process (CE,CLK)
begin
if CLK = '1' and CLK'event then
if CE = '1' then
sreg16 <= sreg16(14 downto 0) & SI  ;
end if ;
end if ;
end process ;

Q15 <= sreg16(15)  ;
Q14 <= sreg16(14)  ;
Q13 <= sreg16(13)  ;
Q12 <= sreg16(12)  ;
Q11 <= sreg16(11)  ;
Q10 <= sreg16(10)  ;
Q9 <= sreg16(9)  ;
Q8 <= sreg16(8)  ;
Q7 <= sreg16(7)  ;
Q6 <= sreg16(6)  ;
Q5 <= sreg16(5)  ;
Q4 <= sreg16(4)  ;
Q3 <= sreg16(3)  ;
Q2 <= sreg16(2)  ;
Q1 <= sreg16(1)  ;
Q0 <= sreg16(0)  ;

end v1;




-- 16-bit Serial to Parallel Shift Register  with asynchronous reset
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG16R is
port (  RST : std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 :  out std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG16R ;

architecture v1 of SPREG16R is
signal sreg16 : std_logic_vector (15 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg16 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
sreg16 <= sreg16(14 downto 0) & SI ;
end if ;
end process ;

Q15 <= sreg16(15)  ;
Q14 <= sreg16(14)  ;
Q13 <= sreg16(13)  ;
Q12 <= sreg16(12)  ;
Q11 <= sreg16(11)  ;
Q10 <= sreg16(10)  ;
Q9 <= sreg16(9)  ;
Q8 <= sreg16(8)  ;
Q7 <= sreg16(7)  ;
Q6 <= sreg16(6)  ;
Q5 <= sreg16(5)  ;
Q4 <= sreg16(4)  ;
Q3 <= sreg16(3)  ;
Q2 <= sreg16(2)  ;
Q1 <= sreg16(1)  ;
Q0 <= sreg16(0)  ;

end v1;




-- 16-bit Serial to Parallel Shift Register 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG16RE is
port (  RST : std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 :  out std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG16RE ;

architecture v1 of SPREG16RE is
signal sreg16 : std_logic_vector (15 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg16 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
sreg16 <= sreg16(14 downto 0) & SI  ;
end if ;
end if ;
end process ;

Q15 <= sreg16(15)  ;
Q14 <= sreg16(14)  ;
Q13 <= sreg16(13)  ;
Q12 <= sreg16(12)  ;
Q11 <= sreg16(11)  ;
Q10 <= sreg16(10)  ;
Q9 <= sreg16(9)  ;
Q8 <= sreg16(8)  ;
Q7 <= sreg16(7)  ;
Q6 <= sreg16(6)  ;
Q5 <= sreg16(5)  ;
Q4 <= sreg16(4)  ;
Q3 <= sreg16(3)  ;
Q2 <= sreg16(2)  ;
Q1 <= sreg16(1)  ;
Q0 <= sreg16(0)  ;

end v1;




-- 16-bit Serial to Parallel Shift Register  with asynchronous set
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG16S is
port (  PRE : std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 :  out std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG16S ;

architecture v1 of SPREG16S is
signal sreg16 : std_logic_vector (15 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg16 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
sreg16 <= sreg16(14 downto 0) & SI  ;
end if ;
end process ;

Q15 <= sreg16(15)  ;
Q14 <= sreg16(14)  ;
Q13 <= sreg16(13)  ;
Q12 <= sreg16(12)  ;
Q11 <= sreg16(11)  ;
Q10 <= sreg16(10)  ;
Q9 <= sreg16(9)  ;
Q8 <= sreg16(8)  ;
Q7 <= sreg16(7)  ;
Q6 <= sreg16(6)  ;
Q5 <= sreg16(5)  ;
Q4 <= sreg16(4)  ;
Q3 <= sreg16(3)  ;
Q2 <= sreg16(2)  ;
Q1 <= sreg16(1)  ;
Q0 <= sreg16(0)  ;

end v1;




-- 16-bit Serial to Parallel Shift Register 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG16SE is
port (  PRE : std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8 :  out std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG16SE ;

architecture v1 of SPREG16SE is
signal sreg16 : std_logic_vector (15 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg16 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
sreg16 <= sreg16(14 downto 0) & SI  ;
end if ;
end if ;
end process ;

Q15 <= sreg16(15)  ;
Q14 <= sreg16(14)  ;
Q13 <= sreg16(13)  ;
Q12 <= sreg16(12)  ;
Q11 <= sreg16(11)  ;
Q10 <= sreg16(10)  ;
Q9 <= sreg16(9)  ;
Q8 <= sreg16(8)  ;
Q7 <= sreg16(7)  ;
Q6 <= sreg16(6)  ;
Q5 <= sreg16(5)  ;
Q4 <= sreg16(4)  ;
Q3 <= sreg16(3)  ;
Q2 <= sreg16(2)  ;
Q1 <= sreg16(1)  ;
Q0 <= sreg16(0)  ;

end v1;




-- 2-bit Serial to Parallel Shift Register 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG2 is
port (
	CLK : in std_logic ;
	SI : in std_logic ;
	Q1,Q0 :  out std_logic
) ;
end SPREG2 ;

architecture v1 of SPREG2 is
signal sreg2 : std_logic_vector (1 downto 0) ;

begin

process (CLK)
begin
if CLK = '1' and CLK'event then
sreg2 <= sreg2(0) & SI  ;
end if ;
end process ;

Q1<= sreg2(1)  ;
Q0<= sreg2(0)  ;

end v1;




-- 2-bit Serial to Parallel Shift Register 
-- with clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG2E is
port (
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q1,Q0 :  out std_logic
) ;
end SPREG2E ;

architecture v1 of SPREG2E is
signal sreg2 : std_logic_vector (1 downto 0) ;

begin

process (CE,CLK)
begin
if CLK = '1' and CLK'event then
if CE = '1' then
sreg2 <= sreg2(0) & SI  ;
end if ;
end if ;
end process ;

Q1<= sreg2(1)   ;
Q0<= sreg2(0)   ;

end v1;

-- 2-bit Serial to Parallel Shift Register with asynchronous reset
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG2R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q1,Q0 :  out std_logic
) ;
end SPREG2R ;

architecture v1 of SPREG2R is
signal sreg2 : std_logic_vector (1 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg2 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
sreg2 <= sreg2(0) & SI  ;
end if ;
end process ;

Q1<= sreg2(1)   ;
Q0<= sreg2(0)   ;

end v1;

-- 2-bit Serial to Parallel Shift Register 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG2RE is
port (RST : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q1,Q0 :  out std_logic
) ;
end SPREG2RE ;

architecture v1 of SPREG2RE is
signal sreg2 : std_logic_vector (1 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg2 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
sreg2 <= sreg2(0) & SI  ;
end if ;
end if ;
end process ;

Q1<= sreg2(1)   ;
Q0<= sreg2(0)   ;

end v1;

-- 2-bit Serial to Parallel Shift Register with asynchronous set
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG2S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q1,Q0 :  out std_logic
) ;
end SPREG2S ;

architecture v1 of SPREG2S is
signal sreg2 : std_logic_vector (1 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg2 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
sreg2 <= sreg2(0) & SI  ;
end if ;
end process ;

Q1<= sreg2(1)   ;
Q0<= sreg2(0)   ;

end v1;

-- 2-bit Serial to Parallel Shift Register 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG2SE is
port (PRE : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q1,Q0 :  out std_logic
) ;
end SPREG2SE ;

architecture v1 of SPREG2SE is
signal sreg2 : std_logic_vector (1 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg2 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
sreg2 <= sreg2(0) & SI  ;
end if ;
end if ;
end process ;

Q1<= sreg2(1)   ;
Q0<= sreg2(0)   ;

end v1;

-- 4-bit Serial to Parallel Shift Register 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG4 is
port (
	CLK : in std_logic ;
	SI : in std_logic ;
	Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG4 ;

architecture v1 of SPREG4 is
signal sreg4 : std_logic_vector (3 downto 0) ;

begin

process (CLK)
begin
if CLK = '1' and CLK'event then
sreg4 <= sreg4(2 downto 0)  & SI ;
end if ;
end process ;

Q3<= sreg4(3)  ;
Q2<= sreg4(2)  ;
Q1<= sreg4(1)  ;
Q0<= sreg4(0)  ;

end v1;




-- 4-bit Serial to Parallel Shift Register 
-- with clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG4E is
port (
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG4E ;

architecture v1 of SPREG4E is
signal sreg4 : std_logic_vector (3 downto 0) ;

begin

process (CE,CLK)
begin
if CLK = '1' and CLK'event then
if CE = '1' then
sreg4 <= sreg4(2 downto 0) & SI ;
end if ;
end if ;
end process ;

Q3<= sreg4(3)   ;
Q2<= sreg4(2)   ;
Q1<= sreg4(1)   ;
Q0<= sreg4(0)   ;

end v1;




-- 4-bit Serial to Parallel Shift Register with asynchronous reset
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG4R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG4R ;

architecture v1 of SPREG4R is
signal sreg4 : std_logic_vector (3 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg4 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
sreg4 <= sreg4(2 downto 0) & SI ;
end if ;
end process ;

Q3<= sreg4(3)   ;
Q2<= sreg4(2)   ;
Q1<= sreg4(1)   ;
Q0<= sreg4(0)   ;

end v1;




-- 4-bit Serial to Parallel Shift Register 
-- with asynchronous reset and clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG4RE is
port (RST : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG4RE ;

architecture v1 of SPREG4RE is
signal sreg4 : std_logic_vector (3 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg4 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
sreg4 <= sreg4(2 downto 0) & SI ;
end if ;
end if ;
end process ;

Q3<= sreg4(3)   ;
Q2<= sreg4(2)   ;
Q1<= sreg4(1)   ;
Q0<= sreg4(0)   ;

end v1;




-- 4-bit Serial to Parallel Shift Register with asynchronous set
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG4S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG4S ;

architecture v1 of SPREG4S is
signal sreg4 : std_logic_vector (3 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg4 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
sreg4 <= sreg4(2 downto 0) & SI ;
end if ;
end process ;

Q3<= sreg4(3)  ;
Q2<= sreg4(2)  ;
Q1<= sreg4(1)  ;
Q0<= sreg4(0)  ;

end v1;




-- 4-bit Serial to Parallel Shift Register 
-- with asynchronous set and clock enable
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG4SE is
port (PRE : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG4SE ;

architecture v1 of SPREG4SE is
signal sreg4 : std_logic_vector (3 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg4 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
sreg4 <= sreg4(2 downto 0) & SI ;
end if ;
end if ;
end process ;

Q3<= sreg4(3)   ;
Q2<= sreg4(2)   ;
Q1<= sreg4(1)   ;
Q0<= sreg4(0)   ;

end v1;




-- 8-bit Serial to Parallel Shift Register 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG8 is
port (
	CLK : in std_logic ;
	SI : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG8 ;

architecture v1 of SPREG8 is
signal sreg8 : std_logic_vector (7 downto 0) ;

begin

process (CLK)
begin
if CLK = '1' and CLK'event then
sreg8 <= sreg8(6 downto 0) & SI  ;
end if ;
end process ;

Q7 <= sreg8(7)  ;
Q6 <= sreg8(6)  ;
Q5 <= sreg8(5)  ;
Q4 <= sreg8(4)  ;
Q3 <= sreg8(3)  ;
Q2 <= sreg8(2)  ;
Q1 <= sreg8(1)  ;
Q0 <= sreg8(0)  ;

end v1;




-- 8-bit Serial to Parallel Shift Register 
-- with clock enable 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG8E is
port (
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG8E ;

architecture v1 of SPREG8E is
signal sreg8 : std_logic_vector (7 downto 0) ;

begin

process (CE,CLK)
begin
if CLK = '1' and CLK'event then
if CE = '1' then 
sreg8 <= sreg8(6 downto 0) & SI  ;
end if ;
end if ;
end process ;

Q7 <= sreg8(7)   ;
Q6 <= sreg8(6)   ;
Q5 <= sreg8(5)   ;
Q4 <= sreg8(4)   ;
Q3 <= sreg8(3)   ;
Q2 <= sreg8(2)   ;
Q1 <= sreg8(1)   ;
Q0 <= sreg8(0)   ;

end v1;




-- 8-bit Serial to Parallel Shift Register with asynchronous reset
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG8R is
port (RST : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG8R ;

architecture v1 of SPREG8R is
signal sreg8 : std_logic_vector (7 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg8 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
sreg8 <= sreg8(6 downto 0) & SI  ;
end if ;
end process ;

Q7 <= sreg8(7)   ;
Q6 <= sreg8(6)   ;
Q5 <= sreg8(5)   ;
Q4 <= sreg8(4)   ;
Q3 <= sreg8(3)   ;
Q2 <= sreg8(2)   ;
Q1 <= sreg8(1)   ;
Q0 <= sreg8(0)   ;

end v1;




-- 8-bit Serial to Parallel Shift Register 
-- with asynchronous reset and clock enable 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG8RE is
port (RST : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG8RE ;

architecture v1 of SPREG8RE is
signal sreg8 : std_logic_vector (7 downto 0) ;

begin

process (RST,CLK)
begin
if RST = '1' then
sreg8 <= (others => '0') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
sreg8 <= sreg8(6 downto 0) & SI  ;
end if ;
end if ;
end process ;

Q7 <= sreg8(7)   ;
Q6 <= sreg8(6)   ;
Q5 <= sreg8(5)   ;
Q4 <= sreg8(4)   ;
Q3 <= sreg8(3)   ;
Q2 <= sreg8(2)   ;
Q1 <= sreg8(1)   ;
Q0 <= sreg8(0)   ;

end v1;




-- 8-bit Serial to Parallel Shift Register with asynchronous set
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG8S is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG8S ;

architecture v1 of SPREG8S is
signal sreg8 : std_logic_vector (7 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg8 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
sreg8 <= sreg8(6 downto 0) & SI  ;
end if ;
end process ;

Q7 <= sreg8(7)   ;
Q6 <= sreg8(6)   ;
Q5 <= sreg8(5)   ;
Q4 <= sreg8(4)   ;
Q3 <= sreg8(3)   ;
Q2 <= sreg8(2)   ;
Q1 <= sreg8(1)   ;
Q0 <= sreg8(0)   ;

end v1;




-- 8-bit Serial to Parallel Shift Register 
-- with asynchronous set and clock enable 
-- Philips CPLD Applications
-- July 4, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity SPREG8SE is
port (PRE : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	SI : in std_logic ;
	Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0 :  out std_logic
) ;
end SPREG8SE ;

architecture v1 of SPREG8SE is
signal sreg8 : std_logic_vector (7 downto 0) ;

begin

process (PRE,CLK)
begin
if PRE = '1' then
sreg8 <= (others => '1') ;
elsif CLK = '1' and CLK'event then
if CE = '1' then 
sreg8 <= sreg8(6 downto 0) & SI  ;
end if ;
end if ;
end process ;

Q7 <= sreg8(7)   ;
Q6 <= sreg8(6)   ;
Q5 <= sreg8(5)   ;
Q4 <= sreg8(4)   ;
Q3 <= sreg8(3)   ;
Q2 <= sreg8(2)   ;
Q1 <= sreg8(1)   ;
Q0 <= sreg8(0)   ;

end v1;




-- Set Reset Flip Flop
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity SRFF is port (
CLK,S,R : in std_logic ;
Q : out std_logic ;
QN :out std_logic
) ;
end SRFF ;

architecture v1 of SRFF is
signal n1 : std_logic ;
begin
process (CLK,S,R)
begin
if CLK = '1' and CLK'event then
if (S = '1') and (R = '1') then
n1 <= not n1 ;
elsif R = '1' then
n1 <= '0' ;
elsif S = '1' then
n1 <= '1' ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;
              	

-- Set Reset Flip Flop with clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity SRFFE is port (
CE,CLK,S,R : in std_logic ;
Q : out std_logic ;
QN :out std_logic
) ;
end SRFFE ;

architecture v1 of SRFFE is
signal n1 : std_logic ;
begin
process (CE,CLK,S,R)
begin
if CLK = '1' and CLK'event then
if CE = '1' then 
if (S = '1') and (R = '1') then
n1 <= not n1 ;
elsif R = '1' then
n1 <= '0' ;
elsif S = '1' then
n1 <= '1' ;
end if ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;
              	

-- Set Reset Flip Flop with asynchronous reset
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity SRFFR is port (
RST,CLK,S,R : in std_logic ;
Q : out std_logic ;
QN :out std_logic
) ;
end SRFFR ;

architecture v1 of SRFFR is
signal n1 : std_logic ;
begin
process (RST,CLK,S,R)
begin
if RST = '1' then
n1 <= '0' ;
elsif CLK = '1' and CLK'event then
if (S = '1') and (R = '1') then
n1 <= not n1 ;
elsif R = '1' then
n1 <= '0' ;
elsif S = '1' then
n1 <= '1' ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;
              	

-- Set Reset Flip Flop with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity SRFFRE is port (
RST,CE,CLK,S,R : in std_logic ;
Q : out std_logic ;
QN :out std_logic
) ;
end SRFFRE ;

architecture v1 of SRFFRE is
signal n1 : std_logic ;
begin
process (RST,CLK,CE,S,R)
begin
if RST = '1' then
n1 <= '0' ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
if (S = '1') and (R = '1') then
n1 <= not n1 ;
elsif R = '1' then
n1 <= '0' ;
elsif S = '1' then
n1 <= '1' ;
end if ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;
              	

-- Set Reset Flip Flop with asynchronous set
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity SRFFS is port (
PRE,CLK,S,R : in std_logic ;
Q : out std_logic ;
QN : out std_logic
) ;
end SRFFS ;

architecture v1 of SRFFS is
signal n1 : std_logic ;
begin
process (PRE,CLK,S,R)
begin
if PRE = '1' then
n1 <= '1' ;
elsif CLK = '1' and CLK'event then
if (S = '1') and (R = '1') then
n1 <= not n1 ;
elsif R = '1' then
n1 <= '0' ;
elsif S = '1' then
n1 <= '1' ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;
              	

-- Set Reset Flip Flop with asynchronous reset and clock enable
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity SRFFSE is port (
PRE,CE,CLK,S,R : in std_logic ;
Q : out std_logic ;
QN :out std_logic
) ;
end SRFFSE ;

architecture v1 of SRFFSE is
signal n1 : std_logic ;
begin
process (PRE,CLK,CE,S,R)
begin
if PRE = '1' then
n1 <= '1' ;
elsif CLK = '1' and CLK'event then
if CE = '1' then
if (S = '1') and (R = '1') then
n1 <= not n1 ;
elsif R = '1' then
n1 <= '0' ;
elsif S = '1' then
n1 <= '1' ;
end if ;
end if ;
end if ;
end process ;

Q <= n1  ;
QN <= not n1  ;

end v1;
              	

-- 16-bit Subtractor 
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity SUB16 is 
	port (A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic ;
		A8,A9,A10,A11,A12,A13,A14,A15 : in std_logic ;
		B0,B1,B2,B3,B4,B5,B6,B7 : in std_logic ;
		B8,B9,B10,B11,B12,B13,B14,B15 : in std_logic ;
		S8,S9,S10,S11,S12,S13,S14,S15 : out std_logic ;
		S7,S6,S5,S4,S3,S2,S1,S0 : out std_logic) ;
end SUB16 ;

architecture v1 of SUB16 is 
signal A_i : unsigned (15 downto 0) ;
signal B_i : unsigned (15 downto 0) ;
signal S_i : unsigned (15 downto 0) ;

begin
A_i <= A15 & A14 & A13 & A12 & A11 & A10 & A9 & A8 & A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= B15 & B14 & B13 & B12 & B11 & B10 & B9 & B8 & B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0  ;

S_i  <= A_i - B_i ;

S15 <= S_i(15)  ;
S14 <= S_i(14)  ;
S13 <= S_i(13)  ;
S12 <= S_i(12)  ;
S11 <= S_i(11)  ;
S10 <= S_i(10)  ;
S9 <= S_i(9)  ;
S8 <= S_i(8)  ;
S7 <= S_i(7)  ;
S6 <= S_i(6)  ;
S5 <= S_i(5)  ;
S4 <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;


end v1;


-- 2-bit Subtractor 
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity SUB2 is 
	port (A0,A1 : in std_logic ;
		B0,B1 : in std_logic ;
		S1,S0: out std_logic) ;
end SUB2 ;

architecture v1 of SUB2 is 
signal A_i : unsigned (1 downto 0) ;
signal B_i : unsigned (1 downto 0) ;
signal S_i : unsigned (1 downto 0) ;

begin
A_i <= A1 & A0 ;
B_i <= B1 & B0  ;

S_i  <= A_i - B_i ;

S1 <= S_i(1)  ;
S0 <= S_i(0)  ;

end v1;


-- 4-bit Subtractor 

-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity SUB4 is 
	port (A0,A1,A2,A3 : in std_logic ;
		B0,B1,B2,B3 : in std_logic ;
		S3,S2,S1,S0 : out std_logic) ;
end SUB4 ;

architecture v1 of SUB4 is 
signal A_i : unsigned (3 downto 0) ;
signal B_i : unsigned (3 downto 0) ;
signal S_i : unsigned (3 downto 0) ;

begin
A_i <= A3 & A2 & A1 & A0 ;
B_i <= B3 & B2 & B1 & B0  ;

S_i  <= A_i - B_i ;

S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;

end v1;


-- 8-bit Subtractor 
-- Philips CPLD Applications
-- 31 Oct 1996 

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;

entity SUB8 is 
	port (A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic ;
		B0,B1,B2,B3,B4,B5,B6,B7 : in std_logic ;
		S7,S6,S5,S4,S3,S2,S1,S0 : out std_logic) ;
end SUB8 ;

architecture v1 of SUB8 is 
signal A_i : unsigned (7 downto 0) ;
signal B_i : unsigned (7 downto 0) ;
signal S_i : unsigned (7 downto 0) ;

begin
A_i <= A7 & A6 & A5 & A4 & A3 & A2 & A1 & A0 ;
B_i <= B7 & B6 & B5 & B4 & B3 & B2 & B1 & B0  ;

S_i  <= A_i - B_i ;

S7 <= S_i(7)  ;
S6 <= S_i(6)  ;
S5 <= S_i(5)  ;
S4 <= S_i(4)  ;
S3 <= S_i(3)  ;
S2 <= S_i(2)  ;
S1 <= S_i(1)  ;
S0 <= S_i(0)  ;

end v1;


-- T Flip Flop
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity TFF is
port (CLK : in std_logic ;
	T : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end TFF ;

architecture v1 of TFF is 
signal n1 : std_logic ;
signal n2 : std_logic ;
begin

n1 <= n2 xor T ;

process (CLK)
begin
if (CLK'event and CLK='1') then
n2 <= n1 ;
end if ;
end process ;
Q <= n2  ;
QN <= not n2  ;
end v1;


-- T Flip Flop w clock enable
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity TFFE is
port (CE : in std_logic ;
	CLK : in std_logic ;
	T : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end TFFE ;

architecture v1 of TFFE is 
signal n1 : std_logic ;
signal n2 : std_logic ;
begin
n1 <= n2 xor T ;
process (CE,CLK)
begin
if (CLK'event and CLK='1') then
if CE = '1' then
n2 <= n1 ;
end if ;
end if ;
end process ;

Q <= n2  ;
QN <= not n2  ;

end v1;


-- T Flip Flop w asynchronous reset
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity TFFR is
port (RST : in std_logic ;
	CLK : in std_logic ;
	T : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end TFFR ;

architecture v1 of TFFR is 
signal n1 : std_logic ;
signal n2 : std_logic ;
begin
n1 <= n2 xor T ;
process (RST,CLK)
begin
if RST = '1' then
n2 <= '0'  ;
elsif (CLK'event and CLK='1') then
n2 <= n1 ;
end if ;
end process ;
Q <= n2  ;
QN <= not n2  ;

end v1;


-- T Flip Flop w asynchronous reset and clock enable
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity TFFRE is
port (RST : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	T : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end TFFRE ;

architecture v1 of TFFRE is 
signal n1 : std_logic ;
signal n2 : std_logic ;
begin
n1 <= T xor n2 ;
process (RST,CLK)
begin
if RST = '1' then
n2 <= '0' ;
elsif (CLK'event and CLK='1') then
if CE = '1' then
n2 <= n1 ;
end if ;
end if ;
end process ;

Q <= n2  ;
QN <= not n2  ;

end v1;


-- T Flip Flop w asynchronous set
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity TFFS is
port (PRE : in std_logic ;
	CLK : in std_logic ;
	T : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end TFFS ;

architecture v1 of TFFS is 
signal n1 : std_logic ;
signal n2 : std_logic ;
begin
n1 <= n2 xor T ;
process (PRE,CLK)
begin
if PRE = '1' then
n2 <= '1' ;
elsif (CLK'event and CLK='1') then
n2 <= n1 ;
end if ;
end process ;

Q <= n2  ;
QN <= not n2  ;

end v1;


-- T Flip Flop w asynchronous set and clock enable
-- Philips CPLD Applications
-- August 28, 1996

library ieee ;
use ieee.std_logic_1164.all ;

entity TFFSE is
port (PRE : in std_logic ;
	CE : in std_logic ;
	CLK : in std_logic ;
	T : in std_logic ;
	Q : out std_logic ;
	QN : out std_logic 
	) ;
end TFFSE ;

architecture v1 of TFFSE is 
signal n1 : std_logic ;
signal n2 : std_logic ;
begin
n1 <= T xor n2 ;
process (PRE,CLK)
begin
if PRE = '1' then
n2 <= '1' ;
elsif (CLK'event and CLK='1') then
if CE = '1' then
n2 <= n1 ;
end if ;
end if ;
end process ;

Q <= n2  ;
QN <= not n2  ;

end v1;


-- Tristate buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity TRI is
	port (  E : in std_logic ;
		IN0 : in std_logic ;
		O : out std_logic
	) ;
end TRI ;

architecture v1 of TRI is

begin
	O <= IN0 when E = '1' else 'Z'  ;

end v1;

-- 16-bit Tristate Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity TRI16 is
	port ( E : in std_logic ;  
		IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		O15,O14,O13,O12,O11,O10,O9,O8,
		O7,O6,O5,O4,O3,O2,O1,O0 : out std_logic
	) ;
end TRI16 ;

architecture v1 of TRI16 is

begin
	O15 <= IN15 when E = '1' else 'Z'  ;
	O14 <= IN14 when E = '1' else 'Z'  ;
	O13 <= IN13 when E = '1' else 'Z'  ;
	O12 <= IN12 when E = '1' else 'Z'  ;
	O11 <= IN11 when E = '1' else 'Z'  ;
	O10 <= IN10 when E = '1' else 'Z'  ;
	O9 <= IN9 when E = '1' else 'Z'  ;
	O8 <= IN8 when E = '1' else 'Z'  ;
	O7 <= IN7 when E = '1' else 'Z'  ;
	O6 <= IN6 when E = '1' else 'Z'  ;
	O5 <= IN5 when E = '1' else 'Z'  ;
	O4 <= IN4 when E = '1' else 'Z'  ;
	O3 <= IN3 when E = '1' else 'Z'  ;
	O2 <= IN2 when E = '1' else 'Z'  ;
	O1 <= IN1 when E = '1' else 'Z'  ;
	O0 <= IN0 when E = '1' else 'Z'  ;

end v1;

-- 2-bit Tristate Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity TRI2 is
	port (  E : in std_logic ;
		IN1,IN0 : in std_logic ;
		O1,O0 : out std_logic
	) ;
end TRI2 ;

architecture v1 of TRI2 is

begin
	O1 <= IN1 when E = '1' else 'Z'  ;
	O0 <= IN0 when E = '1' else 'Z'  ;
end v1;

-- 4-bit Tristate Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity TRI4 is
	port ( E : in std_logic ; 
		IN3,IN2,IN1,IN0 : in std_logic ;
		O3,O2,O1,O0 : out std_logic
	) ;
end TRI4 ;

architecture v1 of TRI4 is

begin
	O3 <= IN3 when E = '1' else 'Z'  ;
	O2 <= IN2 when E = '1' else 'Z'  ;
	O1 <= IN1 when E = '1' else 'Z'  ;
	O0 <= IN0 when E = '1' else 'Z'  ;

end v1;

-- 8-bit Tristate Buffer
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity TRI8 is
	port ( E : in std_logic ; 
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		O7,O6,O5,O4,O3,O2,O1,O0 : out std_logic
	) ;
end TRI8 ;

architecture v1 of TRI8 is

begin
	O7 <= IN7 when E = '1' else 'Z'  ;
	O6 <= IN6 when E = '1' else 'Z'  ;
	O5 <= IN5 when E = '1' else 'Z'  ;
	O4 <= IN4 when E = '1' else 'Z'  ;
	O3 <= IN3 when E = '1' else 'Z'  ;
	O2 <= IN2 when E = '1' else 'Z'  ;
	O1 <= IN1 when E = '1' else 'Z'  ;
	O0 <= IN0 when E = '1' else 'Z'  ;

end v1;

-- Philips CPLD Applications
-- Sep 11, 1998
-- Supply

library ieee ;
use ieee.std_logic_1164.all ;

entity VDD is port (
O : out std_logic
) ;
end VDD ;

architecture v1 of VDD is
begin
O <= '1' ;
end v1;


-- 2-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR2 ;

architecture v1 of XNR2 is

begin
	Z <= not (IN1 xor IN0)  ;

end v1;

-- 3-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR3 ;

architecture v1 of XNR3 is

begin
	Z <= not (IN2 xor IN1 xor IN0)  ;

end v1;

-- 4-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR4 ;

architecture v1 of XNR4 is

begin
	Z <= not (IN3 xor IN2 xor IN1 xor IN0)  ;

end v1;

-- 5-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR5 ;

architecture v1 of XNR5 is

begin
	Z <= not (IN4 xor IN3 xor IN2 xor IN1 xor IN0)  ;

end v1;

-- 6-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR6 is
	port (  
		IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR6 ;

architecture v1 of XNR6 is

begin
	Z <= not (IN5 xor IN4 xor IN3 xor IN2 xor IN1 xor IN0)  ;

end v1;

-- 7-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR7 is
	port (  
		IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR7 ;

architecture v1 of XNR7 is

begin
Z <= not (IN6 xor IN5 xor IN4 xor IN3 xor IN2 xor IN1 xor IN0)  ;

end v1;

-- 8-input XNOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XNR8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XNR8 ;

architecture v1 of XNR8 is

begin
Z <= not (IN7 xor IN6 xor IN5 xor IN4 xor IN3 xor IN2 xor IN1 xor IN0)  ;

end v1;

-- 2-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR2 is
	port (  
		IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR2 ;

architecture v1 of XR2 is

begin
	Z <= IN1 xor IN0  ;

end v1;

-- 3-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR3 is
	port (  
		IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR3 ;

architecture v1 of XR3 is

begin
	Z <= IN2 xor IN1 xor IN0  ;

end v1;

-- 4-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR4 is
	port (  
		IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR4 ;

architecture v1 of XR4 is

begin
	Z <= IN3 xor IN2 xor IN1 xor IN0  ;

end v1;

-- 5-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR5 is
	port (  
		IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR5 ;

architecture v1 of XR5 is

begin
	Z <= IN4 xor IN3 xor IN2 xor IN1 xor IN0  ;

end v1;

-- 6-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR6 is
	port (  
		IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR6 ;

architecture v1 of XR6 is

begin
	Z <= IN5 xor IN4 xor IN3 xor IN2 xor IN1 xor IN0  ;

end v1;

-- 7-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR7 is
	port (  
		IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR7 ;

architecture v1 of XR7 is

begin
	Z <= IN6 xor IN5 xor IN4 xor IN3 xor IN2 xor IN1 xor IN0  ;

end v1;

-- 8-input XOR 
-- Philips CPLD Applications
-- Aug 26, 1998

library ieee ;
use ieee.std_logic_1164.all ;

entity XR8 is
	port (  
		IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0 : in std_logic ;
		Z : out std_logic
	) ;
end XR8 ;

architecture v1 of XR8 is

begin
Z <= IN7 xor IN6 xor IN5 xor IN4 xor IN3 xor IN2 xor IN1 xor IN0  ;

end v1;

