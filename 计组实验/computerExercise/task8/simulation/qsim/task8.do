onerror {exit -code 1}
vlib work
vlog -work work task8.vo
vlog -work work task8.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.task8_vlg_vec_tst -voptargs="+acc"
vcd file -direction task8.msim.vcd
vcd add -internal task8_vlg_vec_tst/*
vcd add -internal task8_vlg_vec_tst/i1/*
run -all
quit -f
