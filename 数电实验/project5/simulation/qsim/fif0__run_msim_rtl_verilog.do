transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUSDATA/project5 {D:/QUARTUSDATA/project5/myram.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUSDATA/project5 {D:/QUARTUSDATA/project5/fif0_.v}

