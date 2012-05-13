-- "$Header: 42mx_mig.vhd@@/main/4 $"
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

component AND5B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
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

component AO10
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO11
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

component AO1D
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

component AO1E
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

component AO2B
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

component AO2C
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

component AO2D
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

component AO2E
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

component AO3A
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

component AO3B
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

component AO3C
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

component AO6
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

component AO6A
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

component AO7
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO8
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component AO9
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
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

component AOI1C
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

component AOI1D
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

component AOI4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
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

component AX1C
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

component BBDLHS
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_GOUT_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_PAD                      :	VitalDelayType01z := 
               (1.000 ns, 1.000 ns, 1.000 ns, 1.000 ns, 1.000 ns, 1.000 ns);
      tpd_GIN_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_PAD_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_GOUT_noedge_negedge           :	VitalDelayType := 0.000 ns;
      tsetup_D_GOUT_noedge_negedge          :	VitalDelayType := 0.000 ns;
      thold_PAD_GIN_noedge_posedge          :	VitalDelayType := 0.000 ns;
      tsetup_PAD_GIN_noedge_posedge         :	VitalDelayType := 0.000 ns;
      tperiod_GIN_posedge            :	VitalDelayType := 0.000 ns;
      tperiod_GOUT_negedge           :	VitalDelayType := 0.000 ns;
      tpw_GIN_negedge                :	VitalDelayType := 0.000 ns;
      tpw_GOUT_posedge               :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GIN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_GOUT                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      GIN                            :	in    STD_ULOGIC;
      GOUT                           :	in    STD_ULOGIC;
      PAD                            :	inout STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component BBHS
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

component CLKINT
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

component CM7
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S11_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S10_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
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
      tipd_S10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component CM8
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_S11_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S10_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S01_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_S00_Y                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D3_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D2_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S00                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S01                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S10                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S11                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component CS1
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

component CS2
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

component CY2A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      B0                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component CY2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A1_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A0_Y                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      B0                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
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

component DF1A_CC
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

component DF1B_CC
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

component DF1C_CC
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

component DF1_CC
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

component DFC1A_CC
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

component DFC1B_CC
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

component DFC1D_CC
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

component DFC1_CC
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

component DFE1B_CC
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

component DFE1C_CC
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

component DFEA_CC
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

component DFE_CC
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

component DFM1B_CC
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

component DFM1C_CC
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

component DFM6A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D0_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_D1_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D1_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_D2_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D2_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_D3_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D3_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_S0_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_S0_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_S1_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_S1_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM6B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D0_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_D1_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D1_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_D2_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D2_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_D3_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D3_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_S0_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_S0_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_S1_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_S1_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM7A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D0_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_D1_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D1_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_D2_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D2_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_D3_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D3_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_S0_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tsetup_S0_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      thold_S10_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      tsetup_S10_CLK_noedge_posedge                 :	VitalDelayType := 0.000 ns;
      thold_S11_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      tsetup_S11_CLK_noedge_posedge                 :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S10                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S11                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DFM7B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D0_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_D1_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D1_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_D2_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D2_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_D3_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_D3_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_S0_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tsetup_S0_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      thold_S10_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      tsetup_S10_CLK_noedge_negedge                 :	VitalDelayType := 0.000 ns;
      thold_S11_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      tsetup_S11_CLK_noedge_negedge                 :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S10                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S11                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
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

component DFMA_CC
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

component DFM_CC
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

component DFP1A_CC
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

component DFP1B_CC
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

component DFP1D_CC
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

component DFP1_CC
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

component DFPCA_CC
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

component DFPC_CC
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

component DLM2
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_B_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_A_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_A_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_B_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_B_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_S_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_S_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_negedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_B                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_G                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM2B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_A_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_B_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_CLR_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_A_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_A_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_B_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_B_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_S_G_noedge_posedge                      :	VitalDelayType := 0.000 ns;
      tsetup_S_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      thold_CLR_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      trecovery_CLR_G_posedge_posedge                :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_A                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_B                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_G                         :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM3
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D1_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D2_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D3_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S1_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D0_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_D1_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D1_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_D2_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D2_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_D3_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D3_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_S0_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S0_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_S1_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S1_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_G                         :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM3A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D1_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D2_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D3_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S1_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D0_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_D1_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D1_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_D2_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D2_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_D3_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D3_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_S0_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S0_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_S1_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S1_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_G                         :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM4
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D1_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D2_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D3_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S10_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S11_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D0_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_D1_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D1_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_D2_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D2_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_D3_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D3_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_S0_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S0_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      thold_S10_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S10_G_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_S11_G_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S11_G_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      tperiod_G_negedge              :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S10                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S11                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_G                         :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component DLM4A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D1_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D2_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_D3_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S0_Q                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S10_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_S11_Q                      :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      thold_D0_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D0_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_D1_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D1_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_D2_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D2_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_D3_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_D3_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_S0_G_noedge_posedge                     :	VitalDelayType := 0.000 ns;
      tsetup_S0_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      thold_S10_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S10_G_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_S11_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_S11_G_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tperiod_G_posedge              :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_D0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D1                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D2                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_D3                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S0                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S10                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_S11                       :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_G                         :	VitalDelayType01 := (1.000 ns, 1.000 ns));

   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
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

component DXAND7
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_F_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_F                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      F                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component DXAX7
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_H_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_F_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_F                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_H                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      F                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      H                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component DXNAND7
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_G_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_F_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_F                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      F                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
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

component IBDL
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_PAD_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_Q                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_PAD_G_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_PAD_G_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_G_negedge                  :	VitalDelayType := 0.000 ns;
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      PAD                            :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
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

component IR
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_PAD_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      tsetup_PAD_CLK_noedge_posedge                 :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      PAD                            :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component IRI
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_QN                     :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_PAD_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      tsetup_PAD_CLK_noedge_posedge                 :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_PAD                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      PAD                            :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
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

component NAND5C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
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

component NOR5C
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
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

component OA4
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

component OBDLHS
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component OBHS
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

component OR5B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_B_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_A_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_D_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_C_Y                        :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

component ORH
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_PAD                    :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component ORIH
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLK_PAD                    :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component ORITH
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_PAD                      :	VitalDelayType01z := 
               (0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns);
      tpd_CLK_PAD                    :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component ORTH
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_E_PAD                      :	VitalDelayType01z := 
               (0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns);
      tpd_CLK_PAD                    :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_D_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_D_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
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

component QCLKBUF
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

component QCLKINT
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

