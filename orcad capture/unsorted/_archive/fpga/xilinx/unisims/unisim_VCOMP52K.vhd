-- $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/vhdsclibs/data/unisim_VCOMP52K.vhd,v 1.2 1999/05/20 23:48:47 rogerng Exp $
----------------------------------------------------------------
-- 
-- FILENAME     :    unisim_VCOMP52K.vhd
-- FILE CONTENTS:    VITAL Component Package for XC5200
-- DATE CREATED :    September 25, 1997
-- 
-- LIBRARY      :    UNISIM (UNIfied SIMulation)
-- REVISION     :    1.1.0
-- TECHNOLOGY   :    FPGA
-- TIME SCALE   :    1 NS
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
-- HISTORY      :    1.  Manually created by copying unisim_VCOMP.vhd to unisim_VCOM52K.vhd
--                       and then changing the BSCAN and STARTUP component declarations. 
--                       DP, 09/25/97.
--                   2.  Changed port names in VCC and GND component declarations from
--                       POWER and GROUND to P and G, respectively. DP, 09/26/97.
--                   3.  Changed MD0, MD1, MD2, TCK, TDI, TDO and TMS port
--                       directions to inout. DP, 01/14/98.
--                   4.  Removed non-5200 component declarations. DP, 02/11/98.
--                   5.  Changed default value of WIDTH generic in ROC and TOC
--                       from 0 ns to 100 ns. DP, 04/20/98.
--                   6.  Changed default value of PERIOD generic in OSC5 and OSC52
--                       from 0 ns to 55.6 ns. DP, 05/18/98.
--		     7.  Added 53 component declarations, for inverting and
--			 open drain/src output buffers. SG, 01/21/99.
----------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- synopsys translate_off

library IEEE;
use IEEE.VITAL_Timing.all;
-- synopsys translate_on

package VCOMPONENTS is

constant DefaultTimingChecksOn : Boolean := False;
constant DefaultXon : Boolean := True;
constant DefaultMsgOn : Boolean := False;


----- Component AND2 -----
component AND2
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


----- Component AND2B1 -----
component AND2B1
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


----- Component AND2B2 -----
component AND2B2
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


----- Component AND3 -----
component AND3
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


----- Component AND3B1 -----
component AND3B1
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


----- Component AND3B2 -----
component AND3B2
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


----- Component AND3B3 -----
component AND3B3
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


----- Component AND4 -----
component AND4
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


----- Component AND4B1 -----
component AND4B1
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


----- Component AND4B2 -----
component AND4B2
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


----- Component AND4B3 -----
component AND4B3
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


----- Component AND4B4 -----
component AND4B4
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


----- Component AND5 -----
component AND5
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


----- Component AND5B1 -----
component AND5B1
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


----- Component AND5B2 -----
component AND5B2
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


----- Component AND5B3 -----
component AND5B3
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


----- Component AND5B4 -----
component AND5B4
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


----- Component AND5B5 -----
component AND5B5
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


----- Component AND12 -----
component AND12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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


----- Component AND16 -----
component AND16
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


----- Component BSCAN -----
component BSCAN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tipd_TDI                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TMS                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TCK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TDO1                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TDO2                      :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      RESET                          :	out   STD_ULOGIC := 'H';
      UPDATE                         :	out   STD_ULOGIC := 'L';
      SHIFT                          :	out   STD_ULOGIC := 'L';
      TDO                            :	out   STD_ULOGIC := 'H';
      DRCK                           :	out   STD_ULOGIC := 'H';
      IDLE                           :	out   STD_ULOGIC := 'H';
      SEL1                           :	out   STD_ULOGIC := 'L';
      SEL2                           :	out   STD_ULOGIC := 'L';
      TDI                            :	in    STD_ULOGIC;
      TMS                            :	in    STD_ULOGIC;
      TCK                            :	in    STD_ULOGIC;
      TDO1                           :	in    STD_ULOGIC;
      TDO2                           :	in    STD_ULOGIC);
end component;


----- Component MD0 -----
component MD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              : inout   STD_ULOGIC);
end component;


----- Component MD1 -----
component MD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      O                              : inout STD_ULOGIC);
end component;


