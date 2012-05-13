rem -- FILE NAME: C_GetModel.bat
rem -- 
rem -- FUNCTION:
rem -- Xilinx program "get_models", a command line utility is used 
rem -- to extract the HDL behavioral models embedded within local Xilinx 
rem -- Core Generator System installation to a central location.
rem --
rem -- ASSUMPTION:
rem -- 1.> c_ipN.zip( where N >= 4) had been extracted to your %XILINX% directory.
rem -- 2.> A System variable,%XILINX_CORE_PATH% directory was defined to place CORE models.
rem -- 3.> Xilinx Alliance V3.1i have already been installed.
rem --     For Xilinx Alliance V2.1i users please change the command to
rem --     get_models -vhdl %XILINX_CORE_PATH%
echo off
echo Getting Xilinx Core Models ...
get_models -vhdl -dent %XILINX_CORE_PATH%