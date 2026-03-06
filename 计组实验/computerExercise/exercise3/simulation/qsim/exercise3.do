onerror {exit -code 1}
vlib work
vlog -work work exercise3.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.exercise3_vlg_vec_tst -voptargs="+acc"
vcd file -direction exercise3.msim.vcd
vcd add -internal exercise3_vlg_vec_tst/*
vcd add -internal exercise3_vlg_vec_tst/i1/*
run -all
quit -f