----- Component MD2 -----
component MD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);
 
-- synopsys translate_on
   port(
      I                              : inout STD_ULOGIC);
end component;


----- Component TCK -----
component TCK   
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port( 
      I                              : inout   STD_ULOGIC);
end component;  


----- Component TDI -----
component TDI   
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port( 
      I                              : inout   STD_ULOGIC);
end component;  


----- Component TDO -----
component TDO   
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);
 
-- synopsys translate_on
   port(
      O                              : inout STD_ULOGIC);
end component;
 
 
----- Component TMS -----
component TMS
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);
 
-- synopsys translate_on
   port(
      I                              : inout STD_ULOGIC);
end component;


----- Component BUF -----
component BUF
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


----- Component BUFG -----
component BUFG
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


----- Component BUFG_F -----
component BUFG_F
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


----- Component BUFT -----
component BUFT
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component BYPOSC -----
component BYPOSC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;


----- Component CK_DIV -----
component CK_DIV
-- synopsys translate_off
    generic ( InstancePath : STRING := "*";
              DIVIDE1_BY : integer := 4;
              DIVIDE2_BY : integer := 2);

-- synopsys translate_on
    port( C : in std_ulogic := '0';
          OSC1 : out std_ulogic := '0';
          OSC2 : out std_ulogic := '0');
end component;


----- Component CY_INIT -----
component CY_INIT
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_INIT_COUT                  :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_INIT                      :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      COUT                           :	out   STD_ULOGIC;
      INIT                           :	in    STD_ULOGIC);
end component;


----- Component CY_MUX -----
component CY_MUX
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_DI_CO                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_S_CO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_DI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CO                             :	out   STD_ULOGIC;
      DI                             :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC);
end component;


----- Component DECODE4 -----
component DECODE4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A3_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DECODE8 -----
component DECODE8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A7_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A6_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A5_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A4_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_A7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      A7                             :	in    STD_ULOGIC;
      A6                             :	in    STD_ULOGIC;
      A5                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DECODE16 -----
component DECODE16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A15_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A14_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A13_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A12_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A11_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A10_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A9_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A8_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A7_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A6_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A5_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A4_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_A15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      A15                            :	in    STD_ULOGIC;
      A14                            :	in    STD_ULOGIC;
      A13                            :	in    STD_ULOGIC;
      A12                            :	in    STD_ULOGIC;
      A11                            :	in    STD_ULOGIC;
      A10                            :	in    STD_ULOGIC;
      A9                             :	in    STD_ULOGIC;
      A8                             :	in    STD_ULOGIC;
      A7                             :	in    STD_ULOGIC;
      A6                             :	in    STD_ULOGIC;
      A5                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DECODE32 -----
component DECODE32
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A31_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A30_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A29_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A28_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A27_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A26_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A25_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A24_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A23_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A22_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A21_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A20_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A19_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A18_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A17_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A16_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A15_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A14_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A13_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A12_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A11_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A10_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A9_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A8_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A7_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A6_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A5_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A4_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_A31                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A30                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A29                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A28                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A27                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A26                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A25                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A24                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A23                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A22                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A21                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A20                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A19                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A18                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A17                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A16                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      A31                            :	in    STD_ULOGIC;
      A30                            :	in    STD_ULOGIC;
      A29                            :	in    STD_ULOGIC;
      A28                            :	in    STD_ULOGIC;
      A27                            :	in    STD_ULOGIC;
      A26                            :	in    STD_ULOGIC;
      A25                            :	in    STD_ULOGIC;
      A24                            :	in    STD_ULOGIC;
      A23                            :	in    STD_ULOGIC;
      A22                            :	in    STD_ULOGIC;
      A21                            :	in    STD_ULOGIC;
      A20                            :	in    STD_ULOGIC;
      A19                            :	in    STD_ULOGIC;
      A18                            :	in    STD_ULOGIC;
      A17                            :	in    STD_ULOGIC;
      A16                            :	in    STD_ULOGIC;
      A15                            :	in    STD_ULOGIC;
      A14                            :	in    STD_ULOGIC;
      A13                            :	in    STD_ULOGIC;
      A12                            :	in    STD_ULOGIC;
      A11                            :	in    STD_ULOGIC;
      A10                            :	in    STD_ULOGIC;
      A9                             :	in    STD_ULOGIC;
      A8                             :	in    STD_ULOGIC;
      A7                             :	in    STD_ULOGIC;
      A6                             :	in    STD_ULOGIC;
      A5                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DECODE64 -----
