echo off
rem -- File name: C_logiblox.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx LogiBlox pre-routed simulation models.
rem -- The precompiled script will search for the location of Xilinx FPGA tools set 
rem -- and use your existing models. Cadence NC VHDL Desktop simulator will compile 
rem -- the following three files:
rem -- 1> xilinx_installed_directory\vhdl\src\logiblox\Mvlutil.vhd
rem -- 2> xilinx_installed_directory\vhdl\src\logiblox\Mvlarith.vhd
rem -- 3> xilinx_installed_directory\vhdl\src\logiblox\logiblox.vhd
rem 
rem -- 
rem -- If the auto-script can not find user's Xilinx FPGA tools set, the default 
rem -- Xilinx models which provided by FPGA_LIB will be used for the pre-compiled process. 
rem -- FPGA_LIB will be used for the pre-compiled process.
rem -- 1> \FPGA_LIB\library\xilinx\Mvlutil.vhd
rem -- 2> \FPGA_LIB\library\xilinx\Mvlarith.vhd
rem -- 3> \FPGA_LIB\library\xilinx\logiblox.vhd
rem --
rem -- The compiled library will be named: logiblox
rem -- 
rem -- Before running this file, please made sure that Cadence NC VHDL Desktop simulator
rem -- was installed.
rem --
rmdir /S /Q .\sim_lib\logiblox
mkdir .\sim_lib\logiblox


IF not exist %XILINX%\vhdl\src\logiblox\Mvlutil.vhd goto XILINX_NOT_FOUND
IF not exist %XILINX%\vhdl\src\logiblox\Mvlarith.vhd goto XILINX_NOT_FOUND
IF not exist %XILINX%\vhdl\src\logiblox\logiblox.vhd goto XILINX_NOT_FOUND

:XILINX_FOUND
echo Compiling Your Local Update Xilinx Resources
ncvhdl -v93 -work logiblox -log ncvhdl.log -messages %XILINX%\vhdl\src\logiblox\Mvlutil.vhd %XILINX%\vhdl\src\logiblox\Mvlarith.vhd %XILINX%\vhdl\src\logiblox\logiblox.vhd
:END

:XILINX_NOT_FOUND
echo Compiling FPGA Studio Xilinx Default Resources
ncvhdl -v93 -work logiblox -log ncvhdl.log -messages .\Mvlutil.vhd .\Mvlarith.vhd .\logiblox.vhd

:END