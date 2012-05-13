  -- Did not  overload "+" and "-" operator to do signed and 
  -- unsigned arithmetic operation because of following reason.
  -- VHDL Analyzer (Viewlogic V5.2) does not simulate declarations
  -- like A(B'LEFT downto B'RIGHT) correctly. This severely limits
  -- the usage of function calls. That is why all the subprograms
  -- in this package are procedures. This avoids the above 
  -- mentioned declaration. 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY logiblox;
USE logiblox.mvlutil.ALL;

PACKAGE mvlarith IS

  -- In all the following operations vL is augend/minuend
  -- and vR is addend/subtrahend.
  PROCEDURE signed_plus 
              (vL:   IN  std_logic_vector;
               vR:   IN  std_logic_vector;
               cin:  IN  std_logic;
               vO:   OUT std_logic_vector;
               cout: OUT std_logic);

  PROCEDURE unsigned_plus 
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic);

  -- Both signed and unsigned plus are same.
  PROCEDURE plus        
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector);

  PROCEDURE unsigned_minus 
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic);

  PROCEDURE signed_minus 
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic);

  -- Both signed and unsigned minus are same.
  PROCEDURE minus     
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector);

  -- Signed plus with overflow
  PROCEDURE signed_plus_ovfl  
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic;
              ovfl: OUT std_logic);

  -- Signed minus with overflow
  PROCEDURE signed_minus_ovfl  
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic;
              ovfl: OUT std_logic);

END mvlarith;


PACKAGE BODY mvlarith IS

  -- RET signed addition of vL, vR and cin
  PROCEDURE signed_plus  
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic) IS
  VARIABLE carry: std_logic;
  BEGIN
    -- It does does bitwise addition
    carry := cin;
    FOR i IN vL'RIGHT TO vL'LEFT LOOP
      vO(i) := vL(i) XOR vR(i) XOR carry;
      carry := (vL(i) AND vR(i))  OR 
               (vL(i) AND  carry) OR 
               (vR(i) AND carry);
    END LOOP;
    cout := carry;
  RETURN;
  END signed_plus;

  -- RET unsigned addition of vL, vR and cin
  PROCEDURE unsigned_plus 
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic) IS
  BEGIN
    -- Same as signed_plus
    signed_plus(vL, vR, cin, vO, cout);
  END unsigned_plus;

  -- Both signed and unsigned plus are same.
  PROCEDURE plus        
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector) IS
  VARIABLE cout: std_logic;
  BEGIN 
    signed_plus(vL, vR, '0', vO, cout);
  END plus;

  -- RET signed subtraction vL-vR-cin. It is equivalent
  -- to vL+(1s complement of vR)+cin. Default cin is 1.
  PROCEDURE signed_minus 
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic) IS
  VARIABLE borrow: std_logic;
  BEGIN
    borrow := cin;
    FOR i IN vL'RIGHT TO vL'LEFT LOOP
      vO(i) := NOT(vL(i) XOR vR(i) XOR borrow);
      borrow := (vL(i) AND (NOT vR(i)))  OR 
           (vL(i) AND  borrow) OR 
           ((NOT vR(i)) AND borrow);
    END LOOP;
    cout := borrow;
  RETURN;
  END signed_minus;

  -- RET unsigned subtraction vL-vR-cin. It is equivalent
  -- to vL+(1s complement of vR)+cin. Default cin is 1.
  PROCEDURE unsigned_minus 
             (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic) IS
  BEGIN
  -- Same as signed minus.
    signed_minus(vL, vR, cin, vO, cout);
  END unsigned_minus;

  -- Both signed and unsigned minus are same.
  PROCEDURE minus     
			 (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector) IS
  VARIABLE cout: std_logic;
  BEGIN
    signed_minus(vL, vR, '1', vO, cout);
  END minus;

  -- RET signed addition with overflow of vL, vR and cin
  PROCEDURE signed_plus_ovfl   
			 (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic;
              ovfl: OUT std_logic) IS
  VARIABLE carry, prev_carry: std_logic;
  BEGIN
    -- It does bitwise addition
    carry := cin;
    FOR i IN vL'RIGHT TO vL'LEFT LOOP
      vO(i) := vL(i) XOR vR(i) XOR carry;
      prev_carry := carry;
      carry := (vL(i) AND vR(i))  OR 
           (vL(i) AND  carry) OR 
           (vR(i) AND carry);
    END LOOP;
    cout := carry;
    ovfl := carry XOR prev_carry;
  RETURN;
  END signed_plus_ovfl;

  -- RET signed subtraction with overflow of vL, vR and cin
  PROCEDURE signed_minus_ovfl   
			 (vL:   IN  std_logic_vector;
              vR:   IN  std_logic_vector;
              cin:  IN  std_logic;
              vO:   OUT std_logic_vector;
              cout: OUT std_logic;
              ovfl: OUT std_logic) IS
  VARIABLE carry, prev_carry: std_logic;
  BEGIN
    -- It does does bitwise addition
    carry := cin;
    FOR i IN vL'RIGHT TO vL'LEFT LOOP
      vO(i) := NOT(vL(i) XOR vR(i) XOR carry);
      prev_carry := carry;
      carry := (vL(i) AND (NOT vR(i)))  OR 
           (vL(i) AND  carry) OR 
           ((NOT vR(i)) AND carry);
    END LOOP;
    cout := carry;
    ovfl := carry XOR prev_carry;
  RETURN;
  END signed_minus_ovfl;

END mvlarith;
