-- "$Header: act1_mig.vhd@@/main/4 $"
-- Actel Vital 95 library for R299 release.
library IEEE;
use IEEE.STD_LOGIC_1164.all;

library IEEE;
use IEEE.VITAL_Timing.all;

package COMPONENTS is

constant DefaultTimingChecksOn : Boolean := True;
constant DefaultXGenerationOn : Boolean := False;
constant DefaultXon : Boolean := False;
constant DefaultMsgOn : Boolean := True;

component AND2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND4C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AND4D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO5A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AOI4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AX1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AX1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AX1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component BIBUF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_PAD                      :	VitalDelayType01z := 
               (0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns);
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PAD_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      PAD                            :	inout STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component BUF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component BUFA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component BUFF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component CLKBIBUF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_PAD                      :	VitalDelayType01z := 
               (0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns);
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PAD_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      PAD                            :	inout STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component CLKBUF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PAD_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      PAD                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component CM8A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_SB_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_SA_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      SA                             :	in    STD_ULOGIC;
      B0                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      SB                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component DF1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DF1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DF1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DF1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFC1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFC1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFC1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFC1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFC1D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFC1E
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFC1F
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFC1G
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFE
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE2D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE3D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFE4C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFEA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFEB
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFEC
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFED
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFM1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFM3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM3E
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM3F
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFM3G
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFM4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM4C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFM4D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFM4E
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM5A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM5B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFMA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFMB
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFME1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_A_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_B_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_B_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_E_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_E_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFP1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFP1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFP1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFP1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFP1D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFP1E
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFP1F
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFP1G
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DFPC
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFPCA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DL1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DL1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DL1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DL1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DL2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_negedge_negedge                :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DL2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DL2C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DL2D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_negedge                :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DLC
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLC1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLC1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLC1F
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DLC1G
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DLCA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE1D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DLE2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      thold_CLR_E_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_E_negedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_CLR_E_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      trecovery_CLR_E_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE2C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_CLR_E_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      trecovery_CLR_E_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      thold_PRE_E_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_E_negedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_PRE_E_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      trecovery_PRE_E_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLE3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_PRE_E_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      trecovery_PRE_E_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLEA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLEB
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_E_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLEC
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_D_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_A_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_B_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_B_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_S_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_S_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_A_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_B_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_B_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_S_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_S_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLMA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_A_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_B_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_B_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_S_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_S_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLME1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_A_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_A_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_A_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_A_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_B_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_B_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_B_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_B_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_S_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      thold_S_E_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_S_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S_E_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_E_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLP1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_negedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLP1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_negedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLP1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLP1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLP1D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component DLP1E
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_QN                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_PRE_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_PRE_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component; 

component FA1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CI_S                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component; 

component FA1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CI_S                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component; 

component FA1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CI_S                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component; 

component FA2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CI_S                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A1_S                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A0_S                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A1_CO                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A0_CO                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component; 

component GAND2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component GMX4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D3_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D2_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component GNAND2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component GND
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True);

   port(
      Y                              :	out   STD_ULOGIC := '0');
end component; 

component GNOR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component GOR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component GXOR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component HA1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component; 

component HA1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component; 

component HA1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component; 

component HA1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_CO                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_S                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component; 

component INBUF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PAD_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      PAD                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component INV
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component INVA
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component JKF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF2C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF2D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF3D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKF4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_negedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component JKFPC
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PRE_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_J_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_J_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_K_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_K_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_PRE_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_PRE_CLK_negedge_posedge              :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_PRE_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_J                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_K                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PRE                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component MAJ3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MX2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MX2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MX2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MX2C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MX4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D3_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D2_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MXC1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component MXT
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S0B_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S0A_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D3_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D2_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0A                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0B                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0A                            :	in    STD_ULOGIC;
      S0B                            :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND4C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NAND4D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR4C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component NOR4D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA1C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OA5
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OAI1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OAI2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OAI3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OAI3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR3B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR3C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR4B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR4C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OR4D
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component OUTBUF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component TA153
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_EN_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C3_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C2_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_C0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      C0                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      C3                             :	in    STD_ULOGIC;
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component TA157
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_EN_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component TRIBUFF
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_PAD                      :	VitalDelayType01z := 
               (0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns);
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component VCC
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True);

   port(
      Y                              :	out   STD_ULOGIC := '1');
end component; 

component XA1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component XA1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component XNOR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component XNORb
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);

   -- real names
   -- REAL_NAME of XNORb is "XNOR"
end component; 

component XO1
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component XO1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component XOR2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component XORb
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);

   -- real names
   -- REAL_NAME of XORb is "XOR"
end component; 

component AALUF
    port(A, B : in std_logic;  N2, N3 : out std_logic;  S0, S1, 
        S2, S3 : in std_logic;  XO : out std_logic) ;
end component;
component CNT4A
    port(CI, CLK, CLR : in std_logic;  CO : out std_logic;  LD, 
        P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out 
        std_logic) ;
end component;
component CNT4B
    port(CI, CLK, CLR : in std_logic;  CO : out std_logic;  LD, 
        P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out 
        std_logic) ;
end component;
component COMP4
    port(A0, A1, A2, A3 : in std_logic;  AEB, AGB, ALB : out 
        std_logic;  B0, B1, B2, B3 : in std_logic) ;
end component;
component COMP4A
    port(A0, A1, A2, A3 : in std_logic;  AEB, AGB, ALB : out 
        std_logic;  B0, B1, B2, B3 : in std_logic) ;
end component;
component CPROPA
    port(A, B, CN : in std_logic;  CO1, CO2 : out std_logic;  D : 
        in std_logic;  S : out std_logic) ;
end component;
component CPROPB
    port(A, B, CN : in std_logic;  CO1, CO2 : out std_logic;  D : 
        in std_logic;  S : out std_logic) ;
end component;
component CSA1
    port(A0, B0 : in std_logic;  C0, C1, S00, S10 : out std_logic
        ) ;
end component;
component CSA2
    port(A0, A1, B0, B1 : in std_logic;  C0, C1, S00, S01, S10, 
        S11 : out std_logic) ;
end component;
component CSA2A
    port(A0, A1, B0, B1 : in std_logic;  C0, C1, S00, S01, S10, 
        S11 : out std_logic) ;
end component;
component CSA3
    port(A0, A1, A2, B0, B1, B2 : in std_logic;  C0, C1, S00, S01, 
        S02, S10, S11, S12 : out std_logic) ;
end component;
component CSA3B
    port(A0, A1, A2, B0, B1, B2 : in std_logic;  C0, C1, S00, S01, 
        S02, S10, S11, S12 : out std_logic) ;
end component;
component CSA4
    port(A0, A1, A2, A3, B0, B1, B2, B3 : in std_logic;  C0, C1, 
        S00, S01, S02, S03, S10, S11, S12, S13 : out std_logic) ;
end component;
component CSA5
    port(A0, A1, A2, A3, A4, B0, B1, B2, B3, B4 : in std_logic;  
        C0, C1, S00, S01, S02, S03, S04, S10, S11, S12, S13, S14 : 
        out std_logic) ;
end component;
component DEC2X4
    port(A, B : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic) ;
end component;
component DEC2X4A
    port(A, B : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic) ;
end component;
component DEC3X8
    port(A, B, C : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : 
        out std_logic) ;
end component;
component DEC3X8A
    port(A, B, C : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : 
        out std_logic) ;
end component;
component DEC4X16A
    port(A, B, C, D : in std_logic;  Y0, Y1, Y10, Y11, Y12, Y13, 
        Y14, Y15, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9 : out std_logic
        ) ;
end component;
component DECE2X4
    port(A, B, E : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic
        ) ;
end component;
component DECE2X4A
    port(A, B, E : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic
        ) ;
end component;
component DECE3X8
    port(A, B, C, E : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, 
        Y7 : out std_logic) ;
end component;
component DECE3X8A
    port(A, B, C, E : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, 
        Y7 : out std_logic) ;
end component;
component DLC8A
    port(CLR, D0, D1, D2, D3, D4, D5, D6, D7, G : in std_logic;  
        Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic) ;
end component;
component DLE8
    port(D0, D1, D2, D3, D4, D5, D6, D7, E, G : in std_logic;  Q0, 
        Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic) ;
end component;
component FADD11A
    port(A0, A1, A10, A2, A3, A4, A5, A6, A7, A8, A9, B0, B1, B10, 
        B2, B3, B4, B5, B6, B7, B8, B9, CIN : in std_logic;  S0, 
        S1, S10, S2, S3, S4, S5, S6, S7, S8, S9 : out std_logic
        ) ;
end component;
component ICMP4
    port(A0, A1, A2, A3 : in std_logic;  AEB : out std_logic;  B0, 
        B1, B2, B3 : in std_logic) ;
end component;
component INV3
    port(I0, I1, I2 : in std_logic;  O0, O1, O2 : out std_logic
        ) ;
end component;
component INV4
    port(I0, I1, I2, I3 : in std_logic;  O0, O1, O2, O3 : out 
        std_logic) ;
end component;
component MCMPC2
    port(A0, A1 : in std_logic;  AEB : out std_logic;  AEBI : in 
        std_logic;  AGB : out std_logic;  AGBI : in std_logic;  
        ALB : out std_logic;  ALBI, B0, B1 : in std_logic) ;
end component;
component MCMPC4
    port(A0, A1, A2, A3 : in std_logic;  AEB : out std_logic;  
        AEBI : in std_logic;  AGB : out std_logic;  AGBI : in 
        std_logic;  ALB : out std_logic;  ALBI, B0, B1, B2, B3 : 
        in std_logic) ;
end component;
component MX16
    port(D0, D1, D10, D11, D12, D13, D14, D15, D2, D3, D4, D5, D6, 
        D7, D8, D9, S0, S1, S2, S3 : in std_logic;  Y : out 
        std_logic) ;
end component;
component MX8
    port(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2 : in 
        std_logic;  Y : out std_logic) ;
end component;
component MX8A
    port(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2 : in 
        std_logic;  Y : out std_logic) ;
