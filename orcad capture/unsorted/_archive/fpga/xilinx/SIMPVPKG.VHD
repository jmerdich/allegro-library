-- $Header: simprim_Vpackage.vhd,v 1.4 1998/04/05 06:52:40 dhimant Exp $
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler v3.4a
-- FILENAME     :    simprim_Vtables.vhd
-- FILE CONTENTS:    VITAL Table Package
-- DATE CREATED :    Tue Mar 26 14:02:56 1996
-- 
-- LIBRARY      :    simprim
-- DATE ENTERED :    Tues Mar 12 16:22:19 1996
-- REVISION     :    1.0.1
-- TECHNOLOGY   :    fpga
-- TIME SCALE   :    1 ns
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
-- HISTORY      :    1. First created by runnning Synopsys LC V3.4a. DP, 03/26/96.
--                   2. Changed package name from VTABLES to VPACKAGE. DP, 03/28/96.
--                   3. Added HEX_TO_SLV16, HEX_TO_SLV32, DECODE_ADDR4, and
--                      DECODE_ADDR5 function declarations. DP, 03/28/96.
--                   4. Added package body with above functions. DP, 03/28/96.
--                   5. Added RCS header. DP, 04/02/96.
--                   6. Added type definitions for std_logic_vector1, 
--                      std_logic_vector2, and std_logic_vector3: 1, 2, and 3 
--                      dimensional arrays of std_logic. DP, 01/28/97.
--                   7. Added X_LATCHE and X_SFF state tables. DP, 02/27/98.
--                   8. Added declarations and bodies for ADDR_IS_VALID and 
--                      SLV_TO_STR functions, and SET_MEM_TO_X, ADDR_OVERLAP
--                      and COLLISION procedures. DP, 02/27/98.
--                   9. Fixed bug in ADDR_OVERLAP procedure. DP, 04/04/98.
-------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- synopsys translate_off

library IEEE;
use IEEE.VITAL_Timing.all;
use IEEE.VITAL_Primitives.all;
-- synopsys translate_on

