onerror {exit -code 1}
vlib work
vlog -work work fifo_controller.vo
vlog -work work Waveform7.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fifo_controller_vlg_vec_tst -voptargs="+acc"
vcd file -direction fifo_controller.msim.vcd
vcd add -internal fifo_controller_vlg_vec_tst/*
vcd add -internal fifo_controller_vlg_vec_tst/i1/*
run -all
quit -f
