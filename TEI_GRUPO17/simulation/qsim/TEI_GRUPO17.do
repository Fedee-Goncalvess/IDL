onerror {exit -code 1}
vlib work
vlog -work work TEI_GRUPO17.vo
vlog -work work vwfUcEstados.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.UC_estados_vlg_vec_tst -voptargs="+acc"
vcd file -direction TEI_GRUPO17.msim.vcd
vcd add -internal UC_estados_vlg_vec_tst/*
vcd add -internal UC_estados_vlg_vec_tst/i1/*
run -all
quit -f
