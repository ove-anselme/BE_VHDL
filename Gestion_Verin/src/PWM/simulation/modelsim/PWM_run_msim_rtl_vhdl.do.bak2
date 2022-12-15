transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ove-a/Desktop/Verin/PWM/PWM.vhd}
vcom -93 -work work {C:/Users/ove-a/Desktop/Verin/PWM/counter_8bits.vhd}
vcom -93 -work work {C:/Users/ove-a/Desktop/Verin/PWM/Comparator_sup_8bits.vhd}
vcom -93 -work work {C:/Users/ove-a/Desktop/Verin/PWM/Comparator_inf_8bits.vhd}

vcom -93 -work work {C:/Users/ove-a/Desktop/Verin/PWM/simulation/modelsim/tb_PWM.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_PWM

add wave *
view structure
view signals
run 1 ms
