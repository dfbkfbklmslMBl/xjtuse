onerror {exit -code 1}
vlib work
vlog -work work fif0_.vo
vlog -work work Waveform7.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fif0__vlg_vec_tst -voptargs="+acc"
vcd file -direction fif0_.msim.vcd
vcd add -internal fif0__vlg_vec_tst/*
vcd add -internal fif0__vlg_vec_tst/i1/*
run -all
quit -f