component DECODE64
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A63_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A62_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A61_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A60_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A59_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A58_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A57_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A56_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A55_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A54_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A53_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A52_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A51_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A50_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A49_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A48_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A47_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A46_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A45_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A44_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A43_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A42_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A41_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A40_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A39_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A38_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A37_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A36_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A35_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A34_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A33_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A32_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A31_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A30_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A29_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A28_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A27_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A26_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A25_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A24_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A23_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A22_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A21_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A20_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A19_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A18_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A17_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A16_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A15_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A14_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A13_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A12_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A11_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A10_O                      :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A9_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A8_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A7_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A6_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A5_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A4_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_A63                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A62                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A61                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A60                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A59                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A58                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A57                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A56                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A55                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A54                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A53                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A52                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A51                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A50                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A49                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A48                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A47                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A46                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A45                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A44                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A43                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A42                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A41                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A40                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A39                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A38                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A37                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A36                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A35                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A34                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A33                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A32                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A31                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A30                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A29                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A28                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A27                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A26                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A25                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A24                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A23                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A22                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A21                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A20                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A19                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A18                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A17                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A16                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      A63                            :	in    STD_ULOGIC;
      A62                            :	in    STD_ULOGIC;
      A61                            :	in    STD_ULOGIC;
      A60                            :	in    STD_ULOGIC;
      A59                            :	in    STD_ULOGIC;
      A58                            :	in    STD_ULOGIC;
      A57                            :	in    STD_ULOGIC;
      A56                            :	in    STD_ULOGIC;
      A55                            :	in    STD_ULOGIC;
      A54                            :	in    STD_ULOGIC;
      A53                            :	in    STD_ULOGIC;
      A52                            :	in    STD_ULOGIC;
      A51                            :	in    STD_ULOGIC;
      A50                            :	in    STD_ULOGIC;
      A49                            :	in    STD_ULOGIC;
      A48                            :	in    STD_ULOGIC;
      A47                            :	in    STD_ULOGIC;
      A46                            :	in    STD_ULOGIC;
      A45                            :	in    STD_ULOGIC;
      A44                            :	in    STD_ULOGIC;
      A43                            :	in    STD_ULOGIC;
      A42                            :	in    STD_ULOGIC;
      A41                            :	in    STD_ULOGIC;
      A40                            :	in    STD_ULOGIC;
      A39                            :	in    STD_ULOGIC;
      A38                            :	in    STD_ULOGIC;
      A37                            :	in    STD_ULOGIC;
      A36                            :	in    STD_ULOGIC;
      A35                            :	in    STD_ULOGIC;
      A34                            :	in    STD_ULOGIC;
      A33                            :	in    STD_ULOGIC;
      A32                            :	in    STD_ULOGIC;
      A31                            :	in    STD_ULOGIC;
      A30                            :	in    STD_ULOGIC;
      A29                            :	in    STD_ULOGIC;
      A28                            :	in    STD_ULOGIC;
      A27                            :	in    STD_ULOGIC;
      A26                            :	in    STD_ULOGIC;
      A25                            :	in    STD_ULOGIC;
      A24                            :	in    STD_ULOGIC;
      A23                            :	in    STD_ULOGIC;
      A22                            :	in    STD_ULOGIC;
      A21                            :	in    STD_ULOGIC;
      A20                            :	in    STD_ULOGIC;
      A19                            :	in    STD_ULOGIC;
      A18                            :	in    STD_ULOGIC;
      A17                            :	in    STD_ULOGIC;
      A16                            :	in    STD_ULOGIC;
      A15                            :	in    STD_ULOGIC;
      A14                            :	in    STD_ULOGIC;
      A13                            :	in    STD_ULOGIC;
      A12                            :	in    STD_ULOGIC;
      A11                            :	in    STD_ULOGIC;
      A10                            :	in    STD_ULOGIC;
      A9                             :	in    STD_ULOGIC;
      A8                             :	in    STD_ULOGIC;
      A7                             :	in    STD_ULOGIC;
      A6                             :	in    STD_ULOGIC;
      A5                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DEC_CC4 -----
