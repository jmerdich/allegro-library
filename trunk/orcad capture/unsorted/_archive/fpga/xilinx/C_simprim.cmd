echo off
rem -- File name: C_simprim.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx post-routed simulation models.
rem -- The precompiled script will search for the location of Xilinx FPGA tools set 
rem -- and use your existing models. Cadence NC VHDL Desktop simulator will compile 
rem -- the following three files:
rem -- 1> xilinx_installed_dir\VHDL\src\simprims\simprim_Vcomponents.vhd
rem -- 2> xilinx_installed_dir\VHDL\src\simprims\simprim_Vpackage.vhd
rem -- 3> xilinx_installed_dir\VHDL\src\simprims\simprim_vital.vhd
rem
rem -- If the auto-script can not find user's Xilinx FPGA tools set, the default 
rem -- Xilinx models which provided by FPGA_LIB will be used for the pre-compiled process.
rem -- 1> \fpga_lib\library\xilinx\simprim_Vcomponents.vhd
rem -- 2> \fpga_lib\library\xilinx\simprim_Vpackage.vhd
rem -- 3> \fpga_lib\library\xilinx\simprim_vital.vhd
rem --
rem -- The compiled library will be named:  simprim
rem --  
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator was installed
rem --
echo off
rmdir /S /Q .\sim_lib\simprim
mkdir .\sim_lib\simprim


IF not exist %XILINX%\VHDL\src\simprims\simprim_Vcomponents.vhd goto XILINX_NOT_FOUND
IF not exist %XILINX%\VHDL\src\simprims\simprim_Vpackage.vhd goto XILINX_NOT_FOUND
IF not exist %XILINX%\VHDL\src\simprims\simprim_vital.vhd goto XILINX_NOT_FOUND

:XILINX_FOUND
echo on
echo Compiling Your Local update Xilinx Resources
ncvhdl -work simprim -log ncvhdl.log -messages %XILINX%\VHDL\src\simprims\simprim_Vcomponents.vhd  %XILINX%\VHDL\src\simprims\simprim_Vpackage.vhd %XILINX%\VHDL\src\simprims\simprim_vital.vhd
goto END

:XILINX_NOT_FOUND
echo on
echo Compiling FPGA Studio Xilinx Default Resources
ncvhdl -work simprim -log ncvhdl.log -messages .\simprims\simprim_Vcomponents.vhd .\simprims\simprim_Vpackage.vhd .\simprims\simprim_vital.vhd

:END

