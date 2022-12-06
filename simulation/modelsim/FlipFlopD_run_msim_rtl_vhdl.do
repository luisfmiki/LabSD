transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Documents/Hermes/GLM/FlipFlopD/FlipFlopD.vhd}

vcom -93 -work work {C:/Users/Aluno/Documents/Hermes/GLM/FlipFlopD/tb_FlipFlopD.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_FlipFlopD

add wave *
view structure
view signals
run 50 ns
