echo off
rem -- File name: C_coolpack.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx coolpack simulation models
rem -- Run this file would compile the following file in Cadence NC VHDL Desktop simulator:
rem -- .\library\xilinx\Xpla\coolpack.vhd
rem --
rem -- The compiled library named: COOLPACK
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\coolpack
mkdir .\sim_lib\coolpack
echo on
ncvhdl -v93 -work coolpack -log ncvhdl.log -messages .\xpla\coolpack.vhd
