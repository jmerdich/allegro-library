echo off
rem -- File name: C_54sx.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel 54sx simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\54sx.vhd
rem -- 2> .\FPGA_LIB\library\actel\54sx_mig.vhd
rem -- The compiled library will be named: a54sx
rem --    
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\a54sx
mkdir .\sim_lib\a54sx
echo on
ncvhdl -work a54sx -log ncvhdl.log -messages .\54sx.vhd .\54sx_mig.vhd