package VPACKAGE is

   CONSTANT L : VitalTableSymbolType := '0';
   CONSTANT H : VitalTableSymbolType := '1';
   CONSTANT x : VitalTableSymbolType := '-';
   CONSTANT S : VitalTableSymbolType := 'S';
   CONSTANT R : VitalTableSymbolType := '/';
   CONSTANT U : VitalTableSymbolType := 'X';
   CONSTANT V : VitalTableSymbolType := 'B'; -- valid clock signal (non-rising)

   CONSTANT X_FF_O_tab : VitalStateTableType := (
    ( L,  L,  L,  L,  x,  H,  x,  x,  L ),
    ( L,  L,  L,  x,  L,  H,  x,  x,  L ),
    ( L,  L,  x,  L,  H,  H,  x,  x,  L ),
    ( L,  x,  H,  H,  x,  H,  L,  x,  H ),
    ( L,  x,  H,  x,  L,  H,  L,  x,  H ),
    ( L,  x,  x,  H,  H,  H,  L,  x,  H ),
    ( H,  L,  x,  x,  x,  x,  L,  x,  S ),
    ( x,  L,  x,  x,  x,  L,  L,  x,  S ),
    ( x,  H,  x,  x,  x,  x,  L,  x,  H ),
    ( x,  x,  x,  x,  x,  x,  H,  x,  L ));

   CONSTANT X_SFF_O_tab : VitalStateTableType := (
    ( L,  L,  L,  L,  L,  x,  x,  H,  x,  x,  L ),
    ( L,  L,  L,  L,  x,  L,  x,  H,  x,  x,  L ),
    ( L,  L,  L,  x,  L,  H,  x,  H,  x,  x,  L ),
    ( L,  L,  x,  x,  x,  x,  H,  H,  x,  x,  L ),
    ( L,  x,  H,  x,  x,  x,  L,  H,  L,  x,  H ),
    ( L,  x,  x,  H,  H,  x,  L,  H,  L,  x,  H ),
    ( L,  x,  x,  H,  x,  L,  L,  H,  L,  x,  H ),
    ( L,  x,  x,  x,  H,  H,  L,  H,  L,  x,  H ),
    ( H,  L,  x,  x,  x,  x,  x,  x,  L,  x,  S ),
    ( x,  L,  x,  x,  x,  x,  x,  L,  L,  x,  S ),
    ( x,  H,  x,  x,  x,  x,  x,  x,  L,  x,  H ),
    ( x,  x,  x,  x,  x,  x,  x,  x,  H,  x,  L ));

   CONSTANT X_LATCH_O_tab : VitalStateTableType := (
    ( L,  L,  H,  x,  x,  L ),
    ( H,  x,  H,  L,  x,  H ),
    ( x,  L,  L,  L,  x,  S ),
    ( x,  H,  x,  L,  x,  H ),
    ( x,  x,  x,  H,  x,  L ));

   CONSTANT X_LATCHE_O_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  H,  x,  x,  L ),
    ( L,  L,  x,  L,  H,  x,  x,  L ),
    ( L,  x,  L,  H,  H,  x,  x,  L ),
    ( L,  x,  x,  x,  L,  L,  x,  S ),
    ( H,  x,  x,  x,  x,  L,  x,  H ),
    ( x,  H,  H,  x,  H,  L,  x,  H ),
    ( x,  H,  x,  L,  H,  L,  x,  H ),
    ( x,  x,  H,  H,  H,  L,  x,  H ),
    ( x,  x,  x,  x,  x,  H,  x,  L ));

   CONSTANT X_RAM_O_tab : VitalStateTableType := (
    ( L,  H,  x,  L ),
    ( H,  H,  x,  H ),
    ( x,  L,  x,  S ));

   CONSTANT X_RAMS_O_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  H,  x,  L ),
    ( L,  L,  x,  L,  H,  x,  L ),
    ( L,  H,  H,  x,  H,  x,  H ),
    ( L,  H,  x,  L,  H,  x,  H ),
    ( L,  x,  L,  H,  H,  x,  L ),
    ( L,  x,  H,  H,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  L,  x,  S ));

   TYPE std_logic_vector1 IS ARRAY (NATURAL RANGE <>) OF std_logic;
   TYPE std_logic_vector2 IS ARRAY (NATURAL RANGE <>, NATURAL RANGE <>) OF std_logic;
   TYPE std_logic_vector3 IS ARRAY (NATURAL RANGE <>, NATURAL RANGE <>, NATURAL RANGE <>) OF std_logic;

  ---------------------------------------------------------------------------
  -- Function HEX_TO_SLV16 converts hexadecimal string to std_logic_vector of
  -- size 15 downto 0.
  ---------------------------------------------------------------------------
  function HEX_TO_SLV16 (
      INIT : in string(4 downto 1)
  ) return std_logic_vector;
 
  ---------------------------------------------------------------------------
  -- Function HEX_TO_SLV32 converts hexadecimal string to std_logic_vector of
  -- size 31 downto 0.
  ---------------------------------------------------------------------------
  function HEX_TO_SLV32 (
      INIT : in string(8 downto 1)
  ) return std_logic_vector;
 
  ---------------------------------------------------------------------------
  -- Function DECODE_ADDR4 decodes a 4 bit address into an integer ranging
  -- from 0 to 16.
  ---------------------------------------------------------------------------
  function DECODE_ADDR4 (
      ADDRESS : in std_logic_vector(3 downto 0)
  ) return integer;
 
  ---------------------------------------------------------------------------
  -- Function DECODE_ADDR5 decodes a 5 bit address into an integer ranging
  -- from 0 to 32.
  ---------------------------------------------------------------------------
  function DECODE_ADDR5 (
      ADDRESS : in std_logic_vector(4 downto 0)
  ) return integer;
 
  ---------------------------------------------------------------------------
  -- Function ADDR_IS_VALID checks for the validity of the argument. A FALSE
  -- is returned if any argument bit is other than a '0' or '1'.
  ---------------------------------------------------------------------------
  function ADDR_IS_VALID (
      SLV : in std_logic_vector
  ) return boolean;
 
  ---------------------------------------------------------------------------
  -- Function SLV_TO_STR returns a string version of the std_logic_vector
  -- argument.
  ---------------------------------------------------------------------------
  function SLV_TO_STR (
      SLV : in std_logic_vector
  ) return string;
 
  ---------------------------------------------------------------------------
  -- Procedure SET_MEM_TO_X issues an "invalid address" warning and sets the
  -- contents of the argument MEM to 'X'.
  ---------------------------------------------------------------------------
  procedure SET_MEM_TO_X (
      ADDRESS : in std_logic_vector;
      MEM : inout std_logic_vector
  );

  ---------------------------------------------------------------------------
  -- Procedure ADDR_OVERLAP determines if there is overlap between the data
  -- addressed by ports A and B of a dual port RAM. If there is overlap, the
  -- argument OVERLAP is set to TRUE, and the lower and upper indices of the
  -- overlap bits in the array used to model the RAM, as well as in the RAM
  -- A and B output ports are determined.
  ---------------------------------------------------------------------------
  procedure ADDR_OVERLAP (
      ADDRESS_A, ADDRESS_B, DAW, DBW : in integer;
      OVERLAP : out boolean;
      OVRLAP_LSB, OVRLAP_MSB, DOA_OV_LSB,
      DOA_OV_MSB, DOB_OV_LSB, DOB_OV_MSB : out integer
  );
 
  ---------------------------------------------------------------------------
  -- Procedure COLLISION issues either a "WRITE COLLISION detected" error or
  -- a warning that an attempt was made to read some or all of the bits
  -- addressed by one port of a dual port RAM while writing to some or all
  -- of the bits from the other port. In case of write collision, some or all
  -- of the bits addressed by the port at which the collision is detected are
  -- set to 'X'.
  ---------------------------------------------------------------------------
  procedure COLLISION (
      ADDRESS : in std_logic_vector;
      LSB, MSB : in integer;
      MODE, PORT1, PORT2, InstancePath : in string;
      MEM : inout std_logic_vector
  );

