@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.3\\bin
call %xv_path%/xelab  -wto 9e65db9197ce4c9eb2e57406ea82c691 -m64 --debug typical --relax -L xbip_utils_v3_0 -L c_reg_fd_v12_0 -L xbip_dsp48_wrapper_v3_0 -L xbip_pipe_v3_0 -L xbip_dsp48_addsub_v3_0 -L xbip_addsub_v3_0 -L c_addsub_v12_0 -L xbip_bram18k_v3_0 -L mult_gen_v12_0 -L axi_utils_v2_0 -L cordic_v6_0 -L xil_defaultlib -L secureip --snapshot TB_Proccessor_behav xil_defaultlib.TB_Proccessor -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
