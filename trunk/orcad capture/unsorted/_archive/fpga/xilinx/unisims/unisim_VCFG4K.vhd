-- $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/vhdsclibs/data/unisim_VCFG4K.vhd,v 1.2 1999/05/20 23:48:46 rogerng Exp $
----------------------------------------------------------------
-- 
-- FILENAME     :    unisim_VCFG4K.vhd
-- FILE CONTENTS:    4K edge-decoder Configuration File
-- DATE CREATED :    Fri Feb 21 1997
-- 
-- LIBRARY      :    XUP (Xilinx Unified Primitives)
-- REVISION     :    1.0.2
-- TECHNOLOGY   :    FPGA
-- TIME SCALE   :    1 NS
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
-- HISTORY      :    1. First created manually. DP, 02/21/97.
--                   2. Changed file name from XUP_VCFG4K.vhd to
--                      unisim_VCFG4K.vhd. DP, 09/26/97.
----------------------------------------------------------------


---------------------------------------------------------------------------
-- Use the following configurations when using the edge decoders in 4K via 
-- the components DECODE4, DECODE8, etc.
---------------------------------------------------------------------------
configuration CFG_DECODE4_V4K of DECODE4 is
   for DECODE4_V4K
   end for;
end CFG_DECODE4_V4K;

configuration CFG_DECODE8_V4K of DECODE8 is
   for DECODE8_V4K
   end for;
end CFG_DECODE8_V4K;

configuration CFG_DECODE16_V4K of DECODE16 is
   for DECODE16_V4K
   end for;
end CFG_DECODE16_V4K;
 
configuration CFG_DECODE32_V4K of DECODE32 is
   for DECODE32_V4K
   end for;
end CFG_DECODE32_V4K;
 
configuration CFG_DECODE64_V4K of DECODE64 is
   for DECODE64_V4K
   end for;
end CFG_DECODE64_V4K;
