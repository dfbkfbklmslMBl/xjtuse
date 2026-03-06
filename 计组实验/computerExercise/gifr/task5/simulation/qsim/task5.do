onerror {exit -code 1}
vlib work
vlog -work work task5.vo
vlog -work work taks5.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.task5_vlg_vec_tst -voptargs="+acc"
vcd file -direction task5.msim.vcd
vcd add -internal task5_vlg_vec_tst/*
vcd add -internal task5_vlg_vec_tst/i1/*
run -all
quit -f
