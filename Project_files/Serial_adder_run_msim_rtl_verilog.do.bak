transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/down_counter.v}
vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/control_FSM.v}
vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/DATA_PATH.v}
vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/Shift_reg_a.v}
vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/Shift_reg_b.v}
vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/shift_reg_sum.v}

vlog -vlog01compat -work work +incdir+F:/intelFPGA_lite/20.1/Examples/Serial_additon {F:/intelFPGA_lite/20.1/Examples/Serial_additon/DATA_PATH_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  DATA_PATH_tb

add wave *
view structure
view signals
run -all
