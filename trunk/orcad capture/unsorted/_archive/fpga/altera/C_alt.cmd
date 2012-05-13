echo off
rem -- File name: C_alt.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Altera pre-routed simulation models
rem -- in Cadence NC VHDL Desktop simulator. Two files would be compiled in order:
rem -- 1> .\FPGA_LIB\library\altera\orcad_prims.vhd
rem -- 2> .\FPGA_LIB\library\altera\altera_p.vhd
rem -- 3> .\FPGA_LIB\library\altera\altera_m.vhd
rem --
rem -- The compiled libraries will be placed into the following directory:
rem -- .\FPGA_LIB\library\sim_lib\
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\altlib
mkdir .\sim_lib\altlib
echo on
ncvhdl -v93 -work altlib -log ncvhdl.log -messages .\orcad_prims.vhd .\altera_p.vhd .\altera_m.vhd
