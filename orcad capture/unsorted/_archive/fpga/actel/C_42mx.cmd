echo off
rem -- File name: C_42mx.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel 42mx simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\42mx.vhd
rem -- 2> .\FPGA_LIB\library\actel\42mx_mig.vhd
rem -- The compiled library will be named: a42mx
rem --    
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\a42mx
mkdir .\sim_lib\a42mx
echo on
ncvhdl -work a42mx -log ncvhdl.log -messages .\42mx.vhd .\42mx_mig.vhd