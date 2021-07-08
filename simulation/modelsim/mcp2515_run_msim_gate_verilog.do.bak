transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mcp2515_8_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+D:/CGY/Documents/quartus/mcp2515_test {D:/CGY/Documents/quartus/mcp2515_test/mcp2515_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  mcp2515_tb

add wave *
view structure
view signals
run -all
