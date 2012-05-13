echo off
rem -- File name: C_unisim.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx prerouted simulation models
rem -- Four files will be compiled in Cadence NC VHDL Desktop simulator:
rem -- 1> XILINX_INSTALLED_DIR\VHDL\src\unisim_VPKG.VHD
rem -- 2> XILINX_INSTALLED_DIR\VHDL\src\unisim_VCOMP.VHD
rem -- 3> XILINX_INSTALLED_DIR\VHDL\src\unisim_VITAL.VHD
rem -- 4> XILINX_INSTALLED_DIR\VHDL\src\unisim_VCFG4K.VHD
rem --
rem -- The compiled library will be named: unsim
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\unisim
mkdir .\sim_lib\unisim

IF not exist %XILINX%\VHDL\src\unisims\unisim_VPKG.VHD goto XILINX_NOT_FOUND
IF not exist %XILINX%\VHDL\src\unisims\unisim_VCOMP.VHD goto XILINX_NOT_FOUND
IF not exist %XILINX%\VHDL\src\unisims\unisim_VITAL.VHD goto XILINX_NOT_FOUND
IF not exist %XILINX%\VHDL\src\unisims\unisim_VCFG4K.VHD goto XILINX_NOT_FOUND


:XILINX_FOUND
echo on
ncvhdl -work unisim -log ncvhdl.log -messages %XILINX%\vhdl\src\unisims\unisim_VPKG.VHD %XILINX%\vhdl\src\unisims\unisim_VCOMP.VHD %XILINX%\vhdl\src\unisims\unisim_VITAL.VHD %XILINX%\vhdl\src\unisims\unisim_VCFG4K.VHD 
goto END

:XILINX_NOT_FOUND
ncvhdl -work unisim -log ncvhdl.log -messages .\unisims\unisim_VPKG.VHD .\unisims\unisim_VCOMP.VHD .\unisims\unisim_VITAL.VHD .\unisims\unisim_VCFG4K.VHD

:END