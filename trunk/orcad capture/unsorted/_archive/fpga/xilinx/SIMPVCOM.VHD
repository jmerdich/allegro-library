-- $Header: simprim_Vcomponents.vhd,v 1.11 1998/05/19 00:16:08 dhimant Exp $
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler v3.4a
-- FILENAME     :    simprim_Vcomponents.vhd
-- FILE CONTENTS:    VITAL Component Package
-- DATE CREATED :    Tue Mar 26 14:02:56 1996
-- 
-- LIBRARY      :    simprim
-- DATE ENTERED :    Tues Mar 12 16:22:19 1996
-- REVISION     :    1.0.3
-- TECHNOLOGY   :    fpga
-- TIME SCALE   :    1 ns
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
-- HISTORY      :    1.  First created by runnning Synopsys LC V3.4a. DP, 03/26/96.
--                   2.  Manually added X_AND32, X_OR32, and X_XOR32, since LC
--                       hangs if given a 32-input gate. DP, 03/27/96.
--                   3.  Added X_RAM16, X_RAM32, X_RAMS16, X_RAMS32, and X_RAMD16.
--                       Changed port types from std_logic to STD_ULOGIC. DP, 03/28/96.
--                   4.  Changed mode of port PAD in X_BPAD from out to inout. DP, 03/28/96.
--                   5.  Added RCS header. DP, 04/02/96.
--                   6.  Changed X_TRI pin name from T to CTL. DP, 04/23/96.
--                   7.  Changed X_RAMD16 pin name from DPO to O. DP, 05/01/96.
--                   8.  Changed value of DefaultXon to True and value of
--                       DefaultMsgOn to False. DP, 01/22/97.
--                   9.  For sake of consistency, changed default values of setup,
--                       hold, recovery, and pulse width constraints in X_FF, X_LATCH,
--                       X_RAM16, X_RAM32, X_RAMS16, X_RAMS32, and X_RAMD16 to 0.01 ns.
--                       DP, 01/23/96.
--                   10. Changed value of DefaultXon back to False and value of
--                       DefaultMsgOn back to True. NOTE: THIS IS A TEMPORARY
--                       CHANGE DONE FOR PATCH BUILD x1_2.6. DP, 02/04/97.
--                   11. Changed value of DefaultXon to True and value of
--                       DefaultMsgOn to False. DP, 05/01/97.
--                   12. Added component declarations for Virtex-related simprims.
--                       DP, 12/12/97.
--                   13. Added the following generics to dual-port block RAM
--                       component declarations:
--
--                       tsetup_CLKB_CLKA_posedge_posedge
--                       tsetup_CLKA_CLKB_posedge_posedge
--
--                       DP, 02/05/98.
--                   14. Added GSR port and associated timing generics to
--                       the block RAM component declarations. DP, 04/04/98.
--                   15. Added CLKDLL component declaration. DP, 04/04/98.
--                   16. Changed type of INIT generic in X_RAM16, X_RAM32, X_RAMS16,
--                       X_RAMS32 and X_RAMD16 from string to bit_vector. DP, 04/08/98.
--                   17. Changed X_LUT* port names from I* to ADR*. DP, 04/15/98.
--                   18. Changed X_SFF port names from AR/AS to RST/SET and
--                       SR/SS to SRST/SSET, respectively. DP, 04/15/98.
--                   19. Added tpw_WE_negedge generic to X_RAM16 and X_RAM32.
--                       DP, 04/16/98.
--                   20. Removed extraneous generics from X_BPAD, X_IPAD, X_ONE,
--                       X_OPAD, X_UPAD and X_ZERO. DP 04/28/98.
--                   21. Added missing tpw_GSR_posedge generic to the X_RAMB*
--                       component declarations. DP 05/06/98.
--                   22. Changed X_MUX2 port names from INA and INB to IA and
--                       IB for consistency with other simprims. DP, 05/18/98.
--------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- synopsys translate_off

library IEEE;
use IEEE.VITAL_Timing.all;
-- synopsys translate_on

package VCOMPONENTS is

constant DefaultTimingChecksOn : Boolean := True;
constant DefaultXon : Boolean := True;
constant DefaultMsgOn : Boolean := False;

----- Component X_AND2 -----
component X_AND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND3 -----
component X_AND3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND4 -----
component X_AND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND5 -----
component X_AND5
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND6 -----
component X_AND6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND7 -----
component X_AND7
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND8 -----
component X_AND8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND16 -----
component X_AND16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I15                            :	in    STD_ULOGIC;
      I14                            :	in    STD_ULOGIC;
      I13                            :	in    STD_ULOGIC;
      I12                            :	in    STD_ULOGIC;
      I11                            :	in    STD_ULOGIC;
      I10                            :	in    STD_ULOGIC;
      I9                             :	in    STD_ULOGIC;
      I8                             :	in    STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_AND32 -----
component X_AND32
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I31_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I30_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I29_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I28_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I27_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I26_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I25_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I24_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I23_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I22_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I21_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I20_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I19_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I18_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I17_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I16_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);

      tipd_I31                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I30                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I29                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I28                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I27                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I26                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I25                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I24                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I23                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I22                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I21                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I20                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I19                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I18                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I17                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I16                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I31                            :	in    STD_ULOGIC;
      I30                            :	in    STD_ULOGIC;
      I29                            :	in    STD_ULOGIC;
      I28                            :	in    STD_ULOGIC;
      I27                            :	in    STD_ULOGIC;
      I26                            :	in    STD_ULOGIC;
      I25                            :	in    STD_ULOGIC;
      I24                            :	in    STD_ULOGIC;
      I23                            :	in    STD_ULOGIC;
      I22                            :	in    STD_ULOGIC;
      I21                            :	in    STD_ULOGIC;
      I20                            :	in    STD_ULOGIC;
      I19                            :	in    STD_ULOGIC;
      I18                            :	in    STD_ULOGIC;
      I17                            :	in    STD_ULOGIC;
      I16                            :	in    STD_ULOGIC;
      I15                            :	in    STD_ULOGIC;
      I14                            :	in    STD_ULOGIC;
      I13                            :	in    STD_ULOGIC;
      I12                            :	in    STD_ULOGIC;
      I11                            :	in    STD_ULOGIC;
      I10                            :	in    STD_ULOGIC;
      I9                             :	in    STD_ULOGIC;
      I8                             :	in    STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_BPAD -----
