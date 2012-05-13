--This is a utilities package for a 4-valued logic. I call this 
--logic mvl (multi valued logic) in this package. The 4 values
--are '0','1','X'and'Z'. mvl is equivalent to vlbit of Viewlogic.
--mvl is a subset of std_logic

library IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE mvlutil IS

  TYPE  common_encoding IS (unsigned, signed);
  TYPE  counter_encoding IS (binary, johnson, lfsr, one_hot);
  TYPE  arith_registered IS (none, q, q_ovfl, q_cout, q_all);
  TYPE  mux_encoding IS (binary, one_hot);
  TYPE  shift_type IS (logical, circular, arithmetic);
  TYPE  floatval_type IS (pullup, double_pullup, pulldown, float);
  TYPE  tristate_oe_phase IS (active_high, active_low);
  -- If following type is supported then xb_mux_type_2 should 
  -- be changed to make it better.
  -- TYPE  vlbit_vector_array IS ARRAY (7 DOWNTO 0)OF vlbit_vector;

  FUNCTION mvlbit_not01 
           (b: std_logic)         RETURN BOOLEAN;  
  FUNCTION mvlvec_not01 
           (v: std_logic_vector)  RETURN BOOLEAN;  
  FUNCTION mvlvec_all0 
           (v: std_logic_vector)  RETURN BOOLEAN;  
  FUNCTION stdbit2mvl
	   (b: std_logic)	  RETURN std_logic;
  FUNCTION stdvec2mvl
	   (v: std_logic_vector)  RETURN std_logic_vector;
  FUNCTION mvlvec2int   
           (v: std_logic_vector)  RETURN INTEGER;
  FUNCTION signvec2int  
           (v: std_logic_vector)  RETURN INTEGER;
  FUNCTION  power_two
           (n: INTEGER)           RETURN INTEGER;
  PROCEDURE int2mvlvec  
           (n: IN  INTEGER;
            v: OUT std_logic_vector);
--  These functions must be written for non Viewlogic package
--  FUNCTION vecX    (v: std_logic_vector) RETURN BOOLEAN;
--  FUNCTION vecZ    (v: std_logic_vector) RETURN BOOLEAN;

  PROCEDURE setallX    (VARIABLE v: OUT std_logic_vector);
  PROCEDURE setallZ    (VARIABLE v: OUT std_logic_vector);
  PROCEDURE setallL    (VARIABLE v: OUT std_logic_vector);
  PROCEDURE setallH    (VARIABLE v: OUT std_logic_vector);
  PROCEDURE setall0    (VARIABLE v: OUT std_logic_vector);
  PROCEDURE setall1    (VARIABLE v: OUT std_logic_vector);

  -- Increment v by 1.
  PROCEDURE increment  (v: INOUT std_logic_vector);

  -- Decrement v by 1.
  PROCEDURE decrement  (v: INOUT std_logic_vector);

  PROCEDURE bit_shift  
           (ls_in: IN std_logic;
            ms_in: IN std_logic;  
            right_left: IN std_logic; 
            style: IN shift_type; 
            reg_val: INOUT std_logic_vector);

  FUNCTION  mux_out_number 
           (s: std_logic_vector;
            encoding: mux_encoding) RETURN INTEGER;

  PROCEDURE binary_count 
           (up_dn: IN std_logic;
            count_to: IN INTEGER;
            reg_val: INOUT std_logic_vector);

  PROCEDURE binary_count 
           (up_dn: IN std_logic;
            count_to: IN std_logic_vector;
            reg_val: INOUT std_logic_vector);

  PROCEDURE binary_term_count 
           (up_dn: IN std_logic;
            count_to: IN INTEGER;
            reg_val: IN std_logic_vector;
            term_cnt: OUT std_logic);

  PROCEDURE binary_term_count 
           (up_dn: IN std_logic;
            count_to: IN std_logic_vector;
            reg_val: IN std_logic_vector;
            term_cnt: OUT std_logic);

  PROCEDURE johnson_count 
           (up_dn: IN std_logic;
            count_limit: IN INTEGER;
            reg_val: INOUT std_logic_vector);

  PROCEDURE johnson_term_count 
           (up_dn: IN std_logic;
            reg_val: IN std_logic_vector;
            term_cnt: OUT std_logic);

  PROCEDURE one_hot_count 
           (up_dn: IN std_logic;
            reg_val: INOUT std_logic_vector);

  PROCEDURE one_hot_term_count 
           (up_dn: IN std_logic;
            reg_val: IN std_logic_vector;
            term_cnt: OUT std_logic);

  PROCEDURE lfsr_count 
           (lowest_count: IN std_logic_vector;
            reg_val: INOUT std_logic_vector);

  PROCEDURE lfsr_term_count 
           (reg_val: IN std_logic_vector;
            term_cnt: OUT std_logic);

  PROCEDURE lfsr_shift  
           (reg_val: IN std_logic_vector;
            bit_in: OUT std_logic);

  PROCEDURE set_counter_lower_limit_lfsr
           (count_to: IN INTEGER;
            bwid: IN INTEGER;
            lowest_count: INOUT std_logic_vector);

  PROCEDURE compare
           (a: IN std_logic_vector;
            b: IN std_logic_vector;
	    aeqb: OUT std_logic;
	    agtb: OUT std_logic;
	    altb: OUT std_logic);
