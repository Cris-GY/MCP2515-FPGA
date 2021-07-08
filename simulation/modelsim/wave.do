onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mcp2515_tb/rst_n
add wave -noupdate /mcp2515_tb/cs
add wave -noupdate /mcp2515_tb/sck
add wave -noupdate /mcp2515_tb/si
add wave -noupdate /mcp2515_tb/uut/cc
add wave -noupdate /mcp2515_tb/uut/sc
add wave -noupdate /mcp2515_tb/uut/da
add wave -noupdate /mcp2515_tb/uut/state
add wave -noupdate /mcp2515_tb/uut/c_count
add wave -noupdate /mcp2515_tb/uut/mscount
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {326812496 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {7340032 ns} {9437184 ns}