component X_BPAD
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*");

-- synopsys translate_on
   port(
      PAD                            :	out   STD_ULOGIC);
end component;


----- Component X_BUF -----
component X_BUF
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component X_CKBUF -----
component X_CKBUF
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component X_CLKDLL -----
component X_CLKDLL
-- synopsys translate_off
    generic ( InstancePath : STRING := "*";
              tipd_CLKIN   : VitalDelayType01 := (0.000 ns, 0.000 ns);
              tipd_CLKFB   : VitalDelayType01 := (0.000 ns, 0.000 ns);
              tipd_RST     : VitalDelayType01 := (0.000 ns, 0.000 ns);
              DUTY_CYCLE_CORRECTION : boolean := TRUE;
              CLKDV_DIVIDE : real := 2.0);

-- synopsys translate_on
    port ( CLKIN   : in  std_ulogic := '0';
           CLKFB   : in  std_ulogic := '0';
           RST     : in  std_ulogic := '0';
           CLK0    : out std_ulogic := '0';
           CLK90   : out std_ulogic := '0';
           CLK180  : out std_ulogic := '0';
           CLK270  : out std_ulogic := '0';
           CLK2X   : out std_ulogic := '0';
           CLKDV   : out std_ulogic := '0';
           LOCKED  : out std_ulogic := '0');
end component;


----- Component X_FF -----
component X_FF
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SET_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_RST_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLK_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_I_CLK_posedge_posedge   :	VitalDelayType := 0.010 ns;
      tsetup_I_CLK_negedge_posedge   :	VitalDelayType := 0.010 ns;
      thold_I_CLK_posedge_posedge    :	VitalDelayType := 0.010 ns;
      thold_I_CLK_negedge_posedge    :	VitalDelayType := 0.010 ns;
      tsetup_CE_CLK_posedge_posedge  :	VitalDelayType := 0.010 ns;
      tsetup_CE_CLK_negedge_posedge  :	VitalDelayType := 0.010 ns;
      thold_CE_CLK_posedge_posedge   :	VitalDelayType := 0.010 ns;
      thold_CE_CLK_negedge_posedge   :	VitalDelayType := 0.010 ns;
      trecovery_RST_CLK_negedge_posedge :	VitalDelayType := 0.010 ns;
      thold_RST_CLK_negedge_posedge  :	VitalDelayType := 0.010 ns;
      trecovery_SET_CLK_negedge_posedge :	VitalDelayType := 0.010 ns;
      thold_SET_CLK_negedge_posedge  :	VitalDelayType := 0.010 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.010 ns;
      tpw_RST_posedge                :	VitalDelayType := 0.010 ns;
      tpw_SET_posedge                :	VitalDelayType := 0.010 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.010 ns;
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_RST                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SET                       :	VitalDelayType01 := (0.100 ns, 0.100 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CE                             :	in    STD_ULOGIC;
      RST                            :	in    STD_ULOGIC;
      SET                            :	in    STD_ULOGIC);
end component;


----- Component X_INV -----
component X_INV
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component X_IPAD -----
component X_IPAD
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*");

-- synopsys translate_on
   port(
      PAD                            :	in    STD_ULOGIC);
end component;

----- Component X_KEEPER -----
component X_KEEPER
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*";
      tipd_O : VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O : inout STD_ULOGIC);
end component;

----- Component X_LATCH -----
component X_LATCH
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLK_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_RST_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_SET_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_I_CLK_posedge_negedge   :	VitalDelayType := 0.010 ns;
      tsetup_I_CLK_negedge_negedge   :	VitalDelayType := 0.010 ns;
      thold_I_CLK_posedge_negedge    :	VitalDelayType := 0.010 ns;
      thold_I_CLK_negedge_negedge    :	VitalDelayType := 0.010 ns;
      trecovery_RST_CLK_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_RST_CLK_negedge_negedge  :	VitalDelayType := 0.010 ns;
      trecovery_SET_CLK_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_SET_CLK_negedge_negedge  :	VitalDelayType := 0.010 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.010 ns;
      tpw_RST_posedge                :	VitalDelayType := 0.010 ns;
      tpw_SET_posedge                :	VitalDelayType := 0.010 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.010 ns;
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_RST                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SET                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      RST                            :	in    STD_ULOGIC;
      SET                            :	in    STD_ULOGIC);
end component;


----- Component X_LATCHE -----
component X_LATCHE
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLK_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_GE_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_RST_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_SET_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_I_CLK_posedge_negedge   :	VitalDelayType := 0.010 ns;
      tsetup_I_CLK_negedge_negedge   :	VitalDelayType := 0.010 ns;
      thold_I_CLK_posedge_negedge    :	VitalDelayType := 0.010 ns;
      thold_I_CLK_negedge_negedge    :	VitalDelayType := 0.010 ns;
      tsetup_GE_CLK_posedge_negedge  :  VitalDelayType := 0.010 ns;
      tsetup_GE_CLK_negedge_negedge  :  VitalDelayType := 0.010 ns;
      thold_GE_CLK_posedge_negedge   :  VitalDelayType := 0.010 ns;
      thold_GE_CLK_negedge_negedge   :  VitalDelayType := 0.010 ns;
      trecovery_RST_CLK_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_RST_CLK_negedge_negedge  :	VitalDelayType := 0.010 ns;
      trecovery_SET_CLK_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_SET_CLK_negedge_negedge  :	VitalDelayType := 0.010 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.010 ns;
      tpw_RST_posedge                :	VitalDelayType := 0.010 ns;
      tpw_SET_posedge                :	VitalDelayType := 0.010 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.010 ns;
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GE                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_RST                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SET                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      GE                             :  in    STD_ULOGIC;
      RST                            :	in    STD_ULOGIC;
      SET                            :	in    STD_ULOGIC);
