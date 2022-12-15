transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {function1.vho}

vcom -93 -work work {C:/Users/etudiant/Desktop/MOUNIR_VHDL/tb_gestion.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_gestion

add wave *
view structure
view signals
run -all