component DEC_CC4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CIN_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_CIN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      CIN                            :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DEC_CC8 -----
component DEC_CC8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CIN_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_CIN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      CIN                            :	in    STD_ULOGIC;
      A7                             :	in    STD_ULOGIC;
      A6                             :	in    STD_ULOGIC;
      A5                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;


----- Component DEC_CC16 -----
component DEC_CC16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CIN_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A15_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A14_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A13_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A12_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A11_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A10_O                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A9_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A8_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A7_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A6_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A5_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A4_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A3_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_A0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_CIN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A15                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A14                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A13                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A12                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A9                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A8                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A7                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A6                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A5                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      CIN                            :	in    STD_ULOGIC;
      A15                            :	in    STD_ULOGIC;
      A14                            :	in    STD_ULOGIC;
      A13                            :	in    STD_ULOGIC;
      A12                            :	in    STD_ULOGIC;
      A11                            :	in    STD_ULOGIC;
      A10                            :	in    STD_ULOGIC;
      A9                             :	in    STD_ULOGIC;
      A8                             :	in    STD_ULOGIC;
      A7                             :	in    STD_ULOGIC;
      A6                             :	in    STD_ULOGIC;
      A5                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      A0                             :	in    STD_ULOGIC);
end component;

----- Component F5_MUX -----
component F5_MUX
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I1_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I2_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_DI_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      DI                             :	in    STD_ULOGIC);
end component;


----- Component FDC -----
component FDC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_posedge      :	VitalDelayType := 0.010 ns;
      trecovery_CLR_C_negedge_posedge :	VitalDelayType := 0.100 ns;
      thold_CLR_C_negedge_posedge    :	VitalDelayType := 0.100 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component FDCE -----
component FDCE
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_posedge      :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_posedge_posedge    :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_negedge_posedge    :	VitalDelayType := 0.010 ns;
      thold_CE_C_posedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_CE_C_negedge_posedge     :	VitalDelayType := 0.010 ns;
      trecovery_CLR_C_negedge_posedge :	VitalDelayType := 0.100 ns;
      thold_CLR_C_negedge_posedge    :	VitalDelayType := 0.100 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      CE                             :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component FDCE_1 -----
component FDCE_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_negedge      :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_posedge_negedge    :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_negedge_negedge    :	VitalDelayType := 0.010 ns;
      thold_CE_C_posedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_CE_C_negedge_negedge     :	VitalDelayType := 0.010 ns;
      trecovery_CLR_C_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_CLR_C_negedge_negedge    :	VitalDelayType := 0.010 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      CE                             :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component FDC_1 -----
component FDC_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_negedge      :	VitalDelayType := 0.010 ns;
      trecovery_CLR_C_negedge_negedge :	VitalDelayType := 0.100 ns;
      thold_CLR_C_negedge_negedge    :	VitalDelayType := 0.100 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component FDPEI -----
component FDPEI
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_PRE_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_posedge      :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_posedge_posedge    :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_negedge_posedge    :	VitalDelayType := 0.010 ns;
      thold_CE_C_posedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_CE_C_negedge_posedge     :	VitalDelayType := 0.010 ns;
      trecovery_PRE_C_negedge_posedge :	VitalDelayType := 0.010 ns;
      thold_PRE_C_negedge_posedge    :	VitalDelayType := 0.010 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      CE                             :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC);
end component;


----- Component FDPEI_1 -----
component FDPEI_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_PRE_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_negedge      :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_posedge_negedge    :	VitalDelayType := 0.010 ns;
      tsetup_CE_C_negedge_negedge    :	VitalDelayType := 0.010 ns;
      thold_CE_C_posedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_CE_C_negedge_negedge     :	VitalDelayType := 0.010 ns;
      trecovery_PRE_C_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_PRE_C_negedge_negedge    :	VitalDelayType := 0.010 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      CE                             :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC);
end component;


