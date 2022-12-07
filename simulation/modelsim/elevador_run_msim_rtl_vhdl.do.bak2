transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Controladora/Controladora.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/Contador/DivisorClock.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/Contador/Contador.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/Reg_Motor.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/multiplexador.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/FlipFlopD.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/Decodificador.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/Datapath.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/Datapath/BCD_7seg.vhd}
vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/elevador.vhd}

vcom -93 -work work {C:/Users/Demo/Desktop/LSD-dev/elevador/tb_elevador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_elevador

add wave *
view structure
view signals
run 500 ns