end component;


----- Component X_LUT2 -----
component X_LUT2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ADR0_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_ADR1_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_ADR0                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_ADR1                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      INIT                             :  bit_vector := X"0");
 
-- synopsys translate_on
   port(
      O                              :  out   STD_ULOGIC;
      ADR0                           :  in    STD_ULOGIC;
      ADR1                           :  in    STD_ULOGIC);
end component;


----- Component X_LUT3 ----- 
component X_LUT3 
-- synopsys translate_off 
   generic( 
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*"; 
      Xon: Boolean := DefaultXon; 
      MsgOn: Boolean := DefaultMsgOn; 
      tpd_ADR0_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns); 
      tpd_ADR1_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns); 
      tpd_ADR2_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns); 
      tipd_ADR0                        :  VitalDelayType01 := (0.000 ns, 0.000 ns); 
      tipd_ADR1                        :  VitalDelayType01 := (0.000 ns, 0.000 ns); 
      tipd_ADR2                        :  VitalDelayType01 := (0.000 ns, 0.000 ns); 
      INIT                             :  bit_vector := X"00"); 
  
-- synopsys translate_on 
   port(    
      O                                :  out   STD_ULOGIC; 
      ADR0                             :  in    STD_ULOGIC; 
      ADR1                             :  in    STD_ULOGIC; 
      ADR2                             :  in    STD_ULOGIC); 
end component; 


----- Component X_LUT4 ----- 
component X_LUT4 
-- synopsys translate_off  
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ADR0_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_ADR1_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_ADR2_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_ADR3_O                       :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_ADR0                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_ADR1                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_ADR2                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_ADR3                        :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      INIT                             :  bit_vector := X"0000");
 
-- synopsys translate_on 
   port(    
      O                              :  out   STD_ULOGIC;
      ADR0                           :  in    STD_ULOGIC;
      ADR1                           :  in    STD_ULOGIC; 
      ADR2                           :  in    STD_ULOGIC; 
      ADR3                           :  in    STD_ULOGIC);
end component;


----- Component X_MUX2 -----
component X_MUX2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IA_O                      :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_IB_O                      :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_SEL_O                     :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_IA                       :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_IB                       :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SEL                      :  VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                             :  out   STD_ULOGIC;
      IA                            :  in    STD_ULOGIC;
      IB                            :  in    STD_ULOGIC;
      SEL                           :  in    STD_ULOGIC);
end component;


----- Component X_ONE -----
component X_ONE
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*");

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC := '1');
end component;


----- Component X_OPAD -----
component X_OPAD
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*");

-- synopsys translate_on
   port(
      PAD                            :	out   STD_ULOGIC);
end component;


----- Component X_OR2 -----
component X_OR2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR3 -----
component X_OR3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR4 -----
component X_OR4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR5 -----
component X_OR5
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR6 -----
component X_OR6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR7 -----
component X_OR7
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR8 -----
component X_OR8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR16 -----
component X_OR16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I15                            :	in    STD_ULOGIC;
      I14                            :	in    STD_ULOGIC;
      I13                            :	in    STD_ULOGIC;
      I12                            :	in    STD_ULOGIC;
      I11                            :	in    STD_ULOGIC;
      I10                            :	in    STD_ULOGIC;
      I9                             :	in    STD_ULOGIC;
      I8                             :	in    STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_OR32 -----
component X_OR32
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I31_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I30_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I29_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I28_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I27_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I26_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I25_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I24_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I23_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I22_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I21_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I20_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I19_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I18_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I17_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I16_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);

      tipd_I31                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I30                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I29                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I28                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I27                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I26                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I25                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I24                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I23                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I22                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I21                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I20                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I19                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I18                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I17                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I16                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I31                            :	in    STD_ULOGIC;
      I30                            :	in    STD_ULOGIC;
      I29                            :	in    STD_ULOGIC;
      I28                            :	in    STD_ULOGIC;
      I27                            :	in    STD_ULOGIC;
      I26                            :	in    STD_ULOGIC;
      I25                            :	in    STD_ULOGIC;
      I24                            :	in    STD_ULOGIC;
      I23                            :	in    STD_ULOGIC;
      I22                            :	in    STD_ULOGIC;
      I21                            :	in    STD_ULOGIC;
      I20                            :	in    STD_ULOGIC;
      I19                            :	in    STD_ULOGIC;
      I18                            :	in    STD_ULOGIC;
      I17                            :	in    STD_ULOGIC;
      I16                            :	in    STD_ULOGIC;
      I15                            :	in    STD_ULOGIC;
      I14                            :	in    STD_ULOGIC;
      I13                            :	in    STD_ULOGIC;
      I12                            :	in    STD_ULOGIC;
      I11                            :	in    STD_ULOGIC;
      I10                            :	in    STD_ULOGIC;
      I9                             :	in    STD_ULOGIC;
      I8                             :	in    STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_PD -----
component X_PD
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC := 'L');
end component;


----- Component X_PU -----
component X_PU
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC := 'H');
end component;


----- Component X_RAMB4_S1 -----
component X_RAMB4_S1
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays
 
       tipd_ADDR : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DI   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
 
       tipd_EN  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RST : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLK_DO : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DO : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_EN_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_EN_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_DI_CLK_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DI_CLK_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDR_CLK_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_EN_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_EN_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RST_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RST_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
 
       thold_DI_CLK_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DI_CLK_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDR_CLK_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );

