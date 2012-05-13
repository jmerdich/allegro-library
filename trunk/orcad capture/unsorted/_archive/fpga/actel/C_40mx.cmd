echo off
rem -- File name: C_40mx.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel 40mx simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\40mx.vhd
rem -- 2> .\FPGA_LIB\library\actel\40mx_mig.vhd
rem -- This compiled library will be named: a40mx
rem --    
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\a40mx
mkdir .\sim_lib\a40mx
echo on
ncvhdl -work a40mx -log ncvhdl.log -messages .\40mx.vhd .\40mx_mig.vhd