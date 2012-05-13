echo off
rem -- File name: C_act3.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel Act3 simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\act3.vhd
rem -- 2> .\FPGA_LIB\library\actel\act3_mig.vhd
rem --
rem -- Anyway, this compiled library will be named: act3
rem --    
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\act3
mkdir .\sim_lib\act3
echo on
ncvhdl -work act3 -log ncvhdl.log -messages .\act3.vhd .\act3_mig.vhd