end component;
component NMM
    port(P0, P1, P2, P3, P4, P5, P6, P7 : out std_logic;  X0, X1, 
        X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end component;
component NMMHH
    port(P10, P11, P12, P13, P14, P15, P8, P9 : out std_logic;  
        X0, X1, X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end component;
component NMMHL
    port(P10, P11, P4, P5, P6, P7, P8, P9 : out std_logic;  X0, 
        X1, X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end component;
component NMMLH
    port(P10, P11, P4, P5, P6, P7, P8, P9 : out std_logic;  X0, 
        X1, X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end component;
component REGE8A
    port(CLK, CLR, D0, D1, D2, D3, D4, D5, D6, D7, E, PRE : in 
        std_logic;  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out 
        std_logic) ;
end component;
component REGE8B
    port(CLK, CLR, D0, D1, D2, D3, D4, D5, D6, D7, E, PRE : in 
        std_logic;  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out 
        std_logic) ;
end component;
component SREG4A
    port(CLK, CLR, P0, P1, P2, P3, SHLD, SI : in std_logic;  SO : 
        out std_logic) ;
end component;
component SREG8A
    port(CLK, CLR, P0, P1, P2, P3, P4, P5, P6, P7, SHLD, SI : in 
        std_logic;  SO : out std_logic) ;
end component;
component TA138
    port(A, B, C, G1, G2A, G2B : in std_logic;  Y0, Y1, Y2, Y3, 
        Y4, Y5, Y6, Y7 : out std_logic) ;
end component;
component TA161
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
end component;
component TA164
    port(A, B, CLK, CLR : in std_logic;  QA, QB, QC, QD, QE, QF, 
        QG, QH : out std_logic) ;
end component;
component TA169
    port(A, B, C, CLK, D, ENP, ENT, LD : in std_logic;  QA, QB, 
        QC, QD, RCO : out std_logic;  UD : in std_logic) ;
end component;
component TA181
    port(A0, A1, A2, A3 : in std_logic;  AEQB : out std_logic;  
        B0, B1, B2, B3, CI : in std_logic;  CO, F0, F1, F2, F3, G : 
        out std_logic;  M : in std_logic;  P : out std_logic;  S0, 
        S1, S2, S3 : in std_logic) ;
end component;
component TA194
    port(A, B, C, CLK, CLR, D : in std_logic;  QA, QB, QC, QD : 
        out std_logic;  S0, S1, SLSI, SRSI : in std_logic) ;
end component;
component TA195
    port(A, B, C, CLK, CLR, D, J, K : in std_logic;  QA, QB, QC, 
        QD, QDN : out std_logic;  SHLD : in std_logic) ;
end component;
component TA269
    port(A, B, C, CLK, D, E, ENP, ENT, F, G, H, LD : in std_logic
        ;  QA, QB, QC, QD, QE, QF, QG, QH, RCO : out std_logic;  
        UD : in std_logic) ;
end component;
component TA273
    port(CLK, CLR, D1, D2, D3, D4, D5, D6, D7, D8 : in std_logic
        ;  Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8 : out std_logic) ;
end component;
component TA280
    port(A, B, C, D, E : in std_logic;  EVEN : out std_logic;  F, 
        G, H, I : in std_logic;  ODD : out std_logic) ;
end component;
component UDCNT4A
    port(CI, CLK : in std_logic;  CO : out std_logic;  LD, P0, P1, 
        P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out std_logic;  
        UD : in std_logic) ;
end component;
component WTREE5
    port(A, B, C : in std_logic;  CON : out std_logic;  DN, EN : 
        in std_logic;  S0, S1 : out std_logic) ;
end component;
end COMPONENTS;
----- CELL BUF -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity BUF is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF : entity is TRUE;
end BUF;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library act1;
use act1.VTABLES.all;
architecture VITAL_ACT of BUF is
   attribute VITAL_LEVEL1 of VITAL_ACT : architecture is TRUE;

   SIGNAL A_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (A_ipd, A, tipd_A);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (A_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS Y_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE Y_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      Y_zd := TO_X01(A_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => Y,
       GlitchData => Y_GlitchData,
       OutSignalName => "Y",
       OutTemp => Y_zd,
       Paths => (0 => (A_ipd'last_event, tpd_A_Y, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL_ACT;

configuration CFG_BUF_VITAL of BUF is
   for VITAL_ACT
   end for;
end CFG_BUF_VITAL;


----- CELL TA153 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity TA153 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_EN_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C3_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C2_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_C0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      C0                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      C3                             :	in    STD_ULOGIC;
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of TA153 : entity is TRUE;
end TA153;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
--library act1;
--use act1.VTABLES.all;
architecture VITAL_ACT of TA153 is
   attribute VITAL_LEVEL1 of VITAL_ACT : architecture is TRUE;

   SIGNAL C0_ipd	 : STD_ULOGIC := 'X';
   SIGNAL C1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL C2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL C3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL A_ipd	 : STD_ULOGIC := 'X';
   SIGNAL B_ipd	 : STD_ULOGIC := 'X';
   SIGNAL EN_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (C0_ipd, C0, tipd_C0);
   VitalWireDelay (C1_ipd, C1, tipd_C1);
   VitalWireDelay (C2_ipd, C2, tipd_C2);
   VitalWireDelay (C3_ipd, C3, tipd_C3);
   VitalWireDelay (A_ipd, A, tipd_A);
   VitalWireDelay (B_ipd, B, tipd_B);
   VitalWireDelay (EN_ipd, EN, tipd_EN);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (C0_ipd, C1_ipd, C2_ipd, C3_ipd, A_ipd, B_ipd, EN_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS Y_zd : STD_LOGIC is Results(1);
   VARIABLE MUX1_Out, MUX2_Out, MUX3_Out : std_ulogic;

   -- output glitch detection variables
   VARIABLE Y_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      --Y_zd :=
      -- ((((NOT B_ipd)) AND (C1_ipd) AND (A_ipd)) OR (((NOT B_ipd)) AND
      --   (C0_ipd) AND ((NOT A_ipd))) OR ((B_ipd) AND (C2_ipd) AND ((NOT
      --   A_ipd))) OR ((B_ipd) AND (C3_ipd) AND (A_ipd))) AND ((NOT EN_ipd));
      MUX1_Out := VitalMUX2(C1_ipd, C0_ipd, A_ipd);
      MUX2_Out := VitalMUX2(C3_ipd, C2_ipd, A_ipd);
      MUX3_Out := VitalMUX2(MUX2_Out, MUX1_Out, B_ipd);
      Y_zd := VitalAND2((NOT EN_ipd), MUX3_Out);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => Y,
       GlitchData => Y_GlitchData,
       OutSignalName => "Y",
       OutTemp => Y_zd,
       Paths => (0 => (B_ipd'last_event, tpd_B_Y, TRUE),
                 1 => (A_ipd'last_event, tpd_A_Y, TRUE),
                 2 => (EN_ipd'last_event, tpd_EN_Y, TRUE),
                 3 => (C3_ipd'last_event, tpd_C3_Y, TRUE),
                 4 => (C2_ipd'last_event, tpd_C2_Y, TRUE),
                 5 => (C1_ipd'last_event, tpd_C1_Y, TRUE),
                 6 => (C0_ipd'last_event, tpd_C0_Y, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL_ACT;

configuration CFG_TA153_VITAL of TA153 is
   for VITAL_ACT
   end for;
end CFG_TA153_VITAL;


----- CELL TA157 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity TA157 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_EN_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of TA157 : entity is TRUE;
end TA157;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
--library act1;
--use act1.VTABLES.all;
architecture VITAL_ACT of TA157 is
   attribute VITAL_LEVEL1 of VITAL_ACT : architecture is TRUE;

   SIGNAL A_ipd	 : STD_ULOGIC := 'X';
   SIGNAL B_ipd	 : STD_ULOGIC := 'X';
   SIGNAL S_ipd	 : STD_ULOGIC := 'X';
   SIGNAL EN_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (A_ipd, A, tipd_A);
   VitalWireDelay (B_ipd, B, tipd_B);
   VitalWireDelay (S_ipd, S, tipd_S);
   VitalWireDelay (EN_ipd, EN, tipd_EN);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (A_ipd, B_ipd, S_ipd, EN_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS Y_zd : STD_LOGIC is Results(1);
   VARIABLE MUX1_Out : std_ulogic;

   -- output glitch detection variables
   VARIABLE Y_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      --Y_zd :=
      -- ((S_ipd) AND ((NOT EN_ipd)) AND (B_ipd)) OR (((NOT S_ipd)) AND ((NOT
      --   EN_ipd)) AND (A_ipd));
      MUX1_Out := VitalMUX2(B_ipd, A_ipd, S_ipd);
      Y_zd := VitalAND2((NOT EN_ipd), MUX1_Out);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => Y,
       GlitchData => Y_GlitchData,
       OutSignalName => "Y",
       OutTemp => Y_zd,
       Paths => (0 => (S_ipd'last_event, tpd_S_Y, TRUE),
                 1 => (EN_ipd'last_event, tpd_EN_Y, TRUE),
                 2 => (B_ipd'last_event, tpd_B_Y, TRUE),
                 3 => (A_ipd'last_event, tpd_A_Y, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL_ACT;

configuration CFG_TA157_VITAL of TA157 is
   for VITAL_ACT
   end for;
end CFG_TA157_VITAL;


----- CELL XNORb -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity XNORb is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of XNORb : entity is TRUE;

   -- real names
   -- REAL_NAME of XNORb is "XNOR"
end XNORb;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library act1;
use act1.VTABLES.all;
architecture VITAL_ACT of XNORb is
   attribute VITAL_LEVEL1 of VITAL_ACT : architecture is TRUE;

   SIGNAL A_ipd	 : STD_ULOGIC := 'X';
   SIGNAL B_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (A_ipd, A, tipd_A);
   VitalWireDelay (B_ipd, B, tipd_B);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (A_ipd, B_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS Y_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE Y_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      Y_zd := (NOT ((B_ipd) XOR (A_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => Y,
       GlitchData => Y_GlitchData,
       OutSignalName => "Y",
       OutTemp => Y_zd,
       Paths => (0 => (B_ipd'last_event, tpd_B_Y, TRUE),
                 1 => (A_ipd'last_event, tpd_A_Y, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL_ACT;

configuration CFG_XNORb_VITAL of XNORb is
   for VITAL_ACT
   end for;
end CFG_XNORb_VITAL;


----- CELL XORb -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity XORb is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of XORb : entity is TRUE;

   -- real names
   -- REAL_NAME of XORb is "XOR"
end XORb;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library act1;
use act1.VTABLES.all;
architecture VITAL_ACT of XORb is
   attribute VITAL_LEVEL1 of VITAL_ACT : architecture is TRUE;

   SIGNAL A_ipd	 : STD_ULOGIC := 'X';
   SIGNAL B_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (A_ipd, A, tipd_A);
   VitalWireDelay (B_ipd, B, tipd_B);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (A_ipd, B_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS Y_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE Y_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      Y_zd := (B_ipd) XOR (A_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => Y,
       GlitchData => Y_GlitchData,
       OutSignalName => "Y",
       OutTemp => Y_zd,
       Paths => (0 => (B_ipd'last_event, tpd_B_Y, TRUE),
                 1 => (A_ipd'last_event, tpd_A_Y, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL_ACT;

configuration CFG_XORb_VITAL of XORb is
   for VITAL_ACT
   end for;
end CFG_XORb_VITAL;


library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity AALUF is 
    port(A, B : in std_logic;  N2, N3 : out std_logic;  S0, S1, 
        S2, S3 : in std_logic;  XO : out std_logic) ;
end AALUF;


architecture DEF_ARCH of  AALUF is

    component AO4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AO5A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal N2_1_net, N3_1_net : std_logic ;
    begin   

    N2 <= N2_1_net;
    
    N3 <= N3_1_net;
    
    G1 : AO4A
   port map(A => B, B => S2, C => A, D => S3, Y => N2_1_net);
    G2 : AO5A
   port map(A => B, B => S1, C => S0, D => A, Y => N3_1_net);
    G3 : XOR2
   port map(A => N2_1_net, B => N3_1_net, Y => XO);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CNT4A is 
    port(CI, CLK, CLR : in std_logic;  CO : out std_logic;  LD, 
        P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out 
        std_logic) ;
end CNT4A;


architecture DEF_ARCH of  CNT4A is

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N85, A0, A1, 
        A2, A3, E1, E2, E3 : std_logic ;
    begin   

    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    Q2 <= Q2_1_net;
    
    Q3 <= Q3_1_net;
    
    G8 : AND3
   port map(A => X1N85, B => Q3_1_net, C => CI, Y => CO);
    G7 : AND3
   port map(A => Q2_1_net, B => Q1_1_net, C => Q0_1_net, Y => 
        X1N85);
    G5 : NAND3
   port map(A => Q2_1_net, B => Q1_1_net, C => Q0_1_net, Y => E3);
    F3 : DFMB
   port map(A => A3, B => P3, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q3_1_net);
    G2 : AX1
   port map(A => E1, B => CI, C => Q1_1_net, Y => A1);
    G1 : INV
   port map(A => Q0_1_net, Y => E1);
    F2 : DFMB
   port map(A => A2, B => P2, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q2_1_net);
    F1 : DFMB
   port map(A => A1, B => P1, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q1_1_net);
    G4 : AX1
   port map(A => E2, B => CI, C => Q2_1_net, Y => A2);
    G6 : AX1
   port map(A => E3, B => CI, C => Q3_1_net, Y => A3);
    G0 : XOR2
   port map(A => CI, B => Q0_1_net, Y => A0);
    F0 : DFMB
   port map(A => A0, B => P0, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q0_1_net);
    G3 : NAND2
   port map(A => Q1_1_net, B => Q0_1_net, Y => E2);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CNT4B is 
    port(CI, CLK, CLR : in std_logic;  CO : out std_logic;  LD, 
        P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out 
        std_logic) ;
end CNT4B;


architecture DEF_ARCH of  CNT4B is

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N25, X1N30, 
        X1N31, X1N46, X1N48, X1N65, VCC_1_net : std_logic ;
    begin   

    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    Q2 <= Q2_1_net;
    
    Q3 <= Q3_1_net;
    
    VCC_2_net : VCC port map(Y => VCC_1_net);
    G5 : AND3
   port map(A => Q2_1_net, B => Q1_1_net, C => Q0_1_net, Y => 
        X1N65);
    F3 : DFMB
   port map(A => X1N30, B => P3, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q3_1_net);
    G2 : AND2
   port map(A => Q0_1_net, B => Q1_1_net, Y => X1N46);
    G1 : AX1
   port map(A => CI, B => Q0_1_net, C => Q1_1_net, Y => X1N25);
    F2 : DFMB
   port map(A => X1N48, B => P2, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q2_1_net);
    F1 : DFMB
   port map(A => X1N25, B => P1, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q1_1_net);
    G4 : AX1
   port map(A => CI, B => X1N65, C => Q3_1_net, Y => X1N30);
    G6 : NAND3A
   port map(A => CI, B => Q3_1_net, C => X1N65, Y => CO);
    G0 : AX1
   port map(A => CI, B => VCC_1_net, C => Q0_1_net, Y => X1N31);
    F0 : DFMB
   port map(A => X1N31, B => P0, S => LD, CLR => CLR, CLK => CLK, 
        Q => Q0_1_net);
    G3 : AX1
   port map(A => CI, B => X1N46, C => Q2_1_net, Y => X1N48);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity COMP4 is 
    port(A0, A1, A2, A3 : in std_logic;  AEB, AGB, ALB : out 
        std_logic;  B0, B1, B2, B3 : in std_logic) ;
end COMP4;


architecture DEF_ARCH of  COMP4 is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NAND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N102, X1N103, X1N104, X1N108, X1N16, X1N20, X1N36, 
        X1N39, X1N44, X1N64, X1N67, X1N69, X1N78, X1N80, X1N83, 
        X1N90, X1N95, X1N97 : std_logic ;
    begin   

    G11 : XOR2
   port map(A => A2, B => B2, Y => X1N103);
    G15 : AND2B
   port map(A => X1N102, B => X1N80, Y => X1N83);
    G20 : OR4A
   port map(A => X1N20, B => X1N39, C => X1N67, D => X1N69, Y => 
        ALB);
    G17 : AND3C
   port map(A => X1N102, B => X1N103, C => X1N44, Y => X1N67);
    G16 : AND4C
   port map(A => X1N102, B => X1N103, C => X1N104, D => X1N64, 
        Y => X1N69);
    G7 : NAND2A
   port map(A => A2, B => B2, Y => X1N36);
    G5 : AND2A
   port map(A => A0, B => B0, Y => X1N64);
    G12 : XOR2
   port map(A => A3, B => B3, Y => X1N102);
    G2 : NAND2A
   port map(A => B1, B => A1, Y => X1N90);
    G13 : AND4C
   port map(A => X1N102, B => X1N103, C => X1N104, D => X1N97, 
        Y => X1N95);
    G6 : NAND2A
   port map(A => A1, B => B1, Y => X1N44);
    G9 : XNOR2
   port map(A => A0, B => B0, Y => X1N16);
    G14 : AND3C
   port map(A => X1N102, B => X1N103, C => X1N90, Y => X1N108);
    G3 : NAND2A
   port map(A => B2, B => A2, Y => X1N80);
    G10 : XOR2
   port map(A => A1, B => B1, Y => X1N104);
    G4 : NAND2A
   port map(A => B3, B => A3, Y => X1N78);
    G21 : AND4C
   port map(A => X1N102, B => X1N103, C => X1N104, D => X1N16, 
        Y => AEB);
    G1 : AND2A
   port map(A => B0, B => A0, Y => X1N97);
    G18 : AND2B
   port map(A => X1N102, B => X1N36, Y => X1N39);
    G8 : NAND2A
   port map(A => A3, B => B3, Y => X1N20);
    G19 : OR4A
   port map(A => X1N78, B => X1N83, C => X1N108, D => X1N95, Y => 
        AGB);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity COMP4A is 
    port(A0, A1, A2, A3 : in std_logic;  AEB, AGB, ALB : out 
        std_logic;  B0, B1, B2, B3 : in std_logic) ;
end COMP4A;


architecture DEF_ARCH of  COMP4A is

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal X1N102, X1N103, X1N104, X1N108, X1N16, X1N20, X1N36, 
        X1N39, X1N44, X1N64, X1N67, X1N69, X1N78, X1N80, X1N83, 
        X1N90, X1N95, X1N97 : std_logic ;
    begin   

    G11 : AND2A
   port map(A => B0, B => A0, Y => X1N97);
    G0 : XOR2
   port map(A => A3, B => B3, Y => X1N102);
    G15 : AND2B
   port map(A => X1N102, B => X1N80, Y => X1N83);
    G20 : OR4A
   port map(A => X1N78, B => X1N83, C => X1N108, D => X1N95, Y => 
        AGB);
    G17 : AND4C
   port map(A => X1N102, B => X1N103, C => X1N104, D => X1N97, 
        Y => X1N95);
    G16 : AND3C
   port map(A => X1N102, B => X1N103, C => X1N90, Y => X1N108);
    G7 : AND2A
   port map(A => A0, B => B0, Y => X1N64);
    G5 : NAND2A
   port map(A => A2, B => B2, Y => X1N36);
    G12 : AND2B
   port map(A => X1N102, B => X1N36, Y => X1N39);
    G2 : XOR2
   port map(A => A1, B => B1, Y => X1N104);
    G13 : AND3C
   port map(A => X1N102, B => X1N103, C => X1N44, Y => X1N67);
    G6 : NAND2A
   port map(A => A1, B => B1, Y => X1N44);
    G9 : NAND2A
   port map(A => B2, B => A2, Y => X1N80);
    G14 : AND4C
   port map(A => X1N102, B => X1N103, C => X1N104, D => X1N64, 
        Y => X1N69);
    G3 : XNOR2
   port map(A => A0, B => B0, Y => X1N16);
    G10 : NAND2A
   port map(A => B1, B => A1, Y => X1N90);
    G4 : NAND2A
   port map(A => A3, B => B3, Y => X1N20);
    G1 : XOR2
   port map(A => A2, B => B2, Y => X1N103);
    G18 : NAND4C
   port map(A => X1N102, B => X1N103, C => X1N104, D => X1N16, 
        Y => AEB);
    G8 : NAND2A
   port map(A => B3, B => A3, Y => X1N78);
    G19 : OR4A
   port map(A => X1N20, B => X1N39, C => X1N67, D => X1N69, Y => 
        ALB);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CPROPA is 
    port(A, B, CN : in std_logic;  CO1, CO2 : out std_logic;  D : 
        in std_logic;  S : out std_logic) ;
end CPROPA;


architecture DEF_ARCH of  CPROPA is

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N3, GND_1_net : std_logic ;
    begin   

    GND_2_net : GND port map(Y => GND_1_net);
    A1 : FA1A
   port map(A => A, B => D, CI => B, CO => X1N3, S => S);
    A2 : FA1A
   port map(A => CN, B => GND_1_net, CI => X1N3, CO => CO2, S => 
        CO1);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CPROPB is 
    port(A, B, CN : in std_logic;  CO1, CO2 : out std_logic;  D : 
        in std_logic;  S : out std_logic) ;
end CPROPB;


architecture DEF_ARCH of  CPROPB is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N16, X1N24, GND_1_net : std_logic ;
    begin   

    GND_2_net : GND port map(Y => GND_1_net);
    G1 : INV
   port map(A => D, Y => X1N24);
    A1 : FA1B
   port map(A => A, B => B, CI => X1N24, CO => X1N16, S => S);
    A2 : FA1A
   port map(A => CN, B => GND_1_net, CI => X1N16, CO => CO2, S => 
        CO1);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA1 is 
    port(A0, B0 : in std_logic;  C0, C1, S00, S10 : out std_logic
        ) ;
end CSA1;


architecture DEF_ARCH of  CSA1 is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal GND_1_net, VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A1 : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => C1, S => S10);
    A2 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => C0, S => S00);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA2 is 
    port(A0, A1, B0, B1 : in std_logic;  C0, C1, S00, S01, S10, 
        S11 : out std_logic) ;
end CSA2;


architecture DEF_ARCH of  CSA2 is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, GND_1_net, VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A2 : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => C1, S => S11);
    A4 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => C0, S => S01);
    A3 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA2A is 
    port(A0, A1, B0, B1 : in std_logic;  C0, C1, S00, S01, S10, 
        S11 : out std_logic) ;
end CSA2A;


architecture DEF_ARCH of  CSA2A is

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, GND_1_net, VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A1_1_inst : FA1A
   port map(A => B0, B => A0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A2 : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => C1, S => S11);
    A4 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => C0, S => S01);
    A3 : FA1A
   port map(A => B0, B => A0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA3 is 
    port(A0, A1, A2, B0, B1, B2 : in std_logic;  C0, C1, S00, S01, 
        S02, S10, S11, S12 : out std_logic) ;
end CSA3;


architecture DEF_ARCH of  CSA3 is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, X1N30, X1N34, GND_1_net, VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A6 : FA1B
   port map(A => A2, B => B2, CI => X1N34, CO => C0, S => S02);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A2_1_inst : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => X1N30, S => S11);
    A5 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => X1N34, S => S01);
    A4 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
    A3 : FA1B
   port map(A => A2, B => B2, CI => X1N30, CO => C1, S => S12);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA3B is 
    port(A0, A1, A2, B0, B1, B2 : in std_logic;  C0, C1, S00, S01, 
        S02, S10, S11, S12 : out std_logic) ;
end CSA3B;


architecture DEF_ARCH of  CSA3B is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, X1N30, X1N34, GND_1_net, VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A6 : FA1B
   port map(A => A2, B => B2, CI => X1N34, CO => C0, S => S02);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A2_1_inst : FA1A
   port map(A => B1, B => A1, CI => X1N20, CO => X1N30, S => S11);
    A5 : FA1A
   port map(A => B1, B => A1, CI => X1N21, CO => X1N34, S => S01);
    A4 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
    A3 : FA1B
   port map(A => A2, B => B2, CI => X1N30, CO => C1, S => S12);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA4 is 
    port(A0, A1, A2, A3, B0, B1, B2, B3 : in std_logic;  C0, C1, 
        S00, S01, S02, S03, S10, S11, S12, S13 : out std_logic) ;
end CSA4;


architecture DEF_ARCH of  CSA4 is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, X1N30, X1N34, X1N44, X1N51, GND_1_net, 
        VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A6 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => X1N34, S => S01);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A2_1_inst : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => X1N30, S => S11);
    A5 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
    A4 : FA1B
   port map(A => A3, B => B3, CI => X1N44, CO => C1, S => S13);
    A7 : FA1B
   port map(A => A2, B => B2, CI => X1N34, CO => X1N51, S => S02);
    A3_1_inst : FA1B
   port map(A => A2, B => B2, CI => X1N30, CO => X1N44, S => S12);
    A8 : FA1B
   port map(A => A3, B => B3, CI => X1N51, CO => C0, S => S03);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity CSA5 is 
    port(A0, A1, A2, A3, A4, B0, B1, B2, B3, B4 : in std_logic;  
        C0, C1, S00, S01, S02, S03, S04, S10, S11, S12, S13, S14 : 
        out std_logic) ;
end CSA5;


architecture DEF_ARCH of  CSA5 is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, X1N30, X1N34, X1N44, X1N51, X1N64, X1N66, 
        GND_1_net, VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A6 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
    A10 : FA1B
   port map(A => A4, B => B4, CI => X1N64, CO => C0, S => S04);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A9 : FA1B
   port map(A => A3, B => B3, CI => X1N51, CO => X1N64, S => S03);
    A2_1_inst : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => X1N30, S => S11);
    A5 : FA1B
   port map(A => A4, B => B4, CI => X1N66, CO => C1, S => S14);
    A4_1_inst : FA1B
   port map(A => A3, B => B3, CI => X1N44, CO => X1N66, S => S13);
    A7 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => X1N34, S => S01);
    A3_1_inst : FA1B
   port map(A => A2, B => B2, CI => X1N30, CO => X1N44, S => S12);
    A8 : FA1B
   port map(A => A2, B => B2, CI => X1N34, CO => X1N51, S => S02);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DEC2X4 is 
    port(A, B : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic) ;
end DEC2X4;


architecture DEF_ARCH of  DEC2X4 is

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : AND2A
   port map(A => B, B => A, Y => Y1);
    G0 : NOR2
   port map(A => B, B => A, Y => Y0);
    G2 : AND2A
   port map(A => A, B => B, Y => Y2);
    G3 : AND2
   port map(A => B, B => A, Y => Y3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DEC2X4A is 
    port(A, B : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic) ;
end DEC2X4A;


architecture DEF_ARCH of  DEC2X4A is

    component NAND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : NAND2A
   port map(A => B, B => A, Y => Y1);
    G0 : OR2
   port map(A => B, B => A, Y => Y0);
    G2 : NAND2A
   port map(A => A, B => B, Y => Y2);
    G3 : NAND2
   port map(A => B, B => A, Y => Y3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DEC3X8 is 
    port(A, B, C : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : 
        out std_logic) ;
end DEC3X8;


architecture DEF_ARCH of  DEC3X8 is

    component AND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NOR3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G6 : AND3A
   port map(A => A, B => C, C => B, Y => Y6);
    G1 : AND3B
   port map(A => C, B => B, C => A, Y => Y1);
    G0 : NOR3
   port map(A => C, B => B, C => A, Y => Y0);
    G2 : AND3B
   port map(A => C, B => A, C => B, Y => Y2);
    G5 : AND3A
   port map(A => B, B => C, C => A, Y => Y5);
    G4 : AND3B
   port map(A => B, B => A, C => C, Y => Y4);
    G7 : AND3
   port map(A => C, B => B, C => A, Y => Y7);
    G3 : AND3A
   port map(A => C, B => B, C => A, Y => Y3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DEC3X8A is 
    port(A, B, C : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : 
        out std_logic) ;
end DEC3X8A;


architecture DEF_ARCH of  DEC3X8A is

    component NAND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G6 : NAND3A
   port map(A => A, B => C, C => B, Y => Y6);
    G1 : NAND3B
   port map(A => C, B => B, C => A, Y => Y1);
    G0 : OR3
   port map(A => C, B => B, C => A, Y => Y0);
    G2 : NAND3B
   port map(A => C, B => A, C => B, Y => Y2);
    G5 : NAND3A
   port map(A => B, B => C, C => A, Y => Y5);
    G4 : NAND3B
   port map(A => B, B => A, C => C, Y => Y4);
    G7 : NAND3
   port map(A => C, B => B, C => A, Y => Y7);
    G3 : NAND3A
   port map(A => C, B => B, C => A, Y => Y3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DEC4X16A is 
    port(A, B, C, D : in std_logic;  Y0, Y1, Y10, Y11, Y12, Y13, 
        Y14, Y15, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9 : out std_logic
        ) ;
end DEC4X16A;


architecture DEF_ARCH of  DEC4X16A is

    component OR4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal AINV, BINV, CINV, DINV : std_logic ;
    begin   

    G11 : OR4
   port map(A => DINV, B => C, C => B, D => A, Y => Y8);
    G0 : INV
   port map(A => D, Y => DINV);
    G15 : OR4
   port map(A => D, B => C, C => BINV, D => AINV, Y => Y3);
    G17 : OR4
   port map(A => D, B => CINV, C => B, D => AINV, Y => Y5);
    G16 : OR4
   port map(A => D, B => CINV, C => B, D => A, Y => Y4);
    G7 : OR4
   port map(A => DINV, B => CINV, C => B, D => A, Y => Y12);
    G5 : OR4
   port map(A => DINV, B => CINV, C => BINV, D => A, Y => Y14);
    G12 : OR4
   port map(A => D, B => C, C => B, D => A, Y => Y0);
    G2 : INV
   port map(A => B, Y => BINV);
    G13 : OR4
   port map(A => D, B => C, C => B, D => AINV, Y => Y1);
    G6 : OR4
   port map(A => DINV, B => CINV, C => B, D => AINV, Y => Y13);
    G9 : OR4
   port map(A => DINV, B => C, C => BINV, D => A, Y => Y10);
    G14 : OR4
   port map(A => D, B => C, C => BINV, D => A, Y => Y2);
    G3 : INV
   port map(A => A, Y => AINV);
    G10 : OR4
   port map(A => DINV, B => C, C => B, D => AINV, Y => Y9);
    G4 : OR4
   port map(A => DINV, B => CINV, C => BINV, D => AINV, Y => Y15);
    G1 : INV
   port map(A => C, Y => CINV);
    G18 : OR4
   port map(A => D, B => CINV, C => BINV, D => A, Y => Y6);
    G8 : OR4
   port map(A => DINV, B => C, C => BINV, D => AINV, Y => Y11);
    G19 : OR4
   port map(A => D, B => CINV, C => BINV, D => AINV, Y => Y7);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DECE2X4 is 
    port(A, B, E : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic
        ) ;
end DECE2X4;


architecture DEF_ARCH of  DECE2X4 is

    component AND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : AND3A
   port map(A => B, B => A, C => E, Y => Y1);
    G0 : AND3B
   port map(A => B, B => A, C => E, Y => Y0);
    G2 : AND3A
   port map(A => A, B => B, C => E, Y => Y2);
    G3 : AND3
   port map(A => B, B => A, C => E, Y => Y3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DECE2X4A is 
    port(A, B, E : in std_logic;  Y0, Y1, Y2, Y3 : out std_logic
        ) ;
end DECE2X4A;


architecture DEF_ARCH of  DECE2X4A is

    component NAND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : NAND3A
   port map(A => B, B => A, C => E, Y => Y1);
    G0 : NAND3B
   port map(A => B, B => A, C => E, Y => Y0);
    G2 : NAND3A
   port map(A => A, B => B, C => E, Y => Y2);
    G3 : NAND3
   port map(A => A, B => B, C => E, Y => Y3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DECE3X8 is 
    port(A, B, C, E : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, 
        Y7 : out std_logic) ;
end DECE3X8;


architecture DEF_ARCH of  DECE3X8 is

    component NOR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal AINV, BINV, CINV : std_logic ;
    begin   

    G8 : NOR4A
   port map(A => E, B => AINV, C => B, D => CINV, Y => Y5);
    G7 : NOR4A
   port map(A => E, B => A, C => B, D => CINV, Y => Y4);
    G5 : NOR4A
   port map(A => E, B => A, C => BINV, D => C, Y => Y2);
    G2 : INV
   port map(A => A, Y => AINV);
    G10 : NOR4A
   port map(A => E, B => AINV, C => BINV, D => CINV, Y => Y7);
    G1 : INV
   port map(A => B, Y => BINV);
    G9 : NOR4A
   port map(A => E, B => A, C => BINV, D => CINV, Y => Y6);
    G4 : NOR4A
   port map(A => E, B => AINV, C => B, D => C, Y => Y1);
    G6 : NOR4A
   port map(A => E, B => AINV, C => BINV, D => C, Y => Y3);
    G0 : INV
   port map(A => C, Y => CINV);
    G3 : NOR4A
   port map(A => E, B => A, C => B, D => C, Y => Y0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DECE3X8A is 
    port(A, B, C, E : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, 
        Y7 : out std_logic) ;
end DECE3X8A;


architecture DEF_ARCH of  DECE3X8A is

    component OR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal AINV, BINV, CINV : std_logic ;
    begin   

    G8 : OR4A
   port map(A => E, B => AINV, C => B, D => CINV, Y => Y5);
    G7 : OR4A
   port map(A => E, B => A, C => B, D => CINV, Y => Y4);
    G5 : OR4A
   port map(A => E, B => A, C => BINV, D => C, Y => Y2);
    G2 : INV
   port map(A => A, Y => AINV);
    G10 : OR4A
   port map(A => E, B => AINV, C => BINV, D => CINV, Y => Y7);
    G1 : INV
   port map(A => B, Y => BINV);
    G9 : OR4A
   port map(A => E, B => A, C => BINV, D => CINV, Y => Y6);
    G4 : OR4A
   port map(A => E, B => AINV, C => B, D => C, Y => Y1);
    G6 : OR4A
   port map(A => E, B => AINV, C => BINV, D => C, Y => Y3);
    G0 : INV
   port map(A => C, Y => CINV);
    G3 : OR4A
   port map(A => E, B => A, C => B, D => C, Y => Y0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DLC8A is 
    port(CLR, D0, D1, D2, D3, D4, D5, D6, D7, G : in std_logic;  
        Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic) ;
end DLC8A;


architecture DEF_ARCH of  DLC8A is

    component DLC
        port(D, CLR, G : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

begin   

    L6 : DLC
   port map(D => D6, CLR => CLR, G => G, Q => Q6);
    L1 : DLC
   port map(D => D1, CLR => CLR, G => G, Q => Q1);
    L0 : DLC
   port map(D => D0, CLR => CLR, G => G, Q => Q0);
    L2 : DLC
   port map(D => D2, CLR => CLR, G => G, Q => Q2);
    L5 : DLC
   port map(D => D5, CLR => CLR, G => G, Q => Q5);
    L4 : DLC
   port map(D => D4, CLR => CLR, G => G, Q => Q4);
    L7 : DLC
   port map(D => D7, CLR => CLR, G => G, Q => Q7);
    L3 : DLC
   port map(D => D3, CLR => CLR, G => G, Q => Q3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity DLE8 is 
    port(D0, D1, D2, D3, D4, D5, D6, D7, E, G : in std_logic;  Q0, 
        Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic) ;
end DLE8;


architecture DEF_ARCH of  DLE8 is

    component DLE
        port(D, E, G : in std_logic := 'U'; Q : out std_logic) ;
    end component;

begin   

    L6 : DLE
   port map(D => D6, E => E, G => G, Q => Q6);
    L1 : DLE
   port map(D => D1, E => E, G => G, Q => Q1);
    L0 : DLE
   port map(D => D0, E => E, G => G, Q => Q0);
    L2 : DLE
   port map(D => D2, E => E, G => G, Q => Q2);
    L5 : DLE
   port map(D => D5, E => E, G => G, Q => Q5);
    L4 : DLE
   port map(D => D4, E => E, G => G, Q => Q4);
    L7 : DLE
   port map(D => D7, E => E, G => G, Q => Q7);
    L3 : DLE
   port map(D => D3, E => E, G => G, Q => Q3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity FADD11A is 
    port(A0, A1, A10, A2, A3, A4, A5, A6, A7, A8, A9, B0, B1, B10, 
        B2, B3, B4, B5, B6, B7, B8, B9, CIN : in std_logic;  S0, 
        S1, S10, S2, S3, S4, S5, S6, S7, S8, S9 : out std_logic
        ) ;
end FADD11A;


architecture DEF_ARCH of  FADD11A is

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CSA3
        port(A0, A1, A2, B0, B1, B2 : in std_logic := 'U'; C0, C1, 
        S00, S01, S02, S10, S11, S12 : out std_logic) ;
    end component;

    component MXC1
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component CSA1
        port(A0, B0 : in std_logic := 'U'; C0, C1, S00, S10 : 
        out std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component CSA2A
        port(A0, A1, B0, B1 : in std_logic := 'U'; C0, C1, S00, 
        S01, S10, S11 : out std_logic) ;
    end component;

    component CSA3B
        port(A0, A1, A2, B0, B1, B2 : in std_logic := 'U'; C0, C1, 
        S00, S01, S02, S10, S11, S12 : out std_logic) ;
    end component;

    signal X1N122, X1N154, X1N156, X1N158, X1N161, X1N163, X1N165, 
        X1N185, X1N189, X1N191, X1N198, X1N219, X1N221, X1N223, 
        X1N231, X1N233, X1N240, X1N242, X1N278, X1N280, X1N293, 
        X1N299, X1N300, X1N304, X1N309, X1N434, X1N472, X1N473, 
        X1N474 : std_logic ;
begin   

    M2 : MX2
   port map(A => X1N161, B => X1N158, S => X1N474, Y => S3);
    M6 : MX2
   port map(A => X1N280, B => X1N278, S => X1N240, Y => S6);
    M9 : MX2
   port map(A => X1N219, B => X1N233, S => X1N299, Y => S8);
    M3 : MX2
   port map(A => X1N165, B => X1N163, S => X1N474, Y => X1N240);
    CS2 : CSA3
   port map(A0 => A4, A1 => A5, A2 => A6, B0 => B4, B1 => B5, 
        B2 => B6, C0 => X1N473, C1 => X1N472, S00 => X1N185, 
        S01 => X1N189, S02 => X1N278, S10 => X1N242, S11 => 
        X1N191, S12 => X1N280);
    M11 : MXC1
   port map(A => X1N472, B => X1N473, C => X1N300, D => X1N293, 
        S => X1N240, Y => X1N434);
    M4 : MX2
   port map(A => X1N242, B => X1N185, S => X1N240, Y => S4);
    M1 : MX2
   port map(A => X1N154, B => X1N156, S => X1N474, Y => S2);
    M12 : MX2
   port map(A => X1N309, B => X1N304, S => X1N434, Y => S10);
    CS4 : CSA1
   port map(A0 => A10, B0 => B10, C0 => OPEN , C1 => OPEN , 
        S00 => X1N304, S10 => X1N309);
    M8 : MX2
   port map(A => X1N231, B => X1N198, S => X1N299, Y => S7);
    A2_1_inst : FA1A
   port map(A => B1, B => A1, CI => X1N122, CO => X1N474, S => S1);
    CS1 : CSA2A
   port map(A0 => A2, A1 => A3, B0 => B2, B1 => B3, C0 => X1N163, 
        C1 => X1N165, S00 => X1N156, S01 => X1N158, S10 => X1N154, 
        S11 => X1N161);
    M10 : MX2
   port map(A => X1N221, B => X1N223, S => X1N299, Y => S9);
    CS3 : CSA3B
   port map(A0 => A7, A1 => A8, A2 => A9, B0 => B7, B1 => B8, 
        B2 => B9, C0 => X1N293, C1 => X1N300, S00 => X1N198, 
        S01 => X1N233, S02 => X1N223, S10 => X1N231, S11 => 
        X1N219, S12 => X1N221);
    A1_1_inst : FA1A
   port map(A => B0, B => A0, CI => CIN, CO => X1N122, S => S0);
    M7 : MX2
   port map(A => X1N472, B => X1N473, S => X1N240, Y => X1N299);
    M5 : MX2
   port map(A => X1N191, B => X1N189, S => X1N240, Y => S5);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity ICMP4 is 
    port(A0, A1, A2, A3 : in std_logic;  AEB : out std_logic;  B0, 
        B1, B2, B3 : in std_logic) ;
end ICMP4;


architecture DEF_ARCH of  ICMP4 is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NOR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal X1N50, X1N52, X1N54, X1N56 : std_logic ;
    begin   

    G1 : XOR2
   port map(A => A1, B => B1, Y => X1N52);
    G0 : XNOR2
   port map(A => A0, B => B0, Y => X1N50);
    G2 : XOR2
   port map(A => A2, B => B2, Y => X1N54);
    G4 : NOR4A
   port map(A => X1N50, B => X1N52, C => X1N54, D => X1N56, Y => 
        AEB);
    G3 : XOR2
   port map(A => A3, B => B3, Y => X1N56);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity INV3 is 
    port(I0, I1, I2 : in std_logic;  O0, O1, O2 : out std_logic
        ) ;
end INV3;


architecture DEF_ARCH of  INV3 is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : INV
   port map(A => I2, Y => O2);
    G2 : INV
   port map(A => I1, Y => O1);
    G3 : INV
   port map(A => I0, Y => O0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity INV4 is 
    port(I0, I1, I2, I3 : in std_logic;  O0, O1, O2, O3 : out 
        std_logic) ;
end INV4;


architecture DEF_ARCH of  INV4 is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : INV
   port map(A => I3, Y => O3);
    G2 : INV
   port map(A => I2, Y => O2);
    G4 : INV
   port map(A => I0, Y => O0);
    G3 : INV
   port map(A => I1, Y => O1);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity MCMPC2 is 
    port(A0, A1 : in std_logic;  AEB : out std_logic;  AEBI : in 
        std_logic;  AGB : out std_logic;  AGBI : in std_logic;  
        ALB : out std_logic;  ALBI, B0, B1 : in std_logic) ;
end MCMPC2;


architecture DEF_ARCH of  MCMPC2 is

    component AO1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AO3
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XA1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N26, X1N41, X1N42, X1N5, X1N7, X1N9 : std_logic ;
    begin   

    G6 : AO1
   port map(A => ALBI, B => X1N26, C => X1N7, Y => ALB);
    G1 : AND2A
   port map(A => A1, B => B1, Y => X1N5);
    G0 : XNOR2
   port map(A => A1, B => B1, Y => X1N9);
    G2 : AND2A
   port map(A => B1, B => A1, Y => X1N41);
    G5 : AO3
   port map(A => B0, B => X1N9, C => A0, D => X1N41, Y => X1N42);
    G4 : XA1A
   port map(A => A0, B => B0, C => X1N9, Y => X1N26);
    G7 : AND2
   port map(A => AEBI, B => X1N26, Y => AEB);
    G3 : AO3
   port map(A => A0, B => X1N9, C => B0, D => X1N5, Y => X1N7);
    G8 : AO1
   port map(A => AGBI, B => X1N26, C => X1N42, Y => AGB);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity MCMPC4 is 
    port(A0, A1, A2, A3 : in std_logic;  AEB : out std_logic;  
        AEBI : in std_logic;  AGB : out std_logic;  AGBI : in 
        std_logic;  ALB : out std_logic;  ALBI, B0, B1, B2, B3 : 
        in std_logic) ;
end MCMPC4;


architecture DEF_ARCH of  MCMPC4 is

    component MCMPC2
        port(A0, A1 : in std_logic := 'U'; AEB : out std_logic;  
        AEBI : in std_logic := 'U'; AGB : out std_logic;  AGBI : 
        in std_logic := 'U'; ALB : out std_logic;  ALBI, B0, B1 : 
        in std_logic := 'U') ;
    end component;

    signal X1N31, X1N33, X1N35 : std_logic ;
begin   

    U1 : MCMPC2
   port map(A0 => A2, A1 => A3, AEB => AEB, AEBI => X1N33, AGB => 
        AGB, AGBI => X1N35, ALB => ALB, ALBI => X1N31, B0 => B2, 
        B1 => B3);
    U0 : MCMPC2
   port map(A0 => A0, A1 => A1, AEB => X1N33, AEBI => AEBI, 
        AGB => X1N35, AGBI => AGBI, ALB => X1N31, ALBI => ALBI, 
        B0 => B0, B1 => B1);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity MX16 is 
    port(D0, D1, D10, D11, D12, D13, D14, D15, D2, D3, D4, D5, D6, 
        D7, D8, D9, S0, S1, S2, S3 : in std_logic;  Y : out 
        std_logic) ;
end MX16;


architecture DEF_ARCH of  MX16 is

    component MX4
        port(D0, D1, D2, D3, S0, S1 : in std_logic := 'U'; Y : 
        out std_logic) ;
    end component;

    signal X1N10, X1N12, X1N6, X1N8 : std_logic ;
    begin   

    M1 : MX4
   port map(D0 => D4, D1 => D5, D2 => D6, D3 => D7, S0 => S0, 
        S1 => S1, Y => X1N6);
    M0 : MX4
   port map(D0 => D0, D1 => D1, D2 => D2, D3 => D3, S0 => S0, 
        S1 => S1, Y => X1N10);
    M2 : MX4
   port map(D0 => D8, D1 => D9, D2 => D10, D3 => D11, S0 => S0, 
        S1 => S1, Y => X1N8);
    M4 : MX4
   port map(D0 => X1N10, D1 => X1N6, D2 => X1N8, D3 => X1N12, 
        S0 => S2, S1 => S3, Y => Y);
    M3 : MX4
   port map(D0 => D12, D1 => D13, D2 => D14, D3 => D15, S0 => S0, 
        S1 => S1, Y => X1N12);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity MX8 is 
    port(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2 : in 
        std_logic;  Y : out std_logic) ;
end MX8;


architecture DEF_ARCH of  MX8 is

    component MX4
        port(D0, D1, D2, D3, S0, S1 : in std_logic := 'U'; Y : 
        out std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N4, X1N6 : std_logic ;
    begin   

    M1 : MX4
   port map(D0 => D4, D1 => D5, D2 => D6, D3 => D7, S0 => S0, 
        S1 => S1, Y => X1N6);
    M0 : MX4
   port map(D0 => D0, D1 => D1, D2 => D2, D3 => D3, S0 => S0, 
        S1 => S1, Y => X1N4);
    M2 : MX2
   port map(A => X1N4, B => X1N6, S => S2, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity MX8A is 
    port(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2 : in 
        std_logic;  Y : out std_logic) ;
end MX8A;


architecture DEF_ARCH of  MX8A is

    component MX4
        port(D0, D1, D2, D3, S0, S1 : in std_logic := 'U'; Y : 
        out std_logic) ;
    end component;

    component MX2C
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N4, X1N6 : std_logic ;
    begin   

    M1 : MX4
   port map(D0 => D4, D1 => D5, D2 => D6, D3 => D7, S0 => S0, 
        S1 => S1, Y => X1N6);
    M0 : MX4
   port map(D0 => D0, D1 => D1, D2 => D2, D3 => D3, S0 => S0, 
        S1 => S1, Y => X1N4);
    M2 : MX2C
   port map(A => X1N4, B => X1N6, S => S2, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity NMM is 
    port(P0, P1, P2, P3, P4, P5, P6, P7 : out std_logic;  X0, X1, 
        X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end NMM;


architecture DEF_ARCH of  NMM is

    component FA2A
        port(A0, A1, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV3
        port(I0, I1, I2 : in std_logic := 'U'; O0, O1, O2 : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component INV4
        port(I0, I1, I2, I3 : in std_logic := 'U'; O0, O1, O2, O3 : 
        out std_logic) ;
    end component;

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N109, X1N114, X1N115, X1N117, X1N122, X1N123, X1N377, 
        X1N398, X1N403, X1N406, X1N411, X1N47, X1N51, X1N60, 
        X1N61, X1N63, X1N75, X1N77, X1N78, X1N79, X1N81, X1N92, 
        X1N93, X1N94, X1N95, X1N96, GND_1_net, VCC_1_net, XN0, 
        XN1, XN2, XN3, YN1, YN2, YN3 : std_logic ;
begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    A8 : FA2A
   port map(A0 => XN1, A1 => YN3, B => X1N95, CI => X1N92, CO => 
        X1N117, S => X1N114);
    A10 : FA2A
   port map(A0 => XN3, A1 => YN3, B => X1N411, CI => X1N377, 
        CO => P7, S => X1N398);
    G7 : INV
   port map(A => X1N403, Y => P4);
    G5 : AND2
   port map(A => Y1, B => X3, Y => X1N61);
    G2 : AND2
   port map(A => Y0, B => X1, Y => X1N47);
    IP2 : INV3
   port map(I0 => Y1, I1 => Y2, I2 => Y3, O0 => YN1, O1 => YN2, 
        O2 => YN3);
    G6 : AND2
   port map(A => Y2, B => X3, Y => X1N63);
    A7 : FA2A
   port map(A0 => XN0, A1 => YN3, B => X1N94, CI => X1N93, CO => 
        X1N109, S => P3);
    A5 : FA2A
   port map(A0 => XN1, A1 => YN2, B => X1N81, CI => X1N77, CO => 
        X1N92, S => X1N94);
    G9 : INV
   port map(A => X1N123, Y => X1N411);
    A2 : FA2A
   port map(A0 => XN1, A1 => YN1, B => X1N60, CI => VCC_1_net, 
        CO => X1N77, S => X1N79);
    G3 : AND2
   port map(A => Y0, B => X2, Y => X1N60);
    A6 : FA2A
   port map(A0 => XN2, A1 => YN2, B => X1N61, CI => X1N78, CO => 
        X1N96, S => X1N95);
    A12 : FA1A
   port map(A => X1N122, B => X1N115, CI => X1N117, CO => X1N123, 
        S => X1N406);
    G10 : INV
   port map(A => X1N398, Y => P6);
    A9 : FA2A
   port map(A0 => XN2, A1 => YN3, B => X1N63, CI => X1N96, CO => 
        X1N377, S => X1N115);
    G4 : AND2
   port map(A => Y0, B => X3, Y => X1N51);
    A3 : FA2A
   port map(A0 => XN2, A1 => YN1, B => X1N51, CI => VCC_1_net, 
        CO => X1N78, S => X1N81);
    IP1 : INV4
   port map(I0 => X0, I1 => X1, I2 => X2, I3 => X3, O0 => XN0, 
        O1 => XN1, O2 => XN2, O3 => XN3);
    G1 : AND2
   port map(A => Y0, B => X0, Y => P0);
    A4 : FA2A
   port map(A0 => XN0, A1 => YN2, B => X1N79, CI => X1N75, CO => 
        X1N93, S => P2);
    A11 : FA1B
   port map(A => GND_1_net, B => X1N114, CI => X1N109, CO => 
        X1N122, S => X1N403);
    A1 : FA2A
   port map(A0 => XN0, A1 => YN1, B => X1N47, CI => VCC_1_net, 
        CO => X1N75, S => P1);
    G8 : INV
   port map(A => X1N406, Y => P5);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity NMMHH is 
    port(P10, P11, P12, P13, P14, P15, P8, P9 : out std_logic;  
        X0, X1, X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end NMMHH;


architecture DEF_ARCH of  NMMHH is

    component FA2A
        port(A0, A1, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV3
        port(I0, I1, I2 : in std_logic := 'U'; O0, O1, O2 : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component INV4
        port(I0, I1, I2, I3 : in std_logic := 'U'; O0, O1, O2, O3 : 
        out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    signal X1N109, X1N114, X1N115, X1N117, X1N122, X1N123, X1N400, 
        X1N402, X1N408, X1N409, X1N47, X1N51, X1N60, X1N61, X1N63, 
        X1N75, X1N77, X1N78, X1N79, X1N81, X1N92, X1N93, X1N94, 
        X1N95, X1N96, VCC_1_net, XN0, XN1, XN2, XN3, YN1, YN2, 
        YN3 : std_logic ;
begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    A8 : FA2A
   port map(A0 => X1, A1 => YN3, B => X1N95, CI => X1N92, CO => 
        X1N117, S => X1N114);
    A10 : FA2A
   port map(A0 => XN3, A1 => YN3, B => YN3, CI => X3, CO => 
        X1N409, S => X1N400);
    G5 : AND2A
   port map(A => Y1, B => X3, Y => X1N61);
    G2 : AND2
   port map(A => Y0, B => X1, Y => X1N47);
    IP2 : INV3
   port map(I0 => Y1, I1 => Y2, I2 => Y3, O0 => YN1, O1 => YN2, 
        O2 => YN3);
    G6 : AND2A
   port map(A => Y2, B => X3, Y => X1N63);
    A7 : FA2A
   port map(A0 => X0, A1 => YN3, B => X1N94, CI => X1N93, CO => 
        X1N109, S => P11);
    A5 : FA2A
   port map(A0 => XN1, A1 => YN2, B => X1N81, CI => X1N77, CO => 
        X1N92, S => X1N94);
    A2 : FA2A
   port map(A0 => XN1, A1 => YN1, B => X1N60, CI => VCC_1_net, 
        CO => X1N77, S => X1N79);
    G3 : AND2
   port map(A => Y0, B => X2, Y => X1N60);
    A6 : FA2A
   port map(A0 => XN2, A1 => YN2, B => X1N61, CI => X1N78, CO => 
        X1N96, S => X1N95);
    A12 : FA1A
   port map(A => X1N122, B => X1N115, CI => X1N117, CO => X1N123, 
        S => P13);
    A9 : FA2A
   port map(A0 => X2, A1 => YN3, B => X1N63, CI => X1N96, CO => 
        X1N408, S => X1N115);
    G4 : AND2A
   port map(A => Y0, B => X3, Y => X1N51);
    A3 : FA2A
   port map(A0 => XN2, A1 => YN1, B => X1N51, CI => VCC_1_net, 
        CO => X1N78, S => X1N81);
    IP1 : INV4
   port map(I0 => X0, I1 => X1, I2 => X2, I3 => X3, O0 => XN0, 
        O1 => XN1, O2 => XN2, O3 => XN3);
    G1 : AND2
   port map(A => Y0, B => X0, Y => P8);
    A4 : FA2A
   port map(A0 => XN0, A1 => YN2, B => X1N79, CI => X1N75, CO => 
        X1N93, S => P10);
    A13 : FA1A
   port map(A => X1N408, B => X1N400, CI => X1N123, CO => X1N402, 
        S => P14);
    A11 : FA1A
   port map(A => VCC_1_net, B => X1N114, CI => X1N109, CO => 
        X1N122, S => P12);
    A1 : FA2A
   port map(A0 => XN0, A1 => YN1, B => X1N47, CI => VCC_1_net, 
        CO => X1N75, S => P9);
    A14 : FA1A
   port map(A => X1N409, B => VCC_1_net, CI => X1N402, CO => 
        OPEN , S => P15);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity NMMHL is 
    port(P10, P11, P4, P5, P6, P7, P8, P9 : out std_logic;  X0, 
        X1, X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end NMMHL;


architecture DEF_ARCH of  NMMHL is

    component FA2A
        port(A0, A1, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV3
        port(I0, I1, I2 : in std_logic := 'U'; O0, O1, O2 : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component INV4
        port(I0, I1, I2, I3 : in std_logic := 'U'; O0, O1, O2, O3 : 
        out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    signal X1N109, X1N114, X1N115, X1N117, X1N122, X1N123, X1N377, 
        X1N399, X1N402, X1N47, X1N51, X1N60, X1N61, X1N63, X1N75, 
        X1N77, X1N78, X1N79, X1N81, X1N92, X1N93, X1N94, X1N95, 
        X1N96, VCC_1_net, XN0, XN1, XN2, XN3, YN1, YN2, YN3 : std_logic ;
begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    A8 : FA2A
   port map(A0 => XN1, A1 => YN3, B => X1N95, CI => X1N92, CO => 
        X1N117, S => X1N114);
    A10 : FA2A
   port map(A0 => XN3, A1 => Y3, B => X1N402, CI => X1N377, CO => 
        P11, S => P10);
    G7 : INV
   port map(A => X1N399, Y => P7);
    G5 : AND2A
   port map(A => Y1, B => X3, Y => X1N61);
    G2 : AND2
   port map(A => Y0, B => X1, Y => X1N47);
    IP2 : INV3
   port map(I0 => Y1, I1 => Y2, I2 => Y3, O0 => YN1, O1 => YN2, 
        O2 => YN3);
    G6 : AND2A
   port map(A => Y2, B => X3, Y => X1N63);
    A7 : FA2A
   port map(A0 => XN0, A1 => YN3, B => X1N94, CI => X1N93, CO => 
        X1N109, S => X1N399);
    A5 : FA2A
   port map(A0 => XN1, A1 => YN2, B => X1N81, CI => X1N77, CO => 
        X1N92, S => X1N94);
    A2 : FA2A
   port map(A0 => XN1, A1 => YN1, B => X1N60, CI => VCC_1_net, 
        CO => X1N77, S => X1N79);
    G3 : AND2
   port map(A => Y0, B => X2, Y => X1N60);
    A6 : FA2A
   port map(A0 => XN2, A1 => YN2, B => X1N61, CI => X1N78, CO => 
        X1N96, S => X1N95);
    A12 : FA1A
   port map(A => X1N122, B => X1N115, CI => X1N117, CO => X1N123, 
        S => P9);
    A9 : FA2A
   port map(A0 => XN2, A1 => YN3, B => X1N63, CI => X1N96, CO => 
        X1N377, S => X1N115);
    G4 : AND2A
   port map(A => Y0, B => X3, Y => X1N51);
    A3 : FA2A
   port map(A0 => XN2, A1 => YN1, B => X1N51, CI => VCC_1_net, 
        CO => X1N78, S => X1N81);
    IP1 : INV4
   port map(I0 => X0, I1 => X1, I2 => X2, I3 => X3, O0 => XN0, 
        O1 => XN1, O2 => XN2, O3 => XN3);
    G1 : AND2
   port map(A => Y0, B => X0, Y => P4);
    A4 : FA2A
   port map(A0 => XN0, A1 => YN2, B => X1N79, CI => X1N75, CO => 
        X1N93, S => P6);
    A11 : FA1A
   port map(A => VCC_1_net, B => X1N114, CI => X1N109, CO => 
        X1N122, S => P8);
    A1 : FA2A
   port map(A0 => XN0, A1 => YN1, B => X1N47, CI => VCC_1_net, 
        CO => X1N75, S => P5);
    G8 : INV
   port map(A => X1N123, Y => X1N402);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity NMMLH is 
    port(P10, P11, P4, P5, P6, P7, P8, P9 : out std_logic;  X0, 
        X1, X2, X3, Y0, Y1, Y2, Y3 : in std_logic) ;
end NMMLH;


architecture DEF_ARCH of  NMMLH is

    component FA2A
        port(A0, A1, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV3
        port(I0, I1, I2 : in std_logic := 'U'; O0, O1, O2 : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    signal X1N109, X1N114, X1N115, X1N117, X1N122, X1N123, X1N377, 
        X1N396, X1N47, X1N51, X1N60, X1N61, X1N63, X1N75, X1N77, 
        X1N78, X1N79, X1N81, X1N92, X1N93, X1N94, X1N95, X1N96, 
        VCC_1_net, XN0, XN1, XN2, YN1, YN2, YN3 : std_logic ;
begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    A8 : FA2A
   port map(A0 => X1, A1 => YN3, B => X1N95, CI => X1N92, CO => 
        X1N117, S => X1N114);
    A10 : FA2A
   port map(A0 => X3, A1 => YN3, B => X1N396, CI => X1N377, CO => 
        P11, S => P10);
    G7 : INV
   port map(A => X1N123, Y => X1N396);
    G5 : AND2
   port map(A => Y1, B => X3, Y => X1N61);
    G2 : AND2
   port map(A => Y0, B => X1, Y => X1N47);
    IP2 : INV3
   port map(I0 => X0, I1 => X1, I2 => X2, O0 => XN0, O1 => XN1, 
        O2 => XN2);
    G6 : AND2
   port map(A => Y2, B => X3, Y => X1N63);
    A7 : FA2A
   port map(A0 => X0, A1 => YN3, B => X1N94, CI => X1N93, CO => 
        X1N109, S => P7);
    A5 : FA2A
   port map(A0 => XN1, A1 => YN2, B => X1N81, CI => X1N77, CO => 
        X1N92, S => X1N94);
    A2 : FA2A
   port map(A0 => XN1, A1 => YN1, B => X1N60, CI => VCC_1_net, 
        CO => X1N77, S => X1N79);
    G3 : AND2
   port map(A => Y0, B => X2, Y => X1N60);
    A6 : FA2A
   port map(A0 => XN2, A1 => YN2, B => X1N61, CI => X1N78, CO => 
        X1N96, S => X1N95);
    A12 : FA1A
   port map(A => X1N122, B => X1N115, CI => X1N117, CO => X1N123, 
        S => P9);
    A9 : FA2A
   port map(A0 => X2, A1 => YN3, B => X1N63, CI => X1N96, CO => 
        X1N377, S => X1N115);
    G4 : AND2
   port map(A => Y0, B => X3, Y => X1N51);
    A3 : FA2A
   port map(A0 => XN2, A1 => YN1, B => X1N51, CI => VCC_1_net, 
        CO => X1N78, S => X1N81);
    IP1 : INV3
   port map(I0 => Y1, I1 => Y2, I2 => Y3, O0 => YN1, O1 => YN2, 
        O2 => YN3);
    G1 : AND2
   port map(A => Y0, B => X0, Y => P4);
    A4 : FA2A
   port map(A0 => XN0, A1 => YN2, B => X1N79, CI => X1N75, CO => 
        X1N93, S => P6);
    A11 : FA1A
   port map(A => VCC_1_net, B => X1N114, CI => X1N109, CO => 
        X1N122, S => P8);
    A1 : FA2A
   port map(A0 => XN0, A1 => YN1, B => X1N47, CI => VCC_1_net, 
        CO => X1N75, S => P5);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity REGE8A is 
    port(CLK, CLR, D0, D1, D2, D3, D4, D5, D6, D7, E, PRE : in 
        std_logic;  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out 
        std_logic) ;
end REGE8A;


architecture DEF_ARCH of  REGE8A is

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFEB
        port(D, CLR, PRE, E, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    signal X1N108, X1N110, X1N116, X1N119 : std_logic ;
    begin   

    BUF1 : BUFF
   port map(A => PRE, Y => X1N116);
    F3 : DFEB
   port map(D => D3, CLR => X1N108, PRE => X1N116, E => E, CLK => 
        CLK, Q => Q3);
    F7 : DFEB
   port map(D => D7, CLR => X1N110, PRE => X1N119, E => E, CLK => 
        CLK, Q => Q7);
    F5 : DFEB
   port map(D => D5, CLR => X1N110, PRE => X1N119, E => E, CLK => 
        CLK, Q => Q5);
    F2 : DFEB
   port map(D => D2, CLR => X1N108, PRE => X1N116, E => E, CLK => 
        CLK, Q => Q2);
    F1 : DFEB
   port map(D => D1, CLR => X1N108, PRE => X1N116, E => E, CLK => 
        CLK, Q => Q1);
    BUF3 : BUFF
   port map(A => CLR, Y => X1N110);
    BUF0 : BUFF
   port map(A => PRE, Y => X1N119);
    BUF2 : BUFF
   port map(A => CLR, Y => X1N108);
    F4 : DFEB
   port map(D => D4, CLR => X1N110, PRE => X1N119, E => E, CLK => 
        CLK, Q => Q4);
    F6 : DFEB
   port map(D => D6, CLR => X1N110, PRE => X1N119, E => E, CLK => 
        CLK, Q => Q6);
    F0 : DFEB
   port map(D => D0, CLR => X1N108, PRE => X1N116, E => E, CLK => 
        CLK, Q => Q0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity REGE8B is 
    port(CLK, CLR, D0, D1, D2, D3, D4, D5, D6, D7, E, PRE : in 
        std_logic;  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out 
        std_logic) ;
end REGE8B;


architecture DEF_ARCH of  REGE8B is

    component DFEC
        port(D, CLR, PRE, E, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N103, X1N104, X1N111, X1N115 : std_logic ;
    begin   

    F3 : DFEC
   port map(D => D3, CLR => X1N104, PRE => X1N115, E => E, CLK => 
        CLK, Q => Q3);
    B2 : BUFF
   port map(A => PRE, Y => X1N115);
    F7 : DFEC
   port map(D => D7, CLR => X1N103, PRE => X1N111, E => E, CLK => 
        CLK, Q => Q7);
    F5 : DFEC
   port map(D => D5, CLR => X1N103, PRE => X1N111, E => E, CLK => 
        CLK, Q => Q5);
    B1 : BUFF
   port map(A => PRE, Y => X1N111);
    F2 : DFEC
   port map(D => D2, CLR => X1N104, PRE => X1N115, E => E, CLK => 
        CLK, Q => Q2);
    F1 : DFEC
   port map(D => D1, CLR => X1N104, PRE => X1N115, E => E, CLK => 
        CLK, Q => Q1);
    B4 : BUFF
   port map(A => CLR, Y => X1N103);
    F4 : DFEC
   port map(D => D4, CLR => X1N103, PRE => X1N111, E => E, CLK => 
        CLK, Q => Q4);
    F6 : DFEC
   port map(D => D6, CLR => X1N103, PRE => X1N111, E => E, CLK => 
        CLK, Q => Q6);
    F0 : DFEC
   port map(D => D0, CLR => X1N104, PRE => X1N115, E => E, CLK => 
        CLK, Q => Q0);
    B3 : BUFF
   port map(A => CLR, Y => X1N104);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity SREG4A is 
    port(CLK, CLR, P0, P1, P2, P3, SHLD, SI : in std_logic;  SO : 
        out std_logic) ;
end SREG4A;


architecture DEF_ARCH of  SREG4A is

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    signal X1N10, X1N12, X1N14 : std_logic ;
    begin   

    F1 : DFMB
   port map(A => P1, B => X1N10, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => X1N12);
    F0 : DFMB
   port map(A => P0, B => SI, S => SHLD, CLR => CLR, CLK => CLK, 
        Q => X1N10);
    F2 : DFMB
   port map(A => P2, B => X1N12, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => X1N14);
    F3 : DFMB
   port map(A => P3, B => X1N14, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => SO);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity SREG8A is 
    port(CLK, CLR, P0, P1, P2, P3, P4, P5, P6, P7, SHLD, SI : in 
        std_logic;  SO : out std_logic) ;
end SREG8A;


architecture DEF_ARCH of  SREG8A is

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component SREG4A
        port(CLK, CLR, P0, P1, P2, P3, SHLD, SI : in std_logic := 
        'U'; SO : out std_logic) ;
    end component;

    signal X1N79, X1N87, X1N93 : std_logic ;
begin   

    B1 : BUFF
   port map(A => CLR, Y => X1N87);
    B0 : BUFF
   port map(A => CLR, Y => X1N93);
    U1 : SREG4A
   port map(CLK => CLK, CLR => X1N93, P0 => P4, P1 => P5, P2 => 
        P6, P3 => P7, SHLD => SHLD, SI => X1N79, SO => SO);
    U0 : SREG4A
   port map(CLK => CLK, CLR => X1N87, P0 => P0, P1 => P1, P2 => 
        P2, P3 => P3, SHLD => SHLD, SI => SI, SO => X1N79);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA138 is 
    port(A, B, C, G1, G2A, G2B : in std_logic;  Y0, Y1, Y2, Y3, 
        Y4, Y5, Y6, Y7 : out std_logic) ;
end TA138;


architecture DEF_ARCH of  TA138 is

    component OR4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal ABAR, BBAR, CBAR, ENABLE : std_logic ;
    begin   

    G8 : OR4
   port map(A => A, B => B, C => CBAR, D => ENABLE, Y => Y4);
    G7 : OR4
   port map(A => ABAR, B => BBAR, C => C, D => ENABLE, Y => Y3);
    G5 : OR4
   port map(A => ABAR, B => B, C => C, D => ENABLE, Y => Y1);
    G2 : INV
   port map(A => B, Y => BBAR);
    G10 : OR4
   port map(A => A, B => BBAR, C => CBAR, D => ENABLE, Y => Y6);
    G1_1_inst : INV
   port map(A => A, Y => ABAR);
    G11 : OR4
   port map(A => ABAR, B => BBAR, C => CBAR, D => ENABLE, Y => Y7);
    G9 : OR4
   port map(A => ABAR, B => B, C => CBAR, D => ENABLE, Y => Y5);
    G4 : OR4
   port map(A => A, B => B, C => C, D => ENABLE, Y => Y0);
    G6 : OR4
   port map(A => A, B => BBAR, C => C, D => ENABLE, Y => Y2);
    G0 : OR3A
   port map(A => G1, B => G2A, C => G2B, Y => ENABLE);
    G3 : INV
   port map(A => C, Y => CBAR);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA161 is 
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
end TA161;


architecture DEF_ARCH of  TA161 is

    component NAND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N10, X1N12, 
        X1N14, X1N16, X1N41, X1N49, X1N51, X1N53, X1N60, X1N67, 
        X1N78 : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    G8 : NAND4
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, D => 
        QD_1_net, Y => X1N60);
    G7 : XOR2
   port map(A => QD_1_net, B => X1N53, Y => X1N16);
    G5 : XOR2
   port map(A => QC_1_net, B => X1N51, Y => X1N14);
    F3 : DFMB
   port map(A => D, B => X1N16, S => X1N78, CLR => X1N67, CLK => 
        CLK, Q => QD_1_net);
    G2 : AND2
   port map(A => QA_1_net, B => X1N41, Y => X1N49);
    G10 : BUFF
   port map(A => LD, Y => X1N78);
    G1 : XOR2
   port map(A => QA_1_net, B => X1N41, Y => X1N10);
    G11 : BUFF
   port map(A => CLR, Y => X1N67);
    F2 : DFMB
   port map(A => C, B => X1N14, S => X1N78, CLR => X1N67, CLK => 
        CLK, Q => QC_1_net);
    F1 : DFMB
   port map(A => B, B => X1N12, S => X1N78, CLR => X1N67, CLK => 
        CLK, Q => QB_1_net);
    G9 : AND2A
   port map(A => X1N60, B => ENT, Y => RCO);
    G4 : AND3
   port map(A => QA_1_net, B => QB_1_net, C => X1N41, Y => X1N51);
    G6 : AND4
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, D => 
        X1N41, Y => X1N53);
    G0 : AND2
   port map(A => ENP, B => ENT, Y => X1N41);
    F0 : DFMB
   port map(A => A, B => X1N10, S => X1N78, CLR => X1N67, CLK => 
        CLK, Q => QA_1_net);
    G3 : XOR2
   port map(A => QB_1_net, B => X1N49, Y => X1N12);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA164 is 
    port(A, B, CLK, CLR : in std_logic;  QA, QB, QC, QD, QE, QF, 
        QG, QH : out std_logic) ;
end TA164;


architecture DEF_ARCH of  TA164 is

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, QE_1_net, 
        QF_1_net, QG_1_net, X1N55, X1N59, GND_1_net : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    QE <= QE_1_net;
    
    QF <= QF_1_net;
    
    QG <= QG_1_net;
    
    GND_2_net : GND port map(Y => GND_1_net);
    G1 : BUFF
   port map(A => CLR, Y => X1N59);
    G0 : BUFF
   port map(A => CLR, Y => X1N55);
    F6 : DFC1B
   port map(D => QF_1_net, CLR => X1N59, CLK => CLK, Q => 
        QG_1_net);
    F1 : DFC1B
   port map(D => QA_1_net, CLR => X1N55, CLK => CLK, Q => 
        QB_1_net);
    F0 : DFMB
   port map(A => GND_1_net, B => A, S => B, CLR => X1N55, CLK => 
        CLK, Q => QA_1_net);
    F2 : DFC1B
   port map(D => QB_1_net, CLR => X1N55, CLK => CLK, Q => 
        QC_1_net);
    F5 : DFC1B
   port map(D => QE_1_net, CLR => X1N59, CLK => CLK, Q => 
        QF_1_net);
    F4 : DFC1B
   port map(D => QD_1_net, CLR => X1N59, CLK => CLK, Q => 
        QE_1_net);
    F7 : DFC1B
   port map(D => QG_1_net, CLR => X1N59, CLK => CLK, Q => QH);
    F3 : DFC1B
   port map(D => QC_1_net, CLR => X1N55, CLK => CLK, Q => 
        QD_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA169 is 
    port(A, B, C, CLK, D, ENP, ENT, LD : in std_logic;  QA, QB, 
        QC, QD, RCO : out std_logic;  UD : in std_logic) ;
end TA169;


architecture DEF_ARCH of  TA169 is

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM
        port(A, B, S, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4B
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AOI1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N110, X1N114, 
        X1N120, X1N136, X1N159, X1N172, X1N174, X1N181, X1N186, 
        X1N188, X1N205, X1N211, X1N221, X1N66 : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    G11 : AX1
   port map(A => X1N221, B => X1N181, C => QD_1_net, Y => X1N66);
    G0 : OR2
   port map(A => ENP, B => ENT, Y => X1N221);
    DFM1 : DFM
   port map(A => B, B => X1N114, S => LD, CLK => CLK, Q => 
        QB_1_net);
    G7 : AX1
   port map(A => X1N221, B => X1N159, C => QC_1_net, Y => X1N120);
    G5 : AND3C
   port map(A => QA_1_net, B => QB_1_net, C => UD, Y => X1N174);
    G12 : AND4B
   port map(A => ENP, B => ENT, C => QD_1_net, D => X1N188, Y => 
        X1N205);
    G2 : XNOR2
   port map(A => UD, B => QA_1_net, Y => X1N136);
    DFM3 : DFM
   port map(A => D, B => X1N66, S => LD, CLK => CLK, Q => 
        QD_1_net);
    G13 : OR3
   port map(A => QD_1_net, B => ENP, C => ENT, Y => X1N211);
    G6 : OR2
   port map(A => X1N172, B => X1N174, Y => X1N159);
    G9 : AND4D
   port map(A => QA_1_net, B => QB_1_net, C => UD, D => QC_1_net, 
        Y => X1N186);
    G14 : AOI1A
   port map(A => X1N211, B => X1N186, C => X1N205, Y => RCO);
    G3 : AX1
   port map(A => X1N221, B => X1N136, C => QB_1_net, Y => X1N114);
    G10 : OR2
   port map(A => X1N188, B => X1N186, Y => X1N181);
    G4 : AND3
   port map(A => QA_1_net, B => QB_1_net, C => UD, Y => X1N172);
    G1 : XNOR2
   port map(A => X1N221, B => QA_1_net, Y => X1N110);
    G8 : AND4
   port map(A => QA_1_net, B => QB_1_net, C => UD, D => QC_1_net, 
        Y => X1N188);
    DFM2 : DFM
   port map(A => C, B => X1N120, S => LD, CLK => CLK, Q => 
        QC_1_net);
    DFM0 : DFM
   port map(A => A, B => X1N110, S => LD, CLK => CLK, Q => 
        QA_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA181 is 
    port(A0, A1, A2, A3 : in std_logic;  AEQB : out std_logic;  
        B0, B1, B2, B3, CI : in std_logic;  CO, F0, F1, F2, F3, G : 
        out std_logic;  M : in std_logic;  P : out std_logic;  S0, 
        S1, S2, S3 : in std_logic) ;
end TA181;


architecture DEF_ARCH of  TA181 is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NOR4B
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AALUF
        port(A, B : in std_logic := 'U'; N2, N3 : out std_logic;  
        S0, S1, S2, S3 : in std_logic := 'U'; XO : out std_logic
        ) ;
    end component;

    component AOI2B
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NAND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND4B
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component OA5
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OA3A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component OA1B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AO1C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal F0_1_net, F1_1_net, G_1_net, X1N165, X1N173, X1N185, 
        X1N187, X1N217, X1N251, X1N254, X1N256, X1N260, X1N261, 
        X1N265, X1N270, X1N274, X1N276, X1N296, X1N308, X1N309, 
        X1N312, X1N317, X1N321, X1N323, X1N340, X1N342, X1N345, 
        X1N77, X1N81, X1N88, X1N94 : std_logic ;
begin   

    F0 <= F0_1_net;
    
    F1 <= F1_1_net;
    
    G <= G_1_net;
    
    G11 : XOR2
   port map(A => X1N309, B => X1N308, Y => F2);
    G22 : NOR4B
   port map(A => X1N296, B => X1N340, C => X1N345, D => X1N342, 
        Y => G_1_net);
    G23 : AND2B
   port map(A => X1N261, B => X1N173, Y => X1N345);
    G24 : INV
   port map(A => M, Y => X1N323);
    ALUF2 : AALUF
   port map(A => A2, B => B2, N2 => X1N317, N3 => X1N261, S0 => 
        S0, S1 => S1, S2 => S2, S3 => S3, XO => X1N309);
    G15 : AOI2B
   port map(A => X1N317, B => X1N185, C => X1N251, D => X1N256, 
        Y => X1N265);
    G20 : NAND4D
   port map(A => X1N173, B => X1N317, C => X1N276, D => X1N274, 
        Y => X1N340);
    G17 : NAND4D
   port map(A => X1N173, B => X1N276, C => X1N317, D => X1N321, 
        Y => P);
    G16 : XOR2
   port map(A => X1N254, B => X1N265, Y => F3);
    G7 : AND4B
   port map(A => X1N321, B => X1N276, C => X1N323, D => CI, Y => 
        X1N185);
    G5 : XOR2
   port map(A => X1N81, B => X1N94, Y => F1_1_net);
    G12 : OA5
   port map(A => M, B => X1N260, C => X1N317, D => X1N261, Y => 
        X1N251);
    G2 : XOR2
   port map(A => X1N88, B => X1N77, Y => F0_1_net);
    G13 : XNOR2
   port map(A => X1N254, B => X1N265, Y => X1N312);
    G6 : OR3A
   port map(A => X1N323, B => X1N276, C => X1N274, Y => X1N187);
    G9 : XNOR2
   port map(A => X1N309, B => X1N308, Y => X1N270);
    G14 : AND4C
   port map(A => X1N317, B => X1N276, C => X1N274, D => X1N323, 
        Y => X1N256);
    ALUF3 : AALUF
   port map(A => A3, B => B3, N2 => X1N173, N3 => X1N296, S0 => 
        S0, S1 => S1, S2 => S2, S3 => S3, XO => X1N254);
    G3 : AND3B
   port map(A => M, B => X1N321, C => CI, Y => X1N217);
    G10 : OA3A
   port map(A => M, B => X1N260, C => X1N185, D => X1N187, Y => 
        X1N308);
    ALUF0 : AALUF
   port map(A => A0, B => B0, N2 => X1N321, N3 => X1N274, S0 => 
        S0, S1 => S1, S2 => S2, S3 => S3, XO => X1N88);
    G4 : OA1B
   port map(A => M, B => X1N274, C => X1N217, Y => X1N94);
    G21 : AND3C
   port map(A => X1N173, B => X1N317, C => X1N260, Y => X1N342);
    ALUF1 : AALUF
   port map(A => A1, B => B1, N2 => X1N276, N3 => X1N260, S0 => 
        S0, S1 => S1, S2 => S2, S3 => S3, XO => X1N81);
    G1 : NAND2A
   port map(A => M, B => CI, Y => X1N77);
    G18 : AND4C
   port map(A => X1N276, B => X1N317, C => X1N321, D => CI, Y => 
        X1N165);
    G8 : AND4B
   port map(A => X1N312, B => X1N270, C => F0_1_net, D => 
        F1_1_net, Y => AEQB);
    G19 : AO1C
   port map(A => X1N173, B => X1N165, C => G_1_net, Y => CO);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA194 is 
    port(A, B, C, CLK, CLR, D : in std_logic;  QA, QB, QC, QD : 
        out std_logic;  S0, S1, SLSI, SRSI : in std_logic) ;
end TA194;


architecture DEF_ARCH of  TA194 is

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX4
        port(D0, D1, D2, D3, S0, S1 : in std_logic := 'U'; Y : 
        out std_logic) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N12, X1N15, 
        X1N18, X1N56, X1N57, X1N9 : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    G1 : BUFF
   port map(A => S0, Y => X1N56);
    G0 : BUFF
   port map(A => S1, Y => X1N57);
    F1 : DFC1B
   port map(D => X1N12, CLR => CLR, CLK => CLK, Q => QB_1_net);
    F0 : DFC1B
   port map(D => X1N9, CLR => CLR, CLK => CLK, Q => QA_1_net);
    M1 : MX4
   port map(D0 => QB_1_net, D1 => QC_1_net, D2 => QA_1_net, D3 => 
        B, S0 => X1N57, S1 => X1N56, Y => X1N12);
    M0 : MX4
   port map(D0 => QA_1_net, D1 => QB_1_net, D2 => SRSI, D3 => A, 
        S0 => X1N57, S1 => X1N56, Y => X1N9);
    F2 : DFC1B
   port map(D => X1N15, CLR => CLR, CLK => CLK, Q => QC_1_net);
    M2 : MX4
   port map(D0 => QC_1_net, D1 => QD_1_net, D2 => QB_1_net, D3 => 
        C, S0 => X1N57, S1 => X1N56, Y => X1N15);
    F3 : DFC1B
   port map(D => X1N18, CLR => CLR, CLK => CLK, Q => QD_1_net);
    M3 : MX4
   port map(D0 => QD_1_net, D1 => SLSI, D2 => QC_1_net, D3 => D, 
        S0 => X1N57, S1 => X1N56, Y => X1N18);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA195 is 
    port(A, B, C, CLK, CLR, D, J, K : in std_logic;  QA, QB, QC, 
        QD, QDN : out std_logic;  SHLD : in std_logic) ;
end TA195;


architecture DEF_ARCH of  TA195 is

    component AO1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N14, X1N8 : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    G1 : AO1
   port map(A => K, B => QA_1_net, C => X1N8, Y => X1N14);
    G0 : AND2A
   port map(A => QA_1_net, B => J, Y => X1N8);
    F1 : DFMB
   port map(A => B, B => QA_1_net, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => QB_1_net);
    F0 : DFMB
   port map(A => A, B => X1N14, S => SHLD, CLR => CLR, CLK => CLK, 
        Q => QA_1_net);
    G2 : INV
   port map(A => QD_1_net, Y => QDN);
    F2 : DFMB
   port map(A => C, B => QB_1_net, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => QC_1_net);
    F3 : DFMB
   port map(A => D, B => QC_1_net, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => QD_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA269 is 
    port(A, B, C, CLK, D, E, ENP, ENT, F, G, H, LD : in std_logic
        ;  QA, QB, QC, QD, QE, QF, QG, QH, RCO : out std_logic;  
        UD : in std_logic) ;
end TA269;


architecture DEF_ARCH of  TA269 is

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component UDCNT4A
        port(CI, CLK : in std_logic := 'U'; CO : out std_logic;  
        LD, P0, P1, P2, P3 : in std_logic := 'U'; Q0, Q1, Q2, Q3 : 
        out std_logic;  UD : in std_logic := 'U') ;
    end component;

    component TA169
        port(A, B, C, CLK, D, ENP, ENT, LD : in std_logic := 'U'; 
        QA, QB, QC, QD, RCO : out std_logic;  UD : in std_logic := 
        'U') ;
    end component;

    signal X1N65, X1N75 : std_logic ;
begin   

    B0 : BUFF
   port map(A => UD, Y => X1N65);
    U1 : UDCNT4A
   port map(CI => X1N75, CLK => CLK, CO => RCO, LD => LD, P0 => E, 
        P1 => F, P2 => G, P3 => H, Q0 => QE, Q1 => QF, Q2 => QG, 
        Q3 => QH, UD => X1N65);
    U0 : TA169
   port map(A => A, B => B, C => C, CLK => CLK, D => D, ENP => 
        ENP, ENT => ENT, LD => LD, QA => QA, QB => QB, QC => QC, 
        QD => QD, RCO => X1N75, UD => X1N65);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA273 is 
    port(CLK, CLR, D1, D2, D3, D4, D5, D6, D7, D8 : in std_logic
        ;  Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8 : out std_logic) ;
end TA273;


architecture DEF_ARCH of  TA273 is

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N55, X1N61 : std_logic ;
    begin   

    F6 : DFC1B
   port map(D => D7, CLR => X1N61, CLK => CLK, Q => Q7);
    F1 : DFC1B
   port map(D => D2, CLR => X1N55, CLK => CLK, Q => Q2);
    F0 : DFC1B
   port map(D => D1, CLR => X1N55, CLK => CLK, Q => Q1);
    F2 : DFC1B
   port map(D => D3, CLR => X1N55, CLK => CLK, Q => Q3);
    F5 : DFC1B
   port map(D => D6, CLR => X1N61, CLK => CLK, Q => Q6);
    F4 : DFC1B
   port map(D => D5, CLR => X1N61, CLK => CLK, Q => Q5);
    BUF0 : BUFF
   port map(A => CLR, Y => X1N55);
    F7 : DFC1B
   port map(D => D8, CLR => X1N61, CLK => CLK, Q => Q8);
    F3 : DFC1B
   port map(D => D4, CLR => X1N55, CLK => CLK, Q => Q4);
    BUF1 : BUFF
   port map(A => CLR, Y => X1N61);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity TA280 is 
    port(A, B, C, D, E : in std_logic;  EVEN : out std_logic;  F, 
        G, H, I : in std_logic;  ODD : out std_logic) ;
end TA280;


architecture DEF_ARCH of  TA280 is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N10, X1N12, X1N14, X1N25, X1N27, X1N29, X1N31 : std_logic ;
    begin   

    G6 : XOR2
   port map(A => X1N25, B => X1N27, Y => X1N31);
    G1 : XOR2
   port map(A => D, B => E, Y => X1N12);
    G0 : XOR2
   port map(A => A, B => B, Y => X1N10);
    G2 : XOR2
   port map(A => G, B => H, Y => X1N14);
    G5 : XOR2
   port map(A => X1N14, B => I, Y => X1N29);
    G4 : XOR2
   port map(A => X1N12, B => F, Y => X1N27);
    G7 : XNOR2
   port map(A => X1N31, B => X1N29, Y => EVEN);
    G3 : XOR2
   port map(A => X1N10, B => C, Y => X1N25);
    G8 : XOR2
   port map(A => X1N31, B => X1N29, Y => ODD);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity UDCNT4A is 
    port(CI, CLK : in std_logic;  CO : out std_logic;  LD, P0, P1, 
        P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out std_logic;  
        UD : in std_logic) ;
end UDCNT4A;


architecture DEF_ARCH of  UDCNT4A is

    component AND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM
        port(A, B, S, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AOI1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N110, X1N114, 
        X1N120, X1N136, X1N159, X1N172, X1N174, X1N181, X1N186, 
        X1N188, X1N205, X1N211, X1N66 : std_logic ;
    begin   

    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    Q2 <= Q2_1_net;
    
    Q3 <= Q3_1_net;
    
    G11 : AND3A
   port map(A => CI, B => Q3_1_net, C => X1N188, Y => X1N205);
    G0 : XNOR2
   port map(A => CI, B => Q0_1_net, Y => X1N110);
    DFM1 : DFM
   port map(A => P1, B => X1N114, S => LD, CLK => CLK, Q => 
        Q1_1_net);
    G7 : AND4
   port map(A => Q0_1_net, B => Q1_1_net, C => UD, D => Q2_1_net, 
        Y => X1N188);
    G5 : OR2
   port map(A => X1N172, B => X1N174, Y => X1N159);
    G12 : NAND2B
   port map(A => Q3_1_net, B => CI, Y => X1N211);
    G2 : AX1
   port map(A => CI, B => X1N136, C => Q1_1_net, Y => X1N114);
    DFM3 : DFM
   port map(A => P3, B => X1N66, S => LD, CLK => CLK, Q => 
        Q3_1_net);
    G13 : AOI1A
   port map(A => X1N211, B => X1N186, C => X1N205, Y => CO);
    G6 : AX1
   port map(A => CI, B => X1N159, C => Q2_1_net, Y => X1N120);
    G9 : OR2
   port map(A => X1N188, B => X1N186, Y => X1N181);
    G3 : AND3
   port map(A => Q0_1_net, B => Q1_1_net, C => UD, Y => X1N172);
    G10 : AX1
   port map(A => CI, B => X1N181, C => Q3_1_net, Y => X1N66);
    G4 : AND3C
   port map(A => Q0_1_net, B => Q1_1_net, C => UD, Y => X1N174);
    G1 : XNOR2
   port map(A => UD, B => Q0_1_net, Y => X1N136);
    G8 : AND4D
   port map(A => Q0_1_net, B => Q1_1_net, C => UD, D => Q2_1_net, 
        Y => X1N186);
    DFM2 : DFM
   port map(A => P2, B => X1N120, S => LD, CLK => CLK, Q => 
        Q2_1_net);
    DFM0 : DFM
   port map(A => P0, B => X1N110, S => LD, CLK => CLK, Q => 
        Q0_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library act1;
 
entity WTREE5 is 
    port(A, B, C : in std_logic;  CON : out std_logic;  DN, EN : 
        in std_logic;  S0, S1 : out std_logic) ;
end WTREE5;


architecture DEF_ARCH of  WTREE5 is

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component FA1A
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N14, X1N17, X1N19, GND_1_net : std_logic ;
    begin   

    GND_2_net : GND port map(Y => GND_1_net);
    A1 : FA1B
   port map(A => B, B => C, CI => DN, CO => X1N19, S => X1N14);
    A2 : FA1B
   port map(A => A, B => X1N14, CI => EN, CO => X1N17, S => S0);
    A3 : FA1A
   port map(A => X1N19, B => GND_1_net, CI => X1N17, CO => CON, 
        S => S1);
end DEF_ARCH;