END mvlutil;


PACKAGE BODY mvlutil IS

  -- RET TRUE if bit b is not 0 or 1
  FUNCTION mvlbit_not01   (b: std_logic)
  RETURN BOOLEAN IS
    VARIABLE mvl: std_logic;
  BEGIN
    mvl := stdbit2mvl(b);
    IF ( (mvl /= '0') AND (mvl /= '1') ) THEN
      RETURN TRUE;
    END IF;
  RETURN FALSE;
  END mvlbit_not01;

  -- RET TRUE if any bit value in v is not 0 or 1
  FUNCTION mvlvec_not01   (v: std_logic_vector)
  RETURN BOOLEAN IS
    VARIABLE mvl: std_logic_vector(v'LEFT DOWNTO v'RIGHT);
  BEGIN
    mvl := stdvec2mvl(v);
    FOR I IN mvl'RANGE LOOP
      IF ( (mvl(i) /= '0') AND (mvl(i) /= '1') ) THEN
        RETURN TRUE;
      END IF;
    END LOOP;
  RETURN FALSE;
  END mvlvec_not01;

  -- RET TRUE if all bits in v are 0
  FUNCTION mvlvec_all0   (v: std_logic_vector)
  RETURN BOOLEAN IS
    VARIABLE mvl: std_logic_vector(v'LEFT DOWNTO v'RIGHT);
  BEGIN
    mvl := stdvec2mvl(v);
    FOR I IN mvl'RANGE LOOP
      IF ( mvl(i) /= '0' ) THEN
        RETURN FALSE;
      END IF;
    END LOOP;
  RETURN TRUE;
  END mvlvec_all0;

  FUNCTION stdbit2mvl   (b: std_logic)	  
  RETURN std_logic IS
    VARIABLE mvl: std_logic;
  BEGIN
    CASE b IS
    WHEN 'L' =>
	mvl := '0';
    WHEN 'H' =>
	mvl := '1';
    WHEN 'Z' =>
	mvl := 'X';
    WHEN 'U' =>
	mvl := 'X';
    WHEN OTHERS =>
	mvl := b;
    END CASE;
    RETURN mvl;
  END stdbit2mvl;

  FUNCTION stdvec2mvl   (v: std_logic_vector) 
  RETURN std_logic_vector IS
    VARIABLE mvl: std_logic_vector(v'LEFT DOWNTO v'RIGHT);
  BEGIN
    FOR i IN v'RANGE LOOP
	mvl(i) := stdbit2mvl(v(i));
    END LOOP;
    RETURN mvl;
  END stdvec2mvl;

  -- RET integer value of vector v.  Values which are not
  --     0 or 1 are treated as 0.
  FUNCTION mvlvec2int   (v: std_logic_vector)
  RETURN INTEGER IS
    VARIABLE intval: INTEGER;
    VARIABLE power: INTEGER;
    VARIABLE i: INTEGER ;
    VARIABLE mvl: std_logic_vector(v'LEFT DOWNTO v'RIGHT);
  BEGIN
    mvl := stdvec2mvl(v);
    intval := 0; power := 1;
    FOR i IN mvl'RIGHT TO mvl'LEFT LOOP
      IF ( mvl(i) = '1' ) THEN
        intval := intval+power;
      END IF;
      power := power+power;
    END LOOP;
  RETURN intval;
  END mvlvec2int;

  -- RET integer value of sign vector v.  MSB is taken to be
  -- sign bit. MSB must be 0 or 1. If it is non01 then the 
  -- result is nonsense. non01 bits other than MSB are treated
  -- as 0.
  FUNCTION signvec2int   (v: std_logic_vector)
  RETURN INTEGER IS
    VARIABLE intval: INTEGER;
    VARIABLE power: INTEGER;
    VARIABLE i: INTEGER ;
    VARIABLE mvl: std_logic_vector(v'LEFT DOWNTO v'RIGHT);
  BEGIN
    mvl := stdvec2mvl(v);
    CASE mvl(mvl'LEFT) IS
    -- unsigned number conversion
    WHEN '0' =>
      power := 1; intval := 0;
      FOR i IN mvl'RIGHT TO (mvl'LEFT-1) LOOP
        IF ( mvl(i) = '1' ) THEN
          intval := intval+power;
        END IF;
        power := power+power;
      END LOOP;
    WHEN '1' =>
      power := -1; intval := 0;
      FOR i IN mvl'RIGHT TO (mvl'LEFT-1) LOOP
        IF ( mvl(i) = '0' ) THEN
          intval := intval+power;
        END IF;
        power := power+power;
      END LOOP;
      intval := intval - 1;
    WHEN OTHERS =>
      intval := 0;
    END CASE;
  RETURN intval;
  END signvec2int;

  -- It converts integer n to vector v. Assumes that v'RANGE
  -- is sufficient to represent integer n.
  PROCEDURE int2mvlvec  
             (n: IN INTEGER;
              v: OUT std_logic_vector) IS
  VARIABLE count: INTEGER;
  BEGIN
    count := n;
    FOR i IN v'RIGHT TO v'LEFT LOOP
      IF (count mod 2 = 1) THEN
        v(i) := '1';
      ELSE
        v(i) := '0';
      END IF;
      count := (count / 2);
    END LOOP;
  END int2mvlvec;

  -- sets all the values of vector v to 'X'
  PROCEDURE setallX  (VARIABLE v: OUT std_logic_vector) IS
  BEGIN
    FOR i IN v'RANGE LOOP
      v(i) := 'X';
    END LOOP;
  END setallX;

  -- sets all the values of vector v to 'Z'
  PROCEDURE setallZ  (VARIABLE v: OUT std_logic_vector) IS
  BEGIN
    FOR i IN v'RANGE LOOP
      v(i) := 'Z';
    END LOOP;
  END setallZ;

  -- sets all the values of vector v to 'L'
  PROCEDURE setallL  (VARIABLE v: OUT std_logic_vector) IS
  BEGIN
    FOR i IN v'RANGE LOOP
      v(i) := 'L';
    END LOOP;
  END setallL;

  -- sets all the values of vector v to 'H'
  PROCEDURE setallH  (VARIABLE v: OUT std_logic_vector) IS
  BEGIN
    FOR i IN v'RANGE LOOP
      v(i) := 'H';
    END LOOP;
  END setallH;

  -- sets all the values of vector v to '0'
  PROCEDURE setall0  (VARIABLE v: OUT std_logic_vector) IS
  BEGIN
    FOR i IN v'RANGE LOOP
      v(i) := '0';
    END LOOP;
  END setall0;

  -- sets all the values of vector v to '1'
  PROCEDURE setall1  (VARIABLE v: OUT std_logic_vector) IS
  BEGIN
    FOR i IN v'RANGE LOOP
      v(i) := '1';
    END LOOP;
  END setall1;

  -- RET v(OUT) is the incremented vector of v(IN).
  PROCEDURE increment (v: INOUT std_logic_vector) IS
  VARIABLE carry, temp: std_logic;
  BEGIN
    -- It adds '1' to v
    carry := '1';
    FOR i IN v'RIGHT TO v'LEFT LOOP
      temp := v(i) AND  carry;
      v(i) := v(i) XOR carry;
      carry := temp;
    END LOOP;
  RETURN;
  END increment;

  -- RET v(OUT) is the incremented vector of v(IN).
  PROCEDURE decrement (v: INOUT std_logic_vector) IS
  VARIABLE carry, temp: std_logic;
  BEGIN
    -- It subtracts '1' from v.
    -- It is equivalent to adding "11..1" to v.
    carry := '0';
    FOR i IN v'RIGHT TO v'LEFT LOOP
      temp := v(i) OR carry;
      v(i) := NOT(v(i) XOR carry);
      carry := temp;
    END LOOP;
  RETURN;
  END decrement;

  -- performs a shift on reg_val
  PROCEDURE bit_shift
           (ls_in: IN std_logic;
            ms_in: IN std_logic;  
            right_left: IN std_logic; 
            style: IN shift_type; 
            reg_val: INOUT std_logic_vector) IS
  VARIABLE temp_bit: std_logic;
  BEGIN
    CASE style IS
    WHEN logical =>
      CASE right_left IS
      -- left shift
      WHEN '0' =>
        FOR i IN reg_val'LEFT DOWNTO (reg_val'RIGHT+1) LOOP
          reg_val(i) := reg_val(i-1);
        END LOOP;
        reg_val(reg_val'RIGHT) := ls_in;
      -- right shift
      WHEN '1' =>
        FOR i IN reg_val'RIGHT TO (reg_val'LEFT-1) LOOP
          reg_val(i) := reg_val(i+1);
        END LOOP;
        reg_val(reg_val'LEFT) := ms_in;
      WHEN OTHERS =>
        setallX(reg_val);
      END CASE;
    WHEN circular =>
      CASE right_left IS
      -- left shift
      WHEN '0' =>
        temp_bit := reg_val(reg_val'LEFT);
        FOR i IN reg_val'LEFT DOWNTO (reg_val'RIGHT+1) LOOP
          reg_val(i) := reg_val(i-1);
        END LOOP;
        reg_val(reg_val'RIGHT) := temp_bit;
      -- right shift
      WHEN '1' =>
        temp_bit := reg_val(reg_val'RIGHT);
        FOR i IN reg_val'RIGHT TO (reg_val'LEFT-1) LOOP
          reg_val(i) := reg_val(i+1);
        END LOOP;
        reg_val(reg_val'LEFT) := temp_bit;
      WHEN OTHERS =>
        setallX(reg_val);
      END CASE;
    -- same as  logical, proper ls_in  & ms_in provided by the calling
    -- function
    WHEN arithmetic =>
      CASE right_left IS
      -- left shift
      WHEN '0' =>
        FOR i IN reg_val'LEFT DOWNTO (reg_val'RIGHT+1) LOOP
          reg_val(i) := reg_val(i-1);
        END LOOP;
        reg_val(reg_val'RIGHT) := ls_in;
      -- right shift
      WHEN '1' =>
        FOR i IN reg_val'RIGHT TO (reg_val'LEFT-1) LOOP
          reg_val(i) := reg_val(i+1);
        END LOOP;
        reg_val(reg_val'LEFT) := ms_in;
      WHEN OTHERS =>
        setallX(reg_val);
      END CASE;
    END CASE;
  RETURN;        
  END bit_shift;


  -- RETURNs the input bus number that is selected by sel
  FUNCTION  mux_out_number 
         (s: std_logic_vector;
          encoding: mux_encoding) RETURN INTEGER IS
  VARIABLE max_range: INTEGER;
  VARIABLE sel_bit: INTEGER;
  BEGIN
    CASE encoding IS
    WHEN binary =>
      RETURN (mvlvec2int(s));
    WHEN one_hot =>
      max_range := s'LENGTH-1;
      sel_bit := -1;
      FOR i IN 0 TO max_range LOOP
        IF ( s(i) = '1' ) THEN
	  IF ( sel_bit >= 0 ) THEN
            RETURN -1;
          ELSE
	    sel_bit := i;
	  END IF;
        END IF;
      END LOOP;
      RETURN sel_bit;
    WHEN OTHERS =>
      RETURN -1;
    END CASE;
  RETURN -1;
  END mux_out_number;

  -- RETURNs 2**n for INTEGER n
  FUNCTION  power_two
         (n: INTEGER) RETURN INTEGER IS
  VARIABLE power: INTEGER := 1;
  BEGIN
    FOR i IN 0 TO n LOOP
      power := power*2;
    END LOOP;
  RETURN power;
  END power_two;



PROCEDURE binary_count 
         (up_dn: IN std_logic;
          count_to: IN INTEGER;
          reg_val: INOUT std_logic_vector) IS
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    setallX(reg_val);
  ELSE	
    CASE up_dn IS
    WHEN '0' =>
      IF (mvlvec_all0(reg_val)) THEN
        int2mvlvec(count_to,reg_val);
      ELSE
        decrement(reg_val);
      END IF;
    WHEN '1' =>
      IF (mvlvec2int(reg_val) = count_to) THEN
        setall0(reg_val);
      ELSE
        increment(reg_val);
      END IF;
    WHEN OTHERS =>
      setallX(reg_val);
    END CASE;
  END IF;
END binary_count;

PROCEDURE binary_count 
         (up_dn: IN std_logic;
          count_to: IN std_logic_vector;
          reg_val: INOUT std_logic_vector) IS
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    setallX(reg_val);
  ELSE
    CASE up_dn IS
    WHEN '0' =>
      IF (mvlvec_all0(reg_val)) THEN
        reg_val := count_to;
      ELSE
        decrement(reg_val);
      END IF;
    WHEN '1' =>
      IF (reg_val = count_to) THEN
        setall0(reg_val);
      ELSE
        increment(reg_val);
      END IF;
    WHEN OTHERS =>
      setallX(reg_val);
    END CASE;
  END IF;
END binary_count;

PROCEDURE binary_term_count 
         (up_dn: IN std_logic;
          count_to: IN INTEGER;
          reg_val: IN std_logic_vector;
          term_cnt: OUT std_logic) IS
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    term_cnt := 'X';
  ELSE
    CASE up_dn IS
    WHEN '0' =>
      IF (mvlvec_all0(reg_val)) THEN
        term_cnt := '1';
      ELSE
        term_cnt := '0';
      END IF;
    WHEN '1' =>
      IF (mvlvec2int(reg_val) = count_to) THEN
        term_cnt := '1';
      ELSE
        term_cnt := '0';
      END IF;
    WHEN OTHERS =>
      term_cnt := 'X';
    END CASE;
  END IF;
END binary_term_count;

PROCEDURE binary_term_count 
         (up_dn: IN std_logic;
          count_to: IN std_logic_vector;
          reg_val: IN std_logic_vector;
          term_cnt: OUT std_logic) IS
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    term_cnt := 'X';
  ELSE  
    CASE up_dn IS
    WHEN '0' =>
      IF (mvlvec_all0(reg_val)) THEN
        term_cnt := '1';
      ELSE
        term_cnt := '0';
      END IF;
    WHEN '1' =>
      IF (reg_val = count_to) THEN
        term_cnt := '1';
      ELSE
        term_cnt := '0';
      END IF;
    WHEN OTHERS =>
      term_cnt := 'X';
    END CASE;
  END IF;
END binary_term_count;

PROCEDURE johnson_count 
         (up_dn: IN std_logic;
          count_limit: IN INTEGER;
          reg_val: INOUT std_logic_vector) IS
VARIABLE bit_in: std_logic;
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    setallX(reg_val);
  ELSE
    CASE up_dn IS
    WHEN '0' =>
      IF (count_limit = (2*reg_val'LENGTH)) THEN
        bit_in := not(reg_val(reg_val'LEFT));
      ELSE
        bit_in := not(reg_val(reg_val'LEFT) or
                    reg_val(reg_val'LEFT-1));
      END IF;
      bit_shift(bit_in,'X','0',logical,reg_val);
    WHEN '1' =>
      IF (count_limit = (2*reg_val'LENGTH)) THEN
        bit_in := not(reg_val(0));
      ELSE
        bit_in := not(reg_val(0) or  reg_val(1));
      END IF;
      bit_shift('X',bit_in,'1',logical,reg_val);
    WHEN OTHERS =>
      setallX(reg_val);
    END CASE;
  END IF;
END johnson_count;

PROCEDURE johnson_term_count 
         (up_dn: IN std_logic;
          reg_val: IN std_logic_vector;
          term_cnt: OUT std_logic) IS
VARIABLE bit_in: std_logic;
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    term_cnt := 'X';
  ELSE
    CASE up_dn IS
    WHEN '0' =>
      term_cnt := NOT reg_val(reg_val'LEFT) AND 
                  NOT (reg_val(reg_val'RIGHT));
    WHEN '1' =>
      term_cnt := reg_val(reg_val'RIGHT) AND 
              NOT (reg_val(reg_val'RIGHT+1));
    WHEN OTHERS =>
      term_cnt := 'X';
    END CASE;
  END IF;
END johnson_term_count;

PROCEDURE one_hot_count 
         (up_dn: IN std_logic;
          reg_val: INOUT std_logic_vector) IS
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    setallX(reg_val);
  ELSE
    bit_shift('X','X',not(up_dn),circular,reg_val);
  END IF;
END one_hot_count;

PROCEDURE one_hot_term_count 
         (up_dn: IN std_logic;
          reg_val: IN std_logic_vector;
          term_cnt: OUT std_logic) IS
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    term_cnt := 'X';
  ELSE
    CASE up_dn IS
      WHEN '0' =>
        term_cnt := reg_val(reg_val'RIGHT);
      WHEN '1' =>
        term_cnt := reg_val(reg_val'LEFT);
      WHEN OTHERS =>
        term_cnt := 'X';
    END CASE;
  END IF;
END one_hot_term_count;

PROCEDURE lfsr_count 
         (lowest_count: IN std_logic_vector;
          reg_val: INOUT std_logic_vector) IS
VARIABLE bit_in: std_logic;
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    setallX(reg_val);
  ELSE
    lfsr_shift(reg_val, bit_in);
    bit_shift('X',bit_in,'1',logical,reg_val);
    IF (mvlvec_all0(reg_val)) THEN
      reg_val := lowest_count;    
    END IF;
  END IF;
END lfsr_count;

PROCEDURE lfsr_term_count 
         (reg_val: IN std_logic_vector;
          term_cnt: OUT std_logic) IS
VARIABLE bit_in: std_logic;
BEGIN
  IF (mvlvec_not01(reg_val)) THEN
    term_cnt := 'X';
  ELSE
    lfsr_shift(reg_val, bit_in);
    -- Find term_cnt
    term_cnt := '1';
    FOR i IN reg_val'LEFT DOWNTO 1 LOOP
      IF ( reg_val(i) = '1' ) THEN
        term_cnt := '0';
      END IF;
    END LOOP;
    IF (bit_in = '1') THEN
      term_cnt := '0';
    END IF;
  END IF;
END lfsr_term_count;

-- LFSR up count shift
PROCEDURE lfsr_shift(reg_val: IN std_logic_vector;
                     bit_in: OUT std_logic) IS
VARIABLE size: INTEGER;
BEGIN
  size := reg_val'LENGTH;
  CASE size IS
  WHEN 2 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) );
  WHEN 3 =>
    bit_in := NOT(reg_val(0) XOR reg_val(2) );
  WHEN 4 =>
    bit_in := NOT(reg_val(0) XOR reg_val(3) );
  WHEN 5 =>
    bit_in := NOT(reg_val(0) XOR reg_val(3) );
  WHEN 6 =>
    bit_in := NOT(reg_val(0) XOR reg_val(5) );
  WHEN 7 =>
    bit_in := NOT(reg_val(0) XOR reg_val(6) );
  WHEN 8 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) XOR reg_val(6) XOR reg_val(7) );
  WHEN 9 =>
    bit_in := NOT(reg_val(0) XOR reg_val(5) );
  WHEN 10 =>
    bit_in := NOT(reg_val(0) XOR reg_val(7) );
  WHEN 11 =>
    bit_in := NOT(reg_val(0) XOR reg_val(9) );
  WHEN 12 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) XOR reg_val(2) XOR reg_val(10) );
  WHEN 13 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) XOR reg_val(2) XOR reg_val(12) );
  WHEN 14 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) XOR reg_val(2) XOR reg_val(12) );
  WHEN 15 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) );
  WHEN 16 =>
    bit_in := NOT(reg_val(0) XOR reg_val(2) XOR reg_val(3) XOR reg_val(5) );
  WHEN 17 =>
    bit_in := NOT(reg_val(0) XOR reg_val(3) );
  WHEN 18 =>
    bit_in := NOT(reg_val(0) XOR reg_val(7) );
  WHEN 19 =>
    bit_in := NOT(reg_val(0) XOR reg_val(1) XOR reg_val(3) XOR reg_val(5) );
  WHEN 20 =>
    bit_in := NOT(reg_val(0) XOR reg_val(3) );
  WHEN 21 =>
    bit_in := NOT(reg_val(0) XOR reg_val(19) );
  WHEN 22 =>
    bit_in := NOT(reg_val(0) XOR reg_val(21) );
  WHEN 23 =>
    bit_in := NOT(reg_val(0) XOR reg_val(18) );
  WHEN 24 =>
    bit_in := NOT(reg_val(0) XOR reg_val(17) XOR reg_val(22) XOR reg_val(23) );
  WHEN 25 =>
    bit_in := NOT(reg_val(0) XOR reg_val(22) );
  WHEN 26 =>
    bit_in := NOT(reg_val(0) XOR reg_val(20) XOR reg_val(24) XOR reg_val(25) );
  WHEN 27 =>
    bit_in := NOT(reg_val(0) XOR reg_val(22) XOR reg_val(25) XOR reg_val(26) );
  WHEN 28 =>
    bit_in := NOT(reg_val(0) XOR reg_val(25) );
  WHEN 29 =>
    bit_in := NOT(reg_val(0) XOR reg_val(27) );
  WHEN 30 =>
    bit_in := NOT(reg_val(0) XOR reg_val(24) XOR reg_val(26) XOR reg_val(29) );
  WHEN 31 =>
    bit_in := NOT(reg_val(0) XOR reg_val(28) );
  WHEN OTHERS =>
    ASSERT (FALSE)
    REPORT "Max LFSR counter size is 31 bit wide."
    SEVERITY ERROR;
  END CASE;
END lfsr_shift;

  -- Set counter limits for LFSR counter
  PROCEDURE set_counter_lower_limit_lfsr
           (count_to: IN INTEGER;
            bwid: IN INTEGER;
            lowest_count: INOUT std_logic_vector) IS
  VARIABLE count_less: INTEGER;
  VARIABLE bit_in: std_logic;
  BEGIN
    count_less := power_two(bwid) - count_to - 1;
    setall0(lowest_count);
    FOR i IN 1 TO count_less LOOP
      lfsr_shift(lowest_count,bit_in);
      bit_shift('X',bit_in,'1',logical,lowest_count);
    END LOOP;
  END set_counter_lower_limit_lfsr;

  PROCEDURE compare
	   (a: IN std_logic_vector;
	    b: IN std_logic_vector;
	    aeqb: OUT std_logic;
	    agtb: OUT std_logic;
	    altb: OUT std_logic) IS
  VARIABLE eq, gt, lt: std_logic;
  BEGIN
    eq := '1';
    gt := '0';
    lt := '0';
    FOR i in a'LEFT DOWNTO a'RIGHT LOOP
      IF (a(i) /= b(i) AND eq = '1') THEN
	eq := '0';
	IF (a(i) > b(i)) THEN
	  gt := '1';
        ELSE
	  lt := '1';
        END IF;
     END IF;
    END LOOP;
  aeqb := eq;
  altb := lt;
  agtb := gt;
  RETURN;
  END compare;  

END mvlutil;
