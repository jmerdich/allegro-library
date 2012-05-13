echo off
rem -- File name: C_XilinxCoreLib.bat
rem --
rem -- DESCRIPTION
rem -- This is a batch file to compile Xilinx LogiCore simulation models.
rem -- The compiled libraries will be named: XilinxCoreLib
rem -- 
rem -- ASSUMPTION
rem -- 1. Cadence NC VHDL Desktop simulator had been installed.
rem -- 2. C_GetModel.bat had been executed.
rem -- 3. C_unisim.bat had been executed.
rem --
rmdir /S /Q .\sim_lib\XilinxCoreLib
mkdir .\sim_lib\XilinxCoreLib
echo on
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_constants_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_constants.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_comps_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_comps.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_utils.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_utils_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_sim_arch.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\prims_sim_arch_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\ul_utils.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft_utils.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft1024.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft1024_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft16.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft16_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft256.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft256_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft64.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\vfft64_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mulVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mulVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\acc2sVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\acc2sVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\addsVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\addsVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\adreVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\adreVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\adrleVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\adrleVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\cmpsVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\cmpsVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mux2VHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mux2VHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mux3VHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mux3VHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mux4VHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mux4VHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\pscVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\pscVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\regceVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\regceVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\saddceVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\saddceVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\subreVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\subreVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\subrleVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\subrleVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\tsb16sVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\tsb16sVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\tsb16xVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\tsb16xVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\tsb32xVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\tsb32xVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\sqrootVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\sqrootVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\trigtabl_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\trigtabl_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\dividervht.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\dividervht_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\sdafirVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\sdafirVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\pdafirVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\pdafirVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\nco_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\ncoiq_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_reg_fd_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_reg_fd_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mult_vgen_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mult_vgen_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\dpramVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\dpramVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\romrVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\romrVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\syncramVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\syncramVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\kdcm_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\kdcm_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\kcmVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\kcmVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\kcmpipeVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\kcmpipeVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\integVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\integVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\m12x12.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\m12x12_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\m8x8.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\m8x8_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\fifosyncVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\fifosyncVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\delayVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\delayVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\combfiltVHT.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\combfiltVHT_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\mem_init_file_pack.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mem_dp_block_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mem_sp_block_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mem_sp_block_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_addsub_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_addsub_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_accum_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_accum_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_compare_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_compare_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_bus_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_bus_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_counter_binary_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_decode_binary_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_decode_binary_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_gate_bit_bus_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_dist_mem_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_gate_bit_bus_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_slice_bufe_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_gate_bit_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_gate_bus_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_bit_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_slice_bufe_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_slice_buft_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_slice_buft_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_reg_ld_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_reg_ld_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mux_bit_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_shift_fd_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_shift_fd_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_shift_ram_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_shift_ram_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_twos_comp_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_twos_comp_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\pipeline.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_dist_mem_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_mem_dp_block_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_counter_binary_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_gate_bus_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\c_gate_bit_v1_0_comp.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\async_fifo_pkg.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\async_fifo_v1_0.vhd
ncvhdl -v93 -work XilinxCoreLib -log ncvhdl.log -APPEND_LOG -messages %XILINX_CORE_PATH%\XilinxCoreLib\async_fifo_v1_0_comp.vhd



