transcript on
if ![file isdirectory projectOne_iputf_libs] {
	file mkdir projectOne_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/video_pll_sim/video_pll.vo"

vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/tb.v}
vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/frameBuff.v}
vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/projectone.v}
vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/pg.v}
vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/clk_divider.v}
vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/vtc.v}

vlog -vlog01compat -work work +incdir+D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn {D:/CU_Fall_2020/FPGA/Project1/project1part2CarberryJohn/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
