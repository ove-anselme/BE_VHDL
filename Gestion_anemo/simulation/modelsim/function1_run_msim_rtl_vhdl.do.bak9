transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Mounir/Desktop/mounir_vhdl/regsitre.vhd}
vcom -93 -work work {C:/Users/Mounir/Desktop/mounir_vhdl/gestion.vhd}
vcom -93 -work work {C:/Users/Mounir/Desktop/mounir_vhdl/gen_imp.vhd}
vcom -93 -work work {C:/Users/Mounir/Desktop/mounir_vhdl/edge_detector.vhd}
vcom -93 -work work {C:/Users/Mounir/Desktop/mounir_vhdl/counter.vhd}

vcom -93 -work work {C:/Users/Mounir/Desktop/mounir_vhdl/tb_gestion.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_gestion

add wave *
view structure
view signals
run -all