----- Component FDPI -----
component FDPI
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_PRE_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_posedge      :	VitalDelayType := 0.010 ns;
      trecovery_PRE_C_negedge_posedge :	VitalDelayType := 0.010 ns;
      thold_PRE_C_negedge_posedge    :	VitalDelayType := 0.010 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC);
end component;


----- Component FDPI_1 -----
component FDPI_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_PRE_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_C_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_C_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_C_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_C_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_C_negedge_negedge      :	VitalDelayType := 0.010 ns;
      trecovery_PRE_C_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_PRE_C_negedge_negedge    :	VitalDelayType := 0.010 ns;
      tpw_C_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.010 ns;
      tpw_C_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC);
end component;


----- Component C_FLAG -----
component C_FLAG
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;
 

----- Component L_FLAG -----
component L_FLAG
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;


----- Component N_FLAG -----
component N_FLAG
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;


----- Component S_FLAG -----
component S_FLAG
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;


----- Component X_FLAG -----
component X_FLAG
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;


----- Component FMAP_PLC -----
component FMAP_PLC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      O                              :	in    STD_ULOGIC);
end component;


----- Component FMAP_PLO -----
component FMAP_PLO
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      O                              :	in    STD_ULOGIC);
end component;


----- Component FMAP_PUC -----
component FMAP_PUC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      O                              :	in    STD_ULOGIC);
end component;


----- Component FMAP_PUO -----
component FMAP_PUO
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I4                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      O                              :	in    STD_ULOGIC);
end component;


----- Component F5MAP_PUC -----
component F5MAP_PUC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I5                             :  in    STD_ULOGIC;
      I4                             :  in    STD_ULOGIC;
      I3                             :  in    STD_ULOGIC;
      I2                             :  in    STD_ULOGIC;
      I1                             :  in    STD_ULOGIC;
      O                              :  in    STD_ULOGIC);
end component;


----- Component GND -----
component GND
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      G                         :	out   STD_ULOGIC := '0');
end component;


----- Component IBUF -----
component IBUF
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


----- Component IBUF_F -----
component IBUF_F
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


----- Component IBUF_U -----
component IBUF_U
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


----- Component INV -----
component INV
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

----- Component IBUFN -----
component IBUFN
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


----- Component IBUFN_F -----
component IBUFN_F
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


----- Component IOBUFN -----
component IOBUFN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component IOBUF_N -----
component IOBUF_N
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNN -----
component IOBUFNN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFD -----
component IOBUFD
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFND -----
component IOBUFND
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFDN -----
component IOBUFDN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNDN -----
component IOBUFNDN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFS -----
component IOBUFS
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNS -----
component IOBUFNS
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFSN -----
component IOBUFSN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNSN -----
component IOBUFNSN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFN_F -----
component IOBUFN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNN_F -----
component IOBUFNN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFD_F -----
component IOBUFD_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFND_F -----
component IOBUFND_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFDN_F -----
component IOBUFDN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNDN_F -----
component IOBUFNDN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFS_F -----
component IOBUFS_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNS_F -----
component IOBUFNS_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFSN_F -----
component IOBUFSN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNSN_F -----
component IOBUFNSN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFN_S -----
component IOBUFN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNN_S -----
component IOBUFNN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFD_S -----
component IOBUFD_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFND_S -----
component IOBUFND_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFDN_S -----
component IOBUFDN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNDN_S -----
component IOBUFNDN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFS_S -----
component IOBUFS_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNS_S -----
component IOBUFNS_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFSN_S -----
component IOBUFSN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component IOBUFNSN_S -----
component IOBUFNSN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;



----- Component IOBUF -----
component IOBUF
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component IOBUF_N_F -----
component IOBUF_N_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component IOBUF_N_S -----
component IOBUF_N_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_IO_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I_IO                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_IO                       :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_IO                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      IO                             :	inout STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component LD -----
component LD
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_G_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_G_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_G_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_G_negedge_negedge      :	VitalDelayType := 0.010 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC);
end component;


----- Component LDC -----
component LDC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_G_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_G_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_G_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_G_negedge_negedge      :	VitalDelayType := 0.010 ns;
      trecovery_CLR_G_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_CLR_G_negedge_negedge    :	VitalDelayType := 0.010 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component LDCE -----
