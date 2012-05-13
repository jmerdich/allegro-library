--***************************************************************************
--*                                                                         *
--*                         Copyright (C) 1987-1996                         *
--*                              by OrCAD, INC.                             *
--*                                                                         *
--*                           All rights reserved.                          *
--*                                                                         *
--***************************************************************************
   

-- Purpose:     OrCAD VHDL Source File for use with TTL and PLDGATES VHDL
-- Version:     x7.00.02
-- File:        ORCOMP.VHD
-- Date:        December 5, 1996
-- Resource:    OrCAD VST 386+, Reference Guide, Appendix C
-- Delay units: Nanoseconds

-- REV notes:	V6.1a    - Corrected preset for output qNOT on JKFFPC
--					x7.00.00 - Corrected JK flip-flops to work with Simulate v7.00   
--					x7.00.01 - Added model for nand2 with open collector output.
 
--***************************************************************************
-- Component Declarations for orcad_prims

LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE orcad_prims IS

	COMPONENT orcad_nand2
	GENERIC (
		trise_ab_y,
		tfall_ab_y : time := 1ns);
	PORT (
		a, b	: IN  std_logic;
		y 		: OUT std_logic);
	END COMPONENT;

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

	COMPONENT orcad_dqffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk, pr   : IN std_logic;
		q    : OUT std_logic := '0');
	END COMPONENT;

	COMPONENT orcad_dffp 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns
		);
	PORT (
      d, clk, pr   : IN std_logic;
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

	COMPONENT orcad_dff 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      d, clk  : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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
		
	COMPONENT orcad_jkffc 
	GENERIC (
		trise_clk_q,
		tfall_clk_q : time := 1 ns);
	PORT (
      j, k, clk, cl   : IN  std_logic;
		q    : OUT std_logic := '0';
	 	qNot : OUT std_logic := '1');
	END COMPONENT;

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

	COMPONENT orcad_dlatch
	GENERIC (
		 trise_clk_q,
		 tfall_clk_q : time := 1 ns);
	PORT (
      d,	enable : IN std_logic;
		q      : OUT std_logic := '0');
	END COMPONENT;
	
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
	
	COMPONENT orcad_tsb 
	GENERIC (
		trise_i1_o, 
		tfall_i1_o, 
		tpd_en_o : time := 1 ns);
	PORT (	i1,
	 	en : IN  std_logic;
		o  : OUT std_logic := '0');
	END COMPONENT;
	
END orcad_prims;

	
--***************************************************************************
-- Behavioral code for orcad_prims

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_nand2	 IS
GENERIC (
	trise_ab_y,
	tfall_ab_y : time := 1ns);
PORT (
	a, b	: IN  std_logic;
	y		: OUT std_logic);
END orcad_nand2;

ARCHITECTURE open_output OF orcad_nand2 IS
BEGIN
	PROCESS (a, b)
		BEGIN
		IF (a AND b) = '1' THEN
			y <= '0' AFTER tfall_ab_y;
		ELSIF (a AND b) = '0' THEN 
			y <= 'Z' AFTER trise_ab_y;
		ELSE
			y <= 'W' AFTER tfall_ab_y;
		END IF;
	END PROCESS;
END open_output;

	
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dqffc 	 IS
GENERIC (
trise_clk_q : time := 1 ns; 
tfall_clk_q : time := 1 ns
);
PORT (q : OUT std_logic;
	d : IN std_logic;
 	clk : std_logic;
 	cl : std_logic
 	);
END orcad_dqffc;

ARCHITECTURE model OF orcad_dqffc IS
BEGIN

PROCESS (cl, clk)
BEGIN

	IF(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;

END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dffc IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	qNot : OUT std_logic;
 	d : IN std_logic;
 	clk : std_logic;
 	cl : std_logic
 	);
END orcad_dffc;

ARCHITECTURE model OF orcad_dffc IS
BEGIN

PROCESS (cl, clk)
BEGIN

	IF(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;
		qNot <= '1' AFTER tfall_clk_q;

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dqffp IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
	d : IN std_logic;
 	clk : std_logic;
 	pr : std_logic
 	);
END orcad_dqffp;

ARCHITECTURE model OF orcad_dqffp IS
BEGIN

PROCESS (clk, pr)
BEGIN


	IF (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dffp IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	qNot : OUT std_logic;
 	d : IN std_logic;
 	clk : std_logic;
 	pr : std_logic
 	);
END orcad_dffp;

ARCHITECTURE model OF orcad_dffp IS
BEGIN

PROCESS (clk, pr)
BEGIN

	IF (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;
		qNot <= '0' AFTER trise_clk_q;

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dqff IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic := '0';
 	d : IN std_logic;
 	clk : std_logic
 	);
END orcad_dqff;

ARCHITECTURE model OF orcad_dqff IS
BEGIN

PROCESS (clk)
BEGIN


	IF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dff IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic := '0';
 	qNot : OUT std_logic;
 	d : IN std_logic;
 	clk : std_logic
 	);
