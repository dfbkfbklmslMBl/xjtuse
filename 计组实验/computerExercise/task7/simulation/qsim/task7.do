onerror {exit -code 1}
vlib work
vlog -work work task7.vo
vlog -work work task7.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.task7_vlg_vec_tst -voptargs="+acc"
vcd file -direction task7.msim.vcd
vcd add -internal task7_vlg_vec_tst/*
vcd add -internal task7_vlg_vec_tst/i1/*
run -all
quit -f