component LDCE
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_GE_Q                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_G_posedge_negedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_G_negedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_D_G_posedge_negedge      :	VitalDelayType := 0.010 ns;
      thold_D_G_negedge_negedge      :	VitalDelayType := 0.010 ns;
      tsetup_GE_G_posedge_negedge    :	VitalDelayType := 0.010 ns;
      tsetup_GE_G_negedge_negedge    :	VitalDelayType := 0.010 ns;
      thold_GE_G_posedge_negedge     :	VitalDelayType := 0.010 ns;
      thold_GE_G_negedge_negedge     :	VitalDelayType := 0.010 ns;
      trecovery_CLR_G_negedge_negedge :	VitalDelayType := 0.010 ns;
      thold_CLR_G_negedge_negedge    :	VitalDelayType := 0.010 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      GE                             :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component LDCE_1 -----
component LDCE_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_GE_Q                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_G_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_G_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_G_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_G_negedge_posedge      :	VitalDelayType := 0.010 ns;
      tsetup_GE_G_posedge_posedge    :	VitalDelayType := 0.010 ns;
      tsetup_GE_G_negedge_posedge    :	VitalDelayType := 0.010 ns;
      thold_GE_G_posedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_GE_G_negedge_posedge     :	VitalDelayType := 0.010 ns;
      trecovery_CLR_G_negedge_posedge :	VitalDelayType := 0.010 ns;
      thold_CLR_G_negedge_posedge    :	VitalDelayType := 0.010 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      GE                             :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component LDC_1 -----
component LDC_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_G_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_G_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_G_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_G_negedge_posedge      :	VitalDelayType := 0.010 ns;
      trecovery_CLR_G_negedge_posedge :	VitalDelayType := 0.010 ns;
      thold_CLR_G_negedge_posedge    :	VitalDelayType := 0.010 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.010 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC);
end component;


----- Component LD_1 -----
component LD_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tsetup_D_G_posedge_posedge     :	VitalDelayType := 0.010 ns;
      tsetup_D_G_negedge_posedge     :	VitalDelayType := 0.010 ns;
      thold_D_G_posedge_posedge      :	VitalDelayType := 0.010 ns;
      thold_D_G_negedge_posedge      :	VitalDelayType := 0.010 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.010 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.010 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q                              :	out   STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC);
end component;


----- Component NAND2 -----
component NAND2
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


----- Component NAND2B1 -----
component NAND2B1
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


----- Component NAND2B2 -----
component NAND2B2
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


----- Component NAND3 -----
component NAND3
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


----- Component NAND3B1 -----
component NAND3B1
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


----- Component NAND3B2 -----
component NAND3B2
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


----- Component NAND3B3 -----
component NAND3B3
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


----- Component NAND4 -----
component NAND4
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


----- Component NAND4B1 -----
component NAND4B1
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


----- Component NAND4B2 -----
component NAND4B2
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


----- Component NAND4B3 -----
component NAND4B3
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


----- Component NAND4B4 -----
component NAND4B4
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


----- Component NAND5 -----
component NAND5
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


----- Component NAND5B1 -----
component NAND5B1
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


----- Component NAND5B2 -----
component NAND5B2
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


----- Component NAND5B3 -----
component NAND5B3
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


----- Component NAND5B4 -----
component NAND5B4
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


----- Component NAND5B5 -----
component NAND5B5
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


----- Component NAND12 -----
component NAND12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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


----- Component NAND16 -----
component NAND16
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


----- Component NOR2 -----
component NOR2
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


----- Component NOR2B1 -----
component NOR2B1
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


----- Component NOR2B2 -----
component NOR2B2
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


----- Component NOR3 -----
component NOR3
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


----- Component NOR3B1 -----
component NOR3B1
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


----- Component NOR3B2 -----
component NOR3B2
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


----- Component NOR3B3 -----
component NOR3B3
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


----- Component NOR4 -----
component NOR4
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


----- Component NOR4B1 -----
component NOR4B1
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


----- Component NOR4B2 -----
component NOR4B2
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


----- Component NOR4B3 -----
component NOR4B3
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


