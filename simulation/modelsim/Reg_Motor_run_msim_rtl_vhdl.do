transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Documents/Hermes/GLM/Elevador/Datapath/Reg_Motor/Reg_Motor.vhd}

vcom -93 -work work {C:/Users/Aluno/Documents/Hermes/GLM/Elevador/Datapath/Reg_Motor/tb_Reg_Motor.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Reg_Motor

add wave *
view structure
view signals
run 100 ns
