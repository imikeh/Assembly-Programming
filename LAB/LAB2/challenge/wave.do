onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /testbench/ins
add wave -noupdate -radix unsigned /testbench/op
add wave -noupdate -radix unsigned /testbench/func
add wave -noupdate -radix unsigned /testbench/Rs
add wave -noupdate -radix unsigned /testbench/Rt
add wave -noupdate -radix unsigned /testbench/Rd
add wave -noupdate -radix unsigned /testbench/shamt
add wave -noupdate -radix unsigned /testbench/offset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16 ns} 0}
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
WaveRestoreZoom {0 ns} {1 us}