----- Component NOR4B4 -----
component NOR4B4
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


----- Component NOR5 -----
component NOR5
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


----- Component NOR5B1 -----
component NOR5B1
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


----- Component NOR5B2 -----
component NOR5B2
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


----- Component NOR5B3 -----
component NOR5B3
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


----- Component NOR5B4 -----
component NOR5B4
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


----- Component NOR5B5 -----
component NOR5B5
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


----- Component NOR12 -----
component NOR12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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


----- Component NOR16 -----
component NOR16
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

------ Component OBUFN -----
component OBUFN
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


------ Component OBUFN_F -----
component OBUFN_F
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


------ Component OBUFN_S -----
component OBUFN_S
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


----- Component OBUFTN -----
component OBUFTN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OBUFTN_F -----
component OBUFTN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OBUFTN_S -----
component OBUFTN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OBUFD -----
component OBUFD
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFDN -----
component OBUFDN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFS -----
component OBUFS
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFSN -----
component OBUFSN
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFD_F -----
component OBUFD_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFDN_F -----
component OBUFDN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFS_F -----
component OBUFS_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFSN_F -----
component OBUFSN_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFD_S -----
component OBUFD_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFDN_S -----
component OBUFDN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFS_S -----
component OBUFS_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;


----- Component OBUFSN_S -----
component OBUFSN_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;



------ Component OBUF -----
component OBUF
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


----- Component OBUF_F -----
component OBUF_F
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


----- Component OBUF_S -----
component OBUF_S
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


----- Component OBUF_U -----
component OBUF_U
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


----- Component OBUFT -----
component OBUFT
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OBUFT_F -----
component OBUFT_F
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OBUFT_S -----
component OBUFT_S
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OBUFT_U -----
component OBUFT_U
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_T_O                        :	VitalDelayType01z := 
               (0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC;
      T                              :	in    STD_ULOGIC);
end component;


----- Component OR2 -----
component OR2
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


----- Component OR2B1 -----
component OR2B1
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


----- Component OR2B2 -----
component OR2B2
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


----- Component OR3 -----
component OR3
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


----- Component OR3B1 -----
component OR3B1
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


----- Component OR3B2 -----
component OR3B2
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


----- Component OR3B3 -----
component OR3B3
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


----- Component OR4 -----
component OR4
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


----- Component OR4B1 -----
component OR4B1
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


----- Component OR4B2 -----
component OR4B2
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


----- Component OR4B3 -----
component OR4B3
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


----- Component OR4B4 -----
component OR4B4
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


----- Component OR5 -----
component OR5
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


----- Component OR5B1 -----
component OR5B1
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


----- Component OR5B2 -----
component OR5B2
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


----- Component OR5B3 -----
component OR5B3
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


----- Component OR5B4 -----
component OR5B4
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


----- Component OR5B5 -----
component OR5B5
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


----- Component OR6 -----
component OR6
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


----- Component OR7 -----
component OR7
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


----- Component OR8 -----
component OR8
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


----- Component OR12 -----
component OR12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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


----- Component OR16 -----
component OR16
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


----- Component OSC5 -----
component OSC5
-- synopsys translate_off
    generic ( InstancePath : STRING := "*";
              PERIOD : Time := 55.6 ns;
              DIVIDE1_BY : integer := 4;
              DIVIDE2_BY : integer := 2);

-- synopsys translate_on
    port( OSC1 : out std_ulogic := '0'; 
          OSC2 : out std_ulogic := '0'); 
end component;


----- Component OSC52 -----
component OSC52
-- synopsys translate_off
    generic ( InstancePath : STRING := "*";
              OSC : STRING := "INTERNAL"; 
              PERIOD : Time := 55.6 ns;
              DIVIDE1_BY : integer := 4;
              DIVIDE2_BY : integer := 2);

-- synopsys translate_on
    port( C : in std_ulogic := '0'; 
          OSC1 : out std_ulogic := '0'; 
          OSC2 : out std_ulogic := '0'); 
end component;


----- Component OXNOR2 -----
component OXNOR2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_F_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_F                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      F                              :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component OXOR2 -----
component OXOR2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_F_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_I0_O                       :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_F                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      O                              :	out   STD_ULOGIC;
      F                              :	in    STD_ULOGIC;
      I0                             :	in    STD_ULOGIC);
