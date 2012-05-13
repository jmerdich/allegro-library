echo off
rem -- File name: C_x3k.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx XC3x00 pre-routed simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem -- 1> .\FPGA_LIB\library\xilinx\Xc3x00\x3k.vhd
rem -- 2> .\FPGA_LIB\library\xilinx\Xc3x00\x3kx_m.vhd
rem --
rem -- The compiled library will be named: x3klib
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\x3klib
mkdir .\sim_lib\x3klib
echo on
ncvhdl -v93 -work x3klib -log ncvhdl.log -messages .\Xc3x00\x3k.vhd .\Xc3x00\x3k_m.vhd
