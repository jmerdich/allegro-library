echo off
rem -- File name: C_act1.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel Act1 pre-routed simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\act1.vhd
rem -- 2> .\FPGA_LIB\library\actel\act1_mig.vhd
rem --
rem -- Anyway, the compiled libraries will be named: act1
rem --  
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\act1
mkdir .\sim_lib\act1
echo on
ncvhdl -work act1 -log ncvhdl.log -messages .\act1.vhd .\act1_mig.vhd