component RAM4FA
  GENERIC (
        tipd_RDAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RDAD5_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD5_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD5_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD5_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_WRAD5_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        thold_WRAD5_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD5  : IN STD_ULOGIC ;
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD5  : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM4FF
  GENERIC (
        tipd_RDAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD5_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD4_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD5_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        thold_RDAD5_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD5_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD5  : IN STD_ULOGIC ;
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD5  : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM4FR
  GENERIC (
        tipd_RDAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD5_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD4_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD5_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        thold_RDAD5_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD5_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD5  : IN STD_ULOGIC ;
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD5  : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM4RA
  GENERIC (
        tipd_RDAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RDAD5_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD5_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD5_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD5_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_WRAD5_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        thold_WRAD5_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD5  : IN STD_ULOGIC ;
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD5  : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM4RF
  GENERIC (
        tipd_RDAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD5_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD4_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD5_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        thold_RDAD5_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD5_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD5  : IN STD_ULOGIC ;
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD5  : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM4RR
  GENERIC (
        tipd_RDAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD5    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD5_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD4_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD5_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        thold_RDAD5_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD5_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD5  : IN STD_ULOGIC ;
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD5  : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM8FA
  GENERIC (
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD7      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD6      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD5      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD4      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RDAD4_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_WRAD4_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WD7_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD6_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD5_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD4_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WD7_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD6_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD5_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD4_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD7    : IN STD_ULOGIC ;
        WD6    : IN STD_ULOGIC ;
        WD5    : IN STD_ULOGIC ;
        WD4    : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        RD7    : OUT STD_ULOGIC;
        RD6    : OUT STD_ULOGIC;
        RD5    : OUT STD_ULOGIC;
        RD4    : OUT STD_ULOGIC;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM8FF
  GENERIC (
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD7      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD6      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD5      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD4      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD4_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WD7_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD6_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD5_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD4_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WD7_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD6_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD5_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD4_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD7    : IN STD_ULOGIC ;
        WD6    : IN STD_ULOGIC ;
        WD5    : IN STD_ULOGIC ;
        WD4    : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD7    : OUT STD_ULOGIC;
        RD6    : OUT STD_ULOGIC;
        RD5    : OUT STD_ULOGIC;
        RD4    : OUT STD_ULOGIC;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM8FR
  GENERIC (
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD7      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD6      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD5      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD4      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD4_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WD7_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD6_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD5_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD4_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WD7_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD6_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD5_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD4_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD7    : IN STD_ULOGIC ;
        WD6    : IN STD_ULOGIC ;
        WD5    : IN STD_ULOGIC ;
        WD4    : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD7    : OUT STD_ULOGIC;
        RD6    : OUT STD_ULOGIC;
        RD5    : OUT STD_ULOGIC;
        RD4    : OUT STD_ULOGIC;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM8RA
  GENERIC (
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD7      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD6      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD5      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD4      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RDAD4_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD4_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD3_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD2_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD1_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RDAD0_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_WRAD4_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WD7_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD6_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD5_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD4_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WD7_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD6_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD5_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD4_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD7    : IN STD_ULOGIC ;
        WD6    : IN STD_ULOGIC ;
        WD5    : IN STD_ULOGIC ;
        WD4    : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        RD7    : OUT STD_ULOGIC;
        RD6    : OUT STD_ULOGIC;
        RD5    : OUT STD_ULOGIC;
        RD4    : OUT STD_ULOGIC;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM8RF
  GENERIC (
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD7      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD6      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD5      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD4      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD4_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_negedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WD7_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD6_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD5_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD4_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_negedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WD7_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD6_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD5_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD4_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_negedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_negedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD7    : IN STD_ULOGIC ;
        WD6    : IN STD_ULOGIC ;
        WD5    : IN STD_ULOGIC ;
        WD4    : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD7    : OUT STD_ULOGIC;
        RD6    : OUT STD_ULOGIC;
        RD5    : OUT STD_ULOGIC;
        RD4    : OUT STD_ULOGIC;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
end component; 

component RAM8RR
  GENERIC (
        tipd_RDAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RDAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_REN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_RCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD7      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD6      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD5      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD4      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD3      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD2      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD1      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WD0      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD4    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD3    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD2    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD1    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WRAD0    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WEN      : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_BLKEN    : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tipd_WCLK     : VitalDelayType01 := (1.000 ns, 1.000 ns);
        tpd_RCLK_RD7 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD6 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD5 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD4 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD3 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD2 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD1 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tpd_RCLK_RD0 : VitalDelayType01 := (0.000 ns, 0.000 ns);
        tsetup_RDAD4_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD3_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD2_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD1_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_RDAD0_RCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD4_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD3_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD2_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD1_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WRAD0_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tsetup_WD7_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD6_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD5_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD4_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD3_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD2_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD1_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WD0_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        thold_RDAD4_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD3_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD2_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD1_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_RDAD0_RCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD4_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD3_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD2_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD1_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WRAD0_WCLK_noedge_posedge    : VitalDelayType := 0.000 ns;
        thold_WD7_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD6_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD5_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD4_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD3_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD2_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD1_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WD0_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        tsetup_REN_RCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
        tsetup_WEN_WCLK_noedge_posedge     : VitalDelayType := 0.000 ns;
	tsetup_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        thold_REN_RCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
        thold_WEN_WCLK_noedge_posedge      : VitalDelayType := 0.000 ns;
	thold_BLKEN_WCLK_noedge_posedge   : VitalDelayType := 0.000 ns;
        tpw_RCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_RCLK_negedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_posedge    : VitalDelayType := 0.000 ns;
        tpw_WCLK_negedge    : VitalDelayType := 0.000 ns;
        TimingCheckOn : BOOLEAN := TRUE;
        InstancePath  : STRING := "*"
        );
  PORT (
        WRAD4  : IN STD_ULOGIC ;
        WRAD3  : IN STD_ULOGIC ;
        WRAD2  : IN STD_ULOGIC ;
        WRAD1  : IN STD_ULOGIC ;
        WRAD0  : IN STD_ULOGIC ;
        WD7    : IN STD_ULOGIC ;
        WD6    : IN STD_ULOGIC ;
        WD5    : IN STD_ULOGIC ;
        WD4    : IN STD_ULOGIC ;
        WD3    : IN STD_ULOGIC ;
        WD2    : IN STD_ULOGIC ;
        WD1    : IN STD_ULOGIC ;
        WD0    : IN STD_ULOGIC ;
        RDAD4  : IN STD_ULOGIC ;
        RDAD3  : IN STD_ULOGIC ;
        RDAD2  : IN STD_ULOGIC ;
        RDAD1  : IN STD_ULOGIC ;
        RDAD0  : IN STD_ULOGIC ;
        BLKEN  : IN STD_ULOGIC ;
        BLKENS : IN STD_ULOGIC ;
        WEN    : IN STD_ULOGIC ;
        WCLK   : IN STD_ULOGIC ;
        REN    : IN STD_ULOGIC ;
        RCLK   : IN STD_ULOGIC ;
        RD7    : OUT STD_ULOGIC;
        RD6    : OUT STD_ULOGIC;
        RD5    : OUT STD_ULOGIC;
        RD4    : OUT STD_ULOGIC;
        RD3    : OUT STD_ULOGIC;
        RD2    : OUT STD_ULOGIC;
        RD1    : OUT STD_ULOGIC;
        RD0    : OUT STD_ULOGIC
        );

  
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

component TBDLHS
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_D_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_G_PAD                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_E_PAD                      :	VitalDelayType01z := 
               (0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns, 0.000 ns);
      thold_D_G_noedge_negedge                      :	VitalDelayType := 0.000 ns;
      tsetup_D_G_noedge_negedge                     :	VitalDelayType := 0.000 ns;
      tpw_G_posedge                  :	VitalDelayType := 0.000 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_G                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component; 

component TBHS
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

component TF1A
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_T_CLK_noedge_posedge                    :	VitalDelayType := 0.000 ns;
      tsetup_T_CLK_noedge_posedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_posedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_posedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_posedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      T                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component; 

component TF1B
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_CLR_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      tpd_CLK_Q                      :	VitalDelayType01 := (1.000 ns, 1.000 ns);
      thold_T_CLK_noedge_negedge                    :	VitalDelayType := 0.000 ns;
      tsetup_T_CLK_noedge_negedge                   :	VitalDelayType := 0.000 ns;
      thold_CLR_CLK_noedge_negedge                  :	VitalDelayType := 0.000 ns;
      trecovery_CLR_CLK_posedge_negedge              :	VitalDelayType := 0.000 ns;
      tperiod_CLK_negedge            :	VitalDelayType := 0.000 ns;
      tpw_CLK_posedge                :	VitalDelayType := 0.000 ns;
      tpw_CLK_negedge                :	VitalDelayType := 0.000 ns;
      tpw_CLR_negedge                :	VitalDelayType := 0.000 ns;
      tipd_T                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CLR                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      T                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
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
component CSA2A
    port(A0, A1, B0, B1 : in std_logic;  C0, C1, S00, S01, S10, 
        S11 : out std_logic) ;
end component;
component CSA2H
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
component CSA3H
    port(A0, A1, A2, B0, B1, B2 : in std_logic;  C0, C1, S00, S01, 
        S02, S10, S11, S12 : out std_logic) ;
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
component DFC1C
    port(CLK, CLR, D : in std_logic;  QN : out std_logic) ;
end component;
component DFC1F
    port(CLK, CLR, D : in std_logic;  QN : out std_logic) ;
end component;
component DFE2D
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end component;
component DFE4
    port(CLK, D, E, PRE : in std_logic;  Q : out std_logic) ;
end component;
component DFE4A
    port(CLK, D, E, PRE : in std_logic;  Q : out std_logic) ;
end component;
component DFE4B
    port(CLK, D, E, PRE : in std_logic;  Q : out std_logic) ;
end component;
component DFE4C
    port(CLK, PRE, D, E : in std_logic;  Q : out std_logic) ;
end component;
component DFEB
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end component;
component DFEC
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end component;
component DFED
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end component;
component DFM3F
    port(A, B, CLK, CLR : in std_logic;  QN : out std_logic;  S : 
        in std_logic) ;
end component;
component DFM3G
    port(A, B, CLK, CLR : in std_logic;  QN : out std_logic;  S : 
        in std_logic) ;
end component;
component DFM4
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end component;
component DFM4A
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end component;
component DFM4B
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end component;
component DFM4E
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end component;
component DFM5A
    port(A, B, CLK, CLR, PRE : in std_logic;  Q : out std_logic;  
        S : in std_logic) ;
end component;
component DFM5B
    port(A, B, CLK, CLR, PRE : in std_logic;  Q : out std_logic;  
        S : in std_logic) ;
end component;
component DLC8A
    port(CLR, D0, D1, D2, D3, D4, D5, D6, D7, G : in std_logic;  
        Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic) ;
end component;
component DLE2A
    port(CLR, D, E, G : in std_logic;  Q : out std_logic) ;
end component;
component DLE3A
    port(D, E, G, PRE : in std_logic;  Q : out std_logic) ;
end component;
component DLE4A
    port(CLR, D, E, G, PRE : in std_logic;  Q : out std_logic) ;
end component;
component DLE8
    port(D0, D1, D2, D3, D4, D5, D6, D7, E, G : in std_logic;  Q0, 
        Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic) ;
end component;
component DLM2A
    port(A, B, CLR, G : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
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
component JKF3A
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end component;
component JKF3B
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end component;
component JKF3C
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end component;
component JKF3D
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end component;
component JKF4B
    port(CLK, CLR, J, K, PRE : in std_logic;  Q : out std_logic
        ) ;
end component;
component JKFPC
    port(CLK, CLR, J, K, PRE : in std_logic;  Q : out std_logic
        ) ;
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
component PRD9A
    port(DB8, DB7, DB6, D8, D7, D6, D5, D4, D3, D2, D1, D0 : in 
        std_logic;  EVEN, ODD : out std_logic) ;
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
component SUMX1A
    port(A0, A1, B0, B1, CI : in std_logic;  Y : out std_logic) ;
end component;
component TA00
    port(A, B : in std_logic;  Y : out std_logic) ;
end component;
component TA02
    port(A, B : in std_logic;  Y : out std_logic) ;
end component;
component TA04
    port(A : in std_logic;  Y : out std_logic) ;
end component;
component TA07
    port(A : in std_logic;  Y : out std_logic) ;
end component;
component TA08
    port(A, B : in std_logic;  Y : out std_logic) ;
end component;
component TA10
    port(A, B, C : in std_logic;  Y : out std_logic) ;
end component;
component TA11
    port(A, B, C : in std_logic;  Y : out std_logic) ;
end component;
component TA138
    port(A, B, C, G1, G2A, G2B : in std_logic;  Y0, Y1, Y2, Y3, 
        Y4, Y5, Y6, Y7 : out std_logic) ;
end component;
component TA160
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
end component;
component TA160A
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
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
component TA174
    port(CLK, CLR, D1, D2, D3, D4, D5, D6 : in std_logic;  Q1, Q2, 
        Q3, Q4, Q5, Q6 : out std_logic) ;
end component;
component TA175
    port(CLK, CLR, D1, D2, D3, D4 : in std_logic;  Q1, Q2, Q3, Q4 : 
        out std_logic) ;
end component;
component TA181
    port(A0, A1, A2, A3 : in std_logic;  AEQB : out std_logic;  
        B0, B1, B2, B3, CI : in std_logic;  CO, F0, F1, F2, F3, G : 
        out std_logic;  M : in std_logic;  P : out std_logic;  S0, 
        S1, S2, S3 : in std_logic) ;
end component;
component TA190
    port(A, B, C, CLK, CTEN, D, DU, LOAD : in std_logic;  MM, QA, 
        QB, QC, QD, RCO : out std_logic) ;
end component;
component TA191
    port(A, B, C, CLK, CTEN, D, DU, LOAD : in std_logic;  MM, QA, 
        QB, QC, QD, RCO : out std_logic) ;
end component;
component TA194
    port(A, B, C, CLK, CLR, D : in std_logic;  QA, QB, QC, QD : 
        out std_logic;  S0, S1, SLSI, SRSI : in std_logic) ;
end component;
component TA195
    port(A, B, C, CLK, CLR, D, J, K : in std_logic;  QA, QB, QC, 
        QD, QDN : out std_logic;  SHLD : in std_logic) ;
end component;
component TA20
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end component;
component TA21
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end component;
component TA269
    port(A, B, C, CLK, D, E, ENP, ENT, F, G, H, LD : in std_logic
        ;  QA, QB, QC, QD, QE, QF, QG, QH, RCO : out std_logic;  
        UD : in std_logic) ;
end component;
component TA27
    port(A, B, C : in std_logic;  Y : out std_logic) ;
end component;
component TA273
    port(CLK, CLR, D1, D2, D3, D4, D5, D6, D7, D8 : in std_logic
        ;  Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8 : out std_logic) ;
end component;
component TA280
    port(A, B, C, D, E : in std_logic;  EVEN : out std_logic;  F, 
        G, H, I : in std_logic;  ODD : out std_logic) ;
end component;
component TA32
    port(A, B : in std_logic;  Y : out std_logic) ;
end component;
component TA40
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end component;
component TA42
    port(A, B, C, D : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, 
        Y7, Y8, Y9 : out std_logic) ;
end component;
component TA51
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end component;
component TA54
    port(A, B, C, D, E, F, G, H : in std_logic;  Y : out 
        std_logic) ;
end component;
component TA55
    port(A, B, C, D, E, F, G, H : in std_logic;  Y : out 
        std_logic) ;
end component;
component TA86
    port(A, B : in std_logic;  Y : out std_logic) ;
end component;
component UDCNT4A
    port(CI, CLK : in std_logic;  CO : out std_logic;  LD, P0, P1, 
        P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : out std_logic;  
        UD : in std_logic) ;
end component;
component VAD16CR
    port(A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, 
        A2, A1, A0, B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, 
        B5, B4, B3, B2, B1, B0 : in std_logic;  CO, CO11_0, 
        CO11_1, CO13_0, CO13_1, CO1B, CO3_0, CO3_1, CO5A, CO5B, 
        CO7_0, CO7_1, CO9_0, CO9_1 : out std_logic) ;
end component;
component VAD16SL
    port(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, B0, B1, B2, B3, 
        B4, B5, B6, B7, B8, B9, CO1B, CO3_0, CO3_1, CO5B, CO7_0, 
        CO7_1 : in std_logic;  S0, S1, S2, S3, S4, S5, S6, S7, S8, 
        S9 : out std_logic) ;
end component;
component VAD16SM
    port(A10, A11, A12, A13, B10, B11, B12, B13, CO11_0, CO11_1, 
        CO5A, CO5B, CO7_0, CO7_1, CO9_0, CO9_1 : in std_logic;  
        S10, S11, S12, S13 : out std_logic) ;
end component;
component VAD16SU
    port(A14, A15, B14, B15, CO11_0, CO11_1, CO13_0, CO13_1, CO5A : 
        in std_logic;  S14, S15 : out std_logic) ;
end component;
component VADC16CR
    port(A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, 
        A2, A1, A0, B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, 
        B5, B4, B3, B2, B1, B0, CIN : in std_logic;  CO, CO0B, 
        CO10_0, CO10_1, CO12_0, CO12_1, CO14_0, CO14_1, CO2_0, 
        CO2_1, CO4A, CO4B, CO6_0, CO6_1, CO8_0, CO8_1 : out 
        std_logic) ;
end component;
component VADC16SL
    port(A0, A1, A2, A3, A4, A5, A6, A7, A8, B0, B1, B2, B3, B4, 
        B5, B6, B7, B8, CIN, CO0B, CO2_0, CO2_1, CO4B, CO6_0, 
        CO6_1 : in std_logic;  S0, S1, S2, S3, S4, S5, S6, S7, S8 : 
        out std_logic) ;
end component;
component VADC16SM
    port(A10, A11, A12, A9, B10, B11, B12, B9, CO10_0, CO10_1, 
        CO4A, CO4B, CO6_0, CO6_1, CO8_0, CO8_1 : in std_logic;  
        S10, S11, S12, S9 : out std_logic) ;
end component;
component VADC16SU
    port(A13, A14, A15, B13, B14, B15, CO10_0, CO10_1, CO12_0, 
        CO12_1, CO14_0, CO14_1, CO4A : in std_logic;  S13, S14, 
        S15 : out std_logic) ;
end component;
component VCTD2CP
    port(CLEAR, CLK : in std_logic;  CLR, CNT : out std_logic;  
        COUNT : in std_logic;  LD : out std_logic;  LOAD, P0, P1 : 
        in std_logic;  Q0, Q1 : out std_logic) ;
end component;
component VCTD2CU
    port(CI, CLK, CLR, CNT, CT0, CT1, LD, P0, P1 : in std_logic;  
        Q0, Q1 : out std_logic) ;
end component;
component VCTD4CL
    port(CLK, CLR, CNT : in std_logic;  CO : out std_logic;  CT0, 
        CT1, LD, P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : 
        out std_logic) ;
end component;
component VCTD4CM
    port(CI, CLK, CLR, CNT : in std_logic;  CO : out std_logic;  
        CT0, CT1, LD, P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, 
        Q3 : out std_logic) ;
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
library a42mx;
use a42mx.VTABLES.all;
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
--library a42mx;
--use a42mx.VTABLES.all;
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
--library a42mx;
--use a42mx.VTABLES.all;
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
library a42mx;
use a42mx.VTABLES.all;
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
library a42mx;
use a42mx.VTABLES.all;
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
library a42mx;
 
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
library a42mx;
 
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

    component AX1C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N85, A0, A1, 
        A2, A3, E2, E3 : std_logic ;
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
    G2 : AX1C
   port map(A => Q0_1_net, B => CI, C => Q1_1_net, Y => A1);
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
library a42mx;
 
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
library a42mx;
 
entity COMP4 is 
    port(A0, A1, A2, A3 : in std_logic;  AEB, AGB, ALB : out 
        std_logic;  B0, B1, B2, B3 : in std_logic) ;
end COMP4;


architecture DEF_ARCH of  COMP4 is

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N40, X1N41, X1N42, X1N43, X1N44, X1N45, X1N46, X1N47, 
        X1N48, X1N49, X1N50, X1N51, X1N52, X1N53 : std_logic ;
    begin   

    G11 : AND4C
   port map(A => X1N53, B => X1N52, C => X1N51, D => X1N46, Y => 
        X1N44);
    G0 : XOR2
   port map(A => A3, B => B3, Y => X1N53);
    G15 : OR4A
   port map(A => X1N48, B => X1N47, C => X1N45, D => X1N44, Y => 
        ALB);
    G16 : OR4A
   port map(A => X1N43, B => X1N42, C => X1N50, D => X1N41, Y => 
        AGB);
    G7 : AND2A
   port map(A => B0, B => A0, Y => X1N40);
    G5 : AND2A
   port map(A => A0, B => B0, Y => X1N46);
    G12 : AND4C
   port map(A => X1N53, B => X1N52, C => A1, D => B1, Y => X1N45);
    G2 : XOR2
   port map(A => A1, B => B1, Y => X1N51);
    G13 : AND3B
   port map(A => X1N53, B => A2, C => B2, Y => X1N47);
    G6 : NAND2A
   port map(A => B3, B => A3, Y => X1N43);
    G9 : AND4C
   port map(A => X1N53, B => X1N52, C => B1, D => A1, Y => X1N50);
    G14 : AND4C
   port map(A => X1N53, B => X1N52, C => X1N51, D => X1N49, Y => 
        AEB);
    G3 : XNOR2
   port map(A => A0, B => B0, Y => X1N49);
    G10 : AND3B
   port map(A => X1N53, B => B2, C => A2, Y => X1N42);
    G4 : NAND2A
   port map(A => A3, B => B3, Y => X1N48);
    G1 : XOR2
   port map(A => A2, B => B2, Y => X1N52);
    G8 : AND4C
   port map(A => X1N53, B => X1N52, C => X1N51, D => X1N40, Y => 
        X1N41);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity COMP4A is 
    port(A0, A1, A2, A3 : in std_logic;  AEB, AGB, ALB : out 
        std_logic;  B0, B1, B2, B3 : in std_logic) ;
end COMP4A;


architecture DEF_ARCH of  COMP4A is

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N40, X1N41, X1N42, X1N43, X1N44, X1N45, X1N46, X1N47, 
        X1N48, X1N49, X1N50, X1N51, X1N52, X1N53 : std_logic ;
    begin   

    G11 : AND4C
   port map(A => X1N53, B => X1N52, C => X1N51, D => X1N46, Y => 
        X1N44);
    G0 : XOR2
   port map(A => A3, B => B3, Y => X1N53);
    G15 : OR4A
   port map(A => X1N48, B => X1N47, C => X1N45, D => X1N44, Y => 
        ALB);
    G16 : OR4A
   port map(A => X1N43, B => X1N42, C => X1N50, D => X1N41, Y => 
        AGB);
    G7 : AND2A
   port map(A => B0, B => A0, Y => X1N40);
    G5 : AND2A
   port map(A => A0, B => B0, Y => X1N46);
    G12 : AND4C
   port map(A => X1N53, B => X1N52, C => A1, D => B1, Y => X1N45);
    G2 : XOR2
   port map(A => A1, B => B1, Y => X1N51);
    G13 : AND3B
   port map(A => X1N53, B => A2, C => B2, Y => X1N47);
    G6 : NAND2A
   port map(A => B3, B => A3, Y => X1N43);
    G9 : AND4C
   port map(A => X1N53, B => X1N52, C => B1, D => A1, Y => X1N50);
    G14 : NAND4C
   port map(A => X1N53, B => X1N52, C => X1N51, D => X1N49, Y => 
        AEB);
    G3 : XNOR2
   port map(A => A0, B => B0, Y => X1N49);
    G10 : AND3B
   port map(A => X1N53, B => B2, C => A2, Y => X1N42);
    G4 : NAND2A
   port map(A => A3, B => B3, Y => X1N48);
    G1 : XOR2
   port map(A => A2, B => B2, Y => X1N52);
    G8 : AND4C
   port map(A => X1N53, B => X1N52, C => X1N51, D => X1N40, Y => 
        X1N41);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
entity CSA2H is 
    port(A0, A1, B0, B1 : in std_logic;  C0, C1, S00, S01, S10, 
        S11 : out std_logic) ;
end CSA2H;


architecture DEF_ARCH of  CSA2H is

    component CY2A
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component CY2B
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
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
    A6 : CY2A
   port map(A0 => A0, A1 => A1, B0 => B0, B1 => B1, Y => C0);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    A2 : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => OPEN , S => S11);
    A5 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => OPEN , S => S01);
    A4 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
    A3 : CY2B
   port map(A0 => A0, A1 => A1, B0 => B0, B1 => B1, Y => C1);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
entity CSA3H is 
    port(A0, A1, A2, B0, B1, B2 : in std_logic;  C0, C1, S00, S01, 
        S02, S10, S11, S12 : out std_logic) ;
end CSA3H;


architecture DEF_ARCH of  CSA3H is

    component MAJ3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component FA1B
        port(A, B, CI : in std_logic := 'U'; CO, S : out 
        std_logic) ;
    end component;

    component CY2B
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component CY2A
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N20, X1N21, X1N54, X1N57, X1N65, X1N72, GND_1_net, 
        VCC_1_net : std_logic ;
    begin   

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    G1 : MAJ3
   port map(A => X1N57, B => A2, C => B2, Y => C1);
    A6 : FA1B
   port map(A => A1, B => B1, CI => X1N21, CO => X1N72, S => S01);
    A1_1_inst : FA1B
   port map(A => A0, B => B0, CI => GND_1_net, CO => X1N20, S => 
        S10);
    G2 : MAJ3
   port map(A => X1N65, B => A2, C => B2, Y => C0);
    A2_1_inst : FA1B
   port map(A => A1, B => B1, CI => X1N20, CO => X1N54, S => S11);
    A5 : FA1B
   port map(A => A0, B => B0, CI => VCC_1_net, CO => X1N21, S => 
        S00);
    A4 : CY2B
   port map(A0 => A0, A1 => A1, B0 => B0, B1 => B1, Y => X1N57);
    A7 : FA1B
   port map(A => A2, B => B2, CI => X1N72, CO => OPEN , S => S02);
    A3 : FA1B
   port map(A => A2, B => B2, CI => X1N54, CO => OPEN , S => S12);
    A8 : CY2A
   port map(A0 => A0, A1 => A1, B0 => B0, B1 => B1, Y => X1N65);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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

    signal X1N45, X1N46, X1N47, X1N48 : std_logic ;
    begin   

    G11 : OR4
   port map(A => X1N45, B => C, C => B, D => A, Y => Y8);
    G0 : INV
   port map(A => D, Y => X1N45);
    G15 : OR4
   port map(A => D, B => C, C => X1N47, D => X1N48, Y => Y3);
    G17 : OR4
   port map(A => D, B => X1N46, C => B, D => X1N48, Y => Y5);
    G16 : OR4
   port map(A => D, B => X1N46, C => B, D => A, Y => Y4);
    G7 : OR4
   port map(A => X1N45, B => X1N46, C => B, D => A, Y => Y12);
    G5 : OR4
   port map(A => X1N45, B => X1N46, C => X1N47, D => A, Y => Y14);
    G12 : OR4
   port map(A => D, B => C, C => B, D => A, Y => Y0);
    G2 : INV
   port map(A => B, Y => X1N47);
    G13 : OR4
   port map(A => D, B => C, C => B, D => X1N48, Y => Y1);
    G6 : OR4
   port map(A => X1N45, B => X1N46, C => B, D => X1N48, Y => Y13);
    G9 : OR4
   port map(A => X1N45, B => C, C => X1N47, D => A, Y => Y10);
    G14 : OR4
   port map(A => D, B => C, C => X1N47, D => A, Y => Y2);
    G3 : INV
   port map(A => A, Y => X1N48);
    G10 : OR4
   port map(A => X1N45, B => C, C => B, D => X1N48, Y => Y9);
    G4 : OR4
   port map(A => X1N45, B => X1N46, C => X1N47, D => X1N48, Y => 
        Y15);
    G1 : INV
   port map(A => C, Y => X1N46);
    G18 : OR4
   port map(A => D, B => X1N46, C => X1N47, D => A, Y => Y6);
    G8 : OR4
   port map(A => X1N45, B => C, C => X1N47, D => X1N48, Y => Y11);
    G19 : OR4
   port map(A => D, B => X1N46, C => X1N47, D => X1N48, Y => Y7);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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

    signal AB, BB, CB : std_logic ;
    begin   

    G8 : NOR4A
   port map(A => E, B => CB, C => B, D => AB, Y => Y5);
    G7 : NOR4A
   port map(A => E, B => A, C => B, D => AB, Y => Y4);
    G5 : NOR4A
   port map(A => E, B => A, C => BB, D => C, Y => Y2);
    G2 : INV
   port map(A => A, Y => CB);
    G10 : NOR4A
   port map(A => E, B => CB, C => BB, D => AB, Y => Y7);
    G1 : INV
   port map(A => B, Y => BB);
    G9 : NOR4A
   port map(A => E, B => A, C => BB, D => AB, Y => Y6);
    G4 : NOR4A
   port map(A => E, B => CB, C => B, D => C, Y => Y1);
    G6 : NOR4A
   port map(A => E, B => CB, C => BB, D => C, Y => Y3);
    G0 : INV
   port map(A => C, Y => AB);
    G3 : NOR4A
   port map(A => E, B => A, C => B, D => C, Y => Y0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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

    signal AB, BB, CB : std_logic ;
    begin   

    G8 : OR4A
   port map(A => E, B => CB, C => B, D => AB, Y => Y5);
    G7 : OR4A
   port map(A => E, B => A, C => B, D => AB, Y => Y4);
    G5 : OR4A
   port map(A => E, B => A, C => BB, D => C, Y => Y2);
    G2 : INV
   port map(A => A, Y => CB);
    G10 : OR4A
   port map(A => E, B => CB, C => BB, D => AB, Y => Y7);
    G1 : INV
   port map(A => B, Y => BB);
    G9 : OR4A
   port map(A => E, B => A, C => BB, D => AB, Y => Y6);
    G4 : OR4A
   port map(A => E, B => CB, C => B, D => C, Y => Y1);
    G6 : OR4A
   port map(A => E, B => CB, C => BB, D => C, Y => Y3);
    G0 : INV
   port map(A => C, Y => AB);
    G3 : OR4A
   port map(A => E, B => A, C => B, D => C, Y => Y0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFC1C is 
    port(CLK, CLR, D : in std_logic;  QN : out std_logic) ;
end DFC1C;


architecture DEF_ARCH of  DFC1C is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFC1
        port(CLK, CLR, D : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : INV
   port map(A => X, Y => QN);
    U0 : DFC1
   port map(CLK => CLK, CLR => CLR, D => D, Q => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFC1F is 
    port(CLK, CLR, D : in std_logic;  QN : out std_logic) ;
end DFC1F;


architecture DEF_ARCH of  DFC1F is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFC1A
        port(CLK, CLR, D : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : INV
   port map(A => X, Y => QN);
    U0 : DFC1A
   port map(CLK => CLK, CLR => CLR, D => D, Q => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFE2D is 
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end DFE2D;


architecture DEF_ARCH of  DFE2D is

    component DFPCA
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFPCA
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => 
        Q_1_net);
    U0 : MX2
   port map(A => D, B => Q_1_net, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFE4 is 
    port(CLK, D, E, PRE : in std_logic;  Q : out std_logic) ;
end DFE4;


architecture DEF_ARCH of  DFE4 is

    component DFP1
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => Q_1_net, B => D, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFE4A is 
    port(CLK, D, E, PRE : in std_logic;  Q : out std_logic) ;
end DFE4A;


architecture DEF_ARCH of  DFE4A is

    component DFP1A
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1A
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => Q_1_net, B => D, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFE4B is 
    port(CLK, D, E, PRE : in std_logic;  Q : out std_logic) ;
end DFE4B;


architecture DEF_ARCH of  DFE4B is

    component DFP1
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => D, B => Q_1_net, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFE4C is 
    port(CLK, PRE, D, E : in std_logic;  Q : out std_logic) ;
end DFE4C;


architecture DEF_ARCH of  DFE4C is

    component DFP1A
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal NET0, Q_1_net : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1A
   port map(D => NET0, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => D, B => Q_1_net, S => E, Y => NET0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFEB is 
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end DFEB;


architecture DEF_ARCH of  DFEB is

    component DFPC
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFPC
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => 
        Q_1_net);
    U0 : MX2
   port map(A => Q_1_net, B => D, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFEC is 
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end DFEC;


architecture DEF_ARCH of  DFEC is

    component DFPCA
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFPCA
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => 
        Q_1_net);
    U0 : MX2
   port map(A => Q_1_net, B => D, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFED is 
    port(CLK, CLR, D, E, PRE : in std_logic;  Q : out std_logic
        ) ;
end DFED;


architecture DEF_ARCH of  DFED is

    component DFPC
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFPC
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => 
        Q_1_net);
    U0 : MX2
   port map(A => D, B => Q_1_net, S => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM3F is 
    port(A, B, CLK, CLR : in std_logic;  QN : out std_logic;  S : 
        in std_logic) ;
end DFM3F;


architecture DEF_ARCH of  DFM3F is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM3
        port(A, B, CLK, CLR, S : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : INV
   port map(A => X, Y => QN);
    U0 : DFM3
   port map(A => A, B => B, CLK => CLK, CLR => CLR, S => S, Q => 
        X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM3G is 
    port(A, B, CLK, CLR : in std_logic;  QN : out std_logic;  S : 
        in std_logic) ;
end DFM3G;


architecture DEF_ARCH of  DFM3G is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM3E
        port(A, B, CLK, CLR, S : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : INV
   port map(A => X, Y => QN);
    U0 : DFM3E
   port map(A => A, B => B, CLK => CLK, CLR => CLR, S => S, Q => 
        X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM4 is 
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end DFM4;


architecture DEF_ARCH of  DFM4 is

    component DFP1
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DFP1
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM4A is 
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end DFM4A;


architecture DEF_ARCH of  DFM4A is

    component DFP1B
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DFP1B
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM4B is 
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end DFM4B;


architecture DEF_ARCH of  DFM4B is

    component DFP1D
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DFP1D
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM4E is 
    port(A, B, CLK, PRE : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end DFM4E;


architecture DEF_ARCH of  DFM4E is

    component DFP1A
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DFP1A
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM5A is 
    port(A, B, CLK, CLR, PRE : in std_logic;  Q : out std_logic;  
        S : in std_logic) ;
end DFM5A;


architecture DEF_ARCH of  DFM5A is

    component DFPC
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DFPC
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DFM5B is 
    port(A, B, CLK, CLR, PRE : in std_logic;  Q : out std_logic;  
        S : in std_logic) ;
end DFM5B;


architecture DEF_ARCH of  DFM5B is

    component DFPCA
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DFPCA
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity DLE2A is 
    port(CLR, D, E, G : in std_logic;  Q : out std_logic) ;
end DLE2A;


architecture DEF_ARCH of  DLE2A is

    component DLE2C
        port(D, E, CLR, G : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DLE2C
   port map(D => D, E => X, CLR => CLR, G => G, Q => Q);
    U0 : INV
   port map(A => E, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DLE3A is 
    port(D, E, G, PRE : in std_logic;  Q : out std_logic) ;
end DLE3A;


architecture DEF_ARCH of  DLE3A is

    component CM8
        port(D0, D1, D2, D3, S00, S01, S10, S11 : in std_logic := 
        'U'; Y : out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal GND_1_net, Q_1_net, VDD, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    VCC_1_net : VCC port map(Y => VDD);
    GND_2_net : GND port map(Y => GND_1_net);
    U1 : CM8
   port map(D0 => X, D1 => VDD, D2 => Q_1_net, D3 => VDD, S00 => 
        PRE, S01 => VDD, S10 => GND_1_net, S11 => G, Y => Q_1_net);
    U0 : CM8
   port map(D0 => GND_1_net, D1 => GND_1_net, D2 => Q_1_net, 
        D3 => D, S00 => VDD, S01 => E, S10 => VDD, S11 => 
        GND_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity DLE4A is 
    port(CLR, D, E, G, PRE : in std_logic;  Q : out std_logic) ;
end DLE4A;


architecture DEF_ARCH of  DLE4A is

    component CM8
        port(D0, D1, D2, D3, S00, S01, S10, S11 : in std_logic := 
        'U'; Y : out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal GND_1_net, Q_1_net, VDD, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    VCC_1_net : VCC port map(Y => VDD);
    GND_2_net : GND port map(Y => GND_1_net);
    U1 : CM8
   port map(D0 => X, D1 => X, D2 => PRE, D3 => CLR, S00 => VDD, 
        S01 => Q_1_net, S10 => E, S11 => G, Y => Q_1_net);
    U0 : CM8
   port map(D0 => GND_1_net, D1 => VDD, D2 => CLR, D3 => CLR, 
        S00 => VDD, S01 => PRE, S10 => GND_1_net, S11 => D, Y => 
        X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity DLM2A is 
    port(A, B, CLR, G : in std_logic;  Q : out std_logic;  S : 
        in std_logic) ;
end DLM2A;


architecture DEF_ARCH of  DLM2A is

    component DLC1A
        port(D, CLR, G : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X : std_logic ;
    begin   

    U1 : DLC1A
   port map(D => X, CLR => CLR, G => G, Q => Q);
    U0 : MX2
   port map(A => A, B => B, S => S, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
entity JKF3A is 
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end JKF3A;


architecture DEF_ARCH of  JKF3A is

    component DFP1B
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1B
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => J, B => K, S => Q_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity JKF3B is 
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end JKF3B;


architecture DEF_ARCH of  JKF3B is

    component DFP1D
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1D
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => J, B => K, S => Q_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity JKF3C is 
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end JKF3C;


architecture DEF_ARCH of  JKF3C is

    component DFP1
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => J, B => K, S => Q_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity JKF3D is 
    port(CLK, J, K, PRE : in std_logic;  Q : out std_logic) ;
end JKF3D;


architecture DEF_ARCH of  JKF3D is

    component DFP1A
        port(D, PRE, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFP1A
   port map(D => X, PRE => PRE, CLK => CLK, Q => Q_1_net);
    U0 : MX2
   port map(A => J, B => K, S => Q_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity JKF4B is 
    port(CLK, CLR, J, K, PRE : in std_logic;  Q : out std_logic
        ) ;
end JKF4B;


architecture DEF_ARCH of  JKF4B is

    component DFPCA
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFPCA
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => 
        Q_1_net);
    U0 : MX2
   port map(A => J, B => K, S => Q_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity JKFPC is 
    port(CLK, CLR, J, K, PRE : in std_logic;  Q : out std_logic
        ) ;
end JKFPC;


architecture DEF_ARCH of  JKFPC is

    component DFPC
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q_1_net, X : std_logic ;
    begin   

    Q <= Q_1_net;
    
    U1 : DFPC
   port map(D => X, CLR => CLR, PRE => PRE, CLK => CLK, Q => 
        Q_1_net);
    U0 : MX2
   port map(A => J, B => K, S => Q_1_net, Y => X);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
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
library a42mx;
 
entity PRD9A is 
    port(DB8, DB7, DB6, D8, D7, D6, D5, D4, D3, D2, D1, D0 : in 
        std_logic;  EVEN, ODD : out std_logic) ;
end PRD9A;


architecture DEF_ARCH of  PRD9A is

    component MX4
        port(D0, D1, D2, D3, S0, S1 : in std_logic := 'U'; Y : 
        out std_logic) ;
    end component;

    signal X1N13, X1N21, X1N29, X1N42 : std_logic ;
    begin   

    U2 : MX4
   port map(D0 => D8, D1 => DB8, D2 => DB8, D3 => D8, S0 => D4, 
        S1 => D5, Y => X1N29);
    U5 : MX4
   port map(D0 => X1N42, D1 => X1N29, D2 => X1N29, D3 => X1N42, 
        S0 => X1N13, S1 => X1N21, Y => EVEN);
    U4 : MX4
   port map(D0 => X1N29, D1 => X1N42, D2 => X1N42, D3 => X1N29, 
        S0 => X1N13, S1 => X1N21, Y => ODD);
    U3 : MX4
   port map(D0 => DB8, D1 => D8, D2 => D8, D3 => DB8, S0 => D4, 
        S1 => D5, Y => X1N42);
    U1 : MX4
   port map(D0 => D7, D1 => DB7, D2 => DB7, D3 => D7, S0 => D2, 
        S1 => D3, Y => X1N21);
    U0 : MX4
   port map(D0 => D6, D1 => DB6, D2 => DB6, D3 => D6, S0 => D0, 
        S1 => D1, Y => X1N13);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity REGE8A is 
    port(CLK, CLR, D0, D1, D2, D3, D4, D5, D6, D7, E, PRE : in 
        std_logic;  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out 
        std_logic) ;
end REGE8A;


architecture DEF_ARCH of  REGE8A is

    component XA1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFPC
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    signal X1N126, X1N69 : std_logic ;
    begin   

    G1 : XA1
   port map(A => PRE, B => CLR, C => X1N126, Y => X1N69);
    G0 : AND2
   port map(A => CLK, B => E, Y => X1N126);
    F6 : DFPC
   port map(D => D6, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q6);
    F1 : DFPC
   port map(D => D1, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q1);
    F0 : DFPC
   port map(D => D0, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q0);
    F2 : DFPC
   port map(D => D2, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q2);
    F5 : DFPC
   port map(D => D5, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q5);
    F4 : DFPC
   port map(D => D4, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q4);
    F7 : DFPC
   port map(D => D7, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q7);
    F3 : DFPC
   port map(D => D3, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity REGE8B is 
    port(CLK, CLR, D0, D1, D2, D3, D4, D5, D6, D7, E, PRE : in 
        std_logic;  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out 
        std_logic) ;
end REGE8B;


architecture DEF_ARCH of  REGE8B is

    component XA1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFPCA
        port(D, CLR, PRE, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    signal X1N126, X1N69 : std_logic ;
    begin   

    G1 : XA1
   port map(A => PRE, B => CLR, C => X1N126, Y => X1N69);
    G0 : AND2
   port map(A => CLK, B => E, Y => X1N126);
    F6 : DFPCA
   port map(D => D6, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q6);
    F1 : DFPCA
   port map(D => D1, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q1);
    F0 : DFPCA
   port map(D => D0, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q0);
    F2 : DFPCA
   port map(D => D2, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q2);
    F5 : DFPCA
   port map(D => D5, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q5);
    F4 : DFPCA
   port map(D => D4, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q4);
    F7 : DFPCA
   port map(D => D7, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q7);
    F3 : DFPCA
   port map(D => D3, CLR => CLR, PRE => PRE, CLK => X1N69, Q => 
        Q3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity SREG8A is 
    port(CLK, CLR, P0, P1, P2, P3, P4, P5, P6, P7, SHLD, SI : in 
        std_logic;  SO : out std_logic) ;
end SREG8A;


architecture DEF_ARCH of  SREG8A is

    component SREG4A
        port(CLK, CLR, P0, P1, P2, P3, SHLD, SI : in std_logic := 
        'U'; SO : out std_logic) ;
    end component;

    signal X1N79 : std_logic ;
begin   

    U1 : SREG4A
   port map(CLK => CLK, CLR => CLR, P0 => P4, P1 => P5, P2 => P6, 
        P3 => P7, SHLD => SHLD, SI => X1N79, SO => SO);
    U0 : SREG4A
   port map(CLK => CLK, CLR => CLR, P0 => P0, P1 => P1, P2 => P2, 
        P3 => P3, SHLD => SHLD, SI => SI, SO => X1N79);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity SUMX1A is 
    port(A0, A1, B0, B1, CI : in std_logic;  Y : out std_logic) ;
end SUMX1A;


architecture DEF_ARCH of  SUMX1A is

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N14, X1N16, X1N18, X1N20 : std_logic ;
    begin   

    U2 : XNOR2
   port map(A => A1, B => B1, Y => X1N20);
    U5 : CS2
   port map(A => X1N14, B => X1N16, C => X1N18, D => X1N20, S => 
        CI, Y => Y);
    U4 : OR2
   port map(A => A0, B => B0, Y => X1N16);
    U3 : AND2
   port map(A => A0, B => B0, Y => X1N14);
    U1 : XOR2
   port map(A => A1, B => B1, Y => X1N18);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA00 is 
    port(A, B : in std_logic;  Y : out std_logic) ;
end TA00;


architecture DEF_ARCH of  TA00 is

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : NAND2
   port map(A => A, B => B, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA02 is 
    port(A, B : in std_logic;  Y : out std_logic) ;
end TA02;


architecture DEF_ARCH of  TA02 is

    component NOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : NOR2
   port map(A => A, B => B, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA04 is 
    port(A : in std_logic;  Y : out std_logic) ;
end TA04;


architecture DEF_ARCH of  TA04 is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : INV
   port map(A => A, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA07 is 
    port(A : in std_logic;  Y : out std_logic) ;
end TA07;


architecture DEF_ARCH of  TA07 is

    component BUFF
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : BUFF
   port map(A => A, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA08 is 
    port(A, B : in std_logic;  Y : out std_logic) ;
end TA08;


architecture DEF_ARCH of  TA08 is

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : AND2
   port map(A => A, B => B, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA10 is 
    port(A, B, C : in std_logic;  Y : out std_logic) ;
end TA10;


architecture DEF_ARCH of  TA10 is

    component NAND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : NAND3
   port map(A => A, B => B, C => C, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA11 is 
    port(A, B, C : in std_logic;  Y : out std_logic) ;
end TA11;


architecture DEF_ARCH of  TA11 is

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : AND3
   port map(A => A, B => B, C => C, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity TA160 is 
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
end TA160;


architecture DEF_ARCH of  TA160 is

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component AND4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AX1C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AO1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N117, X1N128, 
        X1N139, X1N144, X1N49, X1N90, ENTP, GND_1_net : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    GND_2_net : GND port map(Y => GND_1_net);
    RA : DFM7A
   port map(D0 => A, D1 => X1N49, D2 => A, D3 => QA_1_net, S0 => 
        LD, S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QA_1_net);
    CC7 : AND4A
   port map(A => QD_1_net, B => QA_1_net, C => QB_1_net, D => 
        QC_1_net, Y => X1N144);
    CC1 : INV
   port map(A => QA_1_net, Y => X1N49);
    RD : DFM7A
   port map(D0 => D, D1 => GND_1_net, D2 => D, D3 => X1N139, 
        S0 => LD, S10 => X1N128, S11 => X1N144, CLR => CLR, 
        CLK => CLK, Q => QD_1_net);
    CC6 : AND4C
   port map(A => QC_1_net, B => QA_1_net, C => QB_1_net, D => 
        QD_1_net, Y => X1N128);
    RC : DFM7A
   port map(D0 => C, D1 => X1N117, D2 => C, D3 => QC_1_net, S0 => 
        LD, S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QC_1_net);
    CC4 : AX1C
   port map(A => QB_1_net, B => QA_1_net, C => QC_1_net, Y => 
        X1N117);
    CC3 : AX1
   port map(A => QD_1_net, B => QA_1_net, C => QB_1_net, Y => 
        X1N90);
    RB : DFM7A
   port map(D0 => B, D1 => X1N90, D2 => B, D3 => QB_1_net, S0 => 
        LD, S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QB_1_net);
    CC2 : NAND2
   port map(A => ENT, B => ENP, Y => ENTP);
    CC8 : AND3
   port map(A => ENT, B => QA_1_net, C => QD_1_net, Y => RCO);
    CC5 : AO1
   port map(A => ENP, B => ENT, C => QD_1_net, Y => X1N139);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA160A is 
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
end TA160A;


architecture DEF_ARCH of  TA160A is

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component AND4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CM8
        port(D0, D1, D2, D3, S00, S01, S10, S11 : in std_logic := 
        'U'; Y : out std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal X1N12, X1N30, X1N33, X1N34, X1N36, X1N77, ENTP, 
        GND_1_net, QA_1_net, QB_1_net, QC_1_net, QD_1_net, VDD : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    VCC_1_net : VCC port map(Y => VDD);
    GND_2_net : GND port map(Y => GND_1_net);
    RA : DFM7A
   port map(D0 => A, D1 => X1N36, D2 => A, D3 => QA_1_net, S0 => 
        LD, S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QA_1_net);
    CC7 : AND4A
   port map(A => QD_1_net, B => QA_1_net, C => QB_1_net, D => 
        QC_1_net, Y => X1N33);
    CC1 : INV
   port map(A => QA_1_net, Y => X1N36);
    RD : DFM7A
   port map(D0 => D, D1 => GND_1_net, D2 => D, D3 => X1N77, S0 => 
        LD, S10 => X1N34, S11 => X1N33, CLR => CLR, CLK => CLK, 
        Q => QD_1_net);
    RC : DFM7A
   port map(D0 => C, D1 => X1N30, D2 => C, D3 => QC_1_net, S0 => 
        LD, S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QC_1_net);
    CC4 : AX1C
   port map(A => QB_1_net, B => QA_1_net, C => QC_1_net, Y => 
        X1N30);
    CC3 : AX1
   port map(A => QD_1_net, B => QA_1_net, C => QB_1_net, Y => 
        X1N12);
    RB : DFM7A
   port map(D0 => B, D1 => X1N12, D2 => B, D3 => QB_1_net, S0 => 
        LD, S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QB_1_net);
    CC2 : NAND2
   port map(A => ENT, B => ENP, Y => ENTP);
    X1I20 : AND3B
   port map(A => QB_1_net, B => QC_1_net, C => QD_1_net, Y => 
        X1N34);
    X1I91 : CM8
   port map(D0 => VDD, D1 => VDD, D2 => QD_1_net, D3 => QC_1_net, 
        S00 => ENT, S01 => ENP, S10 => GND_1_net, S11 => QA_1_net, 
        Y => X1N77);
    CC8 : AND3
   port map(A => ENT, B => QA_1_net, C => QD_1_net, Y => RCO);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA161 is 
    port(A, B, C, CLK, CLR, D, ENP, ENT, LD : in std_logic;  QA, 
        QB, QC, QD, RCO : out std_logic) ;
end TA161;


architecture DEF_ARCH of  TA161 is

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component AND3A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N138, CEB, 
        CEC, CED, ENTP, GND_1_net : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    GND_2_net : GND port map(Y => GND_1_net);
    RC : DFM7A
   port map(D0 => C, D1 => CED, D2 => C, D3 => QC_1_net, S0 => LD, 
        S10 => CEC, S11 => ENTP, CLR => CLR, CLK => CLK, Q => 
        QC_1_net);
    RB : DFM7A
   port map(D0 => B, D1 => CEC, D2 => B, D3 => QB_1_net, S0 => LD, 
        S10 => CEB, S11 => ENTP, CLR => CLR, CLK => CLK, Q => 
        QB_1_net);
    CC6 : AND3A
   port map(A => CED, B => QD_1_net, C => ENT, Y => RCO);
    CC3 : NAND2
   port map(A => QA_1_net, B => QB_1_net, Y => CEC);
    CC1 : INV
   port map(A => QA_1_net, Y => CEB);
    CC5 : INV
   port map(A => QD_1_net, Y => X1N138);
    RD : DFM7A
   port map(D0 => D, D1 => X1N138, D2 => D, D3 => QD_1_net, S0 => 
        LD, S10 => CED, S11 => ENTP, CLR => CLR, CLK => CLK, Q => 
        QD_1_net);
    CC2 : NAND2
   port map(A => ENT, B => ENP, Y => ENTP);
    RA : DFM7A
   port map(D0 => A, D1 => CEB, D2 => A, D3 => QA_1_net, S0 => LD, 
        S10 => GND_1_net, S11 => ENTP, CLR => CLR, CLK => CLK, 
        Q => QA_1_net);
    CC4 : NAND3
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, Y => CED);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA164 is 
    port(A, B, CLK, CLR : in std_logic;  QA, QB, QC, QD, QE, QF, 
        QG, QH : out std_logic) ;
end TA164;


architecture DEF_ARCH of  TA164 is

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
        QF_1_net, QG_1_net, GND_1_net : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    QE <= QE_1_net;
    
    QF <= QF_1_net;
    
    QG <= QG_1_net;
    
    GND_2_net : GND port map(Y => GND_1_net);
    F6 : DFC1B
   port map(D => QF_1_net, CLR => CLR, CLK => CLK, Q => QG_1_net);
    F1 : DFC1B
   port map(D => QA_1_net, CLR => CLR, CLK => CLK, Q => QB_1_net);
    F0 : DFMB
   port map(A => GND_1_net, B => A, S => B, CLR => CLR, CLK => 
        CLK, Q => QA_1_net);
    F2 : DFC1B
   port map(D => QB_1_net, CLR => CLR, CLK => CLK, Q => QC_1_net);
    F5 : DFC1B
   port map(D => QE_1_net, CLR => CLR, CLK => CLK, Q => QF_1_net);
    F4 : DFC1B
   port map(D => QD_1_net, CLR => CLR, CLK => CLK, Q => QE_1_net);
    F7 : DFC1B
   port map(D => QG_1_net, CLR => CLR, CLK => CLK, Q => QH);
    F3 : DFC1B
   port map(D => QC_1_net, CLR => CLR, CLK => CLK, Q => QD_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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

    component NOR3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AOI1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AO3A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N110, X1N114, 
        X1N120, X1N136, X1N159, X1N174, X1N181, X1N186, X1N188, 
        X1N205, X1N211, X1N221, X1N66 : std_logic ;
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
    G13 : NOR3
   port map(A => QD_1_net, B => ENP, C => ENT, Y => X1N211);
    G9 : NAND4D
   port map(A => QA_1_net, B => QB_1_net, C => UD, D => QC_1_net, 
        Y => X1N186);
    G14 : AOI1A
   port map(A => X1N186, B => X1N211, C => X1N205, Y => RCO);
    G3 : AX1
   port map(A => X1N221, B => X1N136, C => QB_1_net, Y => X1N114);
    G10 : OR2A
   port map(A => X1N186, B => X1N188, Y => X1N181);
    G4 : AO3A
   port map(A => QA_1_net, B => QB_1_net, C => UD, D => X1N174, 
        Y => X1N159);
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
library a42mx;
 
entity TA174 is 
    port(CLK, CLR, D1, D2, D3, D4, D5, D6 : in std_logic;  Q1, Q2, 
        Q3, Q4, Q5, Q6 : out std_logic) ;
end TA174;


architecture DEF_ARCH of  TA174 is

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

begin   

    F1 : DFC1B
   port map(D => D2, CLR => CLR, CLK => CLK, Q => Q2);
    F0 : DFC1B
   port map(D => D1, CLR => CLR, CLK => CLK, Q => Q1);
    F2 : DFC1B
   port map(D => D3, CLR => CLR, CLK => CLK, Q => Q3);
    F5 : DFC1B
   port map(D => D6, CLR => CLR, CLK => CLK, Q => Q6);
    F4 : DFC1B
   port map(D => D5, CLR => CLR, CLK => CLK, Q => Q5);
    F3 : DFC1B
   port map(D => D4, CLR => CLR, CLK => CLK, Q => Q4);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA175 is 
    port(CLK, CLR, D1, D2, D3, D4 : in std_logic;  Q1, Q2, Q3, Q4 : 
        out std_logic) ;
end TA175;


architecture DEF_ARCH of  TA175 is

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

begin   

    F1 : DFC1B
   port map(D => D2, CLR => CLR, CLK => CLK, Q => Q2);
    F0 : DFC1B
   port map(D => D1, CLR => CLR, CLK => CLK, Q => Q1);
    F2 : DFC1B
   port map(D => D3, CLR => CLR, CLK => CLK, Q => Q3);
    F3 : DFC1B
   port map(D => D4, CLR => CLR, CLK => CLK, Q => Q4);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity TA190 is 
    port(A, B, C, CLK, CTEN, D, DU, LOAD : in std_logic;  MM, QA, 
        QB, QC, QD, RCO : out std_logic) ;
end TA190;


architecture DEF_ARCH of  TA190 is

    component AND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XA1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM
        port(A, B, S, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AO1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OA1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component OA4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component OAI2A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AOI1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component GOR2
        port(A, G : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND4B
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal MM_1_net, QA_1_net, QB_1_net, QC_1_net, QD_1_net, 
        X1N130, X1N140, X1N155, X1N156, X1N162, X1N171, X1N179, 
        X1N180, X1N181, X1N182, X1N183, X1N185, X1N199, X1N216, 
        X1N263, X1N265, X1N41, X1N42, X1N63, X1N70, X1N79, X1N80, 
        X1N88, X1N96, CTENB, D1, D2, D3 : std_logic ;
    begin   

    MM <= MM_1_net;
    
    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    G23 : AND4D
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, D => 
        QD_1_net, Y => X1N216);
    G9 : AND2
   port map(A => D1, B => QC_1_net, Y => X1N181);
    G30 : AND2A
   port map(A => QD_1_net, B => QC_1_net, Y => X1N130);
    G15 : XA1
   port map(A => DU, B => QB_1_net, C => X1N130, Y => X1N79);
    G11 : INV
   port map(A => CTEN, Y => CTENB);
    G8 : AND3B
   port map(A => QB_1_net, B => QC_1_net, C => QD_1_net, Y => D2);
    G2 : AND3C
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, Y => 
        X1N41);
    G10 : NAND3B
   port map(A => QC_1_net, B => QD_1_net, C => D3, Y => X1N182);
    DFM3 : DFM
   port map(A => D, B => X1N183, S => LOAD, CLK => CLK, Q => 
        QD_1_net);
    G22 : AND3
   port map(A => DU, B => QA_1_net, C => QD_1_net, Y => X1N171);
    DFM2 : DFM
   port map(A => C, B => X1N185, S => LOAD, CLK => CLK, Q => 
        QC_1_net);
    G26 : AO1
   port map(A => CTEN, B => QB_1_net, C => X1N199, Y => X1N179);
    G18 : OA1
   port map(A => X1N42, B => X1N41, C => CTENB, Y => X1N265);
    G6 : AND4A
   port map(A => QD_1_net, B => QA_1_net, C => QB_1_net, D => DU, 
        Y => D1);
    G19 : OA4A
   port map(A => X1N140, B => X1N88, C => X1N156, D => CTENB, 
        Y => X1N199);
    G17 : XA1
   port map(A => QA_1_net, B => QB_1_net, C => X1N155, Y => 
        X1N140);
    G25 : AO1
   port map(A => CTEN, B => QC_1_net, C => X1N63, Y => X1N185);
    G21 : OA4A
   port map(A => X1N180, B => X1N181, C => X1N182, D => CTENB, 
        Y => X1N70);
    G7 : AND4C
   port map(A => QA_1_net, B => QB_1_net, C => DU, D => QD_1_net, 
        Y => X1N96);
    G14 : XA1
   port map(A => QA_1_net, B => DU, C => X1N130, Y => X1N162);
    DFM0 : DFM
   port map(A => A, B => X1N263, S => LOAD, CLK => CLK, Q => 
        QA_1_net);
    G20 : OA4A
   port map(A => X1N79, B => X1N162, C => X1N80, D => CTENB, Y => 
        X1N63);
    DFM1 : DFM
   port map(A => B, B => X1N179, S => LOAD, CLK => CLK, Q => 
        QB_1_net);
    G5 : AND3C
   port map(A => QA_1_net, B => QB_1_net, C => DU, Y => D3);
    G3 : AND2A
   port map(A => QD_1_net, B => DU, Y => X1N155);
    G13 : OAI2A
   port map(A => D1, B => X1N96, C => X1N96, D => QC_1_net, Y => 
        X1N80);
    G28 : AOI1A
   port map(A => DU, B => X1N216, C => X1N171, Y => MM_1_net);
    G1 : AND2B
   port map(A => QA_1_net, B => QD_1_net, Y => X1N42);
    G12 : XA1
   port map(A => DU, B => QA_1_net, C => D2, Y => X1N180);
    G29 : GOR2
   port map(A => MM_1_net, G => CLK, Y => RCO);
    G27 : AO1
   port map(A => CTEN, B => QA_1_net, C => X1N265, Y => X1N263);
    G4 : NAND4B
   port map(A => DU, B => QD_1_net, C => QA_1_net, D => QB_1_net, 
        Y => X1N156);
    G16 : XA1
   port map(A => QC_1_net, B => QD_1_net, C => D3, Y => X1N88);
    G24 : AO1
   port map(A => CTEN, B => QD_1_net, C => X1N70, Y => X1N183);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA191 is 
    port(A, B, C, CLK, CTEN, D, DU, LOAD : in std_logic;  MM, QA, 
        QB, QC, QD, RCO : out std_logic) ;
end TA191;


architecture DEF_ARCH of  TA191 is

    component AND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AO1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM
        port(A, B, S, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component AND3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OA1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XA1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OA1B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component GOR2
        port(A, G : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AOI1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal MM_1_net, QA_1_net, QB_1_net, QC_1_net, QD_1_net, 
        X1N171, X1N179, X1N183, X1N185, X1N199, X1N216, X1N263, 
        X1N265, X1N273, X1N322, X1N324, X1N326, X1N328, X1N330, 
        X1N332, X1N352, X1N354, X1N356, X1N358, X1N360, X1N365, 
        X1N367, X1N397, X1N63, X1N70, CTENB : std_logic ;
    begin   

    MM <= MM_1_net;
    
    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    G11 : AND4D
   port map(A => DU, B => QA_1_net, C => QB_1_net, D => QC_1_net, 
        Y => X1N367);
    G22 : AO1
   port map(A => CTEN, B => QD_1_net, C => X1N70, Y => X1N183);
    G23 : AO1
   port map(A => CTEN, B => QC_1_net, C => X1N63, Y => X1N185);
    G24 : AO1
   port map(A => CTEN, B => QB_1_net, C => X1N199, Y => X1N179);
    G15 : OR2
   port map(A => X1N332, B => X1N330, Y => X1N324);
    DFM1 : DFM
   port map(A => B, B => X1N179, S => LOAD, CLK => CLK, Q => 
        QB_1_net);
    G20 : AND3
   port map(A => X1N397, B => QD_1_net, C => DU, Y => X1N171);
    G17 : OA1
   port map(A => X1N324, B => X1N322, C => CTENB, Y => X1N63);
    G16 : XA1
   port map(A => X1N273, B => DU, C => CTENB, Y => X1N199);
    G7 : XA1
   port map(A => DU, B => QA_1_net, C => QD_1_net, Y => X1N360);
    G5 : AND3
   port map(A => QA_1_net, B => QB_1_net, C => DU, Y => X1N328);
    G12 : OA1B
   port map(A => X1N365, B => X1N367, C => QD_1_net, Y => X1N352);
    G2 : XNOR2
   port map(A => QA_1_net, B => QB_1_net, Y => X1N273);
    DFM3 : DFM
   port map(A => D, B => X1N183, S => LOAD, CLK => CLK, Q => 
        QD_1_net);
    G13 : OR3
   port map(A => X1N360, B => X1N356, C => X1N358, Y => X1N354);
    G6 : AND3C
   port map(A => QA_1_net, B => QB_1_net, C => DU, Y => X1N326);
    G28 : AND2A
   port map(A => QA_1_net, B => CTENB, Y => X1N265);
    G9 : XA1
   port map(A => DU, B => QC_1_net, C => QD_1_net, Y => X1N358);
    G14 : OA1B
   port map(A => X1N328, B => X1N326, C => QC_1_net, Y => X1N322);
    G3 : XA1
   port map(A => DU, B => QA_1_net, C => QC_1_net, Y => X1N332);
    G10 : AND4
   port map(A => DU, B => QA_1_net, C => QB_1_net, D => QC_1_net, 
        Y => X1N365);
    G4 : XA1
   port map(A => DU, B => QB_1_net, C => QC_1_net, Y => X1N330);
    G21 : AND4D
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, D => 
        QD_1_net, Y => X1N216);
    G1 : INV
   port map(A => CTEN, Y => CTENB);
    G18 : OA1
   port map(A => X1N354, B => X1N352, C => CTENB, Y => X1N70);
    G8 : XA1
   port map(A => DU, B => QB_1_net, C => QD_1_net, Y => X1N356);
    G25 : AO1
   port map(A => CTEN, B => QA_1_net, C => X1N265, Y => X1N263);
    G27 : GOR2
   port map(A => MM_1_net, G => CLK, Y => RCO);
    G26 : AOI1A
   port map(A => DU, B => X1N216, C => X1N171, Y => MM_1_net);
    G19 : AND3
   port map(A => QA_1_net, B => QB_1_net, C => QC_1_net, Y => 
        X1N397);
    DFM2 : DFM
   port map(A => C, B => X1N185, S => LOAD, CLK => CLK, Q => 
        QC_1_net);
    DFM0 : DFM
   port map(A => A, B => X1N263, S => LOAD, CLK => CLK, Q => 
        QA_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA194 is 
    port(A, B, C, CLK, CLR, D : in std_logic;  QA, QB, QC, QD : 
        out std_logic;  S0, S1, SLSI, SRSI : in std_logic) ;
end TA194;


architecture DEF_ARCH of  TA194 is

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

    component MX4
        port(D0, D1, D2, D3, S0, S1 : in std_logic := 'U'; Y : 
        out std_logic) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net, X1N12, X1N15, 
        X1N18, X1N9 : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    F1 : DFC1B
   port map(D => X1N12, CLR => CLR, CLK => CLK, Q => QB_1_net);
    F0 : DFC1B
   port map(D => X1N9, CLR => CLR, CLK => CLK, Q => QA_1_net);
    M1 : MX4
   port map(D0 => QB_1_net, D1 => QA_1_net, D2 => QC_1_net, D3 => 
        B, S0 => S0, S1 => S1, Y => X1N12);
    M0 : MX4
   port map(D0 => QA_1_net, D1 => SRSI, D2 => QB_1_net, D3 => A, 
        S0 => S0, S1 => S1, Y => X1N9);
    F2 : DFC1B
   port map(D => X1N15, CLR => CLR, CLK => CLK, Q => QC_1_net);
    M2 : MX4
   port map(D0 => QC_1_net, D1 => QB_1_net, D2 => QD_1_net, D3 => 
        C, S0 => S0, S1 => S1, Y => X1N15);
    F3 : DFC1B
   port map(D => X1N18, CLR => CLR, CLK => CLK, Q => QD_1_net);
    M3 : MX4
   port map(D0 => QD_1_net, D1 => QC_1_net, D2 => SLSI, D3 => D, 
        S0 => S0, S1 => S1, Y => X1N18);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA195 is 
    port(A, B, C, CLK, CLR, D, J, K : in std_logic;  QA, QB, QC, 
        QD, QDN : out std_logic;  SHLD : in std_logic) ;
end TA195;


architecture DEF_ARCH of  TA195 is

    component DFMB
        port(A, B, S, CLR, CLK : in std_logic := 'U'; Q : out 
        std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM6A
        port(D0, D1, D2, D3, S0, S1, CLR, CLK : in std_logic := 
        'U'; Q : out std_logic) ;
    end component;

    signal QA_1_net, QB_1_net, QC_1_net, QD_1_net : std_logic ;
    begin   

    QA <= QA_1_net;
    
    QB <= QB_1_net;
    
    QC <= QC_1_net;
    
    QD <= QD_1_net;
    
    FF2 : DFMB
   port map(A => B, B => QA_1_net, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => QB_1_net);
    G2 : INV
   port map(A => QD_1_net, Y => QDN);
    FF4 : DFMB
   port map(A => D, B => QC_1_net, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => QD_1_net);
    FF3 : DFMB
   port map(A => C, B => QB_1_net, S => SHLD, CLR => CLR, CLK => 
        CLK, Q => QC_1_net);
    FF1 : DFM6A
   port map(D0 => A, D1 => A, D2 => J, D3 => K, S0 => QA_1_net, 
        S1 => SHLD, CLR => CLR, CLK => CLK, Q => QA_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA20 is 
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end TA20;


architecture DEF_ARCH of  TA20 is

    component NAND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

begin   

    G1 : NAND4
   port map(A => A, B => B, C => C, D => D, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA21 is 
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end TA21;


architecture DEF_ARCH of  TA21 is

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

begin   

    G1 : AND4
   port map(A => A, B => B, C => C, D => D, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity TA27 is 
    port(A, B, C : in std_logic;  Y : out std_logic) ;
end TA27;


architecture DEF_ARCH of  TA27 is

    component NOR3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : NOR3
   port map(A => A, B => B, C => C, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA273 is 
    port(CLK, CLR, D1, D2, D3, D4, D5, D6, D7, D8 : in std_logic
        ;  Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8 : out std_logic) ;
end TA273;


architecture DEF_ARCH of  TA273 is

    component DFC1B
        port(D, CLR, CLK : in std_logic := 'U'; Q : out std_logic
        ) ;
    end component;

begin   

    F6 : DFC1B
   port map(D => D7, CLR => CLR, CLK => CLK, Q => Q7);
    F1 : DFC1B
   port map(D => D2, CLR => CLR, CLK => CLK, Q => Q2);
    F0 : DFC1B
   port map(D => D1, CLR => CLR, CLK => CLK, Q => Q1);
    F2 : DFC1B
   port map(D => D3, CLR => CLR, CLK => CLK, Q => Q3);
    F5 : DFC1B
   port map(D => D6, CLR => CLR, CLK => CLK, Q => Q6);
    F4 : DFC1B
   port map(D => D5, CLR => CLR, CLK => CLK, Q => Q5);
    F7 : DFC1B
   port map(D => D8, CLR => CLR, CLK => CLK, Q => Q8);
    F3 : DFC1B
   port map(D => D4, CLR => CLR, CLK => CLK, Q => Q4);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
library a42mx;
 
entity TA32 is 
    port(A, B : in std_logic;  Y : out std_logic) ;
end TA32;


architecture DEF_ARCH of  TA32 is

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : OR2
   port map(A => A, B => B, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA40 is 
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end TA40;


architecture DEF_ARCH of  TA40 is

    component NAND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

begin   

    G1 : NAND4
   port map(A => A, B => B, C => C, D => D, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA42 is 
    port(A, B, C, D : in std_logic;  Y0, Y1, Y2, Y3, Y4, Y5, Y6, 
        Y7, Y8, Y9 : out std_logic) ;
end TA42;


architecture DEF_ARCH of  TA42 is

    component NAND4B
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NAND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NAND4C
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NAND4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

begin   

    G6 : NAND4B
   port map(A => D, B => B, C => C, D => A, Y => Y5);
    G1 : NAND4D
   port map(A => D, B => C, C => B, D => A, Y => Y0);
    G9 : NAND4C
   port map(A => C, B => B, C => A, D => D, Y => Y8);
    G2 : NAND4C
   port map(A => D, B => C, C => B, D => A, Y => Y1);
    G5 : NAND4C
   port map(A => D, B => B, C => A, D => C, Y => Y4);
    G4 : NAND4B
   port map(A => D, B => C, C => B, D => A, Y => Y3);
    G7 : NAND4B
   port map(A => D, B => A, C => C, D => B, Y => Y6);
    G3 : NAND4C
   port map(A => D, B => C, C => A, D => B, Y => Y2);
    G8 : NAND4A
   port map(A => D, B => C, C => B, D => A, Y => Y7);
    G10 : NAND4B
   port map(A => C, B => B, C => D, D => A, Y => Y9);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA51 is 
    port(A, B, C, D : in std_logic;  Y : out std_logic) ;
end TA51;


architecture DEF_ARCH of  TA51 is

    component AOI4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

begin   

    G1 : AOI4
   port map(A => A, B => B, C => C, D => D, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA54 is 
    port(A, B, C, D, E, F, G, H : in std_logic;  Y : out 
        std_logic) ;
end TA54;


architecture DEF_ARCH of  TA54 is

    component NOR2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NOR4A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NAND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal OG1, OG2, OG3, OG4 : std_logic ;
    begin   

    G1 : NOR2B
   port map(A => G, B => H, Y => OG1);
    G2 : NOR2B
   port map(A => E, B => F, Y => OG2);
    G5 : NOR4A
   port map(A => OG4, B => OG2, C => OG3, D => OG1, Y => Y);
    G4 : NAND2
   port map(A => C, B => D, Y => OG4);
    G3 : NOR2B
   port map(A => B, B => A, Y => OG3);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA55 is 
    port(A, B, C, D, E, F, G, H : in std_logic;  Y : out 
        std_logic) ;
end TA55;


architecture DEF_ARCH of  TA55 is

    component AND4
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component NOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N13, X1N15 : std_logic ;
    begin   

    G1 : AND4
   port map(A => A, B => B, C => C, D => D, Y => X1N15);
    G2 : AND4
   port map(A => E, B => F, C => G, D => H, Y => X1N13);
    G3 : NOR2
   port map(A => X1N15, B => X1N13, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity TA86 is 
    port(A, B : in std_logic;  Y : out std_logic) ;
end TA86;


architecture DEF_ARCH of  TA86 is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

begin   

    G1 : XOR2
   port map(A => A, B => B, Y => Y);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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

    component AO3A
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AOI1A
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2A
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N110, X1N114, 
        X1N120, X1N136, X1N159, X1N174, X1N181, X1N186, X1N188, 
        X1N205, X1N211, X1N66 : std_logic ;
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
    G5 : AO3A
   port map(A => Q0_1_net, B => Q1_1_net, C => UD, D => X1N174, 
        Y => X1N159);
    G12 : AND2B
   port map(A => Q3_1_net, B => CI, Y => X1N211);
    G2 : AX1
   port map(A => CI, B => X1N136, C => Q1_1_net, Y => X1N114);
    DFM3 : DFM
   port map(A => P3, B => X1N66, S => LD, CLK => CLK, Q => 
        Q3_1_net);
    G13 : AOI1A
   port map(A => X1N186, B => X1N211, C => X1N205, Y => CO);
    G6 : AX1
   port map(A => CI, B => X1N159, C => Q2_1_net, Y => X1N120);
    G9 : OR2A
   port map(A => X1N186, B => X1N188, Y => X1N181);
    G10 : AX1
   port map(A => CI, B => X1N181, C => Q3_1_net, Y => X1N66);
    G4 : AND3C
   port map(A => Q0_1_net, B => Q1_1_net, C => UD, Y => X1N174);
    G1 : XNOR2
   port map(A => UD, B => Q0_1_net, Y => X1N136);
    G8 : NAND4D
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
library a42mx;
 
entity VAD16CR is 
    port(A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, 
        A2, A1, A0, B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, 
        B5, B4, B3, B2, B1, B0 : in std_logic;  CO, CO11_0, 
        CO11_1, CO13_0, CO13_1, CO1B, CO3_0, CO3_1, CO5A, CO5B, 
        CO7_0, CO7_1, CO9_0, CO9_1 : out std_logic) ;
end VAD16CR;


architecture DEF_ARCH of  VAD16CR is

    component CY2A
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CY2B
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    signal CO11_0_1_net, CO11_1_1_net, CO13_0_1_net, CO13_1_1_net, 
        CO3_0_1_net, CO3_1_1_net, CO5A_1_net, CO7_0_1_net, 
        CO7_1_1_net, CO9_0_1_net, CO9_1_1_net, CO11_A, CO11_B, 
        CO15A_0, CO15A_1, CO15_0, CO15_1, CO1A, CO5_0, CO5_1 : std_logic ;
    begin   

    CO11_0 <= CO11_0_1_net;
    
    CO11_1 <= CO11_1_1_net;
    
    CO13_0 <= CO13_0_1_net;
    
    CO13_1 <= CO13_1_1_net;
    
    CO3_0 <= CO3_0_1_net;
    
    CO3_1 <= CO3_1_1_net;
    
    CO5A <= CO5A_1_net;
    
    CO7_0 <= CO7_0_1_net;
    
    CO7_1 <= CO7_1_1_net;
    
    CO9_0 <= CO9_0_1_net;
    
    CO9_1 <= CO9_1_1_net;
    
    U6 : CY2A
   port map(A0 => A12, A1 => A13, B0 => B12, B1 => B13, Y => 
        CO13_0_1_net);
    U20 : CS2
   port map(A => CO9_0_1_net, B => CO9_1_1_net, C => CO11_A, D => 
        CO11_B, S => CO7_1_1_net, Y => CO11_1_1_net);
    U19 : MX2
   port map(A => CO15A_0, B => CO15A_1, S => CO13_0_1_net, Y => 
        CO15_0);
    U9 : CY2A
   port map(A0 => A8, A1 => A9, B0 => B8, B1 => B9, Y => 
        CO9_0_1_net);
    U3 : CY2A
   port map(A0 => A14, A1 => A15, B0 => B14, B1 => B15, Y => 
        CO15A_0);
    U23 : CS2
   port map(A => CO11_0_1_net, B => CO11_1_1_net, C => CO15_0, 
        D => CO15_1, S => CO5A_1_net, Y => CO);
    U22A : CS2
   port map(A => CO3_0_1_net, B => CO3_1_1_net, C => CO5_0, D => 
        CO5_1, S => CO1A, Y => CO5A_1_net);
    U4 : CY2B
   port map(A0 => A14, A1 => A15, B0 => B14, B1 => B15, Y => 
        CO15A_1);
    U17A : CY2A
   port map(A0 => A0, A1 => A1, B0 => B0, B1 => B1, Y => CO1A);
    U22B : CS2
   port map(A => CO3_0_1_net, B => CO3_1_1_net, C => CO5_0, D => 
        CO5_1, S => CO1A, Y => CO5B);
    U15 : CY2A
   port map(A0 => A2, A1 => A3, B0 => B2, B1 => B3, Y => 
        CO3_0_1_net);
    U17B : CY2A
   port map(A0 => A0, A1 => A1, B0 => B0, B1 => B1, Y => CO1B);
    U14 : CY2B
   port map(A0 => A4, A1 => A5, B0 => B4, B1 => B5, Y => CO5_1);
    U10 : CY2B
   port map(A0 => A8, A1 => A9, B0 => B8, B1 => B9, Y => 
        CO9_1_1_net);
    U8 : CY2B
   port map(A0 => A10, A1 => A11, B0 => B10, B1 => B11, Y => 
        CO11_B);
    U13 : CY2A
   port map(A0 => A4, A1 => A5, B0 => B4, B1 => B5, Y => CO5_0);
    U21 : CS2
   port map(A => CO9_0_1_net, B => CO9_1_1_net, C => CO11_A, D => 
        CO11_B, S => CO7_0_1_net, Y => CO11_0_1_net);
    U12 : CY2A
   port map(A0 => A6, A1 => A7, B0 => B6, B1 => B7, Y => 
        CO7_0_1_net);
    U18 : MX2
   port map(A => CO15A_0, B => CO15A_1, S => CO13_1_1_net, Y => 
        CO15_1);
    U16 : CY2B
   port map(A0 => A2, A1 => A3, B0 => B2, B1 => B3, Y => 
        CO3_1_1_net);
    U11 : CY2B
   port map(A0 => A6, A1 => A7, B0 => B6, B1 => B7, Y => 
        CO7_1_1_net);
    U7 : CY2A
   port map(A0 => A10, A1 => A11, B0 => B10, B1 => B11, Y => 
        CO11_A);
    U5 : CY2B
   port map(A0 => A12, A1 => A13, B0 => B12, B1 => B13, Y => 
        CO13_1_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VAD16SL is 
    port(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, B0, B1, B2, B3, 
        B4, B5, B6, B7, B8, B9, CO1B, CO3_0, CO3_1, CO5B, CO7_0, 
        CO7_1 : in std_logic;  S0, S1, S2, S3, S4, S5, S6, S7, S8, 
        S9 : out std_logic) ;
end VAD16SL;


architecture DEF_ARCH of  VAD16SL is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component SUMX1A
        port(A0, A1, B0, B1, CI : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N1, X1N26, X1N31, X1N32, X1N35, X1N36, X1N37, X1N4, 
        X1N41, X1N48, X1N5, X1N62, X1N63, X1N64, X1N65, X1N66, 
        CO3 : std_logic ;
begin   

    U37 : XOR2
   port map(A => A6, B => B6, Y => X1N37);
    U24 : XOR2
   port map(A => A1, B => B1, Y => X1N41);
    U35 : XOR2
   port map(A => CO3, B => X1N48, Y => S5);
    U47 : CS2
   port map(A => X1N62, B => X1N66, C => X1N64, D => X1N63, S => 
        CO7_1, Y => X1N65);
    U23 : XOR2
   port map(A => A0, B => B0, Y => S0);
    U34 : CS2
   port map(A => CO3_0, B => CO3_1, C => X1N35, D => X1N36, S => 
        CO1B, Y => CO3);
    U45 : CS2
   port map(A => X1N62, B => X1N66, C => X1N64, D => X1N63, S => 
        CO7_0, Y => X1N1);
    U30 : XNOR2
   port map(A => A4, B => B4, Y => X1N32);
    U44 : XNOR2
   port map(A => A9, B => B9, Y => X1N63);
    U33 : OR2
   port map(A => A4, B => B4, Y => X1N36);
    U40 : XOR2
   port map(A => A8, B => B8, Y => X1N4);
    U43 : XOR2
   port map(A => A9, B => B9, Y => X1N64);
    U32 : AND2
   port map(A => A4, B => B4, Y => X1N35);
    U28 : SUMX1A
   port map(A0 => A2, A1 => A3, B0 => B2, B1 => B3, CI => CO1B, 
        Y => S3);
    U42 : XNOR2
   port map(A => A8, B => B8, Y => X1N5);
    U38 : XOR2
   port map(A => X1N37, B => CO5B, Y => S6);
    U26 : XOR2
   port map(A => A2, B => B2, Y => X1N26);
    U48 : AND2
   port map(A => A8, B => B8, Y => X1N62);
    U36 : XOR2
   port map(A => A5, B => B5, Y => X1N48);
    U31 : CS2
   port map(A => CO3_0, B => CO3_1, C => X1N31, D => X1N32, S => 
        CO1B, Y => S4);
    U29 : XOR2
   port map(A => A4, B => B4, Y => X1N31);
    U46 : MX2
   port map(A => X1N1, B => X1N65, S => CO5B, Y => S9);
    U41 : CS2
   port map(A => CO7_0, B => CO7_1, C => X1N4, D => X1N5, S => 
        CO5B, Y => S8);
    U39 : SUMX1A
   port map(A0 => A6, A1 => A7, B0 => B6, B1 => B7, CI => CO5B, 
        Y => S7);
    U27 : XOR2
   port map(A => CO1B, B => X1N26, Y => S2);
    U49 : OR2
   port map(A => A8, B => B8, Y => X1N66);
    U25 : AX1C
   port map(A => B0, B => A0, C => X1N41, Y => S1);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VAD16SM is 
    port(A10, A11, A12, A13, B10, B11, B12, B13, CO11_0, CO11_1, 
        CO5A, CO5B, CO7_0, CO7_1, CO9_0, CO9_1 : in std_logic;  
        S10, S11, S12, S13 : out std_logic) ;
end VAD16SM;


architecture DEF_ARCH of  VAD16SM is

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N16, X1N17, X1N19, X1N20, X1N21, X1N22, X1N23, X1N24, 
        X1N25, X1N30, X1N34, X1N36, X1N37, X1N38, X1N49, X1N50, 
        X1N51, X1N53 : std_logic ;
    begin   

    U74 : CS2
   port map(A => CO11_0, B => CO11_1, C => X1N51, D => X1N30, 
        S => CO5A, Y => S12);
    U70 : CS2
   port map(A => CO9_0, B => CO9_1, C => X1N50, D => X1N49, S => 
        CO7_0, Y => X1N38);
    U65 : XOR2
   port map(A => A11, B => B11, Y => X1N37);
    U81 : CS2
   port map(A => CO11_0, B => CO11_1, C => X1N22, D => X1N23, 
        S => CO5A, Y => S13);
    U73 : XNOR2
   port map(A => A12, B => B12, Y => X1N30);
    U64 : MX2
   port map(A => X1N17, B => X1N16, S => CO5B, Y => S10);
    U60 : XOR2
   port map(A => A10, B => B10, Y => X1N53);
    U72 : XOR2
   port map(A => A12, B => B12, Y => X1N51);
    U63 : CS2
   port map(A => CO9_0, B => CO9_1, C => X1N53, D => X1N19, S => 
        CO7_1, Y => X1N16);
    U62 : CS2
   port map(A => CO9_0, B => CO9_1, C => X1N53, D => X1N19, S => 
        CO7_0, Y => X1N17);
    U78 : OR2
   port map(A => A12, B => B12, Y => X1N21);
    U68 : OR2
   port map(A => A10, B => B10, Y => X1N49);
    U76 : XOR2
   port map(A => A13, B => B13, Y => X1N24);
    U80 : MX2
   port map(A => X1N24, B => X1N25, S => X1N21, Y => X1N23);
    U71 : CS2
   port map(A => X1N38, B => X1N34, C => X1N37, D => X1N36, S => 
        CO5B, Y => S11);
    U66 : XNOR2
   port map(A => A11, B => B11, Y => X1N36);
    U61 : XNOR2
   port map(A => A10, B => B10, Y => X1N19);
    U79 : XNOR2
   port map(A => A13, B => B13, Y => X1N25);
    U69 : CS2
   port map(A => CO9_0, B => CO9_1, C => X1N50, D => X1N49, S => 
        CO7_1, Y => X1N34);
    U77 : MX2
   port map(A => X1N24, B => X1N25, S => X1N20, Y => X1N22);
    U75 : AND2
   port map(A => A12, B => B12, Y => X1N20);
    U67 : AND2
   port map(A => A10, B => B10, Y => X1N50);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VAD16SU is 
    port(A14, A15, B14, B15, CO11_0, CO11_1, CO13_0, CO13_1, CO5A : 
        in std_logic;  S14, S15 : out std_logic) ;
end VAD16SU;


architecture DEF_ARCH of  VAD16SU is

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component MX2B
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N25, X1N26, X1N27, X1N28, X1N29, X1N34, X1N35, X1N36, 
        X1N37 : std_logic ;
    begin   

    U99 : CS2
   port map(A => X1N36, B => X1N37, C => X1N27, D => X1N26, S => 
        CO13_0, Y => X1N29);
    U101 : CS2
   port map(A => CO11_0, B => CO11_1, C => X1N29, D => X1N28, 
        S => CO5A, Y => S15);
    U98 : OR2
   port map(A => A14, B => B14, Y => X1N37);
    U96 : XNOR2
   port map(A => A15, B => B15, Y => X1N26);
    U100 : CS2
   port map(A => X1N36, B => X1N37, C => X1N27, D => X1N26, S => 
        CO13_1, Y => X1N28);
    U97 : AND2
   port map(A => A14, B => B14, Y => X1N36);
    U93 : MX2B
   port map(A => X1N25, B => X1N25, S => CO13_1, Y => X1N34);
    U91 : XOR2
   port map(A => A14, B => B14, Y => X1N25);
    U95 : XOR2
   port map(A => A15, B => B15, Y => X1N27);
    U92 : MX2B
   port map(A => X1N25, B => X1N25, S => CO13_0, Y => X1N35);
    U94 : CS2
   port map(A => CO11_0, B => CO11_1, C => X1N35, D => X1N34, 
        S => CO5A, Y => S14);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VADC16CR is 
    port(A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, 
        A2, A1, A0, B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, 
        B5, B4, B3, B2, B1, B0, CIN : in std_logic;  CO, CO0B, 
        CO10_0, CO10_1, CO12_0, CO12_1, CO14_0, CO14_1, CO2_0, 
        CO2_1, CO4A, CO4B, CO6_0, CO6_1, CO8_0, CO8_1 : out 
        std_logic) ;
end VADC16CR;


architecture DEF_ARCH of  VADC16CR is

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CY2A
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component CY2B
        port(A0, A1, B0, B1 : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component MAJ3
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal CO10_0_1_net, CO10_1_1_net, CO12_0_1_net, CO12_1_1_net, 
        CO14_0_1_net, CO14_1_1_net, CO2_0_1_net, CO2_1_1_net, 
        CO4A_1_net, CO6_0_1_net, CO6_1_1_net, CO8_0_1_net, 
        CO8_1_1_net, CO0A, CO10_A, CO10_B, CO15_0, CO15_1, CO15_A, 
        CO15_B, CO4_0, CO4_1 : std_logic ;
    begin   

    CO10_0 <= CO10_0_1_net;
    
    CO10_1 <= CO10_1_1_net;
    
    CO12_0 <= CO12_0_1_net;
    
    CO12_1 <= CO12_1_1_net;
    
    CO14_0 <= CO14_0_1_net;
    
    CO14_1 <= CO14_1_1_net;
    
    CO2_0 <= CO2_0_1_net;
    
    CO2_1 <= CO2_1_1_net;
    
    CO4A <= CO4A_1_net;
    
    CO6_0 <= CO6_0_1_net;
    
    CO6_1 <= CO6_1_1_net;
    
    CO8_0 <= CO8_0_1_net;
    
    CO8_1 <= CO8_1_1_net;
    
    U2 : OR2
   port map(A => A15, B => B15, Y => CO15_A);
    U6 : CY2A
   port map(A0 => A11, A1 => A12, B0 => B11, B1 => B12, Y => 
        CO12_0_1_net);
    U20 : CS2
   port map(A => CO8_0_1_net, B => CO8_1_1_net, C => CO10_A, D => 
        CO10_B, S => CO6_1_1_net, Y => CO10_1_1_net);
    U19 : CS2
   port map(A => CO14_0_1_net, B => CO14_1_1_net, C => CO15_B, 
        D => CO15_A, S => CO12_0_1_net, Y => CO15_0);
    U9 : CY2A
   port map(A0 => A7, A1 => A8, B0 => B7, B1 => B8, Y => 
        CO8_0_1_net);
    U3 : CY2A
   port map(A0 => A13, A1 => A14, B0 => B13, B1 => B14, Y => 
        CO14_0_1_net);
    U23 : CS2
   port map(A => CO10_0_1_net, B => CO10_1_1_net, C => CO15_0, 
        D => CO15_1, S => CO4A_1_net, Y => CO);
    U22A : CS2
   port map(A => CO2_0_1_net, B => CO2_1_1_net, C => CO4_0, D => 
        CO4_1, S => CO0A, Y => CO4A_1_net);
    U4 : CY2B
   port map(A0 => A13, A1 => A14, B0 => B13, B1 => B14, Y => 
        CO14_1_1_net);
    U17 : MAJ3
   port map(A => A0, B => B0, C => CIN, Y => CO0B);
    U17A : MAJ3
   port map(A => A0, B => B0, C => CIN, Y => CO0A);
    U22B : CS2
   port map(A => CO2_0_1_net, B => CO2_1_1_net, C => CO4_0, D => 
        CO4_1, S => CO0A, Y => CO4B);
    U15 : CY2A
   port map(A0 => A1, A1 => A2, B0 => B1, B1 => B2, Y => 
        CO2_0_1_net);
    U1 : AND2
   port map(A => A15, B => B15, Y => CO15_B);
    U14 : CY2B
   port map(A0 => A3, A1 => A4, B0 => B3, B1 => B4, Y => CO4_1);
    U10 : CY2B
   port map(A0 => A7, A1 => A8, B0 => B7, B1 => B8, Y => 
        CO8_1_1_net);
    U8 : CY2B
   port map(A0 => A9, A1 => A10, B0 => B9, B1 => B10, Y => CO10_B);
    U13 : CY2A
   port map(A0 => A3, A1 => A4, B0 => B3, B1 => B4, Y => CO4_0);
    U21 : CS2
   port map(A => CO8_0_1_net, B => CO8_1_1_net, C => CO10_A, D => 
        CO10_B, S => CO6_0_1_net, Y => CO10_0_1_net);
    U12 : CY2A
   port map(A0 => A5, A1 => A6, B0 => B5, B1 => B6, Y => 
        CO6_0_1_net);
    U18 : CS2
   port map(A => CO14_0_1_net, B => CO14_1_1_net, C => CO15_B, 
        D => CO15_A, S => CO12_1_1_net, Y => CO15_1);
    U16 : CY2B
   port map(A0 => A1, A1 => A2, B0 => B1, B1 => B2, Y => 
        CO2_1_1_net);
    U11 : CY2B
   port map(A0 => A5, A1 => A6, B0 => B5, B1 => B6, Y => 
        CO6_1_1_net);
    U7 : CY2A
   port map(A0 => A9, A1 => A10, B0 => B9, B1 => B10, Y => CO10_A);
    U5 : CY2B
   port map(A0 => A11, A1 => A12, B0 => B11, B1 => B12, Y => 
        CO12_1_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VADC16SL is 
    port(A0, A1, A2, A3, A4, A5, A6, A7, A8, B0, B1, B2, B3, B4, 
        B5, B6, B7, B8, CIN, CO0B, CO2_0, CO2_1, CO4B, CO6_0, 
        CO6_1 : in std_logic;  S0, S1, S2, S3, S4, S5, S6, S7, S8 : 
        out std_logic) ;
end VADC16SL;


architecture DEF_ARCH of  VADC16SL is

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component SUMX1A
        port(A0, A1, B0, B1, CI : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N1, X1N26, X1N31, X1N32, X1N35, X1N36, X1N37, X1N4, 
        X1N41, X1N48, X1N5, X1N62, X1N63, X1N64, X1N65, X1N66, 
        CO3 : std_logic ;
begin   

    U37 : XOR2
   port map(A => A5, B => B5, Y => X1N37);
    U24 : XOR2
   port map(A => A0, B => B0, Y => X1N41);
    U35 : XOR2
   port map(A => CO3, B => X1N48, Y => S4);
    U47 : CS2
   port map(A => X1N62, B => X1N66, C => X1N64, D => X1N63, S => 
        CO6_1, Y => X1N65);
    U34 : CS2
   port map(A => CO2_0, B => CO2_1, C => X1N35, D => X1N36, S => 
        CO0B, Y => CO3);
    U45 : CS2
   port map(A => X1N62, B => X1N66, C => X1N64, D => X1N63, S => 
        CO6_0, Y => X1N1);
    U30 : XNOR2
   port map(A => A3, B => B3, Y => X1N32);
    U44 : XNOR2
   port map(A => A8, B => B8, Y => X1N63);
    U33 : OR2
   port map(A => A3, B => B3, Y => X1N36);
    U40 : XOR2
   port map(A => A7, B => B7, Y => X1N4);
    U43 : XOR2
   port map(A => A8, B => B8, Y => X1N64);
    U32 : AND2
   port map(A => A3, B => B3, Y => X1N35);
    U28 : SUMX1A
   port map(A0 => A1, A1 => A2, B0 => B1, B1 => B2, CI => CO0B, 
        Y => S2);
    U42 : XNOR2
   port map(A => A7, B => B7, Y => X1N5);
    U38 : XOR2
   port map(A => X1N37, B => CO4B, Y => S5);
    U26 : XOR2
   port map(A => A1, B => B1, Y => X1N26);
    U48 : AND2
   port map(A => A7, B => B7, Y => X1N62);
    U36 : XOR2
   port map(A => A4, B => B4, Y => X1N48);
    U31 : CS2
   port map(A => CO2_0, B => CO2_1, C => X1N31, D => X1N32, S => 
        CO0B, Y => S3);
    U29 : XOR2
   port map(A => A3, B => B3, Y => X1N31);
    U46 : MX2
   port map(A => X1N1, B => X1N65, S => CO4B, Y => S8);
    U41 : CS2
   port map(A => CO6_0, B => CO6_1, C => X1N4, D => X1N5, S => 
        CO4B, Y => S7);
    U39 : SUMX1A
   port map(A0 => A5, A1 => A6, B0 => B5, B1 => B6, CI => CO4B, 
        Y => S6);
    U27 : XOR2
   port map(A => CO0B, B => X1N26, Y => S1);
    U49 : OR2
   port map(A => A7, B => B7, Y => X1N66);
    U25 : XOR2
   port map(A => CIN, B => X1N41, Y => S0);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VADC16SM is 
    port(A10, A11, A12, A9, B10, B11, B12, B9, CO10_0, CO10_1, 
        CO4A, CO4B, CO6_0, CO6_1, CO8_0, CO8_1 : in std_logic;  
        S10, S11, S12, S9 : out std_logic) ;
end VADC16SM;


architecture DEF_ARCH of  VADC16SM is

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component MX2
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N16, X1N17, X1N19, X1N20, X1N21, X1N22, X1N23, X1N24, 
        X1N25, X1N30, X1N34, X1N36, X1N37, X1N38, X1N49, X1N50, 
        X1N51, X1N53 : std_logic ;
    begin   

    U74 : CS2
   port map(A => CO10_0, B => CO10_1, C => X1N51, D => X1N30, 
        S => CO4A, Y => S11);
    U70 : CS2
   port map(A => CO8_0, B => CO8_1, C => X1N50, D => X1N49, S => 
        CO6_0, Y => X1N38);
    U65 : XOR2
   port map(A => A10, B => B10, Y => X1N37);
    U81 : CS2
   port map(A => CO10_0, B => CO10_1, C => X1N22, D => X1N23, 
        S => CO4A, Y => S12);
    U73 : XNOR2
   port map(A => A11, B => B11, Y => X1N30);
    U64 : MX2
   port map(A => X1N17, B => X1N16, S => CO4B, Y => S9);
    U60 : XOR2
   port map(A => A9, B => B9, Y => X1N53);
    U72 : XOR2
   port map(A => A11, B => B11, Y => X1N51);
    U63 : CS2
   port map(A => CO8_0, B => CO8_1, C => X1N53, D => X1N19, S => 
        CO6_1, Y => X1N16);
    U62 : CS2
   port map(A => CO8_0, B => CO8_1, C => X1N53, D => X1N19, S => 
        CO6_0, Y => X1N17);
    U78 : OR2
   port map(A => A11, B => B11, Y => X1N21);
    U68 : OR2
   port map(A => A9, B => B9, Y => X1N49);
    U76 : XOR2
   port map(A => A12, B => B12, Y => X1N24);
    U80 : MX2
   port map(A => X1N24, B => X1N25, S => X1N21, Y => X1N23);
    U71 : CS2
   port map(A => X1N38, B => X1N34, C => X1N37, D => X1N36, S => 
        CO4B, Y => S10);
    U66 : XNOR2
   port map(A => A10, B => B10, Y => X1N36);
    U61 : XNOR2
   port map(A => A9, B => B9, Y => X1N19);
    U79 : XNOR2
   port map(A => A12, B => B12, Y => X1N25);
    U69 : CS2
   port map(A => CO8_0, B => CO8_1, C => X1N50, D => X1N49, S => 
        CO6_1, Y => X1N34);
    U77 : MX2
   port map(A => X1N24, B => X1N25, S => X1N20, Y => X1N22);
    U75 : AND2
   port map(A => A11, B => B11, Y => X1N20);
    U67 : AND2
   port map(A => A9, B => B9, Y => X1N50);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VADC16SU is 
    port(A13, A14, A15, B13, B14, B15, CO10_0, CO10_1, CO12_0, 
        CO12_1, CO14_0, CO14_1, CO4A : in std_logic;  S13, S14, 
        S15 : out std_logic) ;
end VADC16SU;


architecture DEF_ARCH of  VADC16SU is

    component CS2
        port(A, B, C, D, S : in std_logic := 'U'; Y : out 
        std_logic) ;
    end component;

    component OR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AND2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component MX2B
        port(A, B, S : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component XOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal X1N21, X1N22, X1N23, X1N24, X1N25, X1N26, X1N27, X1N28, 
        X1N29, X1N34, X1N35, X1N36, X1N37 : std_logic ;
    begin   

    U99 : CS2
   port map(A => X1N36, B => X1N37, C => X1N27, D => X1N26, S => 
        CO12_0, Y => X1N29);
    U101 : CS2
   port map(A => CO10_0, B => CO10_1, C => X1N29, D => X1N28, 
        S => CO4A, Y => S14);
    U106 : CS2
   port map(A => CO14_0, B => CO14_1, C => X1N23, D => X1N24, 
        S => CO12_1, Y => X1N22);
    U98 : OR2
   port map(A => A13, B => B13, Y => X1N37);
    U105 : CS2
   port map(A => CO10_0, B => CO10_1, C => X1N21, D => X1N22, 
        S => CO4A, Y => S15);
    U96 : XNOR2
   port map(A => A14, B => B14, Y => X1N26);
    U100 : CS2
   port map(A => X1N36, B => X1N37, C => X1N27, D => X1N26, S => 
        CO12_1, Y => X1N28);
    U97 : AND2
   port map(A => A13, B => B13, Y => X1N36);
    U93 : MX2B
   port map(A => X1N25, B => X1N25, S => CO12_1, Y => X1N34);
    U103 : XNOR2
   port map(A => A15, B => B15, Y => X1N24);
    U104 : CS2
   port map(A => CO14_0, B => CO14_1, C => X1N23, D => X1N24, 
        S => CO12_0, Y => X1N21);
    U91 : XOR2
   port map(A => A13, B => B13, Y => X1N25);
    U95 : XOR2
   port map(A => A14, B => B14, Y => X1N27);
    U92 : MX2B
   port map(A => X1N25, B => X1N25, S => CO12_0, Y => X1N35);
    U94 : CS2
   port map(A => CO10_0, B => CO10_1, C => X1N35, D => X1N34, 
        S => CO4A, Y => S13);
    U102 : XOR2
   port map(A => A15, B => B15, Y => X1N23);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VCTD2CP is 
    port(CLEAR, CLK : in std_logic;  CLR, CNT : out std_logic;  
        COUNT : in std_logic;  LD : out std_logic;  LOAD, P0, P1 : 
        in std_logic;  Q0, Q1 : out std_logic) ;
end VCTD2CP;


architecture DEF_ARCH of  VCTD2CP is

    component DF1
        port(D, CLK : in std_logic := 'U'; Q : out std_logic) ;
    end component;

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DF1A
        port(D, CLK : in std_logic := 'U'; QN : out std_logic) ;
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal CLR_1_net, CNT_1_net, LD_1_net, Q0_1_net, Q1_1_net, 
        X1N10, CNTN, GND_1_net : std_logic ;
    begin   

    CLR <= CLR_1_net;
    
    CNT <= CNT_1_net;
    
    LD <= LD_1_net;
    
    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    GND_2_net : GND port map(Y => GND_1_net);
    RGLD : DF1
   port map(D => LOAD, CLK => CLK, Q => LD_1_net);
    RG0 : DFM7A
   port map(D0 => CNTN, D1 => P0, D2 => CNT_1_net, D3 => P0, 
        S0 => LD_1_net, S10 => Q0_1_net, S11 => GND_1_net, CLR => 
        CLR_1_net, CLK => CLK, Q => Q0_1_net);
    CLRI : INV
   port map(A => CLEAR, Y => CLR_1_net);
    RGCTN : DF1
   port map(D => COUNT, CLK => CLK, Q => CNTN);
    RGCT : DF1A
   port map(D => COUNT, CLK => CLK, QN => CNT_1_net);
    RG1 : DFM7A
   port map(D0 => X1N10, D1 => P1, D2 => Q1_1_net, D3 => P1, 
        S0 => LD_1_net, S10 => Q0_1_net, S11 => CNT_1_net, CLR => 
        CLR_1_net, CLK => CLK, Q => Q1_1_net);
    INV_1_inst : INV
   port map(A => Q1_1_net, Y => X1N10);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VCTD2CU is 
    port(CI, CLK, CLR, CNT, CT0, CT1, LD, P0, P1 : in std_logic;  
        Q0, Q1 : out std_logic) ;
end VCTD2CU;


architecture DEF_ARCH of  VCTD2CU is

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component AX1B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q0_1_net, Q1_1_net, X1N135, X1N77, X1N88 : std_logic ;
    begin   

    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    RG2 : DFM7A
   port map(D0 => X1N77, D1 => P0, D2 => Q0_1_net, D3 => P0, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q0_1_net);
    XA2 : AX1B
   port map(A => CI, B => CT1, C => Q0_1_net, Y => X1N77);
    ND3 : NAND2B
   port map(A => CI, B => Q0_1_net, Y => X1N135);
    RG3 : DFM7A
   port map(D0 => X1N88, D1 => P1, D2 => Q1_1_net, D3 => P1, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q1_1_net);
    XA3 : AX1B
   port map(A => X1N135, B => CT1, C => Q1_1_net, Y => X1N88);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VCTD4CL is 
    port(CLK, CLR, CNT : in std_logic;  CO : out std_logic;  CT0, 
        CT1, LD, P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, Q3 : 
        out std_logic) ;
end VCTD4CL;


architecture DEF_ARCH of  VCTD4CL is

    component XNOR2
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component NAND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component AX1B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N22, X1N32, 
        X1N43, X1N46, X1N81, X1N85 : std_logic ;
    begin   

    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    Q2 <= Q2_1_net;
    
    Q3 <= Q3_1_net;
    
    X2 : XNOR2
   port map(A => CT1, B => Q0_1_net, Y => X1N43);
    RG2 : DFM7A
   port map(D0 => X1N43, D1 => P0, D2 => Q0_1_net, D3 => P0, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q0_1_net);
    ND5 : NAND3C
   port map(A => Q0_1_net, B => Q1_1_net, C => Q2_1_net, Y => 
        X1N85);
    XA5 : AX1B
   port map(A => X1N85, B => CT1, C => Q3_1_net, Y => X1N22);
    XA4 : AX1B
   port map(A => X1N81, B => CT1, C => Q2_1_net, Y => X1N32);
    RG5 : DFM7A
   port map(D0 => X1N22, D1 => P3, D2 => Q3_1_net, D3 => P3, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q3_1_net);
    ND4 : NAND2B
   port map(A => Q0_1_net, B => Q1_1_net, Y => X1N81);
    NDCO : NAND4D
   port map(A => Q0_1_net, B => Q1_1_net, C => Q2_1_net, D => 
        Q3_1_net, Y => CO);
    XA3 : AX1B
   port map(A => Q0_1_net, B => CT1, C => Q1_1_net, Y => X1N46);
    RG4 : DFM7A
   port map(D0 => X1N32, D1 => P2, D2 => Q2_1_net, D3 => P2, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q2_1_net);
    RG3 : DFM7A
   port map(D0 => X1N46, D1 => P1, D2 => Q1_1_net, D3 => P1, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q1_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
entity VCTD4CM is 
    port(CI, CLK, CLR, CNT : in std_logic;  CO : out std_logic;  
        CT0, CT1, LD, P0, P1, P2, P3 : in std_logic;  Q0, Q1, Q2, 
        Q3 : out std_logic) ;
end VCTD4CM;


architecture DEF_ARCH of  VCTD4CM is

    component DFM7A
        port(D0, D1, D2, D3, S0, S10, S11, CLR, CLK : in 
        std_logic := 'U'; Q : out std_logic) ;
    end component;

    component NAND4D
        port(A, B, C, D : in std_logic := 'U'; Y : out std_logic
        ) ;
    end component;

    component AX1B
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND3C
        port(A, B, C : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component NAND2B
        port(A, B : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    signal Q0_1_net, Q1_1_net, Q2_1_net, Q3_1_net, X1N100, X1N110, 
        X1N198, X1N201, X1N207, X1N91, X1N92 : std_logic ;
    begin   

    Q0 <= Q0_1_net;
    
    Q1 <= Q1_1_net;
    
    Q2 <= Q2_1_net;
    
    Q3 <= Q3_1_net;
    
    RG2 : DFM7A
   port map(D0 => X1N201, D1 => P0, D2 => Q0_1_net, D3 => P0, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q0_1_net);
    ND5 : NAND4D
   port map(A => CI, B => Q0_1_net, C => Q1_1_net, D => Q2_1_net, 
        Y => X1N91);
    XA2 : AX1B
   port map(A => CI, B => CT1, C => Q0_1_net, Y => X1N201);
    XA5 : AX1B
   port map(A => X1N91, B => CT1, C => Q3_1_net, Y => X1N198);
    XA4 : AX1B
   port map(A => X1N92, B => CT1, C => Q2_1_net, Y => X1N110);
    RG5 : DFM7A
   port map(D0 => X1N198, D1 => P3, D2 => Q3_1_net, D3 => P3, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q3_1_net);
    ND4 : NAND3C
   port map(A => CI, B => Q0_1_net, C => Q1_1_net, Y => X1N92);
    NDCO : NAND4D
   port map(A => Q0_1_net, B => Q1_1_net, C => Q2_1_net, D => 
        Q3_1_net, Y => CO);
    ND3 : NAND2B
   port map(A => CI, B => Q0_1_net, Y => X1N207);
    XA3 : AX1B
   port map(A => X1N207, B => CT1, C => Q1_1_net, Y => X1N100);
    RG4 : DFM7A
   port map(D0 => X1N110, D1 => P2, D2 => Q2_1_net, D3 => P2, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q2_1_net);
    RG3 : DFM7A
   port map(D0 => X1N100, D1 => P1, D2 => Q1_1_net, D3 => P1, 
        S0 => LD, S10 => CT0, S11 => CNT, CLR => CLR, CLK => CLK, 
        Q => Q1_1_net);
end DEF_ARCH;
library ieee;
use ieee.std_logic_1164.all;
library a42mx;
 
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
