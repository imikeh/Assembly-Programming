onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/u_cpu_top/u_cpu_core/if_pc
add wave -noupdate -radix hexadecimal /testbench/u_cpu_top/u_cpu_core/id_ins
add wave -noupdate -divider alu
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/a
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/b
add wave -noupdate -radix binary /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/op
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/result
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/carryout
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/zero
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/overflow
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/adder_sub
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_b
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_and
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_or
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_xor
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_nor
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_add
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_slt
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/bus_lui
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuex/u_fu_alu/b_zero
add wave -noupdate -divider regbank
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg00
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg01
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg02
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg03
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg04
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg05
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg06
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg07
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg08
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg09
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg10
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg11
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg12
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg13
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg14
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg15
add wave -noupdate -radix binary /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg16
add wave -noupdate -radix binary /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg17
add wave -noupdate -radix binary /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg18
add wave -noupdate -radix binary /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg19
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg20
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg21
add wave -noupdate -radix decimal /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg22
add wave -noupdate -radix unsigned /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg23
add wave -noupdate -radix binary /testbench/u_cpu_top/u_cpu_core/u_cpuid/u_regbank/reg24
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {343741 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 285
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {67568 ps} {454339 ps}
