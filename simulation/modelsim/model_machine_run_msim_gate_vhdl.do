transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {model_machine.vho}

vcom -93 -work work {C:/Users/hang/Documents/final_model_machine/model_machine/testbench/RAM_tb.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  RAM_tb

add wave *
view structure
view signals
run -all
