--
-- 9 valued logic system standardized by IEEE
-- This file is for simulation purposes only
--
-- --------------------------------------------------------------------
--   modification history :
-- --------------------------------------------------------------------
--  version | mod. date:| 
--   v4.200 | 01/02/92  | 
-- --------------------------------------------------------------------

PACKAGE std_logic_1164 IS

    -------------------------------------------------------------------    
    -- logic state system  (unresolved)
    -------------------------------------------------------------------    
    TYPE std_ulogic IS ( 'U',  -- Uninitialized
                         'X',  -- Forcing  Unknown
                         '0',  -- Forcing  0
                         '1',  -- Forcing  1
                         'Z',  -- High Impedance   
                         'W',  -- Weak     Unknown
                         'L',  -- Weak     0       
                         'H',  -- Weak     1       
                         '-'   -- Don't care
                       );

    -------------------------------------------------------------------    
    -- Directives for Exemplar synthesis of std_ulogic.
    -- Declare the type encoding attribute and set the value for std_ulogic
    -- Directives for the resolution function and all other function are 
    -- in the package body
    -------------------------------------------------------------------    
    ATTRIBUTE logic_type_encoding : string ;
    ATTRIBUTE logic_type_encoding of std_ulogic:type is
                 -- ('U','X','0','1','Z','W','L','H','-') 
                    ('X','X','0','1','Z','X','0','1','X') ; 

    -------------------------------------------------------------------    
    -- Declare the synthesis-directive attribute; to be set on 
    -- basic functions that are difficult for synthesis 
    -------------------------------------------------------------------    
    ATTRIBUTE synthesis_return : string ;
    ATTRIBUTE is_signed : boolean ;


    -------------------------------------------------------------------    
    -- unconstrained array of std_ulogic for use with the resolution function
    -------------------------------------------------------------------    
    TYPE std_ulogic_vector IS ARRAY ( NATURAL RANGE <> ) OF std_ulogic;
                                    
    -------------------------------------------------------------------    
    -- resolution function
    -------------------------------------------------------------------    
    FUNCTION resolved ( s : std_ulogic_vector ) RETURN std_ulogic;


    -------------------------------------------------------------------    
    -- *** industry standard logic type ***
    -------------------------------------------------------------------    
    SUBTYPE std_logic IS resolved std_ulogic;

    -------------------------------------------------------------------    
    -- unconstrained array of std_logic for use in declaring signal arrays
    -------------------------------------------------------------------    
    TYPE std_logic_vector IS ARRAY ( NATURAL RANGE <>) OF std_logic;

    -------------------------------------------------------------------    
    -- common subtypes
    -------------------------------------------------------------------    
    SUBTYPE X01     IS resolved std_ulogic RANGE 'X' TO '1'; -- ('X','0','1') 
    SUBTYPE X01Z    IS resolved std_ulogic RANGE 'X' TO 'Z'; -- ('X','0','1','Z') 
    SUBTYPE UX01    IS resolved std_ulogic RANGE 'U' TO '1'; -- ('U','X','0','1') 
    SUBTYPE UX01Z   IS resolved std_ulogic RANGE 'U' TO 'Z'; -- ('U','X','0','1','Z') 

    -------------------------------------------------------------------    
    -- overloaded logical operators
    -------------------------------------------------------------------    

    FUNCTION "and"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01;
    FUNCTION "nand" ( l : std_ulogic; r : std_ulogic ) RETURN UX01;
    FUNCTION "or"   ( l : std_ulogic; r : std_ulogic ) RETURN UX01;
    FUNCTION "nor"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01;
    FUNCTION "xor"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01;
    FUNCTION "xnor" ( l : std_ulogic; r : std_ulogic ) RETURN UX01;
    FUNCTION "not"  ( l : std_ulogic                 ) RETURN UX01;
    
    -------------------------------------------------------------------    
    -- vectorized overloaded logical operators
    -------------------------------------------------------------------    
    FUNCTION "and"  ( l, r : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "and"  ( l, r : std_ulogic_vector ) RETURN std_ulogic_vector;

    FUNCTION "nand" ( l, r : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "nand" ( l, r : std_ulogic_vector ) RETURN std_ulogic_vector;

    FUNCTION "or"   ( l, r : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "or"   ( l, r : std_ulogic_vector ) RETURN std_ulogic_vector;

    FUNCTION "nor"  ( l, r : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "nor"  ( l, r : std_ulogic_vector ) RETURN std_ulogic_vector;

    FUNCTION "xor"  ( l, r : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "xor"  ( l, r : std_ulogic_vector ) RETURN std_ulogic_vector;

--  -----------------------------------------------------------------------
--  Note : The declaration and implementation of the "xnor" function is
--  specifically commented until at which time the VHDL language has been
--  officially adopted as containing such a function. At such a point, 
--  the following comments may be removed along with this notice without
--  further "official" ballotting of this std_logic_1164 package. It is
--  the intent of this effort to provide such a function once it becomes
--  available in the VHDL standard.
-- EXEMPLAR : Uncommented 5/95. Full support of VHDL'93 for 1164 achieved.
--  -----------------------------------------------------------------------
    FUNCTION "xnor" ( l, r : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "xnor" ( l, r : std_ulogic_vector ) RETURN std_ulogic_vector;

    FUNCTION "not"  ( l : std_logic_vector  ) RETURN std_logic_vector;
    FUNCTION "not"  ( l : std_ulogic_vector ) RETURN std_ulogic_vector;

    -------------------------------------------------------------------
    -- conversion functions
    -------------------------------------------------------------------
    FUNCTION To_bit       ( s : std_ulogic;        xmap : BIT := '0') RETURN BIT;
    FUNCTION To_bitvector ( s : std_logic_vector ; xmap : BIT := '0') RETURN BIT_VECTOR;
    FUNCTION To_bitvector ( s : std_ulogic_vector; xmap : BIT := '0') RETURN BIT_VECTOR;

    FUNCTION To_StdULogic       ( b : BIT               ) RETURN std_ulogic;
    FUNCTION To_StdLogicVector  ( b : BIT_VECTOR        ) RETURN std_logic_vector;
    FUNCTION To_StdLogicVector  ( s : std_ulogic_vector ) RETURN std_logic_vector;
    FUNCTION To_StdULogicVector ( b : BIT_VECTOR        ) RETURN std_ulogic_vector;
    FUNCTION To_StdULogicVector ( s : std_logic_vector  ) RETURN std_ulogic_vector;
    
    -------------------------------------------------------------------    
    -- strength strippers and type convertors
    -------------------------------------------------------------------    

    FUNCTION To_X01  ( s : std_logic_vector  ) RETURN  std_logic_vector;
    FUNCTION To_X01  ( s : std_ulogic_vector ) RETURN  std_ulogic_vector;
    FUNCTION To_X01  ( s : std_ulogic        ) RETURN  X01;
    FUNCTION To_X01  ( b : BIT_VECTOR        ) RETURN  std_logic_vector;
    FUNCTION To_X01  ( b : BIT_VECTOR        ) RETURN  std_ulogic_vector;
    FUNCTION To_X01  ( b : BIT               ) RETURN  X01;       

    FUNCTION To_X01Z ( s : std_logic_vector  ) RETURN  std_logic_vector;
    FUNCTION To_X01Z ( s : std_ulogic_vector ) RETURN  std_ulogic_vector;
    FUNCTION To_X01Z ( s : std_ulogic        ) RETURN  X01Z;
    FUNCTION To_X01Z ( b : BIT_VECTOR        ) RETURN  std_logic_vector;
    FUNCTION To_X01Z ( b : BIT_VECTOR        ) RETURN  std_ulogic_vector;
    FUNCTION To_X01Z ( b : BIT               ) RETURN  X01Z;      

    FUNCTION To_UX01  ( s : std_logic_vector  ) RETURN  std_logic_vector;
    FUNCTION To_UX01  ( s : std_ulogic_vector ) RETURN  std_ulogic_vector;
    FUNCTION To_UX01  ( s : std_ulogic        ) RETURN  UX01;
    FUNCTION To_UX01  ( b : BIT_VECTOR        ) RETURN  std_logic_vector;
    FUNCTION To_UX01  ( b : BIT_VECTOR        ) RETURN  std_ulogic_vector;
    FUNCTION To_UX01  ( b : BIT               ) RETURN  UX01;       

    -------------------------------------------------------------------    
    -- edge detection
    -------------------------------------------------------------------    
    FUNCTION rising_edge  (SIGNAL s : std_ulogic) RETURN BOOLEAN;
    FUNCTION falling_edge (SIGNAL s : std_ulogic) RETURN BOOLEAN;

    -------------------------------------------------------------------    
    -- object contains an unknown
    -------------------------------------------------------------------    
    FUNCTION Is_X ( s : std_ulogic_vector ) RETURN  BOOLEAN;
    FUNCTION Is_X ( s : std_logic_vector  ) RETURN  BOOLEAN;
    FUNCTION Is_X ( s : std_ulogic        ) RETURN  BOOLEAN;

END std_logic_1164;

PACKAGE BODY std_logic_1164 IS

    -------------------------------------------------------------------    
    -- local types
    -------------------------------------------------------------------    
    TYPE stdlogic_1d IS ARRAY (std_ulogic) OF std_ulogic;
    TYPE stdlogic_table IS ARRAY(std_ulogic, std_ulogic) OF std_ulogic;

    -------------------------------------------------------------------    
    -- resolution function
    -------------------------------------------------------------------    
    CONSTANT resolution_table : stdlogic_table := (
    --      ---------------------------------------------------------
    --      |  U    X    0    1    Z    W    L    H    -        |   |  
    --      ---------------------------------------------------------
            ( 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U' ), -- | U |
            ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' ), -- | X |
            ( 'U', 'X', '0', 'X', '0', '0', '0', '0', 'X' ), -- | 0 |
            ( 'U', 'X', 'X', '1', '1', '1', '1', '1', 'X' ), -- | 1 |
            ( 'U', 'X', '0', '1', 'Z', 'W', 'L', 'H', 'X' ), -- | Z |
            ( 'U', 'X', '0', '1', 'W', 'W', 'W', 'W', 'X' ), -- | W |
            ( 'U', 'X', '0', '1', 'L', 'W', 'L', 'W', 'X' ), -- | L |
            ( 'U', 'X', '0', '1', 'H', 'W', 'W', 'H', 'X' ), -- | H |
            ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' )  -- | - |
        );
        
    FUNCTION resolved ( s : std_ulogic_vector ) RETURN std_ulogic IS
        VARIABLE result : std_ulogic := 'Z';  -- weakest state default
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "WIRED_THREE_STATE" ;
    BEGIN
        -- the test for a single driver is essential otherwise the
        -- loop would return 'X' for a single driver of '-' and that
        -- would conflict with the value of a single driver unresolved
        -- signal.
        IF    (s'LENGTH = 1) THEN    RETURN s(s'LOW);
        ELSE
            FOR i IN s'RANGE LOOP
                result := resolution_table(result, s(i));
            END LOOP;
        END IF;
        RETURN result;
    END resolved;

    -------------------------------------------------------------------    
    -- tables for logical operations
    -------------------------------------------------------------------    

    -- truth table for "and" function
    CONSTANT and_table : stdlogic_table := (
    --      ----------------------------------------------------
    --      |  U    X    0    1    Z    W    L    H    -         |   |  
    --      ----------------------------------------------------
            ( 'U', 'U', '0', 'U', 'U', 'U', '0', 'U', 'U' ),  -- | U |
            ( 'U', 'X', '0', 'X', 'X', 'X', '0', 'X', 'X' ),  -- | X |
            ( '0', '0', '0', '0', '0', '0', '0', '0', '0' ),  -- | 0 |
            ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', 'X' ),  -- | 1 |
            ( 'U', 'X', '0', 'X', 'X', 'X', '0', 'X', 'X' ),  -- | Z |
            ( 'U', 'X', '0', 'X', 'X', 'X', '0', 'X', 'X' ),  -- | W |
            ( '0', '0', '0', '0', '0', '0', '0', '0', '0' ),  -- | L |
            ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', 'X' ),  -- | H |
            ( 'U', 'X', '0', 'X', 'X', 'X', '0', 'X', 'X' )   -- | - |
    );

    -- truth table for "or" function
    CONSTANT or_table : stdlogic_table := (
    --      ----------------------------------------------------
    --      |  U    X    0    1    Z    W    L    H    -         |   |  
    --      ----------------------------------------------------
            ( 'U', 'U', 'U', '1', 'U', 'U', 'U', '1', 'U' ),  -- | U |
            ( 'U', 'X', 'X', '1', 'X', 'X', 'X', '1', 'X' ),  -- | X |
            ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', 'X' ),  -- | 0 |
            ( '1', '1', '1', '1', '1', '1', '1', '1', '1' ),  -- | 1 |
            ( 'U', 'X', 'X', '1', 'X', 'X', 'X', '1', 'X' ),  -- | Z |
            ( 'U', 'X', 'X', '1', 'X', 'X', 'X', '1', 'X' ),  -- | W |
            ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', 'X' ),  -- | L |
            ( '1', '1', '1', '1', '1', '1', '1', '1', '1' ),  -- | H |
            ( 'U', 'X', 'X', '1', 'X', 'X', 'X', '1', 'X' )   -- | - |
    );

    -- truth table for "xor" function
    CONSTANT xor_table : stdlogic_table := (
    --      ----------------------------------------------------
    --      |  U    X    0    1    Z    W    L    H    -         |   |  
    --      ----------------------------------------------------
            ( 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U' ),  -- | U |
            ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' ),  -- | X |
            ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', 'X' ),  -- | 0 |
            ( 'U', 'X', '1', '0', 'X', 'X', '1', '0', 'X' ),  -- | 1 |
            ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' ),  -- | Z |
            ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' ),  -- | W |
            ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', 'X' ),  -- | L |
            ( 'U', 'X', '1', '0', 'X', 'X', '1', '0', 'X' ),  -- | H |
            ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' )   -- | - |
    );

    -- truth table for "not" function
    CONSTANT not_table: stdlogic_1d := 
    --  -------------------------------------------------
    --  |   U    X    0    1    Z    W    L    H    -   |
    --  -------------------------------------------------
         ( 'U', 'X', '1', '0', 'X', 'X', '1', '0', 'X' ); 

    -------------------------------------------------------------------    
    -- overloaded logical operators ( with optimizing hints )
    -------------------------------------------------------------------    

    FUNCTION "and"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01 IS
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "AND" ;
    BEGIN
        result := (and_table(l, r));
        RETURN result ;
    END "and";

    FUNCTION "nand" ( l : std_ulogic; r : std_ulogic ) RETURN UX01 IS
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NAND" ;
    BEGIN
        result :=   (not_table ( and_table(l, r)));
        RETURN result ;
    END "nand";

    FUNCTION "or"   ( l : std_ulogic; r : std_ulogic ) RETURN UX01 IS
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "OR" ;
    BEGIN
        result := (or_table(l, r));
        RETURN result ;
    END "or";

    FUNCTION "nor"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01 IS
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NOR" ;
    BEGIN
        result := (not_table ( or_table( l, r )));
        RETURN result ;
    END "nor";

    FUNCTION "xor"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01 IS
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "XOR" ;
    BEGIN
        result := (xor_table(l, r));
        RETURN result ;
    END "xor";

    FUNCTION "xnor"  ( l : std_ulogic; r : std_ulogic ) RETURN UX01 is
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "XNOR" ;
    begin
        result := not_table(xor_table(l, r));
        RETURN result ;
    end "xnor";

    FUNCTION "not"  ( l : std_ulogic ) RETURN UX01 IS
        VARIABLE result : UX01 ; 
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NOT" ;
    BEGIN
        result := (not_table(l));
        RETURN result ;
    END "not";
    
    -------------------------------------------------------------------    
    -- and
    -------------------------------------------------------------------    
    FUNCTION "and"  ( l,r : std_logic_vector ) RETURN std_logic_vector IS
        ALIAS lv : std_logic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_logic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_logic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "AND" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'and' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := and_table (lv(i), rv(i));
            END LOOP;
        END IF;
        RETURN result;
    END "and";
    ---------------------------------------------------------------------
    FUNCTION "and"  ( l,r : std_ulogic_vector ) RETURN std_ulogic_vector IS
        ALIAS lv : std_ulogic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_ulogic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_ulogic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "AND" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'and' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := and_table (lv(i), rv(i));
            END LOOP;
        END IF;
        RETURN result;
    END "and";
    -------------------------------------------------------------------    
    -- nand
    -------------------------------------------------------------------    
    FUNCTION "nand"  ( l,r : std_logic_vector ) RETURN std_logic_vector IS
        ALIAS lv : std_logic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_logic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_logic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NAND" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'nand' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := not_table(and_table (lv(i), rv(i)));
            END LOOP;
        END IF;
        RETURN result;
    END "nand";
    ---------------------------------------------------------------------
    FUNCTION "nand"  ( l,r : std_ulogic_vector ) RETURN std_ulogic_vector IS
        ALIAS lv : std_ulogic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_ulogic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_ulogic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NAND" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'nand' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := not_table(and_table (lv(i), rv(i)));
            END LOOP;
        END IF;
        RETURN result;
    END "nand";
    -------------------------------------------------------------------    
    -- or
    -------------------------------------------------------------------    
    FUNCTION "or"  ( l,r : std_logic_vector ) RETURN std_logic_vector IS
        ALIAS lv : std_logic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_logic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_logic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "OR" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'or' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := or_table (lv(i), rv(i));
            END LOOP;
        END IF;
        RETURN result;
    END "or";
    ---------------------------------------------------------------------
    FUNCTION "or"  ( l,r : std_ulogic_vector ) RETURN std_ulogic_vector IS
        ALIAS lv : std_ulogic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_ulogic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_ulogic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "OR" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'or' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := or_table (lv(i), rv(i));
            END LOOP;
        END IF;
        RETURN result;
    END "or";
    -------------------------------------------------------------------    
    -- nor
    -------------------------------------------------------------------    
    FUNCTION "nor"  ( l,r : std_logic_vector ) RETURN std_logic_vector IS
        ALIAS lv : std_logic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_logic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_logic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NOR" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'nor' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := not_table(or_table (lv(i), rv(i)));
            END LOOP;
        END IF;
        RETURN result;
    END "nor";
    ---------------------------------------------------------------------
    FUNCTION "nor"  ( l,r : std_ulogic_vector ) RETURN std_ulogic_vector IS
        ALIAS lv : std_ulogic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_ulogic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_ulogic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NOR" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'nor' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := not_table(or_table (lv(i), rv(i)));
            END LOOP;
        END IF;
        RETURN result;
    END "nor";
    ---------------------------------------------------------------------
    -- xor
    -------------------------------------------------------------------    
    FUNCTION "xor"  ( l,r : std_logic_vector ) RETURN std_logic_vector IS
        ALIAS lv : std_logic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_logic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_logic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "XOR" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'xor' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := xor_table (lv(i), rv(i));
            END LOOP;
        END IF;
        RETURN result;
    END "xor";
    ---------------------------------------------------------------------
    FUNCTION "xor"  ( l,r : std_ulogic_vector ) RETURN std_ulogic_vector IS
        ALIAS lv : std_ulogic_vector ( 1 TO l'LENGTH ) IS l;
        ALIAS rv : std_ulogic_vector ( 1 TO r'LENGTH ) IS r;
        VARIABLE result : std_ulogic_vector ( 1 TO l'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "XOR" ;
    BEGIN
        IF ( l'LENGTH /= r'LENGTH ) THEN
            ASSERT FALSE
            REPORT "arguments of overloaded 'xor' operator are not of the same length"
            SEVERITY FAILURE;
        ELSE
            FOR i IN result'RANGE LOOP
                result(i) := xor_table (lv(i), rv(i));
            END LOOP;
        END IF;
        RETURN result;
    END "xor";
--  -------------------------------------------------------------------    
--  -- xnor
--  -------------------------------------------------------------------    
--  -----------------------------------------------------------------------
--  Note : The declaration and implementation of the "xnor" function is
--  specifically commented until at which time the VHDL language has been
--  officially adopted as containing such a function. At such a point, 
--  the following comments may be removed along with this notice without
--  further "official" ballotting of this std_logic_1164 package. It is
--  the intent of this effort to provide such a function once it becomes
--  available in the VHDL standard.
--  -----------------------------------------------------------------------
    function "xnor"  ( l,r : std_logic_vector ) return std_logic_vector is
        alias lv : std_logic_vector ( 1 to l'length ) is l;
        alias rv : std_logic_vector ( 1 to r'length ) is r;
        variable result : std_logic_vector ( 1 to l'length );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "XNOR" ;
    begin
        if ( l'length /= r'length ) then
            assert false
            report "arguments of overloaded 'xnor' operator are not of the same length"
            severity failure;
        else
            for i in result'range loop
                result(i) := not_table(xor_table (lv(i), rv(i)));
            end loop;
        end if;
        return result;
    end "xnor";
    ---------------------------------------------------------------------
    function "xnor"  ( l,r : std_ulogic_vector ) return std_ulogic_vector is
        alias lv : std_ulogic_vector ( 1 to l'length ) is l;
        alias rv : std_ulogic_vector ( 1 to r'length ) is r;
        variable result : std_ulogic_vector ( 1 to l'length );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "XNOR" ;
    begin
        if ( l'length /= r'length ) then
            assert false
            report "arguments of overloaded 'xnor' operator are not of the same length"
            severity failure;
        else
            for i in result'range loop
                result(i) := not_table(xor_table (lv(i), rv(i)));
            end loop;
        end if;
        return result;
    end "xnor";
  

    -------------------------------------------------------------------    
    -- not
    -------------------------------------------------------------------    
    FUNCTION "not"  ( l : std_logic_vector ) RETURN std_logic_vector IS
        ALIAS lv : std_logic_vector ( 1 TO l'LENGTH ) IS l;
        VARIABLE result : std_logic_vector ( 1 TO l'LENGTH ) := (OTHERS => 'X');
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NOT" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := not_table( lv(i) );
        END LOOP;
        RETURN result;
    END;
    ---------------------------------------------------------------------
    FUNCTION "not"  ( l : std_ulogic_vector ) RETURN std_ulogic_vector IS
        ALIAS lv : std_ulogic_vector ( 1 TO l'LENGTH ) IS l;
        VARIABLE result : std_ulogic_vector ( 1 TO l'LENGTH ) := (OTHERS => 'X');
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "NOT" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := not_table( lv(i) );
        END LOOP;
        RETURN result;
    END;
    -------------------------------------------------------------------    
    -- conversion tables
    -------------------------------------------------------------------    
    TYPE logic_x01_table IS ARRAY (std_ulogic'LOW TO std_ulogic'HIGH) OF X01;
    TYPE logic_x01z_table IS ARRAY (std_ulogic'LOW TO std_ulogic'HIGH) OF X01Z;
    TYPE logic_ux01_table IS ARRAY (std_ulogic'LOW TO std_ulogic'HIGH) OF UX01;
    ----------------------------------------------------------
    -- table name : cvt_to_x01
    --
    -- parameters :
    --        in  :  std_ulogic  -- some logic value
    -- returns    :  x01         -- state value of logic value
    -- purpose    :  to convert state-strength to state only
    --                  
    -- example    : if (cvt_to_x01 (input_signal) = '1' ) then ...
    --
    ----------------------------------------------------------
    CONSTANT cvt_to_x01 : logic_x01_table := (
                         'X',  -- 'U'
                         'X',  -- 'X'
                         '0',  -- '0'
                         '1',  -- '1'
                         'X',  -- 'Z'
                         'X',  -- 'W'
                         '0',  -- 'L'
                         '1',  -- 'H'
                         'X'   -- '-'
                        );

    ----------------------------------------------------------
    -- table name : cvt_to_x01z
    --
    -- parameters :
    --        in  :  std_ulogic  -- some logic value
    -- returns    :  x01z        -- state value of logic value
    -- purpose    :  to convert state-strength to state only
    --                  
    -- example    : if (cvt_to_x01z (input_signal) = '1' ) then ...
    --
    ----------------------------------------------------------
    CONSTANT cvt_to_x01z : logic_x01z_table := (
                         'X',  -- 'U'
                         'X',  -- 'X'
                         '0',  -- '0'
                         '1',  -- '1'
                         'Z',  -- 'Z'
                         'X',  -- 'W'
                         '0',  -- 'L'
                         '1',  -- 'H'
                         'X'   -- '-'
                        );

    ----------------------------------------------------------
    -- table name : cvt_to_ux01
    --
    -- parameters :
    --        in  :  std_ulogic  -- some logic value
    -- returns    :  ux01        -- state value of logic value
    -- purpose    :  to convert state-strength to state only
    --                  
    -- example    : if (cvt_to_ux01 (input_signal) = '1' ) then ...
    --
    ----------------------------------------------------------
    CONSTANT cvt_to_ux01 : logic_ux01_table := (
                         'U',  -- 'U'
                         'X',  -- 'X'
                         '0',  -- '0'
                         '1',  -- '1'
                         'X',  -- 'Z'
                         'X',  -- 'W'
                         '0',  -- 'L'
                         '1',  -- 'H'
                         'X'   -- '-'
                        );
    
    -------------------------------------------------------------------    
    -- conversion functions
    -------------------------------------------------------------------    
    FUNCTION To_bit       ( s : std_ulogic;        xmap : BIT := '0') RETURN BIT IS
        VARIABLE result : BIT ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
            CASE s IS
                WHEN '0' | 'L' => result := '0';
                WHEN '1' | 'H' => result := '1';
                WHEN OTHERS => result := xmap;
            END CASE;
            RETURN result ;
    END;
    --------------------------------------------------------------------
    FUNCTION To_bitvector ( s : std_logic_vector ; xmap : BIT := '0') RETURN BIT_VECTOR IS
        ALIAS sv : std_logic_vector ( s'LENGTH-1 DOWNTO 0 ) IS s;
        VARIABLE result : BIT_VECTOR ( s'LENGTH-1 DOWNTO 0 );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE sv(i) IS
                WHEN '0' | 'L' => result(i) := '0';
                WHEN '1' | 'H' => result(i) := '1';
                WHEN OTHERS => result(i) := xmap;
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_bitvector ( s : std_ulogic_vector; xmap : BIT := '0') RETURN BIT_VECTOR IS
        ALIAS sv : std_ulogic_vector ( s'LENGTH-1 DOWNTO 0 ) IS s;
        VARIABLE result : BIT_VECTOR ( s'LENGTH-1 DOWNTO 0 );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE sv(i) IS
                WHEN '0' | 'L' => result(i) := '0';
                WHEN '1' | 'H' => result(i) := '1';
                WHEN OTHERS => result(i) := xmap;
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_StdULogic       ( b : BIT               ) RETURN std_ulogic IS
        VARIABLE result : std_ulogic ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        CASE b IS
            WHEN '0' => result := '0';
            WHEN '1' => result := '1';
        END CASE;
        RETURN result ;
    END;
    --------------------------------------------------------------------
    FUNCTION To_StdLogicVector  ( b : BIT_VECTOR        ) RETURN std_logic_vector IS
        ALIAS bv : BIT_VECTOR ( b'LENGTH-1 DOWNTO 0 ) IS b;
        VARIABLE result : std_logic_vector ( b'LENGTH-1 DOWNTO 0 );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_StdLogicVector  ( s : std_ulogic_vector ) RETURN std_logic_vector IS
        ALIAS sv : std_ulogic_vector ( s'LENGTH-1 DOWNTO 0 ) IS s;
        VARIABLE result : std_logic_vector ( s'LENGTH-1 DOWNTO 0 );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := sv(i);
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_StdULogicVector ( b : BIT_VECTOR        ) RETURN std_ulogic_vector IS
        ALIAS bv : BIT_VECTOR ( b'LENGTH-1 DOWNTO 0 ) IS b;
        VARIABLE result : std_ulogic_vector ( b'LENGTH-1 DOWNTO 0 );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_StdULogicVector ( s : std_logic_vector ) RETURN std_ulogic_vector IS
        ALIAS sv : std_logic_vector ( s'LENGTH-1 DOWNTO 0 ) IS s;
        VARIABLE result : std_ulogic_vector ( s'LENGTH-1 DOWNTO 0 );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := sv(i);
        END LOOP;
        RETURN result;
    END;
    
    -------------------------------------------------------------------    
    -- strength strippers and type convertors
    -------------------------------------------------------------------    
    -- to_x01
    -------------------------------------------------------------------    
    FUNCTION To_X01  ( s : std_logic_vector ) RETURN  std_logic_vector IS
        ALIAS sv : std_logic_vector ( 1 TO s'LENGTH ) IS s;
        VARIABLE result : std_logic_vector ( 1 TO s'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := cvt_to_x01 (sv(i));
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01  ( s : std_ulogic_vector ) RETURN  std_ulogic_vector IS
        ALIAS sv : std_ulogic_vector ( 1 TO s'LENGTH ) IS s;
        VARIABLE result : std_ulogic_vector ( 1 TO s'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := cvt_to_x01 (sv(i));
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01  ( s : std_ulogic ) RETURN  X01 IS
        VARIABLE result : X01 ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        result := (cvt_to_x01(s));
        RETURN result ;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01  ( b : BIT_VECTOR ) RETURN  std_logic_vector IS
        ALIAS bv : BIT_VECTOR ( 1 TO b'LENGTH ) IS b;
        VARIABLE result : std_logic_vector ( 1 TO b'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01  ( b : BIT_VECTOR ) RETURN  std_ulogic_vector IS
        ALIAS bv : BIT_VECTOR ( 1 TO b'LENGTH ) IS b;
        VARIABLE result : std_ulogic_vector ( 1 TO b'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01  ( b : BIT ) RETURN  X01 IS
        VARIABLE result : X01 ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
            CASE b IS
                WHEN '0' => result := ('0');
                WHEN '1' => result := ('1');              
            END CASE;
        RETURN result ;
    END;
    --------------------------------------------------------------------
    -- to_x01z
    -------------------------------------------------------------------    
    FUNCTION To_X01Z  ( s : std_logic_vector ) RETURN  std_logic_vector IS
        ALIAS sv : std_logic_vector ( 1 TO s'LENGTH ) IS s;
        VARIABLE result : std_logic_vector ( 1 TO s'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := cvt_to_x01z (sv(i));
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01Z  ( s : std_ulogic_vector ) RETURN  std_ulogic_vector IS
        ALIAS sv : std_ulogic_vector ( 1 TO s'LENGTH ) IS s;
        VARIABLE result : std_ulogic_vector ( 1 TO s'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := cvt_to_x01z (sv(i));
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01Z  ( s : std_ulogic ) RETURN  X01Z IS
        VARIABLE result : X01Z ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        result := (cvt_to_x01z(s));
        RETURN result ;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01Z  ( b : BIT_VECTOR ) RETURN  std_logic_vector IS
        ALIAS bv : BIT_VECTOR ( 1 TO b'LENGTH ) IS b;
        VARIABLE result : std_logic_vector ( 1 TO b'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01Z  ( b : BIT_VECTOR ) RETURN  std_ulogic_vector IS
        ALIAS bv : BIT_VECTOR ( 1 TO b'LENGTH ) IS b;
        VARIABLE result : std_ulogic_vector ( 1 TO b'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_X01Z  ( b : BIT ) RETURN  X01Z IS
        VARIABLE result : X01Z ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
            CASE b IS
                WHEN '0' => result := ('0');
                WHEN '1' => result := ('1');              
            END CASE;
         RETURN result ;
    END;
    --------------------------------------------------------------------
    -- to_ux01
    -------------------------------------------------------------------    
    FUNCTION To_UX01  ( s : std_logic_vector ) RETURN  std_logic_vector IS
        ALIAS sv : std_logic_vector ( 1 TO s'LENGTH ) IS s;
        VARIABLE result : std_logic_vector ( 1 TO s'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := cvt_to_ux01 (sv(i));
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_UX01  ( s : std_ulogic_vector ) RETURN  std_ulogic_vector IS
        ALIAS sv : std_ulogic_vector ( 1 TO s'LENGTH ) IS s;
        VARIABLE result : std_ulogic_vector ( 1 TO s'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            result(i) := cvt_to_ux01 (sv(i));
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_UX01  ( s : std_ulogic ) RETURN  UX01 IS
        VARIABLE result : UX01 ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        result := (cvt_to_ux01(s));
        RETURN result ;
    END;
    --------------------------------------------------------------------
    FUNCTION To_UX01  ( b : BIT_VECTOR ) RETURN  std_logic_vector IS
        ALIAS bv : BIT_VECTOR ( 1 TO b'LENGTH ) IS b;
        VARIABLE result : std_logic_vector ( 1 TO b'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_UX01  ( b : BIT_VECTOR ) RETURN  std_ulogic_vector IS
        ALIAS bv : BIT_VECTOR ( 1 TO b'LENGTH ) IS b;
        VARIABLE result : std_ulogic_vector ( 1 TO b'LENGTH );
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
        FOR i IN result'RANGE LOOP
            CASE bv(i) IS
                WHEN '0' => result(i) := '0';
                WHEN '1' => result(i) := '1';
            END CASE;
        END LOOP;
        RETURN result;
    END;
    --------------------------------------------------------------------
    FUNCTION To_UX01  ( b : BIT ) RETURN  UX01 IS
        VARIABLE result : UX01 ;
        ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
    BEGIN
            CASE b IS
                WHEN '0' => result := ('0');
                WHEN '1' => result := ('1');              
            END CASE;
            RETURN result ;
    END;

    -------------------------------------------------------------------    
    -- edge detection
    -------------------------------------------------------------------    
    FUNCTION rising_edge  (SIGNAL s : std_ulogic) RETURN BOOLEAN IS
      -- Exemplar synthesizes this function from the native source code
    BEGIN
        RETURN (s'EVENT AND (To_X01(s) = '1') AND 
                            (To_X01(s'LAST_VALUE) = '0'));
    END;

    FUNCTION falling_edge (SIGNAL s : std_ulogic) RETURN BOOLEAN IS
      -- Exemplar synthesizes this function from the native source code
    BEGIN
        RETURN (s'EVENT AND (To_X01(s) = '0') AND 
                            (To_X01(s'LAST_VALUE) = '1'));
    END;

    -------------------------------------------------------------------    
    -- object contains an unknown
    -------------------------------------------------------------------    
    FUNCTION Is_X ( s : std_ulogic_vector ) RETURN  BOOLEAN IS
      -- Exemplar synthesizes this function from the native source code
    BEGIN
        FOR i IN s'RANGE LOOP
            CASE s(i) IS
                WHEN 'U' | 'X' | 'Z' | 'W' | '-' => RETURN TRUE;
                WHEN OTHERS => NULL;
            END CASE;
        END LOOP;
        RETURN FALSE;
    END;
    --------------------------------------------------------------------
    FUNCTION Is_X ( s : std_logic_vector  ) RETURN  BOOLEAN IS
      -- Exemplar synthesizes this function from the native source code
    BEGIN
        FOR i IN s'RANGE LOOP
            CASE s(i) IS
                WHEN 'U' | 'X' | 'Z' | 'W' | '-' => RETURN TRUE;
                WHEN OTHERS => NULL;
            END CASE;
        END LOOP;
        RETURN FALSE;
    END;
    --------------------------------------------------------------------
    FUNCTION Is_X ( s : std_ulogic        ) RETURN  BOOLEAN IS
      -- Exemplar synthesizes this function from the native source code
    BEGIN
        CASE s IS
            WHEN 'U' | 'X' | 'Z' | 'W' | '-' => RETURN TRUE;
            WHEN OTHERS => NULL;
        END CASE;
        RETURN FALSE;
    END;

END std_logic_1164;