end component;


----- Component PULLDOWN -----
component PULLDOWN
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


----- Component PULLUP -----
component PULLUP
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);
 
-- synopsys translate_on
   port( 
      O                              :  out   STD_ULOGIC := 'H');
end component;


----- Component RDBK -----
component RDBK
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      DATA                           :	out   STD_ULOGIC := 'L';
      RIP                            :	out   STD_ULOGIC := 'L';
      TRIG                           :	in    STD_ULOGIC);
end component;


----- Component RDCLK -----
component RDCLK
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :  in    STD_ULOGIC);
end component;


----- Component READBACK -----
component READBACK
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);
 
-- synopsys translate_on
   port(
      DATA                           :  out   STD_ULOGIC := 'L';
      RIP                            :  out   STD_ULOGIC := 'L';
      CLK                            :  in    STD_ULOGIC;
      TRIG                           :  in    STD_ULOGIC);
end component;


----- Component ROC -----
component ROC
-- synopsys translate_off
  generic (
       InstancePath:   STRING  := "*";
       WIDTH : Time := 100 ns
  );
-- synopsys translate_on
  port (O : out std_ulogic := '1');
end component;


----- Component ROCBUF -----
component ROCBUF
-- synopsys translate_off
  generic (
      InstancePath:   STRING  := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_O                        :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I                         :  VitalDelayType01 := (0.000 ns, 0.000 ns)
  );
-- synopsys translate_on
  port( I : in  std_ulogic;
        O : out std_ulogic 
  );
end component;


----- Component STARTBUF -----
component STARTBUF
-- synopsys translate_off
  generic ( 
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_GSRIN_GSROUT               :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tpd_GTSIN_GTSOUT               :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_GSRIN                     :  VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GTSIN                     :  VitalDelayType01 := (0.000 ns, 0.000 ns)
  );
-- synopsys translate_on
  port( GSRIN     : in std_ulogic;
        GTSIN     : in std_ulogic;
        CLKIN     : in std_ulogic;
        GSROUT    : out std_ulogic;
        GTSOUT    : out std_ulogic;
        Q2OUT     : out std_ulogic := 'H';
        Q3OUT     : out std_ulogic := 'H';
        Q1Q4OUT   : out std_ulogic := 'H';
        DONEINOUT : out std_ulogic := 'H'
  );
end component;


----- Component STARTUP -----
component STARTUP
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tipd_GR                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GTS                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Q2                             :	out   STD_ULOGIC := 'H';
      Q3                             :	out   STD_ULOGIC := 'H';
      Q1Q4                           :	out   STD_ULOGIC := 'H';
      DONEIN                         :	out   STD_ULOGIC := 'H';
      GR                             :	in    STD_ULOGIC;
      GTS                            :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component TOC -----
component TOC
-- synopsys translate_off
    generic ( InstancePath: STRING := "*";
              WIDTH : Time := 100 ns
    );

-- synopsys translate_on
    port( O : out std_ulogic := '0'
    );
end component;


----- Component TOCBUF -----
component TOCBUF
-- synopsys translate_off
  generic (
      InstancePath:   STRING  := "*";
      Xon: Boolean := DefaultXon; 
      MsgOn: Boolean := DefaultMsgOn; 
      tpd_I_O                        :  VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I                         :  VitalDelayType01 := (0.000 ns, 0.000 ns)
  );
-- synopsys translate_on
  port( I : in  std_ulogic;
        O : out std_ulogic
  );
end component;


----- Component VCC -----
component VCC
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      P                          :	out   STD_ULOGIC := '1');
end component;


----- Component XNOR2 -----
component XNOR2
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


----- Component XNOR3 -----
component XNOR3
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


----- Component XNOR4 -----
component XNOR4
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


----- Component XNOR5 -----
component XNOR5
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


----- Component XOR2 -----
component XOR2
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


----- Component XOR3 -----
component XOR3
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


----- Component XOR4 -----
component XOR4
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


----- Component XOR5 -----
component XOR5
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


end VCOMPONENTS;

---- end of VITAL components library ----
