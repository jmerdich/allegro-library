echo off
rem -- File name: C_x4kx.cmd
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx XC4000X pre-routed simulation models
rem -- Two files will be compiled in Cadence NC VHDL Desktop simulator:
rem -- 1> .\FPGA_LIB\library\xilinx\xc4000x.old\x4kx.vhd
rem -- 2> .\FPGA_LIB\library\xilinx\xc4000x.old\x4kx_m.vhd
rem --
rem -- The compiled library will be named: x4kxlib
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\x4kxlib_old
mkdir .\sim_lib\x4kxlib_old
echo on
ncvhdl -v93 -work x4kxlib_old -log ncvhdl.log -messages .\Xc4000x.old\x4kx.vhd .\Xc4000x.old\x4kx_m.vhd
