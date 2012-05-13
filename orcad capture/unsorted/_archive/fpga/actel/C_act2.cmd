echo off
rem -- File name: C_act2.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel Act2 simulation models.
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\act2.vhd
rem -- 2> .\FPGA_LIB\library\actel\act2_mig.vhd
rem --
rem -- Anyway, the compiled libraries will be named: act2
rem --    
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\act2
mkdir .\sim_lib\act2
echo on
ncvhdl -work act2 -log ncvhdl.log -messages .\act2.vhd .\act2_mig.vhd