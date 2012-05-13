echo off
rem -- File name: C_x5k.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx XC5200 pre-routed simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem -- 1> .\FPGA_LIB\library\xilinx\Xc5200\x5k.vhd
rem -- 2> .\FPGA_LIB\library\xilinx\Xc5200\x5k_m.vhd
rem --
rem -- The compiled libraries will be named: x5klib
rem --
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\x5klib
mkdir .\sim_lib\x5klib
echo on
ncvhdl -v93 -work x5klib -log ncvhdl.log -messages .\Xc5200\x5k.vhd .\Xc5200\x5k_m.vhd
