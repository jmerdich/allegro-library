echo off
rem -- File name: C_x4ke.cmd
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx XC4000E prerouted simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem -- 1> .\FPGA_LIB\library\xilinx\x4ke\x4ke.vhd
rem -- 2> .\FPGA_LIB\library\xilinx\x4ke\x4ke_m.vhd
rem --
rem -- The compiled library will be named: x4kelib
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\x4kelib_old
mkdir .\sim_lib\x4kelib_old
echo on
ncvhdl -v93 -work x4kelib_old -log ncvhdl.log -messages .\Xc4000e.old\x4ke.vhd .\Xc4000e.old\x4ke_m.vhd