-- synopsys translate_on
  port (DI     : in STD_LOGIC_VECTOR (0 downto 0);
        EN     : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        RST    : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADDR   : in STD_LOGIC_VECTOR (11 downto 0);
        DO     : out STD_LOGIC_VECTOR (0 downto 0)
       );
end component;


----- Component X_RAMB4_S2 -----
component X_RAMB4_S2
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays
 
       tipd_ADDR : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DI   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));

       tipd_EN  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);                               
       tipd_WE  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RST : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLK_DO : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DO : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_EN_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_EN_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_DI_CLK_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DI_CLK_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDR_CLK_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_EN_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_EN_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RST_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RST_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
 
       thold_DI_CLK_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DI_CLK_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDR_CLK_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );

-- synopsys translate_on
  port (DI     : in STD_LOGIC_VECTOR (1 downto 0);
        EN     : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        RST    : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADDR   : in STD_LOGIC_VECTOR (10 downto 0);
        DO     : out STD_LOGIC_VECTOR (1 downto 0)
       );
end component;


----- Component X_RAMB4_S4 -----
component X_RAMB4_S4
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_ADDR : VitalDelayArrayType01 (9 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DI   : VitalDelayArrayType01 (3 downto 0) := (others => (0.0 ns, 0.0 ns));

       tipd_EN  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RST : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_CLK_DO : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DO : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));

       -- VITAL setup and hold times
        
       tsetup_EN_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_EN_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_DI_CLK_posedge_posedge   : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       tsetup_DI_CLK_negedge_posedge   : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_posedge_posedge : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_negedge_posedge : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       thold_EN_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_EN_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RST_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RST_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
        
       thold_DI_CLK_posedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_DI_CLK_negedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_posedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_negedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DI     : in STD_LOGIC_VECTOR (3 downto 0);
        EN     : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        RST    : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADDR   : in STD_LOGIC_VECTOR (9 downto 0);
        DO     : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;


----- Component X_RAMB4_S8 -----
component X_RAMB4_S8
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays
 
       tipd_ADDR : VitalDelayArrayType01 (8 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DI   : VitalDelayArrayType01 (7 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_EN  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RST : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLK_DO : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DO : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_EN_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_EN_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_DI_CLK_posedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_DI_CLK_negedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_posedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_negedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       thold_EN_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_EN_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RST_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RST_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
 
       thold_DI_CLK_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DI_CLK_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_posedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_negedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DI     : in STD_LOGIC_VECTOR (7 downto 0);
        EN     : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        RST    : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADDR   : in STD_LOGIC_VECTOR (8 downto 0);
        DO     : out STD_LOGIC_VECTOR (7 downto 0)
       );
end component;


----- Component X_RAMB4_S16 -----
component X_RAMB4_S16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDR : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DI   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_EN  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RST : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLK_DO : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DO : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_EN_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_EN_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RST_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_DI_CLK_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DI_CLK_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDR_CLK_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDR_CLK_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_EN_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_EN_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RST_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RST_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
 
       thold_DI_CLK_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DI_CLK_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDR_CLK_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDR_CLK_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DI     : in STD_LOGIC_VECTOR (15 downto 0);
        EN     : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        RST    : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADDR   : in STD_LOGIC_VECTOR (7 downto 0);
        DO     : out STD_LOGIC_VECTOR (15 downto 0)
       );
end component;


