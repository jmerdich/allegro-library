-- $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/vhdsclibs/data/unisim_VITAL52K.vhd,v 1.2 1999/05/20 23:48:51 rogerng Exp $
----------------------------------------------------------------
-- 
-- FILENAME     :    unisim_VITAL52K.vhd
-- FILE CONTENTS:    Entity, Structural Architecture(VITAL),
--                   and Configuration
-- DATE CREATED :    Mon Aug 18, 1997.
-- 
-- LIBRARY      :    XUP (Xilinx Unified Primitives)
-- REVISION     :    1.1.1
-- TECHNOLOGY   :    FPGA
-- TIME SCALE   :    1 NS
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    VITAL, TimingChecksOn(FALSE), XGenerationOn(TRUE), TimingMessage(FALSE), 
--                   OnEvent 

-- HISTORY      :    1.  Manually created for XC5200 BSCAN and STARTUP components.
--                       DP, 08/18/97.
--                   2.  Changed file name from XUP_VITAL52K.vhd to unisim_VITAL52K.vhd.
--                       DP, 09/26/97.
--                   3.  Changed BSCAN and STARTUP models to remove all timing and
--                       initialize output ports to 'Z', as well as drive a 'Z'
--                       on each output port. DP, 09/26/97.
--                   4.  Changed BSCAN and STARTUP models to initialize output ports
--                       to 'H'/'L' and drive an 'H'/'L' on each output port.
--                       DP, 01/14/98.
--                   5.  Added models for MD0, MD1, MD2, TCK, TDI, TDO and TMS.
--                       DP, 01/14/98.
--                       Added IBUFN_F model, SG, -1/21/99.
----------------------------------------------------------------



----- CELL BSCAN -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity BSCAN is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

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
attribute VITAL_LEVEL0 of BSCAN : entity is TRUE;
end BSCAN;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
architecture BSCAN_V of BSCAN is

   attribute VITAL_LEVEL0 of BSCAN_V : architecture is TRUE;

begin

   RESET  <= 'H';
   UPDATE <= 'L';
   SHIFT  <= 'L';
   TDO    <= 'H';
   DRCK   <= 'H';
   IDLE   <= 'H';
   SEL1   <= 'L';
   SEL2   <= 'L';

end BSCAN_V;

configuration CFG_BSCAN_V of BSCAN is
   for BSCAN_V
   end for;
end CFG_BSCAN_V;