END orcad_dff;

ARCHITECTURE model OF orcad_dff IS
BEGIN

PROCESS (clk)
BEGIN

	IF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dqffpc IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	d : IN std_logic;
 	clk : std_logic;
 	cl : std_logic;
 	pr : std_logic
 	);
END orcad_dqffpc;

ARCHITECTURE model OF orcad_dqffpc IS
BEGIN

PROCESS (cl, clk, pr)
BEGIN

	IF(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;

	ELSIF (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dffpc IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	qNot : OUT std_logic;
 	d : IN std_logic;
 	clk : std_logic;
 	cl : std_logic;
 	pr : std_logic
 	);
END orcad_dffpc;

ARCHITECTURE model OF orcad_dffpc IS
BEGIN

PROCESS (cl, clk, pr)
BEGIN

	IF(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;
		qNot <= '1' AFTER tfall_clk_q;

	ELSIF (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;
		qNot <= '0' AFTER trise_clk_q;

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_jkffc IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	qNot : OUT std_logic;
 	j : IN std_logic;
 	k : IN std_logic;
 	clk : IN std_logic;
 	cl : IN std_logic
 	);
END orcad_jkffc;

ARCHITECTURE model OF orcad_jkffc IS
SIGNAL N1  : std_logic;
SIGNAL N1N : std_logic;

BEGIN

PROCESS (cl, clk)
BEGIN

	IF(cl = '0') THEN
		N1 <= '0';
		N1N <= '1';

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF (j = '1') AND (k = '1') THEN
					 N1 <= NOT N1;
					 N1N <= NOT N1N;
		ELSIF k = '1' THEN
                N1 <= '0';
                N1N <= '1';
		ELSIF j = '1' THEN
                N1 <= '1';
                N1N <= '0';
         END IF;
	END IF;
END PROCESS;
q    <= N1 AFTER trise_clk_q;
qNot <= N1N AFTER trise_clk_q;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_jkffp IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	qNot : OUT std_logic;
 	j : IN std_logic;
 	k : IN std_logic;
 	clk : IN std_logic;
 	pr : IN std_logic
 	);
END orcad_jkffp;

ARCHITECTURE model OF orcad_jkffp IS
SIGNAL N1  : std_logic;
SIGNAL N1N : std_logic;

BEGIN

PROCESS (clk, pr)
BEGIN

	IF(pr = '0') THEN
		N1  <= '1';
		N1N <= '0';

	ELSIF (clk = '1') AND clk'EVENT THEN
		IF (j = '1') AND (k = '1') THEN
					 N1  <= NOT N1;
					 N1N <= NOT N1N;
		ELSIF k = '1' THEN
                N1  <= '0';
                N1N <= '1';
		ELSIF j = '1' THEN
                N1  <= '1';
                N1N <= '0';
         END IF;
	END IF;

END PROCESS;
q <= N1 AFTER trise_clk_q;
qNot <= N1N AFTER trise_clk_q;

END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_jkffpc IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic;
 	qNot : OUT std_logic;
 	j : IN std_logic;
 	k : IN std_logic;
 	clk : IN std_logic;
 	cl : IN std_logic;
 	pr : IN std_logic
 	);
