LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;
USE logiblox.mvlarith.ALL;

PACKAGE logiblox IS 
--  The TYPE definitions of common_encoding, counter_encoding,
--  shift_type are in package mvlutil.vhd.
  PROCEDURE xb_accum
            (start_pulse: IN std_logic;
             a: IN std_logic_vector;
             b: IN std_logic_vector;
             c_in: IN std_logic;
             add_sub: IN std_logic;
             load: IN std_logic;
             async_ctrl: IN std_logic;
             async_val: IN std_logic_vector;
             ovfl_async_val: IN std_logic;
             c_out_async_val: IN std_logic;
             sync_ctrl: IN std_logic;
             sync_val: IN std_logic_vector;
             ovfl_sync_val: IN std_logic;
             c_out_sync_val: IN std_logic;
             encoding: IN common_encoding;
             registered: IN arith_registered;
             q_out: INOUT std_logic_vector;
             c_out: OUT std_logic;
             ovfl: OUT std_logic);
  PROCEDURE xb_add_sub 
            (a: IN std_logic_vector;
             b: IN std_logic_vector;
             c_in: IN std_logic;
             add_sub: IN std_logic;
             encoding: IN common_encoding;
             func: OUT std_logic_vector;
             c_out: OUT std_logic;
             ovfl: OUT std_logic);
  PROCEDURE xb_clk_div
            (start_pulse: IN std_logic;
             async_ctrl: IN std_logic;
             async_count: IN INTEGER;
             sync_ctrl: IN std_logic;
             sync_count: IN INTEGER;
             divide_by: IN INTEGER;
             duty_cycle: IN INTEGER;
             curr_cycle: INOUT INTEGER;
             clk_out: OUT std_logic);
  PROCEDURE xb_compare 
            (a: IN std_logic_vector;
             b: IN std_logic_vector;
             encoding: IN common_encoding;
             a_eq_b: OUT std_logic;
             a_ne_b: OUT std_logic;
             a_lt_b: OUT std_logic;
             a_ge_b: OUT std_logic;
             a_gt_b: OUT std_logic;
             a_le_b: OUT std_logic);
  PROCEDURE xb_counter 
            (start_pulse: IN std_logic;
             up_dn: IN std_logic;
             async_ctrl: IN std_logic;
             async_val: IN std_logic_vector;
             sync_ctrl: IN std_logic;
             sync_val: IN std_logic_vector;
             load: IN std_logic;
             d_in: IN std_logic_vector;
             encoding: IN counter_encoding;
             count_to: IN INTEGER;
             -- lowest count is used only in case of lfsr counters
             lowest_count: INOUT std_logic_vector;
             q_out: INOUT std_logic_vector);
  PROCEDURE xb_counter
            (start_pulse: IN std_logic;
             up_dn: IN std_logic;
             async_ctrl: IN std_logic;
             async_val: IN std_logic_vector;
             sync_ctrl: IN std_logic;
             sync_val: IN std_logic_vector;
             load: IN std_logic;
             d_in: IN std_logic_vector;
             count_to: IN std_logic_vector;
             q_out: INOUT std_logic_vector);
  PROCEDURE xb_counter_term_cnt 
            (up_dn: IN std_logic;
             encoding: IN counter_encoding;
             count_to: IN INTEGER;
             q_out: IN std_logic_vector;
             term_cnt: OUT std_logic);
  PROCEDURE xb_counter_term_cnt 
            (up_dn: IN std_logic;
             count_to: IN std_logic_vector;
             q_out: IN std_logic_vector;
             term_cnt: OUT std_logic);
  PROCEDURE xb_counter_lfsr_term 
            (start_pulse: IN std_logic;
             async_ctrl: IN std_logic;
             sync_ctrl: IN std_logic;
             count_to: IN INTEGER;
             curr_count: INOUT INTEGER;
             term_cnt: OUT std_logic);
  PROCEDURE xb_data_reg
            (start_pulse: IN std_logic; 
             d_in: IN std_logic_vector;
             async_ctrl: IN std_logic; 
             async_val: IN std_logic_vector; 
             sync_ctrl: IN std_logic; 
             sync_val: IN std_logic_vector; 
             q_out: OUT std_logic_vector);
  PROCEDURE xb_decode 
            (sel: IN std_logic_vector; 
             en: IN std_logic;
             d_out: OUT std_logic_vector);
  PROCEDURE xb_in
            (pad: IN std_logic_vector;
             i: OUT std_logic_vector);
  PROCEDURE xb_io
            (oe: IN std_logic;
             o: IN std_logic_vector;
             i: OUT std_logic_vector;
             pad: INOUT std_logic_vector);
  PROCEDURE xb_mux_type_1
            (m: IN std_logic_vector;
             s: IN std_logic_vector;
             encoding: IN mux_encoding;
             o: OUT std_logic);
  PROCEDURE xb_mux_type_1
            (m: IN std_logic_vector;
             s: IN std_logic;
             encoding: IN mux_encoding;
             o: OUT std_logic);
  PROCEDURE xb_mux_type_2
            (m0: IN std_logic_vector;
             m1: IN std_logic_vector;
             m2: IN std_logic_vector;
             m3: IN std_logic_vector;
             m4: IN std_logic_vector;
             m5: IN std_logic_vector;
             m6: IN std_logic_vector;
             m7: IN std_logic_vector;
             s: IN std_logic_vector;
             encoding: IN mux_encoding;
             o: OUT std_logic_vector);
  PROCEDURE xb_mux_type_2
            (m0: IN std_logic_vector;
             m1: IN std_logic_vector;
             m2: IN std_logic_vector;
             m3: IN std_logic_vector;
             m4: IN std_logic_vector;
             m5: IN std_logic_vector;
             m6: IN std_logic_vector;
             m7: IN std_logic_vector;
             s: IN std_logic;
             encoding: IN mux_encoding;
             o: OUT std_logic_vector);
  PROCEDURE xb_out
            (o: IN std_logic_vector;
             oe: IN std_logic;
             pad: OUT std_logic_vector);
  PROCEDURE xb_shift
            (start_pulse: IN std_logic; 
             ls_in: IN std_logic;
             ms_in: IN std_logic;    
             right_left: IN std_logic; 
             async_ctrl: IN std_logic; 
             async_val: IN std_logic_vector; 
             sync_ctrl: IN std_logic; 
             sync_val: IN std_logic_vector; 
             load : IN std_logic; 
             par_in : IN std_logic_vector; 
             style: IN shift_type; 
             par_out: INOUT std_logic_vector;
             ls_out: OUT std_logic;
             ms_out: OUT std_logic);
  PROCEDURE xb_tristate
            (i: IN std_logic_vector;
             oe: IN std_logic;
             o: OUT std_logic_vector;
             fval: IN floatval_type);
  PROCEDURE xb_tristate
            (i: IN std_logic_vector;
             oe: IN std_logic;
             o: OUT std_logic_vector;
             fval: IN floatval_type;
	     oe_phase: IN tristate_oe_phase);