----- CELL IBUFN_F -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity IBUFN_F is
   generic(
      TimingChecksOn: Boolean := TRUE;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False;
      tpd_I_O                        :	VitalDelayType01 := (0.100 ns, 0.100 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
attribute VITAL_LEVEL0 of IBUFN_F : entity is TRUE;
end IBUFN_F;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture IBUFN_F_V of IBUFN_F is
   attribute VITAL_LEVEL1 of IBUFN_F_V : architecture is TRUE;

   SIGNAL I_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (I_ipd, I, tipd_I);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (I_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS O_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE O_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      O_zd := TO_X01(NOT I_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => O,
       GlitchData => O_GlitchData,
       OutSignalName => "O",
       OutTemp => O_zd,
       Paths => (0 => (I_ipd'last_event, tpd_I_O, TRUE)),
       Mode => OnEvent,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end IBUFN_F_V;

configuration CFG_IBUFN_F_V of IBUFN_F is
   for IBUFN_F_V
   end for;
end CFG_IBUFN_F_V;


----- CELL STARTUP -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity STARTUP is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      Q2                             :	out   STD_ULOGIC := 'H';
      Q3                             :	out   STD_ULOGIC := 'H';
      Q1Q4                           :	out   STD_ULOGIC := 'H';
      DONEIN                         :	out   STD_ULOGIC := 'H';
      GR                             :	in    STD_ULOGIC;
      GTS                            :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
attribute VITAL_LEVEL0 of STARTUP : entity is TRUE;
end STARTUP;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
architecture STARTUP_V of STARTUP is

   attribute VITAL_LEVEL0 of STARTUP_V : architecture is TRUE;

begin

      Q2     <= 'H';
      Q3     <= 'H';
      Q1Q4   <= 'H';
      DONEIN <= 'H';

end STARTUP_V;

configuration CFG_STARTUP_V of STARTUP is
   for STARTUP_V
   end for;
end CFG_STARTUP_V;


----- CELL MD0 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity MD0 is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      I    : inout STD_ULOGIC := 'Z');
attribute VITAL_LEVEL0 of MD0 : entity is TRUE;
end MD0;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture MD0_V of MD0 is

   attribute VITAL_LEVEL0 of MD0_V : architecture is TRUE;

begin

  I <= 'Z';

end MD0_V;

configuration CFG_MD0_V of MD0 is
   for MD0_V
   end for;
end CFG_MD0_V;


----- CELL MD1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity MD1 is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      O                              : inout STD_ULOGIC);
attribute VITAL_LEVEL0 of MD1 : entity is TRUE;
end MD1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture MD1_V of MD1 is

   attribute VITAL_LEVEL0 of MD1_V : architecture is TRUE;

begin

   O <= 'Z';

end MD1_V;

configuration CFG_MD1_V of MD1 is
   for MD1_V
   end for;
end CFG_MD1_V;


----- CELL MD2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity MD2 is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      I    : inout STD_ULOGIC := 'Z');
attribute VITAL_LEVEL0 of MD2 : entity is TRUE;
end MD2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture MD2_V of MD2 is

   attribute VITAL_LEVEL0 of MD2_V : architecture is TRUE;

begin

   I <= 'Z';

end MD2_V;

configuration CFG_MD2_V of MD2 is
   for MD2_V
   end for;
end CFG_MD2_V;


----- CELL TCK -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity TCK is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      I    : inout STD_ULOGIC := 'Z');
attribute VITAL_LEVEL0 of TCK : entity is TRUE;
end TCK;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture TCK_V of TCK is

   attribute VITAL_LEVEL0 of TCK_V : architecture is TRUE;

begin

   I <= 'Z';

end TCK_V;

configuration CFG_TCK_V of TCK is
   for TCK_V
   end for;
end CFG_TCK_V;


----- CELL TDI -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity TDI is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      I  : inout  STD_ULOGIC := 'Z');
attribute VITAL_LEVEL0 of TDI : entity is TRUE;
end TDI;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture TDI_V of TDI is

   attribute VITAL_LEVEL0 of TDI_V : architecture is TRUE;

begin

   I <= 'Z';

end TDI_V;

configuration CFG_TDI_V of TDI is
   for TDI_V
   end for;
end CFG_TDI_V;


----- CELL TDO -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity TDO is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      O                              :	inout STD_ULOGIC);
attribute VITAL_LEVEL0 of TDO : entity is TRUE;
end TDO;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture TDO_V of TDO is

   attribute VITAL_LEVEL0 of TDO_V : architecture is TRUE;

begin

   O <= 'Z';

end TDO_V;

configuration CFG_TDO_V of TDO is
   for TDO_V
   end for;
end CFG_TDO_V;


----- CELL TMS -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity TMS is
   generic(
      TimingChecksOn: Boolean := False;
      InstancePath: STRING := "*";
      Xon: Boolean := True;
      MsgOn: Boolean := False);

   port(
      I                              : inout STD_ULOGIC);
attribute VITAL_LEVEL0 of TMS : entity is TRUE;
end TMS;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library UNISIM;
use UNISIM.VPKG.all;
architecture TMS_V of TMS is

   attribute VITAL_LEVEL0 of TMS_V : architecture is TRUE;

begin

   I <= 'Z';

end TMS_V;

configuration CFG_TMS_V of TMS is
   for TMS_V
   end for;
end CFG_TMS_V;
