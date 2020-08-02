transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/PC.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/IR.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/RAM.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/RAM_MUX.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/MAR.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/ACC.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/ALU.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/CTRL.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/DR.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/COUNTER.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/model_machine.vhd}
vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/IBUS.vhd}

vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/testbench/model_machine_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  model_machine_tb

add wave *
view structure
view signals
run -all