end VPACKAGE;
 
-----------------------------------------------------------------------------

package body VPACKAGE is
 
  ---------------------------------------------------------------------------
  -- Function HEX_TO_SLV16 converts hexadecimal string to std_logic_vector of
  -- size 15 downto 0.
  ---------------------------------------------------------------------------
  function HEX_TO_SLV16 (
      INIT : in string(4 downto 1)
  ) return std_logic_vector is
 
  variable SLV_16 : std_logic_vector(15 downto 0);

  begin
    for I in 0 to 3 loop
      case INIT(I+1) is
        when '0' =>
          SLV_16(I*4+3 downto I*4) := "0000";
        when '1' =>
          SLV_16(I*4+3 downto I*4) := "0001";
        when '2' =>
          SLV_16(I*4+3 downto I*4) := "0010";
        when '3' =>
          SLV_16(I*4+3 downto I*4) := "0011";
        when '4' =>
          SLV_16(I*4+3 downto I*4) := "0100";
        when '5' =>
          SLV_16(I*4+3 downto I*4) := "0101";
        when '6' =>
          SLV_16(I*4+3 downto I*4) := "0110";
        when '7' =>
          SLV_16(I*4+3 downto I*4) := "0111";
        when '8' =>
          SLV_16(I*4+3 downto I*4) := "1000";
        when '9' =>
          SLV_16(I*4+3 downto I*4) := "1001";
        when 'a' | 'A' =>
          SLV_16(I*4+3 downto I*4) := "1010";
        when 'b' | 'B' =>
          SLV_16(I*4+3 downto I*4) := "1011";
        when 'c' | 'C' =>
          SLV_16(I*4+3 downto I*4) := "1100";
        when 'd' | 'D' =>
          SLV_16(I*4+3 downto I*4) := "1101";
        when 'e' | 'E' =>
          SLV_16(I*4+3 downto I*4) := "1110";
        when 'f' | 'F' =>
          SLV_16(I*4+3 downto I*4) := "1111";
        when others =>
          assert now = 0 ns
            report "WARNING: Unknown Hex digit in INIT: "&INIT(I+1)
            severity warning;
          SLV_16(I*4+3 downto I*4)   := "XXXX";
      end case;
    end loop;
    return SLV_16;
  end HEX_TO_SLV16;
 
  ---------------------------------------------------------------------------
  -- Function HEX_TO_SLV32 converts hexadecimal string to std_logic_vector of
  -- size 31 downto 0.
  ---------------------------------------------------------------------------
  function HEX_TO_SLV32 (
      INIT : in string(8 downto 1)
  ) return std_logic_vector is
 
  variable SLV_32 : std_logic_vector(31 downto 0);

  begin
    for I in 0 to 7 loop
      case INIT(I+1) is
        when '0' =>
          SLV_32(I*4+3 downto I*4) := "0000";
        when '1' =>
          SLV_32(I*4+3 downto I*4) := "0001";
        when '2' =>
          SLV_32(I*4+3 downto I*4) := "0010";
        when '3' =>
          SLV_32(I*4+3 downto I*4) := "0011";
        when '4' =>
          SLV_32(I*4+3 downto I*4) := "0100";
        when '5' =>
          SLV_32(I*4+3 downto I*4) := "0101";
        when '6' =>
          SLV_32(I*4+3 downto I*4) := "0110";
        when '7' =>
          SLV_32(I*4+3 downto I*4) := "0111";
        when '8' =>
          SLV_32(I*4+3 downto I*4) := "1000";
        when '9' =>
          SLV_32(I*4+3 downto I*4) := "1001";
        when 'a' | 'A' =>
          SLV_32(I*4+3 downto I*4) := "1010";
        when 'b' | 'B' =>
          SLV_32(I*4+3 downto I*4) := "1011";
        when 'c' | 'C' =>
          SLV_32(I*4+3 downto I*4) := "1100";
        when 'd' | 'D' =>
          SLV_32(I*4+3 downto I*4) := "1101";
        when 'e' | 'E' =>
          SLV_32(I*4+3 downto I*4) := "1110";
        when 'f' | 'F' =>
          SLV_32(I*4+3 downto I*4) := "1111";
        when others =>
          assert now = 0 ns
            report "WARNING: Unknown Hex digit in INIT: "&INIT(I+1)
            severity warning;
          SLV_32(I*4+3 downto I*4)   := "XXXX";
      end case;
    end loop;
    return SLV_32;
  end HEX_TO_SLV32;
 
  ---------------------------------------------------------------------------
  -- Function DECODE_ADDR4 decodes a 4 bit address into an integer ranging
  -- from 0 to 16.
  ---------------------------------------------------------------------------
  function DECODE_ADDR4 (
      ADDRESS : in std_logic_vector(3 downto 0)
  ) return integer is
 
  variable I : integer;

  begin
    case ADDRESS is
      when "0000"  =>  I := 0;
      when "0001"  =>  I := 1;
      when "0010"  =>  I := 2;
      when "0011"  =>  I := 3;
      when "0100"  =>  I := 4;
      when "0101"  =>  I := 5;
      when "0110"  =>  I := 6;
      when "0111"  =>  I := 7;
      when "1000"  =>  I := 8;
      when "1001"  =>  I := 9;
      when "1010"  =>  I := 10;
      when "1011"  =>  I := 11;
      when "1100"  =>  I := 12;
      when "1101"  =>  I := 13;
      when "1110"  =>  I := 14;
      when "1111"  =>  I := 15;
      when others  =>  I := 16;
    end case;
    return I;
  end DECODE_ADDR4;
 
  ---------------------------------------------------------------------------
  -- Function DECODE_ADDR5 decodes a 5 bit address into an integer ranging
  -- from 0 to 32.
  ---------------------------------------------------------------------------
  function DECODE_ADDR5 (
      ADDRESS : in std_logic_vector(4 downto 0)
  ) return integer is
 
  variable I : integer;

  begin
    case ADDRESS is
      when "00000"  =>  I := 0;
      when "00001"  =>  I := 1;
      when "00010"  =>  I := 2;
      when "00011"  =>  I := 3;
      when "00100"  =>  I := 4;
      when "00101"  =>  I := 5;
      when "00110"  =>  I := 6;
      when "00111"  =>  I := 7;
      when "01000"  =>  I := 8;
      when "01001"  =>  I := 9;
      when "01010"  =>  I := 10;
      when "01011"  =>  I := 11;
      when "01100"  =>  I := 12;
      when "01101"  =>  I := 13;
      when "01110"  =>  I := 14;
      when "01111"  =>  I := 15;
      when "10000"  =>  I := 16;
      when "10001"  =>  I := 17;
      when "10010"  =>  I := 18;
      when "10011"  =>  I := 19;
      when "10100"  =>  I := 20;
      when "10101"  =>  I := 21;
      when "10110"  =>  I := 22;
      when "10111"  =>  I := 23;
      when "11000"  =>  I := 24;
      when "11001"  =>  I := 25;
      when "11010"  =>  I := 26;
      when "11011"  =>  I := 27;
      when "11100"  =>  I := 28;
      when "11101"  =>  I := 29;
      when "11110"  =>  I := 30;
      when "11111"  =>  I := 31;
      when others   =>  I := 32;
    end case;
    return I;
  end DECODE_ADDR5;

  ---------------------------------------------------------------------------
  -- Function ADDR_IS_VALID checks for the validity of the argument. A FALSE
  -- is returned if any argument bit is other than a '0' or '1'.
  ---------------------------------------------------------------------------
  function ADDR_IS_VALID (
      SLV : in std_logic_vector
  ) return boolean is
 
  variable IS_VALID : boolean := TRUE;
 
  begin
      for I in SLV'high downto SLV'low loop
          if (SLV(I) /= '0' AND SLV(I) /= '1') then
              IS_VALID := FALSE;
          end if;
      end loop;
      return IS_VALID;
  end ADDR_IS_VALID;

  ---------------------------------------------------------------------------
  -- Function SLV_TO_STR returns a string version of the std_logic_vector
  -- argument.
  ---------------------------------------------------------------------------
  function SLV_TO_STR (
      SLV : in std_logic_vector
  ) return string is
 
  variable STR : string (SLV'high downto SLV'low);
 
  begin
      for I in SLV'high downto SLV'low loop
          case SLV(I) is
              when '0' => STR(I) := '0';
              when '1' => STR(I) := '1';
              when 'X' => STR(I) := 'X';
              when 'U' => STR(I) := 'U';
              when others => STR(I) := 'X';
          end case;
      end loop;
      return STR;
  end SLV_TO_STR;

  ---------------------------------------------------------------------------
  -- Procedure SET_MEM_TO_X issues an "invalid address" warning and sets the
  -- contents of the argument MEM to 'X'.
  ---------------------------------------------------------------------------
  procedure SET_MEM_TO_X (ADDRESS : in std_logic_vector;
      MEM : inout std_logic_vector
  ) is
 
  begin
      assert false report
      "Invalid ADDRESS: "& SLV_TO_STR(ADDRESS) & ". Memory contents will be set to 'X'."
      severity warning;
      for I in MEM'high downto MEM'low loop
          MEM(I) := 'X';
      end loop;
  end SET_MEM_TO_X;

  ---------------------------------------------------------------------------
  -- Procedure ADDR_OVERLAP determines if there is overlap between the data
  -- addressed by ports A and B of a dual port RAM. If there is overlap, the
  -- argument OVERLAP is set to TRUE, and the lower and upper indices of the
  -- overlap bits in the array used to model the RAM, as well as in the RAM
  -- A and B output ports are determined.
  ---------------------------------------------------------------------------
  procedure ADDR_OVERLAP (
      ADDRESS_A, ADDRESS_B, DAW, DBW : in integer;
      OVERLAP : out boolean;
      OVRLAP_LSB, OVRLAP_MSB, DOA_OV_LSB, 
      DOA_OV_MSB, DOB_OV_LSB, DOB_OV_MSB : out integer
  ) is

  variable A_LSB, A_MSB, B_LSB, B_MSB : integer;

  begin
      A_LSB := ADDRESS_A * DAW;
      A_MSB := A_LSB + DAW - 1;
      B_LSB := ADDRESS_B * DBW;
      B_MSB := B_LSB + DBW - 1;

      if (A_MSB < B_LSB OR B_MSB < A_LSB) then
          OVERLAP := FALSE;
      else
          OVERLAP := TRUE;
          if (A_LSB >= B_LSB) then
              OVRLAP_LSB := A_LSB;
              DOA_OV_LSB := 0;
              DOB_OV_LSB := A_LSB - B_LSB;
          else
              OVRLAP_LSB := B_LSB;
              DOA_OV_LSB := B_LSB - A_LSB;
              DOB_OV_LSB := 0;
          end if;
          if (A_MSB >= B_MSB) then
              OVRLAP_MSB := B_MSB;
              DOA_OV_MSB := DAW - (A_MSB - B_MSB) - 1;
              DOB_OV_MSB := DBW - 1;
          else
              OVRLAP_MSB := A_MSB;
              DOA_OV_MSB := DAW - 1;
              DOB_OV_MSB := DBW - (B_MSB - A_MSB) - 1;
          end if;
      end if;
  end ADDR_OVERLAP;

  ---------------------------------------------------------------------------
  -- Procedure COLLISION issues either a "WRITE COLLISION detected" error or
  -- a warning that an attempt was made to read some or all of the bits
  -- addressed by one port of a dual port RAM while writing to some or all
  -- of the bits from the other port. In case of write collision, some or all
  -- of the bits addressed by the port at which the collision is detected are
  -- set to 'X'.
  ---------------------------------------------------------------------------
  procedure COLLISION (
      ADDRESS : in std_logic_vector;
      LSB, MSB : in integer;
      MODE, PORT1, PORT2, InstancePath : in string;
      MEM : inout std_logic_vector
  ) is

  begin
      if (MODE = "write") then
          assert false report
          "WRITE COLLISION detected at " & PORT1 & " in instance " & InstancePath &
          ". Contents of address "& SLV_TO_STR(ADDRESS) &
          " will be wholly or partially set to 'X'."
          severity ERROR;
          for I in MSB downto LSB loop
              MEM(I) := 'X';
          end loop;
      elsif (MODE = "read") then
          assert false report
          "Attempting to read some or all of contents of address "& SLV_TO_STR(ADDRESS) &
          " from " & PORT2 & " while writing from " & PORT1 &
          " in instance " & InstancePath
          severity WARNING;
      end if;
  end COLLISION;

end VPACKAGE;