END logiblox;


PACKAGE BODY logiblox IS 

  -- Procedures for ACCUM
  PROCEDURE xb_accum
            (start_pulse: IN std_logic;
             a: IN std_logic_vector;
             b: IN std_logic_vector;
             c_in: IN std_logic;
             add_sub: IN std_logic;
             load: IN std_logic;
             async_ctrl: IN std_logic;
             async_val: IN std_logic_vector;
             ovfl_async_val: IN std_logic;
             c_out_async_val: IN std_logic;
             sync_ctrl: IN std_logic;
             sync_val: IN std_logic_vector;
             ovfl_sync_val: IN std_logic;
             c_out_sync_val: IN std_logic;
             encoding: IN common_encoding;
             registered: IN arith_registered;
             q_out: INOUT std_logic_vector;
             c_out: OUT std_logic;
             ovfl: OUT std_logic) IS
  BEGIN
    CASE start_pulse IS
    WHEN '0' =>
      CASE async_ctrl IS
      WHEN '0' =>
        CASE sync_ctrl IS
        WHEN '0' =>
          CASE load IS
          WHEN '0' =>
            xb_add_sub(a, b, c_in, add_sub, encoding, 
                q_out, c_out, ovfl);
          WHEN '1' =>
	    -- Set c_out and ovfl as if a regular add/sub
	    xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
            q_out := b;
          WHEN OTHERS =>
	    -- Set c_out and ovfl as if a regular add/sub
	    xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
            setallX(q_out);
          END CASE;
        WHEN '1' =>
          -- Set c_out and ovfl as if a regular add/sub
          xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
          q_out := sync_val;
          IF ((registered = q_ovfl ) OR (registered = q_all)) THEN
            ovfl := ovfl_sync_val;
          END IF;
          IF ((registered = q_cout ) OR (registered = q_all)) THEN
            c_out := c_out_sync_val;
          END IF;
        WHEN OTHERS =>
          -- Set c_out and ovfl as if a regular add/sub
	  xb_add_sub(a, b, c_in, add_sub, encoding,
	             q_out, c_out, ovfl);
          setallX(q_out);
          IF ((registered = q_ovfl ) OR (registered = q_all)) THEN
            ovfl := 'X';
          END IF;
          IF ((registered = q_cout ) OR (registered = q_all)) THEN
            c_out := 'X';
	  END IF;
        END CASE;
      WHEN '1' =>
        -- Set c_out and ovfl as if a regular add/sub
        xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
        q_out := async_val;
        IF ((registered = q_ovfl ) OR (registered = q_all)) THEN
          ovfl := ovfl_async_val;
        END IF;
        IF ((registered = q_cout ) OR (registered = q_all)) THEN
          c_out := c_out_async_val;
        END IF;
      WHEN OTHERS =>
        -- Set c_out and ovfl as if a regular add/sub
	xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
        setallX(q_out);
        IF ((registered = q_ovfl ) OR (registered = q_all)) THEN
          ovfl := 'X';
        END IF;
        IF ((registered = q_cout ) OR (registered = q_all)) THEN
          c_out := 'X';
	END IF;
      END CASE;
    WHEN '1' =>
      -- Set c_out and ovfl as if a regular add/sub
      xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
      IF ((registered = q_ovfl) OR (registered = q_all) 
	   OR (registered = q_cout) OR (registered = q)) THEN
        q_out := async_val;
      END IF;
      IF ((registered = q_ovfl ) OR (registered = q_all)) THEN
        ovfl := ovfl_async_val;
      END IF;
      IF ((registered = q_cout ) OR (registered = q_all)) THEN
        c_out := c_out_async_val;
      END IF;
    WHEN OTHERS =>
      -- Set c_out and ovfl as if a regular add/sub
      xb_add_sub(a, b, c_in, add_sub, encoding,
		q_out, c_out, ovfl);
      IF ((registered = q_ovfl) OR (registered = q_all) 
	   OR (registered = q_cout) OR (registered = q)) THEN
        setallX(q_out);
      END IF;
      IF ((registered = q_ovfl ) OR (registered = q_all)) THEN
        ovfl := 'X';
      END IF;
      IF ((registered = q_cout ) OR (registered = q_all)) THEN
        c_out := 'X';
      END IF;
    END CASE;
    RETURN;
  END xb_accum;


  -- Procedure for ADD_SUB
  PROCEDURE xb_add_sub 
            (a: IN std_logic_vector;
             b: IN std_logic_vector;
             c_in: IN std_logic;
             add_sub: IN std_logic;
             encoding: IN common_encoding;
             func: OUT std_logic_vector;
             c_out: OUT std_logic;
             ovfl:OUT std_logic) IS
  VARIABLE carry: std_logic;
  BEGIN
  -- Set outputs to all X if cin/a/b is non01
  IF ( mvlbit_not01(c_in) OR mvlvec_not01(a) OR mvlvec_not01(b) ) THEN
    setallX(func);
    c_out := 'X';
    ovfl := 'X';
    RETURN;
  END IF;

    CASE add_sub IS
    -- Add if add_sub = 1
      WHEN '1' =>
        CASE encoding IS
          WHEN signed =>
            signed_plus_ovfl(a, b, c_in, func, 
                    c_out, ovfl);
          WHEN unsigned =>
            unsigned_plus(a, b, c_in, func, carry);
            ovfl := carry;
            c_out := carry;
        END CASE;

    -- Subtract if add_sub = 0
      WHEN '0' =>
        CASE encoding IS
          WHEN signed =>
            signed_minus_ovfl(a, b, c_in, func, 
                    c_out, ovfl);
          WHEN unsigned =>
            unsigned_minus(a, b, c_in, func, carry);
            ovfl := NOT carry;
            c_out := carry;
        END CASE;

    -- func and c_out is all 'X' if add_sub is non 01
      WHEN OTHERS =>
        setallX(func);
        c_out := 'X';
        ovfl := 'X';
    END CASE;
  END xb_add_sub;

  -- Procedure for clock dividers
  PROCEDURE xb_clk_div
            (start_pulse: IN std_logic;
             async_ctrl: IN std_logic;
             async_count: IN INTEGER;
             sync_ctrl: IN std_logic;
             sync_count: IN INTEGER;
             divide_by: IN INTEGER;
             duty_cycle: IN INTEGER;
             curr_cycle: INOUT INTEGER;
             clk_out: OUT std_logic) IS
  BEGIN
    CASE start_pulse IS
    WHEN '0' =>
      CASE async_ctrl IS
      WHEN '0' =>
        CASE sync_ctrl IS
        WHEN '0' =>
	  IF (curr_cycle < 0) THEN
	    clk_out := 'X';
	  ELSE 
            curr_cycle := (curr_cycle+1) MOD divide_by;
            IF ((curr_cycle+duty_cycle) >= divide_by) THEN
              clk_out := '1';
            ELSE
              clk_out := '0';
            END IF;
	  END IF;
        WHEN '1' =>
          curr_cycle := sync_count;
          IF ((curr_cycle+duty_cycle) >= divide_by) THEN
            clk_out := '1';
          ELSE
            clk_out := '0';
          END IF;
        WHEN OTHERS =>
	  curr_cycle := -1;
          clk_out := 'X';
        END CASE;
      WHEN '1' =>
        curr_cycle := async_count;
        IF ((curr_cycle+duty_cycle) >= divide_by) THEN
          clk_out := '1';
        ELSE
          clk_out := '0';
        END IF;
      WHEN OTHERS =>
	curr_cycle := -1;
        clk_out := 'X';
      END CASE;
    WHEN '1' =>
      curr_cycle := async_count;
      IF ((curr_cycle+duty_cycle) >= divide_by) THEN
        clk_out := '1';
      ELSE
        clk_out := '0';
      END IF;
    WHEN OTHERS =>
      curr_cycle := -1;
      clk_out := 'X';
    END CASE;
    
  END xb_clk_div;

  -- Procedure for compare function
  PROCEDURE xb_compare 
            (a: IN std_logic_vector;
             b: IN std_logic_vector;
             encoding: IN common_encoding;
	     a_eq_b: OUT std_logic;
	     a_ne_b: OUT std_logic;
	     a_lt_b: OUT std_logic;
	     a_ge_b: OUT std_logic;
	     a_gt_b: OUT std_logic;
	     a_le_b: OUT std_logic) IS
  VARIABLE eq, gt, lt: std_logic;
  BEGIN
    IF (mvlvec_not01(a) OR mvlvec_not01(b)) THEN
      eq := 'X';
      lt := 'X';
      gt := 'X';
    ELSE
      CASE encoding IS
      WHEN unsigned =>
        compare(a, b, eq, gt, lt);
      WHEN signed =>
        IF (a(a'LEFT) = b(b'LEFT)) THEN
          compare(a, b, eq, gt, lt);
        ELSIF (a(a'LEFT) = '1') THEN
          eq := '0';
          gt := '0';
          lt := '1';
        ELSE
	  eq := '0';
          gt := '1';
          lt := '0';
        END IF;
      END CASE;      
    END IF;
    a_eq_b := eq;
    a_ne_b := NOT eq;
    a_gt_b := gt;
    a_le_b := NOT gt;
    a_lt_b := lt;
    a_ge_b := NOT lt;
  RETURN;
  END xb_compare;

  -- Procedure for counter
  PROCEDURE xb_counter 
            (start_pulse: IN std_logic;
             up_dn: IN std_logic;
             async_ctrl: IN std_logic;
             async_val: IN std_logic_vector;
             sync_ctrl: IN std_logic;
             sync_val: IN std_logic_vector;
             load: IN std_logic;
             d_in: IN std_logic_vector;
             encoding: IN counter_encoding;
             count_to: IN INTEGER;
             lowest_count: INOUT std_logic_vector;
             q_out: INOUT std_logic_vector) IS
    BEGIN
     CASE start_pulse IS
     WHEN '0' =>
      CASE async_ctrl IS
      WHEN '0' =>
        CASE sync_ctrl IS
        WHEN '0' =>
          CASE load IS
          WHEN '0' =>
            CASE encoding IS 
            WHEN binary => binary_count(up_dn,count_to,q_out);
            WHEN johnson => johnson_count(up_dn,count_to,q_out);
            WHEN one_hot => one_hot_count(up_dn,q_out);
            WHEN lfsr => lfsr_count(lowest_count,q_out);
            END CASE;
          WHEN '1' =>
            q_out := d_in;
          WHEN OTHERS =>
            setallX(q_out);
          END CASE;
        WHEN '1' =>
          q_out := sync_val;
        WHEN OTHERS =>
          setallX(q_out);
        END CASE;
      WHEN '1' =>
        q_out := async_val;
      WHEN OTHERS =>
        setallX(q_out);
      END CASE;
    WHEN '1' =>
      q_out := async_val;
    WHEN OTHERS =>
      setallX(q_out);
    END CASE;

    END xb_counter;

  -- Procedure for binary counter
  PROCEDURE xb_counter
            (start_pulse: IN std_logic;
             up_dn: IN std_logic;
             async_ctrl: IN std_logic;
             async_val: IN std_logic_vector;
             sync_ctrl: IN std_logic;
             sync_val: IN std_logic_vector;
             load: IN std_logic;
             d_in: IN std_logic_vector;
             count_to: IN std_logic_vector;
             q_out: INOUT std_logic_vector) IS
    BEGIN
     CASE start_pulse IS
     WHEN '0' =>
      CASE async_ctrl IS
      WHEN '0' =>
        CASE sync_ctrl IS
        WHEN '0' =>
          CASE load IS
          WHEN '0' =>
            binary_count(up_dn,count_to,q_out);
          WHEN '1' =>
            q_out := d_in;
          WHEN OTHERS =>
            setallX(q_out);
          END CASE;
        WHEN '1' =>
          q_out := sync_val;
        WHEN OTHERS =>
          setallX(q_out);
        END CASE;
      WHEN '1' =>
        q_out := async_val;
      WHEN OTHERS =>
        setallX(q_out);
      END CASE;
    WHEN '1' =>
      q_out := async_val;
    WHEN OTHERS =>
      setallX(q_out);
    END CASE;

    END xb_counter;

  -- Procedure for getting term_cnt
  PROCEDURE xb_counter_term_cnt 
            (up_dn: IN std_logic;
             encoding: IN counter_encoding;
             count_to: IN INTEGER;
             q_out: IN std_logic_vector;
             term_cnt: OUT std_logic) IS
  BEGIN
    CASE encoding IS 
    WHEN binary => binary_term_count(up_dn,count_to,q_out,term_cnt);
    WHEN johnson => johnson_term_count(up_dn,q_out,term_cnt);
    WHEN one_hot => one_hot_term_count(up_dn,q_out,term_cnt);
    WHEN lfsr => lfsr_term_count(q_out,term_cnt);
    END CASE;
  END xb_counter_term_cnt;

  -- Procedure for getting term_cnt for binary counters
  PROCEDURE xb_counter_term_cnt 
            (up_dn: IN std_logic;
             count_to: IN std_logic_vector;
             q_out: IN std_logic_vector;
             term_cnt: OUT std_logic) IS
  BEGIN
    binary_term_count(up_dn,count_to,q_out,term_cnt);
  END xb_counter_term_cnt;

  -- Procedure for counting till count_term
  PROCEDURE xb_counter_lfsr_term 
            (start_pulse: IN std_logic;
             async_ctrl: IN std_logic;
             sync_ctrl: IN std_logic;
             count_to: IN INTEGER;
             curr_count: INOUT INTEGER;
             term_cnt: OUT std_logic) IS
  BEGIN
    CASE start_pulse IS
    WHEN '0' =>
      CASE async_ctrl IS
      WHEN '0' =>
        CASE sync_ctrl IS
        WHEN '0' =>
          IF (curr_count = count_to-1) THEN
            term_cnt := '1';
            curr_count := 0;
          ELSE
            term_cnt := '0';
            curr_count := curr_count+1;
          END IF;
        WHEN '1' =>
          term_cnt := '0';
          curr_count := 0;
        WHEN OTHERS =>
          term_cnt := 'X';
        END CASE;
      WHEN '1' =>
        term_cnt := '0';
        curr_count := 0;
      WHEN OTHERS =>
        term_cnt := 'X';
      END CASE;
    WHEN '1' =>
      term_cnt := '0';
      curr_count := 0;
    WHEN OTHERS =>
      term_cnt := 'X';
    END CASE;
  END xb_counter_lfsr_term;

  -- Procedure for data_reg
  PROCEDURE xb_data_reg
            (start_pulse: IN std_logic; 
             d_in: IN std_logic_vector;
             async_ctrl: IN std_logic; 
             async_val: IN std_logic_vector; 
             sync_ctrl: IN std_logic; 
             sync_val: IN std_logic_vector; 
             q_out: OUT std_logic_vector) IS
  BEGIN
    CASE start_pulse IS
    WHEN '0' => 
      CASE async_ctrl IS
      WHEN '0' =>
        CASE sync_ctrl IS
        WHEN '0' =>
          q_out := d_in;
        WHEN '1' =>
          q_out := sync_val;
        WHEN OTHERS =>
          setallX(q_out);
        END CASE;        
      WHEN '1' =>
        q_out := async_val;
      WHEN OTHERS =>
        setallX(q_out);
      END CASE;
    WHEN '1' => 
      q_out := async_val;
    WHEN OTHERS => 
      setallX(q_out);
    END CASE;
  END xb_data_reg;

  -- Procedure for decode function
  PROCEDURE xb_decode 
            (sel: IN std_logic_vector; 
             en: IN std_logic;
             d_out: OUT std_logic_vector) IS
  VARIABLE i,inval: INTEGER;
  BEGIN
    CASE en IS
      WHEN '0' => setall0(d_out);
      WHEN '1' => 
    -- output is all X if any sel is non 01 
        IF (mvlvec_not01(sel)) THEN
          setallX(d_out);
        ELSE
          inval := mvlvec2int(sel); 
          FOR i IN d_out'RANGE LOOP
            IF (i = inval) THEN
              d_out(i) := '1';
            ELSE 
              d_out(i) := '0';
            END IF;
          END LOOP;
        END IF;
    -- output is all X for non 01 en value
      WHEN OTHERS => setallX(d_out);
    END CASE;
  END xb_decode;

  -- Procedure for input pad
  PROCEDURE xb_in
            (pad: IN std_logic_vector;
             i: OUT std_logic_vector) IS
  BEGIN
    i := pad;
  END xb_in;

  -- Procedure for io symbols
  PROCEDURE xb_io
            (oe: IN std_logic;
             o: IN std_logic_vector;
             i: OUT std_logic_vector;
             pad: INOUT std_logic_vector) IS
  BEGIN
    CASE oe IS
    WHEN '0' => 
      pad := o;
    WHEN '1' =>
      setallZ(pad);
    WHEN OTHERS =>
      setallX(pad);
    END CASE;
    i := pad;
  END xb_io;

  -- Procedure for mux of type_1
  PROCEDURE xb_mux_type_1
            (m: IN std_logic_vector;
             s: IN std_logic_vector;
             encoding: IN mux_encoding;
             o: OUT std_logic) IS
  VARIABLE mux_out: INTEGER;
  BEGIN
    IF (mvlvec_not01(s)) THEN
      o := 'X';
    ELSE
      mux_out := mux_out_number(s, encoding);
      IF ((m'LEFT >= mux_out) AND (mux_out >= m'RIGHT)) THEN
        o := m(mux_out);
      ELSE
        o := 'X';
      END IF;
    END IF;
  END xb_mux_type_1;

  PROCEDURE xb_mux_type_1
            (m: IN std_logic_vector;
             s: IN std_logic;
             encoding: IN mux_encoding;
             o: OUT std_logic) IS
  BEGIN
  IF ( s = '0') THEN
    o := m(0);
  ELSIF ( s = '1') THEN
    o := m(1);
  ELSE
    o := 'X';
  END IF;
  END xb_mux_type_1;

  PROCEDURE xb_mux_type_2
            (m0: IN std_logic_vector;
             m1: IN std_logic_vector;
             m2: IN std_logic_vector;
             m3: IN std_logic_vector;
             m4: IN std_logic_vector;
             m5: IN std_logic_vector;
             m6: IN std_logic_vector;
             m7: IN std_logic_vector;
             s: IN std_logic_vector;
             encoding: IN mux_encoding;
             o: OUT std_logic_vector) IS
  VARIABLE mux_out: INTEGER;
  BEGIN
  IF (mvlvec_not01(s)) THEN
    setallX(o);
  ELSE
    mux_out := mux_out_number(s, encoding);
    CASE mux_out IS
    WHEN 0 => o := m0;
    WHEN 1 => o := m1;
    WHEN 2 => o := m2;
    WHEN 3 => o := m3;
    WHEN 4 => o := m4;
    WHEN 5 => o := m5;
    WHEN 6 => o := m6;
    WHEN 7 => o := m7;
    WHEN OTHERS =>
      ASSERT (mux_out < 8)
      REPORT "type_2 mux: max allowed inputs exceeded."
      SEVERITY ERROR;
    END CASE;
  END IF;
  END xb_mux_type_2;

  PROCEDURE xb_mux_type_2
            (m0: IN std_logic_vector;
             m1: IN std_logic_vector;
             m2: IN std_logic_vector;
             m3: IN std_logic_vector;
             m4: IN std_logic_vector;
             m5: IN std_logic_vector;
             m6: IN std_logic_vector;
             m7: IN std_logic_vector;
             s: IN std_logic;
             encoding: IN mux_encoding;
             o: OUT std_logic_vector) IS
  BEGIN
  IF ( s = '0') THEN
    o := m0;
  ELSIF ( s = '1') THEN
    o := m1;
  ELSE 
    setallX(o);
  END IF;
  END xb_mux_type_2;

  -- Procedure for outputs
  PROCEDURE xb_out
            (o: IN std_logic_vector;
             oe: IN std_logic;
             pad: OUT std_logic_vector) IS
  BEGIN
    CASE oe IS
    WHEN '0' => 
      pad := o;
    WHEN '1' =>
      setallZ(pad);
    WHEN OTHERS =>
      setallX(pad);
    END CASE;
  END xb_out;

  -- Procedure for shift function
  PROCEDURE xb_shift  
            (start_pulse: IN std_logic; 
             ls_in: IN std_logic;
             ms_in: IN std_logic;
             right_left: IN std_logic; 
             async_ctrl: IN std_logic; 
             async_val: IN std_logic_vector; 
             sync_ctrl: IN std_logic; 
             sync_val: IN std_logic_vector; 
             load : IN std_logic; 
             par_in : IN std_logic_vector; 
             style: IN shift_type; 
             par_out: INOUT std_logic_vector;
             ls_out: OUT std_logic;
             ms_out: OUT std_logic) IS
  VARIABLE temp_bit: std_logic;
  BEGIN
  -- set all FFs to async_val if start_pulse=1
    CASE start_pulse IS
    WHEN '0' => 
  -- set all FFs to async_val if async_ctrl=1
      CASE async_ctrl IS
      WHEN '0' =>
  -- set all FFs to sync_val if sync_ctrl=1
        CASE sync_ctrl IS
        WHEN '0' =>
  -- load par_in if load=1
          CASE load IS
          WHEN '0' =>
            bit_shift(ls_in, ms_in, right_left,
                 style, par_out);
          WHEN '1' =>
            par_out := par_in;
          WHEN OTHERS =>
            setallX(par_out);
          END CASE;
        WHEN '1' =>
          par_out := sync_val;
        WHEN OTHERS =>
          setallX(par_out);  
        END CASE;        
      WHEN '1' =>
        par_out := async_val;
      WHEN OTHERS =>
        setallX(par_out);
      END CASE;
    WHEN '1' => 
      par_out := async_val;
    WHEN OTHERS => 
      setallX(par_out);
    END CASE;
    ls_out := par_out(par_out'RIGHT);
    ms_out := par_out(par_out'LEFT);
  RETURN;
  END xb_shift;

  -- Procedures for tristate buffers
  PROCEDURE xb_tristate
            (i: IN std_logic_vector;
             oe: IN std_logic;
             o: OUT std_logic_vector;
             fval: IN floatval_type) IS
  BEGIN
    CASE oe IS
    WHEN '0' =>
      o := i;
    WHEN '1' =>
      CASE fval IS
      WHEN pullup =>
        setallH(o);
      WHEN double_pullup =>
        setallH(o);
      WHEN pulldown =>
        setallL(o);
      WHEN OTHERS =>
        setallZ(o);
      END CASE;
    WHEN OTHERS =>
      setallX(o);
    END CASE;
  END xb_tristate;

    -- Procedures for tristate buffers
  PROCEDURE xb_tristate
            (i: IN std_logic_vector;
             oe: IN std_logic;
             o: OUT std_logic_vector;
             fval: IN floatval_type;
	     oe_phase: in tristate_oe_phase) IS
  BEGIN
    case oe_phase is
	when active_low =>
	    xb_tristate(i, oe, o, fval);
	when active_high =>
	    CASE oe IS
		WHEN '1' =>
		    o := i;
		WHEN '0' =>
		    CASE fval IS
			WHEN pullup =>
			    setallH(o);
			WHEN double_pullup =>
			    setallH(o);
			WHEN pulldown =>
			    setallL(o);
			WHEN OTHERS =>
			    setallZ(o);
		    END CASE;
		WHEN OTHERS =>
		    setallX(o);
	    END CASE;
    end case;
  END xb_tristate;

END logiblox;
