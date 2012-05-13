-- COMPONENT DECLARATIONS FOR ORCAD_PRIMS

library IEEE;
USE ieee.std_logic_1164.all;

PACKAGE orcad_prims IS

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
-- BEHAVIORAL CODE FOR ORCAD_PRIMS
	
library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dqffc 	 IS
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

architecture model OF orcad_dqffc IS
BEGIN

PROCESS (cl, clk)
BEGIN

	if(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;

	ELSif (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;

END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dffc IS
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

architecture model OF orcad_dffc IS
BEGIN

PROCESS (cl, clk)
BEGIN

	if(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;
		qNot <= '1' AFTER tfall_clk_q;

	ELSif (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dqffp IS
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

architecture model OF orcad_dqffp IS
BEGIN

PROCESS (clk, pr)
BEGIN


	if (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;

	ELSif (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dffp IS
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

architecture model OF orcad_dffp IS
BEGIN

PROCESS (clk, pr)
BEGIN

	if (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;
		qNot <= '0' AFTER trise_clk_q;

	ELSif (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;

library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dqff IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic := '0';
 	d : IN std_logic;
 	clk : std_logic
 	);
END orcad_dqff;

architecture model OF orcad_dqff IS
BEGIN

PROCESS (clk)
BEGIN


	if (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dff IS
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

architecture model OF orcad_dff IS
BEGIN

PROCESS (clk)
BEGIN

	if (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dqffpc IS
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

architecture model OF orcad_dqffpc IS
BEGIN

PROCESS (cl, clk, pr)
BEGIN

	if(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;

	ELSif (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;

	ELSif (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dffpc IS
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

architecture model OF orcad_dffpc IS
BEGIN

PROCESS (cl, clk, pr)
BEGIN

	if(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;
		qNot <= '1' AFTER tfall_clk_q;

	ELSif (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;
		qNot <= '0' AFTER trise_clk_q;

	ELSif (clk = '1') AND clk'EVENT THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
                qNot <= '1' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
                qNot <= '0' AFTER trise_clk_q;
        ELSE
                q <= TO_X01(d) AFTER trise_clk_q;
                qNot <= NOT TO_X01(d) AFTER trise_clk_q;
        END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_jkffc IS
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

architecture model OF orcad_jkffc IS
SIGNAL N1  : std_logic;
SIGNAL N1N : std_logic;

BEGIN

PROCESS (cl, clk)
BEGIN

	if(cl = '0') THEN
		N1 <= '0';
		N1N <= '1';

	ELSif (clk = '1') AND clk'EVENT THEN
		if (j = '1') AND (k = '1') THEN
					 N1 <= NOT N1;
					 N1N <= NOT N1N;
		ELSif k = '1' THEN
                N1 <= '0';
                N1N <= '1';
		ELSif j = '1' THEN
                N1 <= '1';
                N1N <= '0';
         END if;
	END if;
END PROCESS;
q    <= N1 AFTER trise_clk_q;
qNot <= N1N AFTER trise_clk_q;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_jkffp IS
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

architecture model OF orcad_jkffp IS
SIGNAL N1  : std_logic;
SIGNAL N1N : std_logic;

BEGIN

PROCESS (clk, pr)
BEGIN

	if(pr = '0') THEN
		N1  <= '1';
		N1N <= '0';

	ELSif (clk = '1') AND clk'EVENT THEN
		if (j = '1') AND (k = '1') THEN
					 N1  <= NOT N1;
					 N1N <= NOT N1N;
		ELSif k = '1' THEN
                N1  <= '0';
                N1N <= '1';
		ELSif j = '1' THEN
                N1  <= '1';
                N1N <= '0';
         END if;
	END if;

END PROCESS;
q <= N1 AFTER trise_clk_q;
qNot <= N1N AFTER trise_clk_q;

END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_jkffpc IS
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

architecture model OF orcad_jkffpc IS
SIGNAL N1  : std_logic;
SIGNAL N1N : std_logic;

BEGIN

PROCESS (cl, clk, pr)
BEGIN

	if(cl = '0') THEN
		N1  <= '0';
		N1N <= '1';

	ELSif (pr = '0') THEN
		N1  <= '1';
		N1N <= '0';
		
	ELSif (clk = '1') AND clk'EVENT THEN
		if (j = '1') AND (k = '1') THEN
					 N1  <= NOT N1;
					 N1N <= NOT N1N;
		ELSif k = '1' THEN
                N1  <= '0';
                N1N <= '1';
		ELSif j = '1' THEN
                N1  <= '1';
                N1N <= '0';
         END if;
	END if;

END PROCESS;
q    <= N1  AFTER trise_clk_q;
qNot <= N1N AFTER trise_clk_q;

END model;


library IEEE;
USE ieee.std_logic_1164.all;


entity orcad_dlatch IS
GENERIC (
		trise_clk_q : time := 1 ns; 
		tfall_clk_q : time := 1 ns
		);
PORT (q : OUT std_logic := '0';
 	d : IN std_logic;
 	enable : std_logic
 	);
END orcad_dlatch;

architecture model OF orcad_dlatch IS
BEGIN

PROCESS (d, enable)
BEGIN

	if (enable = '1') THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
         END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_dlatchpc IS
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

architecture model OF orcad_dlatchpc IS
BEGIN

PROCESS (d, cl, enable, pr)
BEGIN

	if(cl = '0') THEN
		q <= '0' AFTER tfall_clk_q;

	ELSif (pr = '0') THEN
		q <= '1' AFTER trise_clk_q;

	ELSif (enable = '1') THEN
		if d = '0' THEN
                q <= '0' AFTER tfall_clk_q;
		ELSif d = '1' THEN
                q <= '1' AFTER trise_clk_q;
         END if;
	END if;

END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;

entity orcad_itsb IS
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

architecture model OF orcad_itsb IS
BEGIN

PROCESS (i1, en)
BEGIN
	if (en = '0') THEN o <= 'Z' AFTER tpd_en_o;
	ELSE
		if i1 = '1' THEN
                o <= '0' AFTER tfall_i1_o;
		ELSif i1 = '0' THEN
                o <= '1' AFTER trise_i1_o;
		ELSE
			  o <= TO_X01(i1);
         END if;
	END if;
END PROCESS;
END model;


library IEEE;
USE ieee.std_logic_1164.all;


entity orcad_tsb IS
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

architecture model OF orcad_tsb IS
BEGIN

PROCESS (i1, en)
BEGIN
	if (en = '0') THEN o <= 'Z' AFTER tpd_en_o;
	ELSE
		if i1 = '1' THEN
                o <= '1' AFTER tfall_i1_o;
		ELSif i1 = '0' THEN
                o <= '0' AFTER trise_i1_o;
		ELSE
			  o <= TO_X01(i1);
         END if;
	END if;
END PROCESS;
END model;

-- End orcad_prims
