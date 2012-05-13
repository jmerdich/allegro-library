echo off
rem -- File name: C_a3200.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Actel 3200DX simulation models.
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem --
rem -- 1> .\FPGA_LIB\library\actel\3200dx.vhd
rem -- 2> .\FPGA_LIB\library\actel\3200dx_mig.vhd
rem -- The compiled library will be named: a3200dx
rem --    
rem -- Before running this file, please made sure that 
rem -- Cadence NC VHDL Desktop simulator was installed.
rem --
rmdir /S /Q .\sim_lib\a3200dx
mkdir .\sim_lib\a3200dx
echo on
ncvhdl -work a3200dx -log ncvhdl.log -messages .\3200dx.vhd .\3200dx_mig.vhd