END orcad_jkffpc;

ARCHITECTURE model OF orcad_jkffpc IS
SIGNAL N1  : std_logic;
SIGNAL N1N : std_logic;

BEGIN

PROCESS (cl, clk, pr)
BEGIN

	IF(cl = '0') THEN
		N1  <= '0';
		N1N <= '1';

	ELSIF (pr = '0') THEN
		N1  <= '1';
		N1N <= '0';
		
	ELSIF (clk = '1') AND clk'EVENT THEN
		IF (j = '1') AND (k = '1') THEN
					 N1  <= NOT N1;
					 N1N <= NOT N1N;
		ELSIF k = '1' THEN
                N1  <= '0';
                N1N <= '1';
		ELSIF j = '1' THEN
                N1  <= '1';
                N1N <= '0';
         END IF;
	END IF;

END PROCESS;
q    <= N1  AFTER trise_clk_q;
qNot <= N1N AFTER trise_clk_q;

END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY orcad_dlatch IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic := '0';
 	d : IN std_logic;
 	enable : std_logic
 	);
END orcad_dlatch;

ARCHITECTURE model OF orcad_dlatch IS
BEGIN

PROCESS (d, enable)
BEGIN

	IF (enable = '1') THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
         END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_dlatchpc IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic := '0';
 	d : IN std_logic;
 	enable : std_logic;
 	cl : std_logic;
 	pr : std_logic
 	);
END orcad_dlatchpc;

ARCHITECTURE model OF orcad_dlatchpc IS
BEGIN

PROCESS (d, cl, enable, pr)
BEGIN

	IF(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;

	ELSIF (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;

	ELSIF (enable = '1') THEN
		IF d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSIF d = '1' THEN
                q <= '1' AFTER trise_clk_q;
         END IF;
	END IF;

END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orcad_itsb IS
GENERIC (
		trise_i1_o : time := 1 ns; 
		tfall_i1_o : time := 1 ns;
		tpd_en_o : time := 1 ns
		);
PORT (o : OUT std_logic;
 	i1 : IN std_logic;
 	en : std_logic
 	);
END orcad_itsb;

ARCHITECTURE model OF orcad_itsb IS
BEGIN

PROCESS (i1, en)
BEGIN
	IF (en = '0') THEN o <= 'Z' AFTER tpd_en_o;
	ELSE
		IF i1 = '1' THEN
                o <= '0' AFTER tfall_i1_o;
		ELSIF i1 = '0' THEN
                o <= '1' AFTER trise_i1_o;
		ELSE
			  o <= TO_X01(i1);
         END IF;
	END IF;
END PROCESS;
END model;


LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY orcad_tsb IS
GENERIC (
		trise_i1_o : time := 1 ns; 
		tfall_i1_o : time := 1 ns;
		tpd_en_o : time := 1 ns
		);
PORT (o : OUT std_logic;
 	i1 : IN std_logic;
 	en : std_logic
 	);
END orcad_tsb;

ARCHITECTURE model OF orcad_tsb IS
BEGIN

PROCESS (i1, en)
BEGIN
	IF (en = '0') THEN o <= 'Z' AFTER tpd_en_o;
	ELSE
		IF i1 = '1' THEN
                o <= '1' AFTER tfall_i1_o;
		ELSIF i1 = '0' THEN
                o <= '0' AFTER trise_i1_o;
		ELSE
			  o <= TO_X01(i1);
         END IF;
	END IF;
END PROCESS;
END model;




