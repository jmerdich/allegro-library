echo off
rem -- File name: C_x9k.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx XC9500 pre-routed simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem -- 1> .\FPGA_LIB\library\xilinx\Xc9500\x9k.vhd
rem -- 2> .\FPGA_LIB\library\xilinx\Xc9500\x9k_m.vhd
rem --
rem -- The compiled libraries will be named: x9klib
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\x9klib
mkdir .\sim_lib\x9klib
echo on
ncvhdl -v93 -work x9klib -log ncvhdl.log -messages .\Xc9500\x9k.vhd .\Xc9500\x9k_m.vhd