----- Component X_RAMB4_S1_S1 -----
component X_RAMB4_S1_S1
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays
 
       tipd_ADDRA : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width

       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (0 downto 0);
        DIB    : in STD_LOGIC_VECTOR (0 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (11 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (11 downto 0);
        DOA    : out STD_LOGIC_VECTOR (0 downto 0);
        DOB    : out STD_LOGIC_VECTOR (0 downto 0)
       );
end component;


----- Component X_RAMB4_S1_S2 -----
component X_RAMB4_S1_S2
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));

       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);                              
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (0 downto 0);
        DIB    : in STD_LOGIC_VECTOR (1 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (11 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (10 downto 0);
        DOA    : out STD_LOGIC_VECTOR (0 downto 0);
        DOB    : out STD_LOGIC_VECTOR (1 downto 0)
       );
end component;


----- Component X_RAMB4_S1_S4 -----
component X_RAMB4_S1_S4
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (9 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (3 downto 0)  := (others => (0.0 ns, 0.0 ns));

       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);                              
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (0 downto 0);
        DIB    : in STD_LOGIC_VECTOR (3 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (11 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (9 downto 0);
        DOA    : out STD_LOGIC_VECTOR (0 downto 0);
        DOB    : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;


----- Component X_RAMB4_S1_S8 -----
component X_RAMB4_S1_S8
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays
 
       tipd_ADDRA : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (8 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width

       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (0 downto 0);
        DIB    : in STD_LOGIC_VECTOR (7 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (11 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (8 downto 0);
        DOA    : out STD_LOGIC_VECTOR (0 downto 0);
        DOB    : out STD_LOGIC_VECTOR (7 downto 0)
       );
end component;


----- Component X_RAMB4_S1_S16 -----
component X_RAMB4_S1_S16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays
 
       tipd_ADDRA : VitalDelayArrayType01 (11 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (0 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));

       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);                              
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (0 downto 0)  := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (0 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (0 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (11 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (0 downto 0);
        DIB    : in STD_LOGIC_VECTOR (15 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (11 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (7 downto 0);
        DOA    : out STD_LOGIC_VECTOR (0 downto 0);
        DOB    : out STD_LOGIC_VECTOR (15 downto 0)
       );
end component;


----- Component X_RAMB4_S2_S2 -----
component X_RAMB4_S2_S2
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (1 downto 0);
        DIB    : in STD_LOGIC_VECTOR (1 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (10 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (10 downto 0);
        DOA    : out STD_LOGIC_VECTOR (1 downto 0);
        DOB    : out STD_LOGIC_VECTOR (1 downto 0)
       );
end component;


----- Component X_RAMB4_S2_S4 -----
component X_RAMB4_S2_S4
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (9 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (3 downto 0)  := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (1 downto 0);
        DIB    : in STD_LOGIC_VECTOR (3 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (10 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (9 downto 0);
        DOA    : out STD_LOGIC_VECTOR (1 downto 0);
        DOB    : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;


----- Component X_RAMB4_S2_S8 -----
component X_RAMB4_S2_S8
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays
 
       tipd_ADDRA : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (8 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;

       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width

       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (1 downto 0);
        DIB    : in STD_LOGIC_VECTOR (7 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (10 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (8 downto 0);
        DOA    : out STD_LOGIC_VECTOR (1 downto 0);
        DOB    : out STD_LOGIC_VECTOR (7 downto 0)
       );
end component;


----- Component X_RAMB4_S2_S16 -----
component X_RAMB4_S2_S16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (10 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (1 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (1 downto 0)  := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (1 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (1 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (10 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (1 downto 0);
        DIB    : in STD_LOGIC_VECTOR (15 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (10 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (7 downto 0);
        DOA    : out STD_LOGIC_VECTOR (1 downto 0);
        DOB    : out STD_LOGIC_VECTOR (15 downto 0)
       );
end component;


----- Component X_RAMB4_S4_S4 -----
component X_RAMB4_S4_S4
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays
 
       tipd_ADDRA : VitalDelayArrayType01 (9 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (9 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (3 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (3 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (3 downto 0);
        DIB    : in STD_LOGIC_VECTOR (3 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (9 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (9 downto 0);
        DOA    : out STD_LOGIC_VECTOR (3 downto 0);
        DOB    : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;


----- Component X_RAMB4_S4_S8 -----
component X_RAMB4_S4_S8
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays
 
       tipd_ADDRA : VitalDelayArrayType01 (9 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (8 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (3 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (7 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (3 downto 0);
        DIB    : in STD_LOGIC_VECTOR (7 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (9 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (8 downto 0);
        DOA    : out STD_LOGIC_VECTOR (3 downto 0);
        DOB    : out STD_LOGIC_VECTOR (7 downto 0)
       );
end component;


----- Component X_RAMB4_S4_S16 -----
component X_RAMB4_S4_S16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (9 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (3 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (3 downto 0)  := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (3 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (3 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (9 downto 0)  := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (3 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (9 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (3 downto 0);
        DIB    : in STD_LOGIC_VECTOR (15 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (9 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (7 downto 0);
        DOA    : out STD_LOGIC_VECTOR (3 downto 0);
        DOB    : out STD_LOGIC_VECTOR (15 downto 0)
       );
end component;


----- Component X_RAMB4_S8_S8 -----
component X_RAMB4_S8_S8
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (8 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (8 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (7 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (7 downto 0)  := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;
 
       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (7 downto 0);
        DIB    : in STD_LOGIC_VECTOR (7 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (8 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (8 downto 0);
        DOA    : out STD_LOGIC_VECTOR (7 downto 0);
        DOB    : out STD_LOGIC_VECTOR (7 downto 0)
       );
end component;


----- Component X_RAMB4_S8_S16 -----
component X_RAMB4_S8_S16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (8 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));

       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);                              
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (7 downto 0)  := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (7 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (8 downto 0)  := (others => 0.01 ns);

       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (7 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (8 downto 0) := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (7 downto 0);
        DIB    : in STD_LOGIC_VECTOR (15 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (8 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (7 downto 0);
        DOA    : out STD_LOGIC_VECTOR (7 downto 0);
        DOB    : out STD_LOGIC_VECTOR (15 downto 0)
       );
end component;


----- Component X_RAMB4_S16_S16 -----
component X_RAMB4_S16_S16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;
 
       -- VITAL input wire delays

       tipd_ADDRA : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_ADDRB : VitalDelayArrayType01 (7 downto 0)  := (others => (0.0 ns, 0.0 ns));
       tipd_DIA   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));
       tipd_DIB   : VitalDelayArrayType01 (15 downto 0) := (others => (0.0 ns, 0.0 ns));
 
       tipd_ENA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ENB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEA   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WEB   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_GSR   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RSTB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKA  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLKB  : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
 
       -- VITAL pin-to-pin propagation delays
 
       tpd_CLKA_DOA : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_CLKB_DOB : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOA  : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
       tpd_GSR_DOB  : VitalDelayArrayType01 (15 downto 0) := (others => (0.1 ns, 0.1 ns));
 
       -- VITAL setup and hold times
 
       tsetup_ENA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTA_CLKA_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKA_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_ENB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ENB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WEB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_RSTB_CLKB_negedge_posedge  : VitalDelayType := 0.01 ns;
       trecovery_GSR_CLKB_negedge_posedge : VitalDelayType := 0.01 ns;
 
       tsetup_CLKB_CLKA_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_CLKA_CLKB_posedge_posedge  : VitalDelayType := 0.01 ns;
 
       tsetup_DIA_CLKA_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DIA_CLKA_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRA_CLKA_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       tsetup_DIB_CLKB_posedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_DIB_CLKB_negedge_posedge   : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_posedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       tsetup_ADDRB_CLKB_negedge_posedge : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_ENA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEA_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTA_CLKA_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKA_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_ENB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ENB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WEB_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_RSTB_CLKB_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_GSR_CLKB_negedge_posedge    : VitalDelayType := 0.01 ns;
 
       thold_DIA_CLKA_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DIA_CLKA_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDRA_CLKA_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDRA_CLKA_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       thold_DIB_CLKB_posedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_DIB_CLKB_negedge_posedge    : VitalDelayArrayType (15 downto 0) := (others => 0.01 ns);
       thold_ADDRB_CLKB_posedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
       thold_ADDRB_CLKB_negedge_posedge  : VitalDelayArrayType (7 downto 0)  := (others => 0.01 ns);
 
       -- VITAL minimum pulse width
 
       tpw_CLKA_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKA_negedge : VitalDelayType := 0.01 ns;
 
       tpw_CLKB_posedge : VitalDelayType := 0.01 ns;
       tpw_CLKB_negedge : VitalDelayType := 0.01 ns;

       tpw_GSR_posedge  : VitalDelayType := 0.01 ns;

       INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
       INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
  );
 
-- synopsys translate_on
  port (DIA    : in STD_LOGIC_VECTOR (15 downto 0);
        DIB    : in STD_LOGIC_VECTOR (15 downto 0);
        ENA    : in STD_ULOGIC;
        ENB    : in STD_ULOGIC;
        WEA    : in STD_ULOGIC;
        WEB    : in STD_ULOGIC;
        RSTA   : in STD_ULOGIC;
        RSTB   : in STD_ULOGIC;
        GSR    : in STD_ULOGIC;
        CLKA   : in STD_ULOGIC;
        CLKB   : in STD_ULOGIC;
        ADDRA  : in STD_LOGIC_VECTOR (7 downto 0);
        ADDRB  : in STD_LOGIC_VECTOR (7 downto 0);
        DOA    : out STD_LOGIC_VECTOR (15 downto 0);
        DOB    : out STD_LOGIC_VECTOR (15 downto 0)
       );
end component;


----- Component X_RAM16 -----
component X_RAM16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_I      : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE     : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR0   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR1   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR2   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR3   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_I_O      : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_WE_O     : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR0_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR1_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR2_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR3_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);

       -- VITAL setup and hold times

       tsetup_I_WE_posedge_negedge    : VitalDelayType := 0.01 ns;
       tsetup_I_WE_negedge_negedge    : VitalDelayType := 0.01 ns;
       tsetup_ADR0_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR0_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_WE_negedge_posedge : VitalDelayType := 0.01 ns;

       thold_I_WE_posedge_negedge     : VitalDelayType := 0.01 ns;
       thold_I_WE_negedge_negedge     : VitalDelayType := 0.01 ns;
       thold_ADR0_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR0_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
 
       -- VITAL minimum pulse width
 
       tpw_WE_posedge : VitalDelayType := 0.01 ns;
       tpw_WE_negedge : VitalDelayType := 0.01 ns;
 
       INIT : bit_vector := X"0000"
  );

-- synopsys translate_on
  port ( I   : in STD_ULOGIC;
        WE   : in STD_ULOGIC;
        ADR0 : in STD_ULOGIC;
        ADR1 : in STD_ULOGIC;
        ADR2 : in STD_ULOGIC;
        ADR3 : in STD_ULOGIC;

        O : out STD_ULOGIC
       ); 
end component;


----- Component X_RAM32 -----
component X_RAM32
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_I      : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE     : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR0   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR1   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR2   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR3   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR4   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_I_O      : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_WE_O     : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR0_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR1_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR2_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR3_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR4_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);

       -- VITAL setup and hold times

       tsetup_I_WE_posedge_negedge    : VitalDelayType := 0.01 ns;
       tsetup_I_WE_negedge_negedge    : VitalDelayType := 0.01 ns;
       tsetup_ADR0_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR0_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_WE_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR4_WE_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR4_WE_negedge_posedge : VitalDelayType := 0.01 ns;
 
       thold_I_WE_posedge_negedge     : VitalDelayType := 0.01 ns;
       thold_I_WE_negedge_negedge     : VitalDelayType := 0.01 ns;
       thold_ADR0_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR0_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR4_WE_posedge_negedge  : VitalDelayType := 0.01 ns;
       thold_ADR4_WE_negedge_negedge  : VitalDelayType := 0.01 ns;
  
       -- VITAL minimum pulse width
 
       tpw_WE_posedge : VitalDelayType := 0.01 ns;
       tpw_WE_negedge : VitalDelayType := 0.01 ns;
 
       INIT : bit_vector := X"00000000"
  );

-- synopsys translate_on
  port ( I   : in STD_ULOGIC;
        WE   : in STD_ULOGIC;
        ADR0 : in STD_ULOGIC;
        ADR1 : in STD_ULOGIC;
        ADR2 : in STD_ULOGIC;
        ADR3 : in STD_ULOGIC;
        ADR4 : in STD_ULOGIC;

        O : out STD_ULOGIC
       ); 
end component;


----- Component X_RAMS16 -----
component X_RAMS16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_ADR0   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR1   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR2   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR3   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       tipd_I      : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE     : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_ADR0_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR1_O   : VitalDelayType01 := (0.1 ns, 0.1 ns); 
       tpd_ADR2_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR3_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);

       tpd_CLK_O    : VitalDelayType01 := (0.1 ns, 0.1 ns); 

       -- VITAL setup and hold times

       tsetup_I_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       tsetup_I_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ADR0_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR0_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_CLK_negedge_posedge : VitalDelayType := 0.01 ns;

       thold_I_CLK_posedge_posedge     : VitalDelayType := 0.01 ns;
       thold_I_CLK_negedge_posedge     : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ADR0_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR0_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;

       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       INIT : bit_vector := X"0000"
  );

-- synopsys translate_on
  port (I      : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADR0   : in STD_ULOGIC;
        ADR1   : in STD_ULOGIC;
        ADR2   : in STD_ULOGIC;
        ADR3   : in STD_ULOGIC;

        O    : out STD_ULOGIC
       ); 
end component;


----- Component X_RAMS32 -----
component X_RAMS32
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_ADR0   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR1   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR2   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR3   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_ADR4   : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       tipd_I      : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE     : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_ADR0_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR1_O   : VitalDelayType01 := (0.1 ns, 0.1 ns); 
       tpd_ADR2_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR3_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_ADR4_O   : VitalDelayType01 := (0.1 ns, 0.1 ns);

       tpd_CLK_O    : VitalDelayType01 := (0.1 ns, 0.1 ns); 

       -- VITAL setup and hold times

       tsetup_I_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       tsetup_I_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       tsetup_ADR0_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR0_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR1_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR2_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR3_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR4_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_ADR4_CLK_negedge_posedge : VitalDelayType := 0.01 ns;

       thold_I_CLK_posedge_posedge     : VitalDelayType := 0.01 ns;
       thold_I_CLK_negedge_posedge     : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge    : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge    : VitalDelayType := 0.01 ns;
       thold_ADR0_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR0_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR1_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR2_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR3_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR4_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_ADR4_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;

       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       INIT : bit_vector := X"00000000"
  );

-- synopsys translate_on
  port (I      : in STD_ULOGIC;
        WE     : in STD_ULOGIC;
        CLK    : in STD_ULOGIC;
        ADR0   : in STD_ULOGIC;
        ADR1   : in STD_ULOGIC;
        ADR2   : in STD_ULOGIC;
        ADR3   : in STD_ULOGIC;
        ADR4   : in STD_ULOGIC;

        O    : out STD_ULOGIC
       ); 
end component;


----- Component X_RAMD16 -----
component X_RAMD16
-- synopsys translate_off
  generic (
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_WADR0    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WADR1    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WADR2    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WADR3    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       tipd_RADR0    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RADR1    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RADR2    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_RADR3    : VitalDelayType01 := ( 0.0 ns,  0.0 ns);

       tipd_I        : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_WE       : VitalDelayType01 := ( 0.0 ns,  0.0 ns);
       tipd_CLK      : VitalDelayType01 := ( 0.1 ns,  0.1 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_RADR0_O : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_RADR1_O : VitalDelayType01 := (0.1 ns, 0.1 ns); 
       tpd_RADR2_O : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_RADR3_O : VitalDelayType01 := (0.1 ns, 0.1 ns);

       tpd_CLK_O  : VitalDelayType01 := (0.1 ns, 0.1 ns); 

       -- VITAL setup and hold times

       tsetup_I_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_I_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WE_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR0_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR0_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR1_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR1_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR2_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR2_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR3_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_WADR3_CLK_negedge_posedge : VitalDelayType := 0.01 ns;

       thold_I_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_I_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;
       thold_WE_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WE_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR0_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR0_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR1_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR1_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR2_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR2_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR3_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_WADR3_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;

       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       INIT : bit_vector := X"0000"
  );

-- synopsys translate_on
  port (I     : in STD_ULOGIC;
        WE    : in STD_ULOGIC;
        CLK   : in STD_ULOGIC;
        WADR0 : in STD_ULOGIC;
        WADR1 : in STD_ULOGIC;
        WADR2 : in STD_ULOGIC;
        WADR3 : in STD_ULOGIC;
        RADR0 : in STD_ULOGIC;
        RADR1 : in STD_ULOGIC;
        RADR2 : in STD_ULOGIC;
        RADR3 : in STD_ULOGIC;

        O     : out STD_ULOGIC
       ); 
end component;


----- Component X_SFF -----
component X_SFF
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SET_O                         :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_RST_O                         :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLK_O                         :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_I_CLK_posedge_posedge      :  VitalDelayType := 0.010 ns;
      tsetup_I_CLK_negedge_posedge      :  VitalDelayType := 0.010 ns;
      thold_I_CLK_posedge_posedge       :  VitalDelayType := 0.010 ns;
      thold_I_CLK_negedge_posedge       :  VitalDelayType := 0.010 ns;
      tsetup_SRST_CLK_posedge_posedge   :  VitalDelayType := 0.010 ns;
      tsetup_SRST_CLK_negedge_posedge   :  VitalDelayType := 0.010 ns;
      thold_SRST_CLK_posedge_posedge    :  VitalDelayType := 0.010 ns;
      thold_SRST_CLK_negedge_posedge    :  VitalDelayType := 0.010 ns;
      tsetup_SSET_CLK_posedge_posedge   :  VitalDelayType := 0.010 ns;
      tsetup_SSET_CLK_negedge_posedge   :  VitalDelayType := 0.010 ns;
      thold_SSET_CLK_posedge_posedge    :  VitalDelayType := 0.010 ns;
      thold_SSET_CLK_negedge_posedge    :  VitalDelayType := 0.010 ns;
      trecovery_RST_CLK_negedge_posedge :        VitalDelayType := 0.010 ns;
      thold_RST_CLK_negedge_posedge     :  VitalDelayType := 0.010 ns;
      trecovery_SET_CLK_negedge_posedge :        VitalDelayType := 0.010 ns;
      thold_SET_CLK_negedge_posedge     :  VitalDelayType := 0.010 ns;
      tsetup_CE_CLK_posedge_posedge     :  VitalDelayType := 0.010 ns;
      tsetup_CE_CLK_negedge_posedge     :  VitalDelayType := 0.010 ns;
      thold_CE_CLK_posedge_posedge      :  VitalDelayType := 0.010 ns;
      thold_CE_CLK_negedge_posedge      :  VitalDelayType := 0.010 ns;
      tpw_RST_posedge                   :  VitalDelayType := 0.010 ns;
      tpw_SET_posedge                   :  VitalDelayType := 0.010 ns;
      tpw_CLK_posedge                   :  VitalDelayType := 0.010 ns;
      tpw_CLK_negedge                   :  VitalDelayType := 0.010 ns;
      tipd_I                            :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SRST                         :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SSET                         :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_RST                          :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SET                          :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                          :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CE                           :  VitalDelayType01 := (0.000 ns, 0.000 ns));
 
-- synopsys translate_on
   port(
      O                                :  out   STD_ULOGIC;
      I                                :  in    STD_ULOGIC;
      SRST                             :  in    STD_ULOGIC;
      SSET                             :  in    STD_ULOGIC;
      RST                              :  in    STD_ULOGIC;
      SET                              :  in    STD_ULOGIC;
      CLK                              :  in    STD_ULOGIC;
      CE                               :  in    STD_ULOGIC);

end component;


----- Component X_SRL16E -----
component X_SRL16E
-- synopsys translate_off
   generic(
       TimingChecksOn: Boolean := DefaultTimingChecksOn;
       InstancePath: STRING := "*";
       Xon: Boolean := DefaultXon;
       MsgOn: Boolean := DefaultMsgOn;

       -- VITAL input wire delays

       tipd_A0   : VitalDelayType01 := (0.0 ns,  0.0 ns);
       tipd_A1   : VitalDelayType01 := (0.0 ns,  0.0 ns);
       tipd_A2   : VitalDelayType01 := (0.0 ns,  0.0 ns);
       tipd_A3   : VitalDelayType01 := (0.0 ns,  0.0 ns);

       tipd_D    : VitalDelayType01 := (0.0 ns,  0.0 ns);
       tipd_CE   : VitalDelayType01 := (0.0 ns,  0.0 ns);
       tipd_CLK  : VitalDelayType01 := (0.0 ns,  0.0 ns);

       -- VITAL pin-to-pin propagation delays

       tpd_A0_Q  : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_A1_Q  : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_A2_Q  : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_A3_Q  : VitalDelayType01 := (0.1 ns, 0.1 ns);
       tpd_CLK_Q : VitalDelayType01 := (0.1 ns, 0.1 ns);

       -- VITAL setup and hold times

       tsetup_CE_CLK_posedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_CE_CLK_negedge_posedge : VitalDelayType := 0.01 ns;
       tsetup_D_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       tsetup_D_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;

       thold_CE_CLK_posedge_posedge  : VitalDelayType := 0.01 ns;
       thold_CE_CLK_negedge_posedge  : VitalDelayType := 0.01 ns;
       thold_D_CLK_posedge_posedge   : VitalDelayType := 0.01 ns;
       thold_D_CLK_negedge_posedge   : VitalDelayType := 0.01 ns;

       -- VITAL minimum pulse width

       tpw_CLK_posedge : VitalDelayType := 0.01 ns;
       tpw_CLK_negedge : VitalDelayType := 0.01 ns;

       INIT : bit_vector := X"0000");

-- synopsys translate_on
  port (
     D   : in STD_ULOGIC;
     CE  : in STD_ULOGIC;
     CLK : in STD_ULOGIC;
     A0  : in STD_ULOGIC;
     A1  : in STD_ULOGIC;
     A2  : in STD_ULOGIC;
     A3  : in STD_ULOGIC;
     Q   : out STD_ULOGIC); 
end component;


----- Component X_TRI -----
component X_TRI
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CTL_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CTL                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      CTL                            :	in    STD_ULOGIC);
end component;


----- Component X_UPAD -----
component X_UPAD
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*");

-- synopsys translate_on
   port(
      PAD                            :	in    STD_ULOGIC);
end component;


----- Component X_XOR2 -----
component X_XOR2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR3 -----
component X_XOR3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR4 -----
component X_XOR4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR5 -----
component X_XOR5
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR6 -----
component X_XOR6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR7 -----
component X_XOR7
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR8 -----
component X_XOR8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR16 -----
component X_XOR16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I15                            :	in    STD_ULOGIC;
      I14                            :	in    STD_ULOGIC;
      I13                            :	in    STD_ULOGIC;
      I12                            :	in    STD_ULOGIC;
      I11                            :	in    STD_ULOGIC;
      I10                            :	in    STD_ULOGIC;
      I9                             :	in    STD_ULOGIC;
      I8                             :	in    STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_XOR32 -----
component X_XOR32
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I31_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I30_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I29_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I28_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I27_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I26_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I25_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I24_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I23_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I22_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I21_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I20_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I19_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I18_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I17_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I16_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);

      tipd_I31                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I30                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I29                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I28                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I27                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I26                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I25                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I24                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I23                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I22                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I21                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I20                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I19                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I18                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I17                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I16                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I31                            :	in    STD_ULOGIC;
      I30                            :	in    STD_ULOGIC;
      I29                            :	in    STD_ULOGIC;
      I28                            :	in    STD_ULOGIC;
      I27                            :	in    STD_ULOGIC;
      I26                            :	in    STD_ULOGIC;
      I25                            :	in    STD_ULOGIC;
      I24                            :	in    STD_ULOGIC;
      I23                            :	in    STD_ULOGIC;
      I22                            :	in    STD_ULOGIC;
      I21                            :	in    STD_ULOGIC;
      I20                            :	in    STD_ULOGIC;
      I19                            :	in    STD_ULOGIC;
      I18                            :	in    STD_ULOGIC;
      I17                            :	in    STD_ULOGIC;
      I16                            :	in    STD_ULOGIC;
      I15                            :	in    STD_ULOGIC;
      I14                            :	in    STD_ULOGIC;
      I13                            :	in    STD_ULOGIC;
      I12                            :	in    STD_ULOGIC;
      I11                            :	in    STD_ULOGIC;
      I10                            :	in    STD_ULOGIC;
      I9                             :	in    STD_ULOGIC;
      I8                             :	in    STD_ULOGIC;
      I7                             :	in    STD_ULOGIC;
      I6                             :	in    STD_ULOGIC;
      I5                             :	in    STD_ULOGIC;
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component X_ZERO -----
component X_ZERO
-- synopsys translate_off
   generic(
      InstancePath: STRING := "*");

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC := '0');
end component;


end VCOMPONENTS;

---- end of VITAL components library ----
