onerror {exit -code 1}
vlib work
vlog -work work mcp2515.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.mcp2515_vlg_vec_tst -voptargs="+acc"
vcd file -direction mcp2515.msim.vcd
vcd add -internal mcp2515_vlg_vec_tst/*
vcd add -internal mcp2515_vlg_vec_tst/i1/*
run -all
quit -f
