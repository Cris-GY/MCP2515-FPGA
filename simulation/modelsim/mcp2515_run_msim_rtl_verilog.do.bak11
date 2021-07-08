transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/CGY/Documents/quartus/mcp2515_test {D:/CGY/Documents/quartus/mcp2515_test/mcp2515.v}

vlog -vlog01compat -work work +incdir+D:/CGY/Documents/quartus/mcp2515_test {D:/CGY/Documents/quartus/mcp2515_test/mcp2515_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  mcp2515_tb

add wave *
view structure
view signals
run -all
