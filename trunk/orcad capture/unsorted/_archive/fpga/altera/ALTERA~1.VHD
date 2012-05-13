--***************************************************************************
--*
--*                         Copyright (C) 1987-199
--*                              by OrCAD, INC.
--*
--*                           All rights reserved.
--*
--***************************************************************************
   
   
-- Purpose:     OrCAD Simulate for Windows
--	             altlib Old-style Macro Function VHDL Source File
-- File:        altlib_M.VHD
-- Date:        January 6, 1997
-- Version:     v7.11
-- Resource:    National, Logic Data Book, 1984
-- Delay units: Unit delay 
--
-- Author History	|Last Touched	|Reason:  
--	Kathy Horvath	|08-19-98		| Corrected the 21MUX macro. The macro did not 
--									| take into consideration results when the 
--									| selection bit becomes something other than
--									| '0' or '1'. Corrected by adding in an if statement
--									| which causes the output to go to 'X' when the 
--									| selection bit is not a '0' or '1'.
--	Jim Davis		|01-19-98		| Corrected the Freqdiv macro. Freqdiv was
--									| dividing at twice the rate it was supposed
--									| to, the divide-by-2 was 4, 4 was 8, 8 was 16
--									| and 16 was 32. Corrected by cutting in half
--									| the count comparison.
--	Jim Davis		|12/05/97		| Correction to the 74184 and 74185. Removed 
--									| assignment of outputs (Y) to variable vectors
--									| (Outvec(n)).
--									| Added Gate input to process body logic to make
--									| sure that outputs don't get gated by 'X' or 'U'. 
-- Troy Scott		|11/28/97		| Corrections to 16CUDSLR, and 74396 to avoid 
--									| "reading" out mode ports and functionality.
--	Jim Davis		|07/07/97		| Modified 74374 macro to add an active-
--                                	| Low Output Enable Pin (OEN). The change
--                                	| was implemented by copying the functionality
--                                	| of the 74373. 

--*****************************************************************************
-- altlib MACRO FUNCTION MODELS

library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;use altlib.all;

entity \16CUDSLR\ is
  port (SETN,CLRN,STCT,DNUP,LTRT,DATA,CLK: in std_logic;
        Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16: out std_logic);				  
end \16CUDSLR\;

architecture MODEL of \16CUDSLR\ is
    signal QCNT: unsigned(16 downto 1):= (others => '0');
begin
    COUNTER: process(SETN,CLRN,STCT,DNUP,LTRT,DATA,CLK) 
    begin
       if (CLRN='0') then         -- Clear
          QCNT <= (others => '0');
       elsif (SETN='0') then      -- Set
          QCNT <= (others => '1');
       elsif (CLK='1' and CLK'EVENT) then

          if (STCT='0') then      -- Counter Mode
             if (DNUP='1') then
                QCNT <=QCNT-1;     -- Count Down
             elsif (DNUP='0') then
                QCNT <=QCNT+1;     -- Count Up
             end if;

          elsif (STCT='1') then   -- Shifter Mode
             if (LTRT='0') then   -- Shift Left
                QCNT(1) <= DATA;
                for i in 2 to 16 loop
                   QCNT(i) <=QCNT(i-1);
                end loop;
             elsif (LTRT='1') then -- Shift Right
                for i in 1 to 15 loop
                   QCNT(i) <=QCNT(i+1);
                end loop;
                QCNT(16) <=DATA;
             end if;
          end if;

       end if;

    end process;

    Q1 <= QCNT(1) after 1 ns;
    Q2 <= QCNT(2) after 1 ns;
    Q3 <= QCNT(3) after 1 ns;
    Q4 <= QCNT(4) after 1 ns;
    Q5 <= QCNT(5) after 1 ns;
    Q6 <= QCNT(6) after 1 ns;
    Q7 <= QCNT(7) after 1 ns;
    Q8 <= QCNT(8) after 1 ns;
    Q9 <= QCNT(9) after 1 ns;
    Q10 <= QCNT(10) after 1 ns;
    Q11 <= QCNT(11) after 1 ns;
    Q12 <= QCNT(12) after 1 ns;
    Q13 <= QCNT(13) after 1 ns;
    Q14 <= QCNT(14) after 1 ns;
    Q15 <= QCNT(15) after 1 ns;
    Q16 <= QCNT(16) after 1 ns;


END model;



library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity mult4 IS PORT(
A1 : IN   std_logic;
A2 : IN   std_logic;
A3 : IN   std_logic;
A4 : IN   std_logic;
A5 : IN   std_logic;
B1 : IN   std_logic;
B2 : IN   std_logic;
B3 : IN   std_logic;
B4 : IN   std_logic;
B5 : IN   std_logic;
G  : IN   std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic;
Y9 : OUT  std_logic);
END mult4;

architecture model OF mult4 IS

    BEGIN
    PROCESS(A1, A2, A3, A4, A5, B1, B2, B3, B4, B5, G)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;
    VARIABLE y : INTEGER := 0;
	 VARIABLE vecta : std_logic_vector(3 DOWNTO 0);
	 VARIABLE vectb : std_logic_vector(3 DOWNTO 0);
	 VARIABLE vecty : std_logic_vector(7 DOWNTO 0);
	 
    BEGIN
	a := 0;
	b := 0;
	
	vecta(0) := A1;
	vecta(1) := A2;
	vecta(2) := A3;
	vecta(3) := A4;
	vectb(0) := B1;
	vectb(1) := B2;
	vectb(2) := B3;
	vectb(3) := B4;

   --convert vector to integer
	FOR i IN 0 TO 3 LOOP	
		if(vecta(i) = '1') THEN		
			a := a + 2**i;
		END if;
	END LOOP;

   --convert vector to integer
	FOR i IN 0 TO 3 LOOP	
		if(vectb(i) = '1') THEN		
			b := b + 2**i;
		END if;
	END LOOP;

   if(G = '0') THEN
         Y1 <= '0' AFTER 1 ns;
         Y2 <= '0' AFTER 1 ns;
         Y3 <= '0' AFTER 1 ns;
         Y4 <= '0' AFTER 1 ns;
         Y5 <= '0' AFTER 1 ns;
         Y6 <= '0' AFTER 1 ns;
         Y7 <= '0' AFTER 1 ns;
         Y8 <= '0' AFTER 1 ns;
         Y9 <= '0' AFTER 1 ns;
   ELSE
         y := a * b;

         Y9 <= (A5 XOR B5) AFTER 1 ns;

         --convert integer to vector
			FOR i IN 0 TO 7 LOOP
				if(y MOD 2 = 1) THEN
					vecty(i) := '1';
				ELSE 
					vecty(i) := '0';
				END if;
				y := y / 2;
			END LOOP;

			Y1 <= vecty(0) AFTER 1 ns;
			Y2 <= vecty(1) AFTER 1 ns;
			Y3 <= vecty(2) AFTER 1 ns;
			Y4 <= vecty(3) AFTER 1 ns;
			Y5 <= vecty(4) AFTER 1 ns;
			Y6 <= vecty(5) AFTER 1 ns;
			Y7 <= vecty(6) AFTER 1 ns;
			Y8 <= vecty(7) AFTER 1 ns;

    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity mult2 IS PORT(
A0 : IN   std_logic;
A1 : IN   std_logic;
A2 : IN   std_logic;
B0 : IN   std_logic;
B1 : IN   std_logic;
B2 : IN   std_logic;
G  : IN   std_logic;
Y0 : OUT  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic);
END mult2;

architecture model OF mult2 IS

    BEGIN
    PROCESS(A0, A1, A2, B0, B1, B2, G)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;
    VARIABLE y : INTEGER := 0;
	 VARIABLE vecta : std_logic_vector(1 DOWNTO 0);
	 VARIABLE vectb : std_logic_vector(1 DOWNTO 0);
	 VARIABLE vecty : std_logic_vector(3 DOWNTO 0);

    BEGIN
	a := 0;
	b := 0;

	vecta(0) := A0;
	vecta(1) := A1;
	vectb(0) := B0;
	vectb(1) := B1;

   --convert vector to integer
   FOR i IN 0 TO 1 LOOP
		if(vecta(i) = '1') THEN
			a := a + 2**i;
		END if;
	END LOOP;

   --convert vector to integer
   FOR i IN 0 TO 1 LOOP
		if(vectb(i) = '1') THEN
			b := b + 2**i;
		END if;
	END LOOP;

   if(G = '0') THEN
         Y0 <= '0' AFTER 1 ns;
         Y1 <= '0' AFTER 1 ns;
         Y2 <= '0' AFTER 1 ns;
         Y3 <= '0' AFTER 1 ns;
         Y4 <= '0' AFTER 1 ns;
    ELSE
         y := a * b;

         Y4 <= (A2 XOR B2) AFTER 1 ns;

         --convert integer to vector
			FOR i IN 0 TO 3 LOOP
				if(y MOD 2 = 1) THEN
					vecty(i) := '1';
				ELSE 
					vecty(i) := '0';
				END if;
				y := y / 2;
			END LOOP;
			
			Y0 <= vecty(0) AFTER 1 ns;
			Y1 <= vecty(1) AFTER 1 ns;
			Y2 <= vecty(2) AFTER 1 ns;
			Y3 <= vecty(3) AFTER 1 ns;
	END if;
   END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity tmult4 IS PORT(
A1  : IN   std_logic;
A2  : IN   std_logic;
A3  : IN   std_logic;
A4  : IN   std_logic;
A5  : IN   std_logic;
B1  : IN   std_logic;
B2  : IN   std_logic;
B3  : IN   std_logic;
B4  : IN   std_logic;
B5  : IN   std_logic;
GAN : IN   std_logic;
GBN : IN   std_logic;
Y1  : OUT  std_logic;
Y2  : OUT  std_logic;
Y3  : OUT  std_logic;
Y4  : OUT  std_logic;
Y5  : OUT  std_logic;
Y6  : OUT  std_logic;
Y7  : OUT  std_logic;
Y8  : OUT  std_logic;
Y9  : OUT  std_logic);
END tmult4;

architecture model OF tmult4 IS

    BEGIN
    PROCESS(A1, A2, A3, A4, A5, B1, B2, B3, B4, B5, GAN, GBN)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;
    VARIABLE y : INTEGER := 0;
	 VARIABLE vecta : std_logic_vector(4 DOWNTO 0);
	 VARIABLE vectb : std_logic_vector(4 DOWNTO 0);
	 VARIABLE vecty : std_logic_vector(8 DOWNTO 0);

    BEGIN
	a := 0;
	b := 0;

	vecta(0) := A1;
	vecta(1) := A2;
	vecta(2) := A3;
	vecta(3) := A4;
	vecta(4) := A5;
	vectb(0) := B1;
	vectb(1) := B2;
	vectb(2) := B3;
	vectb(3) := B4;
	vectb(4) := B5;

   --convert vector to integer
	FOR i IN 0 TO 4 LOOP
		if(vecta(i) = '1') THEN
			a := a + 2**i;
		END if;
	END LOOP;


   --convert vector to integer
	FOR i IN 0 TO 4 LOOP
		if(vectb(i) = '1') THEN
			b := b + 2**i;
		END if;
	END LOOP;

	if(GAN = '1') OR (GBN = '1') THEN
         Y1 <= '0' AFTER 1 ns;
         Y2 <= '0' AFTER 1 ns;
         Y3 <= '0' AFTER 1 ns;
         Y4 <= '0' AFTER 1 ns;
         Y5 <= '0' AFTER 1 ns;
         Y6 <= '0' AFTER 1 ns;
         Y7 <= '0' AFTER 1 ns;
         Y8 <= '0' AFTER 1 ns;
         Y9 <= '0' AFTER 1 ns;
    ELSE
         y := a * b;

         --convert integer to vector
			FOR i IN 0 TO 8 LOOP
				if(y MOD 2 = 1) THEN
					vecty(i) := '1';
				ELSE
					vecty(i) := '0';
				END if;
				y := y / 2;
			END LOOP;

			Y1 <= vecty(0) AFTER 1 ns;
			Y2 <= vecty(1) AFTER 1 ns;
			Y3 <= vecty(2) AFTER 1 ns;
			Y4 <= vecty(3) AFTER 1 ns;
			Y5 <= vecty(4) AFTER 1 ns;
			Y6 <= vecty(5) AFTER 1 ns;
			Y7 <= vecty(6) AFTER 1 ns;
			Y8 <= vecty(7) AFTER 1 ns;
			Y9 <= vecty(8) AFTER 1 ns;
	END if;
   END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity mult24 IS PORT(
A1 : IN   std_logic;
A2 : IN   std_logic;
A3 : IN   std_logic;
A4 : IN   std_logic;
A5 : IN   std_logic;
B1 : IN   std_logic;
B2 : IN   std_logic;
B3 : IN   std_logic;
G  : IN   std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic);
END mult24;

architecture model OF mult24 IS

    BEGIN
    PROCESS(A1, A2, A3, A4, B1, B2, G, A5, B3)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;
    VARIABLE y : INTEGER := 0;
	 VARIABLE vecta : std_logic_vector(3 DOWNTO 0);
	 VARIABLE vectb : std_logic_vector(1 DOWNTO 0);
	 VARIABLE vecty : std_logic_vector(5 DOWNTO 0);

    BEGIN
	a := 0;
	b := 0;

	vecta(0) := A1;
	vecta(1) := A2;
	vecta(2) := A3;
	vecta(3) := A4;
	vectb(0) := B1;
	vectb(1) := B2;

    --convert vector to integer
	FOR i IN 0 TO 3 LOOP
		if(vecta(i) = '1') THEN
			a := a + 2**i;
		END if;
	END LOOP;

    --convert vector to integer
	FOR i IN 0 TO 1 LOOP
		if(vectb(i) = '1') THEN
			b := b + 2**i;
		END if;
	END LOOP;
    
    if(G = '0') THEN
         Y1 <= '0' AFTER 1 ns;
         Y2 <= '0' AFTER 1 ns;
         Y3 <= '0' AFTER 1 ns;
         Y4 <= '0' AFTER 1 ns;
         Y5 <= '0' AFTER 1 ns;
         Y6 <= '0' AFTER 1 ns;
         Y7 <= '0' AFTER 1 ns;
    ELSE
         y := a * b;

         Y7 <= (A5 XOR B3) AFTER 1 ns;

         --convert integer to vector
			FOR i IN 0 TO 5 LOOP
				if(y MOD 2 = 1) THEN
					vecty(i) := '1';
				ELSE 
					vecty(i) := '0';
				END if;
				y := y / 2;
			END LOOP;
			
			Y1 <= vecty(0) AFTER 1 ns;
			Y2 <= vecty(1) AFTER 1 ns;
			Y3 <= vecty(2) AFTER 1 ns;
			Y4 <= vecty(3) AFTER 1 ns;
			Y5 <= vecty(4) AFTER 1 ns;
			Y6 <= vecty(5) AFTER 1 ns;
	END if;
   END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \8MCOMP\ IS PORT(
A0   : IN   std_logic;
A1   : IN   std_logic;
A2   : IN   std_logic;
A3   : IN   std_logic;
A4   : IN   std_logic;
A5   : IN   std_logic;
A6   : IN   std_logic;
A7   : IN   std_logic;
B0   : IN   std_logic;
B1   : IN   std_logic;
B2   : IN   std_logic;
B3   : IN   std_logic;
B4   : IN   std_logic;
B5   : IN   std_logic;
B6   : IN   std_logic;
B7   : IN   std_logic;
AGTB : OUT  std_logic;
AEQB : OUT  std_logic;
ALTB : OUT  std_logic;
AEB0 : OUT  std_logic;
AEB1 : OUT  std_logic;
AEB2 : OUT  std_logic;
AEB3 : OUT  std_logic;
AEB4 : OUT  std_logic;
AEB5 : OUT  std_logic;
AEB6 : OUT  std_logic;
AEB7 : OUT  std_logic);
END \8MCOMP\;

architecture model OF \8MCOMP\ IS

    BEGIN
    PROCESS(A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;

    BEGIN
    a := 0;
    b := 0;

    --convert vector to integer
    FOR i IN 0 TO 7 LOOP
	     CASE i IS
         WHEN 0 =>
              if(A0 = '1') THEN
                  a := a + 2**0;
              END if;
         WHEN 1 =>
              if(A1 = '1') THEN
                  a := a + 2**1;
              END if;
         WHEN 2 =>
              if(A2 = '1') THEN
                  a := a + 2**2;
              END if;
         WHEN 3 =>
              if(A3 = '1') THEN
                  a := a + 2**3;
              END if;
         WHEN 4 =>
              if(A4 = '1') THEN
                  a := a + 2**4;
              END if;
         WHEN 5 =>
              if(A5 = '1') THEN
                  a := a + 2**5;
              END if;
         WHEN 6 =>
              if(A6 = '1') THEN
                  a := a + 2**6;
              END if;
         WHEN 7 =>
              if(A7 = '1') THEN
                  a := a + 2**7;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;
    --convert vector to integer
    FOR i IN 0 TO 7 LOOP
	     CASE i IS
         WHEN 0 =>
              if(B0 = '1') THEN
                  b := b + 2**0;
              END if;
         WHEN 1 =>
              if(B1 = '1') THEN
                  b := b + 2**1;
              END if;
         WHEN 2 =>
              if(B2 = '1') THEN
                  b := b + 2**2;
              END if;
         WHEN 3 =>
              if(B3 = '1') THEN
                  b := b + 2**3;
              END if;
         WHEN 4 =>
              if(B4 = '1') THEN
                  b := b + 2**4;
              END if;
         WHEN 5 =>
              if(B5 = '1') THEN
                  b := b + 2**5;
              END if;
         WHEN 6 =>
              if(B6 = '1') THEN
                  b := b + 2**6;
              END if;
         WHEN 7 =>
              if(B7 = '1') THEN
                  b := b + 2**7;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    if(a = b) THEN
         AEQB <= '1' AFTER 1 ns;
         ALTB <= '0' AFTER 1 ns;
         AGTB <= '0' AFTER 1 ns;
    ELSif(a > b) THEN
         AEQB <= '0' AFTER 1 ns;
         ALTB <= '0' AFTER 1 ns;
         AGTB <= '1' AFTER 1 ns;
    ELSif(a < b) THEN
         AEQB <= '0' AFTER 1 ns;
         ALTB <= '1' AFTER 1 ns;
         AGTB <= '0' AFTER 1 ns;
    END if;
    
    AEB0 <= NOT (A0 XOR B0) AFTER 1 ns;
    AEB1 <= NOT (A1 XOR B1) AFTER 1 ns;
    AEB2 <= NOT (A2 XOR B2) AFTER 1 ns;
    AEB3 <= NOT (A3 XOR B3) AFTER 1 ns;
    AEB4 <= NOT (A4 XOR B4) AFTER 1 ns;
    AEB5 <= NOT (A5 XOR B5) AFTER 1 ns;
    AEB6 <= NOT (A6 XOR B6) AFTER 1 ns;
    AEB7 <= NOT (A7 XOR B7) AFTER 1 ns;
    END PROCESS;
END model;



library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity unicnt IS PORT(
CLR  : IN     std_logic;
SET  : IN     std_logic;
LOAD : IN     std_logic;
DNUP : IN     std_logic;
CIN  : IN     std_logic;
CTST : IN     std_logic;
RTLT : IN     std_logic;
DATA : IN     std_logic;
A    : IN     std_logic;
B    : IN     std_logic;
C    : IN     std_logic;
D    : IN     std_logic;
CLK  : IN     std_logic;
QA,
QB   : OUT    std_logic;
QC   : OUT    std_logic;
QD   : OUT    std_logic;
COUT : OUT    std_logic);
END unicnt;

architecture model OF unicnt IS

    BEGIN
    PROCESS(CLR, SET, LOAD, CLK)
    VARIABLE cnt : INTEGER := 0;
	 VARIABLE qcnt : std_logic_vector(3 DOWNTO 0) := "0000";

    BEGIN
    if(CLR = '1') THEN
         qcnt := "0000";    
    ELSif(SET = '1') THEN
         qcnt := "1111";
    ELSif(LOAD = '1') THEN
         qcnt(0) := A;         
         qcnt(1) := B;
         qcnt(2) := C;
         qcnt(3) := D;
    ELSif(CLK = '1') AND CLK'EVENT THEN
         if(CTST = '1') AND (CIN = '1') THEN

         --convert vector to integer
			FOR i IN 0 TO 3 LOOP
				if(qcnt(i) = '1') THEN
					cnt := cnt + 2**i;
				END if;
			END LOOP;

			if(DNUP = '1') THEN
         	if(cnt = 0) THEN
            	COUT <= '1' AFTER 1 ns;
               cnt := 15;
            ELSE
               COUT <= '0' AFTER 1 ns;
               cnt := cnt - 1;
            END if;
       	ELSif(DNUP = '0') THEN
            if(cnt = 15) THEN
               COUT <= '1' AFTER 1 ns;
               cnt := 0;
            ELSE 
               COUT <= '0' AFTER 1 ns;
               cnt := cnt + 1;
            END if;
         END if;

			--convert integer to vector
			FOR i IN 0 TO 3 LOOP
				if(cnt MOD 2 = 1) THEN
					qcnt(i) := '1';
				ELSE 
					qcnt(i) := '0';
				END if;
				cnt := cnt / 2;
			END LOOP;

         ELSif(CTST = '0') AND (RTLT = '1') THEN
              qcnt(3) := qcnt(2);
              qcnt(2) := qcnt(1);
              qcnt(1) := qcnt(0);
              qcnt(0) := DATA;
			ELSif(CTST = '0') AND (RTLT = '0') THEN
              qcnt(0) := qcnt(1);              
              qcnt(1) := qcnt(2);
              qcnt(2) := qcnt(3);
              qcnt(3) := DATA;
         END if;
    END if;
    
    QA <= qcnt(0) AFTER 1 ns;
    QB <= qcnt(1) AFTER 1 ns;
    QC <= qcnt(2) AFTER 1 ns;
    QD <= qcnt(3) AFTER 1 ns;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \8FADD\ IS PORT(
A1   : IN   std_logic;
B1   : IN   std_logic;
A2   : IN   std_logic;
B2   : IN   std_logic;
A3   : IN   std_logic;
B3   : IN   std_logic;
A4   : IN   std_logic;
B4   : IN   std_logic;
A5   : IN   std_logic;
B5   : IN   std_logic;
A6   : IN   std_logic;
B6   : IN   std_logic;
A7   : IN   std_logic;
B7   : IN   std_logic;
A8   : IN   std_logic;
B8   : IN   std_logic;
CIN  : IN   std_logic;
SUM1 : OUT  std_logic;
SUM2 : OUT  std_logic;
SUM3 : OUT  std_logic;
SUM4 : OUT  std_logic;
SUM5 : OUT  std_logic;
SUM6 : OUT  std_logic;
SUM7 : OUT  std_logic;
SUM8 : OUT  std_logic;
COUT : OUT  std_logic);
END \8FADD\;

architecture model OF \8FADD\ IS
 
    BEGIN
    PROCESS(CIN, A1, A2, A3, A4, A5, A6, A7, A8, B1, B2, B3, B4, B5, B6, B7, B8)
    VARIABLE sum : INTEGER := 0;
    VARIABLE a   : INTEGER := 0;
    VARIABLE b   : INTEGER := 0;

    BEGIN
    a := 0;
    b := 0;

    --convert vector to integer
	 FOR i IN 0 TO 7 LOOP
	     CASE i IS
         WHEN 0 =>
              if(A1 = '1') THEN
                  a := a + 2**0;
              END if;
         WHEN 1 =>
              if(A2 = '1') THEN
                  a := a + 2**1;
              END if;
         WHEN 2 =>
              if(A3 = '1') THEN
                  a := a + 2**2;
              END if;
         WHEN 3 =>
              if(A4 = '1') THEN
                  a := a + 2**3;
              END if;
         WHEN 4 =>
              if(A5 = '1') THEN
                  a := a + 2**4;
              END if;
         WHEN 5 =>
              if(A6 = '1') THEN
                  a := a + 2**5;
              END if;
         WHEN 6 =>
              if(A7 = '1') THEN
                  a := a + 2**6;
              END if;
         WHEN 7 =>
              if(A8 = '1') THEN
                  a := a + 2**7;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    --convert vector to integer
    FOR i IN 0 TO 7 LOOP
	     CASE i IS
         WHEN 0 =>
              if(B1 = '1') THEN
                  b := b + 2**0;
              END if;
         WHEN 1 =>
              if(B2 = '1') THEN
                  b := b + 2**1;
              END if;
         WHEN 2 =>
              if(B3 = '1') THEN
                  b := b + 2**2;
              END if;
         WHEN 3 =>
              if(B4 = '1') THEN
                  b := b + 2**3;
              END if;
         WHEN 4 =>
              if(B5 = '1') THEN
                  b := b + 2**4;
              END if;
         WHEN 5 =>
              if(B6 = '1') THEN
                  b := b + 2**5;
              END if;
         WHEN 6 =>
              if(B7 = '1') THEN
                  b := b + 2**6;
              END if;
         WHEN 7 =>
              if(B8 = '1') THEN
                  b := b + 2**7;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    sum := a + b;
    if(CIN = '1') THEN
         sum := sum + 1;
    END if;

    if(sum > 255) THEN
         COUT <= '1' AFTER 1 ns;
    ELSE
         COUT <= '0' AFTER 1 ns;
    END if;

    --convert integer to vector
    FOR i IN 0 TO 7 LOOP
         if(sum MOD 2 = 1) THEN
              CASE i IS
              WHEN 0 =>
                   SUM1 <= '1' AFTER 1 ns;
              WHEN 1 =>
                   SUM2 <= '1' AFTER 1 ns;
              WHEN 2 =>
                   SUM3 <= '1' AFTER 1 ns;
              WHEN 3 =>
                   SUM4 <= '1' AFTER 1 ns;
              WHEN 4 =>
                   SUM5 <= '1' AFTER 1 ns;
              WHEN 5 =>
                   SUM6 <= '1' AFTER 1 ns;
              WHEN 6 =>
                   SUM7 <= '1' AFTER 1 ns;
              WHEN 7 =>
                   SUM8 <= '1' AFTER 1 ns;
              WHEN OTHERS => NULL;
              END CASE;
         ELSE
              CASE i IS
              WHEN 0 =>
                   SUM1 <= '0' AFTER 1 ns;
              WHEN 1 =>
                   SUM2 <= '0' AFTER 1 ns;
              WHEN 2 =>
                   SUM3 <= '0' AFTER 1 ns;
              WHEN 3 =>
                   SUM4 <= '0' AFTER 1 ns;
              WHEN 4 =>
                   SUM5 <= '0' AFTER 1 ns;
              WHEN 5 =>
                   SUM6 <= '0' AFTER 1 ns;
              WHEN 6 =>
                   SUM7 <= '0' AFTER 1 ns;
              WHEN 7 =>
                   SUM8 <= '0' AFTER 1 ns;
              WHEN OTHERS => NULL;
              END CASE;
         END if;
         sum := sum/2;
    END LOOP;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \8COUNT\ IS PORT(
CLRN : IN   std_logic;
LDN  : IN   std_logic;
DNUP : IN   std_logic;
SETN : IN   std_logic;
GN   : IN   std_logic;  
A    : IN   std_logic;
B    : IN   std_logic;
C    : IN   std_logic;
D    : IN   std_logic;
E    : IN   std_logic;
F    : IN   std_logic;
G    : IN   std_logic;
H    : IN   std_logic;
CLK  : IN   std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
QE   : OUT  std_logic;
QF   : OUT  std_logic;
QG   : OUT  std_logic;
QH   : OUT  std_logic;
COUT : OUT  std_logic);
END \8COUNT\;

architecture model OF \8COUNT\ IS

    BEGIN
    PROCESS(CLRN, SETN, DNUP, CLK)
    VARIABLE cnt : INTEGER := 0;
    VARIABLE qcnt : std_logic_vector(7 DOWNTO 0) := "00000000";

    BEGIN
    if(CLRN = '0') AND (SETN = '1') THEN
         qcnt := "00000000";    
    END if;

    if(CLRN = '1') AND (SETN = '0') THEN
         qcnt := "11111111";
    END if;

    if(CLK = '1') AND CLK'EVENT THEN
         if(CLRN = '1') AND (SETN = '1') AND (LDN = '0') THEN
              qcnt(0) := A; 
              qcnt(1) := B;
              qcnt(2) := C;
              qcnt(3) := D;
              qcnt(4) := E; 
              qcnt(5) := F;
              qcnt(6) := G;
              qcnt(7) := H;
         ELSif(CLRN = '1') AND (SETN = '1') AND (GN = '0') THEN

         	--convert vector to integer
				FOR i IN 0 TO 7 LOOP
					if(qcnt(i) = '1') THEN
						cnt := cnt + 2**i;
					END if;
				END LOOP;				


            if(DNUP = '1') THEN
                 if(cnt = 0) THEN
                      cnt := 255;
							 COUT <= '0' AFTER 1 ns;
                 ELSE
                      cnt := cnt - 1;
                      if(cnt = 0) THEN
                      	COUT <= '1' AFTER 1 ns;
                      ELSE
                      	COUT <= '0' AFTER 1 ns;
                      END if;
                 END if;
            ELSif(DNUP = '0') THEN
                 if(cnt = 255) THEN
                      cnt := 0;
                      COUT <= '0' AFTER 1 ns;
                 ELSE  
                      cnt := cnt + 1;
                      if(cnt = 255) THEN
                           COUT <= '1' AFTER 1 ns;
                      ELSE
                      		COUT <= '0' AFTER 1 ns;
							 END if;
                 END if;
            END if;

				--convert integer to vector
				FOR i IN 0 TO 7 LOOP
					if(cnt MOD 2 = 1) THEN
						qcnt(i) := '1';
					ELSE 
						qcnt(i) := '0';
					END if;
					cnt := cnt / 2;
				END LOOP;
         END if;
    END if;
    
    QA <= qcnt(0) AFTER 1 ns;
    QB <= qcnt(1) AFTER 1 ns;
    QC <= qcnt(2) AFTER 1 ns;
    QD <= qcnt(3) AFTER 1 ns;
    QE <= qcnt(4) AFTER 1 ns;
    QF <= qcnt(5) AFTER 1 ns;
    QG <= qcnt(6) AFTER 1 ns;
    QH <= qcnt(7) AFTER 1 ns;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \4COUNT\ IS PORT(
CLRN : IN   std_logic;
SETN : IN   std_logic;
LDN  : IN   std_logic;
DNUP : IN   std_logic;
CIN  : IN   std_logic;
A    : IN   std_logic;
B    : IN   std_logic;
C    : IN   std_logic;
D    : IN   std_logic;
CLK  : IN   std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
COUT : OUT  std_logic);
END \4COUNT\;

architecture model OF \4COUNT\ IS

    BEGIN
    PROCESS(CLRN, SETN, CIN, DNUP, CLK)
    VARIABLE cnt : INTEGER := 0;
  	 VARIABLE qcnt : std_logic_vector(3 DOWNTO 0) := "0000";

    BEGIN
    if(CLRN = '0') THEN
         qcnt := "0000";    
    END if;

    if(CLRN = '1') AND (SETN = '0') THEN
         qcnt := "1111";
    END if;

    if(CIN = '1') AND (DNUP = '1') AND (qcnt = "0000") THEN
         COUT <= '1' AFTER 1 ns;
    END if;

    if(CIN = '1') AND (DNUP = '0') AND (qcnt = "1111") THEN 
         COUT <= '1' AFTER 1 ns;
    END if;

    if(CLK = '1') AND CLK'EVENT THEN
         if(CLRN = '1') AND (SETN = '1') AND (LDN = '0') THEN
              qcnt(0) := A; 
              qcnt(1) := B;
              qcnt(2) := C;
              qcnt(3) := D;
         ELSif(CLRN = '1') AND (SETN = '1') THEN

              --convert vector to integer
              FOR i IN 0 TO 3 LOOP
			     CASE i IS
                   WHEN 0 =>
                        if(qcnt(0) = '1') THEN
                            cnt := cnt + 2**0;
                        END if;
                   WHEN 1 =>
                        if(qcnt(1) = '1') THEN
                            cnt := cnt + 2**1;
                        END if;
                   WHEN 2 =>
                        if(qcnt(2) = '1') THEN
                            cnt := cnt + 2**2;
                        END if;
                   WHEN 3 =>
                        if(qcnt(3) = '1') THEN
                            cnt := cnt + 2**3;
                        END if;
                   WHEN OTHERS => NULL;
                   END CASE;
			END LOOP;

              if(DNUP = '1') THEN
                   if(cnt = 0) THEN
                        cnt := 15;
								COUT <= '0' AFTER 1 ns;
                   ELSE
                        cnt := cnt - 1;
                        if(cnt = 0) THEN
                             COUT <= '1' AFTER 1 ns;
                        ELSE
                        	  COUT <= '0' AFTER 1 ns;
								END if;
                   END if;
              ELSif(DNUP = '0') THEN
                   if(cnt = 15) THEN
                        cnt := 0;
                        COUT <= '0' AFTER 1 ns;
                   ELSE 
                        cnt := cnt + 1;
                        if(cnt = 15) THEN
                             COUT <= '1' AFTER 1 ns;
                        ELSE 
                        	  COUT <= '0' AFTER 1 ns;
								END if;
                   END if;
              END if;

              --convert integer to vector
              FOR i IN 0 TO 3 LOOP
                   if(cnt MOD 2 = 1) THEN
                        CASE i IS
                        WHEN 0 =>
                             qcnt(0) := '1';
                        WHEN 1 =>
                             qcnt(1) := '1';
                        WHEN 2 =>
                             qcnt(2) := '1';
                        WHEN 3 =>
                             qcnt(3) := '1';
                        WHEN OTHERS => NULL;
                        END CASE;
                   ELSE
                        CASE i IS
                        WHEN 0 =>
                             qcnt(0) := '0';
                        WHEN 1 =>
                             qcnt(1) := '0';
                        WHEN 2 =>
                             qcnt(2) := '0';
                        WHEN 3 =>
                             qcnt(3) := '0';
                        WHEN OTHERS => NULL;
                        END CASE;
                   END if;
                   cnt := cnt/2;
              END LOOP;
         END if;
    END if;
    QA <= qcnt(0) AFTER 1 ns;
    QB <= qcnt(1) AFTER 1 ns;
    QC <= qcnt(2) AFTER 1 ns;
    QD <= qcnt(3) AFTER 1 ns;  
	END PROCESS;

END model;



library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity norltch IS PORT(
S  : IN   std_logic;
R  : IN   std_logic;
Q  : OUT  std_logic;
QN : OUT  std_logic);
END norltch;

architecture model OF norltch IS

    BEGIN

    PROCESS(S, R)

    BEGIN
    if(S = '1') OR (R = '1') THEN
         Q  <= (S AND R) OR (S AND (NOT R)) AFTER 1 ns;
         QN <= (S AND R) OR ((NOT S) AND R) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity nandltch IS PORT(
SN   : IN   std_logic;
RN   : IN   std_logic;
Q    : OUT  std_logic;
QN   : OUT  std_logic);
END nandltch;

architecture model OF nandltch IS
	BEGIN

	PROCESS(SN, RN)
	
	BEGIN
	if(SN = '0') OR (RN = '0') THEN
		Q  <= ((NOT SN) AND (NOT RN)) OR ((NOT SN) AND RN) AFTER 1 ns;
		QN <= ((NOT SN) AND (NOT RN)) OR (SN AND (NOT RN)) AFTER 1 ns;
	END if;
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity inhb IS PORT(
IN1 : IN   std_logic;
IN2 : IN   std_logic;
O   : OUT  std_logic);
END inhb;

architecture model OF inhb IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <= NOT (IN2);
    O  <= (IN1 AND L1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity gray4 IS PORT(
CLK : IN   std_logic;
ENA : IN   std_logic;
QA  : OUT  std_logic;
QB  : OUT  std_logic;
QC  : OUT  std_logic;
QD  : OUT  std_logic);
END gray4;

architecture model OF gray4 IS
    SIGNAL QARRAY : std_logic_vector(3 DOWNTO 0);

    BEGIN
    PROCESS(CLK)
    VARIABLE index : INTEGER := 0;
    VARIABLE qarray : std_logic_vector(3 DOWNTO 0);

    BEGIN
    if(ENA = '1') THEN
         if(CLK = '1') AND CLK'EVENT THEN
              index := index + 1;
              CASE index IS
              WHEN 1 =>
                   qarray := "0000";
              WHEN 2 =>
                   qarray := "0001";
              WHEN 3 =>
                   qarray := "0011";
              WHEN 4 =>
                   qarray := "0010";
              WHEN 5 =>
                   qarray := "0110";
              WHEN 6 =>
                   qarray := "0111";
              WHEN 7 =>
                   qarray := "0101";
              WHEN 8 =>
                   qarray := "0100";
              WHEN 9 =>
                   qarray := "1100";
              WHEN 10 =>
                   qarray := "1101";
              WHEN 11 =>
                   qarray := "1111";
              WHEN 12 =>
                   qarray := "1110";
              WHEN 13 =>
                   qarray := "1010";
              WHEN 14 =>
                   qarray := "1011";
              WHEN 15 =>
                   qarray := "1001";
              WHEN 16 =>
                   qarray := "1000";
                   index := 0;
              WHEN OTHERS => NULL;
              END CASE;
         END if;
    END if;    
    QA <= qarray(0) AFTER 1 ns;
    QB <= qarray(1) AFTER 1 ns;
    QC <= qarray(2) AFTER 1 ns;
    QD <= qarray(3) AFTER 1 ns;                       
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity freqdiv IS PORT(
G    : IN     std_logic;
CLR  : IN     std_logic;
CLK  : IN     std_logic;
DV16 : INOUT  std_logic;
DV8  : INOUT  std_logic;
DV4  : INOUT  std_logic;
DV2  : INOUT  std_logic);
END freqdiv;

architecture model OF freqdiv IS

    BEGIN
    PROCESS(CLK, CLR)
    VARIABLE div16 : INTEGER := 0;
    VARIABLE div8  : INTEGER := 0;
    VARIABLE div4  : INTEGER := 0;
    VARIABLE div2  : INTEGER := 0;

    BEGIN
    if(CLR = '1') THEN
         DV16 <= '0' AFTER 1 ns;
         DV8  <= '0' AFTER 1 ns;
         DV4  <= '0' AFTER 1 ns;
         DV2  <= '0' AFTER 1 ns;
    ELSif(CLK = '1') AND (G = '1') AND CLK'EVENT THEN
         div16 := div16 + 1;
         div8  := div8  + 1;
         div4  := div4  + 1;
         div2  := div2  + 1;
    END if;

    if(div16 = 8) THEN
         DV16 <= NOT (DV16);
         div16 := 0;
    END if;
 
    if(div8 = 4) THEN
         DV8 <= NOT (DV8);
         div8 := 0;
    END if;

    if(div4 = 2) THEN
         DV4 <= NOT (DV4);
         div4 := 0;
    END if;

    if(div2 = 1) THEN
         DV2 <= NOT (DV2);
         div2 := 0;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity btri IS PORT(
O   : OUT  std_logic;
I   : IN     std_logic;
OEN : IN     std_logic);
END btri;

architecture model OF btri IS

    BEGIN
    PROCESS(I, OEN)

    BEGIN
	if(OEN = '0') THEN
	     if(I = '1') THEN
              O <= '1' AFTER 1 ns;
	     ELSif(I = '0') THEN
              O <= '0' AFTER 1 ns;
		  ELSE
				  O <= TO_X01(I) AFTER 1 ns;
        END if;
	ELSE
         O <= 'Z' AFTER 1 ns;		
	END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \21MUX\ IS PORT(
S : IN   std_logic;
A : IN   std_logic;
B : IN   std_logic;
Y : OUT  std_logic);
END \21MUX\;

architecture model OF \21MUX\ IS

    BEGIN
    PROCESS(A, B, S)

    BEGIN
    if(S = '1') THEN
         Y <= A AFTER 1 ns;
    ELSE if(S = '0') then
         Y <= B AFTER 1 ns;
	else 
		 Y <= 'X' after 1 ns;
	end if;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \81MUX\ IS PORT(
D0 : IN   std_logic;
D1 : IN   std_logic;
D2 : IN   std_logic;
D3 : IN   std_logic;
D4 : IN   std_logic;
D5 : IN   std_logic;
D6 : IN   std_logic;
D7 : IN   std_logic;
A  : IN   std_logic;
B  : IN   std_logic;
C  : IN   std_logic;
GN : IN   std_logic;
WN : OUT  std_logic;
Y  : OUT  std_logic);
END \81MUX\;

architecture model OF \81MUX\ IS
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL L5  : std_logic;
    SIGNAL L6  : std_logic;
    SIGNAL L7  : std_logic;
    SIGNAL L8  : std_logic;
    SIGNAL L9  : std_logic;
    SIGNAL L10 : std_logic;
    SIGNAL L11 : std_logic;
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;
    SIGNAL N5  : std_logic;

    BEGIN
    N1    <= NOT (A);
    N2    <= NOT (B);
    N3    <= NOT (C);
    N4    <= NOT (GN);
    L1    <= D0 AND N3 AND N2 AND N1;
    L2    <= D1 AND N3 AND N2 AND A;
    L3    <= D2 AND N3 AND B  AND N1;
    L4    <= D3 AND N3 AND B  AND A;
    L5    <= D4 AND C  AND N2 AND N1;
    L6    <= D5 AND C  AND N2 AND A;
    L7    <= D6 AND C  AND B  AND N1;
    L8    <= D7 AND C  AND B  AND A;
    L9    <= L1 OR L2 OR L3 OR L4 OR L5 OR L6 OR L7 OR L8;
    L10   <= NOT (L9);
    Y     <= (N4 AND L9) AFTER 1 ns;
    WN    <= (GN OR L10) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \2X8MUX\ IS PORT(
A0  : IN   std_logic;
A1  : IN   std_logic;
A2  : IN   std_logic;
A3  : IN   std_logic;
A4  : IN   std_logic;
A5  : IN   std_logic;
A6  : IN   std_logic;
A7  : IN   std_logic;
B0  : IN   std_logic;
B1  : IN   std_logic;
B2  : IN   std_logic;
B3  : IN   std_logic;
B4  : IN   std_logic;
B5  : IN   std_logic;
B6  : IN   std_logic;
B7  : IN   std_logic;
SEL : IN   std_logic;
Y0  : OUT  std_logic;
Y1  : OUT  std_logic;
Y2  : OUT  std_logic;
Y3  : OUT  std_logic;
Y4  : OUT  std_logic;
Y5  : OUT  std_logic;
Y6  : OUT  std_logic;
Y7  : OUT  std_logic);
END \2X8MUX\;

architecture model OF \2X8MUX\ IS

    BEGIN
	PROCESS(A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7, SEL)

	BEGIN
    if(SEL = '1') THEN
         Y0 <= A0 AFTER 1 ns;
         Y1 <= A1 AFTER 1 ns;
         Y2 <= A2 AFTER 1 ns;
         Y3 <= A3 AFTER 1 ns;
         Y4 <= A4 AFTER 1 ns;
         Y5 <= A5 AFTER 1 ns;
         Y6 <= A6 AFTER 1 ns;
         Y7 <= A7 AFTER 1 ns;
    ELSE
         Y0 <= B0 AFTER 1 ns;
         Y1 <= B1 AFTER 1 ns;
         Y2 <= B2 AFTER 1 ns;
         Y3 <= B3 AFTER 1 ns;
         Y4 <= B4 AFTER 1 ns;
         Y5 <= B5 AFTER 1 ns;
         Y6 <= B6 AFTER 1 ns;
         Y7 <= B7 AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \16DMUX\ IS PORT(
A   : IN   std_logic;
B   : IN   std_logic;
C   : IN   std_logic;
D   : IN   std_logic;
Q0  : OUT  std_logic;
Q1  : OUT  std_logic;
Q2  : OUT  std_logic;
Q3  : OUT  std_logic;
Q4  : OUT  std_logic;
Q5  : OUT  std_logic;
Q6  : OUT  std_logic;
Q7  : OUT  std_logic;
Q8  : OUT  std_logic;
Q9  : OUT  std_logic;
Q10 : OUT  std_logic;
Q11 : OUT  std_logic;
Q12 : OUT  std_logic;
Q13 : OUT  std_logic;
Q14 : OUT  std_logic;
Q15 : OUT  std_logic);
END \16DMUX\;

architecture model OF \16DMUX\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1  <= NOT (A);
    N2  <= NOT (B);
    N3  <= NOT (C);
    N4  <= NOT (D);
    L1  <= NOT (N1);
    L2  <= NOT (N2);
    L3  <= NOT (N3);
    L4  <= NOT (N4);
    Q0  <= (N1 AND N2 AND N3 AND N4) AFTER 1 ns;
    Q1  <= (L1 AND N2 AND N3 AND N4) AFTER 1 ns;
    Q2  <= (N1 AND L2 AND N3 AND N4) AFTER 1 ns;
    Q3  <= (L1 AND L2 AND N3 AND N4) AFTER 1 ns;
    Q4  <= (N1 AND N2 AND L3 AND N4) AFTER 1 ns;
    Q5  <= (L1 AND N2 AND L3 AND N4) AFTER 1 ns;
    Q6  <= (N1 AND L2 AND L3 AND N4) AFTER 1 ns;
    Q7  <= (L1 AND L2 AND L3 AND N4) AFTER 1 ns;
    Q8  <= (N1 AND N2 AND N3 AND L4) AFTER 1 ns;
    Q9  <= (L1 AND N2 AND N3 AND L4) AFTER 1 ns;
    Q10 <= (N1 AND L2 AND N3 AND L4) AFTER 1 ns;
    Q11 <= (L1 AND L2 AND N3 AND L4) AFTER 1 ns;
    Q12 <= (N1 AND N2 AND L3 AND L4) AFTER 1 ns;
    Q13 <= (L1 AND N2 AND L3 AND L4) AFTER 1 ns;
    Q14 <= (N1 AND L2 AND L3 AND L4) AFTER 1 ns;
    Q15 <= (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \16NDMUX\ IS PORT(
A           : IN   std_logic;
B           : IN   std_logic;
C           : IN   std_logic;
D           : IN   std_logic;
Q0N  : OUT  std_logic;
Q1N  : OUT  std_logic;
Q2N  : OUT  std_logic;
Q3N  : OUT  std_logic;
Q4N  : OUT  std_logic;
Q5N  : OUT  std_logic;
Q6N  : OUT  std_logic;
Q7N  : OUT  std_logic;
Q8N  : OUT  std_logic;
Q9N  : OUT  std_logic;
Q10N : OUT  std_logic;
Q11N : OUT  std_logic;
Q12N : OUT  std_logic;
Q13N : OUT  std_logic;
Q14N : OUT  std_logic;
Q15N : OUT  std_logic);
END \16NDMUX\;

architecture model OF \16NDMUX\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1          <= NOT (A);
    N2          <= NOT (B);
    N3          <= NOT (C);
    N4          <= NOT (D);
    L1          <= NOT (N1);
    L2          <= NOT (N2);
    L3          <= NOT (N3);
    L4          <= NOT (N4);
    Q0N  <= NOT (N1 AND N2 AND N3 AND N4) AFTER 1 ns;
    Q1N  <= NOT (L1 AND N2 AND N3 AND N4) AFTER 1 ns;
    Q2N  <= NOT (N1 AND L2 AND N3 AND N4) AFTER 1 ns;
    Q3N  <= NOT (L1 AND L2 AND N3 AND N4) AFTER 1 ns;
    Q4N  <= NOT (N1 AND N2 AND L3 AND N4) AFTER 1 ns;
    Q5N  <= NOT (L1 AND N2 AND L3 AND N4) AFTER 1 ns;
    Q6N  <= NOT (N1 AND L2 AND L3 AND N4) AFTER 1 ns;
    Q7N  <= NOT (L1 AND L2 AND L3 AND N4) AFTER 1 ns;
    Q8N  <= NOT (N1 AND N2 AND N3 AND L4) AFTER 1 ns;
    Q9N  <= NOT (L1 AND N2 AND N3 AND L4) AFTER 1 ns;
    Q10N <= NOT (N1 AND L2 AND N3 AND L4) AFTER 1 ns;
    Q11N <= NOT (L1 AND L2 AND N3 AND L4) AFTER 1 ns;
    Q12N <= NOT (N1 AND N2 AND L3 AND L4) AFTER 1 ns;
    Q13N <= NOT (L1 AND N2 AND L3 AND L4) AFTER 1 ns;
    Q14N <= NOT (N1 AND L2 AND L3 AND L4) AFTER 1 ns;
    Q15N <= NOT (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \161MUX\ IS PORT(
IN0  : IN   std_logic;
IN1  : IN   std_logic;
IN2  : IN   std_logic;
IN3  : IN   std_logic;
IN4  : IN   std_logic;
IN5  : IN   std_logic;
IN6  : IN   std_logic;
IN7  : IN   std_logic;
IN8  : IN   std_logic;
IN9  : IN   std_logic;
IN10 : IN   std_logic;
IN11 : IN   std_logic;
IN12 : IN   std_logic;
IN13 : IN   std_logic;
IN14 : IN   std_logic;
IN15 : IN   std_logic;
SEL0 : IN   std_logic;
SEL1 : IN   std_logic;
SEL2 : IN   std_logic;
SEL3 : IN   std_logic;
GN   : IN   std_logic;
O    : OUT  std_logic);
END \161MUX\;

architecture model OF \161MUX\ IS
	SIGNAL L0  : std_logic;
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL L5  : std_logic;
    SIGNAL L6  : std_logic;
    SIGNAL L7  : std_logic;
    SIGNAL L8  : std_logic;
    SIGNAL L9  : std_logic;
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
	SIGNAL N0  : std_logic;    
    SIGNAL N1  : std_logic;
    SIGNAL N2  : std_logic;
    SIGNAL N3  : std_logic;
    SIGNAL N4  : std_logic;

    BEGIN
    N0 <= NOT (SEL0);
    N1 <= NOT (SEL1);
    N2 <= NOT (SEL2);
    N3 <= NOT (SEL3);
    N4 <= NOT (GN);
    L0 <= NOT (N0);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);

    L4  <= IN0  AND N3 AND N2 AND N1 AND N0;
    L5  <= IN1  AND N3 AND N2 AND N1 AND L0;
    L6  <= IN2  AND N3 AND N2 AND L1 AND N0;
    L7  <= IN3  AND N3 AND N2 AND L1 AND L0;
    L8  <= IN4  AND N3 AND L2 AND N1 AND N0;
    L9  <= IN5  AND N3 AND L2 AND N1 AND L0;
    L10 <= IN6  AND N3 AND L2 AND L1 AND N0;
    L11 <= IN7  AND N3 AND L2 AND L1 AND L0;
    L12 <= IN8  AND L3 AND N2 AND N1 AND N0;
    L13 <= IN9  AND L3 AND N2 AND N1 AND L0;
    L14 <= IN10 AND L3 AND N2 AND L1 AND N0;
    L15 <= IN11 AND L3 AND N2 AND L1 AND L0;
    L16 <= IN12 AND L3 AND L2 AND N1 AND N0;
    L17 <= IN13 AND L3 AND L2 AND N1 AND L0;
    L18 <= IN14 AND L3 AND L2 AND L1 AND N0;
    L19 <= IN15 AND L3 AND L2 AND L1 AND L0;
               
    L20 <= (L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11);
    L21 <= (L12 OR L13 OR L14 OR L15 OR L16 OR L17 OR L18 OR L19);
    L22 <= (L20 OR L21);
    O   <= (N4 AND L22) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity barrelst IS PORT(
S2   : IN     std_logic;
S1   : IN     std_logic;
S0   : IN     std_logic;
A    : IN     std_logic;
B    : IN     std_logic;
C    : IN     std_logic;
D    : IN     std_logic;
E    : IN     std_logic;
F    : IN     std_logic;
G    : IN     std_logic;
H    : IN     std_logic;
STLD : IN     std_logic;
CLK  : IN  std_logic;
QA   : INOUT  std_logic;
QB   : INOUT  std_logic;
QC   : INOUT  std_logic;
QD   : INOUT  std_logic;
QE   : INOUT  std_logic;
QF   : INOUT  std_logic;
QG   : INOUT  std_logic;
QH   : INOUT  std_logic);
END barrelst;

architecture model OF barrelst IS
    SIGNAL L0   : std_logic;
    SIGNAL L1   : std_logic;
    SIGNAL L2   : std_logic;
    SIGNAL L3   : std_logic;
    SIGNAL L4   : std_logic;    
    SIGNAL L5   : std_logic;
    SIGNAL L6   : std_logic;
    SIGNAL L7   : std_logic;
    SIGNAL L8   : std_logic;
    SIGNAL L9   : std_logic;
    SIGNAL N0   : std_logic;
    SIGNAL N1   : std_logic;
    SIGNAL N2   : std_logic;

    BEGIN
    N0 <= NOT (S0);
    N1 <= NOT (S1);
    N2 <= NOT (S2);
    L0 <= NOT (N0);
    L1 <= NOT (N1);
    L2 <= NOT (N2);

    L3 <= N2 AND N1 AND L0;
    L4 <= N2 AND L1 AND N0;
    L5 <= N2 AND L1 AND L0;
    L6 <= L2 AND N1 AND N0;
    L7 <= L2 AND N1 AND L0;
    L8 <= L2 AND L1 AND N0;
    L9 <= L2 AND L1 AND L0;

    PROCESS(CLK)
 	 VARIABLE temp : std_logic_vector(7 DOWNTO 0);

    BEGIN
    if(CLK = '1') AND CLK'EVENT THEN
         if(STLD = '1') THEN
              temp(0) := A;
              temp(1) := B; 
              temp(2) := C; 
              temp(3) := D; 
              temp(4) := E; 
              temp(5) := F; 
              temp(6) := G; 
              temp(7) := H; 
         ELSif(L3 = '1') THEN
              temp(0) := QB;                   
              temp(1) := QC;
              temp(2) := QD;
              temp(3) := QE;
              temp(4) := QF;
              temp(5) := QG;
              temp(6) := QH;
              temp(7) := QA;
         ELSif(L4 = '1') THEN
              temp(0) := QC;                   
              temp(1) := QD;
              temp(2) := QE;
              temp(3) := QF;
              temp(4) := QG;
              temp(5) := QH;
              temp(6) := QA;
              temp(7) := QB;
         ELSif(L5 = '1') THEN
              temp(0) := QD;                   
              temp(1) := QE;
              temp(2) := QF;
              temp(3) := QG;
              temp(4) := QH;
              temp(5) := QA;
              temp(6) := QB;
              temp(7) := QC;
         ELSif(L6 = '1') THEN
              temp(0) := QE;                   
              temp(1) := QF;
              temp(2) := QG;
              temp(3) := QH;
              temp(4) := QA;
              temp(5) := QB;
              temp(6) := QC;
              temp(7) := QD;
         ELSif(L7 = '1') THEN
              temp(0) := QF;                   
              temp(1) := QG;
              temp(2) := QH;
              temp(3) := QA;
              temp(4) := QB;
              temp(5) := QC;
              temp(6) := QD;
              temp(7) := QE;
         ELSif(L8 = '1') THEN
              temp(0) := QG;                   
              temp(1) := QH;
              temp(2) := QA;
              temp(3) := QB;
              temp(4) := QC;
              temp(5) := QD;
              temp(6) := QE;
              temp(7) := QF;
         ELSif(L9 = '1') THEN
              temp(0) := QH;                   
              temp(1) := QA;
              temp(2) := QB;
              temp(3) := QC;
              temp(4) := QD;
              temp(5) := QE;
              temp(6) := QF;
              temp(7) := QG;
         END if;
    END if;           
    QA <= temp(0) AFTER 1 ns;
    QB <= temp(1) AFTER 1 ns;
    QC <= temp(2) AFTER 1 ns;
    QD <= temp(3) AFTER 1 ns;
    QE <= temp(4) AFTER 1 ns;
    QF <= temp(5) AFTER 1 ns;
    QG <= temp(6) AFTER 1 ns;
    QH <= temp(7) AFTER 1 ns;
    END PROCESS;
END model;     


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity cbuf IS PORT(
\IN\     : IN   std_logic;
\OUT\     : OUT  std_logic);
END cbuf;

architecture model OF cbuf IS
	 SIGNAL FB1 : std_logic;

    BEGIN
    FB1 	 <= \IN\ AFTER 1 ns;
    \OUT\     <= FB1;
END model;

                      
library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity enadff IS PORT(
D    : IN   std_logic;
ENA  : IN   std_logic;
CLK  : IN   std_logic;
PRN  : IN   std_logic;
CLRN : IN   std_logic;
Q    : OUT  std_logic);
END enadff;

architecture model OF enadff IS

    BEGIN
    PROCESS(CLRN, CLK, PRN)

    BEGIN
	if(CLRN = '0') THEN
	     Q <= '0' AFTER 1 ns;
	ELSif(PRN = '0') THEN
	     Q <= '1' AFTER 1 ns;
	ELSif(CLK = '1' AND ENA = '1') AND CLK'EVENT THEN
	     if(D = '0') THEN
              Q <= '0' AFTER 1 ns;
	     ELSif(D = '1') THEN
              Q <= '1' AFTER 1 ns;
         ELSE
              Q <= TO_X01(D) AFTER 1 ns;
         END if;
	END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity expdff IS PORT(
D     : IN   std_logic;
CLK   : IN   std_logic;
PRN   : IN   std_logic;
CLRN  : IN   std_logic;
Q     : OUT  std_logic;
QN    : OUT  std_logic);
END expdff;

architecture model OF expdff IS

    BEGIN
    PROCESS(CLRN, CLK, PRN)

    BEGIN
	if(CLRN = '0') THEN
	     Q     <= '0' AFTER 1 ns;
    	QN    <= '1' AFTER 1 ns;
	ELSif(PRN = '0') THEN
	     Q     <= '1' AFTER 1 ns;
    	QN    <= '0' AFTER 1 ns;
	ELSif(CLK = '1') AND CLK'EVENT THEN
	     if(D = '0') THEN
              Q     <= '0' AFTER 1 ns;
      		QN    <= '1' AFTER 1 ns;
	     ELSif(D = '1') THEN
              Q     <= '1' AFTER 1 ns;
      		QN    <= '0' AFTER 1 ns;
         ELSE
              Q     <= TO_X01(D) AFTER 1 ns;
      		QN    <= NOT TO_X01(D) AFTER 1 ns;
         END if;
	END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity explatch IS PORT(
D   : IN   std_logic;
ENA : IN   std_logic;
Q   : OUT  std_logic);
END explatch;

architecture model OF explatch IS

    BEGIN
    PROCESS(D, ENA)

    BEGIN
	if(ENA = '1') THEN
	     if(D = '0') THEN
              Q <= '0' AFTER 1 ns;
	     ELSif(D = '1') THEN
              Q <= '1' AFTER 1 ns;
		  ELSE
				  Q <= TO_X01(D) AFTER 1 ns;
        END if;
	END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity inpltch IS PORT(
D : IN   std_logic;
G : IN   std_logic;
Q : OUT  std_logic);
END inpltch;

architecture model OF inpltch IS

    BEGIN
    PROCESS(D, G)

    BEGIN
	if(G = '1') THEN
	     if(D = '0') THEN
              Q <= '0' AFTER 1 ns;
	     ELSif(D = '1') THEN
              Q <= '1' AFTER 1 ns;
         END if;
	END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7400\ IS PORT(
I0 : IN   std_logic;
I1 : IN   std_logic;
O  : OUT  std_logic);
END \7400\;

architecture model OF \7400\ IS

    BEGIN
    O <= NOT (I0 AND I1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7402\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
O : OUT  std_logic);
END \7402\;

architecture model OF \7402\ IS

    BEGIN
    O <= NOT (I0 OR I1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7404\ IS PORT(
I : IN  std_logic;
O : OUT  std_logic);
END \7404\;

architecture model OF \7404\ IS

    BEGIN
    O <= NOT (I) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7408\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
O : OUT  std_logic);
END \7408\;

architecture model OF \7408\ IS

    BEGIN
    O <=  (I0 AND I1) AFTER 1 ns;
END model;             


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7410\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
O : OUT  std_logic);
END \7410\;

architecture model OF \7410\ IS

    BEGIN
    O <= NOT (I0 AND I1 AND I2) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7411\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
O : OUT  std_logic);
END \7411\;

architecture model OF \7411\ IS

    BEGIN
    O <=  (I0 AND I1 AND I2) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7420\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
O : OUT  std_logic);
END \7420\;

architecture model OF \7420\ IS

    BEGIN
    O <= NOT (I0 AND I1 AND I2 AND I3) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7421\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
O : OUT  std_logic);
END \7421\;

architecture model OF \7421\ IS

    BEGIN
    O <=  (I0 AND I1 AND I2 AND I3) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7423\ IS PORT(
A1  : IN  std_logic;
B1  : IN  std_logic;  
C1  : IN  std_logic;
D1  : IN  std_logic;
A2  : IN  std_logic;
B2  : IN  std_logic;
C2  : IN  std_logic;
D2  : IN  std_logic;
G1  : IN  std_logic;
G2  : IN  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic);
END \7423\;

architecture model OF \7423\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1  <=  (A1 AND G1);
    L2  <=  (B1 AND G1);
    L3  <=  (C1 AND G1);
    L4  <=  (D1 AND G1);
    L5  <=  (A2 AND G2);
    L6  <=  (B2 AND G2);
    L7  <=  (C2 AND G2);
    L8  <=  (D2 AND G2);
    Y1N <= NOT (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
    Y2N <= NOT (L5 OR L6 OR L7 OR L8) AFTER 1 ns;            
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7425\ IS PORT(
A1  : IN   std_logic;
B1  : IN   std_logic;
C1  : IN   std_logic;
D1  : IN   std_logic;
A2  : IN   std_logic;
B2  : IN   std_logic;
C2  : IN   std_logic;
D2  : IN   std_logic;
G1  : IN   std_logic;
G2  : IN   std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic);
END \7425\;

architecture model OF \7425\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;
    SIGNAL L7 : std_logic;
    SIGNAL L8 : std_logic;

    BEGIN
    L1 <=  (A1 AND G1);
    L2 <=  (B1 AND G1);
    L3 <=  (C1 AND G1);
    L4 <=  (D1 AND G1);
    L5 <=  (A2 AND G2);
    L6 <=  (B2 AND G2);
    L7 <=  (C2 AND G2);
    L8 <=  (D2 AND G2);

    Y1N <= NOT (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
    Y2N <= NOT (L5 OR L6 OR L7 OR L8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7427\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
O : OUT  std_logic);
END \7427\;

architecture model OF \7427\ IS

    BEGIN
    O <= NOT (I0 OR I1 OR I2) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7428\ IS PORT(
A1  : IN  std_logic;
B1  : IN  std_logic;
A2  : IN  std_logic;
B2  : IN  std_logic;
A3  : IN  std_logic;
B3  : IN  std_logic;
A4  : IN  std_logic;
B4  : IN  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic);
END \7428\;

architecture model OF \7428\ IS

    BEGIN
    Y1N <= NOT (A1 OR B1) AFTER 1 ns;
    Y2N <= NOT (A2 OR B2) AFTER 1 ns;
    Y3N <= NOT (A3 OR B3) AFTER 1 ns;
    Y4N <= NOT (A4 OR B4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7430\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
I2 : IN  std_logic;
I3 : IN  std_logic;
I4 : IN  std_logic;
I5 : IN  std_logic;
I6 : IN  std_logic;
I7 : IN  std_logic;
O : OUT  std_logic);
END \7430\;

architecture model OF \7430\ IS

    BEGIN
    O <= NOT (I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7432\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
O : OUT  std_logic);
END \7432\;

architecture model OF \7432\ IS

    BEGIN
    O <=  (I0 OR I1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7437\ IS PORT(
A1  : IN  std_logic;
B1  : IN  std_logic;
A2  : IN  std_logic;
B2  : IN  std_logic;
A3  : IN  std_logic;
B3  : IN  std_logic;
A4  : IN  std_logic;
B4  : IN  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic);
END \7437\;

architecture model OF \7437\ IS

    BEGIN
    Y1N <= NOT (A1 AND B1) AFTER 1 ns;
    Y2N <= NOT (A2 AND B2) AFTER 1 ns;
    Y3N <= NOT (A3 AND B3) AFTER 1 ns;
    Y4N <= NOT (A4 AND B4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7440\ IS PORT(
A1  : IN   std_logic;
B1  : IN   std_logic;
C1  : IN   std_logic;
D1  : IN   std_logic;
A2  : IN   std_logic;
B2  : IN   std_logic;
C2  : IN   std_logic;
D2  : IN   std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic);
END \7440\;

architecture model OF \7440\ IS

    BEGIN
    Y1N <= NOT (A1 AND B1 AND C1 AND D1) AFTER 1 ns;
    Y2N <= NOT (A2 AND B2 AND C2 AND D2) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7442\ IS PORT(
A   : IN   std_logic;
B   : IN   std_logic;
C   : IN   std_logic;
D   : IN   std_logic;
Y0N : OUT  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic;
Y5N : OUT  std_logic;
Y6N : OUT  std_logic;
Y7N : OUT  std_logic;
Y8N : OUT  std_logic;
Y9N : OUT  std_logic);
END \7442\;

architecture model OF \7442\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT (A);
    N3 <= NOT (B);
    N5 <= NOT (C);
    N7 <= NOT (D);
    N2 <=  (A);
    N4 <=  (B);
    N6 <=  (C);
    N8 <=  (D);
    Y0N <= NOT (N1 AND N3 AND N5 AND N7) AFTER 1 ns;
    Y1N <= NOT (N2 AND N3 AND N5 AND N7) AFTER 1 ns;
    Y2N <= NOT (N1 AND N4 AND N5 AND N7) AFTER 1 ns;
    Y3N <= NOT (N2 AND N4 AND N5 AND N7) AFTER 1 ns;
    Y4N <= NOT (N1 AND N3 AND N6 AND N7) AFTER 1 ns;
    Y5N <= NOT (N2 AND N3 AND N6 AND N7) AFTER 1 ns;
    Y6N <= NOT (N1 AND N4 AND N6 AND N7) AFTER 1 ns;
    Y7N <= NOT (N2 AND N4 AND N6 AND N7) AFTER 1 ns;
    Y8N <= NOT (N1 AND N3 AND N5 AND N8) AFTER 1 ns;
    Y9N <= NOT (N2 AND N3 AND N5 AND N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7443\ IS PORT(
A   : IN   std_logic;
B   : IN   std_logic;
C   : IN   std_logic;
D   : IN   std_logic;
Y0N : OUT  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic;
Y5N : OUT  std_logic;
Y6N : OUT  std_logic;
Y7N : OUT  std_logic;
Y8N : OUT  std_logic;
Y9N : OUT  std_logic);
END \7443\;

architecture model OF \7443\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT (A);
    N3 <= NOT (B);
    N5 <= NOT (C);
    N7 <= NOT (D);
    N2 <=  (A);
    N4 <=  (B);
    N6 <=  (C);
    N8 <=  (D);
    Y0N <= NOT (N2 AND N4 AND N5 AND N7) AFTER 1 ns;
    Y1N <= NOT (N1 AND N3 AND N6 AND N7) AFTER 1 ns;
    Y2N <= NOT (N2 AND N3 AND N6 AND N7) AFTER 1 ns;
    Y3N <= NOT (N1 AND N4 AND N6 AND N7) AFTER 1 ns;
    Y4N <= NOT (N2 AND N4 AND N6 AND N7) AFTER 1 ns;
    Y5N <= NOT (N1 AND N3 AND N5 AND N8) AFTER 1 ns;
    Y6N <= NOT (N2 AND N3 AND N5 AND N8) AFTER 1 ns;
    Y7N <= NOT (N1 AND N4 AND N5 AND N8) AFTER 1 ns;
    Y8N <= NOT (N2 AND N4 AND N5 AND N8) AFTER 1 ns;
    Y9N <= NOT (N1 AND N3 AND N6 AND N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7444\ IS PORT(
A   : IN   std_logic;
B   : IN   std_logic;
C   : IN   std_logic;
D   : IN   std_logic;
Y0N : OUT  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic;
Y5N : OUT  std_logic;
Y6N : OUT  std_logic;
Y7N : OUT  std_logic;
Y8N : OUT  std_logic;
Y9N : OUT  std_logic);
END \7444\;

architecture model OF \7444\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;
    SIGNAL N8 : std_logic;

    BEGIN
    N1 <= NOT (A);
    N3 <= NOT (B);
    N5 <= NOT (C);
    N7 <= NOT (D);
    N2 <=  (A);
    N4 <=  (B);
    N6 <=  (C);
    N8 <=  (D);
    Y0N <= NOT (N1 AND N4 AND N5 AND N7) AFTER 1 ns;
    Y1N <= NOT (N1 AND N4 AND N6 AND N7) AFTER 1 ns;
    Y2N <= NOT (N2 AND N4 AND N6 AND N7) AFTER 1 ns;
    Y3N <= NOT (N2 AND N3 AND N6 AND N7) AFTER 1 ns;
    Y4N <= NOT (N1 AND N3 AND N6 AND N7) AFTER 1 ns;
    Y5N <= NOT (N1 AND N3 AND N6 AND N8) AFTER 1 ns;
    Y6N <= NOT (N2 AND N3 AND N6 AND N8) AFTER 1 ns;
    Y7N <= NOT (N2 AND N4 AND N6 AND N8) AFTER 1 ns;
    Y8N <= NOT (N1 AND N4 AND N6 AND N8) AFTER 1 ns;
    Y9N <= NOT (N1 AND N4 AND N5 AND N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7445\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
Y0N : OUT  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic;
Y5N : OUT  std_logic;
Y6N : OUT  std_logic;
Y7N : OUT  std_logic;
Y8N : OUT  std_logic;
Y9N : OUT  std_logic);
END \7445\;

architecture model OF \7445\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (A);
    L2 <= NOT (B);
    L3 <= NOT (C);
    L4 <= NOT (D);
    Y0N <= NOT (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
    Y1N <= NOT (A AND L2 AND L3 AND L4) AFTER 1 ns;
    Y2N <= NOT (L1 AND B AND L3 AND L4) AFTER 1 ns;
    Y3N <= NOT (A AND B AND L3 AND L4) AFTER 1 ns;
    Y4N <= NOT (L1 AND L2 AND C AND L4) AFTER 1 ns;
    Y5N <= NOT (A AND L2 AND C AND L4) AFTER 1 ns;
    Y6N <= NOT (L1 AND B AND C AND L4) AFTER 1 ns;
    Y7N <= NOT (A AND B AND C AND L4) AFTER 1 ns;
    Y8N <= NOT (L1 AND L2 AND L3 AND D) AFTER 1 ns;
    Y9N <= NOT (A AND L2 AND L3 AND D) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7446\ IS PORT(
A       : IN     std_logic;
B       : IN     std_logic;
C       : IN     std_logic;
D       : IN     std_logic;
BINRBON : IN     std_logic;
RBIN    : IN     std_logic;
LTN     : IN     std_logic;
OAN     : INOUT  std_logic;
OBN     : INOUT  std_logic;
OCN     : INOUT  std_logic;
ODN     : INOUT  std_logic;
OEN     : INOUT  std_logic;
OFN     : INOUT  std_logic;
OGN     : INOUT  std_logic);
END \7446\;

architecture model OF \7446\ IS
    SIGNAL L1  : std_logic;
    SIGNAL L2  : std_logic;
    SIGNAL L3  : std_logic;
    SIGNAL L4  : std_logic;
    SIGNAL L5  : std_logic;
    SIGNAL L6  : std_logic;
    SIGNAL L7  : std_logic;
    SIGNAL L8  : std_logic;
    SIGNAL L9  : std_logic;
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
    L1  <= NOT (A AND LTN);
    L2  <= NOT (B AND LTN);
    L3  <= NOT (C AND LTN);
    L4  <= NOT (D);
    L5  <= NOT (RBIN);
    L6  <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND LTN);
    L7  <= NOT (L1 AND L6);
    L8  <= NOT (L2 AND L6);
    L9  <= NOT (L3 AND L6);
    L10 <= NOT (L4 AND L6);
    L11 <= (L8 AND L10);
    L12 <= (L1 AND L9);
    L13 <= (L7 AND L2 AND L3 AND L4);
    L14 <= (L8 AND L10);
    L15 <= (L7 AND L2 AND L9);
    L16 <= (L1 AND L8 AND L9);
    L17 <= (L9 AND L10);
    L18 <= (L1 AND L8 AND L3);
    L19 <= (L7 AND L2 AND L3);
    L20 <= (L1 AND L2 AND L9);
    L21 <= (L7 AND L8 AND L9);
    L22 <= (L2 AND L9);
    L23 <= (L7 AND L8);
    L24 <= (L8 AND L3);
    L25 <= (L7 AND L3 AND L4);
    L26 <= (L7 AND L8 AND L9);
    L27 <= (L2 AND L3 AND L4 AND LTN);
    OAN  <= (L11 OR L12 OR L13) AFTER 1 ns;
    OBN  <= (L14 OR L15 OR L16) AFTER 1 ns;
    OCN  <= (L17 OR L18) AFTER 1 ns;
    ODN  <= (L19 OR L20 OR L21) AFTER 1 ns;
    OEN  <= (L7 OR L22) AFTER 1 ns;
    OFN  <= (L23 OR L24 OR L25) AFTER 1 ns;
    OGN  <= (L26 OR L27) AFTER 1 ns;
END model;
	    

library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7447\ IS PORT(
A       : IN     std_logic;
B       : IN     std_logic;
C       : IN     std_logic;
D       : IN     std_logic;
BINRBON : IN     std_logic;
RBIN    : IN     std_logic;
LTN     : IN     std_logic;
OAN     : INOUT  std_logic;
OBN     : INOUT  std_logic;
OCN     : INOUT  std_logic;
ODN     : INOUT  std_logic;
OEN     : INOUT  std_logic;
OFN     : INOUT  std_logic;
OGN     : INOUT  std_logic);
END \7447\;

architecture model OF \7447\ IS
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
    L1  <= NOT (A AND LTN);
    L2  <= NOT (B AND LTN);
    L3  <= NOT (C AND LTN);
    L4  <= NOT (D);
    L5  <= NOT (RBIN);
    L6  <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND LTN);
    L7  <= NOT (L1 AND L6);
    L8  <= NOT (L2 AND L6);
    L9  <= NOT (L3 AND L6);
    L10 <= NOT (L4 AND L6);
    L11 <= (L8 AND L10);
    L12 <= (L1 AND L9);
    L13 <= (L7 AND L2 AND L3 AND L4);
    L14 <= (L8 AND L10);
    L15 <= (L7 AND L2 AND L9);
    L16 <= (L1 AND L8 AND L9);
    L17 <= (L9 AND L10);
    L18 <= (L1 AND L8 AND L3);
    L19 <= (L7 AND L2 AND L3);
    L20 <= (L1 AND L2 AND L9);
    L21 <= (L7 AND L8 AND L9);
    L22 <= (L2 AND L9);
    L23 <= (L7 AND L8);
    L24 <= (L8 AND L3);
    L25 <= (L7 AND L3 AND L4);
    L26 <= (L7 AND L8 AND L9);
    L27 <= (L2 AND L3 AND L4 AND LTN);
    OAN <= (L11 OR L12 OR L13) AFTER 1 ns;
    OBN <= (L14 OR L15 OR L16) AFTER 1 ns;
    OCN <= (L17 OR L18) AFTER 1 ns;
    ODN <= (L19 OR L20 OR L21) AFTER 1 ns;
    OEN <= (L7 OR L22) AFTER 1 ns;
    OFN <= (L23 OR L24 OR L25) AFTER 1 ns;
    OGN <= (L26 OR L27) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7448\ IS PORT(
AI       : IN  std_logic;
BI       : IN  std_logic;
CI       : IN  std_logic;
DI       : IN  std_logic;
BINRBON : IN   std_logic;
RBIN    : IN   std_logic;
LTN     : IN   std_logic;
A      : OUT  std_logic;
B      : OUT  std_logic;
C      : OUT  std_logic;
D      : OUT  std_logic;
E      : OUT  std_logic;
F      : OUT  std_logic;
G      : OUT  std_logic);
END \7448\;

architecture model OF \7448\ IS
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
    L1  <= NOT (AI AND LTN);
    L2  <= NOT (BI AND LTN);
    L3  <= NOT (CI AND LTN);
    L4  <= NOT (DI);
    L5  <= NOT (RBIN);
    L6  <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND LTN);
    L7  <= NOT (L1 AND L6);
    L8  <= NOT (L2 AND L6);
    L9  <= NOT (L3 AND L6);
    L10 <= NOT (L4 AND L6);
    L11 <= (L8 AND L10);
    L12 <= (L1 AND L9);
    L13 <= (L7 AND L2 AND L3 AND L4);
    L14 <= (L8 AND L10);
    L15 <= (L7 AND L2 AND L9);
    L16 <= (L1 AND L8 AND L9);
    L17 <= (L9 AND L10);
    L18 <= (L1 AND L8 AND L3);
    L19 <= (L7 AND L2 AND L3);
    L20 <= (L1 AND L2 AND L9);
    L21 <= (L7 AND L8 AND L9);
    L22 <= (L2 AND L9);
    L23 <= (L7 AND L8);
    L24 <= (L8 AND L3);
    L25 <= (L7 AND L3 AND L4);
    L26 <= (L7 AND L8 AND L9);
    L27 <= (L2 AND L3 AND L4 AND LTN);
    A  <= (L11 OR L12 OR L13) AFTER 1 ns;
    B  <= (L14 OR L15 OR L16) AFTER 1 ns;
    C  <= (L17 OR L18) AFTER 1 ns;
    D  <= (L19 OR L20 OR L21) AFTER 1 ns;
    E  <= (L7 OR L22) AFTER 1 ns;
    F  <= (L23 OR L24 OR L25) AFTER 1 ns;
    G  <= (L26 OR L27) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7449\ IS PORT(
AI   : IN     std_logic;
BI   : IN     std_logic;
CI   : IN     std_logic;
DI   : IN     std_logic;
BIN : IN     std_logic;
A  : OUT  std_logic;
B  : OUT  std_logic;
C  : OUT  std_logic;
D  : OUT  std_logic;
E  : OUT  std_logic;
F  : OUT  std_logic;
G  : OUT  std_logic);
END \7449\;

architecture model OF \7449\ IS
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
    L1  <= NOT (AI);
    L2  <= NOT (BI);
    L3  <= NOT (CI);
    L4  <= NOT (DI);
    L5  <= AI;
    L6  <= BI;
    L7  <= CI;
    L8  <= DI;
    L9  <= (L6 AND L8);
    L10 <= (L1 AND L7);
    L11 <= (L5 AND L2 AND L3 AND L4);
    L12 <= (L5 AND L2 AND L7);
    L13 <= (L1 AND L6 AND L7);
    L14 <= (L7 AND L8);
    L15 <= (L1 AND L6 AND L3);
    L16 <= (L1 AND L2 AND L7);
    L17 <= (L5 AND L6 AND L7);
    L18 <= (L2 AND L7);
    L19 <= (L5 AND L6);
    L20 <= (L6 AND L3);
    L21 <= (L5 AND L3 AND L4);
    L22 <= (L2 AND L3 AND L4);
    L23 <= (L5 AND L2 AND L3);
    A  <= BIN AND NOT (L9 OR L10 OR L11) AFTER 1 ns;
    B  <= BIN AND NOT (L9 OR L12 OR L13) AFTER 1 ns;
    C  <= BIN AND NOT (L14 OR L15) AFTER 1 ns;
    D  <= BIN AND NOT (L23 OR L16 OR L17) AFTER 1 ns;
    E  <= BIN AND NOT (L5 OR L18) AFTER 1 ns;
    F  <= BIN AND NOT (L19 OR L20 OR L21) AFTER 1 ns;
    G  <= BIN AND NOT (L17 OR L22) AFTER 1 ns;
END model;
 

library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7450\ IS PORT(
A1  : IN   std_logic;
A2  : IN   std_logic;
B2  : IN   std_logic;
C2  : IN   std_logic;
D2  : IN   std_logic;
C1  : IN   std_logic;
D1  : IN   std_logic;
B1  : IN   std_logic;
X1  : IN   std_logic;
X1N : IN   std_logic;
Y2N : OUT  std_logic;
Y1N : OUT  std_logic);
END \7450\;

architecture model OF \7450\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;

    BEGIN
    L5  <= NOT (X1);
    L1  <= (A2 AND B2);
    L2  <= (C2 AND D2);
    Y2N <= (L1 OR L2) AFTER 1 ns;
    L3  <= (A1 AND B1 AND L5 AND X1N);
    L4  <= (C1 AND D1 AND L5 AND X1N);
    Y1N <= NOT (L3 OR L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7451\ IS PORT(
A1  : IN   std_logic;
B1  : IN   std_logic;
C1  : IN   std_logic;
D1  : IN   std_logic;
E1  : IN   std_logic;
F1  : IN   std_logic;
A2  : IN   std_logic;
B2  : IN   std_logic;
C2  : IN   std_logic;
D2  : IN   std_logic;
Y2N : OUT  std_logic;
Y1N : OUT  std_logic);
END \7451\;

architecture model OF \7451\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1  <= (A2 AND B2);
    L2  <= (C2 AND D2);
    Y2N <= NOT (L1 OR L2) AFTER 1 ns;
    L3  <= (A1 AND B1 AND C1);
    L4  <= (D1 AND E1 AND F1);
    Y1N <= NOT (L3 OR L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7452\ IS PORT(
X  : IN   std_logic;
A  : IN   std_logic;
B  : IN   std_logic;
C  : IN   std_logic;
D  : IN   std_logic;
E  : IN   std_logic;
F  : IN   std_logic;
G  : IN   std_logic;
H  : IN   std_logic;
I  : IN   std_logic;
Y : OUT  std_logic);
END \7452\;

architecture model OF \7452\ IS
    SIGNAL L1 :  std_logic;
    SIGNAL L2 :  std_logic;
    SIGNAL L3 :  std_logic;
    SIGNAL L4 :  std_logic;

    BEGIN
    L1 <= (A AND B);
    L2 <= (C AND D AND E);
    L3 <= (F AND G);
    L4 <= (H AND I);
    Y  <= (X OR L1 OR L2 OR L3 OR L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7453\ IS PORT(
A  : IN   std_logic;
B  : IN   std_logic;
C  : IN   std_logic;
D  : IN   std_logic;
E  : IN   std_logic;
F  : IN   std_logic;
G  : IN   std_logic;
H  : IN   std_logic;
X  : IN   std_logic;
XN : IN   std_logic;
YN : OUT  std_logic);
END \7453\;

architecture model OF \7453\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L5 <= NOT (X);
    L6 <= NOT (XN);
    L1 <= (A AND B AND L5 AND XN);
    L2 <= (C AND D AND L5 AND XN);
    L3 <= (E AND F AND L5 AND XN);
    L4 <= (G AND H AND L5 AND XN);
    YN <= NOT (L1 OR L2 OR L3 OR L4 OR L6 OR X) AFTER 1 ns;
END model;

 
library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7454\ IS PORT(
A  : IN   std_logic;
C  : IN   std_logic;
D  : IN   std_logic;
E  : IN   std_logic;
F  : IN   std_logic;
G  : IN   std_logic;
H  : IN   std_logic;
B  : IN   std_logic;
YN : OUT  std_logic);
END \7454\;

architecture model OF \7454\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= (A AND B);
    L2 <= (C AND D);
    L3 <= (E AND F);
    L4 <= (G AND H);
    YN <= NOT (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7455\ IS PORT(
A  : IN   std_logic;
B  : IN   std_logic;
C  : IN   std_logic;
D  : IN   std_logic;
E  : IN   std_logic;
F  : IN   std_logic;
G  : IN   std_logic;
H  : IN   std_logic;
YN : OUT  std_logic);
END \7455\;

architecture model OF \7455\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= (A AND B AND C AND D);
    L2 <= (E AND F AND G AND H);
    YN <= NOT (L1 OR L2) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7456\ IS PORT(
CLKA : IN     std_logic;
CLKB : IN     std_logic;
CLRN : IN     std_logic;
QA   : OUT    std_logic;
QB   : OUT    std_logic;
QC   : INOUT  std_logic);
END \7456\;

architecture model OF \7456\ IS

    BEGIN
    PROCESS(CLRN, CLKA, CLKB)
    VARIABLE cnta : INTEGER := 0;
    VARIABLE cntb : INTEGER := 0;
    VARIABLE cntc : INTEGER := 0;
	 VARIABLE tqc : std_logic := '0';

    BEGIN
    if(CLRN = '0') THEN
         QA <= '0' AFTER 1 ns;
         QB <= '0' AFTER 1 ns;
         tqc := '0';
    ELSE
         if(CLKA = '0') AND CLKA'EVENT THEN    
              cnta := cnta + 1;

              if(cnta = 5) THEN
                   QA <= '1' AFTER 1 ns;
                   cnta := 0;
              ELSE
                   QA <= '0' AFTER 1 ns;
              END if;
         END if;

         if(CLKB = '0') AND CLKB'EVENT THEN
              cntb := cntb + 1;

              if(cntb = 5) THEN
                   QB <= '1' AFTER 1 ns;
                   cntb := 0;
              ELSE
                   QB <= '0' AFTER 1 ns;
              END if;

              cntc := cntc + 1;

         END if;
    END if;

    if(cntc = 5) THEN
         tqc := NOT (tqc);
         cntc := 0;
    END if;
	 QC <= tqc AFTER 1 ns;
    END PROCESS;  
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7457\ IS PORT(
CLKA : IN     std_logic;
CLKB : IN     std_logic;
CLRN : IN     std_logic;
QA   : OUT    std_logic;
QB   : OUT    std_logic;
QC   : OUT  std_logic);
END \7457\;

architecture model OF \7457\ IS

    BEGIN
    PROCESS(CLRN, CLKA, CLKB)
    VARIABLE cnta : INTEGER := 0;
    VARIABLE cntb : INTEGER := 0;
    VARIABLE cntc : INTEGER := 0;
	 VARIABLE tqc : std_logic := '0';
	 VARIABLE tqa : std_logic := '0';

    BEGIN
    if(CLRN = '0') THEN
		   QB <= '0' AFTER 1 ns;
         tqc := '0';
			tqa := '0';
    ELSE
         if(CLKA = '0') AND CLKA'EVENT THEN    
              cnta := cnta + 1;
         END if;

         if(CLKB = '0') AND CLKB'EVENT THEN
              cntb := cntb + 1;

              if(cntb = 5) THEN
                   QB <= '1' AFTER 1 ns;
                   cntb := 0;
              ELSE
                   QB <= '0' AFTER 1 ns;
              END if;

              cntc := cntc + 1;

         END if;
    END if;

    if(cnta = 3) THEN
         tqa := NOT (tqa);
         cnta := 0;
    END if;

    if(cntc = 5) THEN
         tqc := NOT (tqc);
         cntc := 0;
    END if;
    QA <= tqa AFTER 1 ns;
    QC <= tqc AFTER 1 ns;
    END PROCESS;  
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7464\ IS PORT(
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
K : IN  std_logic;
Y : OUT  std_logic);
END \7464\;

architecture model OF \7464\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <=  (A AND B AND C AND D);
    L2 <=  (E AND F);
    L3 <=  (G AND H AND I);
    L4 <=  (J AND K);
    Y <= NOT (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7468\ IS PORT(
CLKA1 : IN   std_logic;
CLKB1 : IN   std_logic;
CLRN1  : IN   std_logic;
CLK2  : IN   std_logic;
CLRN2  : IN   std_logic;
QA1   : OUT  std_logic;
QB1   : OUT  std_logic;
QC1   : OUT  std_logic;
QD1   : OUT  std_logic;
QA2   : OUT  std_logic;
QB2   : OUT  std_logic;
QC2   : OUT  std_logic;
QD2   : OUT  std_logic);
END \7468\;

architecture model OF \7468\ IS
	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;

	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);
    L4 <= NOT (N4);
    L5 <= NOT (N5);
    L6 <= NOT (N6);
    L7 <= NOT (N7);
    L8 <= NOT (N8);
    L9 <=  (L2 AND L4);
    L10 <=  (L3 AND L4);
    L11 <= NOT (L9 OR L10);
    L12 <=  (L6 AND L8);
    L13 <=  (L7 AND L8);
    L14 <= NOT (L12 OR L13);
    N9 <= NOT (CLKB1 AND L4);
    N10 <= NOT (CLKB1 AND L11);
    N11 <= NOT (N5 AND L8);
    N12 <= NOT (N5 AND L14);
    N13 <= NOT (CLKA1);
    N14 <= NOT (CLK2);
    DQFFC_0 :  ORCAD_DQFFC 
      PORT MAP  (q=>N1 , d=>L1 , clk=>N13 , cl=>CLRN1);
    DFFC_0 : ORCAD_DFFC 
      PORT MAP (q=>N2 , qNot=>N15 , d=>L2 , clk=>N9 , cl=>CLRN1);
    DQFFC_1 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L3 , clk=>N15 , cl=>CLRN1);
    DQFFC_2 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L4 , clk=>N10 , cl=>CLRN1);
    DQFFC_3 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L5 , clk=>N14 , cl=>CLRN2);
    DFFC_1 : ORCAD_DFFC 
      PORT MAP (q=>N6 , qNot=>N16 , d=>L6 , clk=>N11 , cl=>CLRN2);
    DQFFC_4 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L7 , clk=>N16 , cl=>CLRN2);
    DQFFC_5 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L8 , clk=>N12 , cl=>CLRN2);
    QA1 <=  (N1) AFTER 1 ns;
    QB1 <=  (N2) AFTER 1 ns;
    QC1 <=  (N3) AFTER 1 ns;
    QD1 <=  (N4) AFTER 1 ns;
    QA2 <=  (N5) AFTER 1 ns;
    QB2 <=  (N6) AFTER 1 ns;
    QC2 <=  (N7) AFTER 1 ns;
    QD2 <=  (N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7469\ IS PORT(
CLKA1 : IN   std_logic;
CLKB1 : IN   std_logic;
CLRN1 : IN   std_logic;
CLK2  : IN   std_logic;
CLRN2 : IN   std_logic;
QA1   : OUT  std_logic;
QB1   : OUT  std_logic;
QC1   : OUT  std_logic;
QD1   : OUT  std_logic;
QA2   : OUT  std_logic;
QB2   : OUT  std_logic;
QC2   : OUT  std_logic;
QD2   : OUT  std_logic);
END \7469\;

architecture model OF \7469\ IS

   	COMPONENT orcad_dqffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, pr   : IN std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (CLKA1);
    N2 <= NOT (CLKB1);
    N3 <= NOT (CLK2);
    L3 <= NOT (N9);
    L4 <= NOT (N10);
    L5 <= NOT (N11);
    L6 <= NOT (N12);
    L7 <= NOT (N13);
    L8 <= NOT (N14);
    L9 <= NOT (N15);
    L10 <= NOT (N16);
    DQFFP_0 :  ORCAD_DQFFP 
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , pr=>CLRN1);
    DQFFP_1 :  ORCAD_DQFFP 
      PORT MAP  (q=>N10 , d=>L4 , clk=>N2 , pr=>CLRN1);
    DQFFP_2 :  ORCAD_DQFFP 
      PORT MAP  (q=>N11 , d=>L5 , clk=>N10 , pr=>CLRN1);
    DQFFP_3 :  ORCAD_DQFFP 
      PORT MAP  (q=>N12 , d=>L6 , clk=>N11 , pr=>CLRN1);
    DQFFP_4 :  ORCAD_DQFFP 
      PORT MAP  (q=>N13 , d=>L7 , clk=>N3 , pr=>CLRN2);
    DQFFP_5 :  ORCAD_DQFFP 
      PORT MAP  (q=>N14 , d=>L8 , clk=>N13 , pr=>CLRN2);
    DQFFP_6 :  ORCAD_DQFFP 
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , pr=>CLRN2);
    DQFFP_7 :  ORCAD_DQFFP 
      PORT MAP  (q=>N16 , d=>L10 , clk=>N15 , pr=>CLRN2);
    QA1 <= NOT (N9) AFTER 1 ns;
    QB1 <= NOT (N10) AFTER 1 ns;
    QC1 <= NOT (N11) AFTER 1 ns;
    QD1 <= NOT (N12) AFTER 1 ns;
    QA2 <= NOT (N13) AFTER 1 ns;
    QB2 <= NOT (N14) AFTER 1 ns;
    QC2 <= NOT (N15) AFTER 1 ns;
    QD2 <= NOT (N16) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7470\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
JN : IN  std_logic;
CLK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
KN : IN  std_logic;
Q : OUT  std_logic;
QN : OUT  std_logic;
PRN : IN  std_logic;
CLRN : IN  std_logic);
END \7470\;

architecture model OF \7470\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (JN);
    L2 <= NOT (KN);
    L3 <=  (J1 AND J2 AND L1);
    L4 <=  (K1 AND K2 AND L2);
    JKFFPC_0 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q , qNot=>QN , j=>L3 , k=>L4 , clk=>CLK , pr=>PRN , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7471\ IS PORT(
J1A : IN   std_logic;
J1B : IN   std_logic;
J2A : IN   std_logic;
J2B : IN   std_logic;
CLK : IN   std_logic;
K1A : IN   std_logic;
K1B : IN   std_logic;
K2A : IN   std_logic;
K2B : IN   std_logic;
PRN : IN   std_logic;
Q   : OUT  std_logic;
QN  : OUT  std_logic);
END \7471\;

architecture model OF \7471\ IS

	COMPONENT orcad_jkffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns
		);
	PORT (
      j, k, clk, pr   : IN std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <= (J1A AND J1B) OR (J2A AND J2B);
    L2 <= (K1A AND K1B) OR (K2A AND K2B);

    JKFFP_0 :  ORCAD_JKFFP 
      PORT MAP  (q=>Q , qNot=>QN , j=>L1 , k=>L2 , clk=>CLK , pr=>PRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7472\ IS PORT(
J1 : IN  std_logic;
J2 : IN  std_logic;
J3: IN  std_logic;
CLK : IN  std_logic;
K1 : IN  std_logic;
K2 : IN  std_logic;
K3: IN  std_logic;
Q : OUT  std_logic;
QN : OUT  std_logic;
PRN : IN  std_logic;
CLRN : IN  std_logic);
END \7472\;

architecture model OF \7472\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;

    BEGIN
    L1 <=  (J1 AND J2 AND J3);
    L2 <=  (K1 AND K2 AND K3);
    JKFFPC_0 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q , qNot=>QN , j=>L1 , k=>L2 , clk=>CLK , pr=>PRN , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7473\ IS PORT(
J1    : IN   std_logic;
CLK1  : IN   std_logic;
K1    : IN   std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
CLRN1 : IN   std_logic;
J2    : IN   std_logic;
CLK2  : IN   std_logic;
K2    : IN   std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
CLRN2 : IN   std_logic);
END \7473\;

architecture model OF \7473\ IS
	COMPONENT orcad_jkffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (CLK1);
	 N2 <= NOT (CLK2);

    JKFFC_0 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , cl=>CLRN1);
    JKFFC_20 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N2 , cl=>CLRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7474\ IS PORT(
D1    : IN   std_logic;
CLK1  : IN   std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
PRN1  : IN   std_logic;
CLRN1 : IN   std_logic;
D2    : IN   std_logic;
CLK2  : IN   std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
PRN2  : IN   std_logic;
CLRN2 : IN   std_logic);
END \7474\;

architecture model OF \7474\ IS
	COMPONENT orcad_dffpc
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;


    BEGIN
    DFFPC_0 : ORCAD_DFFPC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , d=>D1 , clk=>CLK1 , pr=>PRN1 , cl=>CLRN1);
    DFFPC_3 : ORCAD_DFFPC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , d=>D2 , clk=>CLK2 , pr=>PRN2 , cl=>CLRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7475\ IS PORT(
D1  : IN   std_logic;
D2  : IN   std_logic;
D3  : IN   std_logic;
D4  : IN   std_logic;
E12 : IN   std_logic;
E34 : IN   std_logic;
Q1  : OUT  std_logic;
QN1 : OUT  std_logic;
Q2  : OUT  std_logic;
QN2 : OUT  std_logic;
Q3  : OUT  std_logic;
QN3 : OUT  std_logic;
Q4  : OUT  std_logic;
QN4 : OUT  std_logic);
END \7475\;

architecture model OF \7475\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (D1);
    L2 <= NOT (D2);
    L3 <= NOT (D3);
    L4 <= NOT (D4);
    DLATCH_0 :  ORCAD_DLATCH 
      PORT MAP  (q=>QN1 , d=>L1 , enable=>E12);
    DLATCH_1 :  ORCAD_DLATCH 
      PORT MAP  (q=>QN2 , d=>L2 , enable=>E12);
    DLATCH_2 :  ORCAD_DLATCH 
      PORT MAP  (q=>QN3 , d=>L3 , enable=>E34);
    DLATCH_3 :  ORCAD_DLATCH 
      PORT MAP  (q=>QN4 , d=>L4 , enable=>E34);
    DLATCH_4 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q1 , d=>D1 , enable=>E12);
    DLATCH_5 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q2 , d=>D2 , enable=>E12);
    DLATCH_6 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q3 , d=>D3 , enable=>E34);
    DLATCH_7 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q4 , d=>D4 , enable=>E34);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7476\ IS PORT(
J1    : IN   std_logic;
CLK1  : IN   std_logic;
K1    : IN   std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
PRN1  : IN   std_logic;
CLRN1 : IN   std_logic;
J2    : IN   std_logic;
CLK2  : IN   std_logic;
K2    : IN   std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
PRN2  : IN   std_logic;
CLRN2 : IN   std_logic);
END \7476\;

architecture model OF \7476\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);

    JKFFPC_0 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , pr=>PRN1 , cl=>CLRN1);
    JKFFPC_49 : ORCAD_JKFFPC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N2 , pr=>PRN2 , cl=>CLRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7477\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
E12 : IN  std_logic;
E34 : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic);
END \7477\;

architecture model OF \7477\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	

    BEGIN
    DLATCH_8 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q1 , d=>D1 , enable=>E12);
    DLATCH_9 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q2 , d=>D2 , enable=>E12);
    DLATCH_10 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q3 , d=>D3 , enable=>E34);
    DLATCH_11 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q4 , d=>D4 , enable=>E34);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7478\ IS PORT(
J1   : IN   std_logic;
K1   : IN   std_logic;
J2   : IN   std_logic;
K2   : IN   std_logic;
CLK  : IN   std_logic;
PRN1 : IN   std_logic;
PRN2 : IN   std_logic;
CLRN : IN   std_logic;
Q1   : OUT  std_logic;
QN1  : OUT  std_logic;
Q2   : OUT  std_logic;
QN2  : OUT  std_logic);
END \7478\;

architecture model OF \7478\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT (CLK);
    JKFFPC_4 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , pr=>PRN1 , cl=>CLRN);
    JKFFPC_5 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N1 , pr=>PRN2 , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7480\ IS PORT(
A1   : IN     std_logic;
A2   : IN     std_logic;
AS   : IN     std_logic;
AC   : IN     std_logic;
B1   : IN     std_logic;
B2   : IN     std_logic;
BS   : IN     std_logic;
BC   : IN     std_logic;
CN0  : IN     std_logic;
SUM  : OUT    std_logic;
SUMN : OUT    std_logic;
CN1N : OUT    std_logic);
END \7480\;

architecture model OF \7480\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
	 SIGNAL L4 : std_logic;
	SIGNAL L5 : std_logic;

    BEGIN
    N1 <= NOT (AC);
    N2 <= NOT (AS);
    N3 <= NOT (BC);
    N4 <= NOT (BS);

    L1 <= N1 OR N2 OR (A1 AND A2);
    L2 <= N3 OR N4 OR (B1 AND B2);
    L3 <= L1 XOR L2;
	 L4 <= NOT (L3);
	 N5 <= NOT (L1);
    N6 <= NOT (L2);
    N7 <= NOT (CN0);

    CN1N <= (N7 AND L3) OR (N5 AND N6) AFTER 1 ns;
    L5 <= (N7 AND L3) OR (CN0 AND L4) AFTER 1 ns; 
    SUM <= L5;
	SUMN <= NOT (L5);
    
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7482\ IS PORT(
C0 : IN   std_logic;
A1 : IN   std_logic;
A2 : IN   std_logic;
B1 : IN   std_logic;
B2 : IN   std_logic;
S1 : OUT  std_logic;
S2 : OUT  std_logic;
C2 : OUT  std_logic);
END \7482\;

architecture model OF \7482\ IS
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
	 SIGNAL FB1 : std_logic;

    BEGIN
    N1 <= NOT (B2);
    N2 <= NOT (A2);
    L1 <=  (C0 AND N3);
    L2 <=  (A1 AND N3);
    L3 <=  (B1 AND N3);
    L4 <=  (C0 AND A1 AND B1);
    L5 <=  (C0 AND A1);
    L6 <=  (C0 AND B1);
    L7 <=  (B1 AND A1);
    L8 <=  (N3 AND FB1);
    L9 <=  (N2 AND FB1);
    L10 <=  (N1 AND FB1);
    L11 <=  (N3 AND N2 AND N1);
    L12 <=  (N3 AND N2);
    L13 <=  (N3 AND N1);
    L14 <=  (N2 AND N1);
    S1 <=  (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
    N3 <= NOT (L5 OR L6 OR L7);
    S2 <= NOT (L8 OR L9 OR L10 OR L11) AFTER 1 ns;
    FB1 <= NOT (L12 OR L13 OR L14) AFTER 1 ns;
    C2 <= FB1;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7483\ IS PORT(
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
C4 : OUT  std_logic);
END \7483\;

architecture model OF \7483\ IS
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
    N1 <= NOT (C0);
    N10 <= NOT (C0);
    N2 <= NOT (A1 OR B1);
    N3 <= NOT (A1 AND B1);
    N4 <= NOT (B2 OR A2);
    N5 <= NOT (B2 AND A2);
    N6 <= NOT (A3 OR B3);
    N7 <= NOT (A3 AND B3);
    N8 <= NOT (B4 OR A4);
    N9 <= NOT (B4 AND A4);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <=  (L2 AND N3);
    L4 <=  (N1 AND N3);
    L5 <= NOT (N4);
    L6 <=  (L5 AND N5);
    L7 <=  (N1 AND N3 AND N5);
    L8 <=  (N5 AND N2);
    L9 <= NOT (N6);
    L10 <=  (L9 AND N7);
    L11 <=  (N1 AND N3 AND N5 AND N7);
    L12 <=  (N5 AND N7 AND N2);
    L13 <=  (N7 AND N4);
    L14 <= NOT (N8);
    L15 <=  (L14 AND N9);
    L16 <=  (N10 AND N3 AND N5 AND N7 AND N9);
    L17 <=  (N5 AND N7 AND N9 AND N2);
    L18 <=  (N7 AND N9 AND N4);
    L19 <=  (N9 AND N6);
    L20 <= NOT (L4 OR N2);
    L21 <= NOT (L7 OR L8 OR N4);
    L22 <= NOT (L11 OR L12 OR L13 OR N6);
    S1 <=  (L1 XOR L3) AFTER 1 ns;
    S2 <=  (L20 XOR L6) AFTER 1 ns;
    S3 <=  (L21 XOR L10) AFTER 1 ns;
    S4 <=  (L22 XOR L15) AFTER 1 ns;
    C4 <= NOT (L16 OR L17 OR L18 OR L19 OR N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7485\ IS PORT(
B3 : IN  std_logic;
ALBI : IN  std_logic;
AEBI : IN  std_logic;
AGBI : IN  std_logic;
AGBO : OUT  std_logic;
AEBO : OUT  std_logic;
ALBO : OUT  std_logic;
B0   : IN  std_logic;
A0   : IN  std_logic;
B1   : IN  std_logic;
A1   : IN  std_logic;
A2   : IN  std_logic;
B2   : IN  std_logic;
A3   : IN  std_logic);
END \7485\;

architecture model OF \7485\ IS
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
    L1 <= NOT (A3 AND B3);
    L2 <= NOT (A2 AND B2);
    L3 <= NOT (A1 AND B1);
    L4 <= NOT (A0 AND B0);
    L5 <=  (A3 AND L1);
    L6 <=  (L1 AND B3);
    L7 <=  (A2 AND L2);
    L8 <=  (L2 AND B2);
    L9 <=  (A1 AND L3);
    L10 <=  (L3 AND B1);
    L11 <=  (A0 AND L4);
    L12 <=  (L4 AND B0);
    N1 <= NOT (L5 OR L6);
    N2 <= NOT (L7 OR L8);
    N3 <= NOT (L9 OR L10);
    N4 <= NOT (L11 OR L12);
    N5 <=  (L6);
    N6 <=  (L5);
    L13 <=  (B2 AND L2 AND N1);
    L14 <=  (B1 AND L3 AND N1 AND N2);
    L15 <=  (B0 AND L4 AND N1 AND N2 AND N3);
    L16 <=  (N1 AND N2 AND N3 AND N4 AND ALBI);
    L17 <=  (N1 AND N2 AND N3 AND N4 AND AEBI);
    L18 <=  (AEBI AND N4 AND N3 AND N2 AND N1);
    L19 <=  (AGBI AND N4 AND N2 AND N3 AND N1);
    L20 <=  (N3 AND N2 AND N1 AND L4 AND A0);
    L21 <=  (N2 AND N1 AND L3 AND A1);
    L22 <=  (N1 AND L2 AND A2);
    AGBO <= NOT (N5 OR L13 OR L14 OR L15 OR L16 OR L17) AFTER 1 ns;
    ALBO <= NOT (L18 OR L19 OR L20 OR L21 OR L22 OR N6) AFTER 1 ns;
    AEBO <=  (N1 AND N2 AND AEBI AND N3 AND N4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7486\ IS PORT(
I0 : IN  std_logic;
I1 : IN  std_logic;
O : OUT  std_logic);
END \7486\;

architecture model OF \7486\ IS

    BEGIN
    O <=  (I0 XOR I1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7487\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic);
END \7487\;

architecture model OF \7487\ IS
    
    BEGIN
	PROCESS(A1, A2, A3, A4, B, C)

	BEGIN
    if(B = '0') AND (C = '0') THEN
         Y1 <= NOT (A1) AFTER 1 ns;
         Y2 <= NOT (A2) AFTER 1 ns;
         Y3 <= NOT (A3) AFTER 1 ns;
         Y4 <= NOT (A4) AFTER 1 ns;
    ELSif(B = '0') AND (C = '1') THEN
         Y1 <= A1 AFTER 1 ns;
         Y2 <= A2 AFTER 1 ns;
         Y3 <= A3 AFTER 1 ns;
         Y4 <= A4 AFTER 1 ns;
    ELSif(B = '1') AND (C = '0') THEN
         Y1 <= '1' AFTER 1 ns;
         Y2 <= '1' AFTER 1 ns;
         Y3 <= '1' AFTER 1 ns;
         Y4 <= '1' AFTER 1 ns;
    ELSif(B = '1') AND (C = '1') THEN
         Y1 <= '0' AFTER 1 ns;
         Y2 <= '0' AFTER 1 ns;
         Y3 <= '0' AFTER 1 ns;
         Y4 <= '0' AFTER 1 ns;
    END if;
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7490\ IS PORT(
CLKA : IN  std_logic;
CLKB : IN  std_logic;
SET9A : IN  std_logic;
SET9B : IN  std_logic;
CLRA : IN  std_logic;
CLRB : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \7490\;

architecture model OF \7490\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

	COMPONENT orcad_jkffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (SET9A AND SET9B);
    L2 <= NOT (CLRA AND CLRB);
    L3 <=  (L2 AND L1);
    L8 <=  (N5 AND N7);
    N1 <= NOT (CLKA);
    N2 <= NOT (CLKB);
    JKFFPC_1 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2);
    JKFFC_2 :  ORCAD_JKFFC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , cl=>L3);
    JKFFC_3 :  ORCAD_JKFFC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , cl=>L3);
    JKFFPC_2 : ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L8 , k=>N9 , clk=>N2 , pr=>L1 , cl=>L2);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7491\ IS PORT(
A   : IN  std_logic;
B   : IN  std_logic;
CLK : IN  std_logic;
QH  : OUT  std_logic;
QHN : OUT  std_logic);
END \7491\;

architecture model OF \7491\ IS
	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;
    SIGNAL N7 : std_logic;

    BEGIN
    L1 <=  (A AND B);
    DQFF_0 :  ORCAD_DQFF 
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK);
    DQFF_1 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK);
    DQFF_2 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK);
    DQFF_3 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK);
    DQFF_4 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK);
    DQFF_5 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK);
    DQFF_6 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK);
    DFF_0 :  ORCAD_DFF 
      PORT MAP  (q=>QH , qNot=>QHN , d=>N7 , clk=>CLK);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7492\ IS PORT(
CLKA : IN  std_logic;
CLKB : IN  std_logic;
CLRA : IN  std_logic;
CLRB : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic);
END \7492\;

architecture model OF \7492\ IS
	COMPONENT orcad_jkffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (CLRA AND CLRB);
    N1 <= NOT (CLKA);
    N2 <= NOT (CLKB);
    JKFFC_6 :  ORCAD_JKFFC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , cl=>L1);
    JKFFC_7 :  ORCAD_JKFFC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N8 , k=>ONE , clk=>N2 , cl=>L1);
    JKFFC_8 :  ORCAD_JKFFC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>N5 , k=>ONE , clk=>N2 , cl=>L1);
    JKFFC_9 :  ORCAD_JKFFC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , cl=>L1);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7493\ IS PORT(
CLKA : IN  std_logic;
CLKB : IN  std_logic;
RO1 : IN  std_logic;
RO2 : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \7493\;

architecture model OF \7493\ IS
	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;

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
    N1 <= NOT (CLKA);
    N2 <= NOT (CLKB);
    L1 <= NOT (RO1 AND RO2);
    DFFC_0 : ORCAD_DFFC 
      PORT MAP (q=>N3 , qNot=>N4 , d=>N4 , clk=>N1 , cl=>L1);
    DFFC_1 : ORCAD_DFFC 
      PORT MAP (q=>N5 , qNot=>N6 , d=>N6 , clk=>N2 , cl=>L1);
    DFFC_2 : ORCAD_DFFC 
      PORT MAP (q=>N7 , qNot=>N8 , d=>N8 , clk=>N6 , cl=>L1);
    DFFC_3 : ORCAD_DFFC 
      PORT MAP (q=>N9 , qNot=>N10 , d=>N10 , clk=>N8 , cl=>L1);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7494\ IS PORT(
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
SER : IN  std_logic;
CLK : IN  std_logic;
O   : OUT  std_logic);
END \7494\;

architecture model OF \7494\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (CLR);
    L2 <=  (P1A AND PE1);
    L3 <=  (PE2 AND P2A);
    L4 <=  (P1B AND PE1);
    L5 <=  (PE2 AND P2B);
    L6 <=  (P1C AND PE1);
    L7 <=  (PE2 AND P2C);
    L8 <=  (P1D AND PE1);
    L9 <=  (PE2 AND P2D);
    L10 <= NOT (L2 OR L3);
    L11 <= NOT (L4 OR L5);
    L12 <= NOT (L6 OR L7);
    L13 <= NOT (L8 OR L9);
    DQFFPC_0 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N1 , d=>SER , clk=>CLK , pr=>L10 , cl=>L1);
    DQFFPC_1 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , pr=>L11 , cl=>L1);
    DQFFPC_2 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , pr=>L12 , cl=>L1);
    DQFFPC_3 :  ORCAD_DQFFPC 
      PORT MAP  (q=>O , d=>N3 , clk=>CLK , pr=>L13 , cl=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7495\ IS PORT(
SER : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
MODE : IN  std_logic;
CLKL : IN  std_logic;
CLKR : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic);
END \7495\;

architecture model OF \7495\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (MODE);
    L2 <=  (L1 AND CLKL);
    L3 <=  (MODE AND CLKR);
    N1 <= NOT (L2 OR L3);
    L4 <=  (SER AND L1);
    L5 <=  (MODE AND D0);
    L6 <=  (N2 AND L1);
    L7 <=  (MODE AND D1);
    L8 <=  (N3 AND L1);
    L9 <=  (MODE AND D2);
    L10 <=  (N4 AND L1);
    L11 <=  (MODE AND D3);
    L12 <=  (L4 OR L5);
    L13 <=  (L6 OR L7);
    L14 <=  (L8 OR L9);
    L15 <=  (L10 OR L11);
    DQFF_14 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>L12 , clk=>N1);
    DQFF_15 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L13 , clk=>N1);
    DQFF_16 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1);
    DQFF_17 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L15 , clk=>N1);
    Q0 <=  (N2) AFTER 1 ns;
    Q1 <=  (N3) AFTER 1 ns;
    Q2 <=  (N4) AFTER 1 ns;
    Q3 <=  (N5) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7496\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
CLK : IN  std_logic;
PE : IN  std_logic;
CLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic);
END \7496\;

architecture model OF \7496\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (A AND PE);
    L2 <= NOT (B AND PE);
    L3 <= NOT (C AND PE);
    L4 <= NOT (D AND PE);
    L5 <= NOT (E AND PE);
    DQFFPC_4 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N1 , d=>SER , clk=>CLK , pr=>L1 , cl=>CLRN);
    DQFFPC_5 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , pr=>L2 , cl=>CLRN);
    DQFFPC_6 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , pr=>L3 , cl=>CLRN);
    DQFFPC_7 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , pr=>L4 , cl=>CLRN);
    DQFFPC_8 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , pr=>L5 , cl=>CLRN);
    QA <=  (N1) AFTER 1 ns;
    QB <=  (N2) AFTER 1 ns;
    QC <=  (N3) AFTER 1 ns;
    QD <=  (N4) AFTER 1 ns;
    QE <=  (N5) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7497\ IS PORT(
B0     : IN  std_logic;
B1     : IN  std_logic;
B2     : IN  std_logic;
B3     : IN  std_logic;
B4     : IN  std_logic;
B5     : IN  std_logic;
CLK    : IN  std_logic;
STRBN  : IN  std_logic;
ENN    : IN  std_logic;
UNICAS : IN  std_logic;
CLR    : IN  std_logic;
TCN    : OUT  std_logic;
Y      : OUT  std_logic;
ZN     : OUT  std_logic);
END \7497\;

architecture model OF \7497\ IS
	SIGNAL qcnt0 : std_logic;
	SIGNAL qcnt1 : std_logic;
	SIGNAL qcnt2 : std_logic;
	SIGNAL qcnt3 : std_logic;
	SIGNAL qcnt4 : std_logic;
	SIGNAL qcnt5 : std_logic;
	SIGNAL L1    : std_logic;
	SIGNAL L2    : std_logic;
	SIGNAL L3    : std_logic;
	SIGNAL L4    : std_logic;
	SIGNAL L5    : std_logic;
	SIGNAL L6    : std_logic;
	SIGNAL L7    : std_logic;
	SIGNAL L8    : std_logic;
	SIGNAL L9    : std_logic;

	BEGIN
	L1 <= NOT (ENN);
	L2 <= NOT (CLK OR STRBN);
	
	L3 <= B5 AND L2 AND qcnt0;
	L4 <= B4 AND L2 AND qcnt0 AND qcnt1;
	L5 <= B3 AND L2 AND qcnt0 AND qcnt1 AND qcnt2;	
	L6 <= B2 AND L2 AND qcnt0 AND qcnt1 AND qcnt2 AND qcnt3;
	L7 <= B1 AND L2 AND qcnt0 AND qcnt1 AND qcnt2 AND qcnt3 AND qcnt4;
	L8 <= B0 AND L2 AND qcnt0 AND qcnt1 AND qcnt2 AND qcnt3 AND qcnt4 AND qcnt5;

	L9 <= NOT (L3 OR L4 OR L5 OR L6 OR L7 OR L8);

	TCN <= NOT (L1 AND qcnt0 AND qcnt1 AND qcnt2 AND qcnt3 AND qcnt4 AND qcnt5) AFTER 1 ns;
	Y   <= NOT (UNICAS AND L9) AFTER 1 ns;
	ZN  <= L9 AFTER 1 ns;	

	PROCESS(CLK, ENN, CLR)
		VARIABLE cnt  : integer := 0;
		VARIABLE c : std_logic_vector(5 DOWNTO 0) := (others => '0');		 

		BEGIN
		if(CLR = '1') THEN
			c := (others => '0');
		ELSif(ENN = '0') AND (CLK = '1') AND CLK'EVENT THEN
			cnt := 0;
      	--convert vector to integer
			FOR i IN 0 TO 5 LOOP
				if(c(i) = '1') THEN
					cnt := cnt + 2**i;
				END if;
			END LOOP;
			
			cnt := cnt + 1;

     		--convert integer to vector
			FOR i IN 0 TO 5 LOOP
				if(cnt MOD 2 = 1) THEN
					c(i) := '1';
				ELSE 
					c(i) := '0';
				END if;
				cnt := cnt / 2;
			END LOOP;

			qcnt0 <= c(0);
			qcnt1 <= c(1);
			qcnt2 <= c(2);
			qcnt3 <= c(3);
			qcnt4 <= c(4);
			qcnt5 <= c(5);
		END if;
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7498\ IS PORT(
A1    : IN  std_logic;
B1    : IN  std_logic;
C1    : IN  std_logic;
D1    : IN  std_logic;
A2    : IN  std_logic;
B2    : IN  std_logic;
C2    : IN  std_logic;
D2    : IN  std_logic;
WRDSL : IN  std_logic;
CLKN  : IN  std_logic;
QA    : OUT  std_logic;
QB    : OUT  std_logic;
QC    : OUT  std_logic;
QD    : OUT  std_logic);
END \7498\;

architecture model OF \7498\ IS

    BEGIN
	PROCESS(CLKN)

	BEGIN
    if(CLKN = '0') AND CLKN'EVENT THEN
         if(WRDSL = '0') THEN
              QA <= A1 AFTER 1 ns;
              QB <= B1 AFTER 1 ns;
              QC <= C1 AFTER 1 ns;
              QD <= D1 AFTER 1 ns;
         ELSif(WRDSL = '1') THEN
              QA <= A2 AFTER 1 ns;
              QB <= B2 AFTER 1 ns;
              QC <= C2 AFTER 1 ns;
              QD <= D2 AFTER 1 ns;
         END if;
    END if;
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \7499\ IS PORT(
J : IN  std_logic;
KN : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
MODE : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
QDN : OUT  std_logic;
QA : INOUT  std_logic;
QB : INOUT  std_logic;
QC : INOUT  std_logic;
QD : INOUT  std_logic);
END \7499\;

architecture model OF \7499\ IS

   BEGIN
	PROCESS(CLK1, CLK2)

	BEGIN
	if(NOW = 0 ns) THEN
		QA <= '0';
		QB <= '0';
		QC <= '0';
		QD <= '0';
	END if;

   if(MODE = '1') AND (CLK2 = '0') AND CLK2'EVENT THEN
			QA <= A AFTER 1 ns;
         QB <= B AFTER 1 ns; 
         QC <= C AFTER 1 ns; 
         QD <= D AFTER 1 ns; 
         QDN <= NOT (D);
   ELSif(MODE = '0') AND (CLK1 = '0') AND CLK1'EVENT THEN
         if(J = '0') AND (KN = '1') THEN
              QD <= QC AFTER 1 ns;
              QDN <= NOT (QC) AFTER 1 ns;
              QC <= QB AFTER 1 ns;
              QB <= QA AFTER 1 ns;
         ELSif(J = '0') AND (KN = '0') THEN
              QD <= QC AFTER 1 ns;
              QDN <= NOT (QC) AFTER 1 ns;
              QC <= QB AFTER 1 ns;
              QB <= QA AFTER 1 ns;
              QA <= '0' AFTER 1 ns;
         ELSif(J = '1') AND (KN = '1') THEN
              QD <= QC AFTER 1 ns;
              QDN <= NOT (QC) AFTER 1 ns;
              QC <= QB AFTER 1 ns;
              QB <= QA AFTER 1 ns;
              QA <= '1' AFTER 1 ns;
         ELSif(J = '1') AND (KN = '0') THEN
              QD <= QC AFTER 1 ns;
              QDN <= NOT (QC) AFTER 1 ns;
              QC <= QB AFTER 1 ns;
              QB <= QA AFTER 1 ns;
              QA <= NOT (QA) AFTER 1 ns;
         END if;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74107\ IS PORT(
J1    : IN  std_logic;
CLK1  : IN  std_logic;
K1    : IN  std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
CLRN1 : IN  std_logic;
J2    : IN  std_logic;
CLK2  : IN  std_logic;
K2    : IN  std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
CLRN2 : IN  std_logic);
END \74107\;

architecture model OF \74107\ IS
	COMPONENT orcad_jkffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;
	 SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);

    JKFFC_14 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , cl=>CLRN1);
    JKFFC_21 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N2 , cl=>CLRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74109\ IS PORT(
J1    : IN  std_logic;
CLK1  : IN  std_logic;
KN1   : IN  std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
PRN1  : IN  std_logic;
CLRN1 : IN  std_logic;
J2    : IN  std_logic;
CLK2  : IN  std_logic;
KN2   : IN  std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
PRN2  : IN  std_logic;
CLRN2 : IN  std_logic);
END \74109\;

architecture model OF \74109\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;


    BEGIN
    L1 <= NOT (KN1);
    L2 <= NOT (KN2);

    JKFFPC_7 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>L1 , clk=>CLK1 , pr=>PRN1 , cl=>CLRN1);
    JKFFPC_49 : ORCAD_JKFFPC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>L2 , clk=>CLK2 , pr=>PRN2 , cl=>CLRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74112\ IS PORT(
J1    : IN  std_logic;
CLK1  : IN  std_logic;
K1    : IN  std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
PRN1  : IN  std_logic;
CLRN1 : IN  std_logic;
J2    : IN  std_logic;
CLK2  : IN  std_logic;
K2    : IN  std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
PRN2  : IN  std_logic;
CLRN2 : IN  std_logic);
END \74112\;

architecture model OF \74112\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);

    JKFFPC_14 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , pr=>PRN1 , cl=>CLRN1);
    JKFFPC_50 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N2 , pr=>PRN2 , cl=>CLRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74113\ IS PORT(
J1    : IN  std_logic;
CLK1  : IN  std_logic;
K1    : IN  std_logic;
Q1    : OUT  std_logic;
QN1   : OUT  std_logic;
PRN1  : IN  std_logic;
J2    : IN  std_logic;
CLK2  : IN  std_logic;
K2    : IN  std_logic;
Q2    : OUT  std_logic;
QN2   : OUT  std_logic;
PRN2  : IN  std_logic);
END \74113\;

architecture model OF \74113\ IS
	COMPONENT orcad_jkffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns
		);
	PORT (
      j, k, clk, pr   : IN std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;
	
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);

    JKFFP_0 :  ORCAD_JKFFP 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , pr=>PRN1);
    JKFFP_1 :  ORCAD_JKFFP 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N2 , pr=>PRN2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74114\ IS PORT(
J1   : IN  std_logic;
K1   : IN  std_logic;
Q1   : OUT  std_logic;
QN1  : OUT  std_logic;
PRN1 : IN  std_logic;
J2   : IN  std_logic;
K2   : IN  std_logic;
Q2   : OUT  std_logic;
QN2  : OUT  std_logic;
PRN2 : IN  std_logic;
CLK  : IN  std_logic;
CLRN : IN  std_logic);
END \74114\;

architecture model OF \74114\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;

    BEGIN
    N1 <= NOT (CLK);
    JKFFPC_18 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q1 , qNot=>QN1 , j=>J1 , k=>K1 , clk=>N1 , pr=>PRN1 , cl=>CLRN);
    JKFFPC_51 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q2 , qNot=>QN2 , j=>J2 , k=>K2 , clk=>N1 , pr=>PRN2 , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74116\ IS PORT(
DA1   : IN  std_logic;
DA2   : IN  std_logic;
DA3   : IN  std_logic;
DA4   : IN  std_logic;
G1NA  : IN  std_logic;
G2NA  : IN  std_logic;
CLRNA : IN  std_logic;
QA1   : OUT  std_logic;
QA2   : OUT  std_logic;
QA3   : OUT  std_logic;
QA4   : OUT  std_logic;
DB1   : IN  std_logic;
DB2   : IN  std_logic;
DB3   : IN  std_logic;
DB4   : IN  std_logic;
G1NB  : IN  std_logic;
G2NB  : IN  std_logic;
CLRNB : IN  std_logic;
QB1   : OUT  std_logic;
QB2   : OUT  std_logic;
QB3   : OUT  std_logic;
QB4   : OUT  std_logic);
END \74116\;

architecture model OF \74116\ IS
	COMPONENT orcad_dlatchpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL ONE :  std_logic := '1';

    BEGIN
    L1 <= NOT (G1NA OR G2NA);
    L2 <= NOT (G1NB OR G2NB);

    DLATCHPC_0 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QA1 , d=>DA1 , enable=>L1 , pr=>ONE , cl=>CLRNA);
    DLATCHPC_1 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QA2 , d=>DA2 , enable=>L1 , pr=>ONE , cl=>CLRNA);
    DLATCHPC_2 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QA3 , d=>DA3 , enable=>L1 , pr=>ONE , cl=>CLRNA);
    DLATCHPC_3 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QA4 , d=>DA4 , enable=>L1 , pr=>ONE , cl=>CLRNA);
    DLATCHPC_34 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QB1 , d=>DB1 , enable=>L2 , pr=>ONE , cl=>CLRNB);
    DLATCHPC_35 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QB2 , d=>DB2 , enable=>L2 , pr=>ONE , cl=>CLRNB);
    DLATCHPC_36 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QB3 , d=>DB3 , enable=>L2 , pr=>ONE , cl=>CLRNB);
    DLATCHPC_37 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>QB4 , d=>DB4 , enable=>L2 , pr=>ONE , cl=>CLRNB);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74133\ IS PORT(
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
O : OUT  std_logic);
END \74133\;

architecture model OF \74133\ IS

    BEGIN
    O <= NOT (I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11 AND I12) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74134\ IS PORT(
I0  : IN  std_logic;
I1  : IN  std_logic;
I2  : IN  std_logic;
I3  : IN  std_logic;
I4  : IN  std_logic;
I5  : IN  std_logic;
I6  : IN  std_logic;
I7  : IN  std_logic;
I8  : IN  std_logic;
I9  : IN  std_logic;
I10 : IN  std_logic;
I11 : IN  std_logic;
O   : OUT  std_logic;
OEN : IN  std_logic);
END \74134\;

architecture model OF \74134\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;

    BEGIN
    L1 <= NOT (OEN);
    N1 <= NOT (I0 AND I1 AND I2 AND I3 AND I4 AND I5 AND I6 AND I7 AND I8 AND I9 AND I10 AND I11);
    TSB_0 :  ORCAD_TSB 
      PORT MAP  (O=>O , i1=>N1 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74135\ IS PORT(
A1  : IN  std_logic;
B1  : IN  std_logic;
C12 : IN  std_logic;
A2  : IN  std_logic;
B2  : IN  std_logic;
Y1  : OUT  std_logic;
Y2  : OUT  std_logic;
A3  : IN  std_logic;
B3  : IN  std_logic;
C34 : IN  std_logic;
A4  : IN  std_logic;
B4  : IN  std_logic;
Y3  : OUT  std_logic;
Y4  : OUT  std_logic);
END \74135\;

architecture model OF \74135\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    N1 <=  (A1 XOR B1);
    N2 <=  (A2 XOR B2);
    N3 <=  (A3 XOR B3);
    N4 <=  (A4 XOR B4);
    Y1 <=  (N1 XOR C12) AFTER 1 ns;
    Y2 <=  (N2 XOR C12) AFTER 1 ns;
    Y3 <=  (N3 XOR C34) AFTER 1 ns;
    Y4 <=  (N4 XOR C34) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74137\ IS PORT(
A   : IN  std_logic;
B   : IN  std_logic;
C   : IN  std_logic;
GLN : IN  std_logic;
G1  : IN  std_logic;
G2N : IN  std_logic;
Y0  : OUT  std_logic;
Y1  : OUT  std_logic;
Y2  : OUT  std_logic;
Y3  : OUT  std_logic;
Y4  : OUT  std_logic;
Y5  : OUT  std_logic;
Y6  : OUT  std_logic;
Y7  : OUT  std_logic);
END \74137\;

architecture model OF \74137\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
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
    N1 <= NOT (G2N);
    N2 <=  (G1);
    L1 <=  (N1 AND N2);
    L2 <= NOT (GLN);
    DLATCH_12 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>A , enable=>L2);
    DLATCH_13 :  ORCAD_DLATCH 
      PORT MAP  (q=>N4 , d=>B , enable=>L2);
    DLATCH_14 :  ORCAD_DLATCH 
      PORT MAP  (q=>N5 , d=>C , enable=>L2);
    L3 <= NOT (N3);
    L4 <= NOT (N4);
    L5 <= NOT (N5);
    Y0 <= NOT (L3 AND L4 AND L5 AND L1) AFTER 1 ns;
    Y1 <= NOT (N3 AND L4 AND L5 AND L1) AFTER 1 ns;
    Y2 <= NOT (L3 AND N4 AND L5 AND L1) AFTER 1 ns;
    Y3 <= NOT (N3 AND N4 AND L5 AND L1) AFTER 1 ns;
    Y4 <= NOT (L3 AND L4 AND N5 AND L1) AFTER 1 ns;
    Y5 <= NOT (N3 AND L4 AND N5 AND L1) AFTER 1 ns;
    Y6 <= NOT (L3 AND N4 AND N5 AND L1) AFTER 1 ns;
    Y7 <= NOT (N3 AND N4 AND N5 AND L1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74138\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
G1   : IN  std_logic;
G2AN : IN  std_logic;
G2BN : IN  std_logic;
Y0N  : OUT  std_logic;
Y1N  : OUT  std_logic;
Y2N  : OUT  std_logic;
Y3N  : OUT  std_logic;
Y4N  : OUT  std_logic;
Y5N  : OUT  std_logic;
Y6N  : OUT  std_logic;
Y7N  : OUT  std_logic);
END \74138\;

architecture model OF \74138\ IS
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
    N1 <=  (A);
    N2 <=  (B);
    N3 <=  (C);
    N4 <= NOT (A);
    N5 <= NOT (B);
    N6 <= NOT (C);
    N7 <=  (G1);
    N8 <= NOT (G2AN OR G2BN);
    L1 <=  (N7 AND N8);
    Y0N <= NOT (N4 AND N5 AND N6 AND L1) AFTER 1 ns;
    Y1N <= NOT (N1 AND N5 AND N6 AND L1) AFTER 1 ns;
    Y2N <= NOT (N4 AND N2 AND N6 AND L1) AFTER 1 ns;
    Y3N <= NOT (N1 AND N2 AND N6 AND L1) AFTER 1 ns;
    Y4N <= NOT (N4 AND N5 AND N3 AND L1) AFTER 1 ns;
    Y5N <= NOT (N1 AND N5 AND N3 AND L1) AFTER 1 ns;
    Y6N <= NOT (N4 AND N2 AND N3 AND L1) AFTER 1 ns;
    Y7N <= NOT (N1 AND N2 AND N3 AND L1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74139\ IS PORT(
G1N  : IN  std_logic;
A1   : IN  std_logic;
B1   : IN  std_logic;
Y10N : OUT  std_logic;
Y11N : OUT  std_logic;
Y12N : OUT  std_logic;
Y13N : OUT  std_logic;
G2N  : IN  std_logic;
A2   : IN  std_logic;
B2   : IN  std_logic;
Y20N : OUT  std_logic;
Y21N : OUT  std_logic;
Y22N : OUT  std_logic;
Y23N : OUT  std_logic);
END \74139\;

architecture model OF \74139\ IS
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

    BEGIN
    N1 <= NOT (G1N);
    N2 <=  (A1);
    N3 <=  (B1);
    N4 <= NOT (A1);
    N5 <= NOT (B1);
    Y10N <= NOT (N4 AND N5 AND N1) AFTER 1 ns;
    Y11N <= NOT (N2 AND N5 AND N1) AFTER 1 ns;
    Y12N <= NOT (N4 AND N3 AND N1) AFTER 1 ns;
    Y13N <= NOT (N2 AND N3 AND N1) AFTER 1 ns;
    N6  <= NOT (G2N);
    N7  <=  (A2);
    N8  <=  (B2);
    N9  <= NOT (A2);
    N10 <= NOT (B2);
    Y20N <= NOT (N9 AND N10 AND N6) AFTER 1 ns;
    Y21N <= NOT (N7 AND N10 AND N6) AFTER 1 ns;
    Y22N <= NOT (N9 AND N8 AND N6) AFTER 1 ns;
    Y23N <= NOT (N7 AND N8 AND N6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74143\ IS PORT(
BIN   : IN   std_logic;
RBIN  : IN   std_logic;
STRBN : IN   std_logic;
PCEIN : IN   std_logic;
SCEIN : IN   std_logic;
CLK   : IN   std_logic;
DPI   : IN   std_logic;
CLRN  : IN   std_logic;
QA    : OUT  std_logic;
QB    : OUT  std_logic;
QC    : OUT  std_logic;
QD    : OUT  std_logic;
A     : OUT  std_logic;
B     : OUT  std_logic;
C     : OUT  std_logic;
D     : OUT  std_logic;
E     : OUT  std_logic;
F     : OUT  std_logic;
G     : OUT  std_logic;
DPO   : OUT  std_logic;
MAX   : OUT  std_logic;
RBON  : INOUT  std_logic);
END \74143\;

architecture model OF \74143\ IS

    BEGIN
    PROCESS(CLK, CLRN, STRBN, PCEIN, SCEIN)
    VARIABLE cnt : INTEGER := 0;
 	 VARIABLE q    : std_logic_vector(3 DOWNTO 0);
	 VARIABLE qtmp : std_logic_vector(3 DOWNTO 0);
	 VARIABLE disp : std_logic_vector(6 DOWNTO 0);
         
    BEGIN
    if(CLRN = '0') THEN
         QA   <= '0' AFTER 1 ns;
         QB   <= '0' AFTER 1 ns;
         QC   <= '0' AFTER 1 ns;
         QD   <= '0' AFTER 1 ns;
         MAX  <= '1' AFTER 1 ns;
			disp := "0000000";
			qtmp := "0000";         
         DPO <= '0' AFTER 1 ns;
 			RBON <= '0' AFTER 1 ns;
    ELSif(SCEIN = '1') THEN
         MAX <= '1' AFTER 1 ns;
    ELSif(PCEIN = '0') AND (CLK = '1') AND CLK'EVENT THEN
			cnt := 0;

			q := qtmp;        		

			--convert vector to integer
			FOR i IN 0 TO 3 LOOP
				if(q(i) = '1') THEN
					cnt := cnt + 2**i;
				END if;
			END LOOP;

         if(cnt = 9) THEN
              cnt := 0;
              MAX <= '1' AFTER 1 ns;
         ELSE              
              cnt := cnt + 1;
              if(cnt = 9) THEN
                   MAX <= '0' AFTER 1 ns;
              END if;
         END if;

			if(STRBN = '0') THEN
         	--convert integer to vector
				FOR i IN 0 TO 3 LOOP
					if(cnt MOD 2 = 1) THEN
						q(i) := '1';
					ELSE
						q(i) := '0';
					END if;
					cnt := cnt / 2;
				END LOOP;
			END if;
	
			QA <= q(0) AFTER 1 ns;
			QB <= q(1) AFTER 1 ns;
			QC <= q(2) AFTER 1 ns;
			QD <= q(3) AFTER 1 ns;
			qtmp := q;
	END if;
   
   if(BIN = '1') AND (CLRN = '1') THEN
         RBON <= '0' AFTER 1 ns;
         DPO <= '0' AFTER 1 ns;
			disp := "0000000";   
	ELSif(RBIN = '0') AND (q = "0000") AND (CLRN = '1') THEN
         RBON <= '0' AFTER 1 ns;
         DPO <= '0' AFTER 1 ns;
			disp := "0000000";
    ELSif(CLRN = '1') THEN
    		RBON <= '1' AFTER 1 ns;
         if   (q = "0000") THEN disp := "0111111";
         ELSif(q = "0001") THEN disp := "0000110";
         ELSif(q = "0010") THEN disp := "1011011";
         ELSif(q = "0011") THEN disp := "1001111";
         ELSif(q = "0100") THEN disp := "1100110";
         ELSif(q = "0101") THEN disp := "1101101";
         ELSif(q = "0110") THEN disp := "1111101";
         ELSif(q = "0111") THEN disp := "0000111";
         ELSif(q = "1000") THEN disp := "1111111";
         ELSif(q = "1001") THEN disp := "1101111";
         END if;

         if(DPI = '1') THEN
              DPO <= '1' AFTER 1 ns;
			END if;
    END if;
   
    A <= disp(0) AFTER 1 ns;
    B <= disp(1) AFTER 1 ns;
    C <= disp(2) AFTER 1 ns;
    D <= disp(3) AFTER 1 ns;
    E <= disp(4) AFTER 1 ns;
    F <= disp(5) AFTER 1 ns;
    G <= disp(6) AFTER 1 ns;
    
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74145\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
O0N : OUT  std_logic;
O1N : OUT  std_logic;
O2N : OUT  std_logic;
O3N : OUT  std_logic;
O4N : OUT  std_logic;
O5N : OUT  std_logic;
O6N : OUT  std_logic;
O7N : OUT  std_logic;
O8N : OUT  std_logic;
O9N : OUT  std_logic);
END \74145\;

architecture model OF \74145\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (A);
    L2 <= NOT (B);
    L3 <= NOT (C);
    L4 <= NOT (D);
    O0N <= NOT (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
    O1N <= NOT (A AND L2 AND L3 AND L4) AFTER 1 ns;
    O2N <= NOT (L1 AND B AND L3 AND L4) AFTER 1 ns;
    O3N <= NOT (A AND B AND L3 AND L4) AFTER 1 ns;
    O4N <= NOT (L1 AND L2 AND C AND L4) AFTER 1 ns;
    O5N <= NOT (A AND L2 AND C AND L4) AFTER 1 ns;
    O6N <= NOT (L1 AND B AND C AND L4) AFTER 1 ns;
    O7N <= NOT (A AND B AND C AND L4) AFTER 1 ns;
    O8N <= NOT (L1 AND L2 AND L3 AND D) AFTER 1 ns;
    O9N <= NOT (A AND L2 AND L3 AND D) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74147\ IS PORT(
I1N : IN  std_logic;
I2N : IN  std_logic;
I3N : IN  std_logic;
I4N : IN  std_logic;
I5N : IN  std_logic;
I6N : IN  std_logic;
I7N : IN  std_logic;
I8N : IN  std_logic;
I9N : IN  std_logic;
AN : OUT  std_logic;
BN : OUT  std_logic;
CN : OUT  std_logic;
DN : OUT  std_logic);
END \74147\;

architecture model OF \74147\ IS
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
    L1 <= NOT (I1N);
    L2 <= NOT (I2N);
    L3 <= NOT (I3N);
    L4 <= NOT (I4N);
    L5 <= NOT (I5N);
    L6 <= NOT (I6N);
    L7 <= NOT (I7N);
    L8 <= (I8N AND I9N);
    L9 <= NOT (I9N);
    L10 <= NOT (L1 AND I2N AND I4N AND I6N AND L8);
    L11 <= NOT (I4N AND I6N AND L3 AND L8);
    L12 <= NOT (I6N AND L5 AND L8);
    L13 <= NOT (L7 AND L8);
    L14 <= NOT (L2 AND I5N AND I4N AND L8);
    L15 <= NOT (L3 AND I4N AND I5N AND L8);
    L16 <= NOT (L6 AND L8);
    L17 <= NOT (L4 AND L8);
    L18 <= NOT (L5 AND L8);
    DN <=  (L8) AFTER 1 ns;
    CN <=  (L17 AND L18 AND L16 AND L13) AFTER 1 ns;
    BN <=  (L14 AND L15 AND L16 AND L13) AFTER 1 ns;
    AN <=  (L10 AND L11 AND L12 AND L13 AND I9N) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74148\ IS PORT(
I0N : IN  std_logic;
I1N : IN  std_logic;
I2N : IN  std_logic;
I3N : IN  std_logic;
I4N : IN  std_logic;
I5N : IN  std_logic;
I6N : IN  std_logic;
I7N : IN  std_logic;
EIN  : IN  std_logic;
A0N  : OUT  std_logic;
A1N  : OUT  std_logic;
A2N  : OUT  std_logic;
GSN  : OUT  std_logic;
EON  : OUT  std_logic);
END \74148\;

architecture model OF \74148\ IS
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
	 SIGNAL FB1 : std_logic;

    BEGIN
    N1 <= NOT (I1N);
    N2 <= NOT (I2N);
    N3 <= NOT (I3N);
    N4 <= NOT (I4N);
    N5 <= NOT (I5N);
    N6 <= NOT (I6N);
    N7 <= NOT (I7N);
    L1 <= NOT (EIN);
    L2 <= NOT (N2);
    L3 <= NOT (N4);
    L4 <= NOT (N5);
    L5 <= NOT (N6);
    L6 <=  (N1 AND L2 AND L3 AND L5 AND L1);
    L7 <=  (N3 AND L3 AND L5 AND L1);
    L8 <=  (N5 AND L5 AND L1);
    L9 <=  (N7 AND L1);
    L10 <=  (N2 AND L3 AND L4 AND L1);
    L11 <=  (N3 AND L3 AND L4 AND L1);
    L12 <=  (N6 AND L1);
    L13 <=  (N7 AND L1);
    L14 <=  (N4 AND L1);
    L15 <=  (N5 AND L1);
    L16 <=  (N6 AND L1);
    L17 <=  (N7 AND L1);
    N8 <=  (L1);
    N9 <=  (L1);
    FB1 <= NOT (I0N AND I1N AND I2N AND I3N AND I4N AND I5N AND I6N AND I7N AND N8) AFTER 1 ns;
    EON <= FB1;
    GSN <= NOT (FB1 AND N9) AFTER 1 ns;
    A0N <= NOT (L6 OR L7 OR L8 OR L9) AFTER 1 ns;
    A1N <= NOT (L10 OR L11 OR L12 OR L13) AFTER 1 ns;
    A2N <= NOT (L14 OR L15 OR L16 OR L17) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74151\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
A  : IN  std_logic;
B  : IN  std_logic;
C  : IN  std_logic;
GN : IN  std_logic;
WN : OUT  std_logic;
Y  : OUT  std_logic);
END \74151\;

architecture model OF \74151\ IS
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
    N1 <= NOT (A);
    N2 <= NOT (B);
    N3 <= NOT (C);
    N4 <= NOT (GN);
    N5 <=  (GN);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);
    L4 <=  (D0 AND N1 AND N2 AND N3);
    L5 <=  (D1 AND L1 AND N2 AND N3);
    L6 <=  (D2 AND N1 AND L2 AND N3);
    L7 <=  (D3 AND L1 AND L2 AND N3);
    L8 <=  (D4 AND L3 AND N1 AND N2);
    L9 <=  (D5 AND L3 AND L1 AND N2);
    L10 <=  (D6 AND L3 AND N1 AND L2);
    L11 <=  (D7 AND L3 AND L1 AND L2);
    L12 <=  (L4 OR L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11);
    L13 <= NOT (L12);
    Y <=  (N4 AND L12) AFTER 1 ns;
    WN <=  (N5 OR L13) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74153\ IS PORT(
CA0 : IN  std_logic;
CA1 : IN  std_logic;
CA2 : IN  std_logic;
CA3 : IN  std_logic;
CB0 : IN  std_logic;
CB1 : IN  std_logic;
CB2 : IN  std_logic;
CB3 : IN  std_logic;
A   : IN  std_logic;
B   : IN  std_logic;
GNA : IN  std_logic;
GNB : IN  std_logic;
YA  : OUT  std_logic;
YB  : OUT  std_logic);
END \74153\;

architecture model OF \74153\ IS
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
    N1 <= NOT (GNA);
    N2 <= NOT (GNB);
    N3 <= NOT (B);
    N4 <= NOT (A);
    N5 <=  (B);
    N6 <=  (A);
    L3 <=  (N1 AND N3 AND N4 AND CA0);
    L4 <=  (N1 AND N3 AND N6 AND CA1);
    L5 <=  (N1 AND N5 AND N4 AND CA2);
    L6 <=  (N1 AND N5 AND N6 AND CA3);
    L7 <=  (CB0 AND N3 AND N4 AND N2);
    L8 <=  (CB1 AND N3 AND N6 AND N2);
    L9 <=  (CB2 AND N5 AND N4 AND N2);
    L10 <=  (CB3 AND N5 AND N6 AND N2);
    YA <=  (L3 OR L4 OR L5 OR L6) AFTER 1 ns;
    YB <=  (L7 OR L8 OR L9 OR L10) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74154\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
G1N  : IN  std_logic;
G2N  : IN  std_logic;
O0N  : OUT  std_logic;
O1N  : OUT  std_logic;
O2N  : OUT  std_logic;
O3N  : OUT  std_logic;
O4N  : OUT  std_logic;
O5N  : OUT  std_logic;
O6N  : OUT  std_logic;
O7N  : OUT  std_logic;
O8N  : OUT  std_logic;
O9N  : OUT  std_logic;
O10N : OUT  std_logic;
O11N : OUT  std_logic;
O12N : OUT  std_logic;
O13N : OUT  std_logic;
O14N : OUT  std_logic;
O15N : OUT  std_logic);
END \74154\;

architecture model OF \74154\ IS
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
    N1 <= NOT (A);
    N2 <= NOT (B);
    N3 <= NOT (C);
    N4 <= NOT (D);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);
    L4 <= NOT (N4);
    L5 <= NOT (G1N OR G2N);
    O0N <= NOT (L5 AND N1 AND N2 AND N3 AND N4) AFTER 1 ns;
    O1N <= NOT (L5 AND L1 AND N2 AND N3 AND N4) AFTER 1 ns;
    O2N <= NOT (L5 AND N1 AND L2 AND N3 AND N4) AFTER 1 ns;
    O3N <= NOT (L5 AND L1 AND L2 AND N3 AND N4) AFTER 1 ns;
    O4N <= NOT (L5 AND N1 AND N2 AND L3 AND N4) AFTER 1 ns;
    O5N <= NOT (L5 AND L1 AND N2 AND L3 AND N4) AFTER 1 ns;
    O6N <= NOT (L5 AND N1 AND L2 AND L3 AND N4) AFTER 1 ns;
    O7N <= NOT (L5 AND L1 AND L2 AND L3 AND N4) AFTER 1 ns;
    O8N <= NOT (L5 AND N1 AND N2 AND N3 AND L4) AFTER 1 ns;
    O9N <= NOT (L5 AND L1 AND N2 AND N3 AND L4) AFTER 1 ns;
    O10N <= NOT (L5 AND N1 AND L2 AND N3 AND L4) AFTER 1 ns;
    O11N <= NOT (L5 AND L1 AND L2 AND N3 AND L4) AFTER 1 ns;
    O12N <= NOT (L5 AND N1 AND N2 AND L3 AND L4) AFTER 1 ns;
    O13N <= NOT (L5 AND L1 AND N2 AND L3 AND L4) AFTER 1 ns;
    O14N <= NOT (L5 AND N1 AND L2 AND L3 AND L4) AFTER 1 ns;
    O15N <= NOT (L5 AND L1 AND L2 AND L3 AND L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74155\ IS PORT(
SELA : IN  std_logic;
SELB : IN  std_logic;
GAN  : IN  std_logic;
CA   : IN  std_logic;
GBN  : IN  std_logic;
CBN  : IN  std_logic;
YA0N : OUT  std_logic;
YA1N : OUT  std_logic;
YA2N : OUT  std_logic;
YA3N : OUT  std_logic;
YB0N : OUT  std_logic;
YB1N : OUT  std_logic;
YB2N : OUT  std_logic;
YB3N : OUT  std_logic);
END \74155\;

architecture model OF \74155\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    L1 <= NOT (SELB);
    L2 <= NOT (SELA);
    N1 <= NOT (CA);
    N2 <= NOT (L1);
    N3 <= NOT (L2);
    L3 <= NOT (GAN OR N1);
    L4 <= NOT (GBN OR CBN);
    YA0N <= NOT (L1 AND L2 AND L3) AFTER 1 ns;
    YA1N <= NOT (L1 AND N3 AND L3) AFTER 1 ns;
    YA2N <= NOT (N2 AND L2 AND L3) AFTER 1 ns;
    YA3N <= NOT (N2 AND N3 AND L3) AFTER 1 ns;
    YB0N <= NOT (L1 AND L2 AND L4) AFTER 1 ns;
    YB1N <= NOT (L1 AND N3 AND L4) AFTER 1 ns;
    YB2N <= NOT (N2 AND L2 AND L4) AFTER 1 ns;
    YB3N <= NOT (N2 AND N3 AND L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74156\ IS PORT(
SELA : IN  std_logic;
SELB : IN  std_logic;
GAN  : IN  std_logic;
CA   : IN  std_logic;
GBN  : IN  std_logic;
CBN  : IN  std_logic;
YA0N : OUT  std_logic;
YA1N : OUT  std_logic;
YA2N : OUT  std_logic;
YA3N : OUT  std_logic;
YB0N : OUT  std_logic;
YB1N : OUT  std_logic;
YB2N : OUT  std_logic;
YB3N : OUT  std_logic);
END \74156\;

architecture model OF \74156\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;

    BEGIN
    L1 <= NOT (SELB);
    L2 <= NOT (SELA);
    N1 <= NOT (CA);
    N2 <= NOT (L1);
    N3 <= NOT (L2);
    L3 <= NOT (GAN OR N1);
    L4 <= NOT (GBN OR CBN);
    YA0N <= NOT (L1 AND L2 AND L3) AFTER 1 ns;
    YA1N <= NOT (L1 AND N3 AND L3) AFTER 1 ns;
    YA2N <= NOT (N2 AND L2 AND L3) AFTER 1 ns;
    YA3N <= NOT (N2 AND N3 AND L3) AFTER 1 ns;
    YB0N <= NOT (L1 AND L2 AND L4) AFTER 1 ns;
    YB1N <= NOT (L1 AND N3 AND L4) AFTER 1 ns;
    YB2N <= NOT (N2 AND L2 AND L4) AFTER 1 ns;
    YB3N <= NOT (N2 AND N3 AND L4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74157\ IS PORT(
A1  : IN  std_logic;
B1  : IN  std_logic;
A2  : IN  std_logic;
B2  : IN  std_logic;
A3  : IN  std_logic;
B3  : IN  std_logic;
A4  : IN  std_logic;
B4  : IN  std_logic;
SEL : IN  std_logic;
GN  : IN  std_logic;
Y1  : OUT  std_logic;
Y2  : OUT  std_logic;
Y3  : OUT  std_logic;
Y4  : OUT  std_logic);
END \74157\;

architecture model OF \74157\ IS
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
    N1 <= NOT (SEL);
    N2 <= NOT (GN);
    L1 <= NOT (N1);
    L2 <=  (A1 AND N1 AND N2);
    L3 <=  (B1 AND L1 AND N2);
    L4 <=  (A2 AND N1 AND N2);
    L5 <=  (B2 AND L1 AND N2);
    L6 <=  (A3 AND N1 AND N2);
    L7 <=  (B3 AND L1 AND N2);
    L8 <=  (A4 AND N1 AND N2);
    L9 <=  (B4 AND L1 AND N2);
    Y1 <=  (L2 OR L3) AFTER 1 ns;
    Y2 <=  (L4 OR L5) AFTER 1 ns;
    Y3 <=  (L6 OR L7) AFTER 1 ns;
    Y4 <=  (L8 OR L9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74158\ IS PORT(
A1  : IN  std_logic;
B1  : IN  std_logic;
A2  : IN  std_logic;
B2  : IN  std_logic;
A3  : IN  std_logic;
B3  : IN  std_logic;
A4  : IN  std_logic;
B4  : IN  std_logic;
SEL : IN  std_logic;
GN  : IN  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic);
END \74158\;

architecture model OF \74158\ IS
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
    N1 <= NOT (SEL);
    N2 <= NOT (GN);
    L1 <= NOT (N1);
    L2 <=  (A1 AND N1 AND N2);
    L3 <=  (B1 AND L1 AND N2);
    L4 <=  (A2 AND N1 AND N2);
    L5 <=  (B2 AND L1 AND N2);
    L6 <=  (A3 AND N1 AND N2);
    L7 <=  (B3 AND L1 AND N2);
    L8 <=  (A4 AND N1 AND N2);
    L9 <=  (B4 AND L1 AND N2);
    Y1N <= NOT (L2 OR L3) AFTER 1 ns;
    Y2N <= NOT (L4 OR L5) AFTER 1 ns;
    Y3N <= NOT (L6 OR L7) AFTER 1 ns;
    Y4N <= NOT (L8 OR L9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74160\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
ENP  : IN  std_logic;
ENT  : IN  std_logic;
CLK  : IN  std_logic;
LDN  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
RCO  : OUT  std_logic);
END \74160\;

architecture model OF \74160\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N7 <= NOT (LDN);
    L1 <= NOT (N7);
    N1 <=  (ENT AND ENP);
    N2 <=  (N3 AND N6);
    RCO <=  (ENT AND N2) AFTER 1 ns;
    L2 <=  (N3 AND N4);
    L3 <=  (N3 AND N4 AND N5);
    L4 <=  (N3 AND N1);
    L5 <=  (L2 AND N1);
    L6 <=  (N3 AND N6);
    L7 <= NOT (L6 AND N1);
    L8 <=  (L3 AND N1);
    L9 <=  (N1 XOR N3);
    L10 <=  (L4 XOR N4);
    L11 <=  (L5 XOR N5);
    L12 <=  (L8 XOR N6);
    L13 <=  (A AND N7);
    L14 <=  (L1 AND L9);
    L15 <=  (B AND N7);
    L16 <=  (L1 AND L7 AND L10);
    L17 <=  (C AND N7);
    L18 <=  (L1 AND L11);
    L19 <=  (D AND N7);
    L20 <=  (L1 AND L7 AND L12);
    L21 <=  (L13 OR L14);
    L22 <=  (L15 OR L16);
    L23 <=  (L17 OR L18);
    L24 <=  (L19 OR L20);
    DQFFC_6 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L21 , clk=>CLK , cl=>CLRN);
    DQFFC_7 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L22 , clk=>CLK , cl=>CLRN);
    DQFFC_8 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L23 , clk=>CLK , cl=>CLRN);
    DQFFC_9 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L24 , clk=>CLK , cl=>CLRN);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N4) AFTER 1 ns;
    QC <=  (N5) AFTER 1 ns;
    QD <=  (N6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74161\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
ENP  : IN  std_logic;
ENT  : IN  std_logic;
CLK  : IN  std_logic;
LDN  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
RCO  : OUT  std_logic);
END \74161\;

architecture model OF \74161\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <=  (ENP AND LDN AND ENT);
    N2 <=  (N3 AND N4 AND N5 AND N6);
    RCO <=  (ENT AND N2) AFTER 1 ns;
    L1 <= NOT (LDN);
    L2 <=  (LDN AND N3);
    L3 <=  (L2 XOR N1);
    L4 <=  (L1 AND A);
    L5 <=  (L3 OR L4);
    L6 <=  (LDN AND N4);
    L7 <=  (N1 AND N3);
    L8 <=  (L6 XOR L7);
    L9 <=  (L1 AND B);
    L10 <=  (L8 OR L9);
    L11 <=  (LDN AND N5);
    L12 <=  (N1 AND N3 AND N4);
    L13 <=  (L11 XOR L12);
    L14 <=  (L1 AND C);
    L15 <=  (L13 OR L14);
    L16 <=  (LDN AND N6);
    L17 <=  (N1 AND N3 AND N4 AND N5);
    L18 <=  (L16 XOR L17);
    L19 <=  (L1 AND D);
    L20 <=  (L18 OR L19);
    DQFFC_14 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLRN);
    DQFFC_15 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L10 , clk=>CLK , cl=>CLRN);
    DQFFC_16 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>CLRN);
    DQFFC_17 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L20 , clk=>CLK , cl=>CLRN);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N4) AFTER 1 ns;
    QC <=  (N5) AFTER 1 ns;
    QD <=  (N6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74162\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
ENP  : IN  std_logic;
ENT  : IN  std_logic;
CLK  : IN  std_logic;
LDN  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
RCO  : OUT  std_logic);
END \74162\;

architecture model OF \74162\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (CLRN);
    L2 <= NOT (L1 OR LDN);
    L3 <= NOT (L1 OR L2);
    N1 <=  (ENT AND ENP);
    N2 <=  (N3 AND N6);
    RCO <=  (ENT AND N2) AFTER 1 ns;
    L4 <=  (N3 AND N4);
    L5 <=  (N3 AND N4 AND N5);
    L6 <=  (N3 AND N1);
    L7 <=  (L4 AND N1);
    L8 <=  (N3 AND N6);
    L9 <= NOT (L8 AND N1);
    L10 <=  (L5 AND N1);
    L11 <=  (N1 XOR N3);
    L12 <=  (L6 XOR N4);
    L13 <=  (L7 XOR N5);
    L14 <=  (L10 XOR N6);
    L15 <=  (A AND L2);
    L16 <=  (L3 AND L11);
    L17 <=  (B AND L2);
    L18 <=  (L3 AND L9 AND L12);
    L19 <=  (C AND L2);
    L20 <=  (L3 AND L13);
    L21 <=  (D AND L2);
    L22 <=  (L3 AND L9 AND L14);
    L23 <=  (L15 OR L16);
    L24 <=  (L17 OR L18);
    L25 <=  (L19 OR L20);
    L26 <=  (L21 OR L22);
    DQFF_15 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L23 , clk=>CLK);
    DQFF_16 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L24 , clk=>CLK);
    DQFF_17 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L25 , clk=>CLK);
    DQFF_18 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>L26 , clk=>CLK);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N4) AFTER 1 ns;
    QC <=  (N5) AFTER 1 ns;
    QD <=  (N6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74163\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
ENP  : IN  std_logic;
ENT  : IN  std_logic;
CLK  : IN  std_logic;
LDN  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
RCO  : OUT  std_logic);
END \74163\;

architecture model OF \74163\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (ENP AND LDN AND ENT);
    N2 <= NOT (LDN);
    N3 <= NOT (CLRN);
    L1 <= NOT (N1 OR N3);
    L2 <= NOT (LDN OR N3);
    L3 <= NOT (N2 OR N3);
    N4 <=  (N5 AND N6 AND N7 AND N8);
    RCO <=  (ENT AND N4) AFTER 1 ns;
    L4 <=  (L3 AND N5);
    L5 <=  (L4 XOR L1);
    L6 <=  (L2 AND A);
    L7 <=  (L5 OR L6);
    L8 <=  (L3 AND N6);
    L9 <=  (L1 AND N5);
    L10 <=  (L8 XOR L9);
    L11 <=  (L2 AND B);
    L12 <=  (L10 OR L11);
    L13 <=  (L3 AND N7);
    L14 <=  (L1 AND N5 AND N6);
    L15 <=  (L13 XOR L14);
    L16 <=  (L2 AND C);
    L17 <=  (L15 OR L16);
    L18 <=  (L3 AND N8);
    L19 <=  (L1 AND N5 AND N6 AND N7);
    L20 <=  (L18 XOR L19);
    L21 <=  (L2 AND D);
    L22 <=  (L20 OR L21);
    DQFF_23 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L7 , clk=>CLK);
    DQFF_24 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>L12 , clk=>CLK);
    DQFF_25 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>L17 , clk=>CLK);
    DQFF_26 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>L22 , clk=>CLK);
    QA <=  (N5) AFTER 1 ns;
    QB <=  (N6) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74164\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
CLK  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
QE   : OUT  std_logic;
QF   : OUT  std_logic;
QG   : OUT  std_logic;
QH   : OUT  std_logic);
END \74164\;

architecture model OF \74164\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <=  (A AND B);
    DQFFC_0 :  ORCAD_DQFFC 
      PORT MAP  (q=>N1 , d=>L1 , clk=>CLK , cl=>CLRN);
    DQFFC_1 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>N1 , clk=>CLK , cl=>CLRN);
    DQFFC_2 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>N2 , clk=>CLK , cl=>CLRN);
    DQFFC_3 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>N3 , clk=>CLK , cl=>CLRN);
    DQFFC_4 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>N4 , clk=>CLK , cl=>CLRN);
    DQFFC_5 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>N5 , clk=>CLK , cl=>CLRN);
    DQFFC_6 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>N6 , clk=>CLK , cl=>CLRN);
    DQFFC_7 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>N7 , clk=>CLK , cl=>CLRN);
    QA <=  (N1) AFTER 1 ns;
    QB <=  (N2) AFTER 1 ns;
    QC <=  (N3) AFTER 1 ns;
    QD <=  (N4) AFTER 1 ns;
    QE <=  (N5) AFTER 1 ns;
    QF <=  (N6) AFTER 1 ns;
    QG <=  (N7) AFTER 1 ns;
    QH <=  (N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74165\ IS PORT(
SER : IN  std_logic;
A     : IN  std_logic;
B     : IN  std_logic;
C     : IN  std_logic;
D     : IN  std_logic;
E     : IN  std_logic;
F     : IN  std_logic;
G     : IN  std_logic;
H     : IN  std_logic;
CLK   : IN  std_logic;
CLKIH : IN  std_logic;
STLD  : IN  std_logic;
QH    : OUT  std_logic;
QHN   : OUT  std_logic);
END \74165\;

architecture model OF \74165\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dffpc
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    N1 <= NOT (STLD);
    N2 <=  (SER);
    L1 <=  (CLK AND STLD);
    N3 <=  (STLD AND CLKIH);
    N4 <=  (L1 OR N3);
    L2 <= NOT (N1 AND A);
    L3 <= NOT (N1 AND B);
    L4 <= NOT (N1 AND C);
    L5 <= NOT (N1 AND D);
    L6 <= NOT (N1 AND E);
    L7 <= NOT (N1 AND F);
    L8 <= NOT (N1 AND G);
    L9 <= NOT (N1 AND H);
    L10 <= NOT (N1 AND L2);
    L11 <= NOT (N1 AND L3);
    L12 <= NOT (N1 AND L4);
    L13 <= NOT (N1 AND L5);
    L14 <= NOT (N1 AND L6);
    L15 <= NOT (N1 AND L7);
    L16 <= NOT (N1 AND L8);
    L17 <= NOT (N1 AND L9);
    DQFFPC_9 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N5 , d=>N2 , clk=>N4 , pr=>L2 , cl=>L10);
    DQFFPC_10 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N6 , d=>N5 , clk=>N4 , pr=>L3 , cl=>L11);
    DQFFPC_11 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N7 , d=>N6 , clk=>N4 , pr=>L4 , cl=>L12);
    DQFFPC_12 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N8 , d=>N7 , clk=>N4 , pr=>L5 , cl=>L13);
    DQFFPC_13 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N9 , d=>N8 , clk=>N4 , pr=>L6 , cl=>L14);
    DQFFPC_14 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N10 , d=>N9 , clk=>N4 , pr=>L7 , cl=>L15);
    DQFFPC_15 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N11 , d=>N10 , clk=>N4 , pr=>L8 , cl=>L16);
    DFFPC_2 : ORCAD_DFFPC 
      PORT MAP  (q=>N12 , qNot=>N13 , d=>N11 , clk=>N4 , pr=>L9 , cl=>L17);
    QH  <=  (N12) AFTER 1 ns;
    QHN <=  (N13) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74166\ IS PORT(
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
CLKIH : IN  std_logic;
STLD : IN  std_logic;
CLRN : IN  std_logic;
QH : OUT  std_logic);
END \74166\;

architecture model OF \74166\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <=  (STLD);
    N2 <= NOT (STLD);
    N3 <=  (CLKIH);
    N4 <=  (CLK OR N3);
    L1 <=  (SER AND N1);
    L2 <=  (N2 AND A);
    L3 <=  (L1 OR L2);
    L4 <=  (N5 AND N1);
    L5 <=  (N2 AND B);
    L6 <=  (L4 OR L5);
    L7 <=  (N6 AND N1);
    L8 <=  (N2 AND C);
    L9 <=  (L7 OR L8);
    L10 <=  (N7 AND N1);
    L11 <=  (N2 AND D);
    L12 <=  (L10 OR L11);
    L13 <=  (N8 AND N1);
    L14 <=  (N2 AND E);
    L15 <=  (L13 OR L14);
    L16 <=  (N9 AND N1);
    L17 <=  (N2 AND F);
    L18 <=  (L16 OR L17);
    L19 <=  (N10 AND N1);
    L20 <=  (N2 AND G);
    L21 <=  (L19 OR L20);
    L22 <=  (N11 AND N1);
    L23 <=  (N2 AND H);
    L24 <=  (L22 OR L23);
    DQFFC_8 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L3 , clk=>N4 , cl=>CLRN);
    DQFFC_9 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L6 , clk=>N4 , cl=>CLRN);
    DQFFC_10 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L9 , clk=>N4 , cl=>CLRN);
    DQFFC_11 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L12 , clk=>N4 , cl=>CLRN);
    DQFFC_12 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L15 , clk=>N4 , cl=>CLRN);
    DQFFC_13 :  ORCAD_DQFFC 
      PORT MAP  (q=>N10 , d=>L18 , clk=>N4 , cl=>CLRN);
    DQFFC_14 :  ORCAD_DQFFC 
      PORT MAP  (q=>N11 , d=>L21 , clk=>N4 , cl=>CLRN);
    DQFFC_15 :  ORCAD_DQFFC 
      PORT MAP  (q=>QH , d=>L24 , clk=>N4 , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74167\ IS PORT(
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
SET9 : IN  std_logic;
ZN : OUT  std_logic;
Y : OUT  std_logic;
ENO : OUT  std_logic;
CLK : IN  std_logic;
STRBN : IN  std_logic;
ENN : IN  std_logic;
UNICAS : IN  std_logic;
CLR : IN  std_logic);
END \74167\;

architecture model OF \74167\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (ENN);
    L2 <= NOT (N11);
    L3 <= NOT (N12);
    L4 <= NOT (N13);
    L5 <= NOT (N14);
    L6 <=  (B3 AND N9 AND L4);
    L7 <=  (B2 AND N9 AND N11);
    L8 <=  (B1 AND N9 AND L2 AND N12);
    L9 <=  (B0 AND N9 AND N13 AND L5);
    L10 <=  (B3 AND N10 AND L4);
    L11 <=  (B2 AND N10 AND N11);
    L12 <=  (B1 AND N10 AND L2 AND N12);
    L13 <=  (B0 AND N10 AND N13 AND L5);
    L14 <= NOT (CLK);
    L15 <= NOT (SET9);
    L16 <= NOT (CLR);
    L17 <=  (L1 AND N12 AND N11);
    L18 <=  (L1 AND N13);
    L19 <=  (L16 AND L15);
    L20 <=  (L17 OR L18);
    N1 <= NOT (L1 AND L4 AND L14);
    N2 <= NOT (L1 AND N11 AND L14);
    N3 <= NOT (L20 AND L14);
    N4 <= NOT (L1 AND N13 AND L14);
    N5 <=  (CLK);
    N6 <=  (CLK);
    N7 <=  (STRBN);
    N8 <=  (STRBN);
    N9 <= NOT (N5 OR N7);
    N10 <= NOT (N6 OR N8);
    DQFFC_16 :  ORCAD_DQFFC 
      PORT MAP  (q=>N11 , d=>L2 , clk=>N1 , cl=>L19);
    DQFFC_17 :  ORCAD_DQFFC 
      PORT MAP  (q=>N12 , d=>L3 , clk=>N2 , cl=>L19);
    DQFFC_18 :  ORCAD_DQFFC 
      PORT MAP  (q=>N13 , d=>L4 , clk=>N3 , cl=>L16);
    DQFFC_19 :  ORCAD_DQFFC 
      PORT MAP  (q=>N14 , d=>L5 , clk=>N4 , cl=>L16);
    ZN <= NOT (L6 OR L7 OR L8 OR L9) AFTER 1 ns;
    N15 <= NOT (L10 OR L11 OR L12 OR L13);
    Y <= NOT (UNICAS AND N15) AFTER 1 ns;
    ENO <= NOT (L1 AND N13 AND N14) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74168\ IS PORT(
D0   : IN  std_logic;
D1   : IN  std_logic;
D2   : IN  std_logic;
D3   : IN  std_logic;
CLK  : IN  std_logic;
LDN  : IN  std_logic;
UDN  : IN  std_logic;
ENTN : IN  std_logic;
ENPN : IN  std_logic;
Q0   : OUT  std_logic;
Q1   : OUT  std_logic;
Q2   : OUT  std_logic;
Q3   : OUT  std_logic;
TCN  : OUT  std_logic);
END \74168\;

architecture model OF \74168\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (LDN);
    L2 <= NOT (UDN);
    L3 <= NOT (N1);
    L4 <=  (N2 OR N1);
    L5 <=  (N3 OR N2 OR N1);
    L6 <= NOT (ENPN OR ENTN);
    L7 <=  (L2 AND N1);
    L8 <=  (UDN AND L3);
    L9 <= NOT (L7 OR L8);
    L10 <=  (L2 AND L4);
    L43 <= NOT (N2);
    L11 <=  (UDN AND L43);
    L12 <=  (UDN AND L3);
    L13 <= NOT (L10 OR L11 OR L12);
    L44 <= NOT (N3);
    L14 <=  (UDN OR N3 OR N2 OR N1 OR N4);
    L45 <= NOT (N4);
    L15 <= NOT (L45 OR L2 OR L3);
    L16 <=  (L2 AND L5);
    L17 <=  (UDN AND L44);
    L18 <=  (UDN AND L43);
    L19 <=  (UDN AND L3);
    L20 <= NOT (L16 OR L17 OR L18 OR L19);
    L21 <=  (L9 AND L6);
    L22 <=  (L13 AND L6);
    L23 <= NOT (L15 AND L6);
    L24 <=  (L20 AND L6);
    L25 <= NOT (L6 XOR L3);
    L26 <= NOT (L21 XOR L43);
    L27 <= NOT (L22 XOR L44);
    L28 <= NOT (L24 XOR L45);
    L29 <=  (D0 AND L1);
    L30 <=  (LDN AND L25);
    L31 <=  (L29 OR L30);
    L32 <=  (D1 AND L1);
    L33 <=  (LDN AND L26 AND L14 AND L23);
    L34 <=  (L32 OR L33);
    L35 <=  (D2 AND L1);
    L36 <=  (LDN AND L14 AND L27);
    L37 <=  (L35 OR L36);
    L38 <=  (L1 AND D3);
    L39 <=  (LDN AND L23 AND L28);
    L40 <=  (L38 OR L39);
    L41 <= NOT (L45 OR N5 OR L3 OR ENTN);
    L46 <= NOT (ENTN);
    L42 <=  (L46 AND L45 AND N5 AND L44 AND L43 AND L3);
    N5 <=  (L2);
    DQFF_31 :  ORCAD_DQFF 
      PORT MAP  (q=>N1 , d=>L31 , clk=>CLK);
    DQFF_32 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>L34 , clk=>CLK);
    DQFF_33 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L37 , clk=>CLK);
    DQFF_34 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L40 , clk=>CLK);
    Q0 <=  (N1) AFTER 1 ns;
    Q1 <=  (N2) AFTER 1 ns;
    Q2 <=  (N3) AFTER 1 ns;
    Q3 <=  (N4) AFTER 1 ns;
    TCN <= NOT (L41 OR L42) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74169\ IS PORT(
D0   : IN  std_logic;
D1   : IN  std_logic;
D2   : IN  std_logic;
D3   : IN  std_logic;
CLK  : IN  std_logic;
LDN  : IN  std_logic;
UDN  : IN  std_logic;
ENTN : IN  std_logic;
ENPN : IN  std_logic;
Q0   : OUT  std_logic;
Q1   : OUT  std_logic;
Q2   : OUT  std_logic;
Q3   : OUT  std_logic;
TCN  : OUT  std_logic);
END \74169\;

architecture model OF \74169\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (LDN);
    N2 <=  (ENTN OR ENPN);
    N3 <= NOT (ENTN);
    N4 <= NOT (UDN);
    N5 <=  (UDN);
    L1 <=  (UDN AND N7);
    L2 <= NOT (N7 OR UDN);
    L3 <= NOT (L1 OR L2);
    L4 <=  (UDN AND N8);
    L5 <= NOT (N8 OR UDN);
    L6 <= NOT (L4 OR L5);
    L7 <=  (UDN AND N9);
    L8 <= NOT (N9 OR UDN);
    L9 <= NOT (L7 OR L8);
    L10 <=  (UDN AND N10);
    L11 <= NOT (N10 OR UDN);
    L12 <= NOT (L10 OR L11);
    N6 <=  (L3 AND L6 AND L9 AND L12);
    L13 <=  (N3 AND N4 AND N6);
    L14 <=  (N3 AND N5 AND N6);
    TCN <= NOT (L13 OR L14) AFTER 1 ns;
    L15 <= NOT (N1 OR N2);
    L16 <= NOT (N7 OR N1);
    L17 <=  (L16 XOR L15);
    L18 <=  (N1 AND D0);
    L19 <= NOT (L17 OR L18);
    L20 <= NOT (N8 OR N1);
    L21 <=  (L15 AND L3);
    L22 <=  (L20 XOR L21);
    L23 <=  (N1 AND D1);
    L24 <= NOT (L22 OR L23);
    L25 <= NOT (N9 OR N1);
    L26 <=  (L15 AND L3 AND L6);
    L27 <=  (L25 XOR L26);
    L28 <=  (N1 AND D2);
    L29 <= NOT (L27 OR L28);
    L30 <= NOT (N10 OR N1);
    L31 <=  (L15 AND L3 AND L6 AND L9);
    L32 <=  (L30 XOR L31);
    L33 <=  (N1 AND D3);
    L34 <= NOT (L32 OR L33);
    DQFF_35 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>L19 , clk=>CLK);
    DQFF_36 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>L24 , clk=>CLK);
    DQFF_37 :  ORCAD_DQFF 
      PORT MAP  (q=>N9 , d=>L29 , clk=>CLK);
    DQFF_38 :  ORCAD_DQFF 
      PORT MAP  (q=>N10 , d=>L34 , clk=>CLK);
    Q0 <= NOT (N7) AFTER 1 ns;
    Q1 <= NOT (N8) AFTER 1 ns;
    Q2 <= NOT (N9) AFTER 1 ns;
    Q3 <= NOT (N10) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74171\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
CLK : IN  std_logic;
CLRN : IN  std_logic;
Q1 : OUT  std_logic;
QN1 : OUT  std_logic;
Q2 : OUT  std_logic;
QN2 : OUT  std_logic;
Q3 : OUT  std_logic;
QN3 : OUT  std_logic;
Q4 : OUT  std_logic;
QN4 : OUT  std_logic);
END \74171\;

architecture model OF \74171\ IS
	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;


    BEGIN
    DFFC_6 : ORCAD_DFFC 
      PORT MAP (q=>Q1 , qNot=>QN1 , d=>D1 , clk=>CLK , cl=>CLRN);
    DFFC_7 : ORCAD_DFFC 
      PORT MAP (q=>Q2 , qNot=>QN2 , d=>D2 , clk=>CLK , cl=>CLRN);
    DFFC_8 : ORCAD_DFFC 
      PORT MAP (q=>Q3 , qNot=>QN3 , d=>D3 , clk=>CLK , cl=>CLRN);
    DFFC_9 : ORCAD_DFFC 
      PORT MAP (q=>Q4 , qNot=>QN4 , d=>D4 , clk=>CLK , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74172\ IS PORT(
DA_1  : IN  std_logic;
DA_2  : IN  std_logic;
DB_1  : IN  std_logic;
DB_2  : IN  std_logic;
W0_1  : IN  std_logic;
W1_1  : IN  std_logic;
W2_1  : IN  std_logic;
R0_1  : IN  std_logic;
R1_1  : IN  std_logic;
R2_1  : IN  std_logic;
GWN_1 : IN  std_logic;
GRN_1 : IN  std_logic;
WR0_2 : IN  std_logic;
WR1_2 : IN  std_logic;
WR2_2 : IN  std_logic;
GWN_2 : IN  std_logic;
GRN_2 : IN  std_logic;
CLK   : IN  std_logic;
QA_1  : OUT  std_logic;
QA_2  : OUT  std_logic;
QB_1  : OUT  std_logic;
QB_2  : OUT  std_logic);
END \74172\;

architecture model OF \74172\ IS
	 SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
        
    BEGIN
    PROCESS(CLK, GRN_1, GRN_2, R0_1, R1_1, R2_1, WR0_2, WR1_2, WR2_2)
    VARIABLE WA     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WB     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WC     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WD     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WE     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WF     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WG     : std_logic_vector(1 DOWNTO 0);
    VARIABLE WH     : std_logic_vector(1 DOWNTO 0);
    VARIABLE ADR1W  : std_logic_vector(2 DOWNTO 0);
    VARIABLE ADR1R  : std_logic_vector(2 DOWNTO 0);
    VARIABLE ADR2RW : std_logic_vector(2 DOWNTO 0);

    BEGIN
    ADR1W(0) := W0_1;
    ADR1W(1) := W1_1;
    ADR1W(2) := W2_1;

    ADR1R(0) := R0_1;
    ADR1R(1) := R1_1;
    ADR1R(2) := R2_1;

    ADR2RW(0) := WR0_2;
    ADR2RW(1) := WR1_2;
    ADR2RW(2) := WR2_2;

    if(GWN_1 = '0') AND (GWN_2 = '0') AND (ADR1W = ADR2RW) AND (CLK = '1') AND CLK'EVENT THEN
			L1    <= DA_1 AND DA_2;
         L2    <= DB_1 AND DB_2;

         if   (ADR1W = "000") THEN 
              WA(0) := L1; 
              WA(1) := L2;
         ELSif(ADR1W = "001") THEN
              WB(0) := L1; 
              WB(1) := L2;
         ELSif(ADR1W = "010") THEN
              WC(0) := L1; 
              WC(1) := L2;
         ELSif(ADR1W = "011") THEN
              WD(0) := L1; 
              WD(1) := L2;
         ELSif(ADR1W = "100") THEN
              WE(0) := L1; 
              WE(1) := L2;
         ELSif(ADR1W = "101") THEN
              WF(0) := L1; 
              WF(1) := L2;
         ELSif(ADR1W = "110") THEN
              WG(0) := L1; 
              WG(1) := L2;
         ELSif(ADR1W = "111") THEN
              WG(0) := L1; 
              WG(1) := L2;
         END if;
    ELSE
         if((GWN_1 = '0') OR (GWN_2 = '0')) AND (CLK = '1') AND CLK'EVENT THEN
              if   (ADR1W = "000") THEN 
                   WA(0) := DA_1; 
                   WA(1) := DB_1;
              ELSif(ADR1W = "001") THEN
                   WB(0) := DA_1; 
                   WB(1) := DB_1;
              ELSif(ADR1W = "010") THEN
                   WC(0) := DA_1; 
                   WC(1) := DB_1;
              ELSif(ADR1W = "011") THEN
                   WD(0) := DA_1; 
                   WD(1) := DB_1;
              ELSif(ADR1W = "100") THEN
                   WE(0) := DA_1; 
                   WE(1) := DB_1;
              ELSif(ADR1W = "101") THEN
                   WF(0) := DA_1; 
                   WF(1) := DB_1;
              ELSif(ADR1W = "110") THEN
                   WG(0) := DA_1; 
                   WG(1) := DB_1;
              ELSif(ADR1W = "111") THEN
                   WG(0) := DA_1; 
                   WG(1) := DB_1;
              END if;

              if   (ADR2RW = "000") THEN 
                   WA(0) := DA_2; 
                   WA(1) := DB_2;
              ELSif(ADR2RW = "001") THEN
                   WB(0) := DA_2; 
                   WB(1) := DB_2;
              ELSif(ADR2RW = "010") THEN
                   WC(0) := DA_2; 
                   WC(1) := DB_2;
              ELSif(ADR2RW = "011") THEN
                   WD(0) := DA_2; 
                   WD(1) := DB_2;
              ELSif(ADR2RW = "100") THEN
                   WE(0) := DA_2; 
                   WE(1) := DB_2;
              ELSif(ADR2RW = "101") THEN
                   WF(0) := DA_2; 
                   WF(1) := DB_2;
              ELSif(ADR2RW = "110") THEN
                   WG(0) := DA_2; 
                   WG(1) := DB_2;
              ELSif(ADR2RW = "111") THEN
                   WG(0) := DA_2; 
                   WG(1) := DB_2;
              END if;
         END if;
    END if;

    if(GRN_1 = '1') THEN
         QA_1 <= 'Z' AFTER 1 ns;
         QB_1 <= 'Z' AFTER 1 ns;
    ELSif(GRN_1 = '0') THEN
         if   (ADR1R = "000") THEN 
              QA_1 <= WA(0); 
              QB_1 <= WA(1);
         ELSif(ADR1R = "001") THEN
              QA_1 <= WB(0); 
              QB_1 <= WB(1);
         ELSif(ADR1R = "010") THEN
              QA_1 <= WC(0); 
              QB_1 <= WC(1);
         ELSif(ADR1R = "011") THEN
              QA_1 <= WD(0); 
              QB_1 <= WD(1);
         ELSif(ADR1R = "100") THEN
              QA_1 <= WE(0); 
              QB_1 <= WE(1);
         ELSif(ADR1R = "101") THEN
              QA_1 <= WF(0); 
              QB_1 <= WF(1);
         ELSif(ADR1R = "110") THEN
              QA_1 <= WG(0); 
              QB_1 <= WG(1);
         ELSif(ADR1R = "111") THEN
              QA_1 <= WG(0); 
              QB_1 <= WG(1);
         END if;
    END if;

    if(GRN_2 = '1') THEN
         QA_2 <= 'Z' AFTER 1 ns;
         QB_2 <= 'Z' AFTER 1 ns;
    ELSif(GRN_2 = '0') THEN
         if   (ADR2RW = "000") THEN 
              QA_2 <= WA(0); 
              QB_2 <= WA(1);
         ELSif(ADR2RW = "001") THEN
              QA_2 <= WB(0); 
              QB_2 <= WB(1);
         ELSif(ADR2RW = "010") THEN
              QA_2 <= WC(0); 
              QB_2 <= WC(1);
         ELSif(ADR2RW = "011") THEN
              QA_2 <= WD(0); 
              QB_2 <= WD(1);
         ELSif(ADR2RW = "100") THEN
              QA_2 <= WE(0); 
              QB_2 <= WE(1);
         ELSif(ADR2RW = "101") THEN
              QA_2 <= WF(0); 
              QB_2 <= WF(1);
         ELSif(ADR2RW = "110") THEN
              QA_2 <= WG(0); 
              QB_2 <= WG(1);
         ELSif(ADR2RW = "111") THEN
              QA_2 <= WG(0); 
              QB_2 <= WG(1);
         END if;
    END if;
    END PROCESS;

END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74173\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
CLK : IN  std_logic;
MN : IN  std_logic;
NN : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
CLR : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic);
END \74173\;

architecture model OF \74173\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (G1N OR G2N);
    L1 <= NOT (MN OR NN);
    L2 <= NOT (CLR);
    L3 <= NOT (N1);
    L4 <=  (N2 AND L3);
    L5 <=  (D1 AND N1);
    L6 <=  (L4 OR L5);
    L7 <=  (N3 AND L3);
    L8 <=  (D2 AND N1);
    L9 <=  (L7 OR L8);
    L10 <=  (N4 AND L3);
    L11 <=  (D3 AND N1);
    L12 <=  (L10 OR L11);
    L13 <=  (N5 AND L3);
    L14 <=  (D4 AND N1);
    L15 <=  (L13 OR L14);
    DQFFC_20 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>L6 , clk=>CLK , cl=>L2);
    DQFFC_21 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L9 , clk=>CLK , cl=>L2);
    DQFFC_22 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L12 , clk=>CLK , cl=>L2);
    DQFFC_23 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L15 , clk=>CLK , cl=>L2);
    N6 <=  (N2);
    N7 <=  (N3);
    N8 <=  (N4);
    N9 <=  (N5);
    TSB_8 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N6 , en=>L1);
    TSB_9 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N7 , en=>L1);
    TSB_10 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N8 , en=>L1);
    TSB_11 :  ORCAD_TSB 
      PORT MAP  (O=>Q4 , i1=>N9 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74174\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
CLK : IN  std_logic;
CLRN : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic);
END \74174\;

architecture model OF \74174\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

    BEGIN
    DQFFC_24 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLRN);
    DQFFC_25 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLRN);
    DQFFC_26 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLRN);
    DQFFC_27 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLRN);
    DQFFC_28 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLRN);
    DQFFC_29 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74175\ IS PORT(
D1   : IN  std_logic;
D2   : IN  std_logic;
D3   : IN  std_logic;
D4   : IN  std_logic;
CLK  : IN  std_logic;
CLRN : IN  std_logic;
Q1   : OUT  std_logic;
QN1  : OUT  std_logic;
Q2   : OUT  std_logic;
QN2  : OUT  std_logic;
Q3   : OUT  std_logic;
QN3  : OUT  std_logic;
Q4   : OUT  std_logic;
QN4  : OUT  std_logic);
END \74175\;

architecture model OF \74175\ IS
	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;


    BEGIN
    DFFC_8 : ORCAD_DFFC 
      PORT MAP (q=>Q1 , qNot=>QN1 , d=>D1 , clk=>CLK , cl=>CLRN);
    DFFC_9 : ORCAD_DFFC 							   
      PORT MAP (q=>Q2 , qNot=>QN2 , d=>D2 , clk=>CLK , cl=>CLRN);
    DFFC_10 : ORCAD_DFFC 
      PORT MAP (q=>Q3 , qNot=>QN3 , d=>D3 , clk=>CLK , cl=>CLRN);
    DFFC_11 : ORCAD_DFFC 
      PORT MAP (q=>Q4 , qNot=>QN4 , d=>D4 , clk=>CLK , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74176\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LDN  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic);
END \74176\;

architecture model OF \74176\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (LDN AND CLRN);
    L2 <= NOT (A AND L1 AND CLRN);
    L3 <= NOT (L2 AND L1);
    L4 <= NOT (B AND L1 AND CLRN);
    L5 <= NOT (L4 AND L1);
    L6 <= NOT (C AND L1 AND CLRN);
    L7 <= NOT (L6 AND L1);
    L8 <= NOT (D AND L1 AND CLRN);
    L9 <= NOT (L8 AND L1);
    L10 <=  (N5 AND N7);
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);
    JKFFPC_9 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3);
    JKFFPC_10 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>N10 , clk=>N2 , pr=>L4 , cl=>L5);
    JKFFPC_11 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7);
    JKFFPC_12 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L10 , k=>N9 , clk=>N2 , pr=>L8 , cl=>L9);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74177\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LDN  : IN  std_logic;
CLRN : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic);
END \74177\;

architecture model OF \74177\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (LDN AND CLRN);
    L2 <= NOT (A AND L1 AND CLRN);
    L3 <= NOT (L2 AND L1);
    L4 <= NOT (B AND L1 AND CLRN);
    L5 <= NOT (L4 AND L1);
    L6 <= NOT (C AND L1 AND CLRN);
    L7 <= NOT (L6 AND L1);
    L8 <= NOT (D AND L1 AND CLRN);
    L9 <= NOT (L8 AND L1);
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);
    JKFFPC_13 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3);
    JKFFPC_14 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>ONE , k=>ONE , clk=>N2 , pr=>L4 , cl=>L5);
    JKFFPC_15 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7);
    JKFFPC_16 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , pr=>L8 , cl=>L9);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74178\ IS PORT(
SER : IN  std_logic;
A   : IN  std_logic;
B   : IN  std_logic;
C   : IN  std_logic;
D   : IN  std_logic;
CLK : IN  std_logic;
ST  : IN  std_logic;
LD  : IN  std_logic;
QA  : OUT  std_logic;
QB  : OUT  std_logic;
QC  : OUT  std_logic;
QD  : OUT  std_logic);
END \74178\;

architecture model OF \74178\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (LD);
    L2 <= NOT (ST);
    L3 <=  (SER AND ST);
    L4 <=  (L2 AND A AND LD);
    L5 <=  (L2 AND L1 AND N2);
    L6 <=  (L3 OR L4 OR L5);
    L7 <=  (N2 AND ST);
    L8 <=  (L2 AND B AND LD);
    L9 <=  (L2 AND L1 AND N3);
    L10 <=  (L7 OR L8 OR L9);
    L11 <=  (N3 AND ST);
    L12 <=  (L2 AND C AND LD);
    L13 <=  (L2 AND L1 AND N4);
    L14 <=  (L11 OR L12 OR L13);
    L15 <=  (N4 AND ST);
    L16 <=  (L2 AND D AND LD);
    L17 <=  (L2 AND L1 AND N5);
    L18 <=  (L15 OR L16 OR L17);
    N1 <= NOT (CLK);
    DQFF_22 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>L6 , clk=>N1);
    DQFF_23 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L10 , clk=>N1);
    DQFF_24 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1);
    DQFF_25 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L18 , clk=>N1);
    QA <=  (N2) AFTER 1 ns;
    QB <=  (N3) AFTER 1 ns;
    QC <=  (N4) AFTER 1 ns;
    QD <=  (N5) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74179\ IS PORT(
SER : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK : IN  std_logic;
ST : IN  std_logic;
LD : IN  std_logic;
CLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QDN : OUT  std_logic);
END \74179\;

architecture model OF \74179\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (LD);
    L2 <= NOT (ST);
    L3 <=  (SER AND ST);
    L4 <=  (L2 AND A AND LD);
    L5 <=  (L2 AND L1 AND N2);
    L6 <=  (L3 OR L4 OR L5);
    L7 <=  (N2 AND ST);
    L8 <=  (L2 AND B AND LD);
    L9 <=  (L2 AND L1 AND N3);
    L10 <=  (L7 OR L8 OR L9);
    L11 <=  (N3 AND ST);
    L12 <=  (L2 AND C AND LD);
    L13 <=  (L2 AND L1 AND N4);
    L14 <=  (L11 OR L12 OR L13);
    L15 <=  (N4 AND ST);
    L16 <=  (L2 AND D AND LD);
    L17 <=  (L2 AND L1 AND N5);
    L18 <=  (L15 OR L16 OR L17);
    N1 <= NOT (CLK);
    DQFFC_30 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>L6 , clk=>N1 , cl=>CLRN);
    DQFFC_31 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L10 , clk=>N1 , cl=>CLRN);
    DQFFC_32 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L14 , clk=>N1 , cl=>CLRN);
    DQFFC_33 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L18 , clk=>N1 , cl=>CLRN);
    QA  <=  (N2) AFTER 1 ns;
    QB  <=  (N3) AFTER 1 ns;
    QC  <=  (N4) AFTER 1 ns;
    QD  <=  (N5) AFTER 1 ns;
    QDN <= NOT (N5) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74180\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
EVNI : IN  std_logic;
ODDI : IN  std_logic;
EVNS : OUT  std_logic;
ODDS : OUT  std_logic);
END \74180\;

architecture model OF \74180\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL L5 : std_logic;
    SIGNAL L6 : std_logic;

    BEGIN
    L1 <= NOT (A XOR B XOR C XOR D XOR E XOR F XOR G XOR H);
    L2 <= NOT (L1);
    L3 <=  (L1 AND ODDI);
    L4 <=  (L2 AND EVNI);
    L5 <=  (EVNI AND L1);
    L6 <=  (L2 AND ODDI);
    EVNS <= NOT (L3 OR L4) AFTER 1 ns;
    ODDS <= NOT (L5 OR L6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74181\ IS PORT(
A0N : IN  std_logic;
A1N : IN  std_logic;
A2N : IN  std_logic;
A3N : IN  std_logic;
B0N : IN  std_logic;
B1N : IN  std_logic;
B2N : IN  std_logic;
B3N : IN  std_logic;
CN : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
S3 : IN  std_logic;
M : IN  std_logic;
F0N : OUT  std_logic;
F1N : OUT  std_logic;
F2N : OUT  std_logic;
F3N : OUT  std_logic;
AEQB : OUT  std_logic;
CN4 : OUT  std_logic;
GN : OUT  std_logic;
PN : OUT  std_logic);
END \74181\;

architecture model OF \74181\ IS
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
	 SIGNAL FB0 : std_logic;
	 SIGNAL FB1 : std_logic;
	 SIGNAL FB2 : std_logic;
	 SIGNAL FB3 : std_logic;
	 SIGNAL FB4 : std_logic;

    BEGIN
    L1 <= NOT (B3N);
    L2 <= NOT (B2N);
    L3 <= NOT (B1N);
    L4 <= NOT (B0N);
    L5 <= NOT (M);
    L6 <=  (B3N AND S3 AND A3N);
    L7 <=  (A3N AND S2 AND L1);
    L8 <=  (L1 AND S1);
    L9 <=  (S0 AND B3N);
    L10 <=  (B2N AND S3 AND A2N);
    L11 <=  (A2N AND S2 AND L2);
    L12 <=  (L2 AND S1);
    L13 <=  (S0 AND B2N);
    L14 <=  (B1N AND S3 AND A1N);
    L15 <=  (A1N AND S2 AND L3);
    L16 <=  (L3 AND S1);
    L17 <=  (S0 AND B1N);
    L18 <=  (B0N AND S3 AND A0N);
    L19 <=  (A0N AND S2 AND L4);
    L20 <=  (L4 AND S1);
    L21 <=  (S0 AND B0N);
    L22 <= NOT (L6 OR L7);
    L23 <= NOT (L8 OR L9 OR A3N);
    L24 <= NOT (L10 OR L11);
    L25 <= NOT (L12 OR L13 OR A2N);
    L26 <= NOT (L14 OR L15);
    L27 <= NOT (L16 OR L17 OR A1N);
    L28 <= NOT (L18 OR L19);
    L29 <= NOT (L20 OR L21 OR A0N);
    N1 <=  (L22 XOR L23);
    N2 <=  (L24 XOR L25);
    N3 <=  (L26 XOR L27);
    N4 <=  (L28 XOR L29);
    N12 <=  (L23);
    N5 <=  (L22 AND L25);
    N6 <=  (L22 AND L24 AND L27);
    N7 <=  (L22 AND L24 AND L26 AND L29);
    L30 <= NOT (L22 AND L24 AND L26 AND L28 AND CN);
    L31 <=  (CN AND L28 AND L26 AND L24 AND L5);
    L32 <=  (L26 AND L24 AND L29 AND L5);
    L33 <=  (L24 AND L27 AND L5);
    L34 <=  (L25 AND L5);
    L35 <=  (CN AND L28 AND L26 AND L5);
    L36 <=  (L26 AND L29 AND L5);
    L37 <=  (L27 AND L5);
    L38 <=  (CN AND L28 AND L5);
    L39 <=  (L29 AND L5);
    L40 <= NOT (CN AND L5);
    L41 <= NOT (L31 OR L32 OR L33 OR L34);
    L42 <= NOT (L35 OR L36 OR L37);
    L43 <= NOT (L38 OR L39);
    FB4 <= NOT (N12 OR N5 OR N6 OR N7) AFTER 1 ns;
    GN <= FB4;
    N8 <=  (FB4);
    CN4 <= NOT (N8 AND L30) AFTER 1 ns;
    PN <= NOT (L22 AND L24 AND L26 AND L28) AFTER 1 ns;
    FB3 <=  (N1 XOR L41) AFTER 1 ns;
    F3N <=  FB3;
    FB2 <=  (N2 XOR L42) AFTER 1 ns;
    F2N <=  FB2;
    FB1 <=  (N3 XOR L43) AFTER 1 ns;
    F1N <=  FB1;
    FB0 <=  (N4 XOR L40) AFTER 1 ns;
    F0N <=  FB0;
    N9 <=  (FB3);
    N10 <=  (FB2);
    N11 <=  (FB1);
    AEQB <=  (N9 AND N10 AND N11 AND FB0) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74182\ IS PORT(
CI  : IN  std_logic;
PN0 : IN  std_logic;
GN0 : IN  std_logic;
PN1 : IN  std_logic;
GN1 : IN  std_logic;
PN2 : IN  std_logic;
GN2 : IN  std_logic;
PN3 : IN  std_logic;
GN3 : IN  std_logic;
CX  : OUT  std_logic;
CY  : OUT  std_logic;
CZ  : OUT  std_logic;
PN  : OUT  std_logic;
GN  : OUT  std_logic);
END \74182\;

architecture model OF \74182\ IS
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
    N1 <= NOT (CI);
    L1 <=  (GN3 AND GN2 AND GN1 AND GN0);
    L2 <=  (PN1 AND GN3 AND GN2 AND GN1);
    L3 <=  (PN2 AND GN3 AND GN2);
    L4 <=  (PN3 AND GN3);
    L5 <=  (GN2 AND GN1 AND GN0 AND N1);
    L6 <=  (PN0 AND GN2 AND GN1 AND GN0);
    L7 <=  (PN1 AND GN2 AND GN1);
    L8 <=  (PN2 AND GN2);
    L9 <=  (GN1 AND GN0 AND N1);
    L10 <=  (PN0 AND GN1 AND GN0);
    L11 <=  (PN1 AND GN1);
    L12 <=  (GN0 AND N1);
    L13 <=  (PN0 AND GN0);
    PN <=  (PN3 OR PN2 OR PN1 OR PN0) AFTER 1 ns;
    GN <=  (L1 OR L2 OR L3 OR L4) AFTER 1 ns;
    CZ <= NOT (L5 OR L6 OR L7 OR L8) AFTER 1 ns;
    CY <= NOT (L9 OR L10 OR L11) AFTER 1 ns;
    CX <= NOT (L12 OR L13) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74183\ IS PORT(
A1    : IN  std_logic;
B1    : IN  std_logic;
CN0_1 : IN  std_logic;
SUM1  : OUT  std_logic;
CN1_1 : OUT  std_logic;
A2    : IN  std_logic;
B2    : IN  std_logic;
CN0_2 : IN  std_logic;
SUM2  : OUT  std_logic;
CN1_2 : OUT  std_logic);
END \74183\;

architecture model OF \74183\ IS
    SIGNAL L11 : std_logic;
    SIGNAL L12 : std_logic;
    SIGNAL L13 : std_logic;
    SIGNAL L17 : std_logic;
    SIGNAL L18 : std_logic;
    SIGNAL L19 : std_logic;
    SIGNAL L110 : std_logic;
    SIGNAL L111 : std_logic;
    SIGNAL L112 : std_logic;
    SIGNAL L113 : std_logic;
    SIGNAL L21 : std_logic;
    SIGNAL L22 : std_logic;
    SIGNAL L23 : std_logic;
    SIGNAL L27 : std_logic;
    SIGNAL L28 : std_logic;
    SIGNAL L29 : std_logic;
    SIGNAL L210 : std_logic;
    SIGNAL L211 : std_logic;
    SIGNAL L212 : std_logic;
    SIGNAL L213 : std_logic;


    BEGIN
    L11 <= NOT (CN0_1);
    L12 <= NOT (B1);
    L13 <= NOT (A1);
    L17 <=  (L11 AND L12);
    L18 <=  (L12 AND L13);
    L19 <=  (L11 AND L13);
    L110 <=  (CN0_1 AND L12 AND A1);
    L111 <=  (L11 AND B1 AND A1);
    L112 <=  (L11 AND L12 AND L13);
    L113 <=  (CN0_1 AND B1 AND L13);
    CN1_1 <= NOT (L17 OR L18 OR L19) AFTER 1 ns;
    SUM1  <= NOT (L110 OR L111 OR L112 OR L113) AFTER 1 ns;
    L21 <= NOT (CN0_2);
    L22 <= NOT (B2);
    L23 <= NOT (A2);
    L27 <=  (L21 AND L22);
    L28 <=  (L22 AND L23);
    L29 <=  (L21 AND L23);
    L210 <=  (CN0_2 AND L22 AND A2);
    L211 <=  (L21 AND B2 AND A2);
    L212 <=  (L21 AND L22 AND L23);
    L213 <=  (CN0_2 AND B2 AND L23);
    CN1_2 <= NOT (L27 OR L28 OR L29) AFTER 1 ns;
    SUM2  <= NOT (L210 OR L211 OR L212 OR L213) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74184\ IS 
   PORT(A,B,C,D,E,GN : IN  std_logic;
        Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8: OUT  std_logic);
END \74184\;

architecture model OF \74184\ IS

    BEGIN
    PROCESS(A, B, C, D, E, GN)
    VARIABLE invec  : std_logic_vector(4 DOWNTO 0);
    VARIABLE outvec : std_logic_vector(7 DOWNTO 0);

    BEGIN
    invec(0) := A;    
    invec(1) := B;
    invec(2) := C;    
    invec(3) := D;
    invec(4) := E;    

    if(GN = '1') OR (GN = 'H') THEN
         outvec := "11111111";
    ELSIF (GN = '0') OR (GN = 'L') THEN
         if(invec = "00000") THEN outvec := "10100000";
         ELSif(invec = "00001") THEN outvec := "10000001";
         ELSif(invec = "00010") THEN outvec := "01100010";
         ELSif(invec = "00011") THEN outvec := "01000011";
         ELSif(invec = "00100") THEN outvec := "01100100";
         ELSif(invec = "01000") THEN outvec := "00100101";
         ELSif(invec = "01001") THEN outvec := "00000110";
         ELSif(invec = "01010") THEN outvec := "11100111";
         ELSif(invec = "01011") THEN outvec := "11101000";
         ELSif(invec = "01100") THEN outvec := "11101001";
         ELSif(invec = "10000") THEN outvec := "00001010";
         ELSif(invec = "10001") THEN outvec := "10001011";
         ELSif(invec = "10010") THEN outvec := "10001100";
         ELSif(invec = "10011") THEN outvec := "01101101";
         ELSif(invec = "10100") THEN outvec := "01101110";
         ELSif(invec = "11000") THEN outvec := "00101111";
         ELSif(invec = "11001") THEN outvec := "00010000";
         ELSif(invec = "11010") THEN outvec := "11110001";
         ELSif(invec = "11011") THEN outvec := "11110010";
         ELSif(invec = "11100") THEN outvec := "11110011";    
         ELSif(invec = "00101") THEN outvec := "01011111";    
         ELSif(invec = "00110") THEN outvec := "00111111";    
         ELSif(invec = "00111") THEN outvec := "00011111";    
         ELSif(invec = "10101") THEN outvec := "01011111";    
         ELSif(invec = "10110") THEN outvec := "01011111";    
         ELSif(invec = "10111") THEN outvec := "00111111";    
         ELSE outvec := "11111111";
         END if;
     ELSE outvec := "XXXXXXXX";
    END if;
    Y1 <= outvec(0) AFTER 1 ns;
    Y2 <= outvec(1) AFTER 1 ns;
    Y3 <= outvec(2) AFTER 1 ns;
    Y4 <= outvec(3) AFTER 1 ns;
    Y5 <= outvec(4) AFTER 1 ns;
    Y6 <= outvec(5) AFTER 1 ns;
    Y7 <= outvec(6) AFTER 1 ns;
    Y8 <= outvec(7) AFTER 1 ns;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74185\ IS PORT(
A  : IN  std_logic;
B  : IN  std_logic;
C  : IN  std_logic;
D  : IN  std_logic;
E  : IN  std_logic;
GN : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic);
END \74185\;

architecture model OF \74185\ IS

    BEGIN
    PROCESS(A, B, C, D, E, GN)
    VARIABLE invec  : std_logic_vector(4 DOWNTO 0);
    VARIABLE outvec : std_logic_vector(7 DOWNTO 0);

    BEGIN
    invec(0) := A;    
    invec(1) := B;
    invec(2) := C;    
    invec(3) := D;
    invec(4) := E;    

    if (GN = '1') OR (GN = 'H') THEN
         outvec := "11111111";
    ELSIF(GN = '0') OR (GN = 'L') THEN 
         if(invec = "00000") THEN outvec := "11000000";
         ELSif(invec = "00001") THEN outvec := "11000001";
         ELSif(invec = "00010") THEN outvec := "11000010";
         ELSif(invec = "00011") THEN outvec := "11000011";
         ELSif(invec = "00100") THEN outvec := "11000100";
         ELSif(invec = "00101") THEN outvec := "11001000";
         ELSif(invec = "00110") THEN outvec := "11001001";
         ELSif(invec = "00111") THEN outvec := "11001010";
         ELSif(invec = "01000") THEN outvec := "11001011";
         ELSif(invec = "01001") THEN outvec := "11001100";
         ELSif(invec = "01010") THEN outvec := "11010000";
         ELSif(invec = "01011") THEN outvec := "11010001";
         ELSif(invec = "01100") THEN outvec := "11010010";
         ELSif(invec = "01101") THEN outvec := "11010011";
         ELSif(invec = "01110") THEN outvec := "11010100";
         ELSif(invec = "01111") THEN outvec := "11011000";
         ELSif(invec = "10000") THEN outvec := "11011001";
         ELSif(invec = "10001") THEN outvec := "11011010";
         ELSif(invec = "10010") THEN outvec := "11011011";
         ELSif(invec = "10011") THEN outvec := "11011100";    
         ELSif(invec = "10100") THEN outvec := "11100000";    
         ELSif(invec = "10101") THEN outvec := "11100001";    
         ELSif(invec = "10110") THEN outvec := "11100010";    
         ELSif(invec = "10111") THEN outvec := "11100011";    
         ELSif(invec = "11000") THEN outvec := "11100100";    
         ELSif(invec = "11001") THEN outvec := "11101000";    
         ELSif(invec = "11010") THEN outvec := "11101001";    
         ELSif(invec = "11011") THEN outvec := "11101010";    
         ELSif(invec = "11100") THEN outvec := "11101011";    
         ELSif(invec = "11101") THEN outvec := "11101100";    
         ELSif(invec = "11110") THEN outvec := "11110000";    
         ELSif(invec = "11111") THEN outvec := "11110001";
         END IF;
    ELSE
         OutVec := "XXXXXXXX"; 
    END if;
    Y1 <= outvec(0) AFTER 1 ns;
    Y2 <= outvec(1) AFTER 1 ns;
    Y3 <= outvec(2) AFTER 1 ns;
    Y4 <= outvec(3) AFTER 1 ns;
    Y5 <= outvec(4) AFTER 1 ns;
    Y6 <= outvec(5) AFTER 1 ns;
    Y7 <= outvec(6) AFTER 1 ns;
    Y8 <= outvec(7) AFTER 1 ns;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74190\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
CLK  : IN  std_logic;
GN   : IN  std_logic;
DNUP : IN  std_logic;
LDN  : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
RCON : OUT  std_logic;
MXMN : OUT  std_logic);
END \74190\;

architecture model OF \74190\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
	 SIGNAL FB1 : std_logic;

    BEGIN
    L1 <= NOT (DNUP);
    L2 <= NOT (DNUP OR GN);
    L3 <= NOT (GN OR L1);
    L4 <=  (L1 AND N4 AND N10);
    L5 <=  (DNUP AND N5 AND N7 AND N9 AND N11);
    L6 <= NOT (A AND N3);
    L7 <= NOT (L6 AND N3);
    L8 <= NOT (B AND N3);
    L9 <= NOT (N7 AND N9 AND N11);
    L10 <= NOT (L8 AND N3);
    L11 <= NOT (C AND N3);
    L12 <= NOT (L11 AND N3);
    L13 <= NOT (D AND N3);
    L14 <= NOT (L13 AND N3);
    L15 <=  (L3 AND N5 AND L9);
    L16 <=  (N4 AND N11 AND L2);
    L17 <=  (L9 AND L3 AND N5 AND N7);
    L18 <=  (N4 AND N6 AND L2);
    L19 <=  (L3 AND N5 AND N7 AND N9);
    L20 <=  (N4 AND N10 AND L2);
    L21 <=  (N4 AND N6 AND N8 AND L2);
    L22 <= NOT (GN);
    L23 <=  (L15 OR L16);
    L24 <=  (L17 OR L18);
    L25 <=  (L19 OR L20 OR L21);
    N1 <= NOT (CLK);
    N2 <= NOT (GN);
    N3 <= NOT (LDN);
    JKFFPC_17 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L22 , k=>L22 , clk=>CLK , pr=>L6 , cl=>L7);
    JKFFPC_18 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L23 , k=>L23 , clk=>CLK , pr=>L8 , cl=>L10);
    JKFFPC_19 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L24 , k=>L24 , clk=>CLK , pr=>L11 , cl=>L12);
    JKFFPC_20 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L25 , k=>L25 , clk=>CLK , pr=>L13 , cl=>L14);
    FB1 <= (L4 OR L5) AFTER 1 ns;
    MXMN <=  FB1;
    RCON <= NOT (N1 AND N2 AND FB1) AFTER 1 ns;
    QA <=  (N4) AFTER 1 ns;
    QB <=  (N6) AFTER 1 ns;
    QC <=  (N8) AFTER 1 ns;
    QD <=  (N10) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74191\ IS PORT(
A    : IN  std_logic;
B    : IN  std_logic;
C    : IN  std_logic;
D    : IN  std_logic;
CLK  : IN  std_logic;
GN   : IN  std_logic;
DNUP : IN  std_logic;
LDN  : IN  std_logic;
QA   : OUT  std_logic;
QB   : OUT  std_logic;
QC   : OUT  std_logic;
QD   : OUT  std_logic;
RCON : OUT  std_logic;
MXMN : OUT  std_logic);
END \74191\;

architecture model OF \74191\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
	 SIGNAL FB1 : std_logic;

    BEGIN
    L1 <= NOT (DNUP);
    L2 <= NOT (DNUP OR GN);
    L3 <= NOT (GN OR L1);
    L4 <=  (L1 AND N4 AND N6 AND N8 AND N10);
    L5 <=  (DNUP AND N5 AND N7 AND N9 AND N11);
    L6 <= NOT (A AND N3);
    L7 <= NOT (L6 AND N3);
    L8 <= NOT (B AND N3);
    L9 <= NOT (L8 AND N3);
    L10 <= NOT (C AND N3);
    L11 <= NOT (L10 AND N3);
    L12 <= NOT (D AND N3);
    L13 <= NOT (L12 AND N3);
    L14 <=  (L3 AND N5);
    L15 <=  (N4 AND L2);
    L16 <=  (L3 AND N5 AND N7);
    L17 <=  (N4 AND N6 AND L2);
    L18 <=  (L3 AND N5 AND N7 AND N9);
    L19 <=  (N4 AND N6 AND N8 AND L2);
    L20 <= NOT (GN);
    L21 <=  (L14 OR L15);
    L22 <=  (L16 OR L17);
    L23 <=  (L18 OR L19);
    N1 <= NOT (CLK);
    N2 <= NOT (GN);
    N3 <= NOT (LDN);
    JKFFPC_21 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N4 , qNot=>N5 , j=>L20 , k=>L20 , clk=>CLK , pr=>L6 , cl=>L7);
    JKFFPC_22 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N6 , qNot=>N7 , j=>L21 , k=>L21 , clk=>CLK , pr=>L8 , cl=>L9);
    JKFFPC_23 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N8 , qNot=>N9 , j=>L22 , k=>L22 , clk=>CLK , pr=>L10 , cl=>L11);
    JKFFPC_24 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N10 , qNot=>N11 , j=>L23 , k=>L23 , clk=>CLK , pr=>L12 , cl=>L13);
    FB1 <= (L4 OR L5) AFTER 1 ns;
    MXMN <=  FB1;
    RCON <= NOT (N1 AND N2 AND FB1) AFTER 1 ns;
    QA <=  (N4) AFTER 1 ns;
    QB <=  (N6) AFTER 1 ns;
    QC <=  (N8) AFTER 1 ns;
    QD <=  (N10) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74192\ IS PORT(
A   : IN  std_logic;
B   : IN  std_logic;
C   : IN  std_logic;
D   : IN  std_logic;
UP  : IN  std_logic;
DN  : IN  std_logic;
LDN : IN  std_logic;
CLR : IN  std_logic;
QA  : OUT  std_logic;
QB  : OUT  std_logic;
QC  : OUT  std_logic;
QD  : OUT  std_logic;
CON : OUT  std_logic;
BON : OUT  std_logic);
END \74192\;

architecture model OF \74192\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (DN);
    L2 <= NOT (UP);
    L3 <= NOT (A AND N2 AND N1);
    L4 <= NOT (B AND N2 AND N1);
    L5 <= NOT (N10 AND N12 AND N14);
    L6 <= NOT (C AND N2 AND N1);
    L7 <= NOT (D AND N2 AND N1);
    L8 <=  (L1 AND N8 AND L5);
    L9 <=  (N7 AND N14 AND L2);
    L10 <=  (L5 AND L1 AND N8 AND N10);
    L11 <=  (N7 AND N9 AND L2);
    L12 <=  (L1 AND N8 AND N10 AND N12);
    L13 <=  (N7 AND N13 AND L2);
    L14 <=  (N7 AND N9 AND N11 AND L2);
    L15 <= NOT (L3 AND N2);
    L16 <= NOT (L4 AND N2);
    L17 <= NOT (L6 AND N2);
    L18 <= NOT (L7 AND N2);
    L19 <=  (N1 AND L15);
    L20 <=  (N1 AND L16);
    L21 <=  (N1 AND L17);
    L22 <=  (N1 AND L18);
    N1 <= NOT (CLR);
    N2 <= NOT (LDN);
    N3 <= NOT (L1 OR L2);
    N4 <= NOT (L8 OR L9);
    N5 <= NOT (L10 OR L11);
    N6 <= NOT (L12 OR L13 OR L14);
    JKFFPC_25 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L19);
    JKFFPC_26 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L20);
    JKFFPC_27 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L6 , cl=>L21);
    JKFFPC_28 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L7 , cl=>L22);
    BON <= NOT (L1 AND N8 AND N10 AND N12 AND N14) AFTER 1 ns;
    CON <= NOT (N7 AND N13 AND L2) AFTER 1 ns;
    QA <=  (N7) AFTER 1 ns;
    QB <=  (N9) AFTER 1 ns;
    QC <=  (N11) AFTER 1 ns;
    QD <=  (N13) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74193\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
UP : IN  std_logic;
DN : IN  std_logic;
LDN : IN  std_logic;
CLR : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
CON : OUT  std_logic;
BON : OUT  std_logic);
END \74193\;

architecture model OF \74193\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (DN);
    L2 <= NOT (UP);
    L3 <= NOT (A AND N2 AND N1);
    L4 <= NOT (B AND N2 AND N1);
    L5 <= NOT (C AND N2 AND N1);
    L6 <= NOT (D AND N2 AND N1);
    L7 <=  (L1 AND N8);
    L8 <=  (N7 AND L2);
    L9 <=  (L1 AND N8 AND N10);
    L10 <=  (N7 AND N9 AND L2);
    L11 <=  (L1 AND N8 AND N10 AND N12);
    L12 <=  (N7 AND N9 AND N11 AND L2);
    L13 <= NOT (L3 AND N2);
    L14 <= NOT (L4 AND N2);
    L15 <= NOT (L5 AND N2);
    L16 <= NOT (L6 AND N2);
    L17 <=  (N1 AND L13);
    L18 <=  (N1 AND L14);
    L19 <=  (N1 AND L15);
    L20 <=  (N1 AND L16);
    N1 <= NOT (CLR);
    N2 <= NOT (LDN);
    N3 <= NOT (L1 OR L2);
    N4 <= NOT (L7 OR L8);
    N5 <= NOT (L9 OR L10);
    N6 <= NOT (L11 OR L12);
    JKFFPC_29 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N3 , pr=>L3 , cl=>L17);
    JKFFPC_30 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N4 , pr=>L4 , cl=>L18);
    JKFFPC_31 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N11 , qNot=>N12 , j=>ONE , k=>ONE , clk=>N5 , pr=>L5 , cl=>L19);
    JKFFPC_32 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N13 , qNot=>N14 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L20);
    BON <= NOT (L1 AND N8 AND N10 AND N12 AND N14) AFTER 1 ns;
    CON <= NOT (N7 AND N9 AND N11 AND N13 AND L2) AFTER 1 ns;
    QA <=  (N7) AFTER 1 ns;
    QB <=  (N9) AFTER 1 ns;
    QC <=  (N11) AFTER 1 ns;
    QD <=  (N13) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74194\ IS PORT(
SRSI : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
SLSI : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
CLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74194\;

architecture model OF \74194\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (S1);
    L2 <= NOT (S0);
    N1 <=  (S1 AND S0);
    N2 <=  (S1 AND L2);
    N3 <=  (L1 AND S0);
    N4 <=  (L1 AND L2);
    L4 <=  (SRSI AND N3);
    L5 <=  (N2 AND N6);
    L6 <=  (N1 AND A);
    L7 <=  (N4 AND N5);
    L8 <=  (L4 OR L5 OR L6 OR L7);
    L9 <=  (N5 AND N3);
    L10 <=  (N2 AND N7);
    L11 <=  (N1 AND B);
    L12 <=  (N4 AND N6);
    L13 <=  (L9 OR L10 OR L11 OR L12);
    L14 <=  (N6 AND N3);
    L15 <=  (N2 AND N8);
    L16 <=  (N1 AND C);
    L17 <=  (N4 AND N7);
    L18 <=  (L14 OR L15 OR L16 OR L17);
    L19 <=  (N7 AND N3);
    L20 <=  (N2 AND SLSI);
    L21 <=  (N1 AND D);
    L22 <=  (N4 AND N8);
    L23 <=  (L19 OR L20 OR L21 OR L22);
    DQFFC_34 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L8 , clk=>CLK , cl=>CLRN);
    DQFFC_35 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L13 , clk=>CLK , cl=>CLRN);
    DQFFC_36 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L18 , clk=>CLK , cl=>CLRN);
    DQFFC_37 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L23 , clk=>CLK , cl=>CLRN);
    QA <=  (N5) AFTER 1 ns;
    QB <=  (N6) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74195\ IS PORT(
J  : IN  std_logic;
KN : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
CLK : IN  std_logic;
STLDN : IN  std_logic;
CLRN: IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q3N : OUT  std_logic);
END \74195\;

architecture model OF \74195\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (STLDN);
    N2 <=  (STLDN);
    L1 <= NOT (N3);
    L2 <=  (L1 AND J AND N2);
    L3 <=  (N2 AND KN AND N3);
    L4 <=  (N1 AND D0);
    L5 <=  (L2 OR L3 OR L4);
    L6 <=  (N3 AND N2);
    L7 <=  (N1 AND D1);
    L8 <=  (L6 OR L7);
    L9 <=  (N4 AND N2);
    L10 <=  (N1 AND D2);
    L11 <=  (L9 OR L10);
    L12 <=  (N5 AND N2);
    L13 <=  (N1 AND D3);
    L14 <=  (L12 OR L13);
    DQFFC_38 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L5 , clk=>CLK , cl=>CLRN);
    DQFFC_39 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L8 , clk=>CLK , cl=>CLRN);
    DQFFC_40 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L11 , clk=>CLK , cl=>CLRN);
    DQFFC_41 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L14 , clk=>CLK , cl=>CLRN);
    Q0 <=  (N3) AFTER 1 ns;
    Q1 <=  (N4) AFTER 1 ns;
    Q2 <=  (N5) AFTER 1 ns;
    Q3 <=  (N6) AFTER 1 ns;
    Q3N <= NOT (N6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74196\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LDN : IN  std_logic;
CLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74196\;

architecture model OF \74196\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (LDN AND CLRN);
    L2 <= NOT (A AND L1 AND CLRN);
    L3 <= NOT (L2 AND L1);
    L4 <= NOT (B AND L1 AND CLRN);
    L5 <= NOT (L4 AND L1);
    L6 <= NOT (C AND L1 AND CLRN);
    L7 <= NOT (L6 AND L1);
    L8 <= NOT (D AND L1 AND CLRN);
    L9 <= NOT (L8 AND L1);
    L10 <=  (N5 AND N7);
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);
    JKFFPC_33 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3);
    JKFFPC_34 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>N10 , clk=>N2 , pr=>L4 , cl=>L5);
    JKFFPC_35 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7);
    JKFFPC_36 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L10 , k=>N9 , clk=>N2 , pr=>L8 , cl=>L9);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74197\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
LDN : IN  std_logic;
CLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74197\;

architecture model OF \74197\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (LDN AND CLRN);
    L2 <= NOT (A AND L1 AND CLRN);
    L3 <= NOT (L2 AND L1);
    L4 <= NOT (B AND L1 AND CLRN);
    L5 <= NOT (L4 AND L1);
    L6 <= NOT (C AND L1 AND CLRN);
    L7 <= NOT (L6 AND L1);
    L8 <= NOT (D AND L1 AND CLRN);
    L9 <= NOT (L8 AND L1);
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);
    JKFFPC_37 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L2 , cl=>L3);
    JKFFPC_38 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>ONE , k=>ONE , clk=>N2 , pr=>L4 , cl=>L5);
    JKFFPC_39 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>L6 , cl=>L7);
    JKFFPC_40 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>ONE , k=>ONE , clk=>N8 , pr=>L8 , cl=>L9);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74198\ IS PORT(
SRSI : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
SLSI : IN  std_logic;
CLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
CLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic);
END \74198\;

architecture model OF \74198\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
	 SIGNAL FBA : std_logic;
	 SIGNAL FBB : std_logic;
	 SIGNAL FBC : std_logic;
	 SIGNAL FBD : std_logic;
	 SIGNAL FBE : std_logic;
	 SIGNAL FBF : std_logic;
	 SIGNAL FBG : std_logic;
	 SIGNAL FBH : std_logic;

    BEGIN
    L1 <= NOT (S1);
    L2 <= NOT (S0);
    L3 <=  (L1 AND L2);
    L4 <= NOT (L1 OR L2);
    L5 <=  (SRSI AND L1);
    L6 <=  (L4 AND A);
    L7 <=  (L2 AND FBB);
    L8 <=  (FBA AND L1);
    L9 <=  (L4 AND B);
    L10 <=  (L2 AND FBC);
    L11 <=  (FBB AND L1);
    L12 <=  (L4 AND C);
    L13 <=  (L2 AND FBD);
    L14 <=  (FBC AND L1);
    L15 <=  (L4 AND D);
    L16 <=  (L2 AND FBE);
    L17 <=  (FBD AND L1);
    L18 <=  (L4 AND E);
    L19 <=  (L2 AND FBF);
    L20 <=  (FBE AND L1);
    L21 <=  (L4 AND F);
    L22 <=  (L2 AND FBG);
    L23 <=  (FBF AND L1);
    L24 <=  (L4 AND G);
    L25 <=  (L2 AND FBH);
    L26 <=  (FBG AND L1);
    L27 <=  (L4 AND H);
    L28 <=  (L2 AND SLSI);
    L29 <=  (L5 OR L6 OR L7);
    L30 <=  (L8 OR L9 OR L10);
    L31 <=  (L11 OR L12 OR L13);
    L32 <=  (L14 OR L15 OR L16);
    L33 <=  (L17 OR L18 OR L19);
    L34 <=  (L20 OR L21 OR L22);
    L35 <=  (L23 OR L24 OR L25);
    L36 <=  (L26 OR L27 OR L28);
    N1 <=  (CLK OR L3);
    DQFFC_42 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>L29 , clk=>N1 , cl=>CLRN);
    DQFFC_43 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L30 , clk=>N1 , cl=>CLRN);
    DQFFC_44 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L31 , clk=>N1 , cl=>CLRN);
    DQFFC_45 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L32 , clk=>N1 , cl=>CLRN);
    DQFFC_46 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L33 , clk=>N1 , cl=>CLRN);
    DQFFC_47 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L34 , clk=>N1 , cl=>CLRN);
    DQFFC_48 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L35 , clk=>N1 , cl=>CLRN);
    DQFFC_49 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L36 , clk=>N1 , cl=>CLRN);

	 FBA <=  (N2) AFTER 1 ns;
    FBB <=  (N3) AFTER 1 ns;
    FBC <=  (N4) AFTER 1 ns;
    FBD <=  (N5) AFTER 1 ns;
    FBE <=  (N6) AFTER 1 ns;
    FBF <=  (N7) AFTER 1 ns;
    FBG <=  (N8) AFTER 1 ns;
    FBH <=  (N9) AFTER 1 ns;

    QA <=  FBA;
    QB <=  FBB;
    QC <=  FBC;
    QD <=  FBD;
    QE <=  FBE;
    QF <=  FBF;
    QG <=  FBG;
    QH <=  FBH;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74199\ IS PORT(
J : IN  std_logic;
KN : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
CLK : IN  std_logic;
CLKIH : IN  std_logic;
STLDN : IN  std_logic;
CLRN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic);
END \74199\;

architecture model OF \74199\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    SIGNAL FB0 : std_logic;
	 SIGNAL FB1 : std_logic;
    SIGNAL FB2 : std_logic;
    SIGNAL FB3 : std_logic;
    SIGNAL FB4 : std_logic;
    SIGNAL FB5 : std_logic;
    SIGNAL FB6 : std_logic;
    SIGNAL FB7 : std_logic;

    BEGIN
    L1 <= NOT (STLDN);
    L2 <= NOT (FB0);
    L3 <=  (J AND STLDN AND L2);
    L4 <=  (L1 AND D0);
    L5 <=  (KN AND STLDN AND FB0);
    L6 <=  (FB0 AND STLDN);
    L7 <=  (L1 AND D1);
    L8 <=  (FB1 AND STLDN);
    L9 <=  (L1 AND D2);
    L10 <=  (FB2 AND STLDN);
    L11 <=  (L1 AND D3);
    L12 <=  (FB3 AND STLDN);
    L13 <=  (L1 AND D4);
    L14 <=  (FB4 AND STLDN);
    L15 <=  (L1 AND D5);
    L16 <=  (FB5 AND STLDN);
    L17 <=  (L1 AND D6);
    L18 <=  (FB6 AND STLDN);
    L19 <=  (L1 AND D7);
    L20 <=  (L3 OR L4 OR L5);
    L21 <=  (L6 OR L7);
    L22 <=  (L8 OR L9);
    L23 <=  (L10 OR L11);
    L24 <=  (L12 OR L13);
    L25 <=  (L14 OR L15);
    L26 <=  (L16 OR L17);
    L27 <=  (L18 OR L19);
    N1 <=  (CLK OR CLKIH);
    DQFFC_50 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>L20 , clk=>N1 , cl=>CLRN);
    DQFFC_51 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L21 , clk=>N1 , cl=>CLRN);
    DQFFC_52 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L22 , clk=>N1 , cl=>CLRN);
    DQFFC_53 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L23 , clk=>N1 , cl=>CLRN);
    DQFFC_54 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L24 , clk=>N1 , cl=>CLRN);
    DQFFC_55 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L25 , clk=>N1 , cl=>CLRN);
    DQFFC_56 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L26 , clk=>N1 , cl=>CLRN);
    DQFFC_57 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L27 , clk=>N1 , cl=>CLRN);
    FB0 <=  (N2) AFTER 1 ns;
    FB1 <=  (N3) AFTER 1 ns;
    FB2 <=  (N4) AFTER 1 ns;
    FB3 <=  (N5) AFTER 1 ns;
    FB4 <=  (N6) AFTER 1 ns;
    FB5 <=  (N7) AFTER 1 ns;
    FB6 <=  (N8) AFTER 1 ns;
    FB7 <=  (N9) AFTER 1 ns;

    Q0 <=  FB0;
    Q1 <=  FB1;
    Q2 <=  FB2;
    Q3 <=  FB3;
    Q4 <=  FB4;
    Q5 <=  FB5;
    Q6 <=  FB6;
    Q7 <=  FB7;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74240\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
A23 : IN  std_logic;
A24 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
Y11N : OUT  std_logic;
Y12N : OUT  std_logic;
Y13N : OUT  std_logic;
Y14N : OUT  std_logic;
Y21N : OUT  std_logic;
Y22N : OUT  std_logic;
Y23N : OUT  std_logic;
Y24N : OUT  std_logic);
END \74240\;

architecture model OF \74240\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    N1 <= NOT (A11);
    N2 <= NOT (A12);
    N3 <= NOT (A13);
    N4 <= NOT (A14);
    N5 <= NOT (A21);
    N6 <= NOT (A22);
    N7 <= NOT (A23);
    N8 <= NOT (A24);
    L1 <= NOT (GN1);
    L2 <= NOT (GN2);
    TSB_24 :  ORCAD_TSB 
      PORT MAP  (O=>Y11N , i1=>N1 , en=>L1);
    TSB_25 :  ORCAD_TSB 
      PORT MAP  (O=>Y12N , i1=>N2 , en=>L1);
    TSB_26 :  ORCAD_TSB 
      PORT MAP  (O=>Y13N , i1=>N3 , en=>L1);
    TSB_27 :  ORCAD_TSB 
      PORT MAP  (O=>Y14N , i1=>N4 , en=>L1);
    TSB_28 :  ORCAD_TSB 
      PORT MAP  (O=>Y21N , i1=>N5 , en=>L2);
    TSB_29 :  ORCAD_TSB 
      PORT MAP  (O=>Y22N , i1=>N6 , en=>L2);
    TSB_30 :  ORCAD_TSB 
      PORT MAP  (O=>Y23N , i1=>N7 , en=>L2);
    TSB_31 :  ORCAD_TSB 
      PORT MAP  (O=>Y24N , i1=>N8 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74241\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
A23 : IN  std_logic;
A24 : IN  std_logic;
GN1 : IN  std_logic;
G2  : IN  std_logic;
Y11 : OUT  std_logic;
Y12 : OUT  std_logic;
Y13 : OUT  std_logic;
Y14 : OUT  std_logic;
Y21 : OUT  std_logic;
Y22 : OUT  std_logic;
Y23 : OUT  std_logic;
Y24 : OUT  std_logic);
END \74241\;

architecture model OF \74241\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    N1 <=  (A11);
    N2 <=  (A12);
    N3 <=  (A13);
    N4 <=  (A14);
    N5 <=  (A21);
    N6 <=  (A22);
    N7 <=  (A23);
    N8 <=  (A24);
    L1 <= NOT (GN1);
    TSB_32 :  ORCAD_TSB 
      PORT MAP  (O=>Y11 , i1=>N1 , en=>L1);
    TSB_33 :  ORCAD_TSB 
      PORT MAP  (O=>Y12 , i1=>N2 , en=>L1);
    TSB_34 :  ORCAD_TSB 
      PORT MAP  (O=>Y13 , i1=>N3 , en=>L1);
    TSB_35 :  ORCAD_TSB 
      PORT MAP  (O=>Y14 , i1=>N4 , en=>L1);
    TSB_36 :  ORCAD_TSB 
      PORT MAP  (O=>Y21 , i1=>N5 , en=>G2);
    TSB_37 :  ORCAD_TSB 
      PORT MAP  (O=>Y22 , i1=>N6 , en=>G2);
    TSB_38 :  ORCAD_TSB 
      PORT MAP  (O=>Y23 , i1=>N7 , en=>G2);
    TSB_39 :  ORCAD_TSB 
      PORT MAP  (O=>Y24 , i1=>N8 , en=>G2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74244\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
A23 : IN  std_logic;
A24 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
Y11 : OUT  std_logic;
Y12 : OUT  std_logic;
Y13 : OUT  std_logic;
Y14 : OUT  std_logic;
Y21 : OUT  std_logic;
Y22 : OUT  std_logic;
Y23 : OUT  std_logic;
Y24 : OUT  std_logic);
END \74244\;

architecture model OF \74244\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    N1 <=  (A11);
    N2 <=  (A12);
    N3 <=  (A13);
    N4 <=  (A14);
    N5 <=  (A21);
    N6 <=  (A22);
    N7 <=  (A23);
    N8 <=  (A24);
    L1 <= NOT (GN1);
    L2 <= NOT (GN2);
    TSB_56 :  ORCAD_TSB 
      PORT MAP  (O=>Y11 , i1=>N1 , en=>L1);
    TSB_57 :  ORCAD_TSB 
      PORT MAP  (O=>Y12 , i1=>N2 , en=>L1);
    TSB_58 :  ORCAD_TSB 
      PORT MAP  (O=>Y13 , i1=>N3 , en=>L1);
    TSB_59 :  ORCAD_TSB 
      PORT MAP  (O=>Y14 , i1=>N4 , en=>L1);
    TSB_60 :  ORCAD_TSB 
      PORT MAP  (O=>Y21 , i1=>N5 , en=>L2);
    TSB_61 :  ORCAD_TSB 
      PORT MAP  (O=>Y22 , i1=>N6 , en=>L2);
    TSB_62 :  ORCAD_TSB 
      PORT MAP  (O=>Y23 , i1=>N7 , en=>L2);
    TSB_63 :  ORCAD_TSB 
      PORT MAP  (O=>Y24 , i1=>N8 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74246\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
BINRBON : IN  std_logic;
RBIN : IN  std_logic;
LTN : IN  std_logic;
OAN : OUT  std_logic;
OBN : OUT  std_logic;
OCN : OUT  std_logic;
ODN : OUT  std_logic;
OEN : OUT  std_logic;
OFN : OUT  std_logic;
OGN : OUT  std_logic);
END \74246\;

architecture model OF \74246\ IS
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
    L1 <= NOT (A AND LTN);
    L2 <= NOT (B AND LTN);
    L3 <= NOT (C AND LTN);
    L4 <= NOT (D);
    L5 <= NOT (RBIN);
    L6 <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND LTN);
    L7 <= NOT (L1 AND L6);
    L8 <= NOT (L2 AND L6);
    L9 <= NOT (L3 AND L6);
    L10 <= NOT (L4 AND L6);
    L11 <=  (L8 AND L10);
    L12 <=  (L1 AND L2 AND L9);
    L13 <=  (L7 AND L2 AND L3 AND L4);
    L14 <=  (L8 AND L10);
    L15 <=  (L7 AND L2 AND L9);
    L16 <=  (L1 AND L8 AND L9);
    L17 <=  (L9 AND L10);
    L18 <=  (L1 AND L8 AND L3);
    L19 <=  (L7 AND L2 AND L3 AND L4);
    L20 <=  (L1 AND L2 AND L9);
    L21 <=  (L7 AND L8 AND L9);
    L22 <=  (L2 AND L9);
    L23 <=  (L7 AND L8);
    L24 <=  (L8 AND L3);
    L25 <=  (L7 AND L3 AND L4);
    L26 <=  (L7 AND L8 AND L9);
    L27 <=  (L2 AND L3 AND L4 AND LTN);
    OAN <=  (L11 OR L12 OR L13) AFTER 1 ns;
    OBN <=  (L14 OR L15 OR L16) AFTER 1 ns;
    OCN <=  (L17 OR L18) AFTER 1 ns;
    ODN <=  (L19 OR L20 OR L21) AFTER 1 ns;
    OEN <=  (L7 OR L22) AFTER 1 ns;
    OFN <=  (L23 OR L24 OR L25) AFTER 1 ns;
    OGN <=  (L26 OR L27) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74247\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
BINRBON : IN  std_logic;
RBIN : IN  std_logic;
LTN : IN  std_logic;
OAN : OUT  std_logic;
OBN : OUT  std_logic;
OCN : OUT  std_logic;
ODN : OUT  std_logic;
OEN : OUT  std_logic;
OFN : OUT  std_logic;
OGN : OUT  std_logic);
END \74247\;

architecture model OF \74247\ IS
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
    L1 <= NOT (A AND LTN);
    L2 <= NOT (B AND LTN);
    L3 <= NOT (C AND LTN);
    L4 <= NOT (D);
    L5 <= NOT (RBIN);
    L6 <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND LTN);
    L7 <= NOT (L1 AND L6);
    L8 <= NOT (L2 AND L6);
    L9 <= NOT (L3 AND L6);
    L10 <= NOT (L4 AND L6);
    L11 <=  (L8 AND L10);
    L12 <=  (L1 AND L2 AND L9);
    L13 <=  (L7 AND L2 AND L3 AND L4);
    L14 <=  (L8 AND L10);
    L15 <=  (L7 AND L2 AND L9);
    L16 <=  (L1 AND L8 AND L9);
    L17 <=  (L9 AND L10);
    L18 <=  (L1 AND L8 AND L3);
    L19 <=  (L7 AND L2 AND L3 AND L4);
    L20 <=  (L1 AND L2 AND L9);
    L21 <=  (L7 AND L8 AND L9);
    L22 <=  (L2 AND L9);
    L23 <=  (L7 AND L8);
    L24 <=  (L8 AND L3);
    L25 <=  (L7 AND L3 AND L4);
    L26 <=  (L7 AND L8 AND L9);
    L27 <=  (L2 AND L3 AND L4 AND LTN);
    OAN <=  (L11 OR L12 OR L13) AFTER 1 ns;
    OBN <=  (L14 OR L15 OR L16) AFTER 1 ns;
    OCN <=  (L17 OR L18) AFTER 1 ns;
    ODN <=  (L19 OR L20 OR L21) AFTER 1 ns;
    OEN <=  (L7 OR L22) AFTER 1 ns;
    OFN <=  (L23 OR L24 OR L25) AFTER 1 ns;
    OGN <=  (L26 OR L27) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74248\ IS PORT(
AI : IN  std_logic;
BI : IN  std_logic;
CI : IN  std_logic;
DI : IN  std_logic;
BINRBON : IN  std_logic;
RBIN : IN  std_logic;
LTN : IN  std_logic;
A : OUT  std_logic;
B : OUT  std_logic;
C : OUT  std_logic;
D : OUT  std_logic;
E : OUT  std_logic;
F : OUT  std_logic;
G : OUT  std_logic);
END \74248\;

architecture model OF \74248\ IS
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
    L1 <= NOT (AI AND LTN);
    L2 <= NOT (BI AND LTN);
    L3 <= NOT (CI AND LTN);
    L4 <= NOT (DI);
    L5 <= NOT (RBIN);
    L6 <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND LTN);
    L7 <= NOT (L1 AND L6);
    L8 <= NOT (L2 AND L6);
    L9 <= NOT (L3 AND L6);
    L10 <= NOT (L4 AND L6);
    L11 <=  (L8 AND L10);
    L12 <=  (L1 AND L2 AND L9);
    L13 <=  (L7 AND L2 AND L3 AND L4);
    L14 <=  (L8 AND L10);
    L15 <=  (L7 AND L2 AND L9);
    L16 <=  (L1 AND L8 AND L9);
    L17 <=  (L9 AND L10);
    L18 <=  (L1 AND L8 AND L3);
    L19 <=  (L7 AND L2 AND L3 AND L4);
    L20 <=  (L1 AND L2 AND L9);
    L21 <=  (L7 AND L8 AND L9);
    L22 <=  (L2 AND L9);
    L23 <=  (L7 AND L8);
    L24 <=  (L8 AND L3);
    L25 <=  (L7 AND L3 AND L4);
    L26 <=  (L7 AND L8 AND L9);
    L27 <=  (L2 AND L3 AND L4 AND LTN);
    A <= NOT (L11 OR L12 OR L13) AFTER 1 ns;
    B <= NOT (L14 OR L15 OR L16) AFTER 1 ns;
    C <= NOT (L17 OR L18) AFTER 1 ns;
    D <= NOT (L19 OR L20 OR L21) AFTER 1 ns;
    E <= NOT (L7 OR L22) AFTER 1 ns;
    F <= NOT (L23 OR L24 OR L25) AFTER 1 ns;
    G <= NOT (L26 OR L27) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74251\ IS PORT(
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
GN : IN  std_logic;
WN : OUT  std_logic;
Y : OUT  std_logic);
END \74251\;

architecture model OF \74251\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GN);
    N1 <= NOT (A);
    N2 <= NOT (B);
    N3 <= NOT (C);
    L2 <= NOT (N1);
    L3 <= NOT (N2);
    L4 <= NOT (N3);
    L5 <=  (D0 AND N1 AND N2 AND N3 AND L1);
    L6 <=  (D1 AND L2 AND N2 AND N3 AND L1);
    L7 <=  (D2 AND N1 AND L3 AND N3 AND L1);
    L8 <=  (D3 AND L2 AND L3 AND N3 AND L1);
    L9 <=  (D4 AND N1 AND N2 AND L4 AND L1);
    L10 <=  (D5 AND L2 AND N2 AND L4 AND L1);
    L11 <=  (D6 AND N1 AND L3 AND L4 AND L1);
    L12 <=  (D7 AND L2 AND L3 AND L4 AND L1);
    L13 <= NOT (L5 OR L6 OR L7 OR L8 OR L9 OR L10 OR L11 OR L12);
    N4 <= NOT (L13);
    N5 <=  (L13);
    TSB_12 :  ORCAD_TSB 
      PORT MAP  (O=>Y , i1=>N4 , en=>L1);
    TSB_13 :  ORCAD_TSB 
      PORT MAP  (O=>WN , i1=>N5 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74253\ IS PORT(
GAN : IN  std_logic;
B : IN  std_logic;
CA3 : IN  std_logic;
CA2 : IN  std_logic;
CA1 : IN  std_logic;
CA0 : IN  std_logic;
YA : OUT  std_logic;
YB : OUT  std_logic;
CB0 : IN  std_logic;
CB1 : IN  std_logic;
CB2 : IN  std_logic;
CB3 : IN  std_logic;
A : IN  std_logic;
GBN : IN  std_logic);
END \74253\;

architecture model OF \74253\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GAN);
    L4 <= NOT (GBN);
    N1 <= NOT (B);
    N2 <= NOT (A);
    L2 <= NOT (N1);
    L3 <= NOT (N2);
    L5 <=  (N1 AND N2 AND CA0 AND L1);
    L6 <=  (N1 AND CA1 AND L3 AND L1);
    L7 <=  (N2 AND CA2 AND L2 AND L1);
    L8 <=  (CA3 AND L3 AND L2 AND L1);
    L9 <=  (N1 AND N2 AND CB0 AND L4);
    L10 <=  (N1 AND CB1 AND L3 AND L4);
    L11 <=  (N2 AND CB2 AND L2 AND L4);
    L12 <=  (CB3 AND L3 AND L2 AND L4);
    N3 <=  (L5 OR L6 OR L7 OR L8);
    N4 <=  (L9 OR L10 OR L11 OR L12);
    TSB_14 :  ORCAD_TSB 
      PORT MAP  (O=>YA , i1=>N3 , en=>L1);
    TSB_15 :  ORCAD_TSB 
      PORT MAP  (O=>YB , i1=>N4 , en=>L4);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74257\ IS PORT(
A1 : IN  std_logic;
B1 : IN  std_logic;
A2 : IN  std_logic;
B2 : IN  std_logic;
A3 : IN  std_logic;
B3 : IN  std_logic;
A4 : IN  std_logic;
B4 : IN  std_logic;
GN : IN  std_logic;
SEL : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic);
END \74257\;

architecture model OF \74257\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GN);
    N1 <= NOT (SEL);
    L2 <= NOT (N1);
    L3 <=  (A1 AND N1);
    L4 <=  (B1 AND L2);
    L5 <=  (A2 AND N1);
    L6 <=  (B2 AND L2);
    L7 <=  (A3 AND N1);
    L8 <=  (B3 AND L2);
    L9 <=  (A4 AND N1);
    L10 <=  (B4 AND L2);
    N2 <=  (L3 OR L4);
    N3 <=  (L5 OR L6);
    N4 <=  (L7 OR L8);
    N5 <=  (L9 OR L10);
    TSB_84 :  ORCAD_TSB 
      PORT MAP  (O=>Y1 , i1=>N2 , en=>L1);
    TSB_85 :  ORCAD_TSB 
      PORT MAP  (O=>Y2 , i1=>N3 , en=>L1);
    TSB_86 :  ORCAD_TSB 
      PORT MAP  (O=>Y3 , i1=>N4 , en=>L1);
    TSB_87 :  ORCAD_TSB 
      PORT MAP  (O=>Y4 , i1=>N5 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74258\ IS PORT(
A1 : IN  std_logic;
B1 : IN  std_logic;
A2 : IN  std_logic;
B2 : IN  std_logic;
A3 : IN  std_logic;
B3 : IN  std_logic;
A4 : IN  std_logic;
B4 : IN  std_logic;
GN : IN  std_logic;
SEL : IN  std_logic;
YN1 : OUT  std_logic;
YN2 : OUT  std_logic;
YN3 : OUT  std_logic;
YN4 : OUT  std_logic);
END \74258\;

architecture model OF \74258\ IS
	COMPONENT orcad_itsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (o : OUT std_logic;
	 	i1 : IN std_logic;
	 	en : IN std_logic
	 	);
	END COMPONENT;
	
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
    L1 <= NOT (GN);
    N1 <= NOT (SEL);
    L2 <= NOT (N1);
    L3 <=  (A1 AND N1);
    L4 <=  (B1 AND L2);
    L5 <=  (A2 AND N1);
    L6 <=  (B2 AND L2);
    L7 <=  (A3 AND N1);
    L8 <=  (B3 AND L2);
    L9 <=  (A4 AND N1);
    L10 <=  (B4 AND L2);
    N2 <=  (L3 OR L4);
    N3 <=  (L5 OR L6);
    N4 <=  (L7 OR L8);
    N5 <=  (L9 OR L10);
    ITSB_0 :  ORCAD_ITSB 
      PORT MAP  (O=>YN1 , i1=>N2 , en=>L1);
    ITSB_1 :  ORCAD_ITSB 
      PORT MAP  (O=>YN2 , i1=>N3 , en=>L1);
    ITSB_2 :  ORCAD_ITSB 
      PORT MAP  (O=>YN3 , i1=>N4 , en=>L1);
    ITSB_3 :  ORCAD_ITSB 
      PORT MAP  (O=>YN4 , i1=>N5 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74259\ IS PORT(
DATA : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
GN : IN  std_logic;
CLRN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic);
END \74259\;

architecture model OF \74259\ IS
	COMPONENT orcad_dlatchpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;
	
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
    N1 <= NOT (S2);
    N2 <= NOT (S1);
    N3 <= NOT (S0);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);
    L4 <= NOT (GN);
    L5 <=  (L1 AND L2 AND L3 AND L4);
    L6 <=  (L1 AND L2 AND N3 AND L4);
    L7 <=  (L1 AND N2 AND L3 AND L4);
    L8 <=  (L1 AND N2 AND N3 AND L4);
    L9 <=  (N1 AND L2 AND L3 AND L4);
    L10 <=  (N1 AND L2 AND N3 AND L4);
    L11 <=  (N1 AND N2 AND L3 AND L4);
    L12 <=  (N1 AND N2 AND N3 AND L4);
    DLATCHPC_8 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q7 , d=>DATA , enable=>L5 , pr=>ONE , cl=>CLRN);
    DLATCHPC_9 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q6 , d=>DATA , enable=>L6 , pr=>ONE , cl=>CLRN);
    DLATCHPC_10 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q5 , d=>DATA , enable=>L7 , pr=>ONE , cl=>CLRN);
    DLATCHPC_11 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q4 , d=>DATA , enable=>L8 , pr=>ONE , cl=>CLRN);
    DLATCHPC_12 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q3 , d=>DATA , enable=>L9 , pr=>ONE , cl=>CLRN);
    DLATCHPC_13 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q2 , d=>DATA , enable=>L10 , pr=>ONE , cl=>CLRN);
    DLATCHPC_14 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q1 , d=>DATA , enable=>L11 , pr=>ONE , cl=>CLRN);
    DLATCHPC_15 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>Q0 , d=>DATA , enable=>L12 , pr=>ONE , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74260\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
AYN : OUT  std_logic;
BYN : OUT  std_logic);
END \74260\;

architecture model OF \74260\ IS

    BEGIN
    AYN <= NOT (A0 OR A1 OR A2 OR A3 OR A4) AFTER 1 ns;
    BYN <= NOT (B0 OR B1 OR B2 OR B3 OR B4) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74261\ IS PORT(
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
Q4N : OUT  std_logic);
END \74261\;

architecture model OF \74261\ IS
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
	 SIGNAL FB0 : std_logic;
	 SIGNAL FB1 : std_logic;
	 SIGNAL FB2 : std_logic;
	 SIGNAL FB3 : std_logic;
	 SIGNAL FB4 : std_logic;

    BEGIN
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);
    L4 <= NOT (N4);
    L5 <= NOT (N5);
    L6 <= NOT (N6 OR N7);
    L7 <= NOT (G);
    L8 <= NOT (N8 OR L7);
    L9 <=  (L1 AND N6 AND N8);
    L10 <=  (N1 AND N7 AND L8);
    L11 <=  (L2 AND L6 AND N8);
    L12 <=  (N2 AND L6 AND L8);
    L13 <=  (L7 AND FB0);
    L14 <=  (L2 AND N6 AND N8);
    L15 <=  (N2 AND N7 AND L8);
    L16 <=  (L3 AND L6 AND N8);
    L17 <=  (N3 AND L6 AND L8);
    L18 <=  (L7 AND FB1);
    L19 <=  (L3 AND N6 AND N8);
    L20 <=  (N3 AND N7 AND L8);
    L21 <=  (L4 AND L6 AND N8);
    L22 <=  (N4 AND L6 AND L8);
    L23 <=  (L7 AND FB2);
    L24 <=  (L4 AND N8 AND N6);
    L25 <=  (N4 AND N7 AND L8);
    L26 <=  (L5 AND L6 AND N8);
    L27 <=  (L6 AND N5 AND L8);
    L28 <=  (L7 AND FB3);
    L29 <=  (L5 AND N6 AND N8);
    L30 <=  (N5 AND N7 AND L8);
    L31 <=  (L5 AND L6 AND N8);
    L32 <=  (L6 AND N5 AND L8);
    L33 <= NOT (FB4);
    L34 <=  (L7 AND L33);
    N1 <= NOT (B0);
    N2 <= NOT (B1);
    N3 <= NOT (B2);
    N4 <= NOT (B3);
    N5 <= NOT (B4);
    N6 <=  (M0 AND M1);
    N7 <= NOT (M0 OR M1);
    N8 <= NOT (M2 OR L7);
    FB0 <=  (L9 OR L10 OR L11 OR L12 OR L13) AFTER 1 ns;
    FB1 <=  (L14 OR L15 OR L16 OR L17 OR L18) AFTER 1 ns;
    FB2 <=  (L19 OR L20 OR L21 OR L22 OR L23) AFTER 1 ns;
    FB3 <=  (L24 OR L25 OR L26 OR L27 OR L28) AFTER 1 ns;
    FB4 <=  NOT (L29 OR L30 OR L31 OR L32 OR L34) AFTER 1 ns;

    Q0 <=  FB0;
    Q1 <=  FB1;
    Q2 <=  FB2;
    Q3 <=  FB3;
    Q4N <= FB4;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74265\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
W1 : OUT  std_logic;
W2 : OUT  std_logic;
W3 : OUT  std_logic;
W4 : OUT  std_logic;
Y1N : OUT  std_logic;
Y2N : OUT  std_logic;
Y3N : OUT  std_logic;
Y4N : OUT  std_logic);
END \74265\;

architecture model OF \74265\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    
    N1 <= NOT (A1);
    N2 <= NOT (A2);
    N3 <= NOT (A3);
    N4 <= NOT (A4);
    N5 <= NOT (B2);
    N6 <= NOT (B3);

    W1 <= A1 AFTER 1 ns;
    W4 <= A4 AFTER 1 ns;
    Y1N <= N1 AFTER 1 ns;
    Y4N <= N4 AFTER 1 ns;

    W2 <= A2 AND B2 AFTER 1 ns;
    W3 <= A3 AND B3 AFTER 1 ns;
    Y2N <= N2 OR N5 AFTER 1 ns;
    Y3N <= N3 OR N6 AFTER 1 ns;
END model;    
    

library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74273\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
CLRN : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic);
END \74273\;

architecture model OF \74273\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

    BEGIN
    DQFFC_58 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q1 , d=>D1 , clk=>CLK , cl=>CLRN);
    DQFFC_59 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q2 , d=>D2 , clk=>CLK , cl=>CLRN);
    DQFFC_60 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q3 , d=>D3 , clk=>CLK , cl=>CLRN);
    DQFFC_61 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q4 , d=>D4 , clk=>CLK , cl=>CLRN);
    DQFFC_62 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q5 , d=>D5 , clk=>CLK , cl=>CLRN);
    DQFFC_63 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q6 , d=>D6 , clk=>CLK , cl=>CLRN);
    DQFFC_64 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q7 , d=>D7 , clk=>CLK , cl=>CLRN);
    DQFFC_65 :  ORCAD_DQFFC 
      PORT MAP  (q=>Q8 , d=>D8 , clk=>CLK , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74276\ IS PORT(
J1 : IN  std_logic;
CLK1 : IN  std_logic;
K1N : IN  std_logic;
J2 : IN  std_logic;
CLK2 : IN  std_logic;
K2N : IN  std_logic;
J3 : IN  std_logic;
CLK3 : IN  std_logic;
K3N : IN  std_logic;
J4 : IN  std_logic;
CLK4 : IN  std_logic;
K4N : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q1N : OUT  std_logic;
Q2N : OUT  std_logic;
Q3N : OUT  std_logic;
Q4N : OUT  std_logic;
PRN : IN  std_logic;
CLRN : IN  std_logic);
END \74276\;

architecture model OF \74276\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (K1N);
    L2 <= NOT (K2N);
    L3 <= NOT (K3N);
    L4 <= NOT (K4N);
    JKFFPC_41 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q1 , qNot=>Q1N , j=>J1 , k=>L1 , clk=>CLK1 , pr=>PRN , cl=>CLRN);
    JKFFPC_42 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q2 , qNot=>Q2N , j=>J2 , k=>L2 , clk=>CLK2 , pr=>PRN , cl=>CLRN);
    JKFFPC_43 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q3 , qNot=>Q3N , j=>J3 , k=>L3 , clk=>CLK4 , pr=>PRN , cl=>CLRN);
    JKFFPC_44 :  ORCAD_JKFFPC 
      PORT MAP  (q=>Q4 , qNot=>Q4N , j=>J4 , k=>L4 , clk=>CLK4 , pr=>PRN , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74278\ IS PORT(
D4 : IN  std_logic;
D3 : IN  std_logic;
D2 : IN  std_logic;
D1 : IN  std_logic;
P0 : IN  std_logic;
G : IN  std_logic;
Y4 : OUT  std_logic;
Y3 : OUT  std_logic;
Y2 : OUT  std_logic;
Y1 : OUT  std_logic;
P1 : OUT  std_logic);
END \74278\;

architecture model OF \74278\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
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
    N5 <= NOT (N1);
    N6 <= NOT (N2);
    N7 <= NOT (N3);
    N8 <= NOT (N4);
    DLATCH_20 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>D1 , enable=>G);
    DLATCH_21 :  ORCAD_DLATCH 
      PORT MAP  (q=>N2 , d=>D2 , enable=>G);
    DLATCH_22 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>D3 , enable=>G);
    DLATCH_23 :  ORCAD_DLATCH 
      PORT MAP  (q=>N4 , d=>D4 , enable=>G);
    N9 <=  (N1);
    N10 <=  (N2);
    N11 <=  (N3);
    N12 <=  (N4);
    Y1 <= NOT (N5 OR P0) AFTER 1 ns;
    Y2 <= NOT (N6 OR N9 OR P0) AFTER 1 ns;
    Y3 <= NOT (N7 OR N9 OR N10 OR P0) AFTER 1 ns;
    Y4 <= NOT (N8 OR N9 OR N10 OR N11 OR P0) AFTER 1 ns;
    P1 <=  (N1 OR N2 OR N3 OR N4 OR P0) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74279\ IS PORT(
R1N : IN  std_logic;
S11N : IN  std_logic;
S12N : IN  std_logic;
R2N : IN  std_logic;
S2N : IN  std_logic;
R3N : IN  std_logic;
S31N : IN  std_logic;
S32N : IN  std_logic;
R4N : IN  std_logic;
S4N : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic);
END \74279\;

architecture model OF \74279\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL ZERO : std_logic := '0';
	 SIGNAL FB1 : std_logic;
	 SIGNAL FB2 : std_logic;
	 SIGNAL FB3 : std_logic;
	 SIGNAL FB4 : std_logic;

    BEGIN
    L1 <=  (S11N AND S12N);
    L2 <=  (S31N AND S32N);
    DQFFPC_16 :  ORCAD_DQFFPC 
      PORT MAP  (q=>FB1 , d=>FB1 , clk=>ZERO , pr=>L1 , cl=>R1N);
    DQFFPC_17 :  ORCAD_DQFFPC 
      PORT MAP  (q=>FB2 , d=>FB2 , clk=>ZERO , pr=>S2N , cl=>R2N);
    DQFFPC_18 :  ORCAD_DQFFPC 
      PORT MAP  (q=>FB3 , d=>FB3 , clk=>ZERO , pr=>L2 , cl=>R3N);
    DQFFPC_19 :  ORCAD_DQFFPC 
      PORT MAP  (q=>FB4 , d=>FB4 , clk=>ZERO , pr=>S4N , cl=>R4N);
    Q1 <= FB1;
    Q2 <= FB2;
    Q3 <= FB3;
    Q4 <= FB4;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74280\ IS PORT(
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
ODD : OUT  std_logic);
END \74280\;

architecture model OF \74280\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <=  (A XOR B XOR C XOR D XOR E XOR F XOR G XOR H XOR I);
    EVEN <= NOT (L1) AFTER 1 ns;
    ODD <=  (L1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74283\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
CIN : IN  std_logic;
SUM1 : OUT  std_logic;
SUM2 : OUT  std_logic;
SUM3 : OUT  std_logic;
SUM4 : OUT  std_logic;
COUT : OUT  std_logic);
END \74283\;

architecture model OF \74283\ IS
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
    N1 <= NOT (CIN);
    N10 <= NOT (CIN);
    N2 <= NOT (A1 OR B1);
    N3 <= NOT (A1 AND B1);
    N4 <= NOT (B2 OR A2);
    N5 <= NOT (B2 AND A2);
    N6 <= NOT (A3 OR B3);
    N7 <= NOT (A3 AND B3);
    N8 <= NOT (B4 OR A4);
    N9 <= NOT (B4 AND A4);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <=  (L2 AND N3);
    L4 <=  (N1 AND N3);
    L5 <= NOT (N4);
    L6 <=  (L5 AND N5);
    L7 <=  (N1 AND N3 AND N5);
    L8 <=  (N5 AND N2);
    L9 <= NOT (N6);
    L10 <=  (L9 AND N7);
    L11 <=  (N1 AND N3 AND N5 AND N7);
    L12 <=  (N5 AND N7 AND N2);
    L13 <=  (N7 AND N4);
    L14 <= NOT (N8);
    L15 <=  (L14 AND N9);
    L16 <=  (N10 AND N3 AND N5 AND N7 AND N9);
    L17 <=  (N5 AND N7 AND N9 AND N2);
    L18 <=  (N7 AND N9 AND N4);
    L19 <=  (N9 AND N6);
    L20 <= NOT (L4 OR N2);
    L21 <= NOT (L7 OR L8 OR N4);
    L22 <= NOT (L11 OR L12 OR L13 OR N6);
    SUM1 <=  (L1 XOR L3) AFTER 1 ns;
    SUM2 <=  (L20 XOR L6) AFTER 1 ns;
    SUM3 <=  (L21 XOR L10) AFTER 1 ns;
    SUM4 <=  (L22 XOR L15) AFTER 1 ns;
    COUT <= NOT (L16 OR L17 OR L18 OR L19 OR N8) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74284\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
GAN : IN  std_logic;
GBN : IN  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic);
END \74284\;

architecture model OF \74284\ IS

    BEGIN
    PROCESS(A1, A2, A3, A4, B1, B2, B3, B4, GAN, GBN)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;
    VARIABLE y : INTEGER := 0;

    BEGIN
	a := 0;
	b := 0;

    --convert vector to integer
    FOR i IN 0 TO 3 LOOP
	     CASE i IS
         WHEN 0 =>
              if(A1 = '1') THEN
                  a := a + 2**0;
              END if;
         WHEN 1 =>
              if(A2 = '1') THEN
                  a := a + 2**1;
              END if;
         WHEN 2 =>
              if(A3 = '1') THEN
                  a := a + 2**2;
              END if;
         WHEN 3 =>
              if(A4 = '1') THEN
                  a := a + 2**3;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    --convert vector to integer
    FOR i IN 0 TO 3 LOOP
	     CASE i IS
         WHEN 0 =>
              if(B1 = '1') THEN
                  b := b + 2**0;
              END if;
         WHEN 1 =>
              if(B2 = '1') THEN
                  b := b + 2**1;
              END if;
         WHEN 2 =>
              if(B3 = '1') THEN
                  b := b + 2**2;
              END if;
         WHEN 3 =>
              if(B4 = '1') THEN
                  b := b + 2**3;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    if(GAN = '1') OR (GBN = '1') THEN
         Y5 <= '0' AFTER 1 ns;
         Y6 <= '0' AFTER 1 ns;
         Y7 <= '0' AFTER 1 ns;
         Y8 <= '0' AFTER 1 ns;
    ELSE
         y := a * b;

         --convert integer to vector
         FOR i IN 0 TO 7 LOOP
              if(y MOD 2 = 1) THEN
                   CASE i IS
                   WHEN 0 =>
                        Y5 <= '1' AFTER 1 ns;
                   WHEN 1 =>
                        Y6 <= '1' AFTER 1 ns;
                   WHEN 2 =>
                        Y7 <= '1' AFTER 1 ns;
                   WHEN 3 =>
                        Y8 <= '1' AFTER 1 ns;
                   WHEN OTHERS => NULL;
                   END CASE;
              ELSE
                   CASE i IS
                   WHEN 0 =>
                        Y5 <= '0' AFTER 1 ns;
                   WHEN 1 =>
                        Y6 <= '0' AFTER 1 ns;
                   WHEN 2 =>
                        Y7 <= '0' AFTER 1 ns;
                   WHEN 3 =>
                        Y8 <= '0' AFTER 1 ns;
                   WHEN OTHERS => NULL;
                   END CASE;
              END if;
              y := y/2;
         END LOOP;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74285\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
GAN : IN  std_logic;
GBN : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic);
END \74285\;

architecture model OF \74285\ IS

    BEGIN
    PROCESS(A1, A2, A3, A4, B1, B2, B3, B4, GAN, GBN)
    VARIABLE a : INTEGER := 0;
    VARIABLE b : INTEGER := 0;
    VARIABLE y : INTEGER := 0;

    BEGIN
	a := 0;
	b := 0;

    --convert vector to integer
    FOR i IN 0 TO 3 LOOP
	     CASE i IS
         WHEN 0 =>
              if(A1 = '1') THEN
                  a := a + 2**0;
              END if;
         WHEN 1 =>
              if(A2 = '1') THEN
                  a := a + 2**1;
              END if;
         WHEN 2 =>
              if(A3 = '1') THEN
                  a := a + 2**2;
              END if;
         WHEN 3 =>
              if(A4 = '1') THEN
                  a := a + 2**3;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    --convert vector to integer
    FOR i IN 0 TO 3 LOOP
	     CASE i IS
         WHEN 0 =>
              if(B1 = '1') THEN
                  b := b + 2**0;
              END if;
         WHEN 1 =>
              if(B2 = '1') THEN
                  b := b + 2**1;
              END if;
         WHEN 2 =>
              if(B3 = '1') THEN
                  b := b + 2**2;
              END if;
         WHEN 3 =>
              if(B4 = '1') THEN
                  b := b + 2**3;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    if(GAN = '1') OR (GBN = '1') THEN
         Y1 <= '0' AFTER 1 ns;
         Y2 <= '0' AFTER 1 ns;
         Y3 <= '0' AFTER 1 ns;
         Y4 <= '0' AFTER 1 ns;
    ELSE
         y := a * b;

         --convert integer to vector
         FOR i IN 0 TO 7 LOOP
              if(y MOD 2 = 1) THEN
                   CASE i IS
                   WHEN 0 =>
                        Y1 <= '1' AFTER 1 ns;
                   WHEN 1 =>
                        Y2 <= '1' AFTER 1 ns;
                   WHEN 2 =>
                        Y3 <= '1' AFTER 1 ns;
                   WHEN 3 =>
                        Y4 <= '1' AFTER 1 ns;
                   WHEN OTHERS => NULL;
                   END CASE;
              ELSE
                   CASE i IS
                   WHEN 0 =>
                        Y1 <= '0' AFTER 1 ns;
                   WHEN 1 =>
                        Y2 <= '0' AFTER 1 ns;
                   WHEN 2 =>
                        Y3 <= '0' AFTER 1 ns;
                   WHEN 3 =>
                        Y4 <= '0' AFTER 1 ns;
                   WHEN OTHERS => NULL;
                   END CASE;
              END if;
              y := y/2;
         END LOOP;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74290\ IS PORT(
CLKA : IN  std_logic;
CLKB : IN  std_logic;
CLRA : IN  std_logic;
CLRB : IN  std_logic;
SET9A : IN  std_logic;
SET9B : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74290\;

architecture model OF \74290\ IS
	COMPONENT orcad_jkffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl,  
	 	pr   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (SET9A AND SET9B);
    L2 <= NOT (CLRA AND CLRB);
    L3 <=  (L1 AND L2);
    L4 <=  (N7 AND N5);
    N1 <= NOT (CLKA);
    N2 <= NOT (CLKB);
    JKFFPC_45 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N3 , qNot=>N4 , j=>ONE , k=>ONE , clk=>N1 , pr=>L1 , cl=>L2);
    JKFFPC_46 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N5 , qNot=>N6 , j=>N10 , k=>ONE , clk=>N2 , pr=>ONE , cl=>L3);
    JKFFPC_47 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N7 , qNot=>N8 , j=>ONE , k=>ONE , clk=>N6 , pr=>ONE , cl=>L3);
    JKFFPC_48 :  ORCAD_JKFFPC 
      PORT MAP  (q=>N9 , qNot=>N10 , j=>L4 , k=>N9 , clk=>N2 , pr=>L1 , cl=>L2);
    QA <=  (N3) AFTER 1 ns;
    QB <=  (N5) AFTER 1 ns;
    QC <=  (N7) AFTER 1 ns;
    QD <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74292\ IS PORT(
A    : IN     std_logic;
B    : IN     std_logic;
C    : IN     std_logic;
D    : IN     std_logic;
E    : IN     std_logic;
CLK1 : IN     std_logic;
CLK2 : IN     std_logic;
CLRN : IN     std_logic;
TP1  : INOUT  std_logic;
TP2  : INOUT  std_logic;
TP3  : INOUT  std_logic;
Q    : INOUT  std_logic);
END \74292\;

architecture model OF \74292\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <= CLK1 OR CLK2;

    PROCESS(CLRN, L1)
    VARIABLE prog    : INTEGER := 0;
    VARIABLE progtp1 : INTEGER := 0;
    VARIABLE progtp2 : INTEGER := 0;
    VARIABLE progtp3 : INTEGER := 0;
    VARIABLE divq    : INTEGER := 0;
    VARIABLE divtp1  : INTEGER := 0;
    VARIABLE divtp2  : INTEGER := 0;
    VARIABLE divtp3  : INTEGER := 0;

    BEGIN
    prog := 0;
    --convert vector to integer
    FOR i IN 0 TO 4 LOOP
	     CASE i IS
         WHEN 0 =>
              if(A = '1') THEN
                  prog := prog + 2**0;
              END if;
         WHEN 1 =>
              if(B = '1') THEN
                  prog := prog + 2**1;
              END if;
         WHEN 2 =>
              if(C = '1') THEN
                  prog := prog + 2**2;
              END if;
         WHEN 3 =>
              if(D = '1') THEN
                  prog := prog + 2**3;
              END if;
         WHEN 4 =>
              if(E = '1') THEN
                  prog := prog + 2**4;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    CASE prog IS
    WHEN 2 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 3 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 4 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 5 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 6 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 7 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 8 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 2;
    WHEN 9 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 2;
    WHEN 10 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 4;
    WHEN 11 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 4;
    WHEN 12 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 6;
    WHEN 13 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 6;
    WHEN 14 =>
         progtp1 := 9;
         progtp2 := 0;
         progtp3 := 8;
    WHEN 15 =>
         progtp1 := 9;
         progtp2 := 0;
         progtp3 := 8;
    WHEN 16 =>
         progtp1 := 9;
         progtp2 := 3;
         progtp3 := 10;
    WHEN 17 =>
         progtp1 := 9;
         progtp2 := 3;
         progtp3 := 10;
    WHEN 18 =>
         progtp1 := 9;
         progtp2 := 5;
         progtp3 := 12;
    WHEN 19 =>
         progtp1 := 9;
         progtp2 := 5;
         progtp3 := 12;
    WHEN 20 =>
         progtp1 := 9;
         progtp2 := 7;
         progtp3 := 14;
    WHEN 21 =>
         progtp1 := 9;
         progtp2 := 7;
         progtp3 := 14;
    WHEN 22 =>
         progtp1 := 0;
         progtp2 := 9;
         progtp3 := 16;
    WHEN 23 =>
         progtp1 := 0;
         progtp2 := 9;
         progtp3 := 16;
    WHEN 24 =>
         progtp1 := 3;
         progtp2 := 11;
         progtp3 := 18;
    WHEN 25 =>
         progtp1 := 3;
         progtp2 := 11;
         progtp3 := 18;
    WHEN 26 =>
         progtp1 := 5;
         progtp2 := 13;
         progtp3 := 20;
    WHEN 27 =>
         progtp1 := 5;
         progtp2 := 13;
         progtp3 := 20;
    WHEN 28 =>
         progtp1 := 7;
         progtp2 := 15;
         progtp3 := 22;
    WHEN 29 =>
         progtp1 := 7;
         progtp2 := 15;
         progtp3 := 22;
    WHEN 30 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN 31 =>
         progtp1 := 9;
         progtp2 := 17;
         progtp3 := 24;
    WHEN OTHERS => NULL;
    END CASE;
	 
    if(CLRN = '0') THEN
         Q   <= '0' AFTER 1 ns;
         	divq := 0;
         TP1 <= '0' AFTER 1 ns;
         	divtp1 := 0;
         TP2 <= '0' AFTER 1 ns;
         	divtp2 := 0;
         TP3 <= '0' AFTER 1 ns;
         	divtp3 := 0;
    ELSif(prog /= 0) AND (prog /= 1) THEN
         if(L1 = '1') AND L1'EVENT THEN
              divq   := divq + 1;
              divtp1 := divtp1 + 1;
              divtp2 := divtp2 + 1;
              divtp3 := divtp3 + 1;
         END if;

         if(divq = 2**prog) THEN
              Q <= NOT (Q);
              divq := 0;
         END if;
             
         if(prog = 22) OR (prog = 23) THEN
              TP1 <= '0' AFTER 1 ns;
         ELSif(divtp1 = 2**progtp1) THEN
              TP1 <= NOT (TP1);
              divtp1 := 0;
         END if;

         if(prog = 14) OR (prog = 15) THEN
              TP2 <= '0' AFTER 1 ns;
         ELSif(divtp2 = 2**progtp2) THEN
              TP2 <= NOT (TP2);
              divtp2 := 0;
         END if;

         if(divtp3 = 2**progtp3) THEN
              TP3 <= NOT (TP3);
              divtp3 := 0;
         END if;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74293\ IS PORT(
CLKA : IN  std_logic;
CLKB : IN  std_logic;
CLRA : IN  std_logic;
CLRB : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74293\;

architecture model OF \74293\ IS
	COMPONENT orcad_dqffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, pr   : IN std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (CLKA);
    N2 <= NOT (CLKB);
    L1 <= NOT (CLRA AND CLRB);
    L2 <= NOT (N3);
    L3 <= NOT (N4);
    L4 <= NOT (N5);
    L5 <= NOT (N6);
    DQFFP_0 :  ORCAD_DQFFP 
      PORT MAP  (q=>N3 , d=>L2 , clk=>N1 , pr=>L1);
    DQFFP_1 :  ORCAD_DQFFP 
      PORT MAP  (q=>N4 , d=>L3 , clk=>N2 , pr=>L1);
    DQFFP_2 :  ORCAD_DQFFP 
      PORT MAP  (q=>N5 , d=>L4 , clk=>N4 , pr=>L1);
    DQFFP_3 :  ORCAD_DQFFP 
      PORT MAP  (q=>N6 , d=>L5 , clk=>N5 , pr=>L1);
    QA <= NOT (N3) AFTER 1 ns;
    QB <= NOT (N4) AFTER 1 ns;
    QC <= NOT (N5) AFTER 1 ns;
    QD <= NOT (N6) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74294\ IS PORT(
A    : IN     std_logic;
B    : IN     std_logic;
C    : IN     std_logic;
D    : IN     std_logic;
CLK1 : IN     std_logic;
CLK2 : IN     std_logic;
CLRN : IN     std_logic;
TP   : INOUT  std_logic;
Q    : INOUT  std_logic);
END \74294\;

architecture model OF \74294\ IS
    SIGNAL L1 : std_logic;

    BEGIN
    L1 <= CLK1 OR CLK2;

    PROCESS(CLRN, L1)
    VARIABLE prog    : INTEGER := 0;
    VARIABLE progtp  : INTEGER := 0;
    VARIABLE divq    : INTEGER := 0;
    VARIABLE divtp   : INTEGER := 0;

    BEGIN
    prog := 0;
    --convert vector to integer
    FOR i IN 0 TO 3 LOOP
	     CASE i IS
         WHEN 0 =>
              if(A = '1') THEN
                  prog := prog + 2**0;
              END if;
         WHEN 1 =>
              if(B = '1') THEN
                  prog := prog + 2**1;
              END if;
         WHEN 2 =>
              if(C = '1') THEN
                  prog := prog + 2**2;
              END if;
         WHEN 3 =>
              if(D = '1') THEN
                  prog := prog + 2**3;
              END if;
         WHEN OTHERS => NULL;
         END CASE;
	END LOOP;

    CASE prog IS
    WHEN 2 =>
         progtp := 9;
    WHEN 3 =>
         progtp := 9;
    WHEN 4 =>
         progtp := 9;
    WHEN 5 =>
         progtp := 9;
    WHEN 6 =>
         progtp := 9;
    WHEN 7 =>
         progtp := 0;
    WHEN 8 =>
         progtp := 2;
    WHEN 9 =>
         progtp := 3;
    WHEN 10 =>
         progtp := 4;
    WHEN 11 =>
         progtp := 5;
    WHEN 12 =>
         progtp := 6;
    WHEN 13 =>
         progtp := 7;
    WHEN 14 =>
         progtp := 8;
    WHEN 15 =>
         progtp := 9;
    WHEN OTHERS => NULL;
    END CASE;

    if(CLRN = '0') THEN
         Q  <= '0' AFTER 1 ns;
         	divq := 0;
         TP <= '0' AFTER 1 ns;
         	divtp := 0;
    ELSif(prog /= 0) AND (prog /= 1) THEN
         if(L1 = '1') AND L1'EVENT THEN
              divq   := divq + 1;
              divtp  := divtp + 1;
         END if;

         if(divq = 2**prog) THEN
              Q <= NOT (Q);
              divq := 0;
         END if;
             
         if(prog = 7) THEN
              TP <= '0' AFTER 1 ns;
         ELSif(divtp = 2**progtp) THEN
              TP <= NOT (TP);
              divtp := 0;
         END if;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74295\ IS PORT(
SER : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
CLK : IN  std_logic;
LDSHN : IN  std_logic;
OE : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic);
END \74295\;

architecture model OF \74295\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (LDSHN);
    L2 <=  (L1 AND SER);
    L3 <=  (LDSHN AND D0);
    L4 <=  (L2 OR L3);
    L5 <=  (N2 AND L1);
    L6 <=  (LDSHN AND D1);
    L7 <=  (L5 OR L6);
    L8 <=  (N3 AND L1);
    L9 <=  (LDSHN AND D2);
    L10 <=  (L8 OR L9);
    L11 <=  (N4 AND L1);
    L12 <=  (LDSHN AND D3);
    L13 <=  (L11 OR L12);
    N1 <= NOT (CLK);
    DQFF_43 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>L4 , clk=>N1);
    DQFF_44 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L7 , clk=>N1);
    DQFF_45 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L10 , clk=>N1);
    DQFF_46 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L13 , clk=>N1);
    N6 <=  (N2);
    N7 <=  (N3);
    N8 <=  (N4);
    N9 <=  (N5);
    TSB_92 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N6 , en=>OE);
    TSB_93 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N7 , en=>OE);
    TSB_94 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N8 , en=>OE);
    TSB_95 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N9 , en=>OE);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74298\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
WRSL : IN  std_logic;
CLKN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74298\;

architecture model OF \74298\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (CLKN);
    N2 <= NOT (WRSL);
    L1 <= NOT (N2);
    L2 <=  (A1 AND N2);
    L3 <=  (A2 AND L1);
    L4 <=  (B1 AND N2);
    L5 <=  (B2 AND L1);
    L6 <=  (C1 AND N2);
    L7 <=  (C2 AND L1);
    L8 <=  (D1 AND N2);
    L9 <=  (D2 AND L1);
    L10 <=  (L2 OR L3);
    L11 <=  (L4 OR L5);
    L12 <=  (L6 OR L7);
    L13 <=  (L8 OR L9);
    DQFF_26 :  ORCAD_DQFF 
      PORT MAP  (q=>QA , d=>L10 , clk=>N1);
    DQFF_27 :  ORCAD_DQFF 
      PORT MAP  (q=>QB , d=>L11 , clk=>N1);
    DQFF_28 :  ORCAD_DQFF 
      PORT MAP  (q=>QC , d=>L12 , clk=>N1);
    DQFF_29 :  ORCAD_DQFF 
      PORT MAP  (q=>QD , d=>L13 , clk=>N1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74299\ IS PORT(
S0 : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
GQG : INOUT  std_logic;
EQE : INOUT  std_logic;
CQC : INOUT  std_logic;
AQA : INOUT  std_logic;
QA2 : OUT  std_logic;
CLRN : IN  std_logic;
SR : IN  std_logic;
CLK : IN  std_logic;
BQB : INOUT  std_logic;
DQD : INOUT  std_logic;
FQF : INOUT  std_logic;
HQH : INOUT  std_logic;
QH2 : OUT  std_logic;
SL : IN  std_logic;
S1 : IN  std_logic);
END \74299\;

architecture model OF \74299\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (S1);
    L2 <= NOT (S0);
    N1 <=  (S1 AND S0);
    N2 <=  (S1 AND L2);
    N3 <=  (L1 AND S0);
    N4 <=  (L1 AND L2);
    N5 <= NOT (S1 AND S0);
    N6 <= NOT (G1N OR G2N);
    L3 <=  (N5 AND N6);
    L4 <=  (SR AND N3);
    L5 <=  (N2 AND N8);
    L6 <=  (N1 AND AQA);
    L7 <=  (N4 AND N7);
    L8 <=  (L4 OR L5 OR L6 OR L7);
    L9 <=  (N7 AND N3);
    L10 <=  (N2 AND N9);
    L11 <=  (N1 AND BQB);
    L12 <=  (N4 AND N8);
    L13 <=  (L9 OR L10 OR L11 OR L12);
    L14 <=  (N8 AND N3);
    L15 <=  (N2 AND N10);
    L16 <=  (N1 AND CQC);
    L17 <=  (N4 AND N9);
    L18 <=  (L14 OR L15 OR L16 OR L17);
    L19 <=  (N9 AND N3);
    L20 <=  (N2 AND N11);
    L21 <=  (N1 AND DQD);
    L22 <=  (N4 AND N10);
    L23 <=  (L19 OR L20 OR L21 OR L22);
    L24 <=  (N10 AND N3);
    L25 <=  (N2 AND N12);
    L26 <=  (N1 AND EQE);
    L27 <=  (N4 AND N11);
    L28 <=  (L24 OR L25 OR L26 OR L27);
    L29 <=  (N11 AND N3);
    L30 <=  (N2 AND N13);
    L31 <=  (N1 AND FQF);
    L32 <=  (N4 AND N12);
    L33 <=  (L29 OR L30 OR L31 OR L32);
    L34 <=  (N12 AND N3);
    L35 <=  (N2 AND N14);
    L36 <=  (N1 AND GQG);
    L37 <=  (N4 AND N13);
    L38 <=  (L34 OR L35 OR L36 OR L37);
    L39 <=  (N13 AND N3);
    L40 <=  (N2 AND SL);
    L41 <=  (N1 AND HQH);
    L42 <=  (N4 AND N14);
    L43 <=  (L39 OR L40 OR L41 OR L42);
    DQFFC_84 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L8 , clk=>CLK , cl=>CLRN);
    DQFFC_85 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L13 , clk=>CLK , cl=>CLRN);
    DQFFC_86 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L18 , clk=>CLK , cl=>CLRN);
    DQFFC_87 :  ORCAD_DQFFC 
      PORT MAP  (q=>N10 , d=>L23 , clk=>CLK , cl=>CLRN);
    DQFFC_88 :  ORCAD_DQFFC 
      PORT MAP  (q=>N11 , d=>L28 , clk=>CLK , cl=>CLRN);
    DQFFC_89 :  ORCAD_DQFFC 
      PORT MAP  (q=>N12 , d=>L33 , clk=>CLK , cl=>CLRN);
    DQFFC_90 :  ORCAD_DQFFC 
      PORT MAP  (q=>N13 , d=>L38 , clk=>CLK , cl=>CLRN);
    DQFFC_91 :  ORCAD_DQFFC 
      PORT MAP  (q=>N14 , d=>L43 , clk=>CLK , cl=>CLRN);
    N15 <=  (N7);
    N16 <=  (N8);
    N17 <=  (N9);
    N18 <=  (N10);
    N19 <=  (N11);
    N20 <=  (N12);
    N21 <=  (N13);
    N22 <=  (N14);
    TSB_100 :  ORCAD_TSB 
      PORT MAP  (O=>AQA , i1=>N15 , en=>L3);
    TSB_101 :  ORCAD_TSB 
      PORT MAP  (O=>BQB , i1=>N16 , en=>L3);
    TSB_102 :  ORCAD_TSB 
      PORT MAP  (O=>CQC , i1=>N17 , en=>L3);
    TSB_103 :  ORCAD_TSB 
      PORT MAP  (O=>DQD , i1=>N18 , en=>L3);
    TSB_104 :  ORCAD_TSB 
      PORT MAP  (O=>EQE , i1=>N19 , en=>L3);
    TSB_105 :  ORCAD_TSB 
      PORT MAP  (O=>FQF , i1=>N20 , en=>L3);
    TSB_106 :  ORCAD_TSB 
      PORT MAP  (O=>GQG , i1=>N21 , en=>L3);
    TSB_107 :  ORCAD_TSB 
      PORT MAP  (O=>HQH , i1=>N22 , en=>L3);
    QA2 <=  (N7) AFTER 1 ns;
    QH2 <=  (N14) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74348\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
EI : IN  std_logic;
A0 : OUT  std_logic;
A1 : OUT  std_logic;
A2 : OUT  std_logic;
GS : OUT  std_logic;
E0 : OUT  std_logic);
END \74348\;

architecture model OF \74348\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
	 SIGNAL FB1 : std_logic;

    BEGIN
    N1 <=  (D1);
    N2 <=  (D2);
    N3 <=  (D3);
    N4 <=  (D4);
    N5 <=  (D5);
    N6 <=  (D6);
    N7 <=  (D7);
    N8 <=  (D1);
    N9 <=  (D2);
    N10 <=  (D3);
    N11 <=  (D4);
    N12 <=  (D5);
    N13 <=  (D6);
    N14 <=  (D7);
    N15 <=  (D0);
    N16 <=  (D0);
    L1 <= NOT (EI);
    L2 <= NOT (D1);
    L3 <= NOT (D2);
    L4 <= NOT (D3);
    L5 <= NOT (D4);
    L6 <= NOT (D5);
    L7 <= NOT (D6);
    L8 <= NOT (D7);
    L18 <=  (N17 AND FB1);
    L9 <=  (L2 AND D2 AND D4 AND D6 AND L18);
    L10 <=  (L4 AND D4 AND D6 AND L18);
    L11 <=  (L6 AND D6 AND L18);
    L12 <=  (L8 AND L18);
    L13 <=  (L3 AND D4 AND D5 AND L18);
    L14 <=  (L4 AND D4 AND D5 AND L18);
    L15 <=  (L7 AND L18);
    L16 <=  (L5 AND L18);
    L17 <=  (L6 AND L18);
    N17 <=  (L1);
    N18 <=  (L1);
    N23 <=  (L1);
    FB1 <= NOT (N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N15 AND N18) AFTER 1 ns;
    E0 <= FB1;
    N19 <= NOT (N8 AND N9 AND N10 AND N11 AND N12 AND N13 AND N14 AND N16 AND N17);
    GS <= NOT (N19 AND N23) AFTER 1 ns;
    N20 <= NOT (L9 OR L10 OR L11 OR L12);
    N21 <= NOT (L13 OR L14 OR L15 OR L12);
    N22 <= NOT (L16 OR L17 OR L15 OR L12);
    TSB_132 :  ORCAD_TSB 
      PORT MAP  (O=>A0 , i1=>N20 , en=>L18);
    TSB_133 :  ORCAD_TSB 
      PORT MAP  (O=>A1 , i1=>N21 , en=>L18);
    TSB_134 :  ORCAD_TSB 
      PORT MAP  (O=>A2 , i1=>N22 , en=>L18);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74350\ IS PORT(
D3 : IN  std_logic;
D2 : IN  std_logic;
D1 : IN  std_logic;
D0 : IN  std_logic;
D_1 : IN  std_logic;
D_2 : IN  std_logic;
D_3 : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
OEN : IN  std_logic;
Y3 : OUT  std_logic;
Y2 : OUT  std_logic;
Y1 : OUT  std_logic;
Y0 : OUT  std_logic);
END \74350\;

architecture model OF \74350\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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

    BEGIN
    N1 <= NOT (S0);
    N2 <= NOT (S1);
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (OEN);
    L4 <=  (N1 AND N2 AND D3);
    L5 <=  (L1 AND N2 AND D2);
    L6 <=  (N1 AND L2 AND D1);
    L7 <=  (L1 AND L2 AND D0);
    L8 <=  (N1 AND N2 AND D2);
    L9 <=  (L1 AND N2 AND D1);
    L10 <=  (N1 AND L2 AND D0);
    L11 <=  (L1 AND L2 AND D_1);
    L12 <=  (N1 AND N2 AND D1);
    L13 <=  (L1 AND N2 AND D0);
    L14 <=  (N1 AND L2 AND D_1);
    L15 <=  (L1 AND L2 AND D_2);
    L16 <=  (N1 AND N2 AND D0);
    L17 <=  (L1 AND N2 AND D_1);
    L18 <=  (N1 AND L2 AND D_2);
    L19 <=  (L1 AND L2 AND D_3);
    N3 <=  (L4 OR L5 OR L6 OR L7);
    N4 <=  (L8 OR L9 OR L10 OR L11);
    N5 <=  (L12 OR L13 OR L14 OR L15);
    N6 <=  (L16 OR L17 OR L18 OR L19);
    TSB_75 :  ORCAD_TSB 
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L3);
    TSB_76 :  ORCAD_TSB 
      PORT MAP  (O=>Y2 , i1=>N4 , en=>L3);
    TSB_77 :  ORCAD_TSB 
      PORT MAP  (O=>Y1 , i1=>N5 , en=>L3);
    TSB_78 :  ORCAD_TSB 
      PORT MAP  (O=>Y0 , i1=>N6 , en=>L3);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74352\ IS PORT(
CA0 : IN  std_logic;
CA1 : IN  std_logic;
CA2 : IN  std_logic;
CA3 : IN  std_logic;
CB0 : IN  std_logic;
CB1 : IN  std_logic;
CB2 : IN  std_logic;
CB3 : IN  std_logic;
GAN : IN  std_logic;
GBN : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
YAN : OUT  std_logic;
YBN : OUT  std_logic);
END \74352\;

architecture model OF \74352\ IS
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
    N1 <= NOT (GAN);
    N2 <= NOT (GBN);
    N3 <= NOT (B);
    N4 <= NOT (A);
    N5 <=  (B);
    N6 <=  (A);
    L3 <=  (N1 AND N3 AND N4 AND CA0);
    L4 <=  (N1 AND N3 AND N6 AND CA1);
    L5 <=  (N1 AND N5 AND N4 AND CA2);
    L6 <=  (N1 AND N5 AND N6 AND CA3);
    L7 <=  (CB0 AND N3 AND N4 AND N2);
    L8 <=  (CB1 AND N3 AND N6 AND N2);
    L9 <=  (CB2 AND N5 AND N4 AND N2);
    L10 <=  (CB3 AND N5 AND N6 AND N2);
    YAN <= NOT (L3 OR L4 OR L5 OR L6) AFTER 1 ns;
    YBN <= NOT (L7 OR L8 OR L9 OR L10) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74353\ IS PORT(
CA0 : IN  std_logic;
CA1 : IN  std_logic;
CA2 : IN  std_logic;
CA3 : IN  std_logic;
CB0 : IN  std_logic;
CB1 : IN  std_logic;
CB2 : IN  std_logic;
CB3 : IN  std_logic;
GAN : IN  std_logic;
GBN : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
YAN : OUT  std_logic;
YBN : OUT  std_logic);
END \74353\;

architecture model OF \74353\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    N1 <= NOT (B);
    N2 <= NOT (A);
    N3 <=  (B);
    N4 <=  (A);
    L1 <= NOT (GAN);
    L2 <= NOT (GBN);
    L3 <=  (L1 AND N1 AND N2 AND CA0);
    L4 <=  (L1 AND N1 AND N4 AND CA1);
    L5 <=  (L1 AND N3 AND N2 AND CA2);
    L6 <=  (L1 AND N3 AND N4 AND CA3);
    L7 <=  (CB0 AND N1 AND N2 AND L2);
    L8 <=  (CB1 AND N1 AND N4 AND L2);
    L9 <=  (CB2 AND N3 AND N2 AND L2);
    L10 <=  (CB3 AND N3 AND N4 AND L2);
    N5 <= NOT (L3 OR L4 OR L5 OR L6);
    N6 <= NOT (L7 OR L8 OR L9 OR L10);
    TSB_135 :  ORCAD_TSB 
      PORT MAP  (O=>YAN , i1=>N5 , en=>L1);
    TSB_136 :  ORCAD_TSB 
      PORT MAP  (O=>YBN , i1=>N6 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74354\ IS PORT(
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
GN1 : IN  std_logic;
GN2 : IN  std_logic;
G3 : IN  std_logic;
SCN : IN  std_logic;
DCN : IN  std_logic;
Y : OUT  std_logic;
WN : OUT  std_logic);
END \74354\;

architecture model OF \74354\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (G3);
    L3 <= NOT (GN1 OR GN2 OR L1);
    N14 <= NOT (SCN);
    DLATCH_15 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>S0 , enable=>N14);
    DLATCH_16 :  ORCAD_DLATCH 
      PORT MAP  (q=>N2 , d=>S1 , enable=>N14);
    DLATCH_17 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>S2 , enable=>N14);
    L4 <= NOT (N1);
    L5 <= NOT (N2);
    L6 <= NOT (N3);
    N15 <= NOT (DCN);
    DLATCH_18 :  ORCAD_DLATCH 
      PORT MAP  (q=>N4 , d=>D0 , enable=>N15);
    DLATCH_19 :  ORCAD_DLATCH 
      PORT MAP  (q=>N5 , d=>D1 , enable=>N15);
    DLATCH_20 :  ORCAD_DLATCH 
      PORT MAP  (q=>N6 , d=>D2 , enable=>N15);
    DLATCH_21 :  ORCAD_DLATCH 
      PORT MAP  (q=>N7 , d=>D3 , enable=>N15);
    DLATCH_22 :  ORCAD_DLATCH 
      PORT MAP  (q=>N8 , d=>D4 , enable=>N15);
    DLATCH_23 :  ORCAD_DLATCH 
      PORT MAP  (q=>N9 , d=>D5 , enable=>N15);
    DLATCH_24 :  ORCAD_DLATCH 
      PORT MAP  (q=>N10 , d=>D6 , enable=>N15);
    DLATCH_25 :  ORCAD_DLATCH 
      PORT MAP  (q=>N11 , d=>D7 , enable=>N15);
    L8 <=  (L4 AND L5 AND L6 AND N4);
    L9 <=  (N1 AND L5 AND L6 AND N5);
    L10 <=  (L4 AND N2 AND L6 AND N6);
    L11 <=  (N1 AND N2 AND L6 AND N7);
    L12 <=  (L4 AND L5 AND N3 AND N8);
    L13 <=  (N1 AND L5 AND N3 AND N9);
    L14 <=  (L4 AND N2 AND N3 AND N10);
    L15 <=  (N1 AND N2 AND N3 AND N11);
    N16 <= NOT (L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15);
    N12 <= NOT (N16);
    N13 <=  (N16);
    TSB_137 :  ORCAD_TSB 
      PORT MAP  (O=>Y , i1=>N12 , en=>L3);
    TSB_138 :  ORCAD_TSB 
      PORT MAP  (O=>WN , i1=>N13 , en=>L3);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74356\ IS PORT(
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
GN1 : IN  std_logic;
GN2 : IN  std_logic;
G3 : IN  std_logic;
SCN : IN  std_logic;
CLK : IN  std_logic;
Y : OUT  std_logic;
WN : OUT  std_logic);
END \74356\;

architecture model OF \74356\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (G3);
    L3 <= NOT (GN1 OR GN2 OR L1);
    N14 <= NOT (SCN);
    DLATCH_37 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>S0 , enable=>N14);
    DLATCH_38 :  ORCAD_DLATCH 
      PORT MAP  (q=>N2 , d=>S1 , enable=>N14);
    DLATCH_39 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>S2 , enable=>N14);
    L4 <= NOT (N1);
    L5 <= NOT (N2);
    L6 <= NOT (N3);
    DQFF_63 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>D0 , clk=>CLK);
    DQFF_64 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>D1 , clk=>CLK);
    DQFF_65 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>D2 , clk=>CLK);
    DQFF_66 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>D3 , clk=>CLK);
    DQFF_67 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>D4 , clk=>CLK);
    DQFF_68 :  ORCAD_DQFF 
      PORT MAP  (q=>N9 , d=>D5 , clk=>CLK);
    DQFF_69 :  ORCAD_DQFF 
      PORT MAP  (q=>N10 , d=>D6 , clk=>CLK);
    DQFF_70 :  ORCAD_DQFF 
      PORT MAP  (q=>N11 , d=>D7 , clk=>CLK);
    L8 <=  (L4 AND L5 AND L6 AND N4);
    L9 <=  (N1 AND L5 AND L6 AND N5);
    L10 <=  (L4 AND N2 AND L6 AND N6);
    L11 <=  (N1 AND N2 AND L6 AND N7);
    L12 <=  (L4 AND L5 AND N3 AND N8);
    L13 <=  (N1 AND L5 AND N3 AND N9);
    L14 <=  (L4 AND N2 AND N3 AND N10);
    L15 <=  (N1 AND N2 AND N3 AND N11);
    N15 <= NOT (L8 OR L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15);
    N12 <= NOT (N15);
    N13 <=  (N15);
    TSB_139 :  ORCAD_TSB 
      PORT MAP  (O=>Y , i1=>N12 , en=>L3);
    TSB_140 :  ORCAD_TSB 
      PORT MAP  (O=>WN , i1=>N13 , en=>L3);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74365\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic);
END \74365\;

architecture model OF \74365\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT (GN1 OR GN2);
    N1 <=  (A1);
    N2 <=  (A2);
    N3 <=  (A3);
    N4 <=  (A4);
    N5 <=  (A5);
    N6 <=  (A6);
    TSB_16 :  ORCAD_TSB 
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1);
    TSB_17 :  ORCAD_TSB 
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1);
    TSB_18 :  ORCAD_TSB 
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1);
    TSB_19 :  ORCAD_TSB 
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1);
    TSB_20 :  ORCAD_TSB 
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1);
    TSB_21 :  ORCAD_TSB 
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74366\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
YN1 : OUT  std_logic;
YN2 : OUT  std_logic;
YN3 : OUT  std_logic;
YN4 : OUT  std_logic;
YN5 : OUT  std_logic;
YN6 : OUT  std_logic);
END \74366\;

architecture model OF \74366\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT (GN1 OR GN2);
    N1 <= NOT (A1);
    N2 <= NOT (A2);
    N3 <= NOT (A3);
    N4 <= NOT (A4);
    N5 <= NOT (A5);
    N6 <= NOT (A6);
    TSB_28 :  ORCAD_TSB 
      PORT MAP  (O=>YN1 , i1=>N1 , en=>L1);
    TSB_29 :  ORCAD_TSB 
      PORT MAP  (O=>YN2 , i1=>N2 , en=>L1);
    TSB_30 :  ORCAD_TSB 
      PORT MAP  (O=>YN3 , i1=>N3 , en=>L1);
    TSB_31 :  ORCAD_TSB 
      PORT MAP  (O=>YN4 , i1=>N4 , en=>L1);
    TSB_32 :  ORCAD_TSB 
      PORT MAP  (O=>YN5 , i1=>N5 , en=>L1);
    TSB_33 :  ORCAD_TSB 
      PORT MAP  (O=>YN6 , i1=>N6 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74367\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
Y11 : OUT  std_logic;
Y12 : OUT  std_logic;
Y13 : OUT  std_logic;
Y14 : OUT  std_logic;
Y21 : OUT  std_logic;
Y22 : OUT  std_logic);
END \74367\;

architecture model OF \74367\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT (G1N);
    L2 <= NOT (G2N);
    N1 <=  (A11);
    N2 <=  (A12);
    N3 <=  (A13);
    N4 <=  (A14);
    N5 <=  (A21);
    N6 <=  (A22);
    TSB_40 :  ORCAD_TSB 
      PORT MAP  (O=>Y11 , i1=>N1 , en=>L1);
    TSB_41 :  ORCAD_TSB 
      PORT MAP  (O=>Y12 , i1=>N2 , en=>L1);
    TSB_42 :  ORCAD_TSB 
      PORT MAP  (O=>Y13 , i1=>N3 , en=>L1);
    TSB_43 :  ORCAD_TSB 
      PORT MAP  (O=>Y14 , i1=>N4 , en=>L1);
    TSB_44 :  ORCAD_TSB 
      PORT MAP  (O=>Y21 , i1=>N5 , en=>L2);
    TSB_45 :  ORCAD_TSB 
      PORT MAP  (O=>Y22 , i1=>N6 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74368\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
Y1N1 : OUT  std_logic;
Y1N2 : OUT  std_logic;
Y1N3 : OUT  std_logic;
Y1N4 : OUT  std_logic;
Y2N1 : OUT  std_logic;
Y2N2 : OUT  std_logic);
END \74368\;

architecture model OF \74368\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;
    SIGNAL N5 : std_logic;
    SIGNAL N6 : std_logic;

    BEGIN
    L1 <= NOT (G1N);
    L2 <= NOT (G2N);
    N1 <= NOT (A11);
    N2 <= NOT (A12);
    N3 <= NOT (A13);
    N4 <= NOT (A14);
    N5 <= NOT (A21);
    N6 <= NOT (A22);
    TSB_52 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N1 , i1=>N1 , en=>L1);
    TSB_53 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N2 , i1=>N2 , en=>L1);
    TSB_54 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N3 , i1=>N3 , en=>L1);
    TSB_55 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N4 , i1=>N4 , en=>L1);
    TSB_56 :  ORCAD_TSB 
      PORT MAP  (O=>Y2N1 , i1=>N5 , en=>L2);
    TSB_57 :  ORCAD_TSB 
      PORT MAP  (O=>Y2N2 , i1=>N6 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74373\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
OEN : IN  std_logic;
G : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic);
END \74373\;

architecture model OF \74373\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (OEN);
    DLATCH_43 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>D1 , enable=>G);
    DLATCH_44 :  ORCAD_DLATCH 
      PORT MAP  (q=>N2 , d=>D2 , enable=>G);
    DLATCH_45 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>D3 , enable=>G);
    DLATCH_46 :  ORCAD_DLATCH 
      PORT MAP  (q=>N4 , d=>D4 , enable=>G);
    DLATCH_47 :  ORCAD_DLATCH 
      PORT MAP  (q=>N5 , d=>D5 , enable=>G);
    DLATCH_48 :  ORCAD_DLATCH 
      PORT MAP  (q=>N6 , d=>D6 , enable=>G);
    DLATCH_49 :  ORCAD_DLATCH 
      PORT MAP  (q=>N7 , d=>D7 , enable=>G);
    DLATCH_50 :  ORCAD_DLATCH 
      PORT MAP  (q=>N8 , d=>D8 , enable=>G);
    TSB_189 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1);
    TSB_190 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1);
    TSB_191 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1);
    TSB_192 :  ORCAD_TSB 
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1);
    TSB_193 :  ORCAD_TSB 
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1);
    TSB_194 :  ORCAD_TSB 
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1);
    TSB_195 :  ORCAD_TSB 
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1);
    TSB_196 :  ORCAD_TSB 
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74374\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
OEN : IN  std_logic;
CLK : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic);
END \74374\;

architecture model OF \74374\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (OEN);
    DQFF_79 :  ORCAD_DQFF 
      PORT MAP  (q=>N1 , d=>D1 , clk=>CLK);
    DQFF_80 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>D2 , clk=>CLK);
    DQFF_81 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>D3 , clk=>CLK);
    DQFF_82 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>D4 , clk=>CLK);
    DQFF_83 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>D5 , clk=>CLK);
    DQFF_84 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>D6 , clk=>CLK);
    DQFF_85 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>D7 , clk=>CLK);
    DQFF_86 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>D8 , clk=>CLK);
    TSB_197 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1);
    TSB_198 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1);
    TSB_199 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1);
    TSB_200 :  ORCAD_TSB 
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1);
    TSB_201 :  ORCAD_TSB 
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1);
    TSB_202 :  ORCAD_TSB 
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1);
    TSB_203 :  ORCAD_TSB 
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1);
    TSB_204 :  ORCAD_TSB 
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74375\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
E12 : IN  std_logic;
E34 : IN  std_logic;
Q1 : OUT  std_logic;
Q1N : OUT  std_logic;
Q2 : OUT  std_logic;
Q2N : OUT  std_logic;
Q3 : OUT  std_logic;
Q3N : OUT  std_logic;
Q4 : OUT  std_logic;
Q4N : OUT  std_logic);
END \74375\;

architecture model OF \74375\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (D1);
    L2 <= NOT (D2);
    L3 <= NOT (D3);
    L4 <= NOT (D4);
    DLATCH_51 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q1N , d=>L1 , enable=>E12);
    DLATCH_52 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q2N , d=>L2 , enable=>E12);
    DLATCH_53 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q3N , d=>L3 , enable=>E34);
    DLATCH_54 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q4N , d=>L4 , enable=>E34);
    DLATCH_55 :  ORCAD_DLATCH 
      PORT MAP  (q=>Q1 , d=>D1 , enable=>E12);
    DLATCH_56 :  ORCAD_DLATCH
      PORT MAP  (q=>Q2 , d=>D2 , enable=>E12);
    DLATCH_57 :  ORCAD_DLATCH
      PORT MAP  (q=>Q3 , d=>D3 , enable=>E34);
    DLATCH_58 :  ORCAD_DLATCH
      PORT MAP  (q=>Q4 , d=>D4 , enable=>E34);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74376\ IS PORT(
J1 : IN  std_logic;
K1N : IN  std_logic;
J2 : IN  std_logic;
K2N : IN  std_logic;
J3 : IN  std_logic;
K3N : IN  std_logic;
J4 : IN  std_logic;
K4N : IN  std_logic;
CLK : IN  std_logic;
CLRN : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic);
END \74376\;

architecture model OF \74376\ IS
	COMPONENT orcad_jkffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT (K1N);
    L2 <= NOT (K2N);
    L3 <= NOT (K3N);
    L4 <= NOT (K4N);
    JKFFC_16 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q1 , qNot=>N1 , j=>J1 , k=>L1 , clk=>CLK , cl=>CLRN);
    JKFFC_17 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q2 , qNot=>N2 , j=>J2 , k=>L2 , clk=>CLK , cl=>CLRN);
    JKFFC_18 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q3 , qNot=>N3 , j=>J3 , k=>L3 , clk=>CLK , cl=>CLRN);
    JKFFC_19 :  ORCAD_JKFFC 
      PORT MAP  (q=>Q4 , qNot=>N4 , j=>J4 , k=>L4 , clk=>CLK , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74377\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
CLK : IN  std_logic;
ENN : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic;
Q7 : OUT  std_logic;
Q8 : OUT  std_logic);
END \74377\;

architecture model OF \74377\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (ENN);
    N2 <=  (N1 AND CLK);
    DQFF_87 :  ORCAD_DQFF 
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N2);
    DQFF_88 :  ORCAD_DQFF 
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N2);
    DQFF_89 :  ORCAD_DQFF 
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N2);
    DQFF_90 :  ORCAD_DQFF 
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N2);
    DQFF_91 :  ORCAD_DQFF 
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N2);
    DQFF_92 :  ORCAD_DQFF 
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N2);
    DQFF_93 :  ORCAD_DQFF 
      PORT MAP  (q=>Q7 , d=>D7 , clk=>N2);
    DQFF_94 :  ORCAD_DQFF 
      PORT MAP  (q=>Q8 , d=>D8 , clk=>N2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74378\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
ENN : IN  std_logic;
CLK : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q5 : OUT  std_logic;
Q6 : OUT  std_logic);
END \74378\;

architecture model OF \74378\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (ENN);
    N2 <=  (N1 AND CLK);
    DQFF_95 :  ORCAD_DQFF 
      PORT MAP  (q=>Q1 , d=>D1 , clk=>N2);
    DQFF_96 :  ORCAD_DQFF 
      PORT MAP  (q=>Q2 , d=>D2 , clk=>N2);
    DQFF_97 :  ORCAD_DQFF 
      PORT MAP  (q=>Q3 , d=>D3 , clk=>N2);
    DQFF_98 :  ORCAD_DQFF 
      PORT MAP  (q=>Q4 , d=>D4 , clk=>N2);
    DQFF_99 :  ORCAD_DQFF 
      PORT MAP  (q=>Q5 , d=>D5 , clk=>N2);
    DQFF_100 :  ORCAD_DQFF 
      PORT MAP  (q=>Q6 , d=>D6 , clk=>N2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74379\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
ENN : IN  std_logic;
CLK : IN  std_logic;
Q1 : OUT  std_logic;
Q1N : OUT  std_logic;
Q2 : OUT  std_logic;
Q2N : OUT  std_logic;
Q3 : OUT  std_logic;
Q3N : OUT  std_logic;
Q4 : OUT  std_logic;
Q4N : OUT  std_logic);
END \74379\;

architecture model OF \74379\ IS
	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;

    BEGIN
    N1 <= NOT (ENN);
    N2 <=  (N1 AND CLK);
    DFF_1 :  ORCAD_DFF 
      PORT MAP  (q=>Q1 , qNot=>Q1N , d=>D1 , clk=>N2);
    DFF_2 :  ORCAD_DFF 
      PORT MAP  (q=>Q2 , qNot=>Q2N , d=>D2 , clk=>N2);
    DFF_3 :  ORCAD_DFF 
      PORT MAP  (q=>Q3 , qNot=>Q3N , d=>D3 , clk=>N2);
    DFF_4 :  ORCAD_DFF 
      PORT MAP  (q=>Q4 , qNot=>Q4N , d=>D4 , clk=>N2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74381\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
CIN : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
GN : OUT  std_logic;
PN : OUT  std_logic);
END \74381\;

architecture model OF \74381\ IS
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
    L1 <= NOT (S0);
    L2 <= NOT (S1);
    L3 <= NOT (S2);
    L4 <=  (L3 AND L2 AND S0);
    L5 <=  (L3 AND S1 AND L1);
    L6 <=  (S2 AND S1 AND S0);
    L7 <=  (L2 AND S0);
    L8 <=  (S2 AND S0);
    L9 <=  (S1 AND L1);
    L10 <=  (S1 AND S0);
    L11 <=  (S2 AND L2);
    L12 <=  (L3 AND S0);
    L13 <=  (L3 AND S1);
    L14 <= NOT (A0);
    L15 <= NOT (B0);
    L16 <= NOT (A1);
    L17 <= NOT (B1);
    L18 <= NOT (A2);
    L19 <= NOT (B2);
    L20 <= NOT (A3);
    L21 <= NOT (B3);
    L22 <=  (N3 AND A0 AND L15);
    L23 <=  (N2 AND A0 AND B0);
    L24 <=  (N3 AND L14 AND B0);
    L25 <=  (N1 AND L14 AND L15);
    L26 <=  (N6 AND A0 AND L15);
    L27 <=  (N5 AND A0 AND B0);
    L28 <=  (N4 AND L14 AND B0);
    L29 <=  (L14 AND L15);
    L30 <=  (N3 AND A1 AND L17);
    L31 <=  (N2 AND A1 AND B1);
    L32 <=  (N3 AND L16 AND B1);
    L33 <=  (N1 AND L16 AND L17);
    L34 <=  (N6 AND A1 AND L17);
    L35 <=  (N5 AND A1 AND B1);
    L36 <=  (N4 AND L16 AND B1);
    L37 <=  (L16 AND L17);
    L38 <=  (N3 AND A2 AND L19);
    L39 <=  (N2 AND A2 AND B2);
    L40 <=  (N3 AND L18 AND B2);
    L41 <=  (N1 AND L18 AND L19);
    L42 <=  (N6 AND A2 AND L19);
    L43 <=  (N5 AND A2 AND B2);
    L44 <=  (N4 AND L18 AND B2);
    L45 <=  (L18 AND L19);
    L46 <=  (N3 AND A3 AND L21);
    L47 <=  (N2 AND A3 AND B3);
    L48 <=  (N3 AND L20 AND B3);
    L49 <=  (N1 AND L20 AND L21);
    L50 <=  (N6 AND A3 AND L21);
    L51 <=  (N5 AND A3 AND B3);
    L52 <=  (N4 AND L20 AND B3);
    L53 <=  (L20 AND L21);
    L54 <= NOT (N7 AND CIN);
    L55 <=  (N7 AND CIN AND N8);
    L56 <=  (N7 AND N9);
    L57 <=  (N7 AND CIN AND N8 AND N10);
    L58 <=  (N7 AND N10 AND N9);
    L59 <=  (N7 AND N11);
    L60 <=  (N7 AND CIN AND N8 AND N10 AND N12);
    L61 <=  (N7 AND N10 AND N12 AND N9);
    L62 <=  (N11 AND N12 AND N7);
    L63 <=  (N7 AND N13);
    L64 <=  (N10 AND N12 AND N14 AND N9);
    L65 <=  (N12 AND N14 AND N11);
    L66 <=  (N14 AND N13);
    L67 <= NOT (L55 OR L56);
    L68 <= NOT (L57 OR L58 OR L59);
    L69 <= NOT (L60 OR L61 OR L62 OR L63);
    N1 <= NOT (L4 OR L5 OR L6);
    N2 <= NOT (L7 OR L8 OR L9);
    N3 <= NOT (L10 OR L11);
    N4 <= NOT (L4);
    N5 <= NOT (L3 AND S1 AND S0);
    N6 <= NOT (L5);
    N7 <=  (L12 OR L13);
    N8 <= NOT (L22 OR L23 OR L24 OR L25);
    N9 <= NOT (L26 OR L27 OR L28 OR L29);
    N10 <= NOT (L30 OR L31 OR L32 OR L33);
    N11 <= NOT (L34 OR L35 OR L36 OR L37);
    N12 <= NOT (L38 OR L39 OR L40 OR L41);
    N13 <= NOT (L42 OR L43 OR L44 OR L45);
    N14 <= NOT (L46 OR L47 OR L48 OR L49);
    N15 <= NOT (L50 OR L51 OR L52 OR L53);
    F0 <= NOT (N8 XOR L54) AFTER 1 ns;
    F1 <= NOT (N10 XOR L67) AFTER 1 ns;
    F2 <= NOT (N12 XOR L68) AFTER 1 ns;
    F3 <= NOT (N14 XOR L69) AFTER 1 ns;
    PN <= NOT (N8 AND N10 AND N12 AND N14) AFTER 1 ns;
    GN <= NOT (L64 OR L65 OR L66 OR N15) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74382\ IS PORT(
A0 : IN  std_logic;
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
B0 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
CIN : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
S2 : IN  std_logic;
F0 : OUT  std_logic;
F1 : OUT  std_logic;
F2 : OUT  std_logic;
F3 : OUT  std_logic;
OVR : OUT  std_logic;
CN4 : OUT  std_logic);
END \74382\;

architecture model OF \74382\ IS
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
    L1 <= NOT (S0);
    L2 <= NOT (S1);
    L3 <= NOT (S2);
    L4 <=  (L3 AND L2 AND S0);
    L5 <=  (L3 AND S1 AND L1);
    L6 <=  (S2 AND S1 AND S0);
    L7 <=  (L2 AND S0);
    L8 <=  (S2 AND S0);
    L9 <=  (S1 AND L1);
    L10 <=  (S1 AND S0);
    L11 <=  (S2 AND L2);
    L12 <=  (L3 AND S0);
    L13 <=  (L3 AND S1);
    L14 <= NOT (A0);
    L15 <= NOT (B0);
    L16 <= NOT (A1);
    L17 <= NOT (B1);
    L18 <= NOT (A2);
    L19 <= NOT (B2);
    L20 <= NOT (A3);
    L21 <= NOT (B3);
    L22 <=  (N3 AND A0 AND L15);
    L23 <=  (N2 AND A0 AND B0);
    L24 <=  (N3 AND L14 AND B0);
    L25 <=  (N1 AND L14 AND L15);
    L26 <=  (N6 AND A0 AND L15);
    L27 <=  (N5 AND A0 AND B0);
    L28 <=  (N4 AND L14 AND B0);
    L29 <=  (L14 AND L15);
    L30 <=  (N3 AND A1 AND L17);
    L31 <=  (N2 AND A1 AND B1);
    L32 <=  (N3 AND L16 AND B1);
    L33 <=  (N1 AND L16 AND L17);
    L34 <=  (N6 AND A1 AND L17);
    L35 <=  (N5 AND A1 AND B1);
    L36 <=  (N4 AND L16 AND B1);
    L37 <=  (L16 AND L17);
    L38 <=  (N3 AND A2 AND L19);
    L39 <=  (N2 AND A2 AND B2);
    L40 <=  (N3 AND L18 AND B2);
    L41 <=  (N1 AND L18 AND L19);
    L42 <=  (N6 AND A2 AND L19);
    L43 <=  (N5 AND A2 AND B2);
    L44 <=  (N4 AND L18 AND B2);
    L45 <=  (L18 AND L19);
    L46 <=  (N3 AND A3 AND L21);
    L47 <=  (N2 AND A3 AND B3);
    L48 <=  (N3 AND L20 AND B3);
    L49 <=  (N1 AND L20 AND L21);
    L50 <=  (N6 AND A3 AND L21);
    L51 <=  (N5 AND A3 AND B3);
    L52 <=  (N4 AND L20 AND B3);
    L53 <=  (L20 AND L21);
    L54 <= NOT (N7 AND N16);
    L55 <=  (N7 AND N16 AND N8);
    L56 <=  (N7 AND N9);
    L57 <=  (N7 AND N16 AND N8 AND N10);
    L58 <=  (N7 AND N10 AND N9);
    L59 <=  (N7 AND N11);
    L60 <=  (N7 AND N16 AND N8 AND N10 AND N12);
    L61 <=  (N7 AND N10 AND N12 AND N9);
    L62 <=  (N11 AND N12 AND N7);
    L63 <=  (N7 AND N13);
    L64 <=  (CIN AND N8 AND N10 AND N12 AND N14);
    L65 <=  (N10 AND N12 AND N14 AND N9);
    L66 <=  (N12 AND N14 AND N11);
    L67 <=  (N14 AND N13);
    L68 <= NOT (L55 OR L56);
    L69 <= NOT (L57 OR L58 OR L59);
    L70 <= NOT (L60 OR L61 OR L62 OR L63);
    L71 <= NOT (L64 OR L65 OR L66 OR L67 OR N15);
    N1 <= NOT (L4 OR L5 OR L6);
    N2 <= NOT (L7 OR L8 OR L9);
    N3 <= NOT (L10 OR L11);
    N4 <= NOT (L4);
    N5 <= NOT (L3 AND S1 AND S0);
    N6 <= NOT (L5);
    N7 <=  (L12 OR L13);
    N8 <= NOT (L22 OR L23 OR L24 OR L25);
    N9 <= NOT (L26 OR L27 OR L28 OR L29);
    N10 <= NOT (L30 OR L31 OR L32 OR L33);
    N11 <= NOT (L34 OR L35 OR L36 OR L37);
    N12 <= NOT (L38 OR L39 OR L40 OR L41);
    N13 <= NOT (L42 OR L43 OR L44 OR L45);
    N14 <= NOT (L46 OR L47 OR L48 OR L49);
    N15 <= NOT (L50 OR L51 OR L52 OR L53);
    N16 <=  (CIN);
    F0 <= NOT (N8 XOR L54) AFTER 1 ns;
    F1 <= NOT (N10 XOR L68) AFTER 1 ns;
    F2 <= NOT (N12 XOR L69) AFTER 1 ns;
    F3 <= NOT (N14 XOR L70) AFTER 1 ns;
    CN4 <= NOT (L71) AFTER 1 ns;
    OVR <=  (L70 XOR L71) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74385\ IS PORT(
S1AN : IN  std_logic;
A1 : IN  std_logic;
B1 : IN  std_logic;
S2AN : IN  std_logic;
A2 : IN  std_logic;
B2 : IN  std_logic;
S3AN : IN  std_logic;
A3 : IN  std_logic;
B3 : IN  std_logic;
S4AN : IN  std_logic;
A4 : IN  std_logic;
B4 : IN  std_logic;
CLK : IN  std_logic;
CLRN : IN  std_logic;
S1 : OUT  std_logic;
S2 : OUT  std_logic;
S3 : OUT  std_logic;
S4 : OUT  std_logic);
END \74385\;

architecture model OF \74385\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL N4 : std_logic;

    BEGIN
    L1 <= NOT (N1);
    L2 <= NOT (N2);
    L3 <= NOT (N3);
    L4 <= NOT (N4);
    L5 <= NOT (A1);
    L6 <= NOT (A2);
    L7 <= NOT (A3);
    L8 <= NOT (A4);
    L9 <= NOT (B1);
    L10 <= NOT (B2);
    L11 <= NOT (B3);
    L12 <= NOT (B4);
    L13 <= NOT (S1AN);
    L14 <= NOT (S2AN);
    L15 <= NOT (S3AN);
    L16 <= NOT (S4AN);
    L17 <= NOT (CLRN);
    L18 <= NOT (L9 XOR L13);
    L19 <= NOT (L1 XOR L5);
    L20 <=  (L18 XOR L19);
    L21 <= NOT (L10 XOR L14);
    L22 <= NOT (L2 XOR L6);
    L23 <=  (L21 XOR L22);
    L24 <= NOT (L11 XOR L15);
    L25 <= NOT (L3 XOR L7);
    L26 <= NOT (L24 OR L25);
    L27 <= NOT (L12 XOR L16);
    L28 <= NOT (L4 XOR L8);
    L29 <=  (L27 XOR L28);
    L30 <= NOT (L17 AND S1AN);
    L31 <= NOT (L13 AND L17);
    L32 <= NOT (L17 AND S2AN);
    L33 <= NOT (L14 AND L17);
    L34 <= NOT (L17 AND S3AN);
    L35 <= NOT (L15 AND L17);
    L36 <= NOT (L17 AND S4AN);
    L37 <= NOT (L16 AND L17);
    L38 <=  (L5 AND L18);
    L39 <=  (L1 AND L5);
    L40 <=  (L1 AND L18);
    L41 <=  (L6 AND L21);
    L42 <=  (L2 AND L6);
    L43 <=  (L2 AND L21);
    L44 <=  (L7 AND L24);
    L45 <=  (L3 AND L7);
    L46 <=  (L3 AND L24);
    L47 <=  (L8 AND L27);
    L48 <=  (L4 AND L8);
    L49 <=  (L4 AND L27);
    L50 <= NOT (L38 OR L39 OR L40);
    L51 <= NOT (L41 OR L42 OR L43);
    L52 <= NOT (L44 OR L45 OR L46);
    L53 <= NOT (L47 OR L48 OR L49);
    DQFFPC_0 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N1 , d=>L50 , clk=>CLK , pr=>L30 , cl=>L31);
    DQFFPC_1 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N2 , d=>L51 , clk=>CLK , pr=>L32 , cl=>L33);
    DQFFPC_2 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N3 , d=>L52 , clk=>CLK , pr=>L34 , cl=>L35);
    DQFFPC_3 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N4 , d=>L53 , clk=>CLK , pr=>L36 , cl=>L37);
    DQFFC_58 :  ORCAD_DQFFC 
      PORT MAP  (q=>S1 , d=>L20 , clk=>CLK , cl=>CLRN);
    DQFFC_59 :  ORCAD_DQFFC 
      PORT MAP  (q=>S2 , d=>L23 , clk=>CLK , cl=>CLRN);
    DQFFC_60 :  ORCAD_DQFFC 
      PORT MAP  (q=>S3 , d=>L26 , clk=>CLK , cl=>CLRN);
    DQFFC_61 :  ORCAD_DQFFC 
      PORT MAP  (q=>S4 , d=>L29 , clk=>CLK , cl=>CLRN);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74386\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
B3 : IN  std_logic;
B4 : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic);
END \74386\;

architecture model OF \74386\ IS

    BEGIN
    Y1 <=  (A1 XOR B1) AFTER 1 ns;
    Y2 <=  (A2 XOR B2) AFTER 1 ns;
    Y3 <=  (A3 XOR B3) AFTER 1 ns;
    Y4 <=  (A4 XOR B4) AFTER 1 ns;

END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74390\ IS PORT(
CLKA1 : IN  std_logic;
CLKA2 : IN  std_logic;
CLKB1 : IN  std_logic;
CLKB2 : IN  std_logic;
CLR1 : IN  std_logic;
CLR2 : IN  std_logic;
QA1 : OUT  std_logic;
QA2 : OUT  std_logic;
QB1 : OUT  std_logic;
QB2 : OUT  std_logic;
QC1 : OUT  std_logic;
QC2 : OUT  std_logic;
QD1 : OUT  std_logic;
QD2 : OUT  std_logic);
END \74390\;

architecture model OF \74390\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (CLR1);
    L2 <= NOT (CLR2);
    L9 <= NOT (N7);
    L10 <= NOT (N8);
    L11 <= NOT (N9);
    L12 <= NOT (N10);
    L13 <= NOT (N11);
    L14 <= NOT (N12);
    L15 <= NOT (N13);
    L16 <= NOT (N14);
    L3 <=  (L10 AND L12);
    L4 <=  (L11 AND L12);
    L7 <= NOT (L3 OR L4);
    L5 <=  (L14 AND L16);
    L6 <=  (L15 AND L16);
    L8 <= NOT (L5 OR L6);
    N1 <= NOT (CLKA1);
    N2 <= NOT (CLKA2);
    N3 <= NOT (CLKB1 AND L12);
    N5 <= NOT (CLKB2 AND L16);
    N4 <= NOT (CLKB1 AND L7);
    N6 <= NOT (CLKB2 AND L8);
    DQFFC_66 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>L9 , clk=>N1 , cl=>L1);
    DFFC_12 : ORCAD_DFFC 
      PORT MAP (q=>N8 , qNot=>N15 , d=>L10 , clk=>N3 , cl=>L1);
    DQFFC_67 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L11 , clk=>N15 , cl=>L1);
    DQFFC_68 :  ORCAD_DQFFC 
      PORT MAP  (q=>N10 , d=>L12 , clk=>N4 , cl=>L1);
    DQFFC_69 :  ORCAD_DQFFC 
      PORT MAP  (q=>N11 , d=>L13 , clk=>N2 , cl=>L2);
    DFFC_13 : ORCAD_DFFC 
      PORT MAP (q=>N12 , qNot=>N16 , d=>L14 , clk=>N5 , cl=>L2);
    DQFFC_70 :  ORCAD_DQFFC 
      PORT MAP  (q=>N13 , d=>L15 , clk=>N16 , cl=>L2);
    DQFFC_71 :  ORCAD_DQFFC 
      PORT MAP  (q=>N14 , d=>L16 , clk=>N6 , cl=>L2);
    QA1 <=  (N7) AFTER 1 ns;
    QB1 <=  (N8) AFTER 1 ns;
    QC1 <=  (N9) AFTER 1 ns;
    QD1 <=  (N10) AFTER 1 ns;
    QA2 <=  (N11) AFTER 1 ns;
    QB2 <=  (N12) AFTER 1 ns;
    QC2 <=  (N13) AFTER 1 ns;
    QD2 <=  (N14) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74393\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
CLR1 : IN  std_logic;
CLR2 : IN  std_logic;
Q1A : OUT  std_logic;
Q2A : OUT  std_logic;
Q1B : OUT  std_logic;
Q2B : OUT  std_logic;
Q1C : OUT  std_logic;
Q2C : OUT  std_logic;
Q1D : OUT  std_logic;
Q2D : OUT  std_logic);
END \74393\;

architecture model OF \74393\ IS
	COMPONENT orcad_dqffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, pr   : IN std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (A1);
    N2 <= NOT (A2);
    L1 <= NOT (CLR1);
    L2 <= NOT (CLR2);
    L3 <= NOT (N9);
    L4 <= NOT (N10);
    L5 <= NOT (N11);
    L6 <= NOT (N12);
    L7 <= NOT (N13);
    L8 <= NOT (N14);
    L9 <= NOT (N15);
    L10 <= NOT (N16);
    DQFFP_4 :  ORCAD_DQFFP 
      PORT MAP  (q=>N9 , d=>L3 , clk=>N1 , pr=>L1);
    DQFFP_5 :  ORCAD_DQFFP 
      PORT MAP  (q=>N10 , d=>L4 , clk=>N9 , pr=>L1);
    DQFFP_6 :  ORCAD_DQFFP 
      PORT MAP  (q=>N11 , d=>L5 , clk=>N10 , pr=>L1);
    DQFFP_7 :  ORCAD_DQFFP 
      PORT MAP  (q=>N12 , d=>L6 , clk=>N11 , pr=>L1);
    DQFFP_8 :  ORCAD_DQFFP 
      PORT MAP  (q=>N13 , d=>L7 , clk=>N2 , pr=>L2);
    DQFFP_9 :  ORCAD_DQFFP 
      PORT MAP  (q=>N14 , d=>L8 , clk=>N13 , pr=>L2);
    DQFFP_10 :  ORCAD_DQFFP 
      PORT MAP  (q=>N15 , d=>L9 , clk=>N14 , pr=>L2);
    DQFFP_11 :  ORCAD_DQFFP 
      PORT MAP  (q=>N16 , d=>L10 , clk=>N15 , pr=>L2);
    Q1A <= NOT (N9) AFTER 1 ns;
    Q1B <= NOT (N10) AFTER 1 ns;
    Q1C <= NOT (N11) AFTER 1 ns;
    Q1D <= NOT (N12) AFTER 1 ns;
    Q2A <= NOT (N13) AFTER 1 ns;
    Q2B <= NOT (N14) AFTER 1 ns;
    Q2C <= NOT (N15) AFTER 1 ns;
    Q2D <= NOT (N16) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74395\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
CLRN : IN  std_logic;
OEN : IN  std_logic;
LDSHN : IN  std_logic;
CLK : IN  std_logic;
SER : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic;
Q4B : OUT  std_logic);
END \74395\;

architecture model OF \74395\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
	 SIGNAL fb1 : std_logic;

    BEGIN
    N1 <= NOT (LDSHN);
    N2 <= NOT (CLK);
    L1 <= NOT (N1);
    L2 <= NOT (OEN);
    L3 <=  (SER AND N1);
    L4 <=  (L1 AND D1);
    L5 <=  (N3 AND N1);
    L6 <=  (L1 AND D2);
    L7 <=  (N4 AND N1);
    L8 <=  (L1 AND D3);
    L9 <=  (N5 AND N1);
    L10 <=  (L1 AND D4);
    L11 <=  (L3 OR L4);
    L12 <=  (L5 OR L6);
    L13 <=  (L7 OR L8);
    L14 <=  (L9 OR L10);
    DQFFC_114 :  ORCAD_DQFFC PORT MAP  (q=>N3 , d=>L11 , clk=>N2 , cl=>CLRN);
    DQFFC_115 :  ORCAD_DQFFC PORT MAP  (q=>N4 , d=>L12 , clk=>N2 , cl=>CLRN);
    DQFFC_116 :  ORCAD_DQFFC PORT MAP  (q=>N5 , d=>L13 , clk=>N2 , cl=>CLRN);
    DQFFC_117 :  ORCAD_DQFFC PORT MAP  (q=>N6 , d=>L14 , clk=>N2 , cl=>CLRN);
    N7 <=  (N3);
    N8 <=  (N4);
    N9 <=  (N5);
	 fb1 <= (N6);
    Q4B <= fb1 AFTER 1 ns;
    TSB_205 :  ORCAD_TSB PORT MAP  (O=>Q1 , i1=>N7 , en=>L2);
    TSB_206 :  ORCAD_TSB PORT MAP  (O=>Q2 , i1=>N8 , en=>L2);
    TSB_207 :  ORCAD_TSB PORT MAP  (O=>Q3 , i1=>N9 , en=>L2);
    TSB_208 :  ORCAD_TSB PORT MAP  (O=>Q4 , i1=> fb1, en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;
entity \74396\ IS 
  PORT(D1,D2,D3,D4: IN std_logic;
       STRBN,CLK: IN std_logic;
       Q11,Q12,Q13,Q14: OUT std_logic;
       Q21,Q22,Q23,Q24: OUT std_logic);
END \74396\;

architecture model of \74396\ is
   signal BYTE1,BYTE2: std_logic_vector(4 downto 1);
begin
   BYTES: process(D1,D2,D3,D4,CLK) begin
      if (CLK='1' and CLK'event) then
         BYTE1<=(D4,D3,D2,D1);
         BYTE2<=BYTE1;
      end if;
   end process;

   Q11 <= BYTE1(1) and not(STRBN) after 1 ns;
   Q12 <= BYTE1(2) and not(STRBN) after 1 ns;
   Q13 <= BYTE1(3) and not(STRBN) after 1 ns;
   Q14 <= BYTE1(4) and not(STRBN) after 1 ns;

   Q21 <= BYTE2(1) and not(STRBN) after 1 ns;
   Q22 <= BYTE2(2) and not(STRBN) after 1 ns;
   Q23 <= BYTE2(3) and not(STRBN) after 1 ns;
   Q24 <= BYTE2(4) and not(STRBN) after 1 ns;

END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74398\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
SEL : IN  std_logic;
CLK : IN  std_logic;
QA : OUT  std_logic;
QAN : OUT  std_logic;
QB : OUT  std_logic;
QBN : OUT  std_logic;
QC : OUT  std_logic;
QCN : OUT  std_logic;
QD : OUT  std_logic;
QDN : OUT  std_logic);
END \74398\;

architecture model OF \74398\ IS
	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    N1 <= NOT (SEL);
    L1 <= NOT (N1);
    L2 <=  (A1 AND N1);
    L3 <=  (L1 AND A2);
    L4 <=  (B1 AND N1);
    L5 <=  (L1 AND B2);
    L6 <=  (C1 AND N1);
    L7 <=  (L1 AND C2);
    L8 <=  (D1 AND N1);
    L9 <=  (L1 AND D2);
    L10 <=  (L2 OR L3);
    L11 <=  (L4 OR L5);
    L12 <=  (L6 OR L7);
    L13 <=  (L8 OR L9);
    DFF_5 :  ORCAD_DFF 
      PORT MAP  (q=>QA , qNot=>QAN , d=>L10 , clk=>CLK);
    DFF_6 :  ORCAD_DFF 
      PORT MAP  (q=>QB , qNot=>QBN , d=>L11 , clk=>CLK);
    DFF_7 :  ORCAD_DFF 
      PORT MAP  (q=>QC , qNot=>QCN , d=>L12 , clk=>CLK);
    DFF_8 :  ORCAD_DFF 
      PORT MAP  (q=>QD , qNot=>QDN , d=>L13 , clk=>CLK);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74399\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
B1 : IN  std_logic;
B2 : IN  std_logic;
C1 : IN  std_logic;
C2 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
SEL : IN  std_logic;
CLK : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic);
END \74399\;

architecture model OF \74399\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <= NOT (SEL);
    L1 <= NOT (N1);
    L2 <=  (A1 AND N1);
    L3 <=  (L1 AND A2);
    L4 <=  (B1 AND N1);
    L5 <=  (L1 AND B2);
    L6 <=  (C1 AND N1);
    L7 <=  (L1 AND C2);
    L8 <=  (D1 AND N1);
    L9 <=  (L1 AND D2);
    L10 <=  (L2 OR L3);
    L11 <=  (L4 OR L5);
    L12 <=  (L6 OR L7);
    L13 <=  (L8 OR L9);
    DQFF_101 :  ORCAD_DQFF 
      PORT MAP  (q=>QA , d=>L10 , clk=>CLK);
    DQFF_102 :  ORCAD_DQFF 
      PORT MAP  (q=>QB , d=>L11 , clk=>CLK);
    DQFF_103 :  ORCAD_DQFF 
      PORT MAP  (q=>QC , d=>L12 , clk=>CLK);
    DQFF_104 :  ORCAD_DQFF 
      PORT MAP  (q=>QD , d=>L13 , clk=>CLK);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74445\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
O0N : OUT  std_logic;
O1N : OUT  std_logic;
O2N : OUT  std_logic;
O3N : OUT  std_logic;
O4N : OUT  std_logic;
O5N : OUT  std_logic;
O6N : OUT  std_logic;
O7N : OUT  std_logic;
O8N : OUT  std_logic;
O9N : OUT  std_logic);
END \74445\;

architecture model OF \74445\ IS
    SIGNAL L1 : std_logic;
    SIGNAL L2 : std_logic;
    SIGNAL L3 : std_logic;
    SIGNAL L4 : std_logic;

    BEGIN
    L1 <= NOT (A);
    L2 <= NOT (B);
    L3 <= NOT (C);
    L4 <= NOT (D);
    O0N <= NOT (L1 AND L2 AND L3 AND L4) AFTER 1 ns;
    O1N <= NOT (A AND L2 AND L3 AND L4) AFTER 1 ns;
    O2N <= NOT (L1 AND B AND L3 AND L4) AFTER 1 ns;
    O3N <= NOT (A AND B AND L3 AND L4) AFTER 1 ns;
    O4N <= NOT (L1 AND L2 AND C AND L4) AFTER 1 ns;
    O5N <= NOT (A AND L2 AND C AND L4) AFTER 1 ns;
    O6N <= NOT (L1 AND B AND C AND L4) AFTER 1 ns;
    O7N <= NOT (A AND B AND C AND L4) AFTER 1 ns;
    O8N <= NOT (L1 AND L2 AND L3 AND D) AFTER 1 ns;
    O9N <= NOT (A AND L2 AND L3 AND D) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74465\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic);
END \74465\;

architecture model OF \74465\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GN1 OR GN2);
    N1 <=  (A1);
    N2 <=  (A2);
    N3 <=  (A3);
    N4 <=  (A4);
    N5 <=  (A5);
    N6 <=  (A6);
    N7 <=  (A7);
    N8 <=  (A8);
    TSB_229 :  ORCAD_TSB 
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1);
    TSB_230 :  ORCAD_TSB 
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1);
    TSB_231 :  ORCAD_TSB 
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1);
    TSB_232 :  ORCAD_TSB 
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1);
    TSB_233 :  ORCAD_TSB 
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1);
    TSB_234 :  ORCAD_TSB 
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1);
    TSB_235 :  ORCAD_TSB 
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1);
    TSB_236 :  ORCAD_TSB 
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74466\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
YN1 : OUT  std_logic;
YN2 : OUT  std_logic;
YN3 : OUT  std_logic;
YN4 : OUT  std_logic;
YN5 : OUT  std_logic;
YN6 : OUT  std_logic;
YN7 : OUT  std_logic;
YN8 : OUT  std_logic);
END \74466\;

architecture model OF \74466\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GN1 OR GN2);
    N1 <= NOT (A1);
    N2 <= NOT (A2);
    N3 <= NOT (A3);
    N4 <= NOT (A4);
    N5 <= NOT (A5);
    N6 <= NOT (A6);
    N7 <= NOT (A7);
    N8 <= NOT (A8);
    TSB_237 :  ORCAD_TSB 
      PORT MAP  (O=>YN1 , i1=>N1 , en=>L1);
    TSB_238 :  ORCAD_TSB 
      PORT MAP  (O=>YN2 , i1=>N2 , en=>L1);
    TSB_239 :  ORCAD_TSB 
      PORT MAP  (O=>YN3 , i1=>N3 , en=>L1);
    TSB_240 :  ORCAD_TSB 
      PORT MAP  (O=>YN4 , i1=>N4 , en=>L1);
    TSB_241 :  ORCAD_TSB 
      PORT MAP  (O=>YN5 , i1=>N5 , en=>L1);
    TSB_242 :  ORCAD_TSB 
      PORT MAP  (O=>YN6 , i1=>N6 , en=>L1);
    TSB_243 :  ORCAD_TSB 
      PORT MAP  (O=>YN7 , i1=>N7 , en=>L1);
    TSB_244 :  ORCAD_TSB 
      PORT MAP  (O=>YN8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74467\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
A23 : IN  std_logic;
A24 : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
Y11 : OUT  std_logic;
Y12 : OUT  std_logic;
Y13 : OUT  std_logic;
Y14 : OUT  std_logic;
Y21 : OUT  std_logic;
Y22 : OUT  std_logic;
Y23 : OUT  std_logic;
Y24 : OUT  std_logic);

END \74467\;

architecture model OF \74467\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (G1N);
    L2 <= NOT (G2N);

    N1 <=  (A11);
    N2 <=  (A12);
    N3 <=  (A13);
    N4 <=  (A14);
    N5 <=  (A21);
    N6 <=  (A22);
    N7 <=  (A23);
    N8 <=  (A24);

    TSB_245 :  ORCAD_TSB 
      PORT MAP  (O=>Y11 , i1=>N1 , en=>L1);
    TSB_246 :  ORCAD_TSB 
      PORT MAP  (O=>Y12 , i1=>N2 , en=>L1);
    TSB_247 :  ORCAD_TSB 
      PORT MAP  (O=>Y13 , i1=>N3 , en=>L1);
    TSB_248 :  ORCAD_TSB 
      PORT MAP  (O=>Y14 , i1=>N4 , en=>L1);
    TSB_249 :  ORCAD_TSB 
      PORT MAP  (O=>Y21 , i1=>N5 , en=>L2);
    TSB_250 :  ORCAD_TSB 
      PORT MAP  (O=>Y22 , i1=>N6 , en=>L2);
    TSB_251 :  ORCAD_TSB 
      PORT MAP  (O=>Y23 , i1=>N7 , en=>L2);
    TSB_252 :  ORCAD_TSB 
      PORT MAP  (O=>Y24 , i1=>N8 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74468\ IS PORT(
A11 : IN  std_logic;
A12 : IN  std_logic;
A13 : IN  std_logic;
A14 : IN  std_logic;
A21 : IN  std_logic;
A22 : IN  std_logic;
A23 : IN  std_logic;
A24 : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
Y1N1 : OUT  std_logic;
Y1N2 : OUT  std_logic;
Y1N3 : OUT  std_logic;
Y1N4 : OUT  std_logic;
Y2N1 : OUT  std_logic;
Y2N2 : OUT  std_logic;
Y2N3 : OUT  std_logic;
Y2N4 : OUT  std_logic);

END \74468\;

architecture model OF \74468\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (G1N);
    L2 <= NOT (G2N);

    N1 <=  (A11);
    N2 <=  (A12);
    N3 <=  (A13);
    N4 <=  (A14);
    N5 <=  (A21);
    N6 <=  (A22);
    N7 <=  (A23);
    N8 <=  (A24);

    TSB_245 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N1 , i1=>N1 , en=>L1);
    TSB_246 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N2 , i1=>N2 , en=>L1);
    TSB_247 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N3 , i1=>N3 , en=>L1);
    TSB_248 :  ORCAD_TSB 
      PORT MAP  (O=>Y1N4 , i1=>N4 , en=>L1);
    TSB_249 :  ORCAD_TSB 
      PORT MAP  (O=>Y2N1 , i1=>N5 , en=>L2);
    TSB_250 :  ORCAD_TSB 
      PORT MAP  (O=>Y2N2 , i1=>N6 , en=>L2);
    TSB_251 :  ORCAD_TSB 
      PORT MAP  (O=>Y2N3 , i1=>N7 , en=>L2);
    TSB_252 :  ORCAD_TSB 
      PORT MAP  (O=>Y2N4 , i1=>N8 , en=>L2);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74490\ IS PORT(
CLK1 : IN  std_logic;
CLK2 : IN  std_logic;
SET91 : IN  std_logic;
SET92 : IN  std_logic;
CLR1 : IN  std_logic;
CLR2 : IN  std_logic;
QA1 : OUT  std_logic;
QA2 : OUT  std_logic;
QB1 : OUT  std_logic;
QB2 : OUT  std_logic;
QC1 : OUT  std_logic;
QC2 : OUT  std_logic;
QD1 : OUT  std_logic;
QD2 : OUT  std_logic);
END \74490\;

architecture model OF \74490\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (SET91);
    L2 <= NOT (SET92);
    L3 <= NOT (CLR1);
    L4 <= NOT (CLR2);
    L5 <=  (L3 AND L1);
    L6 <=  (L4 AND L2);
    L13 <= NOT (N7);
    L14 <= NOT (N8);
    L15 <= NOT (N9);
    L16 <= NOT (N10);
    L17 <= NOT (N11);
    L18 <= NOT (N12);
    L19 <= NOT (N13);
    L20 <= NOT (N14);
    L7 <=  (L14 AND L16);
    L8 <=  (L16 AND L15);
    L9 <=  (L18 AND L20);
    L10 <=  (L20 AND L19);
    L11 <= NOT (L7 OR L8);
    L12 <= NOT (L9 OR L10);
    N1 <= NOT (CLK1);
    N2 <= NOT (CLK2);
    N3 <= NOT (N7 AND L16);
    N4 <= NOT (N7 AND L11);
    N5 <= NOT (N11 AND L20);
    N6 <= NOT (N11 AND L12);
    N15 <= NOT (N8);
    N16 <= NOT (N12);
    DQFFPC_20 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N7 , d=>L13 , clk=>N1 , pr=>L1 , cl=>L3);
    DQFFC_72 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>L14 , clk=>N3 , cl=>L5);
    DQFFC_73 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L15 , clk=>N15 , cl=>L5);
    DQFFPC_21 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N10 , d=>L16 , clk=>N4 , pr=>L1 , cl=>L3);
    DQFFPC_22 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N11 , d=>L17 , clk=>N2 , pr=>L2 , cl=>L4);
    DQFFC_74 :  ORCAD_DQFFC 
      PORT MAP  (q=>N12 , d=>L18 , clk=>N5 , cl=>L6);
    DQFFC_75 :  ORCAD_DQFFC 
      PORT MAP  (q=>N13 , d=>L19 , clk=>N16 , cl=>L6);
    DQFFPC_23 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N14 , d=>L20 , clk=>N6 , pr=>L2 , cl=>L4);
    QA1 <=  (N7) AFTER 1 ns;
    QB1 <=  (N8) AFTER 1 ns;
    QC1 <=  (N9) AFTER 1 ns;
    QD1 <=  (N10) AFTER 1 ns;
    QA2 <=  (N11) AFTER 1 ns;
    QB2 <=  (N12) AFTER 1 ns;
    QC2 <=  (N13) AFTER 1 ns;
    QD2 <=  (N14) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74518\ IS PORT(
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
GN : IN  std_logic;
PQ : OUT  std_logic);
END \74518\;

architecture model OF \74518\ IS
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
    L1 <= NOT (P0 XOR Q0);
    L2 <= NOT (P1 XOR Q1);
    L3 <= NOT (P2 XOR Q2);
    L4 <= NOT (P3 XOR Q3);
    L5 <= NOT (P4 XOR Q4);
    L6 <= NOT (P5 XOR Q5);
    L7 <= NOT (P6 XOR Q6);
    L8 <= NOT (P7 XOR Q7);
    L9 <= NOT (GN);
    PQ <=  (L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8 AND L9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74540\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
YN1 : OUT  std_logic;
YN2 : OUT  std_logic;
YN3 : OUT  std_logic;
YN4 : OUT  std_logic;
YN5 : OUT  std_logic;
YN6 : OUT  std_logic;
YN7 : OUT  std_logic;
YN8 : OUT  std_logic);
END \74540\;

architecture model OF \74540\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GN1 OR GN2);
    N1 <= NOT (A1);
    N2 <= NOT (A2);
    N3 <= NOT (A3);
    N4 <= NOT (A4);
    N5 <= NOT (A5);
    N6 <= NOT (A6);
    N7 <= NOT (A7);
    N8 <= NOT (A8);
    TSB_261 :  ORCAD_TSB 
      PORT MAP  (O=>YN1 , i1=>N1 , en=>L1);
    TSB_262 :  ORCAD_TSB 
      PORT MAP  (O=>YN2 , i1=>N2 , en=>L1);
    TSB_263 :  ORCAD_TSB 
      PORT MAP  (O=>YN3 , i1=>N3 , en=>L1);
    TSB_264 :  ORCAD_TSB 
      PORT MAP  (O=>YN4 , i1=>N4 , en=>L1);
    TSB_265 :  ORCAD_TSB 
      PORT MAP  (O=>YN5 , i1=>N5 , en=>L1);
    TSB_266 :  ORCAD_TSB 
      PORT MAP  (O=>YN6 , i1=>N6 , en=>L1);
    TSB_267 :  ORCAD_TSB 
      PORT MAP  (O=>YN7 , i1=>N7 , en=>L1);
    TSB_268 :  ORCAD_TSB 
      PORT MAP  (O=>YN8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74541\ IS PORT(
A1 : IN  std_logic;
A2 : IN  std_logic;
A3 : IN  std_logic;
A4 : IN  std_logic;
A5 : IN  std_logic;
A6 : IN  std_logic;
A7 : IN  std_logic;
A8 : IN  std_logic;
GN1 : IN  std_logic;
GN2 : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic);
END \74541\;

architecture model OF \74541\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (GN1 OR GN2);
    N1 <=  (A1);
    N2 <=  (A2);
    N3 <=  (A3);
    N4 <=  (A4);
    N5 <=  (A5);
    N6 <=  (A6);
    N7 <=  (A7);
    N8 <=  (A8);
    TSB_269 :  ORCAD_TSB 
      PORT MAP  (O=>Y1 , i1=>N1 , en=>L1);
    TSB_270 :  ORCAD_TSB 
      PORT MAP  (O=>Y2 , i1=>N2 , en=>L1);
    TSB_271 :  ORCAD_TSB 
      PORT MAP  (O=>Y3 , i1=>N3 , en=>L1);
    TSB_272 :  ORCAD_TSB 
      PORT MAP  (O=>Y4 , i1=>N4 , en=>L1);
    TSB_273 :  ORCAD_TSB 
      PORT MAP  (O=>Y5 , i1=>N5 , en=>L1);
    TSB_274 :  ORCAD_TSB 
      PORT MAP  (O=>Y6 , i1=>N6 , en=>L1);
    TSB_275 :  ORCAD_TSB 
      PORT MAP  (O=>Y7 , i1=>N7 , en=>L1);
    TSB_276 :  ORCAD_TSB 
      PORT MAP  (O=>Y8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74548\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
CLK : IN  std_logic;
CLKENN1 : IN  std_logic;
CLKENN2 : IN  std_logic;
INSEL : IN  std_logic;
OUTSEL : IN  std_logic;
OEN : IN  std_logic;
Y0 : OUT  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic);
END \74548\;

architecture model OF \74548\ IS

    BEGIN
    PROCESS(CLK, OUTSEL, OEN)
    VARIABLE rank1 : std_logic_vector(7 DOWNTO 0);
    VARIABLE rank2 : std_logic_vector(7 DOWNTO 0);

    BEGIN
    if(CLK = '1') AND CLK'EVENT THEN
         if(CLKENN2 = '1') THEN
              if(CLKENN1 = '0') THEN
                   rank1(0) := D0;
                   rank1(1) := D1;
                   rank1(2) := D2;
                   rank1(3) := D3;
                   rank1(4) := D4;
                   rank1(5) := D5;
                   rank1(6) := D6;
                   rank1(7) := D7;
              END if;
         ELSE
              if(CLKENN1 = '0') AND (INSEL = '0') THEN
                   rank2(0) := rank1(0);
                   rank2(1) := rank1(1);
                   rank2(2) := rank1(2);
                   rank2(3) := rank1(3);
                   rank2(4) := rank1(4);
                   rank2(5) := rank1(5);
                   rank2(6) := rank1(6);
                   rank2(7) := rank1(7);
                   rank1(0) := D0;
                   rank1(1) := D1;
                   rank1(2) := D2;
                   rank1(3) := D3;
                   rank1(4) := D4;
                   rank1(5) := D5;
                   rank1(6) := D6;
                   rank1(7) := D7;
              ELSif(CLKENN1 = '0') AND (INSEL = '1') THEN
                   rank1(0) := D0;
                   rank1(1) := D1;
                   rank1(2) := D2;
                   rank1(3) := D3;
                   rank1(4) := D4;
                   rank1(5) := D5;
                   rank1(6) := D6;
                   rank1(7) := D7;
                   rank2(0) := D0;
                   rank2(1) := D1;
                   rank2(2) := D2;
                   rank2(3) := D3;
                   rank2(4) := D4;
                   rank2(5) := D5;
                   rank2(6) := D6;
                   rank2(7) := D7;
              ELSif(CLKENN1 = '1') AND (INSEL = '0') THEN
                   rank2(0) := rank1(0);
                   rank2(1) := rank1(1);
                   rank2(2) := rank1(2);
                   rank2(3) := rank1(3);
                   rank2(4) := rank1(4);
                   rank2(5) := rank1(5);
                   rank2(6) := rank1(6);
                   rank2(7) := rank1(7);
              ELSif(CLKENN1 = '1') AND (INSEL = '1') THEN
                   rank2(0) := D0;
                   rank2(1) := D1;
                   rank2(2) := D2;
                   rank2(3) := D3;
                   rank2(4) := D4;
                   rank2(5) := D5;
                   rank2(6) := D6;
                   rank2(7) := D7;
              END if;
         END if;
    END if;

    if(OUTSEL = '0') AND (OEN = '0') THEN
         Y0 <= rank2(0) AFTER 1 ns;
         Y1 <= rank2(1) AFTER 1 ns;
         Y2 <= rank2(2) AFTER 1 ns;
         Y3 <= rank2(3) AFTER 1 ns;
         Y4 <= rank2(4) AFTER 1 ns;
         Y5 <= rank2(5) AFTER 1 ns;
         Y6 <= rank2(6) AFTER 1 ns;
         Y7 <= rank2(7) AFTER 1 ns;
    ELSif(OUTSEL = '1') AND (OEN = '0') THEN
         Y0 <= rank1(0) AFTER 1 ns;
         Y1 <= rank1(1) AFTER 1 ns;
         Y2 <= rank1(2) AFTER 1 ns;
         Y3 <= rank1(3) AFTER 1 ns;
         Y4 <= rank1(4) AFTER 1 ns;
         Y5 <= rank1(5) AFTER 1 ns;
         Y6 <= rank1(6) AFTER 1 ns;
         Y7 <= rank1(7) AFTER 1 ns;
    ELSE
         Y0 <= 'Z' AFTER 1 ns;
         Y1 <= 'Z' AFTER 1 ns;
         Y2 <= 'Z' AFTER 1 ns;
         Y3 <= 'Z' AFTER 1 ns;
         Y4 <= 'Z' AFTER 1 ns;
         Y5 <= 'Z' AFTER 1 ns;
         Y6 <= 'Z' AFTER 1 ns;
         Y7 <= 'Z' AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74549\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
G1N : IN  std_logic;
G2N : IN  std_logic;
G : IN  std_logic;
INSEL : IN  std_logic;
OUTSEL : IN  std_logic;
OEN : IN  std_logic;
Y0 : OUT  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic);
END \74549\;

architecture model OF \74549\ IS

    BEGIN
    PROCESS(G, G1N, G2N, OUTSEL, OEN, D0, D1, D2, D3, D4, D5, D6, D7)
	 VARIABLE rank1 : std_logic_vector(7 DOWNTO 0) := "00000000";
    VARIABLE rank2 : std_logic_vector(7 DOWNTO 0) := "00000000";
	 VARIABLE n1 : std_logic;
	 VARIABLE n2 : std_logic;
	 VARIABLE n3 : std_logic;
	 VARIABLE l1 : std_logic;
	 VARIABLE l2 : std_logic;
	 VARIABLE l3 : std_logic;
	 VARIABLE l4 : std_logic;

    BEGIN
    n1 := NOT (G);
    n2 := NOT (G1N);
    n3 := NOT (G2N);

    l1 := n2 AND n3;
    l2 := n1 AND n2 AND G2N;
    l3 := n1 AND G1N AND n3;
    l4 := n1 AND G1N AND G2N;

	 if((l1 = '1') AND (INSEL = '0')) OR ((G = '1') AND (INSEL = '0')) THEN
         rank2(0) := rank1(0);
         rank2(1) := rank1(1);
         rank2(2) := rank1(2);
         rank2(3) := rank1(3);
         rank2(4) := rank1(4);
         rank2(5) := rank1(5);
         rank2(6) := rank1(6);
         rank2(7) := rank1(7);
         rank1(0) := D0;
         rank1(1) := D1;
         rank1(2) := D2;
         rank1(3) := D3;
         rank1(4) := D4;
         rank1(5) := D5;
         rank1(6) := D6;
         rank1(7) := D7;
    ELSif((l1 = '1') AND (INSEL = '1')) OR ((G = '1') AND (INSEL = '1')) THEN
         rank1(0) := D0;
         rank1(1) := D1;
         rank1(2) := D2;
         rank1(3) := D3;
         rank1(4) := D4;
         rank1(5) := D5;
         rank1(6) := D6;
         rank1(7) := D7;
         rank2(0) := D0;
         rank2(1) := D1;
         rank2(2) := D2;
         rank2(3) := D3;
         rank2(4) := D4;
         rank2(5) := D5;
         rank2(6) := D6;
         rank2(7) := D7;
    ELSif(l2 = '1') THEN
         rank1(0) := D0;
         rank1(1) := D1;
         rank1(2) := D2;
         rank1(3) := D3;
         rank1(4) := D4;
         rank1(5) := D5;
         rank1(6) := D6;
         rank1(7) := D7;
    ELSif(l3 = '1') AND (INSEL = '0') THEN
         rank2(0) := rank1(0);
         rank2(1) := rank1(1);
         rank2(2) := rank1(2);
         rank2(3) := rank1(3);
         rank2(4) := rank1(4);
         rank2(5) := rank1(5);
         rank2(6) := rank1(6);
         rank2(7) := rank1(7);
    ELSif(l3 = '1') AND (INSEL = '1') THEN
         rank2(0) := D0;
         rank2(1) := D1;
         rank2(2) := D2;
         rank2(3) := D3;
         rank2(4) := D4;
         rank2(5) := D5;
         rank2(6) := D6;
         rank2(7) := D7;
    END if;    

	 if(OUTSEL = '0') AND (OEN = '0') THEN
         Y0 <= rank2(0) AFTER 1 ns;
         Y1 <= rank2(1) AFTER 1 ns;
         Y2 <= rank2(2) AFTER 1 ns;
         Y3 <= rank2(3) AFTER 1 ns;
         Y4 <= rank2(4) AFTER 1 ns;
         Y5 <= rank2(5) AFTER 1 ns;
         Y6 <= rank2(6) AFTER 1 ns;
         Y7 <= rank2(7) AFTER 1 ns;
    ELSif(OUTSEL = '1') AND (OEN = '0') THEN
         Y0 <= rank1(0) AFTER 1 ns;
         Y1 <= rank1(1) AFTER 1 ns;
         Y2 <= rank1(2) AFTER 1 ns;
         Y3 <= rank1(3) AFTER 1 ns;
         Y4 <= rank1(4) AFTER 1 ns;
         Y5 <= rank1(5) AFTER 1 ns;
         Y6 <= rank1(6) AFTER 1 ns;
         Y7 <= rank1(7) AFTER 1 ns;
    ELSE
         Y0 <= 'Z' AFTER 1 ns;
         Y1 <= 'Z' AFTER 1 ns;
         Y2 <= 'Z' AFTER 1 ns;
         Y3 <= 'Z' AFTER 1 ns;
         Y4 <= 'Z' AFTER 1 ns;
         Y5 <= 'Z' AFTER 1 ns;
         Y6 <= 'Z' AFTER 1 ns;
         Y7 <= 'Z' AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;
use altlib.all;

use altlib.orcad_prims.all;

entity \74568\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CLK : IN  std_logic;
LDN : IN  std_logic;
SCLRN : IN  std_logic;
ACLRN : IN  std_logic;
UDN : IN  std_logic;
OEN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
RCON : OUT  std_logic;
CCON : OUT  std_logic);
END \74568\;

architecture model OF \74568\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;

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
	 SIGNAL FB1 : std_logic;

    BEGIN
    L1 <= NOT (OEN);
    L2 <= NOT (N1);
    L3 <= NOT (SCLRN);
    L4 <= NOT (ENTN);
    L5 <= NOT (FB1);
    L6 <= NOT (N3 OR N4);
    L7 <= NOT (L3 OR LDN);
    L8 <=  (SCLRN AND LDN);
    L9 <= NOT (L3 OR L7 OR ENPN OR ENTN);
    L10 <= NOT (L9);
    L11 <=  (L2 AND N6);
    L12 <=  (N1 AND N5);
    L13 <=  (L2 AND N8);
    L14 <=  (N1 AND N7);
    L15 <=  (L2 AND N10);
    L16 <=  (N1 AND N9);
    L17 <=  (L2 AND N12);
    L18 <=  (N1 AND N11);
    L19 <= NOT (L11 OR L12);
    L20 <= NOT (L13 OR L14);
    L21 <= NOT (L15 OR L16);
    L22 <= NOT (L17 OR L18);
    L23 <= NOT (L8 AND N5);
    L24 <= NOT (L9 AND L19);
    L25 <= NOT (L9 AND L19 AND L20);
    L26 <= NOT (L8 AND N9);
    L27 <= NOT (L9 AND L19);
    L28 <= NOT (L8 AND N11);
    L29 <= NOT (L2 AND L22);
    L30 <= NOT (N1 AND N10 AND N12);
    L31 <=  (L7 AND D0);
    L32 <=  (L8 AND L10 AND N5);
    L33 <=  (L9 AND L23);
    L34 <=  (L7 AND D1);
    L35 <=  (L8 AND L24 AND N7);
    L36 <=  (L9 AND L19 AND L29 AND L30 AND N8);
    L37 <=  (L7 AND D2);
    L38 <=  (L8 AND L25 AND N9);
    L39 <=  (L9 AND L19 AND L20 AND L26 AND L30);
    L40 <=  (L7 AND D3);
    L41 <=  (L8 AND L27 AND N11);
    L42 <=  (L9 AND L19 AND L20 AND L21 AND L28);
    L43 <=  (L31 OR L32 OR L33);
    L44 <=  (L34 OR L35 OR L36);
    L45 <=  (L37 OR L38 OR L39);
    L46 <=  (L40 OR L41 OR L42);
    L47 <=  (L2 AND L4 AND N13 AND N16);
    L48 <=  (L4 AND N1 AND N13 AND N14 AND N15 AND N16);
    N1 <= NOT (UDN);
    N2 <= NOT (CLK);
    N3 <=  (ENTN);
    N4 <=  (ENPN);
    DFFC_4 : ORCAD_DFFC 
      PORT MAP (q=>N5 , qNot=>N6 , d=>L43 , clk=>CLK , cl=>ACLRN);
    DFFC_5 : ORCAD_DFFC 
      PORT MAP (q=>N7 , qNot=>N8 , d=>L44 , clk=>CLK , cl=>ACLRN);
    DFFC_6 : ORCAD_DFFC 
      PORT MAP (q=>N9 , qNot=>N10 , d=>L45 , clk=>CLK , cl=>ACLRN);
    DFFC_7 : ORCAD_DFFC 
      PORT MAP (q=>N11 , qNot=>N12 , d=>L46 , clk=>CLK , cl=>ACLRN);
    N13 <=  (L19);
    N14 <=  (L20);
    N15 <=  (L21);
    N16 <=  (L22);
    N17 <=  (N5);
    N18 <=  (N7);
    N19 <=  (N9);
    N20 <=  (N11);
    CCON <= NOT (L5 AND L6 AND N2) AFTER 1 ns;
    FB1  <= NOT (L47 OR L48) AFTER 1 ns;
    RCON <= FB1;
    TSB_124 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N17 , en=>L1);
    TSB_125 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N18 , en=>L1);
    TSB_126 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N19 , en=>L1);
    TSB_127 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N20 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74569\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CLK : IN  std_logic;
LDN : IN  std_logic;
SCLRN : IN  std_logic;
ACLRN : IN  std_logic;
UDN : IN  std_logic;
OEN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
RCON : OUT  std_logic;
CCON : OUT  std_logic);
END \74569\;

architecture model OF \74569\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;

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
	 SIGNAL FB1 : std_logic;

    BEGIN
    L1 <= NOT (OEN);
    L2 <= NOT (N1);
    L3 <= NOT (SCLRN);
    L4 <= NOT (ENTN);
    L5 <= NOT (N3 OR N4);
    L6 <= NOT (L3 OR LDN);
    L7 <=  (SCLRN AND LDN);
    L8 <= NOT (L7 AND N7);
    L9 <= NOT (L3 OR L6 OR ENPN OR ENTN);
    L10 <= NOT (L9);
    L11 <=  (L2 AND N6);
    L12 <=  (N1 AND N5);
    L13 <=  (L2 AND N8);
    L14 <=  (N1 AND N7);
    L15 <=  (L2 AND N10);
    L16 <=  (N1 AND N9);
    L17 <=  (L2 AND N12);
    L18 <=  (N1 AND N11);
    L19 <= NOT (L11 OR L12);
    L20 <= NOT (L13 OR L14);
    L21 <= NOT (L15 OR L16);
    L22 <= NOT (L17 OR L18);
    L23 <= NOT (L7 AND N5);
    L24 <= NOT (L9 AND L19);
    L25 <= NOT (L9 AND L19 AND L20);
    L26 <= NOT (L7 AND N9);
    L27 <= NOT (L9 AND L19 AND L20 AND L21);
    L28 <= NOT (L7 AND N11);
    L29 <=  (L6 AND D0);
    L30 <=  (L7 AND L10 AND N5);
    L31 <=  (L9 AND L23);
    L32 <=  (L6 AND D1);
    L33 <=  (L7 AND L24 AND N7);
    L34 <=  (L8 AND L9 AND L19);
    L35 <=  (L6 AND D2);
    L36 <=  (L7 AND L25 AND N9);
    L37 <=  (L9 AND L19 AND L20 AND L26);
    L38 <=  (L6 AND D3);
    L39 <=  (L7 AND L27 AND N11);
    L40 <=  (L9 AND L19 AND L20 AND L21 AND L28);
    L41 <=  (L29 OR L30 OR L31);
    L42 <=  (L32 OR L33 OR L34);
    L43 <=  (L35 OR L36 OR L37);
    L44 <=  (L38 OR L39 OR L40);
    L45 <=  (L2 AND L4 AND N13 AND N14 AND N15 AND N16);
    L46 <=  (L4 AND N1 AND N13 AND N14 AND N15 AND N16);
    L47 <= NOT (FB1);
    N1 <= NOT (UDN);
    N2 <= NOT (CLK);
    N3 <=  (ENTN);
    N4 <=  (ENPN);
    DFFC_8 : ORCAD_DFFC 
      PORT MAP (q=>N5 , qNot=>N6 , d=>L41 , clk=>CLK , cl=>ACLRN);
    DFFC_9 : ORCAD_DFFC 
      PORT MAP (q=>N7 , qNot=>N8 , d=>L42 , clk=>CLK , cl=>ACLRN);
    DFFC_10 : ORCAD_DFFC 
      PORT MAP (q=>N9 , qNot=>N10 , d=>L43 , clk=>CLK , cl=>ACLRN);
    DFFC_11 : ORCAD_DFFC 
      PORT MAP (q=>N11 , qNot=>N12 , d=>L44 , clk=>CLK , cl=>ACLRN);
    N13 <=  (L19);
    N14 <=  (L20);
    N15 <=  (L21);
    N16 <=  (L22);
    N17 <=  (N5);
    N18 <=  (N7);
    N19 <=  (N9);
    N20 <=  (N11);
    CCON <= NOT (L5 AND L47 AND N2) AFTER 1 ns;
    FB1  <= NOT (L45 OR L46) AFTER 1 ns;
    RCON <= FB1;
    TSB_128 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N17 , en=>L1);
    TSB_129 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N18 , en=>L1);
    TSB_130 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N19 , en=>L1);
    TSB_131 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N20 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74589\ IS PORT(
SER : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
SRCLK : IN  std_logic;
SRLDN : IN  std_logic;
RCLK : IN  std_logic;
OEN : IN  std_logic;
QHN : OUT  std_logic);
END \74589\;

architecture model OF \74589\ IS

    BEGIN
    PROCESS(OEN, SRCLK, RCLK, SRLDN)
    VARIABLE q : std_logic_vector(7 DOWNTO 0) := "00000000";
    VARIABLE i : std_logic_vector(7 DOWNTO 0) := "00000000";

    BEGIN
    if(RCLK = '1') AND RCLK'EVENT THEN
         i(0) := D0;
         i(1) := D1;
         i(2) := D2;
         i(3) := D3;
         i(4) := D4;
         i(5) := D5;
         i(6) := D6;
         i(7) := D7;
    END if;

    if(SRLDN = '0') THEN
         q(0) := i(0);         
         q(1) := i(1);
         q(2) := i(2);
         q(3) := i(3);
         q(4) := i(4);
         q(5) := i(5);
         q(6) := i(6);
         q(7) := i(7);
    ELSif(SRCLK = '1') AND SRCLK'EVENT THEN
         q(7) := q(6);
         q(6) := q(5);
         q(5) := q(4);
         q(4) := q(3);
         q(3) := q(2);
         q(2) := q(1);
         q(1) := q(0);
         q(0) := SER;
    END if;

    if(OEN = '1') THEN
         QHN <= 'Z' AFTER 1 ns;
    ELSE
         QHN <= Q(7) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74590\ IS PORT(
CCLK : IN  std_logic;
CCKEN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
GN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
RCON : OUT  std_logic);
END \74590\;

architecture model OF \74590\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <= NOT (CCKEN);
    L3 <= NOT (N1);
    L4 <= NOT (N9);
    L5 <= NOT (N10);
    L6 <= NOT (N11);
    L7 <= NOT (N12);
    L8 <= NOT (N13);
    L9 <= NOT (N14);
    L10 <= NOT (N15);
    L11 <= NOT (N16);
    DLATCH_59 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>CCLK , enable=>L2);
    N2 <= NOT (N9 AND L3);
    N3 <= NOT (N9 AND L3 AND N10);
    N4 <= NOT (N9 AND L3 AND N10 AND N11);
    N5 <= NOT (N9 AND L3 AND N10 AND N11 AND N12);
    N6 <= NOT (N9 AND L3 AND N10 AND N11 AND N12 AND N13);
    N7 <= NOT (N9 AND L3 AND N10 AND N11 AND N12 AND N13 AND N14);
    N8 <= NOT (N9 AND L3 AND N10 AND N11 AND N12 AND N13 AND N14 AND N15);
    DQFFC_126 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>L4 , clk=>N1 , cl=>CCLRN);
    DQFFC_127 :  ORCAD_DQFFC 
      PORT MAP  (q=>N10 , d=>L5 , clk=>N2 , cl=>CCLRN);
    DQFFC_128 :  ORCAD_DQFFC 
      PORT MAP  (q=>N11 , d=>L6 , clk=>N3 , cl=>CCLRN);
    DQFFC_129 :  ORCAD_DQFFC 
      PORT MAP  (q=>N12 , d=>L7 , clk=>N4 , cl=>CCLRN);
    DQFFC_130 :  ORCAD_DQFFC 
      PORT MAP  (q=>N13 , d=>L8 , clk=>N5 , cl=>CCLRN);
    DQFFC_131 :  ORCAD_DQFFC 
      PORT MAP  (q=>N14 , d=>L9 , clk=>N6 , cl=>CCLRN);
    DQFFC_132 :  ORCAD_DQFFC 
      PORT MAP  (q=>N15 , d=>L10 , clk=>N7 , cl=>CCLRN);
    DQFFC_133 :  ORCAD_DQFFC 
      PORT MAP  (q=>N16 , d=>L11 , clk=>N8 , cl=>CCLRN);
    DQFF_105 :  ORCAD_DQFF 
      PORT MAP  (q=>N17 , d=>N9 , clk=>RCLK);
    DQFF_106 :  ORCAD_DQFF 
      PORT MAP  (q=>N18 , d=>N10 , clk=>RCLK);
    DQFF_107 :  ORCAD_DQFF 
      PORT MAP  (q=>N19 , d=>N11 , clk=>RCLK);
    DQFF_108 :  ORCAD_DQFF 
      PORT MAP  (q=>N20 , d=>N12 , clk=>RCLK);
    DQFF_109 :  ORCAD_DQFF 
      PORT MAP  (q=>N21 , d=>N13 , clk=>RCLK);
    DQFF_110 :  ORCAD_DQFF 
      PORT MAP  (q=>N22 , d=>N14 , clk=>RCLK);
    DQFF_111 :  ORCAD_DQFF 
      PORT MAP  (q=>N23 , d=>N15 , clk=>RCLK);
    DQFF_112 :  ORCAD_DQFF 
      PORT MAP  (q=>N24 , d=>N16 , clk=>RCLK);
    N25 <=  (N17);
    N26 <=  (N18);
    N27 <=  (N19);
    N28 <=  (N20);
    N29 <=  (N21);
    N30 <=  (N22);
    N31 <=  (N23);
    N32 <=  (N24);
    TSB_277 :  ORCAD_TSB 
      PORT MAP  (O=>QA , i1=>N25 , en=>L1);
    TSB_278 :  ORCAD_TSB 
      PORT MAP  (O=>QB , i1=>N26 , en=>L1);
    TSB_279 :  ORCAD_TSB 
      PORT MAP  (O=>QC , i1=>N27 , en=>L1);
    TSB_280 :  ORCAD_TSB 
      PORT MAP  (O=>QD , i1=>N28 , en=>L1);
    TSB_281 :  ORCAD_TSB 
      PORT MAP  (O=>QE , i1=>N29 , en=>L1);
    TSB_282 :  ORCAD_TSB 
      PORT MAP  (O=>QF , i1=>N30 , en=>L1);
    TSB_283 :  ORCAD_TSB 
      PORT MAP  (O=>QG , i1=>N31 , en=>L1);
    TSB_284 :  ORCAD_TSB 
      PORT MAP  (O=>QH , i1=>N32 , en=>L1);
    RCON <= NOT (N16 AND N15 AND N14 AND N13 AND N12 AND N11 AND N10 AND N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74592\ IS PORT(
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
E : IN  std_logic;
F : IN  std_logic;
G : IN  std_logic;
H : IN  std_logic;
CCKEN : IN  std_logic;
CCLK : IN  std_logic;
CLOADN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCON : OUT  std_logic);
END \74592\;

architecture model OF \74592\ IS
	COMPONENT orcad_dqffpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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

    BEGIN
    L1 <= NOT (CLOADN);
    L2 <= NOT (CCKEN);
    L3 <= NOT (N1);
    L4 <= NOT (N2 AND L1);
    L5 <= NOT (L1 AND N3);
    L6 <= NOT (N4 AND L1);
    L7 <= NOT (L1 AND N5);
    L8 <= NOT (N6 AND L1);
    L9 <= NOT (L1 AND N7);
    L10 <= NOT (N8 AND L1);
    L11 <= NOT (L1 AND N9);
    L12 <= NOT (N10 AND L1);
    L13 <= NOT (L1 AND N11);
    L14 <= NOT (N12 AND L1);
    L15 <= NOT (L1 AND N13);
    L16 <= NOT (N14 AND L1);
    L17 <= NOT (L1 AND N15);
    L18 <= NOT (N16 AND L1);
    L19 <= NOT (L1 AND N17);
    L20 <=  (L5 AND CCLRN);
    L21 <=  (L7 AND CCLRN);
    L22 <=  (L9 AND CCLRN);
    L23 <=  (L11 AND CCLRN);
    L24 <=  (L13 AND CCLRN);
    L25 <=  (L15 AND CCLRN);
    L26 <=  (L17 AND CCLRN);
    L27 <=  (L19 AND CCLRN);
    L28 <= NOT (N18);
    L29 <= NOT (N19);
    L30 <= NOT (N20);
    L31 <= NOT (N21);
    L32 <= NOT (N22);
    L33 <= NOT (N23);
    L34 <= NOT (N24);
    L35 <= NOT (N25);
    N1 <=  (CCLK AND L2);
    N26 <= NOT (N18 AND L3);
    N27 <= NOT (N19 AND L3 AND N18);
    N28 <= NOT (N20 AND L3 AND N19 AND N18);
    N29 <= NOT (N21 AND L3 AND N20 AND N19 AND N18);
    N30 <= NOT (N22 AND L3 AND N21 AND N20 AND N19 AND N18);
    N31 <= NOT (N23 AND L3 AND N22 AND N21 AND N20 AND N19 AND N18);
    N32 <= NOT (N24 AND L3 AND N23 AND N22 AND N21 AND N20 AND N19 AND N18);
    DFF_0 :  ORCAD_DFF 
      PORT MAP  (q=>N2 , qNot=>N3 , d=>A , clk=>RCLK);
    DFF_1 :  ORCAD_DFF 
      PORT MAP  (q=>N4 , qNot=>N5 , d=>B , clk=>RCLK);
    DFF_2 :  ORCAD_DFF 
      PORT MAP  (q=>N6 , qNot=>N7 , d=>C , clk=>RCLK);
    DFF_3 :  ORCAD_DFF 
      PORT MAP  (q=>N8 , qNot=>N9 , d=>D , clk=>RCLK);
    DFF_4 :  ORCAD_DFF 
      PORT MAP  (q=>N10 , qNot=>N11 , d=>E , clk=>RCLK);
    DFF_5 :  ORCAD_DFF 
      PORT MAP  (q=>N12 , qNot=>N13 , d=>F , clk=>RCLK);
    DFF_6 :  ORCAD_DFF 
      PORT MAP  (q=>N14 , qNot=>N15 , d=>G , clk=>RCLK);
    DFF_7 :  ORCAD_DFF 
      PORT MAP  (q=>N16 , qNot=>N17 , d=>H , clk=>RCLK);
    DQFFPC_7 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N18 , d=>L28 , clk=>N1 , pr=>L4 , cl=>L20);
    DQFFPC_8 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N19 , d=>L29 , clk=>N26 , pr=>L6 , cl=>L21);
    DQFFPC_9 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N20 , d=>L30 , clk=>N27 , pr=>L8 , cl=>L22);
    DQFFPC_10 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N21 , d=>L31 , clk=>N28 , pr=>L10 , cl=>L23);
    DQFFPC_11 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N22 , d=>L32 , clk=>N29 , pr=>L12 , cl=>L24);
    DQFFPC_12 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N23 , d=>L33 , clk=>N30 , pr=>L14 , cl=>L25);
    DQFFPC_13 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N24 , d=>L34 , clk=>N31 , pr=>L16 , cl=>L26);
    DQFFPC_14 :  ORCAD_DQFFPC 
      PORT MAP  (q=>N25 , d=>L35 , clk=>N32 , pr=>L18 , cl=>L27);
    RCON <= NOT (N25 AND N24 AND N23 AND N22 AND N21 AND N20 AND N19 AND N18) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74594\ IS PORT(
SER : IN  std_logic;
SRCLK : IN  std_logic;
SRCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCLRN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
QHN : OUT  std_logic);
END \74594\;

architecture model OF \74594\ IS
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    N1 <=  (SRCLRN);
    DQFFC_142 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>SER , clk=>SRCLK , cl=>N1);
    DQFFC_143 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>N1);
    DQFFC_144 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>N1);
    DQFFC_145 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>N1);
    DQFFC_146 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>N1);
    DQFFC_147 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>N1);
    DQFFC_148 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>N1);
    DQFFC_149 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>N8 , clk=>SRCLK , cl=>N1);
    DQFFC_150 :  ORCAD_DQFFC 
      PORT MAP  (q=>QA , d=>N2 , clk=>RCLK , cl=>RCLRN);
    DQFFC_151 :  ORCAD_DQFFC 
      PORT MAP  (q=>QB , d=>N3 , clk=>RCLK , cl=>RCLRN);
    DQFFC_152 :  ORCAD_DQFFC 
      PORT MAP  (q=>QC , d=>N4 , clk=>RCLK , cl=>RCLRN);
    DQFFC_153 :  ORCAD_DQFFC 
      PORT MAP  (q=>QD , d=>N5 , clk=>RCLK , cl=>RCLRN);
    DQFFC_154 :  ORCAD_DQFFC 
      PORT MAP  (q=>QE , d=>N6 , clk=>RCLK , cl=>RCLRN);
    DQFFC_155 :  ORCAD_DQFFC 
      PORT MAP  (q=>QF , d=>N7 , clk=>RCLK , cl=>RCLRN);
    DQFFC_156 :  ORCAD_DQFFC 
      PORT MAP  (q=>QG , d=>N8 , clk=>RCLK , cl=>RCLRN);
    DQFFC_157 :  ORCAD_DQFFC 
      PORT MAP  (q=>QH , d=>N9 , clk=>RCLK , cl=>RCLRN);
    QHN <=  (N9) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74595\ IS PORT(
SER : IN  std_logic;
SRCLK : IN  std_logic;
SRCLRN : IN  std_logic;
RCLK : IN  std_logic;
GN : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
QE : OUT  std_logic;
QF : OUT  std_logic;
QG : OUT  std_logic;
QH : OUT  std_logic;
QHN : OUT  std_logic);
END \74595\;

architecture model OF \74595\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <= NOT (SRCLRN);
    DQFFC_158 :  ORCAD_DQFFC 
      PORT MAP  (q=>N1 , d=>SER , clk=>SRCLK , cl=>L2);
    DQFFC_159 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>N1 , clk=>SRCLK , cl=>L2);
    DQFFC_160 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>N2 , clk=>SRCLK , cl=>L2);
    DQFFC_161 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>N3 , clk=>SRCLK , cl=>L2);
    DQFFC_162 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>N4 , clk=>SRCLK , cl=>L2);
    DQFFC_163 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>N5 , clk=>SRCLK , cl=>L2);
    DQFFC_164 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>N6 , clk=>SRCLK , cl=>L2);
    DQFFC_165 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>N7 , clk=>SRCLK , cl=>L2);
    DQFF_121 :  ORCAD_DQFF 
      PORT MAP  (q=>N9 , d=>N1 , clk=>RCLK);
    DQFF_122 :  ORCAD_DQFF 
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK);
    DQFF_123 :  ORCAD_DQFF 
      PORT MAP  (q=>N11 , d=>N3 , clk=>RCLK);
    DQFF_124 :  ORCAD_DQFF 
      PORT MAP  (q=>N12 , d=>N4 , clk=>RCLK);
    DQFF_125 :  ORCAD_DQFF 
      PORT MAP  (q=>N13 , d=>N5 , clk=>RCLK);
    DQFF_126 :  ORCAD_DQFF 
      PORT MAP  (q=>N14 , d=>N6 , clk=>RCLK);
    DQFF_127 :  ORCAD_DQFF 
      PORT MAP  (q=>N15 , d=>N7 , clk=>RCLK);
    DQFF_128 :  ORCAD_DQFF 
      PORT MAP  (q=>N16 , d=>N8 , clk=>RCLK);
    QHN <=  (N8) AFTER 1 ns;
    TSB_285 :  ORCAD_TSB 
      PORT MAP  (O=>QA , i1=>N9 , en=>L1);
    TSB_286 :  ORCAD_TSB 
      PORT MAP  (O=>QB , i1=>N10 , en=>L1);
    TSB_287 :  ORCAD_TSB 
      PORT MAP  (O=>QC , i1=>N11 , en=>L1);
    TSB_288 :  ORCAD_TSB 
      PORT MAP  (O=>QD , i1=>N12 , en=>L1);
    TSB_289 :  ORCAD_TSB 
      PORT MAP  (O=>QE , i1=>N13 , en=>L1);
    TSB_290 :  ORCAD_TSB 
      PORT MAP  (O=>QF , i1=>N14 , en=>L1);
    TSB_291 :  ORCAD_TSB 
      PORT MAP  (O=>QG , i1=>N15 , en=>L1);
    TSB_292 :  ORCAD_TSB 
      PORT MAP  (O=>QH , i1=>N16 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74597\ IS PORT(
SER : IN  std_logic;
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
SRCLK : IN  std_logic;
SRLDN : IN  std_logic;
SRCLRN : IN  std_logic;
RCLK : IN  std_logic;
QHN : OUT  std_logic);
END \74597\;

architecture model OF \74597\ IS

    BEGIN
    PROCESS(SRCLRN, SRCLK, RCLK, SRLDN)
    VARIABLE sr : std_logic_vector(7 DOWNTO 0) := "00000000";
    VARIABLE i : std_logic_vector(7 DOWNTO 0) := "00000000";

    BEGIN
    if(RCLK = '1') AND RCLK'EVENT THEN
         i(0) := D0;         
         i(1) := D1;
         i(2) := D2;
         i(3) := D3;
         i(4) := D4;
         i(5) := D5;
         i(6) := D6;
         i(7) := D7;
    END if;

    if(SRCLRN = '0') THEN 
         sr(0) := '0';
         sr(1) := '0';
         sr(2) := '0';
         sr(3) := '0';
         sr(4) := '0';
         sr(5) := '0';
         sr(6) := '0';
         sr(7) := '0';
    ELSif(SRLDN = '0') THEN
         sr(0) := i(0);               
         sr(1) := i(1);
         sr(2) := i(2);
         sr(3) := i(3);
         sr(4) := i(4);
         sr(5) := i(5);
         sr(6) := i(6);
         sr(7) := i(7);
    ELSif(SRCLK = '1') AND SRCLK'EVENT THEN
         sr(7) := sr(6);
         sr(6) := sr(5);
         sr(5) := sr(4);
         sr(4) := sr(3);
         sr(3) := sr(2);
         sr(2) := sr(1);
         sr(1) := sr(0);
         sr(0) := SER;
    END if;

    QHN <= sr(7) AFTER 1 ns;
    
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74604\ IS PORT(
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
SEL : IN  std_logic;
CLK : IN  std_logic;
Y1 : OUT  std_logic;
Y2 : OUT  std_logic;
Y3 : OUT  std_logic;
Y4 : OUT  std_logic;
Y5 : OUT  std_logic;
Y6 : OUT  std_logic;
Y7 : OUT  std_logic;
Y8 : OUT  std_logic);
END \74604\;

architecture model OF \74604\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (SEL);
    DLATCH_61 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>B1 , enable=>CLK);
    DLATCH_62 :  ORCAD_DLATCH 
      PORT MAP  (q=>N2 , d=>A1 , enable=>CLK);
    DLATCH_63 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>B2 , enable=>CLK);
    DLATCH_64 :  ORCAD_DLATCH 
      PORT MAP  (q=>N4 , d=>A2 , enable=>CLK);
    DLATCH_65 :  ORCAD_DLATCH 
      PORT MAP  (q=>N5 , d=>B3 , enable=>CLK);
    DLATCH_66 :  ORCAD_DLATCH 
      PORT MAP  (q=>N6 , d=>A3 , enable=>CLK);
    DLATCH_67 :  ORCAD_DLATCH 
      PORT MAP  (q=>N7 , d=>B4 , enable=>CLK);
    DLATCH_68 :  ORCAD_DLATCH 
      PORT MAP  (q=>N8 , d=>A4 , enable=>CLK);
    DLATCH_69 :  ORCAD_DLATCH 
      PORT MAP  (q=>N9 , d=>B5 , enable=>CLK);
    DLATCH_70 :  ORCAD_DLATCH 
      PORT MAP  (q=>N10 , d=>A5 , enable=>CLK);
    DLATCH_71 :  ORCAD_DLATCH 
      PORT MAP  (q=>N11 , d=>B6 , enable=>CLK);
    DLATCH_72 :  ORCAD_DLATCH 
      PORT MAP  (q=>N12 , d=>A6 , enable=>CLK);
    DLATCH_73 :  ORCAD_DLATCH 
      PORT MAP  (q=>N13 , d=>B7 , enable=>CLK);
    DLATCH_74 :  ORCAD_DLATCH 
      PORT MAP  (q=>N14 , d=>A7 , enable=>CLK);
    DLATCH_75 :  ORCAD_DLATCH 
      PORT MAP  (q=>N15 , d=>B8 , enable=>CLK);
    DLATCH_76 :  ORCAD_DLATCH 
      PORT MAP  (q=>N16 , d=>A8 , enable=>CLK);
    N17 <=  (N1 AND L1);
    N19 <=  (N3 AND L1);
    N21 <=  (N5 AND L1);
    N23 <=  (N7 AND L1);
    N25 <=  (N9 AND L1);
    N27 <=  (N11 AND L1);
    N29 <=  (N13 AND L1);
    N31 <=  (N15 AND L1);
    N18 <=  (N2 AND CLK);
    N20 <=  (N4 AND CLK);
    N22 <=  (N6 AND CLK);
    N24 <=  (N8 AND CLK);
    N26 <=  (N10 AND CLK);
    N28 <=  (N12 AND CLK);
    N30 <=  (N14 AND CLK);
    N32 <=  (N16 AND CLK);
    L2 <=  (N17 OR N18);
    L3 <=  (N19 OR N20);
    L4 <=  (N21 OR N22);
    L5 <=  (N23 OR N24);
    L6 <=  (N25 OR N26);
    L7 <=  (N27 OR N28);
    L8 <=  (N29 OR N30);
    L9 <=  (N31 OR N32);
    TSB_293 :  ORCAD_TSB 
      PORT MAP  (O=>Y1 , i1=>L2 , en=>SEL);
    TSB_294 :  ORCAD_TSB 
      PORT MAP  (O=>Y2 , i1=>L3 , en=>SEL);
    TSB_295 :  ORCAD_TSB 
      PORT MAP  (O=>Y3 , i1=>L4 , en=>SEL);
    TSB_296 :  ORCAD_TSB 
      PORT MAP  (O=>Y4 , i1=>L5 , en=>SEL);
    TSB_297 :  ORCAD_TSB 
      PORT MAP  (O=>Y5 , i1=>L6 , en=>SEL);
    TSB_298 :  ORCAD_TSB 
      PORT MAP  (O=>Y6 , i1=>L7 , en=>SEL);
    TSB_299 :  ORCAD_TSB 
      PORT MAP  (O=>Y7 , i1=>L8 , en=>SEL);
    TSB_300 :  ORCAD_TSB 
      PORT MAP  (O=>Y8 , i1=>L9 , en=>SEL);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74630\ IS PORT(
DB0  : INOUT  std_logic;
DB1  : INOUT  std_logic;
DB2  : INOUT  std_logic;
DB3  : INOUT  std_logic;
DB4  : INOUT  std_logic;
DB5  : INOUT  std_logic;
DB6  : INOUT  std_logic;
DB7  : INOUT  std_logic;
DB8  : INOUT  std_logic;
DB9  : INOUT  std_logic;
DB10 : INOUT  std_logic;
DB11 : INOUT  std_logic;
DB12 : INOUT  std_logic;
DB13 : INOUT  std_logic;
DB14 : INOUT  std_logic;
DB15 : INOUT  std_logic;
CB0  : INOUT  std_logic;
CB1  : INOUT  std_logic;
CB2  : INOUT  std_logic;
CB3  : INOUT  std_logic;
CB4  : INOUT  std_logic;
CB5  : INOUT  std_logic;
S0   : IN  std_logic;
S1   : IN  std_logic;
SEF  : OUT std_logic;
DEF  : OUT std_logic);
END \74630\;

architecture model OF \74630\ IS
	SIGNAL data : std_logic_vector(15 DOWNTO 0);
	SIGNAL cbi  : std_logic_vector(5  DOWNTO 0);

	BEGIN
	data(0)  <= DB0;
	data(1)  <= DB1;
	data(2)  <= DB2;
	data(3)  <= DB3;
	data(4)  <= DB4;
	data(5)  <= DB5;
	data(6)  <= DB6;
	data(7)  <= DB7;
	data(8)  <= DB8;
	data(9)  <= DB9;
	data(10) <= DB10;
	data(11) <= DB11;
	data(12) <= DB12;
	data(13) <= DB13;
	data(14) <= DB14;
	data(15) <= DB15;

	cbi(0) <= CB0;
	cbi(1) <= CB1;
	cbi(2) <= CB2;
	cbi(3) <= CB3;
	cbi(4) <= CB4;
	cbi(5) <= CB5;

	PROCESS(S0, S1, data, cbi)
		VARIABLE latchd  : std_logic_vector(15 DOWNTO 0);
		VARIABLE latchcb : std_logic_vector(5  DOWNTO 0);
		VARIABLE newcb   : std_logic_vector(5  DOWNTO 0);
		VARIABLE synerr  : std_logic_vector(5  DOWNTO 0);
		VARIABLE cnt     : integer := 0;
--constant case1 : std_logic_vector(5 downto 0) := ('1','1','0','1','0','0');

		BEGIN
		if(S0 = '0') AND (S1 = '0') THEN
			CB0 <= NOT (data(0) XOR data(1) XOR data(3) XOR data(4) XOR data(8) XOR data(9) XOR data(10) XOR data(13)) AFTER 1 ns;
			CB1 <= NOT (data(0) XOR data(2) XOR data(3) XOR data(5) XOR data(6) XOR data(8) XOR data(11) XOR data(14)) AFTER 1 ns;
			CB2 <= NOT (data(1) XOR data(2) XOR data(4) XOR data(5) XOR data(7) XOR data(9) XOR data(12) XOR data(15)) AFTER 1 ns;
			CB3 <= NOT (data(0) XOR data(1) XOR data(2) XOR data(6) XOR data(7) XOR data(10) XOR data(11) XOR data(12)) AFTER 1 ns;
			CB4 <= NOT (data(3) XOR data(4) XOR data(5) XOR data(6) XOR data(7) XOR data(13) XOR data(14) XOR data(15)) AFTER 1 ns;
			CB5 <= NOT (data(8) XOR data(9) XOR data(10) XOR data(11) XOR data(12) XOR data(13) XOR data(14) XOR data(15)) AFTER 1 ns;
			SEF <= '0' AFTER 1 ns;
			DEF <= '0' AFTER 1 ns;
		ELSif(S0 = '1') AND (S1 = '0') THEN
			SEF <= '0' AFTER 1 ns;
			DEF <= '0' AFTER 1 ns;
		ELSif(S0 = '1') AND (S1 = '1') AND S1'EVENT THEN
			latchd  := data;
			latchcb := cbi;

			newcb(0) := NOT (latchd(0) XOR latchd(1) XOR latchd(3) XOR latchd(4) XOR latchd(8) XOR latchd(9) XOR latchd(10) XOR latchd(13));
			newcb(1) := NOT (latchd(0) XOR latchd(2) XOR latchd(3) XOR latchd(5) XOR latchd(6) XOR latchd(8) XOR latchd(11) XOR latchd(14));
			newcb(2) := NOT (latchd(1) XOR latchd(2) XOR latchd(4) XOR latchd(5) XOR latchd(7) XOR latchd(9) XOR latchd(12) XOR latchd(15));
			newcb(3) := NOT (latchd(0) XOR latchd(1) XOR latchd(2) XOR latchd(6) XOR latchd(7) XOR latchd(10) XOR latchd(11) XOR latchd(12));
			newcb(4) := NOT (latchd(3) XOR latchd(4) XOR latchd(5) XOR latchd(6) XOR latchd(7) XOR latchd(13) XOR latchd(14) XOR latchd(15));
			newcb(5) := NOT (latchd(8) XOR latchd(9) XOR latchd(10) XOR latchd(11) XOR latchd(12) XOR latchd(13) XOR latchd(14) XOR latchd(15));

			FOR i IN 0 TO 5 LOOP
				synerr(i) := NOT (newcb(i) XOR latchcb(i));
			END LOOP;

			cnt := 0;

			FOR i IN 0 TO 5 LOOP
				if(synerr(i) = '0') THEN
					cnt := cnt + 1;
				END if;
			END LOOP;

			if(cnt = 6) THEN
				SEF <= '0' AFTER 1 ns;
				DEF <= '0' AFTER 1 ns;
			ELSif(cnt = 3) OR (cnt = 1) THEN
				SEF <= '1' AFTER 1 ns;
				DEF <= '0' AFTER 1 ns;
			ELSE
				SEF <= '1' AFTER 1 ns;
				DEF <= '1' AFTER 1 ns;
			END if;								
		ELSif(S1 = '1') AND (S0 = '0') AND S0'EVENT THEN
			cnt := 0;
			CASE synerr IS
				WHEN b"110100" =>
					latchd(0) := NOT latchd(0);
				WHEN b"110010" =>
					latchd(1) := NOT latchd(1);
				WHEN b"110001" =>
					latchd(2) := NOT latchd(2);
				WHEN b"101100" =>
					latchd(3) := NOT latchd(3);
				WHEN b"101010" =>
					latchd(4) := NOT latchd(4);
				WHEN b"101001" =>
					latchd(5) := NOT latchd(5);
				WHEN b"100101" =>
					latchd(6) := NOT latchd(6);
				WHEN b"100011" =>
					latchd(7) := NOT latchd(7);
				WHEN b"011100" =>
					latchd(8) := NOT latchd(8);
				WHEN b"011010" =>
					latchd(9) := NOT latchd(9);
				WHEN b"010110" =>
					latchd(10) := NOT latchd(10);
				WHEN b"010101" =>
					latchd(11) := NOT latchd(11);
				WHEN b"010011" =>
					latchd(12) := NOT latchd(12);
				WHEN b"001110" =>
					latchd(13) := NOT latchd(13);
				WHEN b"001101" =>
					latchd(14) := NOT latchd(14);
				WHEN b"001011" =>
					latchd(15) := NOT latchd(15);
				WHEN b"111110" =>
					latchcb(0) := NOT latchcb(0);
				WHEN b"111101" =>
					latchcb(1) := NOT latchcb(1);
				WHEN b"111011" =>
					latchcb(2) := NOT latchcb(2);
				WHEN b"110111" =>
					latchcb(3) := NOT latchcb(3);
				WHEN b"101111" =>
					latchcb(4) := NOT latchcb(4);
				WHEN b"011111" =>
					latchcb(5) := NOT latchcb(5);
				WHEN OTHERS => NULL;
			END CASE;

			DB0  <= latchd(0) AFTER 1 ns;
			DB1  <= latchd(1) AFTER 1 ns;
			DB2  <= latchd(2) AFTER 1 ns;
			DB3  <= latchd(3) AFTER 1 ns;
			DB4  <= latchd(4) AFTER 1 ns;
			DB5  <= latchd(5) AFTER 1 ns;
			DB6  <= latchd(6) AFTER 1 ns;
			DB7  <= latchd(7) AFTER 1 ns;
			DB8  <= latchd(8) AFTER 1 ns;
			DB9  <= latchd(9) AFTER 1 ns;
			DB10 <= latchd(10) AFTER 1 ns;
			DB11 <= latchd(11) AFTER 1 ns;
			DB12 <= latchd(12) AFTER 1 ns;
			DB13 <= latchd(13) AFTER 1 ns;
			DB14 <= latchd(14) AFTER 1 ns;
			DB15 <= latchd(15) AFTER 1 ns;

			CB0 <= synerr(0) AFTER 1 ns;
			CB1 <= synerr(1) AFTER 1 ns;
			CB2 <= synerr(2) AFTER 1 ns;
			CB3 <= synerr(3) AFTER 1 ns;
			CB4 <= synerr(4) AFTER 1 ns;
			CB5 <= synerr(5) AFTER 1 ns;
		END if;				
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74636\ IS PORT(
DB0  : INOUT  std_logic;
DB1  : INOUT  std_logic;
DB2  : INOUT  std_logic;
DB3  : INOUT  std_logic;
DB4  : INOUT  std_logic;
DB5  : INOUT  std_logic;
DB6  : INOUT  std_logic;
DB7  : INOUT  std_logic;
CB0  : INOUT  std_logic;
CB1  : INOUT  std_logic;
CB2  : INOUT  std_logic;
CB3  : INOUT  std_logic;
CB4  : INOUT  std_logic;
S0   : IN  std_logic;
S1   : IN  std_logic;
SEF  : OUT std_logic;
DEF  : OUT std_logic);
END \74636\;

architecture model OF \74636\ IS
	SIGNAL data : std_logic_vector(7 DOWNTO 0);
	SIGNAL cbi  : std_logic_vector(4  DOWNTO 0);

	BEGIN
	data(0)  <= DB0;
	data(1)  <= DB1;
	data(2)  <= DB2;
	data(3)  <= DB3;
	data(4)  <= DB4;
	data(5)  <= DB5;
	data(6)  <= DB6;
	data(7)  <= DB7;

	cbi(0) <= CB0;
	cbi(1) <= CB1;
	cbi(2) <= CB2;
	cbi(3) <= CB3;
	cbi(4) <= CB4;

	PROCESS(S0, S1, data, cbi)
		VARIABLE latchd  : std_logic_vector(7 DOWNTO 0);
		VARIABLE latchcb : std_logic_vector(4  DOWNTO 0);
		VARIABLE newcb   : std_logic_vector(4  DOWNTO 0);
		VARIABLE synerr  : std_logic_vector(4  DOWNTO 0);
		VARIABLE cnt     : integer := 0;

		BEGIN
		if(S0 = '0') AND (S1 = '0') THEN
			CB0 <= NOT (data(0) XOR data(1) XOR data(3) XOR data(4)) AFTER 1 ns;
			CB1 <= NOT (data(0) XOR data(2) XOR data(3) XOR data(5) XOR data(6)) AFTER 1 ns;
			CB2 <= NOT (data(1) XOR data(2) XOR data(4) XOR data(5) XOR data(7)) AFTER 1 ns;
			CB3 <= NOT (data(0) XOR data(1) XOR data(2) XOR data(6) XOR data(7)) AFTER 1 ns;
			CB4 <= NOT (data(3) XOR data(4) XOR data(5) XOR data(6) XOR data(7)) AFTER 1 ns;
			SEF <= '0' AFTER 1 ns;
			DEF <= '0' AFTER 1 ns;
		ELSif(S0 = '1') AND (S1 = '0') THEN
			SEF <= '0' AFTER 1 ns;
			DEF <= '0' AFTER 1 ns;
		ELSif(S0 = '1') AND (S1 = '1') AND S1'EVENT THEN
			latchd  := data;
			latchcb := cbi;

			newcb(0) := NOT (latchd(0) XOR latchd(1) XOR latchd(3) XOR latchd(4));
			newcb(1) := NOT (latchd(0) XOR latchd(2) XOR latchd(3) XOR latchd(5) XOR latchd(6));
			newcb(2) := NOT (latchd(1) XOR latchd(2) XOR latchd(4) XOR latchd(5) XOR latchd(7));
			newcb(3) := NOT (latchd(0) XOR latchd(1) XOR latchd(2) XOR latchd(6) XOR latchd(7));
			newcb(4) := NOT (latchd(3) XOR latchd(4) XOR latchd(5) XOR latchd(6) XOR latchd(7));

			FOR i IN 0 TO 4 LOOP
				synerr(i) := NOT (newcb(i) XOR latchcb(i));
			END LOOP;

			cnt := 0;

			FOR i IN 0 TO 4 LOOP
				if(synerr(i) = '0') THEN
					cnt := cnt + 1;
				END if;
			END LOOP;

			if(cnt = 5) THEN
				SEF <= '0' AFTER 1 ns;
				DEF <= '0' AFTER 1 ns;
			ELSif(cnt = 3) OR (cnt = 1) THEN
				SEF <= '1' AFTER 1 ns;
				DEF <= '0' AFTER 1 ns;
			ELSE
				SEF <= '1' AFTER 1 ns;
				DEF <= '1' AFTER 1 ns;
			END if;								
		ELSif(S1 = '1') AND (S0 = '0') AND S0'EVENT THEN
			cnt := 0;
			CASE synerr IS
				WHEN b"10100" =>
					latchd(0) := NOT latchd(0);
				WHEN b"10010" =>
					latchd(1) := NOT latchd(1);
				WHEN b"10001" =>
					latchd(2) := NOT latchd(2);
				WHEN b"01100" =>
					latchd(3) := NOT latchd(3);
				WHEN b"01010" =>
					latchd(4) := NOT latchd(4);
				WHEN b"01001" =>
					latchd(5) := NOT latchd(5);
				WHEN b"00101" =>
					latchd(6) := NOT latchd(6);
				WHEN b"00011" =>
					latchd(7) := NOT latchd(7);
				WHEN b"11110" =>
					latchcb(0) := NOT latchcb(0);
				WHEN b"11101" =>
					latchcb(1) := NOT latchcb(1);
				WHEN b"11011" =>
					latchcb(2) := NOT latchcb(2);
				WHEN b"10111" =>
					latchcb(3) := NOT latchcb(3);
				WHEN b"01111" =>
					latchcb(4) := NOT latchcb(4);
				WHEN OTHERS => NULL;
			END CASE;

			DB0  <= latchd(0) AFTER 1 ns;
			DB1  <= latchd(1) AFTER 1 ns;
			DB2  <= latchd(2) AFTER 1 ns;
			DB3  <= latchd(3) AFTER 1 ns;
			DB4  <= latchd(4) AFTER 1 ns;
			DB5  <= latchd(5) AFTER 1 ns;
			DB6  <= latchd(6) AFTER 1 ns;
			DB7  <= latchd(7) AFTER 1 ns;

			CB0 <= synerr(0) AFTER 1 ns;
			CB1 <= synerr(1) AFTER 1 ns;
			CB2 <= synerr(2) AFTER 1 ns;
			CB3 <= synerr(3) AFTER 1 ns;
			CB4 <= synerr(4) AFTER 1 ns;
		END if;				
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74668\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CLK : IN  std_logic;
LDN : IN  std_logic;
UDN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
TCN : OUT  std_logic);
END \74668\;

architecture model OF \74668\ IS
	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (UDN);
    L2 <= NOT (LDN);
    L3 <= NOT (ENPN);
    L4 <= NOT (ENTN);
    L5 <=  (LDN AND L3 AND L4);
    L6 <=  (L2 AND D0);
    L7 <=  (L2 AND D1);
    L8 <=  (L2 AND D2);
    L9 <=  (L2 AND D3);
    L10 <=  (N2 AND N11);
    L11 <=  (N10 AND N3);
    L12 <= NOT (L10 OR L11);
    L13 <=  (N4 AND N11);
    L14 <=  (N5 AND N10);
    L15 <= NOT (L13 OR L14);
    L16 <=  (N6 AND N11);
    L17 <=  (N7 AND N10);
    L18 <= NOT (L16 OR L17);
    L19 <=  (N8 AND N11);
    L20 <=  (N9 AND N10);
    L21 <= NOT (L19 OR L20);
    L22 <=  (L21 AND L12 AND N12 AND N1);
    L23 <=  (L21 AND L18 AND L15 AND L12 AND N11 AND N1);
    L24 <= NOT (N10 AND L21);
    L25 <= NOT (L21 AND L18 AND L15 AND L12 AND N11);
    L26 <= NOT (L5);
    L27 <= NOT (L5 AND L12);
    L28 <= NOT (L5 AND L12 AND L15);
    L29 <= NOT (L5 AND L12);
    L30 <=  (N2 AND L26 AND LDN);
    L31 <=  (L5 AND N3);
    L32 <=  (N4 AND LDN AND L27);
    L33 <=  (L12 AND L5 AND L24 AND L25 AND N5);
    L34 <=  (N6 AND LDN AND L28);
    L35 <=  (L5 AND L25 AND L15 AND L12 AND N7);
    L36 <=  (N8 AND LDN AND L29);
    L37 <=  (L5 AND L18 AND L15 AND L12 AND N9);
    L38 <=  (L30 OR L31 OR L6);
    L39 <=  (L32 OR L33 OR L7);
    L40 <=  (L34 OR L35 OR L8);
    L41 <=  (L36 OR L37 OR L9);
    N1 <=  (L4);
    N10 <=  (UDN);
    N11 <=  (L1);
    N12 <=  (UDN);
    DFF_9 :  ORCAD_DFF 
      PORT MAP  (q=>N2 , qNot=>N3 , d=>L38 , clk=>CLK);
    DFF_10 :  ORCAD_DFF 
      PORT MAP  (q=>N4 , qNot=>N5 , d=>L39 , clk=>CLK);
    DFF_11 :  ORCAD_DFF 
      PORT MAP  (q=>N6 , qNot=>N7 , d=>L40 , clk=>CLK);
    DFF_12 :  ORCAD_DFF 
      PORT MAP  (q=>N8 , qNot=>N9 , d=>L41 , clk=>CLK);
    Q0 <=  (N2) AFTER 1 ns;
    Q1 <=  (N4) AFTER 1 ns;
    Q2 <=  (N6) AFTER 1 ns;
    Q3 <=  (N8) AFTER 1 ns;
    TCN <= NOT (L22 OR L23) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74669\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CLK : IN  std_logic;
LDN : IN  std_logic;
UDN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
TCN : OUT  std_logic);
END \74669\;

architecture model OF \74669\ IS
    
    BEGIN
    PROCESS(CLK)
    VARIABLE cnt : INTEGER := 0;
    VARIABLE qcnt : std_logic_vector(3 DOWNTO 0) := "0000";

    BEGIN
    if(CLK = '1') AND CLK'EVENT THEN
         if(LDN = '0') THEN
              qcnt(0) := D0;
              qcnt(1) := D1;
              qcnt(2) := D2;
              qcnt(3) := D3;
         ELSif(ENPN = '0') AND (ENTN = '0') THEN

              --convert vector to integer
              FOR i IN 0 TO 3 LOOP
			     CASE i IS
                   WHEN 0 =>
                        if(qcnt(0) = '1') THEN
                            cnt := cnt + 2**0;
                        END if;
                   WHEN 1 =>
                        if(qcnt(1) = '1') THEN
                            cnt := cnt + 2**1;
                        END if;
                   WHEN 2 =>
                        if(qcnt(2) = '1') THEN
                            cnt := cnt + 2**2;
                        END if;
                   WHEN 3 =>
                        if(qcnt(3) = '1') THEN
                            cnt := cnt + 2**3;
                        END if;
                   WHEN OTHERS => NULL;
                   END CASE;
			END LOOP;

              if(UDN = '0') THEN
                   if(cnt = 0) THEN
                        cnt := 15;
                        TCN <= '1' AFTER 1 ns;
                   ELSE
                        cnt := cnt - 1;
                        if(cnt = 0) THEN
                             TCN <= '0' AFTER 1 ns;
                        ELSE
                             TCN <= '1' AFTER 1 ns;
                        END if;
                   END if;
              ELSif(UDN = '1') THEN
                   if(cnt = 15) THEN
                        cnt := 0;
                        TCN <= '1' AFTER 1 ns;
                   ELSE 
                        cnt := cnt + 1;
                        if(cnt = 15) THEN
                             TCN <= '0' AFTER 1 ns;
                        ELSE
                             TCN <= '1' AFTER 1 ns;
                        END if;
                   END if;
              END if;

              --convert integer to vector
              FOR i IN 0 TO 3 LOOP
                   if(cnt MOD 2 = 1) THEN
                        CASE i IS
                        WHEN 0 =>
                             qcnt(0) := '1';
                        WHEN 1 =>
                             qcnt(1) := '1';
                        WHEN 2 =>
                             qcnt(2) := '1';
                        WHEN 3 =>
                             qcnt(3) := '1';
                        WHEN OTHERS => NULL;
                        END CASE;
                   ELSE
                        CASE i IS
                        WHEN 0 =>
                             qcnt(0) := '0';
                        WHEN 1 =>
                             qcnt(1) := '0';
                        WHEN 2 =>
                             qcnt(2) := '0';
                        WHEN 3 =>
                             qcnt(3) := '0';
                        WHEN OTHERS => NULL;
                        END CASE;
                   END if;
                   cnt := cnt/2;
              END LOOP;
         END if;
    END if;
    
    Q0 <= qcnt(0) AFTER 1 ns;
    Q1 <= qcnt(1) AFTER 1 ns;
    Q2 <= qcnt(2) AFTER 1 ns;
    Q3 <= qcnt(3) AFTER 1 ns;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74670\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
WA : IN  std_logic;
WB : IN  std_logic;
RA : IN  std_logic;
RB : IN  std_logic;
GWN : IN  std_logic;
GRN : IN  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
Q4 : OUT  std_logic);
END \74670\;

architecture model OF \74670\ IS

    BEGIN
    PROCESS(GWN, GRN, WA, WB, RA, RB, D1, D2, D3, D4)
    VARIABLE wrdA : std_logic_vector(3 DOWNTO 0) := "0000";    
    VARIABLE wrdB : std_logic_vector(3 DOWNTO 0) := "0000";    
    VARIABLE wrdC : std_logic_vector(3 DOWNTO 0) := "0000";    
    VARIABLE wrdD : std_logic_vector(3 DOWNTO 0) := "0000";    
        
    BEGIN
    if(GWN = '0') AND (WB = '0') AND (WA = '0') THEN
         wrdA(0) := D1;
         wrdA(1) := D2;
         wrdA(2) := D3;
         wrdA(3) := D4;
    ELSif(GWN = '0') AND (WB = '0') AND (WA = '1') THEN
         wrdB(0) := D1;
         wrdB(1) := D2;
         wrdB(2) := D3;
         wrdB(3) := D4;
    ELSif(GWN = '0') AND (WB = '1') AND (WA = '0') THEN
         wrdC(0) := D1;
         wrdC(1) := D2;
         wrdC(2) := D3;
         wrdC(3) := D4;
    ELSif(GWN = '0') AND (WB = '1') AND (WA = '1') THEN
         wrdD(0) := D1;
         wrdD(1) := D2;
         wrdD(2) := D3;
         wrdD(3) := D4;
    END if;

    if(GRN = '1') THEN
         Q1 <= 'Z' AFTER 1 ns;
         Q2 <= 'Z' AFTER 1 ns;
         Q3 <= 'Z' AFTER 1 ns;
         Q4 <= 'Z' AFTER 1 ns;
    ELSif(RB = '0') AND (RA = '0') THEN
         Q1 <= wrdA(0) AFTER 1 ns;
         Q2 <= wrdA(1) AFTER 1 ns;
         Q3 <= wrdA(2) AFTER 1 ns;
         Q4 <= wrdA(3) AFTER 1 ns;
    ELSif(RB = '0') AND (RA = '1') THEN
         Q1 <= wrdB(0) AFTER 1 ns;
         Q2 <= wrdB(1) AFTER 1 ns;
         Q3 <= wrdB(2) AFTER 1 ns;
         Q4 <= wrdB(3) AFTER 1 ns;
    ELSif(RB = '1') AND (RA = '0') THEN
         Q1 <= wrdC(0) AFTER 1 ns;
         Q2 <= wrdC(1) AFTER 1 ns;
         Q3 <= wrdC(2) AFTER 1 ns;
         Q4 <= wrdC(3) AFTER 1 ns;
    ELSif(RB = '1') AND (RA = '1') THEN
         Q1 <= wrdD(0) AFTER 1 ns;
         Q2 <= wrdD(1) AFTER 1 ns;
         Q3 <= wrdD(2) AFTER 1 ns;
         Q4 <= wrdD(3) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74671\ IS PORT(
SERR : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
SERL : IN  std_logic;
SRCLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
SRCLRN : IN  std_logic;
GN : IN  std_logic;
RSN : IN  std_logic;
RCLK : IN  std_logic;
QA : OUT  std_logic;
QB : OUT  std_logic;
QC : OUT  std_logic;
QD : OUT  std_logic;
CASC : OUT  std_logic);
END \74671\;

architecture model OF \74671\ IS
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <= NOT (S0);
    L3 <= NOT (S1);
    L4 <=  (A AND S1 AND S0);
    L5 <=  (S1 AND L2 AND N3);
    L6 <=  (SERR AND L3 AND S0);
    L7 <=  (L3 AND L2 AND N2);
    L8 <=  (B AND S1 AND S0);
    L9 <=  (S1 AND L2 AND N4);
    L10 <=  (L3 AND S0 AND N2);
    L11 <=  (L3 AND L2 AND N3);
    L12 <=  (C AND S1 AND S0);
    L13 <=  (S1 AND L2 AND N5);
    L14 <=  (L3 AND S0 AND N3);
    L15 <=  (L3 AND L2 AND N4);
    L16 <=  (D AND S1 AND S0);
    L17 <=  (SERL AND S1 AND L2);
    L18 <=  (L3 AND S0 AND N4);
    L19 <=  (L3 AND L2 AND N5);
    L20 <=  (L4 OR L5 OR L6 OR L7);
    L21 <=  (L8 OR L9 OR L10 OR L11);
    L22 <=  (L12 OR L13 OR L14 OR L15);
    L23 <=  (L16 OR L17 OR L18 OR L19);
    N1 <= NOT (RSN);
    N16 <=  (RSN);
    DQFFC_190 :  ORCAD_DQFFC 
      PORT MAP  (q=>N2 , d=>L20 , clk=>SRCLK , cl=>SRCLRN);
    DQFFC_191 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L21 , clk=>SRCLK , cl=>SRCLRN);
    DQFFC_192 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L22 , clk=>SRCLK , cl=>SRCLRN);
    DQFFC_193 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L23 , clk=>SRCLK , cl=>SRCLRN);
    DQFF_297 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>N2 , clk=>RCLK);
    DQFF_298 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK);
    DQFF_299 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK);
    DQFF_300 :  ORCAD_DQFF 
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK);
    N10 <= NOT (N2);
    N11 <= NOT (N5);
    L24 <=  (N6 AND N16);
    L25 <=  (N2 AND N1);
    L26 <=  (N7 AND N16);
    L27 <=  (N3 AND N1);
    L28 <=  (N8 AND N16);
    L29 <=  (N4 AND N1);
    L30 <=  (N9 AND N16);
    L31 <=  (N5 AND N1);
    L32 <=  (N11 AND S0 AND L3);
    L34 <=  (N10 AND L2 AND S1);
    N12 <=  (L24 OR L25);
    N13 <=  (L26 OR L27);
    N14 <=  (L28 OR L29);
    N15 <=  (L30 OR L31);
    CASC <= NOT (L32 OR L34) AFTER 1 ns;
    TSB_485 :  ORCAD_TSB 
      PORT MAP  (O=>QA , i1=>N12 , en=>L1);
    TSB_486 :  ORCAD_TSB 
      PORT MAP  (O=>QB , i1=>N13 , en=>L1);
    TSB_487 :  ORCAD_TSB 
      PORT MAP  (O=>QC , i1=>N14 , en=>L1);
    TSB_488 :  ORCAD_TSB 
      PORT MAP  (O=>QD , i1=>N15 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74672\ IS PORT(
SERR : IN  std_logic;
A : IN  std_logic;
B : IN  std_logic;
C : IN  std_logic;
D : IN  std_logic;
SERL : IN  std_logic;
SRCLK : IN  std_logic;
S0 : IN  std_logic;
S1 : IN  std_logic;
SRCLRN : IN  std_logic;
GN : IN  std_logic;
RSN : IN  std_logic;
RCLK : IN  std_logic;
QA : INOUT  std_logic;
QB : INOUT  std_logic;
QC : INOUT  std_logic;
QD : INOUT  std_logic;
CASC : OUT  std_logic);
END \74672\;

architecture model OF \74672\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <= NOT (S0);
    L3 <= NOT (S1);
    L4 <=  (SRCLRN AND A AND S1 AND S0);
    L5 <=  (SRCLRN AND S1 AND L2 AND N3);
    L6 <=  (SRCLRN AND SERR AND L3 AND S0);
    L7 <=  (SRCLRN AND L3 AND L2 AND N2);
    L8 <=  (SRCLRN AND B AND S1 AND S0);
    L9 <=  (SRCLRN AND S1 AND L2 AND N4);
    L10 <=  (SRCLRN AND L3 AND S0 AND N2);
    L11 <=  (SRCLRN AND L3 AND L2 AND N3);
    L12 <=  (SRCLRN AND C AND S1 AND S0);
    L13 <=  (SRCLRN AND S1 AND L2 AND N5);
    L14 <=  (SRCLRN AND L3 AND S0 AND N3);
    L15 <=  (SRCLRN AND L3 AND L2 AND N4);
    L16 <=  (SRCLRN AND D AND S1 AND S0);
    L17 <=  (SRCLRN AND SERL AND S1 AND L2);
    L18 <=  (SRCLRN AND L3 AND S0 AND N4);
    L19 <=  (SRCLRN AND L3 AND L2 AND N5);
    L20 <=  (L4 OR L5 OR L6 OR L7);
    L21 <=  (L8 OR L9 OR L10 OR L11);
    L22 <=  (L12 OR L13 OR L14 OR L15);
    L23 <=  (L16 OR L17 OR L18 OR L19);
    N1 <= NOT (RSN);
    N16 <=  (RSN);
    DQFF_301 :  ORCAD_DQFF 
      PORT MAP  (q=>N2 , d=>L20 , clk=>SRCLK);
    DQFF_302 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L21 , clk=>SRCLK);
    DQFF_303 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L22 , clk=>SRCLK);
    DQFF_304 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L23 , clk=>SRCLK);
    DQFF_305 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>N2 , clk=>RCLK);
    DQFF_306 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK);
    DQFF_307 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK);
    DQFF_308 :  ORCAD_DQFF 
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK);
    N10 <= NOT (N2);
    N11 <= NOT (N5);
    L24 <=  (N6 AND N16);
    L25 <=  (N2 AND N1);
    L26 <=  (N7 AND N16);
    L27 <=  (N3 AND N1);
    L28 <=  (N8 AND N16);
    L29 <=  (N4 AND N1);
    L30 <=  (N9 AND N16);
    L31 <=  (N5 AND N1);
    L32 <=  (N11 AND S0 AND L3);
    L34 <=  (N10 AND L2 AND S1);
    N12 <=  (L24 OR L25);
    N13 <=  (L26 OR L27);
    N14 <=  (L28 OR L29);
    N15 <=  (L30 OR L31);
    CASC <= NOT (L32 OR L34) AFTER 1 ns;
    TSB_489 :  ORCAD_TSB 
      PORT MAP  (O=>QA , i1=>N12 , en=>L1);
    TSB_490 :  ORCAD_TSB 
      PORT MAP  (O=>QB , i1=>N13 , en=>L1);
    TSB_491 :  ORCAD_TSB 
      PORT MAP  (O=>QC , i1=>N14 , en=>L1);
    TSB_492 :  ORCAD_TSB 
      PORT MAP  (O=>QD , i1=>N15 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74673\ IS PORT(
MODE    : IN  std_logic;
SRCLK   : IN  std_logic;
STCLRN  : IN  std_logic;
RWN     : IN  std_logic;
CSN     : IN  std_logic;
SER     : INOUT  std_logic;
Q15     : OUT  std_logic := 'Z';
Y0      : INOUT  std_logic;
Y1      : INOUT  std_logic;
Y2      : INOUT  std_logic;
Y3      : INOUT  std_logic;
Y4      : INOUT  std_logic;
Y5      : INOUT  std_logic;
Y6      : INOUT  std_logic;
Y7      : INOUT  std_logic;
Y8      : INOUT  std_logic;
Y9      : INOUT  std_logic;
Y10     : INOUT  std_logic;
Y11     : INOUT  std_logic;
Y12     : INOUT  std_logic;
Y13     : INOUT  std_logic;
Y14     : INOUT  std_logic;
Y15     : INOUT  std_logic);
END \74673\;

architecture model OF \74673\ IS
	SIGNAL sreg_en  : std_logic;
	SIGNAL sreg_clk : std_logic;
	SIGNAL q15_en   : std_logic;
	SIGNAL reg_clk  : std_logic;
	SIGNAL N1		 : std_logic;
	SIGNAL N2		 : std_logic;
	
	BEGIN
	N1 <= NOT (CSN);
	N2 <= NOT (RWN);
	
	sreg_en  <= NOT (MODE AND RWN AND N1);
	sreg_clk <= N1 AND SRCLK;
	q15_en   <= RWN AND N1;
	reg_clk  <= NOT (N1 AND N2 AND MODE);

	PROCESS(sreg_en, sreg_clk, q15_en, reg_clk, STCLRN)
		VARIABLE q : std_logic_vector(15 DOWNTO 0) := x"0000";
		VARIABLE bucket : std_logic;

		BEGIN
		if(sreg_clk = '0') AND sreg_clk'EVENT THEN
			if(sreg_en = '0') THEN
				q(0)  := Y0;
				q(1)  := Y1;
				q(2)  := Y2;
				q(3)  := Y3;
				q(4)  := Y4;
				q(5)  := Y5;
				q(6)  := Y6;
				q(7)  := Y7;
				q(8)  := Y8;
				q(9)  := Y9;
				q(10) := Y10;
				q(11) := Y11;
				q(12) := Y12;
				q(13) := Y13;
				q(14) := Y14;
				q(15) := Y15;
			ELSE
				bucket := q(15);

				-- shift right one place			
				FOR i IN 15 DOWNTO 1 LOOP
					q(i) := q(i-1);
				END LOOP;

				if(q15_en = '0') THEN
					q(0) := SER;
					Q15 <= 'Z' AFTER 1 ns;
				ELSE
					q(0) := bucket;
					Q15 <= q(15) AFTER 1 ns;
				END if;
			END if;
		END if;

		if(STCLRN = '0') THEN
			Y0  <= '0' AFTER 1 ns;
			Y1  <= '0' AFTER 1 ns;
			Y2  <= '0' AFTER 1 ns;
			Y3  <= '0' AFTER 1 ns;
			Y4  <= '0' AFTER 1 ns;
			Y5  <= '0' AFTER 1 ns;
			Y6  <= '0' AFTER 1 ns;
			Y7  <= '0' AFTER 1 ns;
			Y8  <= '0' AFTER 1 ns;
			Y9  <= '0' AFTER 1 ns;
			Y10 <= '0' AFTER 1 ns;
			Y11 <= '0' AFTER 1 ns;
			Y12 <= '0' AFTER 1 ns;
			Y13 <= '0' AFTER 1 ns;
			Y14 <= '0' AFTER 1 ns;
			Y15 <= '0' AFTER 1 ns;
		ELSif(reg_clk = '0') AND reg_clk'EVENT THEN
			Y0  <= q(0)  AFTER 1 ns;
			Y1  <= q(1)  AFTER 1 ns;
			Y2  <= q(2)  AFTER 1 ns;
			Y3  <= q(3)  AFTER 1 ns;
			Y4  <= q(4)  AFTER 1 ns;
			Y5  <= q(5)  AFTER 1 ns;
			Y6  <= q(6)  AFTER 1 ns;
			Y7  <= q(7)  AFTER 1 ns;
			Y8  <= q(8)  AFTER 1 ns;
			Y9  <= q(9)  AFTER 1 ns;
			Y10 <= q(10) AFTER 1 ns;
			Y11 <= q(11) AFTER 1 ns;
			Y12 <= q(12) AFTER 1 ns;
			Y13 <= q(13) AFTER 1 ns;
			Y14 <= q(14) AFTER 1 ns;
			Y15 <= q(15) AFTER 1 ns;
		END if;
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74674\ IS PORT(
MODE    : IN  std_logic;
CLK     : IN  std_logic;
RWN     : IN  std_logic;
CSN     : IN  std_logic;
SER     : IN  std_logic;
P0      : IN  std_logic;
P1      : IN  std_logic;
P2      : IN  std_logic;
P3      : IN  std_logic;
P4      : IN  std_logic;
P5      : IN  std_logic;
P6      : IN  std_logic;
P7      : IN  std_logic;
P8      : IN  std_logic;
P9      : IN  std_logic;
P10     : IN  std_logic;
P11     : IN  std_logic;
P12     : IN  std_logic;
P13     : IN  std_logic;
P14     : IN  std_logic;
P15     : IN  std_logic;
Q15     : OUT  std_logic);
END \74674\;

architecture model OF \74674\ IS
	SIGNAL sreg_en  : std_logic;
	SIGNAL sreg_clk : std_logic;
	SIGNAL q15_en   : std_logic;
	SIGNAL N1		 : std_logic;
	
	BEGIN
	N1 <= NOT (CSN);
	
	sreg_en  <= NOT (MODE AND RWN AND N1);
	sreg_clk <= N1 AND CLK;
	q15_en   <= RWN AND N1;

	PROCESS(sreg_en, sreg_clk, q15_en)
		VARIABLE q : std_logic_vector(15 DOWNTO 0) := x"0000";
		VARIABLE bucket : std_logic;

		BEGIN
		if(sreg_clk = '0') AND sreg_clk'EVENT THEN
			if(sreg_en = '0') THEN
				q(0)  := P0;
				q(1)  := P1;
				q(2)  := P2;
				q(3)  := P3;
				q(4)  := P4;
				q(5)  := P5;
				q(6)  := P6;
				q(7)  := P7;
				q(8)  := P8;
				q(9)  := P9;
				q(10) := P10;
				q(11) := P11;
				q(12) := P12;
				q(13) := P13;
				q(14) := P14;
				q(15) := P15;
				Q15 <= q(15) AFTER 1 ns;
			ELSE
				bucket := q(15);

				-- shift right one place			
				FOR i IN 15 DOWNTO 1 LOOP
					q(i) := q(i-1);
				END LOOP;
				if(q15_en = '0') THEN
					q(0) := SER;
					Q15 <= 'Z' AFTER 1 ns;
				ELSE
					q(0) := bucket;
					Q15 <= q(15) AFTER 1 ns;
				END if;
			END if;
		ELSE
			if(q15_en = '1') THEN
				Q15 <= q(15) AFTER 1 ns;
			ELSE
				Q15 <= 'Z' AFTER 1 ns;
			END if;
		END if;
	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74684\ IS PORT(
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
EQUALN : OUT  std_logic;
P_GR_QN : OUT  std_logic);
END \74684\;

architecture model OF \74684\ IS
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
    L1 <= NOT (P7 XOR Q7);
    L2 <= NOT (P6 XOR Q6);
    L3 <= NOT (P5 XOR Q5);
    L4 <= NOT (P4 XOR Q4);
    L5 <= NOT (P3 XOR Q3);
    L6 <= NOT (P2 XOR Q2);
    L7 <= NOT (P1 XOR Q1);
    L8 <= NOT (P0 XOR Q0);
    L9 <= NOT (Q0);
    L10 <= NOT (Q1);
    L11 <= NOT (Q2);
    L12 <= NOT (Q3);
    L13 <= NOT (Q4);
    L14 <= NOT (Q5);
    L15 <= NOT (Q6);
    L16 <= NOT (Q7);
    L17 <=  (L7 AND L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P0 AND L9);
    L18 <=  (L6 AND L5 AND L4 AND L3 AND L2 AND L1 AND P1 AND L10);
    L19 <=  (L5 AND L4 AND L3 AND L2 AND L1 AND P2 AND L11);
    L20 <=  (L4 AND L3 AND L2 AND L1 AND P3 AND L12);
    L21 <=  (L3 AND L2 AND L1 AND P4 AND L13);
    L22 <=  (L2 AND L1 AND P5 AND L14);
    L23 <=  (L1 AND P6 AND L15);
    L24 <=  (P7 AND L16);
    EQUALN <= NOT (L1 AND L2 AND L3 AND L4 AND L5 AND L6 AND L7 AND L8) AFTER 1 ns;
    P_GR_QN <= NOT (L17 OR L18 OR L19 OR L20 OR L21 OR L22 OR L23 OR L24) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74686\ IS PORT(
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
G1N : IN  std_logic;
G2N : IN  std_logic;
EQUALN : OUT  std_logic;
P_GR_QN : OUT  std_logic);
END \74686\;

architecture model OF \74686\ IS
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
    N1 <= NOT (P7 XOR Q7);
    N2 <= NOT (P6 XOR Q6);
    N3 <= NOT (P5 XOR Q5);
    N4 <= NOT (P4 XOR Q4);
    N5 <= NOT (P3 XOR Q3);
    N6 <= NOT (P2 XOR Q2);
    N7 <= NOT (P1 XOR Q1);
    N8 <= NOT (P0 XOR Q0);
    L1 <= NOT (Q0);
    L2 <= NOT (Q1);
    L3 <= NOT (Q2);
    L4 <= NOT (Q3);
    L5 <= NOT (Q4);
    L6 <= NOT (Q5);
    L7 <= NOT (Q6);
    L8 <= NOT (Q7);
    L17 <= NOT (G1N);
    L18 <= NOT (G2N);
    L9 <=  (L18 AND N7 AND N6 AND N5 AND N4 AND N3 AND N2 AND N1 AND P0 AND L1);
    L10 <=  (L18 AND N6 AND N5 AND N4 AND N3 AND N2 AND N1 AND P1 AND L2);
    L11 <=  (L18 AND N5 AND N4 AND N3 AND N2 AND N1 AND P2 AND L3);
    L12 <=  (L18 AND N4 AND N3 AND N2 AND N1 AND P3 AND L4);
    L13 <=  (L18 AND N3 AND N2 AND N1 AND P4 AND L5);
    L14 <=  (L18 AND N2 AND N1 AND P5 AND L6);
    L15 <=  (L18 AND N1 AND P6 AND L7);
    L16 <=  (L18 AND P7 AND L8);
    EQUALN <= NOT (L17 AND N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8) AFTER 1 ns;
    P_GR_QN <= NOT (L9 OR L10 OR L11 OR L12 OR L13 OR L14 OR L15 OR L16) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74688\ IS PORT(
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
GN : IN  std_logic;
EQUALN : OUT  std_logic);
END \74688\;

architecture model OF \74688\ IS
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
    N1 <= NOT (Q7 XOR P7);
    N2 <= NOT (Q6 XOR P6);
    N3 <= NOT (Q5 XOR P5);
    N4 <= NOT (Q4 XOR P4);
    N5 <= NOT (Q3 XOR P3);
    N6 <= NOT (Q2 XOR P2);
    N7 <= NOT (Q1 XOR P1);
    N8 <= NOT (Q0 XOR P0);
    L1 <= NOT (GN);
    EQUALN <= NOT (N1 AND N2 AND N3 AND N4 AND N5 AND N6 AND N7 AND N8 AND L1) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74690\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCLRN : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
RCO : OUT  std_logic);
END \74690\;

architecture model OF \74690\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <=  (LDN AND ENP AND ENT);
    L3 <= NOT (LDN OR D0);
    L4 <= NOT (LDN OR D1);
    L5 <= NOT (LDN OR D2);
    L6 <= NOT (LDN OR D3);
    L7 <= NOT (L2);
    L8 <= NOT (N3);
    L9 <= NOT (N4);
    L10 <= NOT (N5);
    L11 <= NOT (N6);
    L12 <= NOT (L2 AND N3);
    L13 <= NOT (L2 AND N3 AND N4);
    L14 <= NOT (L2 AND N3 AND N4 AND N5);
    L15 <=  (N3 AND L2);
    L16 <=  (L7 AND LDN AND L8);
    L17 <=  (N4 AND L2 AND N3);
    L18 <=  (N6 AND L2 AND N3 AND L10);
    L19 <=  (L12 AND LDN AND L9);
    L20 <=  (N5 AND L2 AND N3 AND N4);
    L21 <=  (L2 AND N3 AND N4 AND N6);
    L22 <=  (L13 AND LDN AND L10);
    L23 <=  (N6 AND L2 AND N3);
    L24 <=  (L14 AND LDN AND L11);
    L25 <= NOT (L15 OR L16 OR L3);
    L26 <= NOT (L17 OR L18 OR L19 OR L4);
    L27 <= NOT (L20 OR L21 OR L22 OR L5);
    L28 <= NOT (L23 OR L24 OR L6);
    L29 <=  (N2 AND N7);
    L30 <=  (N1 AND N3);
    L31 <=  (N2 AND N8);
    L32 <=  (N1 AND N4);
    L33 <=  (N2 AND N9);
    L34 <=  (N1 AND N5);
    L35 <=  (N2 AND N10);
    L36 <=  (N1 AND N6);
    L37 <= NOT (ENT);
    N1 <= NOT (RCN);
    N2 <=  (RCN);
    DQFFC_194 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L25 , clk=>CCLK , cl=>CCLRN);
    DQFFC_195 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L26 , clk=>CCLK , cl=>CCLRN);
    DQFFC_196 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L27 , clk=>CCLK , cl=>CCLRN);
    DQFFC_197 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L28 , clk=>CCLK , cl=>CCLRN);
    DQFFC_198 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK , cl=>RCLRN);
    DQFFC_199 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK , cl=>RCLRN);
    DQFFC_200 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK , cl=>RCLRN);
    DQFFC_201 :  ORCAD_DQFFC 
      PORT MAP  (q=>N10 , d=>N6 , clk=>RCLK , cl=>RCLRN);
    N11 <=  (L29 OR L30);
    N12 <=  (L31 OR L32);
    N13 <=  (L33 OR L34);
    N14 <=  (L35 OR L36);
    TSB_493 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N11 , en=>L1);
    TSB_494 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N12 , en=>L1);
    TSB_495 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N13 , en=>L1);
    TSB_496 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N14 , en=>L1);
    N15 <= NOT (N3 AND N6);
    RCO <= NOT (L37 OR N15) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74691\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCLRN : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
RCO : OUT  std_logic);
END \74691\;

architecture model OF \74691\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqffc 
	GENERIC (
		trise_clk_q, 
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <=  (LDN AND ENP AND ENT);
    L3 <= NOT (LDN OR D0);
    L4 <= NOT (LDN OR D1);
    L5 <= NOT (LDN OR D2);
    L6 <= NOT (LDN OR D3);
    L7 <= NOT (L2);
    L8 <= NOT (N3);
    L9 <= NOT (N4);
    L10 <= NOT (N5);
    L11 <= NOT (N6);
    L12 <= NOT (L2 AND N3);
    L13 <= NOT (L2 AND N3 AND N4);
    L14 <= NOT (L2 AND N3 AND N4 AND N5);
    L15 <=  (N3 AND L2);
    L16 <=  (L7 AND LDN AND L8);
    L17 <=  (N4 AND L2 AND N3);
    L18 <=  (L12 AND LDN AND L9);
    L19 <=  (N5 AND L2 AND N3 AND N4);
    L20 <=  (L13 AND LDN AND L10);
    L21 <=  (N6 AND L2 AND N3 AND N4 AND N5);
    L22 <=  (L14 AND LDN AND L11);
    L23 <= NOT (L15 OR L16 OR L3);
    L24 <= NOT (L17 OR L18 OR L4);
    L25 <= NOT (L19 OR L20 OR L5);
    L26 <= NOT (L21 OR L22 OR L6);
    L27 <=  (N2 AND N7);
    L28 <=  (N1 AND N3);
    L29 <=  (N2 AND N8);
    L30 <=  (N1 AND N4);
    L31 <=  (N2 AND N9);
    L32 <=  (N1 AND N5);
    L33 <=  (N2 AND N10);
    L34 <=  (N1 AND N6);
    L35 <= NOT (ENT);
    N1 <= NOT (RCN);
    N2 <=  (RCN);
    DQFFC_202 :  ORCAD_DQFFC 
      PORT MAP  (q=>N3 , d=>L23 , clk=>CCLK , cl=>CCLRN);
    DQFFC_203 :  ORCAD_DQFFC 
      PORT MAP  (q=>N4 , d=>L24 , clk=>CCLK , cl=>CCLRN);
    DQFFC_204 :  ORCAD_DQFFC 
      PORT MAP  (q=>N5 , d=>L25 , clk=>CCLK , cl=>CCLRN);
    DQFFC_205 :  ORCAD_DQFFC 
      PORT MAP  (q=>N6 , d=>L26 , clk=>CCLK , cl=>CCLRN);
    DQFFC_206 :  ORCAD_DQFFC 
      PORT MAP  (q=>N7 , d=>N3 , clk=>RCLK , cl=>RCLRN);
    DQFFC_207 :  ORCAD_DQFFC 
      PORT MAP  (q=>N8 , d=>N4 , clk=>RCLK , cl=>RCLRN);
    DQFFC_208 :  ORCAD_DQFFC 
      PORT MAP  (q=>N9 , d=>N5 , clk=>RCLK , cl=>RCLRN);
    DQFFC_209 :  ORCAD_DQFFC 
      PORT MAP  (q=>N10 , d=>N6 , clk=>RCLK , cl=>RCLRN);
    N11 <=  (L27 OR L28);
    N12 <=  (L29 OR L30);
    N13 <=  (L31 OR L32);
    N14 <=  (L33 OR L34);
    TSB_497 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N11 , en=>L1);
    TSB_498 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N12 , en=>L1);
    TSB_499 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N13 , en=>L1);
    TSB_500 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N14 , en=>L1);
    N15 <= NOT (N3 AND N4 AND N5 AND N6);
    RCO <= NOT (L35 OR N15) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74693\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENP : IN  std_logic;
ENT : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCLRN : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : INOUT  std_logic;
Q1 : INOUT  std_logic;
Q2 : INOUT  std_logic;
Q3 : INOUT  std_logic;
RCO : OUT  std_logic);
END \74693\;

architecture model OF \74693\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <=  (LDN AND ENP AND ENT);
    L3 <= NOT (LDN OR D0);
    L4 <= NOT (LDN OR D1);
    L5 <= NOT (LDN OR D2);
    L6 <= NOT (LDN OR D3);
    L7 <= NOT (L2);
    L8 <= NOT (N3);
    L9 <= NOT (N4);
    L10 <= NOT (N5);
    L11 <= NOT (N6);
    L12 <= NOT (L2 AND N3);
    L13 <= NOT (L2 AND N3 AND N4);
    L14 <= NOT (L2 AND N3 AND N4 AND N5);
    L15 <=  (N3 AND L2);
    L16 <=  (L7 AND LDN AND L8);
    L17 <=  (N4 AND L2 AND N3);
    L18 <=  (L12 AND LDN AND L9);
    L19 <=  (N5 AND L2 AND N3 AND N4);
    L20 <=  (L13 AND LDN AND L10);
    L21 <=  (N6 AND L2 AND N3 AND N4 AND N5);
    L22 <=  (L14 AND LDN AND L11);
    L23 <= NOT (CCLRN);
    L24 <=  (L23 OR L3);
    L25 <=  (L23 OR L4);
    L26 <=  (L23 OR L5);
    L27 <=  (L23 OR L6);
    L28 <= NOT (L15 OR L16 OR L24);
    L29 <= NOT (L17 OR L18 OR L25);
    L30 <= NOT (L19 OR L20 OR L26);
    L31 <= NOT (L21 OR L22 OR L27);
    L32 <=  (N2 AND N7);
    L33 <=  (N1 AND N3);
    L34 <=  (N2 AND N8);
    L35 <=  (N1 AND N4);
    L36 <=  (N2 AND N9);
    L37 <=  (N1 AND N5);
    L38 <=  (N2 AND N10);
    L39 <=  (N1 AND N6);
    L40 <= NOT (ENT);
    L41 <=  (N3 AND RCLRN);
    L42 <=  (N4 AND RCLRN);
    L43 <=  (N5 AND RCLRN);
    L44 <=  (N6 AND RCLRN);
    N1 <= NOT (RCN);
    N2 <=  (RCN);
    DQFF_317 :  ORCAD_DQFF 
      PORT MAP  (q=>N3 , d=>L28 , clk=>CCLK);
    DQFF_318 :  ORCAD_DQFF 
      PORT MAP  (q=>N4 , d=>L29 , clk=>CCLK);
    DQFF_319 :  ORCAD_DQFF 
      PORT MAP  (q=>N5 , d=>L30 , clk=>CCLK);
    DQFF_320 :  ORCAD_DQFF 
      PORT MAP  (q=>N6 , d=>L31 , clk=>CCLK);
    DQFF_321 :  ORCAD_DQFF 
      PORT MAP  (q=>N7 , d=>L41 , clk=>RCLK);
    DQFF_322 :  ORCAD_DQFF 
      PORT MAP  (q=>N8 , d=>L42 , clk=>RCLK);
    DQFF_323 :  ORCAD_DQFF 
      PORT MAP  (q=>N9 , d=>L43 , clk=>RCLK);
    DQFF_324 :  ORCAD_DQFF 
      PORT MAP  (q=>N10 , d=>L44 , clk=>RCLK);
    N11 <=  (L32 OR L33);
    N12 <=  (L34 OR L35);
    N13 <=  (L36 OR L37);
    N14 <=  (L38 OR L39);
    TSB_505 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N11 , en=>L1);
    TSB_506 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N12 , en=>L1);
    TSB_507 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N13 , en=>L1);
    TSB_508 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N14 , en=>L1);
    N15 <= NOT (N3 AND N4 AND N5 AND N6);
    RCO <= NOT (L40 OR N15) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74696\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
UDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
TCN : OUT  std_logic);
END \74696\;

architecture model OF \74696\ IS
	
	BEGIN
	PROCESS(RCLK, CCLK, CCLRN, RCN)
		VARIABLE cnt : integer := 0;
		VARIABLE q : std_logic_vector( 3 DOWNTO 0) := b"0000";
		VARIABLE c : std_logic_vector( 3 DOWNTO 0) := b"0000";
		
		BEGIN
		cnt := 0;
      
      --convert vector to integer
		FOR i IN 0 TO 3 LOOP
			if(c(i) = '1') THEN
				cnt := cnt + 2**i;
			END if;
		END LOOP;

		if(CCLRN = '0') THEN
			c := b"0000";
		ELSif(ENPN = '0') AND (ENTN = '0') AND (CCLK = '1') AND CCLK'EVENT THEN
			if(LDN = '0') THEN
				c(0) := D0;
				c(1) := D1;
				c(2) := D2;
				c(3) := D3;

				cnt := 0;
      
      		--convert vector to integer
				FOR i IN 0 TO 3 LOOP
					if(c(i) = '1') THEN
						cnt := cnt + 2**i;
					END if;
				END LOOP;
			ELSif(LDN = '1') THEN
				if(UDN = '1') THEN
            	if(cnt = 9) THEN
               	cnt := 0;
						TCN <= '1' AFTER 1 ns;
               ELSE
               	cnt := cnt + 1;
                  if(cnt = 9) THEN
                  	TCN <= '0' AFTER 1 ns;
                  ELSE
                  	TCN <= '1' AFTER 1 ns;
						END if;
               END if;
				ELSif(UDN = '0') THEN
            	if(cnt = 0) THEN
               	cnt := 9;
						TCN <= '1' AFTER 1 ns;
               ELSE
               	cnt := cnt - 1;
                  if(cnt = 0) THEN
                  	TCN <= '0' AFTER 1 ns;
                  ELSE
                  	TCN <= '1' AFTER 1 ns;
						END if;
               END if;
				END if;
			END if;						
		END if;						

     	--convert integer to vector
		FOR i IN 0 TO 3 LOOP
			if(cnt MOD 2 = 1) THEN
				c(i) := '1';
			ELSE 
				c(i) := '0';
			END if;
			cnt := cnt / 2;
		END LOOP;

		if(RCLK = '1') AND RCLK'EVENT THEN
			q(0) := c(0);
			q(1) := c(1);
			q(2) := c(2);
			q(3) := c(3);
		END if;		

		if(GN = '1') THEN
			Q0 <= 'Z' AFTER 1 ns;
			Q1 <= 'Z' AFTER 1 ns;
			Q2 <= 'Z' AFTER 1 ns;
			Q3 <= 'Z' AFTER 1 ns;
		ELSif(RCN = '0') THEN
			Q0 <= c(0) AFTER 1 ns;
			Q1 <= c(1) AFTER 1 ns;
			Q2 <= c(2) AFTER 1 ns;
			Q3 <= c(3) AFTER 1 ns;
		ELSif(RCN = '1') THEN
			Q0 <= q(0) AFTER 1 ns;
			Q1 <= q(1) AFTER 1 ns;
			Q2 <= q(2) AFTER 1 ns;
			Q3 <= q(3) AFTER 1 ns;		
		END if;

	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74697\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
UDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
TCN : OUT  std_logic);
END \74697\;

architecture model OF \74697\ IS
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, cl   : IN std_logic;
		q    : OUT std_logic := '0';
 		qNot : OUT std_logic := '1');
	END COMPONENT;

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
    L1 <= NOT (GN);
    L2 <= NOT (UDN);
    L3 <= NOT (LDN);
    L4 <= NOT (L3 OR ENPN OR ENTN);
    L5 <= NOT (ENTN);
    L6 <= NOT (LDN OR D0);
    L7 <= NOT (LDN OR D1);
    L8 <= NOT (LDN OR D2);
    L9 <= NOT (LDN OR D3);
    L10 <=  (N2 AND L2);
    L11 <=  (UDN AND N3);
    L12 <=  (N4 AND L2);
    L13 <=  (UDN AND N5);
    L14 <=  (N6 AND L2);
    L15 <=  (UDN AND N7);
    L16 <=  (N8 AND L2);
    L17 <=  (UDN AND N9);
    L18 <= NOT (L4);
    L19 <= NOT (L4 AND N19);
    L20 <= NOT (L4 AND N19 AND N20);
    L21 <= NOT (L4 AND N19 AND N20 AND N21);
    L22 <=  (N2 AND L4);
    L23 <=  (L18 AND LDN AND N3);
    L24 <=  (N4 AND L4 AND N19);
    L25 <=  (L19 AND LDN AND N5);
    L26 <=  (N6 AND L4 AND N19 AND N20);
    L27 <=  (L20 AND LDN AND N7);
    L28 <=  (N8 AND L4 AND N19 AND N20 AND N21);
    L29 <=  (L21 AND LDN AND N9);
    L30 <= NOT (L22 OR L23 OR L6);
    L31 <= NOT (L24 OR L25 OR L7);
    L32 <= NOT (L26 OR L27 OR L8);
    L33 <= NOT (L28 OR L29 OR L9);
    L34 <=  (N18 AND N10);
    L35 <=  (N1 AND N2);
    L36 <=  (N18 AND N11);
    L37 <=  (N1 AND N4);
    L38 <=  (N18 AND N12);
    L39 <=  (N1 AND N6);
    L40 <=  (N18 AND N13);
    L41 <=  (N1 AND N8);
    N19 <= NOT (L10 OR L11);
    N20 <= NOT (L12 OR L13);
    N21 <= NOT (L14 OR L15);
    N22 <= NOT (L16 OR L17);
    N1 <= NOT (RCN);
    N18 <=  (RCN);
    DFFC_16 : ORCAD_DFFC 
      PORT MAP (q=>N2 , qNot=>N3 , d=>L30 , clk=>CCLK , cl=>CCLRN);
    DFFC_17 : ORCAD_DFFC 
      PORT MAP (q=>N4 , qNot=>N5 , d=>L31 , clk=>CCLK , cl=>CCLRN);
    DFFC_18 : ORCAD_DFFC 
      PORT MAP (q=>N6 , qNot=>N7 , d=>L32 , clk=>CCLK , cl=>CCLRN);
    DFFC_19 : ORCAD_DFFC 
      PORT MAP (q=>N8 , qNot=>N9 , d=>L33 , clk=>CCLK , cl=>CCLRN);
    DQFF_325 :  ORCAD_DQFF 
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK);
    DQFF_326 :  ORCAD_DQFF 
      PORT MAP  (q=>N11 , d=>N4 , clk=>RCLK);
    DQFF_327 :  ORCAD_DQFF 
      PORT MAP  (q=>N12 , d=>N6 , clk=>RCLK);
    DQFF_328 :  ORCAD_DQFF 
      PORT MAP  (q=>N13 , d=>N8 , clk=>RCLK);
    N14 <=  (L34 OR L35);
    N15 <=  (L36 OR L37);
    N16 <=  (L38 OR L39);
    N17 <=  (L40 OR L41);
    TSB_509 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N14 , en=>L1);
    TSB_510 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N15 , en=>L1);
    TSB_511 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N16 , en=>L1);
    TSB_512 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N17 , en=>L1);
    TCN <= NOT (N19 AND N20 AND N21 AND N22 AND L5) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74698\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
UDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : OUT  std_logic;
Q1 : OUT  std_logic;
Q2 : OUT  std_logic;
Q3 : OUT  std_logic;
TCN : OUT  std_logic);
END \74698\;

architecture model OF \74698\ IS
	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

	COMPONENT orcad_dqff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk : IN  std_logic;
		q   : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L51 <= NOT (CCLRN);
    L1 <= NOT (GN);
    L2 <= NOT (N1);
    L3 <= NOT (UDN);
    L4 <= NOT (LDN);
    L5 <= NOT (L4 OR ENPN OR ENTN);
    L6 <= NOT (ENTN);
    L7 <= NOT (LDN OR D0);
    L8 <= NOT (LDN OR D1);
    L9 <= NOT (LDN OR D2);
    L10 <= NOT (LDN OR D3);
    L11 <=  (L51 OR L7);
    L12 <=  (L51 OR L8);
    L13 <=  (L51 OR L9);
    L14 <=  (L51 OR L10);
    L15 <=  (N2 AND L3);
    L16 <=  (UDN AND N3);
    L17 <=  (N4 AND L3);
    L18 <=  (UDN AND N5);
    L19 <=  (N6 AND L3);
    L20 <=  (UDN AND N7);
    L21 <=  (N8 AND L3);
    L22 <=  (UDN AND N9);
    L23 <= NOT (L5);
    L24 <= NOT (L5 AND N18);
    L25 <= NOT (L5 AND N18 AND N19);
    L26 <= NOT (L5 AND N18 AND N19 AND N20);
    L27 <=  (N2 AND L5);
    L28 <=  (L23 AND LDN AND N3);
    L29 <=  (N4 AND L5 AND N18);
    L30 <=  (N7 AND L5 AND N18 AND N21);
    L31 <=  (L24 AND LDN AND N5);
    L32 <=  (N6 AND L5 AND N18 AND N19);
    L33 <=  (L5 AND N18 AND N19 AND N21);
    L34 <=  (L25 AND LDN AND N7);
    L35 <=  (N8 AND L5 AND N18);
    L36 <=  (L26 AND LDN AND N9);
    L37 <=  (UDN AND N18 AND N21 AND L6);
    L38 <=  (L6 AND N18 AND N19 AND N20 AND N21 AND L3);
    L39 <= NOT (L27 OR L28 OR L11);
    L40 <= NOT (L29 OR L30 OR L31 OR L12);
    L41 <= NOT (L32 OR L33 OR L34 OR L13);
    L42 <= NOT (L35 OR L36 OR L14);
    L43 <=  (L2 AND N10);
    L44 <=  (N1 AND N2);
    L45 <=  (L2 AND N11);
    L46 <=  (N1 AND N4);
    L47 <=  (L2 AND N12);
    L48 <=  (N1 AND N6);
    L49 <=  (L2 AND N13);
    L50 <=  (N1 AND N8);
    N18 <= NOT (L15 OR L16);
    N19 <= NOT (L17 OR L18);
    N20 <= NOT (L19 OR L20);
    N21 <= NOT (L21 OR L22);
    N1 <= NOT (RCN);
    DFF_13 :  ORCAD_DFF 
      PORT MAP  (q=>N2 , qNot=>N3 , d=>L39 , clk=>CCLK);
    DFF_14 :  ORCAD_DFF 
      PORT MAP  (q=>N4 , qNot=>N5 , d=>L40 , clk=>CCLK);
    DFF_15 :  ORCAD_DFF 
      PORT MAP  (q=>N6 , qNot=>N7 , d=>L41 , clk=>CCLK);
    DFF_16 :  ORCAD_DFF 
      PORT MAP  (q=>N8 , qNot=>N9 , d=>L42 , clk=>CCLK);
    DQFF_329 :  ORCAD_DQFF 
      PORT MAP  (q=>N10 , d=>N2 , clk=>RCLK);
    DQFF_330 :  ORCAD_DQFF 
      PORT MAP  (q=>N11 , d=>N4 , clk=>RCLK);
    DQFF_331 :  ORCAD_DQFF 
      PORT MAP  (q=>N12 , d=>N6 , clk=>RCLK);
    DQFF_332 :  ORCAD_DQFF 
      PORT MAP  (q=>N13 , d=>N8 , clk=>RCLK);
    N14 <=  (L43 OR L44);
    N15 <=  (L45 OR L46);
    N16 <=  (L47 OR L48);
    N17 <=  (L49 OR L50);
    TSB_513 :  ORCAD_TSB 
      PORT MAP  (O=>Q0 , i1=>N14 , en=>L1);
    TSB_514 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N15 , en=>L1);
    TSB_515 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N16 , en=>L1);
    TSB_516 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N17 , en=>L1);
    TCN <= NOT (L37 OR L38) AFTER 1 ns;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74699\ IS PORT(
D0 : IN  std_logic;
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
ENPN : IN  std_logic;
ENTN : IN  std_logic;
CCLK : IN  std_logic;
LDN : IN  std_logic;
UDN : IN  std_logic;
CCLRN : IN  std_logic;
RCLK : IN  std_logic;
RCN : IN  std_logic;
GN : IN  std_logic;
Q0 : INOUT  std_logic;
Q1 : INOUT  std_logic;
Q2 : INOUT  std_logic;
Q3 : INOUT  std_logic;
TCN : OUT  std_logic);
END \74699\;

architecture model OF \74699\ IS
	
	BEGIN
	PROCESS(RCLK, CCLK, RCN)
		VARIABLE cnt : integer := 0;
		VARIABLE q : std_logic_vector( 3 DOWNTO 0) := b"0000";
		VARIABLE c : std_logic_vector( 3 DOWNTO 0) := b"0000";
		
		BEGIN
		cnt := 0;
      
      --convert vector to integer
		FOR i IN 0 TO 3 LOOP
			if(c(i) = '1') THEN
				cnt := cnt + 2**i;
			END if;
		END LOOP;

		if(ENPN = '0') AND (ENTN = '0') AND (CCLK = '1') AND CCLK'EVENT THEN
			if(CCLRN = '0') THEN
				c := b"0000";
			ELSif(LDN = '0') THEN
				c(0) := D0;
				c(1) := D1;
				c(2) := D2;
				c(3) := D3;

				cnt := 0;
      
      		--convert vector to integer
				FOR i IN 0 TO 3 LOOP
					if(c(i) = '1') THEN
						cnt := cnt + 2**i;
					END if;
				END LOOP;
			ELSif(LDN = '1') THEN
				if(UDN = '1') THEN
            	if(cnt = 15) THEN
               	cnt := 0;
						TCN <= '1' AFTER 1 ns;
               ELSE
               	cnt := cnt + 1;
                  if(cnt = 15) THEN
                  	TCN <= '0' AFTER 1 ns;
                  ELSE
                  	TCN <= '1' AFTER 1 ns;
						END if;
               END if;
				ELSif(UDN = '0') THEN
            	if(cnt = 0) THEN
               	cnt := 15;
						TCN <= '1' AFTER 1 ns;
               ELSE
               	cnt := cnt - 1;
                  if(cnt = 0) THEN
                  	TCN <= '0' AFTER 1 ns;
                  ELSE
                  	TCN <= '1' AFTER 1 ns;
						END if;
               END if;
				END if;
			END if;						
		END if;						

     	--convert integer to vector
		FOR i IN 0 TO 3 LOOP
			if(cnt MOD 2 = 1) THEN
				c(i) := '1';
			ELSE 
				c(i) := '0';
			END if;
			cnt := cnt / 2;
		END LOOP;

		if(RCLK = '1') AND RCLK'EVENT THEN
			q(0) := c(0);
			q(1) := c(1);
			q(2) := c(2);
			q(3) := c(3);
		END if;		

		if(GN = '1') THEN
			Q0 <= 'Z' AFTER 1 ns;
			Q1 <= 'Z' AFTER 1 ns;
			Q2 <= 'Z' AFTER 1 ns;
			Q3 <= 'Z' AFTER 1 ns;
		ELSif(RCN = '0') THEN
			Q0 <= c(0) AFTER 1 ns;
			Q1 <= c(1) AFTER 1 ns;
			Q2 <= c(2) AFTER 1 ns;
			Q3 <= c(3) AFTER 1 ns;
		ELSif(RCN = '1') THEN
			Q0 <= q(0) AFTER 1 ns;
			Q1 <= q(1) AFTER 1 ns;
			Q2 <= q(2) AFTER 1 ns;
			Q3 <= q(3) AFTER 1 ns;		
		END if;

	END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74821\ IS PORT(
D1  : IN   std_logic;
D2  : IN   std_logic;
D3  : IN   std_logic;
D4  : IN   std_logic;
D5  : IN   std_logic;
D6  : IN   std_logic;
D7  : IN   std_logic;
D8  : IN   std_logic;
D9  : IN   std_logic;
D10 : IN   std_logic;
CLK : IN   std_logic;
OEN : IN   std_logic;
Q1  : OUT  std_logic;
Q2  : OUT  std_logic;
Q3  : OUT  std_logic;
Q4  : OUT  std_logic;
Q5  : OUT  std_logic;
Q6  : OUT  std_logic;
Q7  : OUT  std_logic;
Q8  : OUT  std_logic;
Q9  : OUT  std_logic;
Q10 : OUT  std_logic);
END \74821\;

architecture model OF \74821\ IS

    BEGIN
    PROCESS(OEN, CLK)

    BEGIN
    if(OEN = '1') THEN
         Q1  <= 'Z' AFTER 1 ns;          
         Q2  <= 'Z' AFTER 1 ns; 
         Q3  <= 'Z' AFTER 1 ns; 
         Q4  <= 'Z' AFTER 1 ns; 
         Q5  <= 'Z' AFTER 1 ns; 
         Q6  <= 'Z' AFTER 1 ns; 
         Q7  <= 'Z' AFTER 1 ns; 
         Q8  <= 'Z' AFTER 1 ns; 
         Q9  <= 'Z' AFTER 1 ns; 
         Q10 <= 'Z' AFTER 1 ns;
    ELSif((CLK = '1') AND CLK'EVENT) THEN
         Q1  <= TO_X01(D1)  AFTER 1 ns;          
         Q2  <= TO_X01(D2)  AFTER 1 ns; 
         Q3  <= TO_X01(D3)  AFTER 1 ns; 
         Q4  <= TO_X01(D4)  AFTER 1 ns; 
         Q5  <= TO_X01(D5)  AFTER 1 ns; 
         Q6  <= TO_X01(D6)  AFTER 1 ns; 
         Q7  <= TO_X01(D7)  AFTER 1 ns; 
         Q8  <= TO_X01(D8)  AFTER 1 ns; 
         Q9  <= TO_X01(D9)  AFTER 1 ns; 
         Q10 <= TO_X01(D10) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74822\ IS PORT(
D1   : IN   std_logic;
D2   : IN   std_logic;
D3   : IN   std_logic;
D4   : IN   std_logic;
D5   : IN   std_logic;
D6   : IN   std_logic;
D7   : IN   std_logic;
D8   : IN   std_logic;
D9   : IN   std_logic;
D10  : IN   std_logic;
CLK  : IN   std_logic;
OEN  : IN   std_logic;
QN1  : OUT  std_logic;
QN2  : OUT  std_logic;
QN3  : OUT  std_logic;
QN4  : OUT  std_logic;
QN5  : OUT  std_logic;
QN6  : OUT  std_logic;
QN7  : OUT  std_logic;
QN8  : OUT  std_logic;
QN9  : OUT  std_logic;
QN10 : OUT  std_logic);
END \74822\;

architecture model OF \74822\ IS

    BEGIN
    PROCESS(OEN, CLK)

    BEGIN
    if(OEN = '1') THEN
         QN1  <= 'Z' AFTER 1 ns;          
         QN2  <= 'Z' AFTER 1 ns; 
         QN3  <= 'Z' AFTER 1 ns; 
         QN4  <= 'Z' AFTER 1 ns; 
         QN5  <= 'Z' AFTER 1 ns; 
         QN6  <= 'Z' AFTER 1 ns; 
         QN7  <= 'Z' AFTER 1 ns; 
         QN8  <= 'Z' AFTER 1 ns; 
         QN9  <= 'Z' AFTER 1 ns; 
         QN10 <= 'Z' AFTER 1 ns;
    ELSif((CLK = '1') AND CLK'EVENT) THEN
         QN1  <= TO_X01(NOT (D1))  AFTER 1 ns;          
         QN2  <= TO_X01(NOT (D2))  AFTER 1 ns; 
         QN3  <= TO_X01(NOT (D3))  AFTER 1 ns; 
         QN4  <= TO_X01(NOT (D4))  AFTER 1 ns; 
         QN5  <= TO_X01(NOT (D5))  AFTER 1 ns; 
         QN6  <= TO_X01(NOT (D6))  AFTER 1 ns; 
         QN7  <= TO_X01(NOT (D7))  AFTER 1 ns; 
         QN8  <= TO_X01(NOT (D8))  AFTER 1 ns; 
         QN9  <= TO_X01(NOT (D9))  AFTER 1 ns; 
         QN10 <= TO_X01(NOT (D10)) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74823\ IS PORT(
D1     : IN   std_logic;
D2     : IN   std_logic;
D3     : IN   std_logic;
D4     : IN   std_logic;
D5     : IN   std_logic;
D6     : IN   std_logic;
D7     : IN   std_logic;
D8     : IN   std_logic;
D9     : IN   std_logic;
D10    : IN   std_logic;
CLK    : IN   std_logic;
CLKENN : IN   std_logic;
CLRN   : IN   std_logic;
OEN    : IN   std_logic;
Q1     : OUT  std_logic;
Q2     : OUT  std_logic;
Q3     : OUT  std_logic;
Q4     : OUT  std_logic;
Q5     : OUT  std_logic;
Q6     : OUT  std_logic;
Q7     : OUT  std_logic;
Q8     : OUT  std_logic;
Q9     : OUT  std_logic);
END \74823\;

architecture model OF \74823\ IS

    BEGIN
    PROCESS(OEN, CLK, CLRN)

    BEGIN
    if(OEN = '1') THEN
         Q1 <= 'Z' AFTER 1 ns;          
         Q2 <= 'Z' AFTER 1 ns; 
         Q3 <= 'Z' AFTER 1 ns; 
         Q4 <= 'Z' AFTER 1 ns; 
         Q5 <= 'Z' AFTER 1 ns; 
         Q6 <= 'Z' AFTER 1 ns; 
         Q7 <= 'Z' AFTER 1 ns; 
         Q8 <= 'Z' AFTER 1 ns; 
         Q9 <= 'Z' AFTER 1 ns; 
    ELSif(CLRN = '0') THEN
         Q1 <= '0' AFTER 1 ns;          
         Q2 <= '0' AFTER 1 ns; 
         Q3 <= '0' AFTER 1 ns; 
         Q4 <= '0' AFTER 1 ns; 
         Q5 <= '0' AFTER 1 ns; 
         Q6 <= '0' AFTER 1 ns; 
         Q7 <= '0' AFTER 1 ns; 
         Q8 <= '0' AFTER 1 ns; 
         Q9 <= '0' AFTER 1 ns; 
    ELSif(CLKENN = '0') AND (CLK = '1') AND CLK'EVENT THEN
         Q1 <= TO_X01(D1) AFTER 1 ns;          
         Q2 <= TO_X01(D2) AFTER 1 ns; 
         Q3 <= TO_X01(D3) AFTER 1 ns; 
         Q4 <= TO_X01(D4) AFTER 1 ns; 
         Q5 <= TO_X01(D5) AFTER 1 ns; 
         Q6 <= TO_X01(D6) AFTER 1 ns; 
         Q7 <= TO_X01(D7) AFTER 1 ns; 
         Q8 <= TO_X01(D8) AFTER 1 ns; 
         Q9 <= TO_X01(D9) AFTER 1 ns; 
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74824\ IS PORT(
D1     : IN   std_logic;
D2     : IN   std_logic;
D3     : IN   std_logic;
D4     : IN   std_logic;
D5     : IN   std_logic;
D6     : IN   std_logic;
D7     : IN   std_logic;
D8     : IN   std_logic;
D9     : IN   std_logic;
D10    : IN   std_logic;
CLK    : IN   std_logic;
CLKENN : IN   std_logic;
CLRN   : IN   std_logic;
OEN    : IN   std_logic;
QN1    : OUT  std_logic;
QN2    : OUT  std_logic;
QN3    : OUT  std_logic;
QN4    : OUT  std_logic;
QN5    : OUT  std_logic;
QN6    : OUT  std_logic;
QN7    : OUT  std_logic;
QN8    : OUT  std_logic;
QN9    : OUT  std_logic);
END \74824\;

architecture model OF \74824\ IS

    BEGIN
    PROCESS(OEN, CLK, CLRN)

    BEGIN
    if(OEN = '1') THEN
         QN1 <= 'Z' AFTER 1 ns;          
         QN2 <= 'Z' AFTER 1 ns; 
         QN3 <= 'Z' AFTER 1 ns; 
         QN4 <= 'Z' AFTER 1 ns; 
         QN5 <= 'Z' AFTER 1 ns; 
         QN6 <= 'Z' AFTER 1 ns; 
         QN7 <= 'Z' AFTER 1 ns; 
         QN8 <= 'Z' AFTER 1 ns; 
         QN9 <= 'Z' AFTER 1 ns; 
    ELSif(CLRN = '0') THEN
         QN1 <= '0' AFTER 1 ns;          
         QN2 <= '0' AFTER 1 ns; 
         QN3 <= '0' AFTER 1 ns; 
         QN4 <= '0' AFTER 1 ns; 
         QN5 <= '0' AFTER 1 ns; 
         QN6 <= '0' AFTER 1 ns; 
         QN7 <= '0' AFTER 1 ns; 
         QN8 <= '0' AFTER 1 ns; 
         QN9 <= '0' AFTER 1 ns; 
    ELSif(CLKENN = '0') AND (CLK = '1') AND CLK'EVENT THEN
         QN1 <= TO_X01(NOT (D1)) AFTER 1 ns;          
         QN2 <= TO_X01(NOT (D2)) AFTER 1 ns; 
         QN3 <= TO_X01(NOT (D3)) AFTER 1 ns; 
         QN4 <= TO_X01(NOT (D4)) AFTER 1 ns; 
         QN5 <= TO_X01(NOT (D5)) AFTER 1 ns; 
         QN6 <= TO_X01(NOT (D6)) AFTER 1 ns; 
         QN7 <= TO_X01(NOT (D7)) AFTER 1 ns; 
         QN8 <= TO_X01(NOT (D8)) AFTER 1 ns; 
         QN9 <= TO_X01(NOT (D9)) AFTER 1 ns; 
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74825\ IS PORT(
D1     : IN   std_logic;
D2     : IN   std_logic;
D3     : IN   std_logic;
D4     : IN   std_logic;
D5     : IN   std_logic;
D6     : IN   std_logic;
D7     : IN   std_logic;
D8     : IN   std_logic;
D9     : IN   std_logic;
D10    : IN   std_logic;
CLK    : IN   std_logic;
CLKENN : IN   std_logic;
CLRN   : IN   std_logic;
OE1N   : IN   std_logic;
OE2N   : IN   std_logic;
OE3N   : IN   std_logic;
Q1     : OUT  std_logic;
Q2     : OUT  std_logic;
Q3     : OUT  std_logic;
Q4     : OUT  std_logic;
Q5     : OUT  std_logic;
Q6     : OUT  std_logic;
Q7     : OUT  std_logic;
Q8     : OUT  std_logic);
END \74825\;

architecture model OF \74825\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL L1 : std_logic;

    BEGIN
    N1 <= NOT (OE1N);
    N2 <= NOT (OE2N);
    N3 <= NOT (OE3N);
    L1 <= N1 AND N2 AND N3;

    PROCESS(L1, CLK, CLRN)

    BEGIN
    if(L1 = '0') THEN
         Q1 <= 'Z' AFTER 1 ns;          
         Q2 <= 'Z' AFTER 1 ns; 
         Q3 <= 'Z' AFTER 1 ns; 
         Q4 <= 'Z' AFTER 1 ns; 
         Q5 <= 'Z' AFTER 1 ns; 
         Q6 <= 'Z' AFTER 1 ns; 
         Q7 <= 'Z' AFTER 1 ns; 
         Q8 <= 'Z' AFTER 1 ns; 
    ELSif(CLRN = '0') THEN
         Q1 <= '0' AFTER 1 ns;          
         Q2 <= '0' AFTER 1 ns; 
         Q3 <= '0' AFTER 1 ns; 
         Q4 <= '0' AFTER 1 ns; 
         Q5 <= '0' AFTER 1 ns; 
         Q6 <= '0' AFTER 1 ns; 
         Q7 <= '0' AFTER 1 ns; 
         Q8 <= '0' AFTER 1 ns; 
    ELSif(CLKENN = '0') AND (CLK = '1') AND CLK'EVENT THEN
         Q1 <= TO_X01(D1) AFTER 1 ns;          
         Q2 <= TO_X01(D2) AFTER 1 ns; 
         Q3 <= TO_X01(D3) AFTER 1 ns; 
         Q4 <= TO_X01(D4) AFTER 1 ns; 
         Q5 <= TO_X01(D5) AFTER 1 ns; 
         Q6 <= TO_X01(D6) AFTER 1 ns; 
         Q7 <= TO_X01(D7) AFTER 1 ns; 
         Q8 <= TO_X01(D8) AFTER 1 ns; 
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74826\ IS PORT(
D1     : IN   std_logic;
D2     : IN   std_logic;
D3     : IN   std_logic;
D4     : IN   std_logic;
D5     : IN   std_logic;
D6     : IN   std_logic;
D7     : IN   std_logic;
D8     : IN   std_logic;
D9     : IN   std_logic;
D10    : IN   std_logic;
CLK    : IN   std_logic;
CLKENN : IN   std_logic;
CLRN   : IN   std_logic;
OE1N   : IN   std_logic;
OE2N   : IN   std_logic;
OE3N   : IN   std_logic;
QN1    : OUT  std_logic;
QN2    : OUT  std_logic;
QN3    : OUT  std_logic;
QN4    : OUT  std_logic;
QN5    : OUT  std_logic;
QN6    : OUT  std_logic;
QN7    : OUT  std_logic;
QN8    : OUT  std_logic);
END \74826\;

architecture model OF \74826\ IS
    SIGNAL N1 : std_logic;
    SIGNAL N2 : std_logic;
    SIGNAL N3 : std_logic;
    SIGNAL L1 : std_logic;

    BEGIN
    N1 <= NOT (OE1N);
    N2 <= NOT (OE2N);
    N3 <= NOT (OE3N);
    L1 <= N1 AND N2 AND N3;

    PROCESS(L1, CLK, CLRN)

    BEGIN
    if(L1 = '0') THEN
         QN1 <= 'Z' AFTER 1 ns;          
         QN2 <= 'Z' AFTER 1 ns; 
         QN3 <= 'Z' AFTER 1 ns; 
         QN4 <= 'Z' AFTER 1 ns; 
         QN5 <= 'Z' AFTER 1 ns; 
         QN6 <= 'Z' AFTER 1 ns; 
         QN7 <= 'Z' AFTER 1 ns; 
         QN8 <= 'Z' AFTER 1 ns; 
    ELSif(CLRN = '0') THEN
         QN1 <= '0' AFTER 1 ns;          
         QN2 <= '0' AFTER 1 ns; 
         QN3 <= '0' AFTER 1 ns; 
         QN4 <= '0' AFTER 1 ns; 
         QN5 <= '0' AFTER 1 ns; 
         QN6 <= '0' AFTER 1 ns; 
         QN7 <= '0' AFTER 1 ns; 
         QN8 <= '0' AFTER 1 ns; 
    ELSif(CLKENN = '0') AND (CLK = '1') AND CLK'EVENT THEN
         QN1 <= TO_X01(NOT (D1)) AFTER 1 ns;          
         QN2 <= TO_X01(NOT (D2)) AFTER 1 ns; 
         QN3 <= TO_X01(NOT (D3)) AFTER 1 ns; 
         QN4 <= TO_X01(NOT (D4)) AFTER 1 ns; 
         QN5 <= TO_X01(NOT (D5)) AFTER 1 ns; 
         QN6 <= TO_X01(NOT (D6)) AFTER 1 ns; 
         QN7 <= TO_X01(NOT (D7)) AFTER 1 ns; 
         QN8 <= TO_X01(NOT (D8)) AFTER 1 ns; 
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74841\ IS PORT(
D1  : IN   std_logic;
D2  : IN   std_logic;
D3  : IN   std_logic;
D4  : IN   std_logic;
D5  : IN   std_logic;
D6  : IN   std_logic;
D7  : IN   std_logic;
D8  : IN   std_logic;
D9  : IN   std_logic;
D10 : IN   std_logic;
C   : IN   std_logic;
OEN : IN   std_logic;
Q1  : OUT  std_logic;
Q2  : OUT  std_logic;
Q3  : OUT  std_logic;
Q4  : OUT  std_logic;
Q5  : OUT  std_logic;
Q6  : OUT  std_logic;
Q7  : OUT  std_logic;
Q8  : OUT  std_logic;
Q9  : OUT  std_logic;
Q10 : OUT  std_logic);
END \74841\;

architecture model OF \74841\ IS

    BEGIN
    PROCESS(OEN, C, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10)
    
    BEGIN
    if(OEN = '1') THEN
         Q1  <= 'Z' AFTER 1 ns;
         Q2  <= 'Z' AFTER 1 ns;
         Q3  <= 'Z' AFTER 1 ns;
         Q4  <= 'Z' AFTER 1 ns;
         Q5  <= 'Z' AFTER 1 ns;
         Q6  <= 'Z' AFTER 1 ns;
         Q7  <= 'Z' AFTER 1 ns;
         Q8  <= 'Z' AFTER 1 ns;
         Q9  <= 'Z' AFTER 1 ns;
         Q10 <= 'Z' AFTER 1 ns;
    ELSif(C = '1') THEN
         Q1  <= TO_X01(D1)  AFTER 1 ns;
         Q2  <= TO_X01(D2)  AFTER 1 ns;
         Q3  <= TO_X01(D3)  AFTER 1 ns;
         Q4  <= TO_X01(D4)  AFTER 1 ns;
         Q5  <= TO_X01(D5)  AFTER 1 ns;
         Q6  <= TO_X01(D6)  AFTER 1 ns;
         Q7  <= TO_X01(D7)  AFTER 1 ns;
         Q8  <= TO_X01(D8)  AFTER 1 ns;
         Q9  <= TO_X01(D9)  AFTER 1 ns;
         Q10 <= TO_X01(D10) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74842\ IS PORT(
D1   : IN   std_logic;
D2   : IN   std_logic;
D3   : IN   std_logic;
D4   : IN   std_logic;
D5   : IN   std_logic;
D6   : IN   std_logic;
D7   : IN   std_logic;
D8   : IN   std_logic;
D9   : IN   std_logic;
D10  : IN   std_logic;
C    : IN   std_logic;
OEN  : IN   std_logic;
QN1  : OUT  std_logic;
QN2  : OUT  std_logic;
QN3  : OUT  std_logic;
QN4  : OUT  std_logic;
QN5  : OUT  std_logic;
QN6  : OUT  std_logic;
QN7  : OUT  std_logic;
QN8  : OUT  std_logic;
QN9  : OUT  std_logic;
QN10 : OUT  std_logic);
END \74842\;

architecture model OF \74842\ IS

    BEGIN
    PROCESS(OEN, C, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10)
    
    BEGIN
    if(OEN = '1') THEN
         QN1  <= 'Z' AFTER 1 ns;
         QN2  <= 'Z' AFTER 1 ns;
         QN3  <= 'Z' AFTER 1 ns;
         QN4  <= 'Z' AFTER 1 ns;
         QN5  <= 'Z' AFTER 1 ns;
         QN6  <= 'Z' AFTER 1 ns;
         QN7  <= 'Z' AFTER 1 ns;
         QN8  <= 'Z' AFTER 1 ns;
         QN9  <= 'Z' AFTER 1 ns;
         QN10 <= 'Z' AFTER 1 ns;
    ELSif(C = '1') THEN
         QN1  <= TO_X01(NOT (D1))  AFTER 1 ns;
         QN2  <= TO_X01(NOT (D2))  AFTER 1 ns;
         QN3  <= TO_X01(NOT (D3))  AFTER 1 ns;
         QN4  <= TO_X01(NOT (D4))  AFTER 1 ns;
         QN5  <= TO_X01(NOT (D5))  AFTER 1 ns;
         QN6  <= TO_X01(NOT (D6))  AFTER 1 ns;
         QN7  <= TO_X01(NOT (D7))  AFTER 1 ns;
         QN8  <= TO_X01(NOT (D8))  AFTER 1 ns;
         QN9  <= TO_X01(NOT (D9))  AFTER 1 ns;
         QN10 <= TO_X01(NOT (D10)) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74843\ IS PORT(
D1   : IN   std_logic;
D2   : IN   std_logic;
D3   : IN   std_logic;
D4   : IN   std_logic;
D5   : IN   std_logic;
D6   : IN   std_logic;
D7   : IN   std_logic;
D8   : IN   std_logic;
D9   : IN   std_logic;
ENA  : IN   std_logic;
OEN  : IN   std_logic;
CLRN : IN  std_logic;
PREN : IN  std_logic;
Q1   : OUT  std_logic;
Q2   : OUT  std_logic;
Q3   : OUT  std_logic;
Q4   : OUT  std_logic;
Q5   : OUT  std_logic;
Q6   : OUT  std_logic;
Q7   : OUT  std_logic;
Q8   : OUT  std_logic;
Q9   : OUT  std_logic);
END \74843\;

architecture model OF \74843\ IS

    BEGIN
    PROCESS(OEN, ENA, CLRN, PREN, D1, D2, D3, D4, D5, D6, D7, D8, D9)
    
    BEGIN
    if(OEN = '1') THEN
         Q1 <= 'Z' AFTER 1 ns;
         Q2 <= 'Z' AFTER 1 ns;
         Q3 <= 'Z' AFTER 1 ns;
         Q4 <= 'Z' AFTER 1 ns;
         Q5 <= 'Z' AFTER 1 ns;
         Q6 <= 'Z' AFTER 1 ns;
         Q7 <= 'Z' AFTER 1 ns;
         Q8 <= 'Z' AFTER 1 ns;
         Q9 <= 'Z' AFTER 1 ns;
    ELSif(CLRN = '0') AND (PREN = '0') THEN
         Q1 <= 'X' AFTER 1 ns;
         Q2 <= 'X' AFTER 1 ns;
         Q3 <= 'X' AFTER 1 ns;
         Q4 <= 'X' AFTER 1 ns;
         Q5 <= 'X' AFTER 1 ns;
         Q6 <= 'X' AFTER 1 ns;
         Q7 <= 'X' AFTER 1 ns;
         Q8 <= 'X' AFTER 1 ns;
         Q9 <= 'X' AFTER 1 ns;
    ELSif(CLRN = '0') THEN
         Q1 <= '0' AFTER 1 ns;
         Q2 <= '0' AFTER 1 ns;
         Q3 <= '0' AFTER 1 ns;
         Q4 <= '0' AFTER 1 ns;
         Q5 <= '0' AFTER 1 ns;
         Q6 <= '0' AFTER 1 ns;
         Q7 <= '0' AFTER 1 ns;
         Q8 <= '0' AFTER 1 ns;
         Q9 <= '0' AFTER 1 ns;
    ELSif(PREN = '0') THEN
         Q1 <= '1' AFTER 1 ns;
         Q2 <= '1' AFTER 1 ns;
         Q3 <= '1' AFTER 1 ns;
         Q4 <= '1' AFTER 1 ns;
         Q5 <= '1' AFTER 1 ns;
         Q6 <= '1' AFTER 1 ns;
         Q7 <= '1' AFTER 1 ns;
         Q8 <= '1' AFTER 1 ns;
         Q9 <= '1' AFTER 1 ns;
    ELSif(ENA = '1') THEN
         Q1 <= TO_X01(D1) AFTER 1 ns;
         Q2 <= TO_X01(D2) AFTER 1 ns;
         Q3 <= TO_X01(D3) AFTER 1 ns;
         Q4 <= TO_X01(D4) AFTER 1 ns;
         Q5 <= TO_X01(D5) AFTER 1 ns;
         Q6 <= TO_X01(D6) AFTER 1 ns;
         Q7 <= TO_X01(D7) AFTER 1 ns;
         Q8 <= TO_X01(D8) AFTER 1 ns;
         Q9 <= TO_X01(D9) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74844\ IS PORT(
D1    : IN   std_logic;
D2    : IN   std_logic;
D3    : IN   std_logic;
D4    : IN   std_logic;
D5    : IN   std_logic;
D6    : IN   std_logic;
D7    : IN   std_logic;
D8    : IN   std_logic;
D9    : IN   std_logic;
ENA   : IN   std_logic;
OEN   : IN   std_logic;
CLRN  : IN  std_logic;
PREN  : IN  std_logic;
QN1   : OUT  std_logic;
QN2   : OUT  std_logic;
QN3   : OUT  std_logic;
QN4   : OUT  std_logic;
QN5   : OUT  std_logic;
QN6   : OUT  std_logic;
QN7   : OUT  std_logic;
QN8   : OUT  std_logic;
QN9   : OUT  std_logic);
END \74844\;

architecture model OF \74844\ IS

    BEGIN
    PROCESS(OEN, ENA, CLRN, PREN, D1, D2, D3, D4, D5, D6, D7, D8, D9)
    
    BEGIN
    if(OEN = '1') THEN
         QN1 <= 'Z' AFTER 1 ns;
         QN2 <= 'Z' AFTER 1 ns;
         QN3 <= 'Z' AFTER 1 ns;
         QN4 <= 'Z' AFTER 1 ns;
         QN5 <= 'Z' AFTER 1 ns;
         QN6 <= 'Z' AFTER 1 ns;
         QN7 <= 'Z' AFTER 1 ns;
         QN8 <= 'Z' AFTER 1 ns;
         QN9 <= 'Z' AFTER 1 ns;
    ELSif(CLRN = '0') AND (PREN = '0') THEN
         QN1 <= 'X' AFTER 1 ns;
         QN2 <= 'X' AFTER 1 ns;
         QN3 <= 'X' AFTER 1 ns;
         QN4 <= 'X' AFTER 1 ns;
         QN5 <= 'X' AFTER 1 ns;
         QN6 <= 'X' AFTER 1 ns;
         QN7 <= 'X' AFTER 1 ns;
         QN8 <= 'X' AFTER 1 ns;
         QN9 <= 'X' AFTER 1 ns;
    ELSif(CLRN = '0') THEN
         QN1 <= '0' AFTER 1 ns;
         QN2 <= '0' AFTER 1 ns;
         QN3 <= '0' AFTER 1 ns;
         QN4 <= '0' AFTER 1 ns;
         QN5 <= '0' AFTER 1 ns;
         QN6 <= '0' AFTER 1 ns;
         QN7 <= '0' AFTER 1 ns;
         QN8 <= '0' AFTER 1 ns;
         QN9 <= '0' AFTER 1 ns;
    ELSif(PREN = '0') THEN
         QN1 <= '1' AFTER 1 ns;
         QN2 <= '1' AFTER 1 ns;
         QN3 <= '1' AFTER 1 ns;
         QN4 <= '1' AFTER 1 ns;
         QN5 <= '1' AFTER 1 ns;
         QN6 <= '1' AFTER 1 ns;
         QN7 <= '1' AFTER 1 ns;
         QN8 <= '1' AFTER 1 ns;
         QN9 <= '1' AFTER 1 ns;
    ELSif(ENA = '1') THEN
         QN1 <= TO_X01(NOT (D1)) AFTER 1 ns;
         QN2 <= TO_X01(NOT (D2)) AFTER 1 ns;
         QN3 <= TO_X01(NOT (D3)) AFTER 1 ns;
         QN4 <= TO_X01(NOT (D4)) AFTER 1 ns;
         QN5 <= TO_X01(NOT (D5)) AFTER 1 ns;
         QN6 <= TO_X01(NOT (D6)) AFTER 1 ns;
         QN7 <= TO_X01(NOT (D7)) AFTER 1 ns;
         QN8 <= TO_X01(NOT (D8)) AFTER 1 ns;
         QN9 <= TO_X01(NOT (D9)) AFTER 1 ns;
    END if;
    END PROCESS;
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74845\ IS PORT(
D1  : IN     std_logic;
D2  : IN     std_logic;
D3  : IN     std_logic;
D4  : IN     std_logic;
D5  : IN     std_logic;
D6  : IN     std_logic;
D7  : IN     std_logic;
D8  : IN     std_logic;
ENA   : IN     std_logic;
OEN1 : IN     std_logic;
OEN2 : IN     std_logic;
OEN3 : IN     std_logic;
PREN : IN     std_logic;
CLRN : IN     std_logic;
Q1  : OUT  std_logic;
Q2  : OUT  std_logic;
Q3  : OUT  std_logic;
Q4  : OUT  std_logic;
Q5  : OUT  std_logic;
Q6  : OUT  std_logic;
Q7  : OUT  std_logic;
Q8  : OUT  std_logic);
END \74845\;

architecture model OF \74845\ IS
	COMPONENT orcad_dlatchpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (OEN1 OR OEN2 OR OEN3);
    DLATCHPC_18 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N1 , d=>D1 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_19 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N2 , d=>D2 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_20 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N3 , d=>D3 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_21 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N4 , d=>D4 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_22 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N5 , d=>D5 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_23 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N6 , d=>D6 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_24 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N7 , d=>D7 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_25 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N8 , d=>D8 , enable=>ENA , pr=>PREN , cl=>CLRN);
    TSB_307 :  ORCAD_TSB 
      PORT MAP  (O=>Q1 , i1=>N1 , en=>L1);
    TSB_308 :  ORCAD_TSB 
      PORT MAP  (O=>Q2 , i1=>N2 , en=>L1);
    TSB_309 :  ORCAD_TSB 
      PORT MAP  (O=>Q3 , i1=>N3 , en=>L1);
    TSB_310 :  ORCAD_TSB 
      PORT MAP  (O=>Q4 , i1=>N4 , en=>L1);
    TSB_311 :  ORCAD_TSB 
      PORT MAP  (O=>Q5 , i1=>N5 , en=>L1);
    TSB_312 :  ORCAD_TSB 
      PORT MAP  (O=>Q6 , i1=>N6 , en=>L1);
    TSB_313 :  ORCAD_TSB 
      PORT MAP  (O=>Q7 , i1=>N7 , en=>L1);
    TSB_314 :  ORCAD_TSB 
      PORT MAP  (O=>Q8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74846\ IS PORT(
D1 : IN  std_logic;
D2 : IN  std_logic;
D3 : IN  std_logic;
D4 : IN  std_logic;
D5 : IN  std_logic;
D6 : IN  std_logic;
D7 : IN  std_logic;
D8 : IN  std_logic;
ENA : IN  std_logic;
OEN1 : IN  std_logic;
OEN2 : IN  std_logic;
OEN3 : IN  std_logic;
PREN : IN  std_logic;
CLRN : IN  std_logic;
QN1 : OUT  std_logic;
QN2 : OUT  std_logic;
QN3 : OUT  std_logic;
QN4 : OUT  std_logic;
QN5 : OUT  std_logic;
QN6 : OUT  std_logic;
QN7 : OUT  std_logic;
QN8 : OUT  std_logic);
END \74846\;

architecture model OF \74846\ IS
	COMPONENT orcad_dlatchpc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable, cl, pr : IN  std_logic;
		q  : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_itsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (o : OUT std_logic;
	 	i1 : IN std_logic;
	 	en : IN std_logic
	 	);
	END COMPONENT;
	
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
    L1 <= NOT (OEN1 OR OEN2 OR OEN3);
    DLATCHPC_26 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N1 , d=>D1 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_27 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N2 , d=>D2 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_28 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N3 , d=>D3 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_29 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N4 , d=>D4 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_30 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N5 , d=>D5 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_31 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N6 , d=>D6 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_32 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N7 , d=>D7 , enable=>ENA , pr=>PREN , cl=>CLRN);
    DLATCHPC_33 :  ORCAD_DLATCHPC 
      PORT MAP  (q=>N8 , d=>D8 , enable=>ENA , pr=>PREN , cl=>CLRN);
    ITSB_51 :  ORCAD_ITSB 
      PORT MAP  (O=>QN1 , i1=>N1 , en=>L1);
    ITSB_52 :  ORCAD_ITSB 
      PORT MAP  (O=>QN2 , i1=>N2 , en=>L1);
    ITSB_53 :  ORCAD_ITSB 
      PORT MAP  (O=>QN3 , i1=>N3 , en=>L1);
    ITSB_54 :  ORCAD_ITSB 
      PORT MAP  (O=>QN4 , i1=>N4 , en=>L1);
    ITSB_55 :  ORCAD_ITSB 
      PORT MAP  (O=>QN5 , i1=>N5 , en=>L1);
    ITSB_56 :  ORCAD_ITSB 
      PORT MAP  (O=>QN6 , i1=>N6 , en=>L1);
    ITSB_57 :  ORCAD_ITSB 
      PORT MAP  (O=>QN7 , i1=>N7 , en=>L1);
    ITSB_58 :  ORCAD_ITSB 
      PORT MAP  (O=>QN8 , i1=>N8 , en=>L1);
END model;


library IEEE,altlib;
use IEEE.STD_LOGIC_1164.all;use altlib.all;

use altlib.orcad_prims.all;

entity \74990\ IS PORT(
OERB : IN  std_logic;
D1 : INOUT  std_logic;
D2 : INOUT  std_logic;
D3 : INOUT  std_logic;
D4 : INOUT  std_logic;
D5 : INOUT  std_logic;
D6 : INOUT  std_logic;
D7 : INOUT  std_logic;
D8 : INOUT  std_logic;
C : IN  std_logic;
Q8 : OUT  std_logic;
Q7 : OUT  std_logic;
Q6 : OUT  std_logic;
Q5 : OUT  std_logic;
Q4 : OUT  std_logic;
Q3 : OUT  std_logic;
Q2 : OUT  std_logic;
Q1 : OUT  std_logic);
END \74990\;

architecture model OF \74990\ IS
	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
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
    L1 <= NOT (OERB);
    DLATCH_38 :  ORCAD_DLATCH 
      PORT MAP  (q=>N1 , d=>D1 , enable=>C);
    DLATCH_39 :  ORCAD_DLATCH 
      PORT MAP  (q=>N2 , d=>D2 , enable=>C);
    DLATCH_40 :  ORCAD_DLATCH 
      PORT MAP  (q=>N3 , d=>D3 , enable=>C);
    DLATCH_41 :  ORCAD_DLATCH 
      PORT MAP  (q=>N4 , d=>D4 , enable=>C);
    DLATCH_42 :  ORCAD_DLATCH 
      PORT MAP  (q=>N5 , d=>D5 , enable=>C);
    DLATCH_43 :  ORCAD_DLATCH 
      PORT MAP  (q=>N6 , d=>D6 , enable=>C);
    DLATCH_44 :  ORCAD_DLATCH 
      PORT MAP  (q=>N7 , d=>D7 , enable=>C);
    DLATCH_45 :  ORCAD_DLATCH 
      PORT MAP  (q=>N8 , d=>D8 , enable=>C);
    TSB_370 :  ORCAD_TSB 
      PORT MAP  (O=>D1 , i1=>N1 , en=>L1);
    TSB_371 :  ORCAD_TSB 
      PORT MAP  (O=>D2 , i1=>N2 , en=>L1);
    TSB_372 :  ORCAD_TSB 
      PORT MAP  (O=>D3 , i1=>N3 , en=>L1);
    TSB_373 :  ORCAD_TSB 
      PORT MAP  (O=>D4 , i1=>N4 , en=>L1);
    TSB_374 :  ORCAD_TSB 
      PORT MAP  (O=>D5 , i1=>N5 , en=>L1);
    TSB_375 :  ORCAD_TSB 
      PORT MAP  (O=>D6 , i1=>N6 , en=>L1);
    TSB_376 :  ORCAD_TSB 
      PORT MAP  (O=>D7 , i1=>N7 , en=>L1);
    TSB_377 :  ORCAD_TSB 
      PORT MAP  (O=>D8 , i1=>N8 , en=>L1);
    Q1 <=  (N1) AFTER 1 ns;
    Q2 <=  (N2) AFTER 1 ns;
    Q3 <=  (N3) AFTER 1 ns;
    Q4 <=  (N4) AFTER 1 ns;
    Q5 <=  (N5) AFTER 1 ns;
    Q6 <=  (N6) AFTER 1 ns;
    Q7 <=  (N7) AFTER 1 ns;
    Q8 <=  (N8) AFTER 1 ns;
END model;






